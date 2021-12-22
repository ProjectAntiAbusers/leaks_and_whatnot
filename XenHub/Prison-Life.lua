local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Prison Life", "BloodTheme")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewDropdown("Give Gun", "Gives the localplayer a gun", {"M9", "Remington 870", "AK-47"}, function(v)
    local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
    local Event = game:GetService("Workspace").Remote.ItemHandler
    Event:InvokeServer(A_1)
end)

MainSection:NewDropdown("Change Team", "Changes you Team", {"Inmate", "N/A", "Police", "Criminal"}, function(v)
    if v == "Police" then
        game.Workspace.Remote.TeamEvent:FireServer("Bright blue")
    end
if v == "Criminal" then
    LP = game.Players.LocalPlayer

RE = LP.Character.HumanoidRootPart.Position
LP.Character.HumanoidRootPart.CFrame = CFrame.new(-919.958, 95.327, 2138.189)
wait(0.075)
LP.Character.HumanoidRootPart.CFrame = CFrame.new(RE)
end
if v == "Neutral" then
    game.Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end
if v == "Inmate" then
    game.Workspace.Remote.TeamEvent:FireServer("Bright orange")
end
end)

MainSection:NewDropdown("Gun Mod", "Makes the gun op", {"M9", "Remington 870", "AK-47"}, function(v)
    local module = nil
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
        module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
        module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
    end
    if module ~= nil then
        module["MaxAmmo"] = math.huge
        module["CurrentAmmo"] = math.huge
        module["StoredAmmo"] = math.huge
        module["FireRate"] = 0.000001
        module["Spread"] = 0
        module["Range"] = math.huge
        module["Bullets"] = 10
        module["ReloadTime"] = 0.000001
        module["AutoFire"] = true
    end
end)

MainSection:NewButton("Fly", "You can Fly or Fly with a Car", function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Info:";
        Text = "Press Z to Toggle";
        })
 repeat wait()
     until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
 local mouse = game.Players.LocalPlayer:GetMouse()
 repeat wait() until mouse
 local plr = game.Players.LocalPlayer
 local torso = plr.Character.Torso
 local flying = true
 local deb = true
 local ctrl = {f = 0, b = 0, l = 0, r = 0}
 local lastctrl = {f = 0, b = 0, l = 0, r = 0}
 local maxspeed = 500
 local speed = 0
  
 function Fly()
 local bg = Instance.new("BodyGyro", torso)
 bg.P = 9e4
 bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
 bg.cframe = torso.CFrame
 local bv = Instance.new("BodyVelocity", torso)
 bv.velocity = Vector3.new(0,0.1,0)
 bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
 repeat wait()
 plr.Character.Humanoid.PlatformStand = false
 if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
 speed = speed+125.0+(speed/maxspeed)
 if speed > maxspeed then
 speed = maxspeed
 end
 elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
 speed = speed-250
 if speed < 0 then
 speed = 0
 end
 end
 if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
 bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
 lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
 elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
 bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
 else
 bv.velocity = Vector3.new(0,0.1,0)
 end
 bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
 until not flying
 ctrl = {f = 0, b = 0, l = 0, r = 0}
 lastctrl = {f = 0, b = 0, l = 0, r = 0}
 speed = 0
 bg:Destroy()
 bv:Destroy()
 plr.Character.Humanoid.PlatformStand = false
 end
 mouse.KeyDown:connect(function(key)
 if key:lower() == "z" then
 if flying then flying = false
 else
 flying = true
 Fly()
 end
 elseif key:lower() == "w" then
 ctrl.f = 1
 elseif key:lower() == "s" then
 ctrl.b = -1
 elseif key:lower() == "a" then
 ctrl.l = -1
 elseif key:lower() == "d" then
 ctrl.r = 1
 end
 end)
 mouse.KeyUp:connect(function(key)
 if key:lower() == "w" then
 ctrl.f = 0
 elseif key:lower() == "s" then
 ctrl.b = 0
 elseif key:lower() == "a" then
 ctrl.l = 0
 elseif key:lower() == "d" then
 ctrl.r = 0
 end
 wait(5)
 hint:Destroy()
 end)
 Fly()
 end)

 MainSection:NewButton("Taser Bypass", "Bypasses Taset", function()
    game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
    game.Players.LocalPlayer.CharacterAdded:connect(function()
    game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
    game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
    end)
    end)

