-- This is Felix Hub's obby script, manually 'deobfuscated' (Just reversed what the uglifier did, removed a LOT of junk, gave (most of) the variables proper names, etc --

local lib = loadstring(game:HttpGet("https://pastebin.com/raw/qwdPKKDN"))()
local window = lib.new("Felix Hub")
local auto_complete_page = window:addPage("Auto Complete")
local stages_section = auto_complete_page:addSection("Stages")

local toggle = false

local complete_all_stages_toggle = stages_section:addToggle("Complete all stages", false , function(bool)
	toggle = bool
	
    while toggle do
		local local_player = game:GetService("Players").LocalPlayer
		local root_part = local_player.Character:FindFirstChild("HumanoidRootPart")
		local stages = workspace:FindFirstChild("Stages")

		for index, value in pairs(stages:GetChildren()) do
			for iteration = 1 , 178 do
				task.wait(.35 )
				root_part.CFrame = stages[iteration].CFrame * CFrame.new(Vector3.new(0 , 2 0)
			end
		end
	end
	wait(0.1 )
end)
