-- I did this purely out of boredom, was pretty fun. Anyways this is Felix Hub's loader (main.lua) manually 'deobfuscated' (Just reversed what the uglifier did, removed a LOT of junk, gave (most of) the variables proper names, etc --

if not getgenv then
	game.Players.LocalPlayer:Kick("Your exploit does not support getgenv(), this is essential for Felix Hub to load!" )
end;

wait()

if not setclipboard then
	game.Players.LocalPlayer:Kick("Your exploit does not support setclipboard(), this is essential for Felix Hub to load!")
end

wait()

if not mouse1click then
	game.Players.LocalPlayer:Kick("Your exploit does not support mouse1click(), this is essential for Felix Hub to load!")
end

wait()

if not mouse1release then
	game.Players.LocalPlayer:Kick("Your exploit does not support mouse1release(), this is essential for Felix Hub to load!")
end

wait()

local sound = Instance.new("Sound")
sound.Parent = game.SoundService
sound.SoundId = "rbxassetid://1316110132"

setclipboard("Insert discord link here") -- Removed the link

sound:Play()

wait(4)

sound:Destroy()

if game.PlaceId == 286090429 then 
    print("Loading Arsenal")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/I2345/Felix-Hub/scripts/Arsenal.lua"))()
end

if game.PlaceId == 958958866 then 
    print("Loading Dead by Roblox")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/I2345/Felix-Hub/scripts/Dead%20by%20Roblox.lua"))()
end

if game.PlaceId == 155615604 then 
    print("Loading Prison Life")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/I2345/Felix-Hub/scripts/PrisonLife.lua"))()
end

if game.PlaceId == 5874128725 then 
    print("Loading DiffcltyObby") -- Yeah they made a typo, lol...
    loadstring(game:HttpGet("https://raw.githubusercontent.com/I2345/Felix-Hub/scripts/NoJumpingDiffcultyObby.lua"))()
end

print("Felix Hub on top!")
