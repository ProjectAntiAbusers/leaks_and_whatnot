  local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Speed of Legends", "BloodTheme")


-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
local PetsTab = Window:NewTab("Pets")
local Pets = PetsTab:NewSection("Pets")
local Crystals = {}

for i,v in next, game.Workspace.mapCrystalsFolder:GetChildren() do
    table.insert(Crystals,  v.Name)
end

MainSection:NewToggle("Auto Farm", "Auto farms for you", function(v)
_G.LULU = v--change to true or false
while _G.LULU do
    wait()--change time if you want
    local A_1 = "collectOrb"
    local A_2 = "Red Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Yellow Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Gem"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Orange Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Blue Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Red Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Yellow Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Gem"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Orange Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Blue Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Red Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Yellow Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Gem"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Orange Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Blue Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Red Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Yellow Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Gem"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Orange Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Blue Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Red Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Yellow Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Gem"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Orange Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Blue Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Red Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Yellow Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Gem"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Orange Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Blue Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Red Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Yellow Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Gem"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Orange Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
    local A_1 = "collectOrb"
    local A_2 = "Blue Orb"
    local A_3 = "City"
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)

    wait()
end
end)

MainSection:NewToggle("Auto Rebirth", "Auto rebirths for you", function(v)
    _G.Rebirth = v--change to true or false
    while _G.Rebirth == true do
        game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(A_1, A_2, A_3)
        local A_1 = "rebirthRequest"
        game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(A_1)
        wait()
    end
    end)

MainSection:NewToggle("Farm Hoops", "Farms Hoops", function(v)
    _G.Hoop = v
    while _G.Hoop == true do
        for i, v in pairs(workspace.Hoops:GetChildren()) do
            if v.Name == "Hoop" then
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
        wait(0.6)
        for i, v in pairs(workspace.Hoops:GetChildren()) do
            if v.Name == "Hoop" then
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,100,0)
            end
        end
    end
end)

Pets:NewDropdown("Select a Crystal", "Dropdown Crystal", Crystals , function(v)
_G.crystal = v
end)
Pets:NewToggle("Auto Open Crystal Egg", "Auto opens Crystal Eggs", function(v)
    _G.autoopen = v
    while _G.autoopen == true do
local A_1 = "openCrystal"
local A_2 = _G.crystal
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(A_1, A_2)
    end
end)

local Teleports = Window:NewTab("Teleports")
local TeleportsSection = Teleports:NewSection("Teleports")

:NewDropdown("Teleport", "Teleports you", {"City", "Snow City", "Magma City"}, function(v)
    if v == "City" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-720.867676, 5.9992404, 521.217224, 0.69439292, -0.0281433277, -0.719045162, 5.3551048e-08, 0.999234915, -0.0391098633, 0.71959573, 0.0271575749, 0.693861663)
    end
    if v == "Snow City" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-798.230164, 6.01365137, 2209.10327, -0.599616408, -0.0321650021, -0.799640834, 6.00703061e-08, 0.999191999, -0.0401918516, 0.800287485, -0.0240997449, -0.599131942)
    end
    if v == "Magma City" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1878.58093, 6.00838995, 4335.40332, -0.00650931895, -0.0437152088, -0.999022901, 1.44413207e-07, 0.999044001, -0.0437161401, 0.99997896, -0.000284698559, -0.00650309771)
    end
    end)

local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewButton("Collect All Chests", "Collects all Chests", function()
    for i,v in pairs(workspace.rewardChests:GetChildren()) do
        for i = 1,5 do
            local v1 = v
            local rem = game:GetService("ReplicatedStorage").rEvents.collectCourseChestRemote
            rem:InvokeServer(v1)
        end
    end
end)
