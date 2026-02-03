-- RbxSyn CodeSync Plugin for Roblox Studio
-- Version: 1.0.0
-- Description: Sync Roblox scripts with your codespace using RbxSyn

local RbxSynSync = {}
RbxSynSync.Name = "RbxSyn CodeSync"
RbxSynSync.Author = "DAoC Converter Team"
RbxSynSync.Version = "1.0.0"
RbxSynSync.Description = "Sync Roblox scripts with your codespace using RbxSyn"

-- Plugin Settings
local SETTINGS = {
    codespaceUrl = "http://localhost:3000",
    autoSync = true,
    syncInterval = 30,
    lastSyncTime = 0,
    syncQueue = {},
    isSyncing = false
}

-- Plugin UI Elements
local toolbar
local button
local dockWidget
local mainFrame
local statusLabel
local syncButton
local settingsFrame
local urlTextBox
local autoSyncCheckbox
local progressBar
local progressFill
local lastSyncLabel

function RbxSynSync:Init(plugin)
    self.plugin = plugin
    
    -- Create toolbar button
    toolbar = plugin:CreateToolbar("RbxSyn CodeSync")
    button = toolbar:CreateButton("sync_icon", "Sync with Codespace", "Sync your scripts with RbxSyn")
    button.ClickableWhenViewportHidden = true
    
    -- Create dock widget
    dockWidget = plugin:CreateDockWidgetPluginGui(
        "RbxSynSyncDock",
        DockWidgetPluginGuiInfo.new(
            Enum.InitialDockState.Right,
            true,
            false,
            300,
            450,
            200,
            300
        )
    )
    dockWidget.Title = "RbxSyn CodeSync"
    
    -- Create main UI
    self:CreateUI()
    
    -- Connect button click
    button.Click:Connect(function()
        dockWidget.Enabled = not dockWidget.Enabled
    end)
    
    -- Load settings
    self:LoadSettings()
    
    -- Initialize sync system
    self:InitSyncSystem()
    
    -- Initial status update
    self:UpdateStatus("Plugin loaded. Ready to sync!")
end

