Convert the entire `opendaoc-db-core` SQL folder into a fully playable Roblox Experience formatted for VS Code + Rojo.

Use all SQL tables except: Crafting, Zones, Mobs, Terrain, and ALL SQL spawn data.

Do NOT import SQL starting positions.  
Create NEW Roblox spawn points:

Workspace/Spawns/
  Albion/<ClassName>Spawn
    Midgard/<ClassName>Spawn
      Hibernia/<ClassName>Spawn

      Players must spawn at the correct realm/class spawn.

      Output the full project in Rojo folder format:

      game/
        ReplicatedStorage/DAoCData/*.lua  (converted SQL tables)
          ReplicatedStorage/DAoCCore/*.lua  (DataManager, Animations)
            ServerScriptService/DAoCCore/*.lua (Combat, Realm)
              StarterPlayer/StarterPlayerScripts/DAoCClient/*.lua
                StarterGui/DAoCUI/*.gui
                  Workspace/Spawns/*
                    Models/Characters/<Realm>/<Class>.rbxmx (R15 rigs)
                      Models/Systems/*.rbxmx
                        Models/UI/*.rbxmx
                          Preview/R15PreviewPlace.rbxlx

                          Required systems:
                          - Realm system
                          - PvP/RvR
                          - Tab-targeting
                          - Inventory
                          - Stats
                          - Combat (styles, abilities, resists, buffs, CC)
                          - DAoC-style UI
                          - R15 character models with animations

                          All systems must use the converted SQL data.

                          The AI may use external data or improvements if it enhances gameplay, stability, UI clarity, animation quality, or overall functionality, without contradicting DAoC structure.

                          No exports needed — only Rojo folder structure.