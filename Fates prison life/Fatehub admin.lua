--[[

	Prefix is . by default
	Type: .cmds for a list of all the commands
]]

local gunscript = game.Players.LocalPlayer.PlayerScripts.ClientGunReplicator
gunscript.Disabled = true

for i, v in pairs(game.CoreGui:GetChildren()) do
if v.Name == "PurchasePromptApp" then
v:Remove()
end
end

game.StarterGui:SetCore("SendNotification", {
Title = "Fate Hub PL Admin";
Text = "Successfully loaded.";
Duration = 5;
})

game.StarterGui:SetCore("SendNotification", {
Title = "Credits";
Text = "FATE#1646";
Duration = 5;
})

game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "Welcome to Fate Hub PL Admin, type /cmds to view all available commands and be sure to press F9!",
		Color = Color3.fromRGB(235,2,2)
})
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "Made by: FATE#1646 on Discord",
		Color = Color3.fromRGB(232,124,0)
})

  game.Players.ChildAdded:Connect(function(player)
  if not pcall (function()
  SendNotification("Player Joined",""..player.Name.."  has entered the server.",2.5 )
  end) then
    print ("Error")
  end
  end)

  game.Players.ChildRemoved:Connect(function(player)
  if not pcall (function()
  SendNotification("Player Left",""..player.Name.."  has left the server.",2.5 )
  end) then
    print ("Error")
  end
  end)

function GetPlayer(String) -- Credit to Timeless/xFunnieuss
    local Found = {}
    local strl = String:lower()
    if strl == "all" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            table.insert(Found,v)
        end
    elseif strl == "others" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= lplayer.Name then
                table.insert(Found,v)
            end
        end  
    elseif strl == "me" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name == lplayer.Name then
                table.insert(Found,v)
            end
        end  
    else
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    end
    return Found    
end

cmdpre = "."

_G.Spam = false
_G.hold = false
_G.Bringplr = false
_G.neutral = false
_G.inmate = false
_G.guard = false
_G.crim = false
_G.sod = false
_G.sog = false

game.Players.LocalPlayer.Chatted:Connect(function(tk)

if string.sub(tk, 1, 6) == (cmdpre.."white") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Fog"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "{Team} You are now on the 'White' team.",
		Color = Color3.fromRGB(255, 255, 255)
	})
end

if string.sub(tk, 1, 99) == (cmdpre.."doors on") then
game.Workspace.Doors.Parent = game.Lighting
game.Workspace.Prison_Cellblock.doors.Parent = game.Lighting
end

if string.sub(tk, 1, 99) == (cmdpre.."doors off") then
game.Lighting.Doors.Parent = game.workspace
game.Lighting.doors.Parent = workspace.Prison_Cellblock
end

if string.sub(tk, 1, 9) == (cmdpre.."bullets ") then
game:GetService('Players').PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		character:WaitForChild("Humanoid").Died:Connect(function()
			for i, l in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
if string.sub(tk, 1, 9) == (cmdpre.."bullets ") then
if l.Name == "GunStates" then
local tools = require(l)
tools["Bullets"] = (string.sub(tk, 10))
end
end
end
		end)
	end)
end)
end

if string.sub(tk, 1, 6) == (cmdpre.."firerate ") then
for i, l in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
if l.Name == "GunStates" then
local tools = require(l)
tools["FireRate"] = (string.sub(tk, 10))
end
end
end

if string.sub(tk, 1, 8) == (cmdpre.."damage ") then
for i, l in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
if l.Name == "GunStates" then
local tools = require(l)
tools["Damage"] = (string.sub(tk, 10))
end
end
end

if string.sub(tk, 1, 4) == (cmdpre.."ac") then
	local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
		if v.Name ~= Player.Name then
			if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
				error("Friend not arrested!")
			else
				local i = 10
				repeat
					wait()
					i = i-1
					game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
					Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
				until i == 0
			end
		end
	end
	Player.Character.HumanoidRootPart.CFrame = cpos
end

if string.sub(tk, 1, 4) == (cmdpre.."ai") then
	local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
		if v.Name ~= Player.Name then
			if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
				error("Friend not arrested!")
			else
				local i = 3
				repeat
					wait()
					i = i-1
					game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
					Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
				until i == 0
			end
		end
	end
	Player.Character.HumanoidRootPart.CFrame = cpos
end

if string.sub(tk, 1, 6) == (cmdpre.."punch") then
mainRemotes = game.ReplicatedStorage
meleeRemote = mainRemotes['meleeEvent']
mouse = game.Players.LocalPlayer:GetMouse()
punching = false
cooldown = false

function punch()
cooldown = true
local part = Instance.new("Part", game.Players.LocalPlayer.Character)
part.Transparency = 1
part.Size = Vector3.new(5, 2, 3)
part.CanCollide = false
local w1 = Instance.new("Weld", part)
w1.Part0 = game.Players.LocalPlayer.Character.Torso
w1.Part1 = part
w1.C1 = CFrame.new(0,0,2)
part.Touched:connect(function(hit)
if game.Players:FindFirstChild(hit.Parent.Name) then
local plr = game.Players:FindFirstChild(hit.Parent.Name) 
if plr.Name ~= game.Players.LocalPlayer.Name then
part:Destroy()

for i = 1,100 do
meleeRemote:FireServer(plr)
end
end
end
end)

wait(1)
cooldown = false
part:Destroy()
end


mouse.KeyDown:connect(function(key)
if cooldown == false then
if key:lower() == "f" then

punch()

end
end
end)
end

if string.sub(tk, 1, 6) == (cmdpre.."black") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Really black"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "{Team} You are now on the 'Black' team.",
		Color = Color3.fromRGB(255, 255, 255)
	})
end

if string.sub(tk, 1, 7) == (cmdpre.."purple") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Magenta"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "{Team} You are now on the 'Magenta' team.",
		Color = Color3.fromRGB(255, 255, 255)
	})
end

if string.sub(tk, 1, 99) == (cmdpre.."walls on") then
L = game.Lighting
PH = workspace.Prison_Halls
PGO = workspace.Prison_Guard_Outpost
PA = workspace.Prison_Administration
PCB = workspace.Prison_Cellblock
CFT = workspace.Prison_Cafeteria
GA = workspace.Garages
PGB = workspace.GuardBooth
PH.walls.Parent = game.Lighting
PH.lights.Parent = game.Lighting
PH.roof.Parent = game.Lighting
PH.glass.Parent = game.Lighting
PGO.doorwindow.Parent = game.Lighting
PGO.wall.Parent = game.Lighting
PGO.lights.Parent = game.Lighting
PGO.wallsegment.Parent = game.Lighting
PGO.wallsegment.Parent = game.Lighting
PGO.wallsegment.Parent = game.Lighting
PGO.wallsegment.Parent = game.Lighting
PGO.wallsegment.Parent = game.Lighting
PGO.wallsegment.Parent = game.Lighting
PGO.wallsegment.Parent = game.Lighting
PGO.part.Parent = game.Lighting
PGO.Part.Parent = game.Lighting
PA.walls.Parent = game.Lighting
PA.Part.Parent = game.Lighting
PA.Part.Parent = game.Lighting
PA.Part.Parent = game.Lighting
PA.trim.Parent = game.Lighting
PA.trim.Parent = game.Lighting
PA.trimboi.Parent = game.Lighting
PA.front.Parent = game.Lighting
PCB.b_front.Parent = game.Lighting
PCB.b_wall.Parent = game.Lighting
PCB.c_wall.Parent = game.Lighting
PCB.a_walls.Parent = game.Lighting
PCB.a_front.Parent = game.Lighting
PCB.c_ceiling.Parent = game.Lighting
PCB.a_ceiling.Parent = game.Lighting
PCB.b_ceiling.Parent = game.Lighting
PCB.a_outerwall.Parent = game.Lighting
PCB.b_outerwall.Parent = game.Lighting
PCB.a_lights.Parent = game.Lighting
PCB.b_lights.Parent = game.Lighting
PCB.c_lights.Parent = game.Lighting
PCB.Wedge.Parent = game.Lighting
PCB.Wedge.Parent = game.Lighting
CFT.building.Parent = game.Lighting
CFT.lights.Parent = game.Lighting
CFT.glassdividers.Parent = game.Lighting
CFT.Wedge.Parent = L
CFT.Wedge.Parent = L
CFT.Wedge.Parent = L
PCB.c_hallwall.Parent = L
PCB.c_hallwall.Parent = L
PCB.c_hallwall.Parent = L
PCB.c_hallwall.Parent = L
PCB.c_corner.Parent = L
PCB.c_corner.Parent = L
PCB.c_corner.Parent = L
PCB.c_corner.Parent = L
PCB.c_glass.Parent = L
CFT.Floor.Parent = L
CFT.Floor.Parent = L
CFT.Floor.Parent = L
CFT.Floor.Parent = L
CFT.Model.Parent = L
CFT.Model.Parent = L
CFT.glass.Parent = L
PGO.window.Parent = L
PA.light_floor1.Parent = L
PA.light_floor2.Parent = L
PA.Part.Parent = L
GA.Parent = L
PGB.Prison_bollards.Parent = L
PGB.Wedge.Parent = L
PGB.Wedge.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Stonewall.Parent = L
PGB.Part.Parent = L
PGB.Part.Parent = L
PGB.Model.Parent = L
PGB.Model.Parent = L
end

if string.sub(tk, 1, 99) == (cmdpre.."walls off") then
    L = game.Lighting
    PH = workspace.Prison_Halls
    PGO = workspace.Prison_Guard_Outpost
    PA = workspace.Prison_Administration
    PCB = workspace.Prison_Cellblock
    CFT = workspace.Prison_Cafeteria
    GA = L.Garages
    PGB = workspace.GuardBooth
    L.walls.Parent = PH
    L.lights.Parent = PH
    L.roof.Parent = PH
    L.glass.Parent = PH
    L.doorwindow.Parent = PGO
    L.wall.Parent = PGO
    L.lights.Parent = PGO
    L.wallsegment.Parent = PGO
    L.wallsegment.Parent = PGO
    L.wallsegment.Parent = PGO
    L.wallsegment.Parent = PGO
    L.wallsegment.Parent = PGO
    L.wallsegment.Parent = PGO
    L.wallsegment.Parent = PGO
    L.part.Parent = PGO
    L.Part.Parent = PGO
    L.walls.Parent = PA
    L.Part.Parent = PA
    L.Part.Parent = PA
    L.Part.Parent = PA
    L.trim.Parent = PA
    L.trim.Parent = PA
    L.trimboi.Parent = PA
    L.front.Parent = PA
    L.b_front.Parent = PCB
    L.b_wall.Parent = PCB
    L.c_wall.Parent = PCB
    L.a_walls.Parent = PCB
    L.a_front.Parent = PCB
    L.c_ceiling.Parent = PCB
    L.a_ceiling.Parent = PCB
    L.b_ceiling.Parent = PCB
    L.a_outerwall.Parent = PCB
    L.b_outerwall.Parent = PCB
    L.a_lights.Parent = PCB
    L.b_lights.Parent = PCB
    L.c_lights.Parent = PCB
    L.Wedge.Parent = PCB
    L.Wedge.Parent = PCB
    L.building.Parent = CFT
    L.lights.Parent = CFT
    L.glassdividers.Parent = CFT
    L.Wedge.Parent = CFT
    L.Wedge.Parent = CFT
    L.Wedge.Parent = CFT
    L.c_hallwall.Parent = PCB
    L.c_hallwall.Parent = PCB
    L.c_hallwall.Parent = PCB
    L.c_hallwall.Parent = PCB
    L.c_corner.Parent = PCB
    L.c_corner.Parent = PCB
    L.c_corner.Parent = PCB
    L.c_corner.Parent = PCB
    L.c_glass.Parent = PCB
    L.Floor.Parent = CFT
    L.Floor.Parent = CFT
    L.Floor.Parent = CFT
    L.Floor.Parent = CFT
    L.Model.Parent = CFT
    L.Model.Parent = CFT
    L.glass.Parent = CFT
    L.window.Parent = PGO
    L.light_floor1.Parent = PA
    L.light_floor2.Parent = PA
    L.Part.Parent = PA
    GA.Parent = workspace
    L.Prison_bollards.Parent = PGB
    L.Wedge.Parent = PGB
    L.Wedge.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Stonewall.Parent = PGB
    L.Part.Parent = PGB
    L.Part.Parent = PGB
    L.Model.Parent = PGB
    L.Model.Parent = PGB
    L.PGBGlass.Parent = PGB
end

if string.sub(tk, 1, 99) == (cmdpre.."ar on") then
_G.toggle = true

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = "LocalPlayer"

local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."ar off") then
_G.toggle = false

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = "LocalPlayer"

local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end
end