function RbxSynSync:CreateUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "RbxSynSyncGui"
    screenGui.Parent = plugin:GetService("CoreGui")
    
    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(1, 0, 1, 0)
    mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    mainFrame.BorderSizePixel = 0
    mainFrame.Parent = dockWidget
    
    -- Title
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -20, 0, 40)
    title.Position = UDim2.new(0, 10, 0, 10)
    title.Text = "RbxSyn CodeSync"
    title.Font = Enum.Font.SourceSansBold
    title.TextSize = 24
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundTransparency = 1
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = mainFrame
    
    -- Status Label
    statusLabel = Instance.new("TextLabel")
    statusLabel.Size = UDim2.new(1, -20, 0, 50)
    statusLabel.Position = UDim2.new(0, 10, 0, 60)
    statusLabel.Text = "Ready to sync"
    statusLabel.Font = Enum.Font.SourceSans
    statusLabel.TextSize = 14
    statusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    statusLabel.BackgroundTransparency = 1
    statusLabel.TextXAlignment = Enum.TextXAlignment.Left
    statusLabel.TextWrapped = true
    statusLabel.Parent = mainFrame
    
    -- Last Sync Label
    lastSyncLabel = Instance.new("TextLabel")
    lastSyncLabel.Size = UDim2.new(1, -20, 0, 20)
    lastSyncLabel.Position = UDim2.new(0, 10, 0, 105)
    lastSyncLabel.Text = "Last sync: Never"
    lastSyncLabel.Font = Enum.Font.SourceSans
    lastSyncLabel.TextSize = 12
    lastSyncLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
    lastSyncLabel.BackgroundTransparency = 1
    lastSyncLabel.TextXAlignment = Enum.TextXAlignment.Left
    lastSyncLabel.Parent = mainFrame
    
    -- Settings Frame
    settingsFrame = Instance.new("Frame")
    settingsFrame.Size = UDim2.new(1, -20, 0, 160)
    settingsFrame.Position = UDim2.new(0, 10, 0, 130)
    settingsFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    settingsFrame.BorderSizePixel = 0
    settingsFrame.Parent = mainFrame
    
    -- Settings Title
    local settingsTitle = Instance.new("TextLabel")
    settingsTitle.Size = UDim2.new(1, -20, 0, 30)
    settingsTitle.Position = UDim2.new(0, 10, 0, 5)
    settingsTitle.Text = "Settings"
    settingsTitle.Font = Enum.Font.SourceSansBold
    settingsTitle.TextSize = 18
    settingsTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    settingsTitle.BackgroundTransparency = 1
    settingsTitle.TextXAlignment = Enum.TextXAlignment.Left
    settingsTitle.Parent = settingsFrame
    
    -- Codespace URL Input
    local urlLabel = Instance.new("TextLabel")
    urlLabel.Size = UDim2.new(1, -20, 0, 20)
    urlLabel.Position = UDim2.new(0, 10, 0, 35)
    urlLabel.Text = "Codespace URL:"
    urlLabel.Font = Enum.Font.SourceSans
    urlLabel.TextSize = 14
    urlLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    urlLabel.BackgroundTransparency = 1
    urlLabel.TextXAlignment = Enum.TextXAlignment.Left
    urlLabel.Parent = settingsFrame
    
    urlTextBox = Instance.new("TextBox")
    urlTextBox.Size = UDim2.new(1, -20, 0, 30)
    urlTextBox.Position = UDim2.new(0, 10, 0, 55)
    urlTextBox.PlaceholderText = "Enter your codespace URL..."
    urlTextBox.Text = SETTINGS.codespaceUrl
    urlTextBox.Font = Enum.Font.SourceSans
    urlTextBox.TextSize = 14
    urlTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    urlTextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    urlTextBox.BorderSizePixel = 0
    urlTextBox.TextXAlignment = Enum.TextXAlignment.Left
    urlTextBox.Parent = settingsFrame
    
    urlTextBox.FocusLost:Connect(function(enterPressed)
        if enterPressed or urlTextBox.Text ~= SETTINGS.codespaceUrl then
            SETTINGS.codespaceUrl = urlTextBox.Text
            self:SaveSettings()
            self:UpdateStatus("URL updated. Click Sync to test connection.")
        end
    end)
    
    -- Auto Sync Checkbox
    autoSyncCheckbox = Instance.new("TextButton")
    autoSyncCheckbox.Size = UDim2.new(1, -20, 0, 30)
    autoSyncCheckbox.Position = UDim2.new(0, 10, 0, 95)
    autoSyncCheckbox.Text = "Enable Auto Sync"
    autoSyncCheckbox.Font = Enum.Font.SourceSans
    autoSyncCheckbox.TextSize = 14
    autoSyncCheckbox.TextColor3 = Color3.fromRGB(255, 255, 255)
    autoSyncCheckbox.BackgroundColor3 = SETTINGS.autoSync and Color3.fromRGB(76, 175, 80) or Color3.fromRGB(50, 50, 50)
    autoSyncCheckbox.BorderSizePixel = 0
    autoSyncCheckbox.Parent = settingsFrame
    
    autoSyncCheckbox.MouseButton1Click:Connect(function()
        SETTINGS.autoSync = not SETTINGS.autoSync
        autoSyncCheckbox.BackgroundColor3 = SETTINGS.autoSync and Color3.fromRGB(76, 175, 80) or Color3.fromRGB(50, 50, 50)
        self:SaveSettings()
        
        if SETTINGS.autoSync then
            self:StartAutoSync()
            self:UpdateStatus("Auto sync enabled. Will sync every " .. tostring(SETTINGS.syncInterval) .. " seconds.")
        else
            self:UpdateStatus("Auto sync disabled.")
        end
    end)
    
    -- Sync Button
    syncButton = Instance.new("TextButton")
    syncButton.Size = UDim2.new(1, -20, 0, 50)
    syncButton.Position = UDim2.new(0, 10, 0, 300)
    syncButton.Text = "Sync Now"
    syncButton.Font = Enum.Font.SourceSansBold
    syncButton.TextSize = 18
    syncButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    syncButton.BackgroundColor3 = Color3.fromRGB(66, 133, 244)
    syncButton.BorderSizePixel = 0
    syncButton.Parent = mainFrame
    
    syncButton.MouseButton1Click:Connect(function()
        if not SETTINGS.isSyncing then
            self:Sync()
        end
    end)
    
    -- Progress Bar Background
    progressBar = Instance.new("Frame")
    progressBar.Size = UDim2.new(1, -40, 0, 15)
    progressBar.Position = UDim2.new(0, 20, 0, 360)
    progressBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    progressBar.BorderSizePixel = 0
    progressBar.Visible = false
    progressBar.Parent = mainFrame
    
    -- Progress Bar Fill
    progressFill = Instance.new("Frame")
    progressFill.Size = UDim2.new(0, 0, 1, 0)
    progressFill.Position = UDim2.new(0, 0, 0, 0)
    progressFill.BackgroundColor3 = Color3.fromRGB(76, 175, 80)
    progressFill.BorderSizePixel = 0
    progressFill.Parent = progressBar
    
    -- Progress Label
    local progressLabel = Instance.new("TextLabel")
    progressLabel.Size = UDim2.new(1, -40, 0, 20)
    progressLabel.Position = UDim2.new(0, 20, 0, 380)
    progressLabel.Text = "0%"
    progressLabel.Font = Enum.Font.SourceSans
    progressLabel.TextSize = 12
    progressLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
    progressLabel.BackgroundTransparency = 1
    progressLabel.Visible = false
    progressLabel.Name = "ProgressLabel"
    progressLabel.Parent = mainFrame
    
    -- Scripts Count Label
    local scriptsLabel = Instance.new("TextLabel")
    scriptsLabel.Size = UDim2.new(1, -20, 0, 20)
    scriptsLabel.Position = UDim2.new(0, 10, 0, 420)
    scriptsLabel.Text = "0 scripts found"
    scriptsLabel.Font = Enum.Font.SourceSans
    scriptsLabel.TextSize = 12
    scriptsLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
    scriptsLabel.BackgroundTransparency = 1
    scriptsLabel.TextXAlignment = Enum.TextXAlignment.Right
    scriptsLabel.Parent = mainFrame
    
    mainFrame.Parent = screenGui
