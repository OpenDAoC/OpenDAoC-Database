const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const fs = require('fs');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(bodyParser.json({ limit: '50mb' }));
app.use(bodyParser.urlencoded({ extended: true, limit: '50mb' }));

// Store synced scripts
let syncedScripts = [];
let lastSync = null;

// Create scripts directory if it doesn't exist
const scriptsDir = path.join(__dirname, 'scripts');
if (!fs.existsSync(scriptsDir)) {
    fs.mkdirSync(scriptsDir, { recursive: true });
}

// Create trash directory if it doesn't exist
const trashDir = path.join(__dirname, '.rbxsync-trash');
if (!fs.existsSync(trashDir)) {
    fs.mkdirSync(trashDir, { recursive: true });
}

// Initialize manifest file
const manifestPath = path.join(trashDir, 'manifest.json');
if (!fs.existsSync(manifestPath)) {
    fs.writeFileSync(manifestPath, JSON.stringify({
        deletedScripts: [],
        lastSync: null
    }, null, 2));
}

// Helper function to get service directories
function getServiceDirectories() {
    return [
        'ServerScriptService',
        'ReplicatedStorage',
        'StarterGui',
        'StarterPack',
        'ServerStorage',
        'Lighting',
        'SoundService',
        'StarterPlayer',
        'Workspace'
    ];
}

// Helper function to ensure directory exists
function ensureDirectory(dirPath) {
    if (!fs.existsSync(dirPath)) {
        fs.mkdirSync(dirPath, { recursive: true });
    }
}

// Helper function to save script to file
function saveScriptToFile(script) {
    const serviceDir = path.join(scriptsDir, script.service);
    ensureDirectory(serviceDir);

    // Sanitize filename
    const filename = script.name.replace(/[^a-zA-Z0-9-_]/g, '_');
    const filePath = path.join(serviceDir, `${filename}.lua`);

    const scriptData = {
        name: script.name,
        path: script.path,
        source: script.source,
        className: script.className,
        service: script.service,
        syncedAt: new Date().toISOString()
    };

    fs.writeFileSync(filePath, JSON.stringify(scriptData, null, 2));
    return filePath;
}

// Helper function to delete script file
function deleteScriptFile(scriptName, service) {
    const filename = scriptName.replace(/[^a-zA-Z0-9-_]/g, '_');
    const filePath = path.join(scriptsDir, service, `${filename}.lua`);
    
    if (fs.existsSync(filePath)) {
        fs.unlinkSync(filePath);
        
        // Update manifest
        let manifest = JSON.parse(fs.readFileSync(manifestPath, 'utf8'));
        manifest.deletedScripts.push({
            name: scriptName,
            service: service,
            deletedAt: new Date().toISOString()
        });
        manifest.lastSync = new Date().toISOString();
        fs.writeFileSync(manifestPath, JSON.stringify(manifest, null, 2));
        
        return true;
    }
    return false;
}

// GET /api/status - Get sync status
app.get('/api/status', (req, res) => {
    res.json({
        status: 'online',
        project: 'DaocBLox',
        lastSync: lastSync,
        totalScripts: syncedScripts.length,
        uptime: process.uptime()
    });
});

// POST /api/sync - Sync scripts from Roblox Studio to codespace
app.post('/api/sync', (req, res) => {
    try {
        const { timestamp, project, version, scripts } = req.body;

        console.log(`Received sync request at ${new Date(timestamp).toISOString()}`);
        console.log(`Project: ${project}, Version: ${version}`);
        console.log(`Scripts to sync: ${scripts.length}`);

        let synced = 0;
        let skipped = 0;

        // Create service directories
        const services = getServiceDirectories();
        services.forEach(service => {
            ensureDirectory(path.join(scriptsDir, service));
        });

        // Process each script
        scripts.forEach(script => {
            if (script.source && script.className) {
                // Save script to file
                saveScriptToFile(script);
                
                // Update synced scripts array
                const existingIndex = syncedScripts.findIndex(s => s.name === script.name && s.path === script.path);
                if (existingIndex >= 0) {
                    syncedScripts[existingIndex] = script;
                } else {
                    syncedScripts.push(script);
                }
                
                synced++;
                console.log(`Synced: ${script.name} (${script.className})`);
            } else {
                skipped++;
                console.log(`Skipped: ${script.name} - missing source or className`);
            }
        });

        lastSync = new Date().toISOString();

        res.json({
            success: true,
            synced: synced,
            skipped: skipped,
            totalScripts: scripts.length,
            timestamp: lastSync
        });

    } catch (error) {
        console.error('Sync error:', error);
        res.status(500).json({
            success: false,
            error: error.message
        });
    }
});

