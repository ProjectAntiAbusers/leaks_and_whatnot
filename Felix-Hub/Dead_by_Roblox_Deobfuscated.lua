-- Felix Hub's Dead by Roblox script, manually 'deobfuscated' (Just reversed what the uglifier did, removed a LOT of junk, gave (most of) the variables proper names, etc --

local local_player = game.Players.LocalPlayer
local lib = loadstring(game:HttpGet("https://pastebin.com/raw/qwdPKKDN"))()

local window = lib.new("Felix Hub", 3384602952)

local L_16_ = {
    Background = Color3.fromRGB(24 , 24 , 24),
    Glow = Color3.fromRGB(2, 2, 2),
    Accent = Color3.fromRGB(25, 25, 25),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),
    TextColor = Color3.fromRGB(255, 255, 255)
}


local turn_on_esp_toggle = false
local all_esp_toggle = false
local survivor_esp_toggle= false
local killer_esp_toggle = false
local generator_esp_toggle = false
local itembox_esp_toggle = false
local totem_esp_toggle = false

local survival_esp_col = Color3.fromRGB(19, 0 , 187)
local killer_esp_col = Color3.fromRGB(255, 0, 0)
local generator_esp_col = Color3.fromRGB(255, 0 , 157)
local itemboxes_esp_col = Color3.fromRGB(9, 255, 255)
local totems_esp_col = Color3.fromRGB(251, 255, 0)
local all_esp_col = Color3.fromRGB(73, 73, 73)

local all_esp_handle_tbl = {}
local survivor_handle_tbl = {}
local killer_handle_tbl = {}
local generator_handle_tbl = {}
local itembox_handle_tbl = {}
local totem_handle_tbl = {}

window:Notify("Felix hub", "Felix hub is loading please wait", function()
	wait()
end)

wait(5)

local visuals_page = window:addPage("Visuals", 3384602952)

local esp_section = visuals_page:addSection("ESP")
local esp_settings_section = visuals_page:addSection("Esp Settings")

esp_section:addToggle("Turn on ESP", false , function(bool)
	turn_on_esp_toggle = bool
	if bool then
		window:Notify("Felix hub", "Turned on ESP", function()
		end)
	else
        window:Notify("Felix hub", "Turned off ESP", function() 
        end)
	end
end)

esp_settings_section:addToggle("All ESP", false , function(bool)
	all_esp_toggle = bool
	if bool then
		window:Notify("Felix hub", "Turned on All ESP", function()
		end)
		if turn_on_esp_toggle then
			local all_handle = Instance.new("BoxHandleAdornment")
			all_handle.Name = "Felixhub_TotallyNotESP"
			all_handle.ZIndex = 10
			all_handle.AlwaysOnTop = true
			all_handle.Color3 = all_esp_col

			for L_118_forvar0, L_119_forvar1 in pairs(game.Players:GetPlayers()) do
				if L_119_forvar1.Character then
					for L_120_forvar0, L_121_forvar1 in pairs(L_119_forvar1.Character:GetChildren()) do
						if L_121_forvar1:IsA("BasePart") then
							local all_handle_clone = all_handle:Clone()
							all_handle_clone.Parent = L_121_forvar1
							all_handle_clone.Size = L_121_forvar1.Size
							all_handle_clone.Adornee = L_121_forvar1
							table.insert(all_esp_handle_tbl, all_handle_clone)
						end
					end
				end
			end
		else
            window:Notify("Felix hub", "Warning! You must turn on ESP to do this! Please enabled esp and then turn off then on this one thank you!", function()    
            end)
		end
	else

        window:Notify("Felix hub", "Turned off All ESP", function()
        end)
		for L_158_forvar0, L_159_forvar1 in pairs(all_esp_handle_tbl) do
			L_159_forvar1:Destroy()
		end
	end
end)