end

function RbxSynSync:LoadSettings()
    local success, settings = pcall(function()
        return plugin:GetSetting("RbxSynSettings")
    end)
    
    if success and settings then
        SETTINGS.codespaceUrl = settings.codespaceUrl or SETTINGS.codespaceUrl
        SETTINGS.autoSync = settings.autoSync ~= false
        SETTINGS.syncInterval = settings.syncInterval or 30
        SETTINGS.lastSyncTime = settings.lastSyncTime or 0
        
        -- Update UI
        if urlTextBox then
            urlTextBox.Text = SETTINGS.codespaceUrl
        end
        if autoSyncCheckbox then
            autoSyncCheckbox.BackgroundColor3 = SETTINGS.autoSync and Color3.fromRGB(76, 175, 80) or Color3.fromRGB(50, 50, 50)
        end
        
        -- Update last sync label
        if SETTINGS.lastSyncTime > 0 then
            self:UpdateLastSyncTime()
        end
    end
end

function RbxSynSync:SaveSettings()
    plugin:SetSetting("RbxSynSettings", {
        codespaceUrl = SETTINGS.codespaceUrl,
        autoSync = SETTINGS.autoSync,
        syncInterval = SETTINGS.syncInterval,
        lastSyncTime = SETTINGS.lastSyncTime
    })
end

function RbxSynSync:InitSyncSystem()
    -- Listen for script changes
    game.DescendantAdded:Connect(function(descendant)
        self:OnScriptChanged(descendant)
    end)
    
    game.DescendantRemoving:Connect(function(descendant)
        -- Handle script removal if needed
    end)
    
    -- Check for existing scripts
    task.delay(1, function()
        self:CountScripts()
    end)
    
    -- Start auto-sync if enabled
    if SETTINGS.autoSync then
        self:StartAutoSync()
    end
end

