local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))().Load({
    Title = "Ninja Legends",
    Style = 3,
    SizeX = 500,
    SizeY = 300,
    Theme = "Dark"
})

local Crystals = {}

for i,v in next, game.workspace.mapCrystalsFolder:GetChildren() do 
    if v then
        table.insert(Crystals, v.Name)
    end
end

local Farm = UI.New({
    Title = "Farming"
})

local TP = UI.New({
    Title = "TP"
})

local Misc = UI.New({
    Title = "Misc"
})

local Pets = UI.New({
    Title = "Pets"
})

Pets.Dropdown({
    Text = "Choose a Crystal",
    Callback = function(v)
        _G.crystal = v
    end,
    Options = Crystals
})

Pets.Toggle({
    Text = "Open Crystal",
    Callback = function(v)
        _G.autocrystal = v
        while true do
            if not _G.crystal then return end
            if not _G.autocrystal then return end

            local oh1 = "openCrystal"
            local oh2 = _G.crystal
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(oh1, oh2)
            wait()
        end
    end
})

Farm.Toggle({
    Text = "Auto Swing",
    Callback = function(abc)
        _G.swing = abc

        while true do
            if not _G.swing then return end
            if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then 
                game.Players.LocalPlayer.ninjaEvent:FireServer("swingKatana")
                else
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then 
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                wait()
                if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then 
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)                            
                end
                end
                end
                end
            end
        end
    end,
    Enabled = false
})

Farm.Toggle({
    Text = "Auto Sword",
    Callback = function(v)
        _G.sword = v

        while true do
            if not _G.sword then return end
            local ohString1 = "buyAllSwords"
            local ohString2 = "Blazing Vortex Island"
            
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(ohString1, ohString2)
            wait()
        end
    end
})

Farm.Toggle({
    Text = "Auto Belt",
    Callback = function(v)
        _G.belt = v

        while true do
            if not _G.belt then return end
            local ohString1 = "buyAllBelts"
            local ohString2 = "Blazing Vortex Island"
            
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(ohString1, ohString2)
            wait()
        end
    end
})

Farm.Toggle({
    Text = "Auto Rank",
    Callback = function(v)
        _G.autorank = v

        while true do 
            if not _G.autorank then return end
            local oh1 = "buyRank"
            local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
            for i = 1,#oh2 do
         game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
          end
     end
    end
})

Farm.Toggle({
    Text = "Auto Sell",
    Callback = function(v)
        _G.autosell = v

        while true do
            if not _G.autosell then return end
            local circle = game:GetService("Workspace").sellAreaCircles.sellAreaCircle16.circleInner
            circle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait()
        end
    end
})


Farm.Button({
    Text  = "Unlock all islands",
    Callback = function()
        local cfbeforetp = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for i,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.25)
        end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cfbeforetp
    end
})

Misc.Dropdown({
    Text = "Choose an option",
    Callback = function(v)
        game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer(v)
    end,
    Options = {"Inferno", "Frost", "Lightning", "Electral Chaos", "Masterful Wrath", "Shadow Charge", "Eternity Storm", "Shadowfire"}
})

Misc.Button({
    Text = "Collect all Chests",
    Callback = function()
        game:GetService("Workspace").mythicalChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").goldenChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").enchantedChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").magmaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").legendsChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").eternalChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").saharaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").thunderChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").ancientChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").groupRewardsCircle["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace")["Daily Chest"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace")["wonderChest"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(3.5)
game:GetService("Workspace").wonderChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("Workspace").ancientChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").thunderChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").saharaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").eternalChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").legendsChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").magmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").enchantedChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").goldenChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").mythicalChest["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace").groupRewardsCircle["circleInner"].CFrame = game.Workspace.Part.CFrame
game:GetService("Workspace")["Daily Chest"].circleInner.CFrame = game.Workspace.Part.CFrame
    end
})

Misc.Button({
    Text = "Max Jumps",
    Callback = function()
        game.Players.LocalPlayer.multiJumpCount.Value = "50"
    end
})

Misc.Button({
    Text = "Anti Afk",
    Callback = function()
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(
        function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end)
    end
})

TP.Button({
    Text = "Mystical Waters (Good)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(347.74881, 8824.53809, 114.271019)
    end
})

TP.Button({
    Text = "Sword of Legends (Good)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1834.15967, 38.704483, -141.375641)
    end
})

TP.Button({
    Text = "Elemental Tornado (Good)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(299.758484, 30383.0957, -90.1542206)
    end
})

TP.Button({
    Text = "Lava Pit  (Bad)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116.631485, 12952.5381, 271.14624)
    end
})

TP.Button({
    Text = "Tornado (Bad)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(325.641174, 16872.0938, -9.9906435)
    end
})

TP.Button({
    Text = "Swords Of Ancients (Bad)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(648.365662, 38.704483, 2409.72266)
    end
})