if string.sub(tk, 1, 4) == (cmdpre.."ws ") then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (string.sub(tk, 5))
end

if string.sub(tk, 1, 4) == (cmdpre.."jp ") then
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (string.sub(tk, 5))
end

if string.sub(tk, 1, 4) == (cmdpre.."hh ") then
game.Players.LocalPlayer.Character.Humanoid.HipHeight = (string.sub(tk, 5))
end

if string.sub(tk, 1, 4) == (cmdpre.."sa ") then
for i,v in pairs(GetPlayer(string.sub(tk, 5))) do

if _G.Spam then
_G.Spam = not _G.Spam
elseif not _G.Spam then
_G.Spam = true

local loll = v.Name

game:GetService("RunService").Heartbeat:Connect(function()
		if loll and loll.Character then
while _G.Spam == true do wait()
workspace.Remote.arrest:InvokeServer(loll.Character.Torso)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = loll.Character.HumanoidRootPart.CFrame
    end
	end
end)
end
end
end
if string.sub(tk, 1, 7) == (cmdpre.."bring ") then
for i,v in pairs(GetPlayer(string.sub(tk, 8))) do
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
		local mainhand = game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870").Handle
		mainhand.Size = Vector3.new(5, 5, 5)
		local NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.Humanoid.Name = 1
		local l = game.Players.LocalPlayer.Character["1"]:Clone()
		l.Parent = game.Players.LocalPlayer.Character
		l.Name = "Humanoid"
		wait(0.2)
		game.Players.LocalPlayer.Character["1"]:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		wait(0.2)
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
		for i,x in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(x)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
		wait(0.2)
		for i,x in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(x)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
		wait(0.01)
		game.Players.LocalPlayer.Character:MoveTo(v.Character.Position)
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
		wait(0.001)
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local A_1 = "\66\114\111\121\111\117\98\97\100\100"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait(0.01)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-936.546631, 94.1287842, 1990.08435)
end

if string.sub(tk, 1, 4) == (cmdpre.."to ") then
for i,v in pairs(GetPlayer(string.sub(tk, 5))) do
local me = game.Players.LocalPlayer.Character
local oof = game.Workspace[v.Name].HumanoidRootPart
me.HumanoidRootPart.CFrame = CFrame.new(oof.Position.X, oof.Position.Y, oof.Position.Z)
end
end

if string.sub(tk, 1, 5) == (cmdpre.."time") then
if not _G.FullBrightExecuted then

	_G.FullBrightEnabled = false

	_G.NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}

	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
			_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
			_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
			_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
			_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
			_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)

	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until _G.FullBrightEnabled
		while wait() do
			if _G.FullBrightEnabled ~= LatestValue then
				if not _G.FullBrightEnabled then
					game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end

_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled
end

if string.sub(tk, 1, 7) == (cmdpre.."inmate") then
workspace.Remote.TeamEvent:FireServer("Bright orange")
end

if string.sub(tk, 1, 6) == (cmdpre.."guard") then
workspace.Remote.TeamEvent:FireServer("Bright blue")
end

if string.sub(tk, 1, 8) == (cmdpre.."neutral") then
workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end

if string.sub(tk, 1, 5) == (cmdpre.."crim") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Really red"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end

if string.sub(tk, 1, 3) == (cmdpre.."re") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local A_1 = "\66\114\111\121\111\117\98\97\100\100"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end

if string.sub(tk, 1 , 3) == (cmdpre.."rj") then
loadstring(game:HttpGet('https://pastebin.com/raw/1DBEfKRc', true))()
end

if string.sub(tk, 1, 5) == (cmdpre.."auto") then
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("Remington 870")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 5
sM["AutoFire"] = true
wait(0.1)
local pistol = player.Backpack:FindFirstChild("M9")
local sM = require(pistol:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 5
sM["AutoFire"] = true
wait(0.1)
local crimgun = player.Backpack:FindFirstChild("AK-47")
local sM = require(crimgun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 5
sM["AutoFire"] = true
wait(0.1)
local assault = player.Backpack:FindFirstChild("M4A1")
local sM = require(assault:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 5
sM["AutoFire"] = true
end

if string.sub(tk, 1, 7) == (cmdpre.."nex") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916.297546, 99.9900055, 2383.50928)
end

if string.sub(tk, 1, 7) == (cmdpre.."yard") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(785.313904, 97.9999466, 2476.40723)
end

if string.sub(tk, 1, 7) == (cmdpre.."armory") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(782.77533, 99.9900055, 2312.53613)
end

if string.sub(tk, 1, 7) == (cmdpre.."sewer") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916.633301, 78.7002792, 2249.14844)
end

if string.sub(tk, 1, 99) == (cmdpre.."cbase") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-913.828125, 94.1287842, 2065.8103)
end

if string.sub(tk, 1, 99) == (cmdpre.."garage") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(615.645264, 98.2000275, 2514.97485)
end

if string.sub(tk, 1, 7) == (cmdpre.."tower") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(824.250122, 130.039948, 2587.96094)
end

if string.sub(tk, 1, 7) == (cmdpre.."bus") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-376.442291, 54.2000923, 1723.72534)
end

if string.sub(tk, 1, 7) == (cmdpre.."bridge") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-81.0300827, 11.099329, 1311.87549)
end

if string.sub(tk, 1, 7) == (cmdpre.."store") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(434.462921, 11.4253635, 1183.47156)
end

if string.sub(tk, 1, 7) == (cmdpre.."gas") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-512.839172, 54.3937874, 1666.99426)
end

if string.sub(tk, 1, 7) == (cmdpre.."unmap") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-568.503418, 10.8399124, 1414.12463)
end

if string.sub(tk, 1, 7) == (cmdpre.."cafe") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(924.767944, 99.9899597, 2289.30566)
end

if string.sub(tk, 1, 7) == (cmdpre.."cell") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(915.264282, 99.9899902, 2437.57007)
end

if string.sub(tk, 1, 7) == (cmdpre.."roof") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(827.423523, 118.990005, 2329.62598)
end

if string.sub(tk, 1, 7) == (cmdpre.."gate") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(503.799866, 102.03994, 2252.01831)
end

if string.sub(tk, 1, 99) == (cmdpre.."crates") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(251.821915, 72.5167236, 2367.27686)
end

if string.sub(tk, 1, 7) == (cmdpre.."barn") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-936.546631, 94.1287842, 1990.08435)
end

if string.sub(tk, 1, 7) == (cmdpre.."houses") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-298.853241, 54.1751404, 2483.61841)
end

if string.sub(tk, 1, 7) == (cmdpre.."spawn") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(877.596741, 27.7899876, 2350.86572)
end

if string.sub(tk, 1, 7) == (cmdpre.."food") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(892.924988, 99.9899597, 2220.40771)
end

if string.sub(tk, 1, 7) == (cmdpre.."cage") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-292.095062, 74.2397537, 2030.41528)
end

if string.sub(tk, 1, 7) == (cmdpre.."flag") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(724.799255, 129.352875, 2518.14087)
end

if string.sub(tk, 1, 7) == (cmdpre.."back") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(968.299377, 100.390007, 2325.80688)
end

if string.sub(tk, 1, 7) == (cmdpre.."power") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(926.566772, 131.871643, 2124.21411)
end

if string.sub(tk, 1, 7) == (cmdpre.."office") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-318.362366, 118.838844, 2005.66223)
end

if string.sub(tk, 1, 99) == (cmdpre.."secret") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(698.988159, 99.9900055, 2360.90259)
end

if string.sub(tk, 1, 7) == (cmdpre.."safe") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-714.745117, 63.1439095, 2577.37939)
end

if string.sub(tk, 1, 7) == (cmdpre.."empty") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.030426, 64.572464, 1812.73853)
end

if string.sub(tk, 1, 7) == (cmdpre.."gtower") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(504.029572, 125.03994, 2308.05737)
end

if string.sub(tk, 1, 7) == (cmdpre.."trap") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1021.69067, 97.9999466, 2396.72119)
end

if string.sub(tk, 1, 7) == (cmdpre.."bum") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(980.914001, 66.6556778, 1821.96497)
end

if string.sub(tk, 1, 99) == (cmdpre.."visitor") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(697.971741, 99.9900055, 2242.21411)
end

if string.sub(tk, 1, 99) == (cmdpre.."dungeon") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(274.838928, 58.796154, 2378.58203)
end

if string.sub(tk, 1, 7) == (cmdpre.."grass") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(654.269653, 90.4362411, 2474.74878)
end

if string.sub(tk, 1, 7) == (cmdpre.."vent") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(920.434143, 124.389969, 2223.45947)
end

if string.sub(tk, 1, 7) == (cmdpre.."lot") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-481.133789, 53.9686356, 1806.76917)
end

if string.sub(tk, 1, 7) == (cmdpre.."candy") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(955.101563, 109.395134, 2341.72729)
end

if string.sub(tk, 1, 99) == (cmdpre.."meeting") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(789.343811, 103.199722, 2272.01416)
end

if string.sub(tk, 1, 99) == (cmdpre.."unknown") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-429.127075, 71.5994263, 1727.78857)
end

if string.sub(tk, 1, 99) == (cmdpre.."mountain") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1607.54736, 146.505753, 2702.39282)
end

if string.sub(tk, 1, 6) == (cmdpre.."green") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Lime green"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "{Team} You are now on the 'Green' team.",
		Color = Color3.fromRGB(255, 255, 255)
	})
end

if string.sub(tk, 1, 7) == (cmdpre.."yellow") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Olive"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "{Team} You are now on the 'Yellow' team.",
		Color = Color3.fromRGB(255, 255, 255)
	})
end

if string.sub(tk, 1, 6) == (cmdpre.."teal") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Teal"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "{Team} You are now on the 'Teal' team.",
		Color = Color3.fromRGB(255, 255, 255)
	})
end

if string.sub(tk, 1, 6) == (cmdpre.."brown") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Dirt brown"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "{Team} You are now on the 'Brown' team.",
		Color = Color3.fromRGB(255, 255, 255)
	})
end

if string.sub(tk, 1, 6) == (cmdpre.."pink") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Hot pink"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "{Team} You are now on the 'Pink' team.",
		Color = Color3.fromRGB(255, 255, 255)
	})
end

if string.sub(tk, 1, 6) == (cmdpre.."grey") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Fog"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "{Team} You are now on the 'Grey' team.",
		Color = Color3.fromRGB(255, 255, 255)
	})
end

if string.sub(tk, 1, 6) == (cmdpre.."red") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Crimson"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "{Team} You are now on the 'Red' team.",
		Color = Color3.fromRGB(255, 255, 255)
	})
end

if string.sub(tk, 1, 6) == (cmdpre.."blue") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Dark blue"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "{Team} You are now on the 'Blue' team.",
		Color = Color3.fromRGB(255, 255, 255)
	})
end

if string.sub(tk, 1, 6) == (cmdpre.."mint") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Mint"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "{Team} You are now on the 'Mint' team.",
		Color = Color3.fromRGB(255, 255, 255)
	})
end

if string.sub(tk, 1, 6) == (cmdpre.."cyan") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Cyan"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "{Team} You are now on the 'Cyan' team.",
		Color = Color3.fromRGB(255, 255, 255)
	})
end

if string.sub(tk, 1, 6) == (cmdpre.."fastpunch") then
	if not _G.toggle then
		_G.toggle = true
		print ("Fast Punch ON")
		while _G.toggle == true do
			wait()
			local screept = game:GetService("Players").LocalPlayer.Character.ClientInputHandler
			getsenv(screept).cs.isFighting = false 
		end
	elseif _G.toggle == true then
		_G.toggle = not _G.toggle
		print ("Fast Punch OFF")
	end
end

if string.sub(tk, 1, 99) == (cmdpre.."aa on") then
game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
		   game.Players.LocalPlayer.CharacterAdded:connect(function()
		   game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
		   game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
		   end)
end

if string.sub(tk, 1, 99) == (cmdpre.."aa off") then
game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = false
		   game.Players.LocalPlayer.CharacterAdded:connect(function()
		   game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
		   game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = false
		   end)
end

if string.sub(tk, 1, 99) == (cmdpre.."laa on") then
_G.toggle = true

while _G.toggle == true do
wait()
game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
		   game.Players.LocalPlayer.CharacterAdded:connect(function()
		   game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
		   game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
		   end)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."laa off") then
_G.toggle = false

while _G.toggle == true do
wait()
game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
		   game.Players.LocalPlayer.CharacterAdded:connect(function()
		   game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
		   game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
		   end)
end
wait(0.1)
game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = false
		   game.Players.LocalPlayer.CharacterAdded:connect(function()
		   game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
		   game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = false
		   end)
end

