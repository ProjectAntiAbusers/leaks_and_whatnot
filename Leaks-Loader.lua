-- Variables

local scripts = {
    ["PieRat Admin"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/PieRat-Admin/formatted_old_build_8cb707aa7fe7f8d5949f01ac2f5c9c6fb44c96ba.lua",

    ["FateHub"] = {
        ["FateHub Admin"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/Fates%20prison%20life/Fatehub%20admin.lua",
        ["FateHub GUI"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/Fates%20prison%20life/Fatehub%20GUI.lua"
    },

    ["Scorpion"] = {
        ["Scorpion Alpha"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/Scorpion/Scorpion-Alpha.lua",
        ["Scorpion V1.41"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/Scorpion/Scorpion-V1.41.lua"
    },

    ["XenHub"] = {
        ["XenHub Loader (wl workaround)"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/XenHub/loader-whitelist-workaround.lua",
        ["[XenHub] Prison Life"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/XenHub/Prison-Life.lua",
        ["[XenHub] Ninja Legends"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/XenHub/Ninja-Legends.lua",
        ["[XenHub] Legends of Speed"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/XenHub/Legends-of-Speed.lua",
        ["[XenHub] Giant Simulator"] = "https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/XenHub/Giant-Simulator.lua"
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

local w_pierat = ui_loader.New({
    Title = "PieRat"
})

w_pierat.Button({
    Text = "PieRat Admin",
    Callback = function()
        loadstring(request({"https://raw.githubusercontent.com/jnz-dev/leaks_and_whatnot/main/PieRat-Admin/formatted_old_build_8cb707aa7fe7f8d5949f01ac2f5c9c6fb44c96ba.lua"}).Body)()
    end
})

local w_fate = ui_loader.New({
    Title = "FateHub"
})

for i, v in pairs(scripts["FateHub"]) do 
    w_fate.Button({
        Text = i,
        Callback = function()
            loadstring(request({Url = v}).Body)()
        end
    })
end

local w_scorpion = ui_loader.New({
    Title = "Scorpion"
})

for i, v in pairs(scripts["Scorpion"]) do 
    w_scorpion.Button({
        Text = i,
        Callback = function()
            loadstring(request({Url = v}).Body)()
        end
    })
end

local w_xen = ui_loader.New({
    Title = "XenHub"
})

for i, v in pairs(scripts["XenHub"]) do 
    w_xen.Button({
        Text = i,
        Callback = function()
            loadstring(request({Url = v}).Body)()
        end
    })
end