function RbxSynSync:CountScripts()
    local count = 0
    local services = {
        game.ServerScriptService,
        game.ReplicatedStorage,
        game.StarterGui,
        game.StarterPack,
        game.Workspace,
        game.Lighting
    }
    
    for _, service in ipairs(services) do
        for _, descendant in ipairs(service:GetDescendants()) do
            if descendant:IsA("LuaSourceContainer") then
                count = count + 1
            end
        end
    end
    
    -- Update scripts count label
    local mainFrame = dockWidget:FindFirstChildWhichIsA("Frame")
    if mainFrame then
        local scriptsLabel = mainFrame:FindFirstChild("ScriptsCountLabel", true)
        if scriptsLabel then
            scriptsLabel.Text = tostring(count) .. " scripts found"
        end
    end
end

function RbxSynSync:OnScriptChanged(descendant)
    if descendant:IsA("LuaSourceContainer") then
        -- Debounce sync requests
        if self.syncTimer then
            self.syncTimer:Cancel()
        end
        
        self.syncTimer = task.delay(3, function()
            if SETTINGS.autoSync then
                self:Sync()
            end
        end)
    end
end

function RbxSynSync:StartAutoSync()
    -- Stop existing auto-sync
    if self.autoSyncThread then
        self.autoSyncThread:Disconnect()
    end
    
    -- Create new auto-sync loop
    self.autoSyncThread = task.spawn(function()
        while SETTINGS.autoSync do
            task.wait(SETTINGS.syncInterval)
            if SETTINGS.autoSync then
                self:Sync()
            end
        end
    end)
end