if string.sub(tk, 1, 9) == (cmdpre.."ca") then
  local mouse = game.Players.LocalPlayer:GetMouse()
  local arrestEvent = game.Workspace.Remote.arrest
  mouse.Button1Down:connect(function()
  local obj = mouse.Target
  local response = arrestEvent:InvokeServer(obj)
end)
end

if string.sub(tk, 1, 9) == (cmdpre.."m9") then
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
end

if string.sub(tk, 1, 9) == (cmdpre.."m4") then
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
end

if string.sub(tk, 1, 9) == (cmdpre.."ak") then
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
end

if string.sub(tk, 1, 9) == (cmdpre.."shotty") then
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
end

if string.sub(tk, 1, 9) == (cmdpre.."ff on") then
_G.toggle = true

while _G.toggle == true do
wait(0.1)
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Really red"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
wait(9.3)
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local A_1 = "\66\114\111\121\111\117\98\97\100\100"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end

if string.sub(tk, 1, 9) == (cmdpre.."ff off") then
_G.toggle = false

while _G.toggle == true do
wait(0.1)
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Really red"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
wait(9.3)
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local A_1 = "\66\114\111\121\111\117\98\97\100\100"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end

if string.sub(tk, 1, 9) == (cmdpre.."rgb on") then
_G.toggle = true

while _G.toggle == true do
wait()
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Crimson"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved

wait (0.6)

saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Dark blue"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved

wait (0.6)

saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Lime green"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved

wait (0.6)
end
end

if string.sub(tk, 1, 9) == (cmdpre.."rgb off") then
_G.toggle = false

while _G.toggle == true do
wait()
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Crimson"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved

wait (0.6)

saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Dark blue"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved

wait (0.6)

saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Lime green"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved

wait (0.6)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."fences on") then
game.Workspace.Prison_Fences.Parent = game.Lighting
game.Workspace.Prison_Fences.Parent = game.Lighting
end

if string.sub(tk, 1, 99) == (cmdpre.."fences off") then
game.Lighting.Prison_Fences.Parent = game.workspace
game.Lighting.Prison_Fences.Parent = workspace.Prison_Fences
end

if string.sub(tk, 1, 99) == (cmdpre.."trees on") then
for i = 1,99 do
    game.workspace.Trees.Parent = game.Lighting
    game.workspace.Prison_Trees.Parent = game.Lighting
end
end

if string.sub(tk, 1, 99) == (cmdpre.."trees off") then
for i = 1,99 do
    game.Lighting.Trees.Parent = workspace
    game.Lighting.Prison_Trees.Parent = workspace
end
end

if string.sub(tk, 1, 99) == (cmdpre.."city on") then
game.Workspace.City_buildings.Parent = game.Lighting
end

if string.sub(tk, 1, 99) == (cmdpre.."city off") then
game.Lighting.City_buildings.Parent = game.workspace
game.Lighting.City_buildings.Parent = workspace.City_buildings
end

if string.sub(tk, 1, 99) == (cmdpre.."outer on") then
game.workspace.Prison_OuterWall.prison_wall.Parent = game.Lighting
end

if string.sub(tk, 1, 99) == (cmdpre.."outer off") then
game.Lighting.prison_wall.Parent = game.workspace.Prison_OuterWall
end

if string.sub(tk, 1, 8) == (cmdpre.."tk") then
game.Players.LocalPlayer.Character.Torso.Touched:Connect(function(k)
    if game.Players[k.Parent.Name] ~= nil then
        repeat
                local args = {
                [1] = game:GetService("Players")[k.Parent.Name]
                }
                game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
                game:GetService("RunService").RenderStepped:Wait()
        until k.Parent.Humanoid.Health == 0
    end
end)
end

if string.sub(tk, 1, 8) == (cmdpre.."ltk") then
loadstring(game:HttpGet('https://pastebin.com/raw/x4qbirTD', true))()
end

if string.sub(tk, 1, 5) == (cmdpre.."hop") then
local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/".. game.PlaceId.. "/servers/Public?sortOrder=Asc&limit=100"))
for i,v in pairs(Servers.data) do
  if v.playing ~= v.maxPlayers then
      game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
  end
end
end

if string.sub(tk, 1, 9) == (cmdpre.."guns") then
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
end

if string.sub(tk, 1, 7) == (cmdpre.."lags") then
_G.toggle = true

while _G.toggle == true do
wait(0.0000000000000000000000001)
workspace.Remote.TeamEvent:FireServer("Bright blue")

for i = 10000000000000000000000000000000,99999999999999999999999999999999999999999999999999,1 do
    for i,v in pairs(Workspace.Prison_ITEMS.clothes:GetChildren()) do
 
laggy = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
wait(0.001)
laggy = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
wait(0.001)
laggy = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
wait(0.001)
laggy = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
wait(0.001)
laggy = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
wait(0.001)
laggy = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
end
end
end
end

if string.sub(tk, 1, 7) == (cmdpre.."unlags") then
workspace.Remote.TeamEvent:FireServer("Bright orange")
wait(0.001)
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local A_1 = "\66\114\111\121\111\117\98\97\100\100"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end

if string.sub(tk, 1, 7) == (cmdpre.."rage on") then
_G.toggle = true

while _G.toggle == true do
wait()
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("mic up", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("stop hacking noob", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("OMG REPORT!", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("robux please", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("please no bully meh", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ur garbage", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("meh tell my mom", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("sponsored by raid shadow legends", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("eat my fart", "All")
end
end

if string.sub(tk, 1, 7) == (cmdpre.."rage off") then
_G.toggle = false

while _G.toggle == true do
wait()
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("mic up", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("stop hacking noob", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("OMG REPORT!", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("robux please", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("please no bully meh", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ur garbage", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("meh tell my mom", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("sponsored by raid shadow legends", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("eat my fart", "All")
end
end

if string.sub(tk, 1, 6) == (cmdpre.."held") then
workspace.Remote.TeamEvent:FireServer("Bright blue")
wait(0.0000001)
local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].giver["Riot Shield"].ITEMPICKUP;
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
wait(0.0000001)
workspace.Remote.TeamEvent:FireServer("Bright orange")
end

if string.sub(tk, 1, 6) == (cmdpre.."sk") then
workspace.Remote.TeamEvent:FireServer("Bright blue")
wait(0.00000001)
local tbl_main = 
{
      game:GetService("Workspace")["Prison_ITEMS"].giver.M4A1.ITEMPICKUP
}
game:GetService("Workspace").Remote.ItemHandler:InvokeServer(unpack(tbl_main))
wait(0.00000001)
local tbl_main = 
{
      game:GetService("Workspace")["Prison_ITEMS"].giver["Riot Shield"].ITEMPICKUP
}
game:GetService("Workspace").Remote.ItemHandler:InvokeServer(unpack(tbl_main))
wait(0.00000001)
local tbl_main = 
{
      game:GetService("Workspace")["Prison_ITEMS"].clothes["Riot Police"].ITEMPICKUP
}
game:GetService("Workspace").Remote.ItemHandler:InvokeServer(unpack(tbl_main))
wait(0.00000001)
local tbl_main = 
{
      game:GetService("Workspace")["Prison_ITEMS"].hats["Riot helmet"].hat
}
game:GetService("Workspace").Remote.ItemHandler:InvokeServer(unpack(tbl_main))
wait(0.00000001)
local tbl_main = 
{
      game:GetService("Workspace")["Prison_ITEMS"].hats["Ski mask"].hat
}
game:GetService("Workspace").Remote.ItemHandler:InvokeServer(unpack(tbl_main))
wait(0.00000001)
workspace.Remote.TeamEvent:FireServer("Bright orange")
end

if string.sub(tk, 1, 6) == (cmdpre.."openg") then
local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Prison Gate"]["Prison Gate"];
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
end

if string.sub(tk, 1, 99) == (cmdpre.."sg on") then
_G.toggle = true

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Prison Gate"]["Prison Gate"];
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
end
end

if string.sub(tk, 1, 99) == (cmdpre.."sg off") then
_G.toggle = false

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Prison Gate"]["Prison Gate"];
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
end
end

if string.sub(tk, 1, 6) == (cmdpre.."opend") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
workspace.Remote.TeamEvent:FireServer("Bright blue")
wait(0.01)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(831.178284, 99.9899826, 2347.09351)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(780.298584, 100.389999, 2357.24292)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.094971, 100.390053, 2396.09741)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.252625, 98.1899414, 2572.08105)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(945.572754, 99.9899597, 2245.19507)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(948.889709, 99.9899673, 2208.09302)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(985.064026, 99.9900055, 2245.09204)
wait(0.01)
workspace.Remote.TeamEvent:FireServer("Bright orange")
wait(0.01)
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end

if string.sub(tk, 1, 99) == (cmdpre.."sd on") then
_G.toggle = true

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
workspace.Remote.TeamEvent:FireServer("Bright blue")
wait(0.01)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(831.178284, 99.9899826, 2347.09351)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(780.298584, 100.389999, 2357.24292)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.094971, 100.390053, 2396.09741)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.252625, 98.1899414, 2572.08105)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(945.572754, 99.9899597, 2245.19507)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(948.889709, 99.9899673, 2208.09302)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(985.064026, 99.9900055, 2245.09204)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(831.178284, 99.9899826, 2347.09351)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(780.298584, 100.389999, 2357.24292)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.094971, 100.390053, 2396.09741)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.252625, 98.1899414, 2572.08105)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(945.572754, 99.9899597, 2245.19507)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(948.889709, 99.9899673, 2208.09302)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(985.064026, 99.9900055, 2245.09204)
wait(0.01)
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
wait(0.001)
workspace.Remote.TeamEvent:FireServer("Bright orange")
end
end

if string.sub(tk, 1, 99) == (cmdpre.."sd off") then
_G.toggle = false

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
workspace.Remote.TeamEvent:FireServer("Bright blue")
wait(0.01)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(831.178284, 99.9899826, 2347.09351)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(780.298584, 100.389999, 2357.24292)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.094971, 100.390053, 2396.09741)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.252625, 98.1899414, 2572.08105)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(945.572754, 99.9899597, 2245.19507)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(948.889709, 99.9899673, 2208.09302)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(985.064026, 99.9900055, 2245.09204)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(831.178284, 99.9899826, 2347.09351)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(780.298584, 100.389999, 2357.24292)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.094971, 100.390053, 2396.09741)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.252625, 98.1899414, 2572.08105)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(945.572754, 99.9899597, 2245.19507)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(948.889709, 99.9899673, 2208.09302)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(985.064026, 99.9900055, 2245.09204)
wait(0.01)
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
wait(0.001)
workspace.Remote.TeamEvent:FireServer("Bright orange")
end
end

if string.sub(tk, 1, 99) == (cmdpre.."sgd on") then
_G.toggle = true

while _G.toggle == true do
wait()
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
workspace.Remote.TeamEvent:FireServer("Bright blue")
wait(0.01)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(826.646179, 99.9900055, 2343.48462)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-685.973206, 10.8399124, 892.117615)
wait(0.01)
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end

if string.sub(tk, 1, 99) == (cmdpre.."sgd off") then
_G.toggle = false

while _G.toggle == true do
wait()
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
workspace.Remote.TeamEvent:FireServer("Bright blue")
wait(0.01)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(826.646179, 99.9900055, 2343.48462)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-685.973206, 10.8399124, 892.117615)
wait(0.01)
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end

if string.sub(tk, 1, 99) == (cmdpre.."rage on") then
_G.toggle = true

