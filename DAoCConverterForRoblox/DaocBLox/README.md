# RbxSyn CodeSync Plugin for Roblox Studio

This plugin enables real-time synchronization between your Roblox Studio project and your codespace using RbxSyn.

## Files Created

- `RbxSynSyncPlugin.lua` - The main Roblox Studio plugin script
- `server.js` - Node.js Express server for handling sync requests
- `package.json` - Node.js dependencies configuration
- `plugin.rbxm` - Plugin manifest file

## Setup Instructions

### 1. Install Server Dependencies

Navigate to your codespace terminal and run:

```bash
npm install
```

### 2. Start the Sync Server

In your codespace terminal, run:

```bash
npm start
```

The server will start on port 3000 by default. You should see:

```
RbxSyn CodeSync Server running on port 3000
Sync endpoint: POST http://localhost:3000/api/sync
Status endpoint: GET http://localhost:3000/api/status
Scripts directory: /path/to/scripts
```

### 3. Install the Plugin in Roblox Studio

1. Open Roblox Studio
2. Go to `Plugins` → `Open Plugin Folder`
3. Copy the `RbxSynSyncPlugin.lua` file to your Plugins folder
4. Restart Roblox Studio
5. You should see a new toolbar button "RbxSyn CodeSync"

### 4. Configure the Plugin

1. Click the "RbxSyn CodeSync" button in the toolbar
2. A dock widget will appear on the right side
3. In the "Codespace URL" field, enter your codespace URL:
   - For local development: `http://localhost:3000`
   - For codespace: `https://your-codespace-url-3000.app.github.dev`
4. Optionally enable "Auto Sync" for automatic synchronization

### 5. Test the Connection

1. Click "Sync Now" in the plugin UI
2. The plugin will:
   - Scan your Roblox game for all scripts
   - Send them to your codespace
   - Display the sync status

## Features

### Auto Sync
- Automatically syncs scripts when you make changes
- Debounced to prevent excessive sync operations
- Configurable sync interval (default: 30 seconds)

### Script Discovery
- Automatically finds scripts in:
  - ServerScriptService
  - ReplicatedStorage
  - StarterGui
  - StarterPack
  - Workspace
  - Lighting

### Progress Tracking
- Real-time progress bar during sync
- Status messages for each operation
- Last sync timestamp display

### Error Handling
- Connection error detection
- Helpful error messages
- Sync failure notifications

## API Endpoints

### POST /api/sync
Sync scripts from Roblox Studio to codespace

**Request Body:**
```json
{
  "timestamp": 1234567890,
  "project": "DaocBLox",
  "version": "1.0.0",
  "scripts": [
    {
      "name": "ScriptName",
      "path": "ServerScriptService/MainScript",
      "source": "-- Lua code here",
      "className": "Script",
      "service": "ServerScriptService"
    }
  ]
}
```

**Response:**
```json
{
  "success": true,
  "synced": 5,
  "skipped": 2,
  "totalScripts": 7,
  "timestamp": "2024-01-01T12:00:00.000Z"
}
```

### GET /api/status
Get sync status

**Response:**
```json
{
  "status": "online",
  "project": "DaocBLox",
  "lastSync": "2024-01-01T12:00:00.000Z",
  "totalScripts": 5,
  "uptime": 3600
}
```

### GET /api/scripts
List all synced scripts

### GET /api/scripts/:name
Get specific script content

### PUT /api/scripts/:name
Update script from codespace

### DELETE /api/scripts/:name
Delete a synced script

### GET /api/export
Export all scripts as JSON

## Directory Structure

After syncing, your scripts will be organized as:

```
DaocBLox/
├── scripts/
│   ├── ServerScriptService/
│   │   └── ...
│   ├── ReplicatedStorage/
│   │   └── ...
│   ├── StarterGui/
│   │   └── ...
│   ├── StarterPack/
│   │   └── ...
│   ├── Workspace/
│   │   └── ...
│   └── Lighting/
│       └── ...
├── .rbxsync-trash/
│   └── manifest.json
├── server.js
├── package.json
└── RbxSynSyncPlugin.lua
```

## Configuration

### Environment Variables

- `PORT` - Server port (default: 3000)
- `NODE_ENV` - Environment (development/production)

### Plugin Settings

Stored in Roblox Studio plugin settings:
- `codespaceUrl` - Your codespace URL
- `autoSync` - Enable auto-sync (boolean)
- `syncInterval` - Auto-sync interval in seconds (default: 30)

## Troubleshooting

### Connection Failed
1. Check that the server is running: `npm start`
2. Verify the URL in plugin settings matches your codespace URL
3. Ensure your codespace is running and accessible

### Sync Not Working
1. Check server logs for errors
2. Verify HttpService is enabled in Roblox Studio game settings
3. Try disabling firewall/antivirus that might block connections

### Scripts Not Syncing
1. Check that scripts are in supported services
2. Verify scripts are LuaSourceContainers (Script, ModuleScript, LocalScript)
3. Check manifest file: `.rbxsync-trash/manifest.json`

## Development

### Running in Development Mode

```bash
npm run dev
```

This uses nodemon for automatic server restart on file changes.

### Adding New Features

The plugin structure:
- `Init()` - Plugin initialization
- `CreateUI()` - Build plugin interface
- `Sync()` - Main sync logic
- `SendToCodespace()` - HTTP communication
- `InitSyncSystem()` - Setup change listeners

## Security Notes

- The sync endpoint doesn't require authentication by default
- For production, add API key authentication
- Use HTTPS in production environments
- Validate incoming script data

## License

MIT License - Feel free to modify and distribute.

## Support

For issues and feature requests, please create an issue in your repository.