function RbxSynSync:Sync()
    if SETTINGS.isSyncing then
        self:UpdateStatus("Sync already in progress...")
        return false
    end
    
    if not SETTINGS.codespaceUrl or SETTINGS.codespaceUrl == "" then
        self:UpdateStatus("Please configure your codespace URL in settings")
        return false
    end
    
    SETTINGS.isSyncing = true
    self:UpdateStatus("Collecting scripts...")
    self:ShowProgress(true)
    self:UpdateProgress(10)
    
    local success, result = pcall(function()
        -- Collect all scripts from game
        local scripts = {}
        
        -- Search in all relevant services
        local services = {
            {Service = game.ServerScriptService, Name = "ServerScriptService"},
            {Service = game.ReplicatedStorage, Name = "ReplicatedStorage"},
            {Service = game.StarterGui, Name = "StarterGui"},
            {Service = game.StarterPack, Name = "StarterPack"},
            {Service = game.Workspace, Name = "Workspace"},
            {Service = game.Lighting, Name = "Lighting"}
        }
        
        local totalServices = #services
        local currentService = 0
        
        for _, serviceInfo in ipairs(services) do
            currentService = currentService + 1
            local progress = 10 + (currentService / totalServices) * 20
            self:UpdateProgress(progress)
            
            local descendants = serviceInfo.Service:GetDescendants()
            for _, descendant in ipairs(descendants) do
                if descendant:IsA("LuaSourceContainer") then
                    local scriptData = {
                        name = descendant.Name,
                        path = self:GetFullPath(descendant),
                        source = descendant.Source,
                        className = descendant.ClassName,
                        service = serviceInfo.Name
                    }
                    table.insert(scripts, scriptData)
                end
            end
        end
        
        self:UpdateStatus("Found " .. tostring(#scripts) .. " scripts. Preparing sync...")
        self:UpdateProgress(35)
        
        -- Prepare sync data
        local syncData = {
            timestamp = os.time(),
            project = "DaocBLox",
            version = "1.0.0",
            totalScripts = #scripts,
            scripts = scripts
        }
        
        self:UpdateStatus("Sending to codespace...")
        self:UpdateProgress(50)
        
        -- Send to codespace
        local response = self:SendToCodespace(syncData)
        
        self:UpdateProgress(75)
        
        if response and response.success then
            return {
                success = true,
                synced = response.synced or #scripts,
                skipped = response.skipped or 0,
                errors = response.errors or {}
            }
        else
            error(response and response.error or "Unknown error")
        end
    end)
    
    SETTINGS.isSyncing = false
    
    if success and result.success then
        self:UpdateStatus("✓ Sync completed! " .. tostring(result.synced) .. " scripts synced")
        if result.skipped > 0 then
            self:UpdateStatus(self:UpdateStatus() .. ", " .. tostring(result.skipped) .. " skipped")
        end
        self:UpdateProgress(100)
        
        SETTINGS.lastSyncTime = os.time()
        self:UpdateLastSyncTime()
        self:SaveSettings()
        
        task.delay(2, function()
            self:ShowProgress(false)
        end)
        
        return true
    else
        local errorMsg = success and (result.error or "Unknown error") or result
        self:UpdateStatus("✗ Sync failed: " .. tostring(errorMsg))
        self:ShowProgress(false)
        
        -- Try to provide helpful error messages
        if tostring(errorMsg):find("HttpError") or tostring(errorMsg):find("Connection") then
            self:UpdateStatus("✗ Connection failed. Check your codespace URL and ensure the server is running.")
        end
        
        return false
    end
end

function RbxSynSync:SendToCodespace(data)
    local HttpService = game:GetService("HttpService")
    
    local payload = HttpService:JSONEncode(data)
    
    local success, response = pcall(function()
        return HttpService:RequestAsync({
            Url = SETTINGS.codespaceUrl .. "/api/sync",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["User-Agent"] = "RbxSyn-Plugin/1.0",
                ["X-Plugin-Version"] = "1.0.0"
            },
            Body = payload
        })
    end)
    
    if success then
        if response.StatusCode == 200 then
            local success2, body = pcall(function()
                return HttpService:JSONDecode(response.Body)
            end)
            if success2 then
                return body
            else
                return {success = true, synced = 0, raw = response.Body}
            end
        elseif response.StatusCode == 404 then
            return {success = false, error = "Sync endpoint not found. Is the codespace server running?"}
        elseif response.StatusCode == 400 then
            return {success = false, error = "Invalid request. Check your data format."}
        else
            return {success = false, error = "Server returned status: " .. tostring(response.StatusCode)}
        end
    else
        return {success = false, error = "Connection failed: " .. tostring(response)}
    end
end

function RbxSynSync:GetFullPath(instance)
    local path = instance.Name
    local parent = instance.Parent
    
    while parent and parent ~= game do
        path = parent.Name .. "/" .. path
        parent = parent.Parent
    end
    
    return path
end

function RbxSynSync:UpdateStatus(text)
    if statusLabel then
        statusLabel.Text = text
    end
    return text
end

function RbxSynSync:ShowProgress(show)
    if progressBar then
        progressBar.Visible = show
    end
    
    -- Show/hide progress label
    local mainFrame = dockWidget:FindFirstChildWhichIsA("Frame")
    if mainFrame then
        local progressLabel = mainFrame:FindFirstChild("ProgressLabel")
        if progressLabel then
            progressLabel.Visible = show
        end
    end
end

function RbxSynSync:UpdateProgress(percent)
    if progressFill then
        progressFill.Size = UDim2.new(percent / 100, 0, 1, 0)
    end
    
    -- Update progress label
    local mainFrame = dockWidget:FindFirstChildWhichIsA("Frame")
    if mainFrame then
        local progressLabel = mainFrame:FindFirstChild("ProgressLabel")
        if progressLabel then
            progressLabel.Text = tostring(math.floor(percent)) .. "%"
        end
    end
end

function RbxSynSync:UpdateLastSyncTime()
    if lastSyncLabel and SETTINGS.lastSyncTime > 0 then
        local timeDiff = os.time() - SETTINGS.lastSyncTime
        local timeStr
        
        if timeDiff < 60 then
            timeStr = "Just now"
        elseif timeDiff < 3600 then
            timeStr = tostring(math.floor(timeDiff / 60)) .. " minutes ago"
        elseif timeDiff < 86400 then
            timeStr = tostring(math.floor(timeDiff / 3600)) .. " hours ago"
        else
            timeStr = tostring(math.floor(timeDiff / 86400)) .. " days ago"
        end
        
        lastSyncLabel.Text = "Last sync: " .. timeStr
    end
end

return RbxSynSync