while _G.toggle == true do
wait()
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("mic up", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("stop hacking noob", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("OMG REPORT!", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("robux please", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("please no bully meh", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ur garbage", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("meh tell my mom", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("sponsored by raid shadow legends", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("eat my fart", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("coward", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("cuntass", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("joe mama nub", "All")
end
end

if string.sub(tk, 1, 99) == (cmdpre.."rage off") then
_G.toggle = false

while _G.toggle == true do
wait()
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("mic up", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("stop hacking noob", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("OMG REPORT!", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("robux please", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("please no bully meh", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ur garbage", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("meh tell my mom", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("sponsored by raid shadow legends", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("eat my fart", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("coward", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("cuntass", "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("joe mama nub", "All")
end
end

if string.sub(tk, 1, 99) == (cmdpre.."god on") then
_G.toggle = true

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = true
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
wait(5)
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = true
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end

if string.sub(tk, 1, 99) == (cmdpre.."god off") then
_G.toggle = false

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = true
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
wait(5)
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = true
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end

if string.sub(tk, 1, 99) == (cmdpre.."asa on") then
_G.toggle = true

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916.297546, 99.9900055, 2383.50928)
wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
workspace.Remote.TeamEvent:FireServer("Bright blue")
wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916.297546, 99.9900055, 2383.50928)
wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
workspace.Remote.TeamEvent:FireServer("Bright blue")
end
end

if string.sub(tk, 1, 99) == (cmdpre.."asa off") then
_G.toggle = false

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916.297546, 99.9900055, 2383.50928)
wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
workspace.Remote.TeamEvent:FireServer("Bright blue")
wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916.297546, 99.9900055, 2383.50928)
wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
workspace.Remote.TeamEvent:FireServer("Bright blue")
end
end

if string.sub(tk, 1, 99) == (cmdpre.."nolag on") then
for i = 1,99 do
    game.workspace.Prison_ITEMS.clothes.Parent = game.Lighting
end
end

if string.sub(tk, 1, 99) == (cmdpre.."nolag off") then
for i = 1,99 do
    game.Lighting.clothes.Parent = workspace.Prison_ITEMS
end
end

if string.sub(tk, 1, 9) == (cmdpre.."inf") then
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("Remington 870")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = 0.9
sM["AmmoPerClip"] = math.huge
sM["Range"] = 50
sM["ReloadTime"] = 3
sM["Bullets"] = 5
sM["AutoFire"] = false
wait(0.0001)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("M4A1")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = 25
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = 0.05
sM["AmmoPerClip"] = math.huge
sM["Range"] = 50
sM["ReloadTime"] = 1.2
sM["Bullets"] = 1
sM["AutoFire"] = true
wait(0.0001)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("AK-47")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = 35
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = 0.1
sM["AmmoPerClip"] = math.huge
sM["Range"] = 50
sM["ReloadTime"] = 2.4
sM["Bullets"] = 1
sM["AutoFire"] = true
wait(0.0001)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("M9")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = 20
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = 0.05
sM["AmmoPerClip"] = math.huge
sM["Range"] = 50
sM["ReloadTime"] = 2
sM["Bullets"] = 1
sM["AutoFire"] = false
wait(0.1)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("Taser")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 1
sM["AutoFire"] = true
end

if string.sub(tk,1, 99) == (cmdpre.."stam on") then
_G.toggle = true

while _G.toggle == true do
wait()
local plr = game:GetService("Players").LocalPlayer
for i,v in next, getgc() do 
    if type(v) == "function" and getfenv(v).script and getfenv(v).script == plr.Character.ClientInputHandler then 
        for i2,v2 in next, debug.getupvalues(v) do 
            if type(v2) == "number" then 
                debug.setupvalue(v, i2, 999999)
            end
        end
    end
end
end
end

if string.sub(tk,1, 99) == (cmdpre.."stam off") then
_G.toggle = false

while _G.toggle == true do
wait()
local plr = game:GetService("Players").LocalPlayer
for i,v in next, getgc() do 
    if type(v) == "function" and getfenv(v).script and getfenv(v).script == plr.Character.ClientInputHandler then 
        for i2,v2 in next, debug.getupvalues(v) do 
            if type(v2) == "number" then 
                debug.setupvalue(v, i2, 999999)
            end
        end
    end
end
end
wait(0.1)
local plr = game:GetService("Players").LocalPlayer
for i,v in next, getgc() do 
    if type(v) == "function" and getfenv(v).script and getfenv(v).script == plr.Character.ClientInputHandler then 
        for i2,v2 in next, debug.getupvalues(v) do 
            if type(v2) == "number" then 
                debug.setupvalue(v, i2, 12)
            end
        end
    end
end

end

if string.sub(tk, 1, 99) == (cmdpre.."fp on") then
_G.toggle = true

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

local screept = game:GetService("Players").LocalPlayer.Character.ClientInputHandler
getsenv(screept).cs.isFighting = false
end
end

if string.sub(tk, 1, 99) == (cmdpre.."fp off") then
_G.toggle = false

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

local screept = game:GetService("Players").LocalPlayer.Character.ClientInputHandler
getsenv(screept).cs.isFighting = false
end
end

if string.sub(tk, 1, 6) == (cmdpre.."smoke") then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
		game.Players.LocalPlayer.Backpack["Remington 870"].Parent = game.Players.LocalPlayer.Character
		wait()
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripUp = Vector3.new(-1,-500,-500)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripPos = Vector3.new(0.9,0.9,-2.3)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripRight = Vector3.new(0,0,0)
		wait()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		wait()
		game.Players.LocalPlayer.Backpack["Remington 870"].Parent = game.Players.LocalPlayer.Character
end

if string.sub(tk, 1, 6) == (cmdpre.."troll") then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
		game.Players.LocalPlayer.Backpack["Remington 870"].Parent = game.Players.LocalPlayer.Character
		wait()
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripForward = Vector3.new(10,1,500)
		wait()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		wait()
		game.Players.LocalPlayer.Backpack["Remington 870"].Parent = game.Players.LocalPlayer.Character
end

if string.sub(tk, 1, 6) == (cmdpre.."side") then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
		game.Players.LocalPlayer.Backpack["Remington 870"].Parent = game.Players.LocalPlayer.Character
		wait()
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripForward = Vector3.new(10,1,500)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripRight = Vector3.new(1,500,1)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripUp = Vector3.new(-500,1,1)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripPos = Vector3.new(0,-0.1,0)
		wait()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		wait()
		game.Players.LocalPlayer.Backpack["Remington 870"].Parent = game.Players.LocalPlayer.Character
end

if string.sub(tk, 1, 6) == (cmdpre.."mgun") then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
		game.Players.LocalPlayer.Backpack["Remington 870"].Parent = game.Players.LocalPlayer.Character
		wait()
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripPos = Vector3.new(0.1,-0.1,0.3)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripUp = Vector3.new(0,-500,0)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripRight = Vector3.new(-500,0,0)
		wait()
			wait()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("Remington 870")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 8
sM["AutoFire"] = true
wait()
game.Players.LocalPlayer.Backpack["Remington 870"].Parent = game.Players.LocalPlayer.Character
end

if string.sub(tk, 1, 99) == (cmdpre.."ae on") then
_G.toggle = true

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

	local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
		if v.Name ~= Player.Name then
			if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
			else
				local i = 3
				repeat
					wait()
					i = i-1
					game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
					Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
				until i == 0
			end
		end
	end
	Player.Character.HumanoidRootPart.CFrame = cpos
	wait(0.5)
		local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
		if v.Name ~= Player.Name then
			if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
			else
				local i = 3
				repeat
					wait()
					i = i-1
					game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
					Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
				until i == 0
			end
		end
	end
	Player.Character.HumanoidRootPart.CFrame = cpos
end
end

if string.sub(tk, 1, 99) == (cmdpre.."ae off") then
_G.toggle = false

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

	local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
		if v.Name ~= Player.Name then
			if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
			else
				local i = 3
				repeat
					wait()
					i = i-1
					game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
					Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
				until i == 0
			end
		end
	end
	Player.Character.HumanoidRootPart.CFrame = cpos
	wait(0.5)
		local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
		if v.Name ~= Player.Name then
			if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
			else
				local i = 3
				repeat
					wait()
					i = i-1
					game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
					Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
				until i == 0
			end
		end
	end
	Player.Character.HumanoidRootPart.CFrame = cpos
end
end

if string.sub(tk, 1, 99) == (cmdpre.."gate on") then
for i = 1,99 do
    game.workspace.Prison_Fences.Prison_Gate.Parent = game.Lighting
end
end

if string.sub(tk, 1, 99) == (cmdpre.."gate off") then
for i = 1,99 do
    game.Lighting.Prison_Gate.Parent = workspace.Prison_Fences
end
end

if string.sub(tk, 1, 99) == (cmdpre.."roads on") then
for i = 1,99 do
    game.workspace.Prison_road.Parent = game.Lighting
    game.workspace.mainRoads.Parent = game.Lighting
    game.workspace.Town_Sideroad.Parent = game.Lighting
end
end

if string.sub(tk, 1, 99) == (cmdpre.."roads off") then
for i = 1,99 do
    game.Lighting.Prison_road.Parent = workspace
    game.Lighting.mainRoads.Parent = workspace
    game.Lighting.Town_Sideroad.Parent = workspace
end
end

if string.sub(tk, 1, 9) == (cmdpre.."laser") then
workspace.Remote.TeamEvent:FireServer("Bright blue")
wait(0.1)
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local A_1 = "\66\114\111\121\111\117\98\97\100\100"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
wait(0.1)
workspace.Remote.TeamEvent:FireServer("Bright orange")
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("Taser")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = 0.001
sM["AmmoPerClip"] = math.huge
sM["Range"] = 50
sM["ReloadTime"] = 0.000001
sM["Bullets"] = 1
sM["AutoFire"] = true
end

if string.sub(tk, 1, 99) == (cmdpre.."tables on") then
game.workspace.Prison_Cafeteria.Prison_table1.Parent = game.Lighting
end

if string.sub(tk, 1, 99) == (cmdpre.."tables off") then
game.Lighting.Prison_table1.Parent = workspace.Prison_Cafeteria
end

if string.sub(tk, 1, 99) == (cmdpre.."desks on") then
game.Workspace.Desks.Parent = game.Lighting
end

if string.sub(tk, 1, 99) == (cmdpre.."desks off") then
game.Lighting.Desks.Parent = game.workspace
game.Lighting.Desks.Parent = workspace.Desks
end

if string.sub(tk, 1, 99) == (cmdpre.."plant on") then
game.Workspace.Plant.Parent = game.Lighting
end

if string.sub(tk, 1, 99) == (cmdpre.."plant off") then
game.Lighting.Plant.Parent = game.workspace
game.Lighting.Plant.Parent = workspace.Plant
end

if string.sub(tk, 1, 99) == (cmdpre.."flag on") then
game.Workspace.Prison_Flag.Parent = game.Lighting
end

if string.sub(tk, 1, 99) == (cmdpre.."flag off") then
game.Lighting.Prison_Flag.Parent = game.workspace
game.Lighting.Prison_Flag.Parent = workspace.Prison_Flag
end

if string.sub(tk, 1, 99) == (cmdpre.."garage on") then
game.Workspace.Garages.Parent = game.Lighting
end

if string.sub(tk, 1, 99) == (cmdpre.."garage off") then
game.Lighting.Garages.Parent = game.workspace
game.Lighting.Garages.Parent = workspace.Garages
end

if string.sub(tk, 1, 99) == (cmdpre.."crates on") then
game.Workspace.Shippingcontainers.Parent = game.Lighting
end

if string.sub(tk, 1, 99) == (cmdpre.."crates off") then
game.Lighting.Shippingcontainers.Parent = game.workspace
game.Lighting.Shippingcontainers.Parent = workspace.Shippingcontainers
end

if string.sub(tk, 1, 99) == (cmdpre.."track on") then
for i = 1,99 do
    game.workspace.Model.paths.track.Parent = game.Lighting
end
end

if string.sub(tk, 1, 99) == (cmdpre.."track off") then
for i = 1,99 do
    game.Lighting.track.Parent = workspace.Model.paths
end
end

if string.sub(tk, 1, 99) == (cmdpre.."towers on") then
for i = 1,99 do
    game.workspace.Prison_OuterWall.Prison_guardtower.Parent = game.Lighting
end
end

if string.sub(tk, 1, 99) == (cmdpre.."towers off") then
for i = 1,99 do
    game.Lighting.Prison_guardtower.Parent = workspace.Prison_OuterWall
end
end

if string.sub(tk, 1, 99) == (cmdpre.."secret on") then
for i = 1,99 do
    game.workspace.Prison_Administration.furniture_office2.desk.Parent = game.Lighting
    game.workspace.Prison_Administration.furniture_office2.Couch.Parent = game.Lighting
    game.workspace.Prison_Administration.furniture_office2.woodchair.Parent = game.Lighting
    game.workspace.Prison_Administration.furniture_office2.woodchair.Parent = game.Lighting
    game.workspace.Prison_Administration.furniture_office2.painting.Parent = game.Lighting
    game.workspace.Prison_Administration.furniture_office2.painting.Parent = game.Lighting
    game.workspace.Prison_Administration.furniture_office2.painting.Parent = game.Lighting
    game.workspace.Prison_Administration.furniture_office2.officechair.Parent = game.Lighting
    game.workspace.Prison_Administration.furniture_office2.bookshelf.Parent = game.Lighting
    game.workspace.Prison_Administration.furniture_office2.rug.Parent = game.Lighting
    game.workspace.Prison_Administration.blinds.Parent = game.Lighting
end
end

if string.sub(tk, 1, 99) == (cmdpre.."secret off") then
for i = 1,99 do
    game.Lighting.desk.Parent = workspace.Prison_Administration.furniture_office2
    game.Lighting.Couch.Parent = workspace.Prison_Administration.furniture_office2
    game.Lighting.woodchair.Parent = workspace.Prison_Administration.furniture_office2
    game.Lighting.woodchair.Parent = workspace.Prison_Administration.furniture_office2
    game.Lighting.painting.Parent = workspace.Prison_Administration.furniture_office2
    game.Lighting.painting.Parent = workspace.Prison_Administration.furniture_office2
    game.Lighting.painting.Parent = workspace.Prison_Administration.furniture_office2
    game.Lighting.officechair.Parent = workspace.Prison_Administration.furniture_office2
    game.Lighting.bookshelf.Parent = workspace.Prison_Administration.furniture_office2
    game.Lighting.rug.Parent = workspace.Prison_Administration.furniture_office2
    game.Lighting.blinds.Parent = workspace.Prison_Administration
end
end

if string.sub(tk, 1, 99) == (cmdpre.."cbase on") then
game.Workspace.Warehouses.Parent = game.Lighting
game.Workspace.Warehouse2.Parent = game.Lighting
game.Workspace.Warehouse2.Parent = game.Lighting
end

if string.sub(tk, 1, 99) == (cmdpre.."cbase off") then
game.Lighting.Warehouses.Parent = game.workspace
game.Lighting.Warehouse2.Parent = game.workspace
game.Lighting.Warehouse2.Parent = game.workspace
end

if string.sub(tk, 1, 99) == (cmdpre.."script") then
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Purchase Fate Hub PL Admin script! Only costs 1000 robux, $5 pp, or $10 roblox card! Made by metro1234 aka FATE 1646 on Discourd", "All")
end

if string.sub(tk, 1, 99) == (cmdpre.."clothes") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Really red"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
wait(0.001)
workspace.Remote.TeamEvent:FireServer("Bright orange")
end

if string.sub(tk, 1, 99) == (cmdpre.."autoguns") then
game.Players.LocalPlayer.CharacterAdded:connect(function(character)
        wait(0.1)
        local changethistoanythinglol, doesPlayerOwnAsset = pcall(PlayerOwnsAsset, MarketplaceService, player, 96651)
        if doesPlayerOwnAsset then
            workspace.Remote.ItemHandler:InvokeServer(game:GetService("Workspace")["Prison_ITEMS"].giver.M4A1.ITEMPICKUP)
            workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
            workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
            workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
        end
    end)
    game.Players.LocalPlayer.CharacterAdded:connect(function(character)
        wait(0.1)
        local changethistoanythinglol, doesPlayerOwnAsset = pcall(PlayerOwnsAsset, MarketplaceService, player, 96651)
        if doesPlayerOwnAsset then
            workspace.Remote.ItemHandler:InvokeServer(game:GetService("Workspace")["Prison_ITEMS"].giver.M4A1.ITEMPICKUP)
        end
    end)
end

if string.sub(tk, 1, 99) == (cmdpre.."nobring on") then
_G.toggle = true

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(959.4, 98.2933, 2266.1)
wait(0.001)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(955.4, 98.2933, 2266.1)
wait(0.001)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(951.4, 98.2933, 2266.1)
wait(0.001)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(947.4, 98.2933, 2266.1)
wait(0.001)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."nobring off") then
_G.toggle = false

while _G.toggle == true do
wait()
local blah = (game.Players.LocalPlayer.Name)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(959.4, 98.2933, 2266.1)
wait(0.001)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(955.4, 98.2933, 2266.1)
wait(0.001)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(951.4, 98.2933, 2266.1)
wait(0.001)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(947.4, 98.2933, 2266.1)
wait(0.001)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."ocd") then
local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Garage Buttons"].open;
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
end

if string.sub(tk, 1, 99) == (cmdpre.."ccd") then
local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Garage Buttons"].close;
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
end

if string.sub(tk, 1, 99) == (cmdpre.."scd on") then
_G.toggle = true

while _G.toggle == true do
wait()
local lcd = (game.Players.LocalPlayer.Name)

local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Garage Buttons"].open;
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
wait(0.001)
local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Garage Buttons"].close;
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
wait(0.001)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."scd off") then
_G.toggle = false

while _G.toggle == true do
wait()
local lcd = (game.Players.LocalPlayer.Name)

local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Garage Buttons"].open;
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
wait(0.001)
local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Garage Buttons"].close;
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
wait(0.001)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."celld on") then
for i = 1,99 do
    game.workspace.Prison_Cellblock.doors.Parent = game.Lighting
end
end

if string.sub(tk, 1, 99) == (cmdpre.."celld off") then
for i = 1,99 do
    game.Lighting.doors.Parent = workspace.Prison_Cellblock
end
end

if string.sub(tk, 1, 99) == (cmdpre.."crash") then
local PackageSize = 25000 -- How many bullets is sent through in one remote call. Thanks Globals
local SendPackageAmountOfTimes =  5 -- How many times the remote should be called.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ItemHandler = workspace:WaitForChild("Remote").ItemHandler
local ShootEvent = ReplicatedStorage:WaitForChild("ShootEvent")

ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
local Tool = Players.LocalPlayer.Backpack["Remington 870"]

local Packet = {
	RayObject = Ray.new(Vector3.new(-1, -1, -1), Vector3.new(1, 1, 1)),
	Distance = 2048,
	Cframe = CFrame.new(0, 0, 0),
	Hit = workspace:FindFirstChildOfClass("Part")
}

local Package = {}

for i = 1, PackageSize do
	Package[i] = Packet
end

for i = 1, SendPackageAmountOfTimes do
	ShootEvent:FireServer(Package, Tool)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."anticrash on") then
local gunscript = game.Players.LocalPlayer.PlayerScripts.ClientGunReplicator
gunscript.Disabled = true
end

if string.sub(tk, 1, 99) == (cmdpre.."anticrash off") then
local gunscript = game.Players.LocalPlayer.PlayerScripts.ClientGunReplicator
gunscript.Disabled = false
end

if string.sub(tk, 1, 99) == (cmdpre.."fr") then
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("M4A1")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = 25
sM["MaxAmmo"] = 30
sM["CurrentAmmo"] = 30
sM["StoredAmmo"] = 30
sM["FireRate"] = 0.09
sM["AmmoPerClip"] = 6
sM["Range"] = 50
sM["ReloadTime"] = 0.00000000000000000000001
sM["Bullets"] = 1
sM["AutoFire"] = true
wait(0.0001)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("Remington 870")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = 6
sM["CurrentAmmo"] = 6
sM["StoredAmmo"] = 6
sM["FireRate"] = 0.9
sM["AmmoPerClip"] = 6
sM["Range"] = 50
sM["ReloadTime"] = 0.00000000000000000000001
sM["Bullets"] = 5
sM["AutoFire"] = false
wait(0.0001)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("AK-47")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = 35
sM["MaxAmmo"] = 30
sM["CurrentAmmo"] = 30
sM["StoredAmmo"] = 30
sM["FireRate"] = 0.1
sM["AmmoPerClip"] = 30
sM["Range"] = 50
sM["ReloadTime"] = 0.00000000000000000000001
sM["Bullets"] = 1
sM["AutoFire"] = true
wait(0.0001)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("M9")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = 20
sM["MaxAmmo"] = 15
sM["CurrentAmmo"] = 15
sM["StoredAmmo"] = 15
sM["FireRate"] = 0.05
sM["AmmoPerClip"] = 15
sM["Range"] = 50
sM["ReloadTime"] = 0.00000000000000000000001
sM["Bullets"] = 1
sM["AutoFire"] = false
end

if string.sub(tk, 1, 99) == (cmdpre.."lcrash on") then
_G.toggle = true

while _G.toggle == true do
wait()
local PackageSize = 5000 -- How many bullets is sent through in one remote call. Thanks Globals
local SendPackageAmountOfTimes =  5 -- How many times the remote should be called.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ItemHandler = workspace:WaitForChild("Remote").ItemHandler
local ShootEvent = ReplicatedStorage:WaitForChild("ShootEvent")

ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
local Tool = Players.LocalPlayer.Backpack["Remington 870"]

local Packet = {
	RayObject = Ray.new(Vector3.new(-1, -1, -1), Vector3.new(1, 1, 1)),
	Distance = 2048,
	Cframe = CFrame.new(0, 0, 0),
	Hit = workspace:FindFirstChildOfClass("Part")
}

local Package = {}

for i = 1, PackageSize do
	Package[i] = Packet
end

for i = 1, SendPackageAmountOfTimes do
	ShootEvent:FireServer(Package, Tool)
end
end
end


if string.sub(tk, 1, 99) == (cmdpre.."lcrash off") then
_G.toggle = false

while _G.toggle == true do
wait()
local PackageSize = 5000 -- How many bullets is sent through in one remote call. Thanks Globals
local SendPackageAmountOfTimes =  5 -- How many times the remote should be called.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ItemHandler = workspace:WaitForChild("Remote").ItemHandler
local ShootEvent = ReplicatedStorage:WaitForChild("ShootEvent")

ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
local Tool = Players.LocalPlayer.Backpack["Remington 870"]

local Packet = {
	RayObject = Ray.new(Vector3.new(-1, -1, -1), Vector3.new(1, 1, 1)),
	Distance = 2048,
	Cframe = CFrame.new(0, 0, 0),
	Hit = workspace:FindFirstChildOfClass("Part")
}

local Package = {}

for i = 1, PackageSize do
	Package[i] = Packet
end

for i = 1, SendPackageAmountOfTimes do
	ShootEvent:FireServer(Package, Tool)
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."op 300") then
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
wait(0.1)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("Remington 870")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 300
sM["AutoFire"] = true
wait(0.1)
local pistol = player.Backpack:FindFirstChild("M9")
local sM = require(pistol:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 300
sM["AutoFire"] = true
wait(0.1)
local crimgun = player.Backpack:FindFirstChild("AK-47")
local sM = require(crimgun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 300
sM["AutoFire"] = true
wait(0.1)
local assault = player.Backpack:FindFirstChild("M4A1")
local sM = require(assault:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 300
sM["AutoFire"] = true
end

if string.sub(tk, 1, 99) == (cmdpre.."op 200") then
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
wait(0.1)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("Remington 870")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 200
sM["AutoFire"] = true
wait(0.1)
local pistol = player.Backpack:FindFirstChild("M9")
local sM = require(pistol:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 200
sM["AutoFire"] = true
wait(0.1)
local crimgun = player.Backpack:FindFirstChild("AK-47")
local sM = require(crimgun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 200
sM["AutoFire"] = true
wait(0.1)
local assault = player.Backpack:FindFirstChild("M4A1")
local sM = require(assault:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 200
sM["AutoFire"] = true
end

if string.sub(tk, 1, 99) == (cmdpre.."op 100") then
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
wait(0.1)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("Remington 870")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 100
sM["AutoFire"] = true
wait(0.1)
local pistol = player.Backpack:FindFirstChild("M9")
local sM = require(pistol:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 100
sM["AutoFire"] = true
wait(0.1)
local crimgun = player.Backpack:FindFirstChild("AK-47")
local sM = require(crimgun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 100
sM["AutoFire"] = true
wait(0.1)
local assault = player.Backpack:FindFirstChild("M4A1")
local sM = require(assault:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 100
sM["AutoFire"] = true
end

if string.sub(tk, 1, 99) == (cmdpre.."op 75") then
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
wait(0.1)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("Remington 870")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 75
sM["AutoFire"] = true
wait(0.1)
local pistol = player.Backpack:FindFirstChild("M9")
local sM = require(pistol:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 75
sM["AutoFire"] = true
wait(0.1)
local crimgun = player.Backpack:FindFirstChild("AK-47")
local sM = require(crimgun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 75
sM["AutoFire"] = true
wait(0.1)
local assault = player.Backpack:FindFirstChild("M4A1")
local sM = require(assault:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 75
sM["AutoFire"] = true
end

if string.sub(tk, 1, 99) == (cmdpre.."op 50") then
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
wait(0.1)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("Remington 870")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 50
sM["AutoFire"] = true
wait(0.1)
local pistol = player.Backpack:FindFirstChild("M9")
local sM = require(pistol:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 50
sM["AutoFire"] = true
wait(0.1)
local crimgun = player.Backpack:FindFirstChild("AK-47")
local sM = require(crimgun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 50
sM["AutoFire"] = true
wait(0.1)
local assault = player.Backpack:FindFirstChild("M4A1")
local sM = require(assault:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 50
sM["AutoFire"] = true
end

if string.sub(tk, 1, 99) == (cmdpre.."op 30") then
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
wait(0.1)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("Remington 870")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 30
sM["AutoFire"] = true
wait(0.1)
local pistol = player.Backpack:FindFirstChild("M9")
local sM = require(pistol:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 30
sM["AutoFire"] = true
wait(0.1)
local crimgun = player.Backpack:FindFirstChild("AK-47")
local sM = require(crimgun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 30
sM["AutoFire"] = true
wait(0.1)
local assault = player.Backpack:FindFirstChild("M4A1")
local sM = require(assault:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 30
sM["AutoFire"] = true
end

if string.sub(tk, 1, 99) == (cmdpre.."op rem") then
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
wait(0.1)
local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack:FindFirstChild("Remington 870")
local sM = require(gun:FindFirstChild("GunStates"))
sM["Damage"] = math.huge
sM["MaxAmmo"] = math.huge
sM["CurrentAmmo"] = math.huge
sM["StoredAmmo"] = math.huge
sM["FireRate"] = -math.huge
sM["AmmoPerClip"] = math.huge
sM["Range"] = math.huge
sM["ReloadTime"] = -math.huge
sM["Bullets"] = 50
sM["AutoFire"] = true
end

if string.sub(tk, 1, 99) == (cmdpre.."lg on") then
_G.toggle = true

while _G.toggle == true do
wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
workspace.Remote.TeamEvent:FireServer("Bright blue")
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lg off") then
_G.toggle = false

while _G.toggle == true do
wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
workspace.Remote.TeamEvent:FireServer("Bright blue")
end
end

if string.sub(tk, 1, 99) == (cmdpre.."li on") then
_G.toggle = true

while _G.toggle == true do
wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
workspace.Remote.TeamEvent:FireServer("Bright orange")
end
end

if string.sub(tk, 1, 99) == (cmdpre.."li off") then
_G.toggle = false

while _G.toggle == true do
wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
workspace.Remote.TeamEvent:FireServer("Bright orange")
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lai on") then
_G.toggle = true

while _G.toggle == true do
wait()
	local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
		if v.Name ~= Player.Name then
			if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
				error("Friend not arrested!")
			else
				local i = 3
				repeat
					wait()
					i = i-1
					game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
					Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
				until i == 0
			end
		end
	end
	Player.Character.HumanoidRootPart.CFrame = cpos
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lai off") then
_G.toggle = false

while _G.toggle == true do
wait()
	local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
		if v.Name ~= Player.Name then
			if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
				error("Friend not arrested!")
			else
				local i = 3
				repeat
					wait()
					i = i-1
					game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
					Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
				until i == 0
			end
		end
	end
	Player.Character.HumanoidRootPart.CFrame = cpos
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lac on") then
_G.toggle = true

while _G.toggle == true do
wait()
	local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
		if v.Name ~= Player.Name then
			if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
				error("Friend not arrested!")
			else
				local i = 3
				repeat
					wait()
					i = i-1
					game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
					Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
				until i == 0
			end
		end
	end
	Player.Character.HumanoidRootPart.CFrame = cpos
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lac off") then
_G.toggle = false

while _G.toggle == true do
wait()
	local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
		if v.Name ~= Player.Name then
			if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
				error("Friend not arrested!")
			else
				local i = 3
				repeat
					wait()
					i = i-1
					game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
					Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
				until i == 0
			end
		end
	end
	Player.Character.HumanoidRootPart.CFrame = cpos
end
end

if string.sub(tk, 1, 99) == (cmdpre.."ghb on") then
-- Guards
_G.HeadSize = 7.5
_G.Disabled = true
_G.Reset = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in pairs(game.Teams["Guards"]:GetPlayers()) do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
if _G.Reset then
if v.Character.Humanoid.Health == 0 then 
v.Character.HumanoidRootPart.Size = Vector3.new(1,1,1)
end
end
end
end
end
end)
end

if string.sub(tk, 1, 99) == (cmdpre.."ihb on") then
-- Inmates
_G.HeadSize = 7.5
_G.Disabled = true
_G.Reset = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in pairs(game.Teams["Inmates"]:GetPlayers()) do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Bright orange")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
if _G.Reset then
if v.Character.Humanoid.Health == 0 then 
v.Character.HumanoidRootPart.Size = Vector3.new(1,1,1)
end
end
end
end
end
end)
end

if string.sub(tk, 1, 99) == (cmdpre.."chb on") then
-- Guards
_G.HeadSize = 7.5
_G.Disabled = true
_G.Reset = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in pairs(game.Teams["Criminals"]:GetPlayers()) do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
if _G.Reset then
if v.Character.Humanoid.Health == 0 then 
v.Character.HumanoidRootPart.Size = Vector3.new(1,1,1)
end
end
end
end
end
end)
end

if string.sub(tk, 1, 99) == (cmdpre.."nhb on") then
-- Guards
_G.HeadSize = 7.5
_G.Disabled = true
_G.Reset = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in pairs(game.Teams["Neutral"]:GetPlayers()) do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Fog")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
if _G.Reset then
if v.Character.Humanoid.Health == 0 then 
v.Character.HumanoidRootPart.Size = Vector3.new(1,1,1)
end
end
end
end
end
end)
end

if string.sub(tk, 1, 99) == (cmdpre.."arraura on") then
_G.toggle = true

while _G.toggle == true do
wait()
			for i = 1,999999999999999999999999999999999999999999999999999999999999999999999999 do
	local arrestEvent = game.Workspace.Remote.arrest
	for _, plr in pairs (game:GetService('Players'):GetChildren()) do
	if plr.Name ~= game.Players.LocalPlayer.Name then
    local obj = plr.Character.HumanoidRootPart
    local response =arrestEvent:InvokeServer(obj)
	end
end
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."arraura off") then
_G.toggle = false

while _G.toggle == true do
wait()
			for i = 1,999999999999999999999999999999999999999999999999999999999999999999999999 do
	local arrestEvent = game.Workspace.Remote.arrest
	for _, plr in pairs (game:GetService('Players'):GetChildren()) do
	if plr.Name ~= game.Players.LocalPlayer.Name then
    local obj = plr.Character.HumanoidRootPart
    local response =arrestEvent:InvokeServer(obj)
	end
end
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."killaura on") then
_G.toggle = true

while _G.toggle == true do
wait(1)
  for i, plr in pairs(game.Players:GetChildren()) do
  if plr.Name ~= game.Players.LocalPlayer.Name then
  for i = 1, 10 do
  game.ReplicatedStorage.meleeEvent:FireServer(plr)
  end
  end
  end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."killaura off") then
_G.toggle = false

while _G.toggle == true do
wait(1)
  for i, plr in pairs(game.Players:GetChildren()) do
  if plr.Name ~= game.Players.LocalPlayer.Name then
  for i = 1, 10 do
  game.ReplicatedStorage.meleeEvent:FireServer(plr)
  end
  end
  end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."ls 1") then
local PackageSize = 1500 -- How many bullets is sent through in one remote call. Thanks Globals
local SendPackageAmountOfTimes =  1 -- How many times the remote should be called.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ItemHandler = workspace:WaitForChild("Remote").ItemHandler
local ShootEvent = ReplicatedStorage:WaitForChild("ShootEvent")

ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
local Tool = Players.LocalPlayer.Backpack["Remington 870"]

local Packet = {
	RayObject = Ray.new(Vector3.new(-1, -1, -1), Vector3.new(1, 1, 1)),
	Distance = 2048,
	Cframe = CFrame.new(0, 0, 0),
	Hit = workspace:FindFirstChildOfClass("Part")
}

local Package = {}

for i = 1, PackageSize do
	Package[i] = Packet
end

for i = 1, SendPackageAmountOfTimes do
	ShootEvent:FireServer(Package, Tool)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."ls 2") then
local PackageSize = 2525 -- How many bullets is sent through in one remote call. Thanks Globals
local SendPackageAmountOfTimes =  1 -- How many times the remote should be called.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ItemHandler = workspace:WaitForChild("Remote").ItemHandler
local ShootEvent = ReplicatedStorage:WaitForChild("ShootEvent")

ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
local Tool = Players.LocalPlayer.Backpack["Remington 870"]

local Packet = {
	RayObject = Ray.new(Vector3.new(-1, -1, -1), Vector3.new(1, 1, 1)),
	Distance = 2048,
	Cframe = CFrame.new(0, 0, 0),
	Hit = workspace:FindFirstChildOfClass("Part")
}

local Package = {}

for i = 1, PackageSize do
	Package[i] = Packet
end

for i = 1, SendPackageAmountOfTimes do
	ShootEvent:FireServer(Package, Tool)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."ls 3") then
local PackageSize = 3500 -- How many bullets is sent through in one remote call. Thanks Globals
local SendPackageAmountOfTimes =  1 -- How many times the remote should be called.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ItemHandler = workspace:WaitForChild("Remote").ItemHandler
local ShootEvent = ReplicatedStorage:WaitForChild("ShootEvent")

ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
local Tool = Players.LocalPlayer.Backpack["Remington 870"]

local Packet = {
	RayObject = Ray.new(Vector3.new(-1, -1, -1), Vector3.new(1, 1, 1)),
	Distance = 2048,
	Cframe = CFrame.new(0, 0, 0),
	Hit = workspace:FindFirstChildOfClass("Part")
}

local Package = {}

for i = 1, PackageSize do
	Package[i] = Packet
end

for i = 1, SendPackageAmountOfTimes do
	ShootEvent:FireServer(Package, Tool)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."ls 4") then
local PackageSize = 3750 -- How many bullets is sent through in one remote call. Thanks Globals
local SendPackageAmountOfTimes =  2 -- How many times the remote should be called.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ItemHandler = workspace:WaitForChild("Remote").ItemHandler
local ShootEvent = ReplicatedStorage:WaitForChild("ShootEvent")

ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
local Tool = Players.LocalPlayer.Backpack["Remington 870"]

local Packet = {
	RayObject = Ray.new(Vector3.new(-1, -1, -1), Vector3.new(1, 1, 1)),
	Distance = 2048,
	Cframe = CFrame.new(0, 0, 0),
	Hit = workspace:FindFirstChildOfClass("Part")
}

local Package = {}

for i = 1, PackageSize do
	Package[i] = Packet
end

for i = 1, SendPackageAmountOfTimes do
	ShootEvent:FireServer(Package, Tool)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."ls 5") then
local PackageSize = 4100 -- How many bullets is sent through in one remote call. Thanks Globals
local SendPackageAmountOfTimes =  3 -- How many times the remote should be called.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ItemHandler = workspace:WaitForChild("Remote").ItemHandler
local ShootEvent = ReplicatedStorage:WaitForChild("ShootEvent")

ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
local Tool = Players.LocalPlayer.Backpack["Remington 870"]

local Packet = {
	RayObject = Ray.new(Vector3.new(-1, -1, -1), Vector3.new(1, 1, 1)),
	Distance = 2048,
	Cframe = CFrame.new(0, 0, 0),
	Hit = workspace:FindFirstChildOfClass("Part")
}

local Package = {}

for i = 1, PackageSize do
	Package[i] = Packet
end

for i = 1, SendPackageAmountOfTimes do
	ShootEvent:FireServer(Package, Tool)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lkg on") then
_G.toggle = true

while _G.toggle == true do
wait()
workspace.Remote.TeamEvent:FireServer("Bright orange")

 for i,v in pairs(game.Teams["Guards"]:GetPlayers()) do
	if not v and v.Character then
	repeat
	wait()
	until v.Character
	else
	 if v and v.Character then
	 if v.Name ~= game.Players.LocalPlayer.Name then
	if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
else

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

wait(0.1)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = v.Character.Head
},
  [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = v.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = v.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = v.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
},
[6] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
end
end
end
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lkg off") then
_G.toggle = false

while _G.toggle == true do
wait()
workspace.Remote.TeamEvent:FireServer("Bright orange")

 for i,v in pairs(game.Teams["Guards"]:GetPlayers()) do
	if not v and v.Character then
	repeat
	wait()
	until v.Character
	else
	 if v and v.Character then
	 if v.Name ~= game.Players.LocalPlayer.Name then
	if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
else

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

wait(0.1)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = v.Character.Head
},
  [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = v.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = v.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = v.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
},
[6] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
end
end
end
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lki on") then
_G.toggle = true

while _G.toggle == true do
wait()
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Magenta"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved

 for i,v in pairs(game.Teams["Inmates"]:GetPlayers()) do
	if not v and v.Character then
	repeat
	wait()
	until v.Character
	else
	 if v and v.Character then
	 if v.Name ~= game.Players.LocalPlayer.Name then
	if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
else

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

wait(0.5)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = v.Character.Head
},
  [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = v.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = v.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = v.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
},
[6] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
end
end
end
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lki off") then
_G.toggle = false

while _G.toggle == true do
wait()
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Magenta"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved

 for i,v in pairs(game.Teams["Inmates"]:GetPlayers()) do
	if not v and v.Character then
	repeat
	wait()
	until v.Character
	else
	 if v and v.Character then
	 if v.Name ~= game.Players.LocalPlayer.Name then
	if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
else

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

wait(0.5)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = v.Character.Head
},
  [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = v.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = v.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = v.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
},
[6] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
end
end
end
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lkc on") then
_G.toggle = true

while _G.toggle == true do
wait(0.01)
workspace.Remote.TeamEvent:FireServer("Bright orange")

 for i,v in pairs(game.Teams["Criminals"]:GetPlayers()) do
	if not v and v.Character then
	repeat
	wait(1)
	until v.Character
	else
	 if v and v.Character then
	 if v.Name ~= game.Players.LocalPlayer.Name then
	if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
else

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

wait(0.1)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = v.Character.Head
},
  [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = v.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = v.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = v.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
},
[6] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
end
end
end
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lkc off") then
_G.toggle = false

while _G.toggle == true do
wait(0.01)
workspace.Remote.TeamEvent:FireServer("Bright orange")

 for i,v in pairs(game.Teams["Criminals"]:GetPlayers()) do
	if not v and v.Character then
	repeat
	wait(1)
	until v.Character
	else
	 if v and v.Character then
	 if v.Name ~= game.Players.LocalPlayer.Name then
	if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
else

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

wait(0.1)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = v.Character.Head
},
  [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = v.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = v.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = v.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
},
[6] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
end
end
end
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lkn on") then
_G.toggle = true