esp_settings_section:addToggle("Survivor ESP", false , function(bool)
	survivor_esp_toggle= bool
	if bool then
        
		window:Notify("Felix hub", "Turned on Survivor ESP", function()
		end)

		if turn_on_esp_toggle then
			local box_handle_adornment_survivor = Instance.new("BoxHandleAdornment")
			box_handle_adornment_survivor.Name = "Felixhub_TotallyNotESP"
			box_handle_adornment_survivor.AlwaysOnTop = true
			box_handle_adornment_survivor.Color3 = survival_esp_col

			for L_165_forvar0, L_166_forvar1 in pairs(game.Players:GetPlayers()) do
				if L_166_forvar1.Character then
					if L_166_forvar1.Backpack.Scripts.Killer.Value == false then
						for L_167_forvar0, L_168_forvar1 in pairs(L_166_forvar1.Character:GetChildren()) do
							if L_168_forvar1:IsA("BasePart") then
								local box_handle_adornment_survivor_clone = box_handle_adornment_survivor:Clone()
								box_handle_adornment_survivor_clone.Parent = L_168_forvar1
								box_handle_adornment_survivor_clone.Size = L_168_forvar1.Size
								box_handle_adornment_survivor_clone.Adornee = L_168_forvar1
								table.insert(survivor_handle_tbl, box_handle_adornment_survivor_clone)
							end
						end
					end
				end
			end
		else
			window:Notify("Felix hub", "Warning! You must turn on ESP to do this! Please enabled esp and then turn off then on this one thank you!", function()
			end)
		end
	else
		window:Notify("Felix hub", "Turned off Survivor ESP", function()
		end)
		for L_225_forvar0, L_226_forvar1 in pairs(survivor_handle_tbl) do
			L_226_forvar1:Destroy()
		end
	end
end)

esp_settings_section:addToggle("Killer ESP", false , function(bool)
	killer_esp_toggle = bool
	if bool then
		window:Notify("Felix hub", "Turned on Killer ESP", function()
		end)
		if turn_on_esp_toggle then
			local box_handle_adornment_killer = Instance.new("BoxHandleAdornment")
			box_handle_adornment_killer.Name = "Felixhub_TotallyNotESP"
			box_handle_adornment_killer.ZIndex = 10
			box_handle_adornment_killer.AlwaysOnTop = true
			box_handle_adornment_killer.Color3 = killer_esp_col

			for L_229_forvar0, L_230_forvar1 in pairs(game.Players:GetPlayers()) do
				if L_230_forvar1.Character then
					if L_230_forvar1.Backpack.Scripts.Killer.Value == true then
						for L_231_forvar0, L_232_forvar1 in pairs(L_230_forvar1.Character:GetChildren()) do
							if L_232_forvar1:IsA("BasePart") then
								local box_handle_adornment_killer_clone = box_handle_adornment_killer:Clone()
								box_handle_adornment_killer_clone.Parent = L_232_forvar1
								box_handle_adornment_killer_clone.Size = L_232_forvar1.Size
								box_handle_adornment_killer_clone.Adornee = L_232_forvar1
								table.insert(killer_handle_tbl, box_handle_adornment_killer_clone)
							end
						end
					end
				end
			end
		else
			window:Notify("Felix hub", "Warning! You must turn on ESP to do this! Please enabled esp and then turn off then on this one thank you!", function()
			end)
		end
	else
        window:Notify("Felix hub", "Turned off Killer ESP", function()
		end)
		for L_278_forvar0, L_279_forvar1 in pairs(killer_handle_tbl) do
			L_279_forvar1:Destroy()
		end
	end
end)

