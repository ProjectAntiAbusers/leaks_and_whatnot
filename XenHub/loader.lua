---@diagnostic disable: redundant-value

local Url = "https://DirtyFussyFormulas.exoticshadow.repl.co"

local HttpService = game:GetService("HttpService")


local Whitelisted = false;

if game:HttpGet("https://DirtyFussyFormulas.exoticshadow.repl.co/auth/check/"..game.Players.LocalPlayer.Name) == "Whitelisted" then
Whitelisted = true
else
    --setclipboard("") Removed the discord link.
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Info:";
        Text = "Discord link for whitelist got copied to your Clipboard";
        })
        wait(5)
    game.Players.LocalPlayer:Kick("Not Whitelisted")
end

local funcs = {
    ["createUi"] = function(name, callback)
        local strings = {
            "Welcome to Xen Hub "..game.Players.LocalPlayer.Name,
            "Executor: "..identifyexecutor(),
            "Game: "..name
        }
        local icons = {
            {
            ["Image"] = "rbxassetid://3926305904",
            ["RectOffset"] = Vector2.new(204, 844),
            ["RectSize"] = Vector2.new(36, 36)
        },
        {
            ["Image"] = "rbxassetid://3926305904",
            ["RectOffset"] = Vector2.new(644, 204),
            ["RectSize"] = Vector2.new(36, 36)
        },
        {
            ["Image"] = "rbxassetid://3926305904",
            ["RectOffset"] = Vector2.new(324, 244),
            ["RectSize"] = Vector2.new(36, 36)
        }
}
    local screengui = Instance.new("ScreenGui", game.CoreGui)
    local frame = Instance.new("ImageLabel", screengui)
    local text = Instance.new("TextLabel", frame)
    local icon = Instance.new("ImageLabel", frame)

    screengui.Name = "ui"..tostring(math.random(1, 1000))

    frame.Size = UDim2.new(0,0,0,0)
    frame.Position = UDim2.new(0.5,0,0.75,0)
    frame.Image = "rbxassetid://3570695787"
    frame.ImageColor3 = Color3.fromRGB(25, 25, 25)
    frame.BackgroundTransparency = 1
    frame.SliceCenter = Rect.new(100, 100, 100, 100)
    frame.ScaleType = Enum.ScaleType.Slice -- only for round
    frame.SliceScale = 0.12 -- only for round

    text.Font = Enum.Font.SourceSansBold
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
    text.TextSize = 20
    text.Text = ""
    text.TextWrapped = true
    text.Size = UDim2.new(1,-50,1,0)
    text.Position = UDim2.new(0,50,0,0)
    text.BackgroundTransparency = 1

    icon.Size = UDim2.new(0,50,0,50)
    icon.ImageColor3 = Color3.fromRGB(38, 255, 0)
    icon.Position = UDim2.new(0,15,0.5,-25)
    icon.BackgroundTransparency = 1
    icon.Image = ""

    frame:TweenSize(UDim2.new(0,250,0,70))
    frame:TweenPosition(UDim2.new(0.5, -125, 0.5, -35))
    wait(1)
    for i,v in pairs(strings) do
        icon.Image = icons[i]["Image"]
        icon.ImageRectOffset = icons[i]["RectOffset"]
        icon.ImageRectSize = icons[i]["RectSize"]

        for i2 = 1, #strings[i] do
            text.Text = string.sub(strings[i], 0, i2)
            wait(0.05)
        end
        wait(1)
        for i2 = 1, #strings[i] do
            text.Text = string.sub(strings[i], 0, #strings[i] - i2)
            wait(0.05)
        end
        if i  ~= #strings then
           wait(0.5)
      end
    end
    icon.Visible = false
    frame:TweenSize(UDim2.new(0,0,0,0))
    frame:TweenPosition(UDim2.new(0.5,0,0.75,0))
    wait(1)
    screengui:Destroy()
    pcall(callback)
["savediscord"] = function()

 end
end
}

local games = {
    [2986677229] = {
        ["name"] = "Giant Simulator",
        ["function"] = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DriftLeaks/xen-Hub/main/Scripts/giantsim.lua", true))()
        end
    },
    [155615604] = {
        ["name"] = "Prison Life",
        ["function"] = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DriftLeaks/ice-Hub/main/Scripts/PrisonLife.lua", true))()
        end
    },
    [3956818381] = {
        ["name"] = "â¡Ninja Legends",
        ["function"] = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DriftLeaks/xen-Hub/main/Scripts/ninjalegends.lua", true))()
        end
    },
    [3101667897] = {
        ["name"] = "Legends Of Speed â¡",
        ["function"] = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DriftLeaks/xen-Hub/main/Scripts/SpeedSim.lua", true))()
        end
    },
    [6284583030] = {
        ["name"] = "Pet Simulator X",
        ["function"] = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DriftLeaks/xen-Hub/main/Scripts/Psx.lua", true))()
        end
    },
    [7681451450] = {
        ["name"] = "Anime Simulator X",
        ["function"] = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DriftLeaks/xen-Hub/main/Scripts/animesimulatorx.lua", true))()
        end
    }
}

repeat wait(0.1) until Whitelisted == true do
    if games[game.PlaceId] then
        pcall(funcs.createUi, games[game.PlaceId]["name"], games[game.PlaceId]["function"])
        else
            warn("Not supported")
    end
end