while _G.toggle == true do
wait(0.01)
workspace.Remote.TeamEvent:FireServer("Bright orange")

 for i,v in pairs(game.Teams["Neutral"]:GetPlayers()) do
	if not v and v.Character then
	repeat
	wait(1)
	until v.Character
	else
	 if v and v.Character then
	 if v.Name ~= game.Players.LocalPlayer.Name then
	if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
else

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

wait(0.1)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = v.Character.Head
},
  [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = v.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = v.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = v.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
},
[6] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
end
end
end
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lkn off") then
_G.toggle = false

while _G.toggle == true do
wait(0.01)
workspace.Remote.TeamEvent:FireServer("Bright orange")

 for i,v in pairs(game.Teams["Neutral"]:GetPlayers()) do
	if not v and v.Character then
	repeat
	wait(1)
	until v.Character
	else
	 if v and v.Character then
	 if v.Name ~= game.Players.LocalPlayer.Name then
	if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
else

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

wait(0.1)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = v.Character.Head
},
  [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = v.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = v.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = v.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
},
[6] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
end
end
end
end
end
end

if string.sub(tk, 1, 4) == (cmdpre.."lk ") then
local plr = arg2

if _G.lking then
_G.lking = not _G.lking
elseif not _G.lking then
_G.lking = true

saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Neon orange"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved

local ItemHandler = workspace:WaitForChild("Remote").ItemHandler
ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

while _G.lking == true do wait()

local ohTable1 = {
	[1] = {
		["RayObject"] = Ray.new(Vector3.new(830.385803, 101.490005, 2263.91577), Vector3.new(-290.503754, -259.915741, 89.7295227)),
		["Distance"] = 6.5082879066467,
		["Cframe"] = CFrame.new(827.550232, 99.0689468, 2266.6748, -0.481603324, -0.559889793, -0.674226701, 0, 0.769323289, -0.638859689, 0.876389325, -0.307676941, -0.370508641),
		["Hit"] = game.Players[plr].Character.Head
	},
	[2] = {
		["RayObject"] = Ray.new(Vector3.new(830.385803, 101.490005, 2263.91577), Vector3.new(-298.563751, -254.928375, 76.6239014)),
		["Distance"] = 6.7481255531311,
		["Cframe"] = CFrame.new(827.429932, 99.0689468, 2266.57446, -0.491496772, -0.536595702, -0.685927272, -2.98023224e-08, 0.787626028, -0.616153777, 0.870879471, -0.302837551, -0.387115628),
		["Hit"] = game.Players[plr].Character.Head
	},
	[3] = {
		["RayObject"] = Ray.new(Vector3.new(830.385803, 101.490005, 2263.91577), Vector3.new(-296.253387, -260.10672, 67.6641083)),
		["Distance"] = 6.7231078147888,
		["Cframe"] = CFrame.new(827.502319, 99.0689468, 2266.4834, -0.528882205, -0.524872661, -0.666927516, 0, 0.785826921, -0.618446529, 0.848695338, -0.327085376, -0.415609807),
		["Hit"] = game.Players[plr].Character.Head
	},
	[4] = {
		["RayObject"] = Ray.new(Vector3.new(830.385803, 101.490005, 2263.91577), Vector3.new(-299.141602, -256.255157, 69.6248779)),
		["Distance"] = 6.787796497345,
		["Cframe"] = CFrame.new(827.438477, 99.0689468, 2266.50952, -0.511098981, -0.526502371, -0.679391682, -1.49011612e-08, 0.790429831, -0.612552643, 0.859521866, -0.313075036, -0.403987885),
		["Hit"] = game.Players[plr].Character.Head
	},
	[5] = {
		["RayObject"] = Ray.new(Vector3.new(830.385803, 101.490005, 2263.91577), Vector3.new(-294.094727, -256.819519, 86.9023056)),
		["Distance"] = 6.603524684906,
		["Cframe"] = CFrame.new(827.488464, 99.0689468, 2266.65942, -0.476035535, -0.55372709, -0.683210373, 0, 0.776882172, -0.629645944, 0.879426122, -0.299733847, -0.369823486),
		["Hit"] = game.Players[plr].Character.Head
	}
}
local ohInstance2 = game:GetService("Players").LocalPlayer.Backpack["Remington 870"]