MainSection:NewDropdown("Arrest ", "Arrest the teams Players", {"Criminals", "Inmates"}, function(v)
    if v == "Criminals" then
        local Player = game.Players.LocalPlayer
        local cpos = Player.Character.HumanoidRootPart.CFrame
        for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
        if v.Name ~= Player.Name then
        local i = 10
            repeat
            wait()
            i = i-1
            game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
            Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
            until i == 0
        end
        end
        Player.Character.HumanoidRootPart.CFrame = cpos
        
    end
    if v == "Inmates" then
        local Player = game.Players.LocalPlayer
        local cpos = Player.Character.HumanoidRootPart.CFrame
        for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
        if v.Name ~= Player.Name then
        local i = 10
            repeat
            wait()
            i = i-1
            game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
            Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
            until i == 0
        end
        end
        Player.Character.HumanoidRootPart.CFrame = cpos
        
    end
end)

MainSection:NewButton("Kill All", "Kill All", function()
    workspace.Remote.TeamEvent:FireServer("Medium stone grey")
 
    game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
     
    wait(0.5)
    function kill(a)
    local A_1 =
    {
    [1] =
    {
    ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
    ["Distance"] = 3.2524313926697,
    ["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
    ["Hit"] = a.Character.Head
    },
      [2] =
    {
    ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
    ["Distance"] = 3.2699294090271,
    ["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
    ["Hit"] = a.Character.Head
    },
    [3] =
    {
    ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
    ["Distance"] = 3.1665518283844,
    ["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
    ["Hit"] = a.Character.Head
    },
    [4] =
    {
    ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
    ["Distance"] = 3.3218522071838,
    ["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
    ["Hit"] = a.Character.Head
    },
    [5] =
    {
    ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
    ["Distance"] = 3.222757101059,
    ["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
    ["Hit"] = a.Character.Head
    }
    }
    local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
    local Event = game:GetService("ReplicatedStorage").ShootEvent
    Event:FireServer(A_1, A_2)
    Event:FireServer(A_1, A_2)
    end
     
    for i,v in pairs(game.Players:GetChildren())do
    if v.Name ~= game.Players.LocalPlayer.Name then
    kill(v)
    end
    end
    wait(1)
    workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

MainSection:NewButton("Kill Aura","Kill Aura",function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Info:";
        Text = "Press E To Kill People Near You.";
        })
         
            plr = game:service'Players'.LocalPlayer
        char = plr.Character
        mouse = plr:GetMouse()
        on = false
         
        mouse.KeyDown:connect(function(key)
          if key == "e" then
              on = true
          end
        end)
         
        mouse.KeyUp:connect(function(key)
          if key == "e" then
              on = false
          end
        end)
         
        while wait(0.1) do
          for i, b in pairs(game.Players:GetChildren()) do
              if b.Name ~= plr.Name and not b:IsFriendsWith(plr.UserId) and on then
                  for i = 1, 10 do
                      game.ReplicatedStorage.meleeEvent:FireServer(b)
                  end
              end
          end
        end
         
         
        while true do
         wait(0.01)
         for i,v in pairs (game.Players:GetChildren()) do
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
           game.ReplicatedStorage.meleeEvent:FireServer(v.Name)
           wait(.8)
         end
        end
end)

-- PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

local Teleports = Window:NewTab("Teleports")
local TeleportsSection = Teleports:NewSection("Teleports")

TeleportsSection:NewDropdown("Teleport to", "Teleports you", {"Police Room", "Prison Cells", "Crime Base"}, function(v)
    if v == "Police Room" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836, 99, 2271)
    end
    if v == "Prison Cells" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918, 97.73, 2447)
    end
    if v == "Crime Base" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.704, 91.632, 2056.925)
    end
end)
wait(0,5)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Info:";
    Text = "Succesfully Loaded Gui";
    })


local Others = Window:NewTab("Others")
local OthersSection = Others:NewSection("Others")

OthersSection:NewTextBox("Teleport to a Player", "Teleports you to a Player", function(txt)
	print(txt)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[txt].Character.HumanoidRootPart.CFrame
end)
