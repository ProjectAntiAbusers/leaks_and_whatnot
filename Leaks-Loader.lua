-- Variables

local scripts = {
    ["PieRat Admin"] = {
        ["PieRat Old build"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/PieRat-Admin/formatted_old_build_8cb707aa7fe7f8d5949f01ac2f5c9c6fb44c96ba.lua",
        ["PieRat V2.74"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/PieRat-Admin/PieRat-v2.74.lua",
        ["PieRat V2.73"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/PieRat-Admin/PieRat-v2.73.lua",
        ["PieRat V2.67"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/PieRat-Admin/PieRat-v2.67.lua",
        ["PieRat V2 (New GUI)"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/PieRat-Admin/Pierat-v2_gui_ce0f011885ed423b877e4428932dd26360561a80.lua",
        ["PieRat V3 (New GUI)"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/PieRat-Admin/Pierat-v3_gui_2aa7eb5d7a230eacae4f856bb228d07804801ec0.lua"
    },

    ["FateHub"] = {
        ["FateHub Admin"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/Fates%20prison%20life/Fatehub%20admin.lua",
        ["FateHub GUI"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/Fates%20prison%20life/Fatehub%20GUI.lua"
    },

    ["Scorpion"] = {
        ["Scorpion Alpha"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/Scorpion/Scorpion-Alpha.lua",
        ["!! WEBHOOK REMOVED !! Scorpion V1.41"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/Scorpion/WEBHOOK-REMOVED-Scorpion-V1.41.lua",
        ["Scorpion V1.41"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/Scorpion/Scorpion-V1.41.lua"
    },

    ["XenHub"] = {
        ["XenHub Loader (Whitelist Workaround)"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/XenHub/loader-whitelist-workaround.lua",
        ["XenHub Prison Life"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/XenHub/Prison-Life.lua",
        ["XenHub Ninja Legends"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/XenHub/Ninja-Legends.lua",
        ["XenHub Legends of Speed"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/XenHub/Legends-of-Speed.lua",
        ["XenHub Giant Simulator"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/XenHub/Giant-Simulator.lua"
    },
    
    ["FelixHub"] = {
        ["FelixHub Loader"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/Felix-Hub/Loader_Deobfuscated.lua",
        ["FelixHub Dead by Roblox"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/Felix-Hub/Dead_by_Roblox_Deobfuscated.lua",
        ["FelixHub Obby"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/Felix-Hub/Obby_Deobfuscated.lua",
    },
    
    ["Linorix Hub"] = {
        ["LinorixHub"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/Linorix-Hub/Linorix.lua"
    }
}

local request = (syn and syn.request) or (http and http.request) or http_request or nil

if not request then
    request = function(tbl)
        return {Body = game:HttpGet(tbl.Url)}
    end
end

-- UI
local lib = loadstring(request({Url = "https://raw.githubusercontent.com/jnz-dev/collection-of-ui-libs/main/MaterialLua.lua", Method = "GET"}).Body)()
local ui_loader = lib.Load({
    Title = "jnz's Leak Loader",
    Style = 3,
    SizeX = 530,
    SizeY = 340,
    Theme = "Dark"
})

for i, v in pairs(scripts) do 
    local window = ui_loader.New({
        Title = i
    })
    for i2, v2 in pairs(v) do 
        window.Button({
            Text = i2,
            Callback = function()
                loadstring(request({Url = v2, Method = "GET"}).Body)() 
            end
        })
    end
end