// GET /api/scripts - List all synced scripts
app.get('/api/scripts', (req, res) => {
    try {
        const scriptsList = [];
        
        const services = getServiceDirectories();
        services.forEach(service => {
            const serviceDir = path.join(scriptsDir, service);
            if (fs.existsSync(serviceDir)) {
                const files = fs.readdirSync(serviceDir);
                files.forEach(file => {
                    if (file.endsWith('.lua')) {
                        const filePath = path.join(serviceDir, file);
                        const scriptData = JSON.parse(fs.readFileSync(filePath, 'utf8'));
                        scriptsList.push(scriptData);
                    }
                });
            }
        });

        res.json({
            success: true,
            scripts: scriptsList,
            total: scriptsList.length
        });
    } catch (error) {
        res.status(500).json({
            success: false,
            error: error.message
        });
    }
});

// GET /api/scripts/:name - Get specific script content
app.get('/api/scripts/:name', (req, res) => {
    try {
        const scriptName = req.params.name;
        
        const services = getServiceDirectories();
        let foundScript = null;

        for (const service of services) {
            const filename = scriptName.replace(/[^a-zA-Z0-9-_]/g, '_');
            const filePath = path.join(scriptsDir, service, `${filename}.lua`);
            
            if (fs.existsSync(filePath)) {
                foundScript = JSON.parse(fs.readFileSync(filePath, 'utf8'));
                break;
            }
        }

        if (foundScript) {
            res.json({
                success: true,
                script: foundScript
            });
        } else {
            res.status(404).json({
                success: false,
                error: 'Script not found'
            });
        }
    } catch (error) {
        res.status(500).json({
            success: false,
            error: error.message
        });
    }
});

// PUT /api/scripts/:name - Update script from codespace
app.put('/api/scripts/:name', (req, res) => {
    try {
        const scriptName = req.params.name;
        const { source } = req.body;

        // Find the script
        const services = getServiceDirectories();
        let scriptPath = null;
        let scriptService = null;

        for (const service of services) {
            const filename = scriptName.replace(/[^a-zA-Z0-9-_]/g, '_');
            const potentialPath = path.join(scriptsDir, service, `${filename}.lua`);
            
            if (fs.existsSync(potentialPath)) {
                scriptPath = potentialPath;
                scriptService = service;
                break;
            }
        }

        if (scriptPath) {
            const scriptData = JSON.parse(fs.readFileSync(scriptPath, 'utf8'));
            scriptData.source = source;
            scriptData.syncedAt = new Date().toISOString();
            
            fs.writeFileSync(scriptPath, JSON.stringify(scriptData, null, 2));

            res.json({
                success: true,
                script: scriptData
            });
        } else {
            res.status(404).json({
                success: false,
                error: 'Script not found'
            });
        }
    } catch (error) {
        res.status(500).json({
            success: false,
            error: error.message
        });
    }
});

// DELETE /api/scripts/:name - Delete a synced script
app.delete('/api/scripts/:name', (req, res) => {
    try {
        const scriptName = req.params.name;
        const { service } = req.query;

        if (!service) {
            res.status(400).json({
                success: false,
                error: 'Service parameter is required'
            });
            return;
        }

        const deleted = deleteScriptFile(scriptName, service);

        if (deleted) {
            // Remove from syncedScripts array
            syncedScripts = syncedScripts.filter(s => !(s.name === scriptName && s.service === service));

            res.json({
                success: true,
                message: 'Script deleted successfully'
            });
        } else {
            res.status(404).json({
                success: false,
                error: 'Script not found'
            });
        }
    } catch (error) {
        res.status(500).json({
            success: false,
            error: error.message
        });
    }
});

// GET /api/export - Export all scripts as JSON
app.get('/api/export', (req, res) => {
    try {
        const exportData = {
            project: 'DaocBLox',
            exportedAt: new Date().toISOString(),
            scripts: []
        };

        const services = getServiceDirectories();
        services.forEach(service => {
            const serviceDir = path.join(scriptsDir, service);
            if (fs.existsSync(serviceDir)) {
                const files = fs.readdirSync(serviceDir);
                files.forEach(file => {
                    if (file.endsWith('.lua')) {
                        const filePath = path.join(serviceDir, file);
                        const scriptData = JSON.parse(fs.readFileSync(filePath, 'utf8'));
                        exportData.scripts.push(scriptData);
                    }
                });
            }
        });

        res.json(exportData);
    } catch (error) {
        res.status(500).json({
            success: false,
            error: error.message
        });
    }
});

// Health check endpoint
app.get('/health', (req, res) => {
    res.json({ status: 'healthy', timestamp: new Date().toISOString() });
});

// Start server
app.listen(PORT, () => {
    console.log(`RbxSyn CodeSync Server running on port ${PORT}`);
    console.log(`Sync endpoint: POST http://localhost:${PORT}/api/sync`);
    console.log(`Status endpoint: GET http://localhost:${PORT}/api/status`);
    console.log(`Scripts directory: ${scriptsDir}`);
});

// Graceful shutdown
process.on('SIGTERM', () => {
    console.log('SIGTERM signal received: closing HTTP server');
    process.exit(0);
});

process.on('SIGINT', () => {
    console.log('SIGINT signal received: closing HTTP server');
    process.exit(0);
});