game:GetService("ReplicatedStorage").ShootEvent:FireServer(ohTable1, ohInstance2)
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."kg") then
workspace.Remote.TeamEvent:FireServer("Bright orange")

 for i,v in pairs(game.Teams["Guards"]:GetPlayers()) do
	if not v and v.Character then
	repeat
	wait(1)
	until v.Character
	else
	 if v and v.Character then
	 if v.Name ~= game.Players.LocalPlayer.Name then
	if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
else

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

wait(0.01)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = v.Character.Head
},
  [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = v.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = v.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = v.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
},
[6] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
end
end
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."ki") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Magenta"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved

 for i,v in pairs(game.Teams["Inmates"]:GetPlayers()) do
	if not v and v.Character then
	repeat
    wait()
	until v.Character
	else
	 if v and v.Character then
	 if v.Name ~= game.Players.LocalPlayer.Name then
	if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
else

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = v.Character.Head
},
  [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = v.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = v.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = v.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
},
[6] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
end
end
end
end
workspace.Remote.TeamEvent:FireServer("Bright orange")
end

if string.sub(tk, 1, 99) == (cmdpre.."kc") then
workspace.Remote.TeamEvent:FireServer("Bright orange")

 for i,v in pairs(game.Teams["Criminals"]:GetPlayers()) do
	if not v and v.Character then
	repeat
	wait(1)
	until v.Character
	else
	 if v and v.Character then
	 if v.Name ~= game.Players.LocalPlayer.Name then
	if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
else

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

wait(0.01)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = v.Character.Head
},
  [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = v.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = v.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = v.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
},
[6] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
end
end
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."kn") then
workspace.Remote.TeamEvent:FireServer("Bright orange")

 for i,v in pairs(game.Teams["Neutral"]:GetPlayers()) do
	if not v and v.Character then
	repeat
	wait(1)
	until v.Character
	else
	 if v and v.Character then
	 if v.Name ~= game.Players.LocalPlayer.Name then
	if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
else

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

wait(0.01)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = v.Character.Head
},
  [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = v.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = v.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = v.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
},
[6] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
end
end
end
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lrem on") then
_G.toggle = true

while _G.toggle == true do
wait()
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lrem off") then
_G.toggle = false

while _G.toggle == true do
wait()
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lm4 on") then
_G.toggle = true

while _G.toggle == true do
wait()
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lm4 off") then
_G.toggle = false

while _G.toggle == true do
wait()
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lm9 on") then
_G.toggle = true

while _G.toggle == true do
wait()
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lm9 off") then
_G.toggle = false

while _G.toggle == true do
wait()
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lak on") then
_G.toggle = true

while _G.toggle == true do
wait()
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lak off") then
_G.toggle = false

while _G.toggle == true do
wait()
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lguns on") then
_G.toggle = true

while _G.toggle == true do
wait()
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lguns off") then
_G.toggle = false

while _G.toggle == true do
wait()
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
end
end

if string.sub(tk, 1, 99) == (cmdpre.."anticrim") then
workspace.Remote.TeamEvent:FireServer("Bright blue")
wait()
for i,v in pairs(game:GetService("Workspace")["Criminals Spawn"]:GetChildren()) do 
	v:Remove()
end
end

if string.sub(tk, 1, 99) == (cmdpre.."hat") then
local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].hats["Police hat"].hat
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
end

if string.sub(tk, 1, 99) == (cmdpre.."cameras on") then
game.Workspace.Cameras.Parent = game.Lighting
end

if string.sub(tk, 1, 99) == (cmdpre.."cameras off") then
game.Lighting.Cameras.Parent = game.workspace
end

if string.sub(tk, 1, 99) == (cmdpre.."bars on") then
for i = 1,99 do
game.workspace.Prison_Cellblock.a_outerwall.Bars.Parent = game.Lighting
game.workspace.Prison_Cellblock.b_outerwall.Bars.Parent = game.Lighting
end
end

if string.sub(tk, 1, 99) == (cmdpre.."bars off") then
for i = 1,99 do
game.Lighting.Bars.Parent = workspace.Prison_Cellblock.a_outerwall
game.Lighting.Bars.Parent = workspace.Prison_Cellblock.b_outerwall
end
end

if string.sub(tk, 1, 99) == (cmdpre.."glass on") then
for i = 1,99 do
    game.workspace.Prison_Halls.glass.Parent = game.Lighting
    game.workspace.Prison_Guard_Outpost.doorwindow.Parent = game.Lighting
    game.workspace.Prison_OuterWall.prison_wall.Model.Parent = game.Lighting
    game.workspace.Prison_Administration.front.DOORWAY.Parent = game.Lighting
end
end

if string.sub(tk, 1, 99) == (cmdpre.."glass off") then
for i = 1,99 do
    game.Lighting.glass.Parent = workspace.Prison_Halls
    game.Lighting.doorwindow.Parent = workspace.Prison_Guard_Outpost
    game.Lighting.Model.Parent = workspace.Prison_OuterWall.prison_wall
    game.Lighting.DOORWAY.Parent = workspace.Prison_Administration.front
end
end

if string.sub(tk, 1, 99) == (cmdpre.."timeout") then
	local PackageSize = 100000 -- How many bullets is sent through in one remote call. Thanks Globals
	local SendPackageAmountOfTimes =  5 -- How many times the remote should be called.

	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	local ItemHandler = workspace:WaitForChild("Remote").ItemHandler
	local ShootEvent = ReplicatedStorage:WaitForChild("ShootEvent")

	ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
	local Tool = Players.LocalPlayer.Backpack["Remington 870"]

	local Packet = {
		RayObject = Ray.new(Vector3.new(-1, -1, -1), Vector3.new(1, 1, 1)),
		Distance = 2048,
		Cframe = CFrame.new(0, 0, 0),
		Hit = workspace:FindFirstChildOfClass("Part")
	}

	local Package = {}

	for i = 1, PackageSize do
		Package[i] = Packet
	end

	for i = 1, SendPackageAmountOfTimes do
		ShootEvent:FireServer(Package, Tool)
	end
end

if string.sub(tk, 1, 99) == (cmdpre.."ka") then
saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local tbl_main = 
{
      game:GetService("Players").LocalPlayer, 
      "Magenta"
}
game:GetService("Workspace").Remote.loadchar:InvokeServer(unpack(tbl_main))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
if game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870") then wait() else
game:GetService("Workspace").Remote.ItemHandler:InvokeServer(game:GetService("Workspace")["Prison_ITEMS"].giver["Remington 870"].ITEMPICKUP);
end
for i,a in pairs(game.Players:GetChildren()) do
    if a.Character:FindFirstChild("HumanoidRootPart") then
        if a.Name == game.Players.LocalPlayer.Name then wait() else
        	for i = 1,5 do
            game:GetService("ReplicatedStorage").ShootEvent:FireServer({[1] ={["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),["Distance"] = 3.2524313926697,["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),["Hit"] = a.Character.Head},[2] ={["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),["Distance"] = 3.2524313926697,["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),["Hit"] = a.Character.Head},[3] ={["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),["Distance"] = 3.2524313926697,["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),["Hit"] = a.Character.Head},[4] ={["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),["Distance"] = 3.2524313926697,["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),["Hit"] = a.Character.Head},[5] ={["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),["Distance"] = 3.2524313926697,["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),["Hit"] = a.Character.Head}}, game.Players.LocalPlayer.Backpack["Remington 870"])
        	end
        end
    end
end
game:GetService("Workspace").Remote.TeamEvent:FireServer("Bright orange");
game:GetService("Workspace").Remote.loadchar:InvokeServer("");
end

if string.sub(tk, 1, 99) == (cmdpre.."melee") then
local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].single.Hammer.ITEMPICKUP;
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].single["Crude Knife"].ITEMPICKUP;
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
end