esp_settings_section:addToggle("Genertor ESP", false , function(bool)
	generator_esp_toggle = bool
	if bool then
		window:Notify("Felix hub", "Turned on Generator ESP", function()
		end)
		if turn_on_esp_toggle then
			local generator_handle = Instance.new("BoxHandleAdornment")
			generator_handle.Name = "Felixhub_TotallyNotESP"
			generator_handle.ZIndex = 10
			generator_handle.AlwaysOnTop = true
			generator_handle.Color3 = generator_esp_col
			for L_282_forvar0, L_283_forvar1 in pairs(game.Workspace:GetChildren()) do
				if L_283_forvar1.Name == "Generator" or L_283_forvar1.Name == "Generator1" or L_283_forvar1.Name == "Generator2" or  L_283_forvar1.Name == "Generator3" or L_283_forvar1.Name == "Generator4" or L_283_forvar1.Name == "Generator5" or L_283_forvar1.Name == "Generator6" or L_283_forvar1.Name == "Generator7" or L_283_forvar1.Name == "Generator8" then
					for L_284_forvar0, L_285_forvar1 in pairs(L_283_forvar1:GetChildren()) do
						if L_285_forvar1:IsA("BasePart") then
							local generator_handle_clone = generator_handle:Clone()
							generator_handle_clone.Parent = L_285_forvar1
							generator_handle_clone.Size = L_285_forvar1.Size
							generator_handle_clone.Adornee = L_285_forvar1
							table.insert(generator_handle_tbl, generator_handle_clone)
						end
					end
				end
			end
		else
			window:Notify("Felix hub", "Warning! You must turn on ESP to do this! Please enabled esp and then turn off then on this one thank you!", function()
			end)
		end
	else
		window:Notify("Felix hub", "Turned off Generator ESP", function()
		end)
		for L_318_forvar0, L_319_forvar1 in pairs(generator_handle_tbl) do
			L_319_forvar1:Destroy()
		end
	end
end)

esp_settings_section:addToggle("Itemboxes ESP", false , function(bool)
	itembox_esp_toggle = bool
	if bool then
		window:Notify("Felix hub", "Turned on Itembox ESP", function()
		end)
		if turn_on_esp_toggle then
			local itembox_handle = Instance.new("BoxHandleAdornment")
			itembox_handle.Name = "Felixhub_TotallyNotESP"
			itembox_handle.ZIndex = 10
			itembox_handle.AlwaysOnTop = true
			itembox_handle.Color3 = itemboxes_esp_col
			for L_326_forvar0, L_327_forvar1 in pairs(game.Workspace:GetChildren()) do
				if L_327_forvar1.Name == "Chest" or L_327_forvar1.Name == "Chest1" or L_327_forvar1.Name == "Chest2" or L_327_forvar1.Name == "Chest3" then
					for L_328_forvar0, L_329_forvar1 in pairs(L_327_forvar1:GetChildren()) do
						if L_329_forvar1:IsA("BasePart") then
							local itembox_handle_clone = itembox_handle:Clone()
							itembox_handle_clone.Parent = L_329_forvar1
							itembox_handle_clone.Size = L_329_forvar1.Size
							itembox_handle_clone.Adornee = L_329_forvar1
							table.insert(itembox_handle_tbl, itembox_handle_clone)
						end
					end
				end
			end
		else
			window:Notify("Felix hub", "Warning! You must turn on ESP to do this! Please enabled esp and then turn off then on this one thank you!", function()
			end)
		end
	else
        window:Notify( "Felix hub", "Turned off Itembox ESP", function()
		end)
		for L_377_forvar0, L_378_forvar1 in pairs(itembox_handle_tbl) do
			L_378_forvar1:Destroy()
		end
	end
end)

esp_settings_section:addToggle("Totem ESP", false , function(bool)
	totem_esp_toggle = bool
	if bool then
        
		window:Notify("Felix hub", "Turned on Totem ESP", function()
		end)
		if turn_on_esp_toggle then
			local totem_handle = Instance.new("BoxHandleAdornment")
			totem_handle.Name = "Felixhub_TotallyNotESP"
			totem_handle.ZIndex = 10
			totem_handle.AlwaysOnTop = true
			totem_handle.Color3 = totems_esp_col
			for L_381_forvar0, L_382_forvar1 in pairs(game.Workspace:GetChildren()) do
				if L_382_forvar1.Name == "Totem" or L_382_forvar1.Name == "Totem1" or L_382_forvar1.Name == "Totem2" or L_382_forvar1.Name == "Totem3" or L_382_forvar1.Name == "Totem4" or L_382_forvar1.Name == "Totem5" then
					for L_383_forvar0, L_384_forvar1 in pairs(L_382_forvar1:GetChildren()) do
						if L_384_forvar1:IsA("BasePart") then
							local totem_handle_clone = totem_handle:Clone()
							totem_handle_clone.Parent = L_384_forvar1
							totem_handle_clone.Size = L_384_forvar1.Size
							totem_handle_clone.Adornee = L_384_forvar1
							table.insert(totem_handle_tbl, totem_handle_clone)
						end
					end
				end
			end
		else
			window:Notify("Felix hub", "Warning! You must turn on ESP to do this! Please enabled esp and then turn off then on this one thank you!", function()
			end)
		end
	else
		window:Notify("Felix hub", "Turned off Totem ESP", function()
		end)
		for L_422_forvar0, L_423_forvar1 in pairs(totem_handle_tbl) do
			L_423_forvar1:Destroy()
		end
	end
end)

esp_settings_section:addColorPicker("All ESP Color", Color3.fromRGB(73 , 73, 73), function(col)
	all_esp_col = col
	window:Notify("Felix hub", "Changed All ESP Color", function()
	end)
end)

esp_settings_section:addColorPicker("Survivor ESP Color", Color3.fromRGB(19 , 0 , 187), function(col)
	survival_esp_col = col
	window:Notify("Felix hub", "Changed Survivor ESP Color", function()
	end)
end)

esp_settings_section:addColorPicker("Killer ESP Color", Color3.fromRGB(255, 0, 0), function(col)
	killer_esp_col = col
	window:Notify("Felix hub", "Changed Killer ESP Color", function()
	end)
end)

esp_settings_section:addColorPicker("Generator ESP Color", Color3.fromRGB(255, 0, 157), function(col)
	generator_esp_col = col
	window:Notify("Felix hub", "Changed Generator ESP Color", function()
	end)
end)

esp_settings_section:addColorPicker("Itemboxes ESP Color", Color3.fromRGB(9, 255, 255), function(col)
	itemboxes_esp_col = col
	window:Notify("Felix hub", "Changed Itemboxes ESP Color", function()
	end)
end)

esp_settings_section:addColorPicker("Totems ESP Color", Color3.fromRGB(251, 255 , 0), function(col)
	totems_esp_col = col
	window:Notify("Felix hub", "Changed Itemboxes Totems Color", function()
	end)
end)

window:Notify("Felix hub", "anything under Menu Only must be done in the menu", function()
end)

local menu_only_page = window:addPage("Menu Only", 3384602952)
local inf_stuff_section = menu_only_page:addSection("Inf Stuff")

inf_stuff_section:addButton("Inf Bloodpoints", function()
    local args = {
        ["Bloodpoints"] = {
            ["Name"] = "Bloodpoints",
            ["Amount"] = 99999999
        }
    }
	game:GetService("ReplicatedStorage").RemoteEvents.UpdateStatsCache:FireServer(args)
	window:Notify("Felix hub", "Give user 99mil Bloodpoints", function()
	end)
end)

inf_stuff_section:addButton("Inf Perks", function()
	local replicated_storage = game:GetService("ReplicatedStorage")
	local local_player = game:GetService("Players").LocalPlayer	
    
    for L_452_forvar0, L_453_forvar1 in ipairs(local_player.DataStorage.Inventory.Perks.Survivor:GetChildren()) do
		local args = {
			[L_453_forvar1.Name] = {
				["Got"] = true ,
				["Name"] = L_453_forvar1.Name,
				["Tier"] = 3
			}
		}
		replicated_storage.RemoteEvents.UpdateInventoryPerksSurvivorCache:FireServer(args)
	end
	window:Notify("Felix hub",  "Give user every perk (tier 3)", function()
	end)
end)

inf_stuff_section:addButton("Inf items", function()
	local replicated_storage = game:GetService("ReplicatedStorage")
	local local_player = game:GetService("Players").LocalPlayer
	for L_457_forvar0, L_458_forvar1 in ipairs(local_player.DataStorage.Inventory.Items:GetChildren()) do
		local args = {
			[L_458_forvar1.Name] = {
				["Class"] = L_458_forvar1:FindFirstChildOfClass("IntValue").Name,
				["Name"] = L_458_forvar1.Name,
				["Amount"] = 99999999
			}
		}
		replicated_storage.RemoteEvents.UpdateInventoryItemsCache:FireServer(args)
	end
	window:Notify("Felix hub","Give user 99mil of each item", function()
	end)
end)