if string.sub(tk, 1, 99) == (cmdpre.."lmelee on") then
_G.toggle = true

while _G.toggle == true do
wait()
local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].single.Hammer.ITEMPICKUP;
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].single["Crude Knife"].ITEMPICKUP;
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
end
end

if string.sub(tk, 1, 99) == (cmdpre.."lmelee off") then
_G.toggle = false

while _G.toggle == true do
wait()
local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].single.Hammer.ITEMPICKUP;
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
local userdata_1 = game:GetService("Workspace")["Prison_ITEMS"].single["Crude Knife"].ITEMPICKUP;
local Target = game:GetService("Workspace").Remote.ItemHandler;
Target:InvokeServer(userdata_1);
end
end

if string.sub(tk, 1, 6) == (cmdpre.."close") then
game:Shutdown()
end

if string.sub(tk, 1, 6) == (cmdpre.."devs") then
print("Made by FATE#1646")
print("")
print("Tested by FATE#1646")
print("")
print("Updated by FATE#1646")
end

if string.sub(tk, 1, 5) == (cmdpre.."cmds") then
print ("--------------LOCAL--------------")
print ("/cmds --> Prints a list of all available commands in the Developer Console")
print ("/re --> Refreshes your avatar")
print ("/time --> Enables/disables fullbright | Say again to toggle")
print ("/ws [num] --> Sets WalkSpeed to desired number")
print ("/jp [num] --> Sets JumpPower to desired number")
print ("/hh [num] --> Sets HipHeight to desired number")
print ("/rage (on/off) --> Toggles rage mode")
print ("/rj --> Makes you rejoin the same server ")
print ("/hop --> Makes you rejoin a different server")
print ("/bring [plr] --> Brings selected player to you")
print ("/to [plr] --> Teleports you to selected player")
print ("/close --> Exits the game")
print ("/devs --> Shows a list of all the developers")
print ("/script --> Advertises Fate Hub PL Admin")

print (" ")
print (" ")

print ("--------------HELPFUL--------------")
print ("/nolag (on/off) --> Toggles lag when SWAT Armor is spammed")
print ("/asa (on/off) --> Toggles Anti Spam Arrest")
print ("/anticrim --> Prevents users from making you on the Criminal team")
print ("/anticrash (on/off) --> Toggles Anti Crash (Bullets)")
print ("/nocrash (on/off) --> Toggles Anti Crash (SWAT Armour)")

print (" ")
print (" ")

print ("--------------REMOVE/RESTORE--------------")
print ("/walls (on/off) --> Toggles all Walls")
print ("/doors (on/off) --> Toggles all Doors")
print ("/fences (on/off) --> Toggles all Fences")
print ("/trees (on/off) --> Toggles all Trees")
print ("/city (on/off) --> Toggles all City Buildings")
print ("/outer (on/off) --> Toggles the Outer Wall")
print ("/roads (on/off) --> Toggles all the roads")
print ("/gate (on/off) --> Toggles the Prison Gate")
print ("/tables (on/off) --> Toggles Cafeteria Tables")
print ("/desks (on/off) --> Toggles Nexus Tables")
print ("/plant (on/off) --> Toggles The Nexus Plant")
print ("/flag (on/off) --> Toggles the Yard Flag")
print ("/garage (on/off) --> Toggles the Prison Garage")
print ("/crates (on/off) --> Toggles the Shipping Containers")
print ("/track (on/off) --> Toggles the Prison Yard Track")
print ("/towers (on/off) --> Toggles the Prison Guard Towers")
print ("/celld (on/off) --> Toggles the Prison Cellblock Doors")
print ("/cbase (on/off) --> Toggles the Criminal Base")
print ("/cameras (on/off) --> Toggles the Wall Cameras")
print ("/secret (on/off) --> Toggles the Secret Room Supplies")
print ("/bars (on/off) --> Toggles the Prison Cellblock Window Bars")
print ("/glass (on/off) --> Toggles the Prison Glass")

print (" ")
print (" ")

print ("--------------OPENERS--------------")
print ("/openg --> Opens the Prison Lot Gate")
print ("/sg (on/off) --> Toggles spam opening the Prison Lot Gate")
print ("/opend --> Open all Keycard Doors")
print ("/sd (on/off) --> Toggles spam opening all Keycard Doors")
print ("/sgd (on/off) --> Toggles spam opening the Armory Keycard Door")
print ("/ocd --> Opens the Criminal Base Door")
print ("/ccd --> Closes the Criminal Base Door")
print ("/scd (on/off) --> Toggles spam opening the Criminal Base Door")

print (" ")
print (" ")

print ("--------------WEAPON MODS--------------")
print ("/guns --> Gives you all guns")
print ("/m9 --> Gives you a M9")
print ("/m4 --> Gives you a M4A1")
print ("/ak --> Gives you a AK-47")
print ("/shotty --> Gives you a Remington 870")
print ("/melee --> Gives you a hammer and a knife")
print ("/auto --> Rapidfires all guns")
print ("/inf --> Gives you infinite ammo for all guns")
print ("/fr --> Makes your guns reload fast")
print ("/bullets [num] --> Sets amount of bullets firing from all guns | Must unequip before using")
print ("/held --> Gives you SWAT shield")
print ("/smoke --> Turns your shotgun into a bong")
print ("/troll --> Turns your shotgun backwards")
print ("/side --> Turns your shotgun on the side of your arm")
print ("/mgun --> Gives you a minigun")
print ("/laser --> Gives you a rapid fire taser")
print ("/op 30 --> Gives you rapidfire guns with 30 bullets")
print ("/op 50 --> Gives you rapidfire guns with 50 bullets")
print ("/op 75 --> Gives you rapidfire guns with 75 bullets")
print ("/op 100 --> Gives you rapidfire guns with 100 bullets")
print ("/op 200 --> Gives you rapidfire guns with 200 bullets")
print ("/op 300 --> Gives you rapidfire guns with 300 bullets")
print ("/op rem --> Gives you a op Remington")
print ("/lm4 (on/off) --> Toggles loop give M4A1")
print ("/lrem (on/off) --> Toggles loop give Remington 870")
print ("/lm9 (on/off) --> Toggles loop give M9")
print ("/lak (on/off) --> Toggles loop give AK-47")
print ("/lguns (on/off) --> Toggles loop give guns")
print ("/lmelee (on/off) --> Toggles loop give melees")

print (" ")
print (" ")

print ("--------------CHARACTER MODS--------------")
print ("/sk --> Gives you SWAT kit")
print ("/hat --> Gives you a Police Hat")
print ("/ff (on/off) --> Toggles on forcefield")
print ("/ar (on/off) --> Toggles Auto Refresh")
print ("/aa (on/off) --> Toggles Anti Tase / Anti Arrest")
print ("/laa (on/off) --> Toggles Loop Anti Tase / Anti Arrest")
print ("/god (on/off) --> Toggles Godmode")
print ("/clothes --> Removes your prison clothes")
print ("/nobring (on/off) --> Toggles Anti Bring")
print ("/stam (on/off) --> Toggles Infinite Stamina")
print ("/arraura (on/off) --> Toggles Arrest Aura")

print (" ")
print (" ")

print ("--------------ABUSIVE--------------")
print ("/punch --> Gives Superpunch")
print ("/ca --> Click to arrest Inmates/Criminals")
print ("/fp (on/off) --> Toggles Fast Punch")
print ("/tk --> Kills whoever touches you")
print ("/ltk --> Still kills whoever touches you after you die")
print ("/lags --> Lags the entire server | REQUIRES SWAT GAMEPASS")
print ("/unlags --> Stops lagging the entire server | REQUIRES SWAT GAMEPASS")
print ("/ac --> Arrests all Criminals")
print ("/lac (on/off) --> Toggles Loop Arrest all Criminals")
print ("/ai --> Arrest all Inmates")
print ("/lai (on/off) --> Toggles Loop Arrest all Inmates")
print ("/ae (on/off) --> Toggles Anti Escape")
print ("/ghb on --> Enables Guard Hitboxes")
print ("/ihb on --> Enables Inmates Hitboxes")
print ("/chb on --> Enables Criminals Hitboxes")
print ("/nhb on --> Enables Neutral Hitboxes")
print ("/killaura (on/off) --> Toggles Kill Aura")
print ("/crash --> Crashes the server | Made by: Vapin' Cat#7950")
print ("/lcrash (on/off) --> Toggles Loop Crashing the server")
print ("/ls 1 --> Lags the server with a power 1 Lag Spike")
print ("/ls 2 --> Lags the server with a power 2 Lag Spike")
print ("/ls 3 --> Lags the server with a power 3 Lag Spike")
print ("/ls 4 --> Lags the server with a power 4 Lag Spike")
print ("/ls 5 --> Lags the server with a power 5 Lag Spike")
print ("/kg --> Kills all Guards")
print ("/ki --> Kills all Inmates")
print ("/kc --> Kills all Criminals")
print ("/kn --> Kills all Neutrals")
print ("/ka --> Kills everyone in the server")
print ("/lkg (on/off) --> Toggles Loop killing all Guards")
print ("/lki (on/off) --> Toggles Loop killing all Inmates")
print ("/lkc (on/off) --> Toggles Loop killing all Criminals")
print ("/lkn (on/off) --> Toggles Loop killing all Neutrals")
print ("/lk [plr] --> Loopkills the mentioned user (full name)")
print ("/timeout --> Disconnects the entire server (Bypasses AntiCrash)")

print (" ")
print (" ")

print ("--------------TELEPORTS--------------")
print ("/nex --> Teleports you to the Prison")
print ("/yard --> Teleports you to the Yard")
print ("/armory --> Teleports you to the Armory")
print ("/sewer --> Teleports you to the Sewer")
print ("/cbase --> Teleports you to the Criminal Base")
print ("/garage --> Teleports you to the Cop Car Garage")
print ("/tower --> Teleports you to the Prison Tower")
print ("/bus --> Teleports you to the Bus Stop")
print ("/bridge --> Teleports you to the City Bridge")
print ("/store --> Teleports you to the Gun Store")
print ("/gas --> Teleports you to the Gas Station")
print ("/unmap --> Teleports you under the map")
print ("/cafe --> Teleports you to the Cafeteria")
print ("/cell --> Teleports you to the Cell Block")
print ("/roof --> Teleports you to the Prison's Roof")
print ("/gate --> Teleports you to the Prison Gate")
print ("/crates --> Teleports you to the Outside Crates")
print ("/barn --> Teleports you to the Criminal Base Barn")
print ("/houses --> Teleports you to the City Houses")
print ("/spawn --> Teleports you to the Neutral Spawn")
print ("/food --> Teleports you to the Food Storage Room")
print ("/flag --> Teleports you on top of the yard flag")
print ("/back --> Teleports you to the back of the Nexus")
print ("/power --> Teleports you to the Powerline")
print ("/office --> Teleports you on top of the Office")
print ("/secret --> Teleports you to the Secret Area")
print ("/safe --> Teleports you to the Safe Place")
print ("/empty --> Teleports you to the Empty Building")
print ("/gtower --> Teleports you to the Gate Tower")
print ("/trap --> Teleports you to the Trapped Area")
print ("/bum --> Teleports you to the Hitch Hike Area")
print ("/visitor --> Teleports you to the Visitor Room")
print ("/dungeon --> Teleports you to the Hidden Dungeon")
print ("/grass --> Teleports you to the Grass Spot")
print ("/vent --> Teleports you to the Vent Shaft")
print ("/lot --> Teleports you to the Escapee Parking Lot")
print ("/candy --> Teleports you to the Vending Machine")
print ("/meeting --> Teleports you to the Meeting Room")
print ("/unknown --> Teleports you to the Unknown Grocery Store Spot")
print ("/mountain --> Teleports you to the Mountain")

print (" ")
print (" ")

print ("--------------TEAMS--------------")
print ("/inmate --> Sets team to Inmates")
print ("/guard --> Sets team to Guards")
print ("/neutral --> sets team to Neutral")
print ("/crim --> Sets team to Criminal")
print ("/white --> Sets team to White")
print ("/purple --> Sets team to Magenta")
print ("/black --> Sets team to Black")
print ("/green --> Sets team to Green")
print ("/yellow --> Sets team to Yellow")
print ("/teal --> Sets team to Teal")
print ("/brown --> Sets team to Brown")
print ("/pink --> Sets team to Pink")
print ("/grey --> Sets team to Grey")
print ("/red --> Sets team to Red")
print ("/blue --> Sets team to Blue")
print ("/mint --> Sets team to Mint")
print ("/rgb (on/off) --> Toggles your team RGB")
print ("/lg (on/off) --> Toggles loop making you on the Guards Team")
print ("/li (on/off) --> Toggles loop making you on the Inmates Team")
end

end)