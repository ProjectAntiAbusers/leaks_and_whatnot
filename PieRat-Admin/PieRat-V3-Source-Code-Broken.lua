-- Credits to kinnyy<3#0001 who passed me it. --
warn("jnz here, this is a broken piece of shit, I had to comment out some things, and change his silent aim to make it even run, the gui is not accessible but I think the commands are fine.")

if not nil then
  print("Enjoy ;D")
end

warn("Version V3.0.2")
Instance.new("ScreenGui").Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Instance.new("ScreenGui").ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Instance.new("Frame").Parent, Instance.new("Frame").Name = Instance.new("ScreenGui"), "Frame 1"
Instance.new("Frame").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("Frame").Position = UDim2.new(0,562693059, 0, 0,514898717, 0)
Instance.new("Frame").Size = UDim2.new(0, 677, 0, 326)
Instance.new("Frame").Visible = true
Instance.new("Frame").Active = true
Instance.new("TextLabel").Parent, Instance.new("UICorner").Parent, Instance.new("Frame").Draggable = Instance.new("Frame"), Instance.new("Frame"), true
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").Position = UDim2.new(0,228291571, 0, 0,0216606501, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 330, 0, 13)
Instance.new("TextLabel").Font = Enum.Font.GothamBlack
Instance.new("TextLabel").Text = "PieRat Admin Gui"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("ScrollingFrame").Parent, Instance.new("TextLabel").TextSize = Instance.new("Frame"), 14
Instance.new("ScrollingFrame").Active = true
Instance.new("ScrollingFrame").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("ScrollingFrame").BorderColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("ScrollingFrame").Position = UDim2.new(0,0139372824, 0, 0,0216606501, 0)
Instance.new("ScrollingFrame").Size = UDim2.new(0, 137, 0, 261)
Instance.new("ScrollingFrame").ScrollBarThickness = 8
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("ScrollingFrame"), "toggles bar"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0218978152, 0, 0,0207062531, 0)
Instance.new("TextButton").Size = UDim2.new(0, 111, 0, 20)
Instance.new("TextButton").Font = Enum.Font.GothamBlack
Instance.new("TextButton").Text = "Toggles"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = true
  vb.Visible = false
  vc.Visible = false
  vd.Visible = false
  ve.Visible = false
  vg.Visible = false
  vh.Visible = false
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("ScrollingFrame"), "Local Functions bar"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0218978152, 0, 0,0694427118, 0)
Instance.new("TextButton").Size = UDim2.new(0, 111, 0, 20)
Instance.new("TextButton").Font = Enum.Font.GothamBlack
Instance.new("TextButton").Text = "Local Functions"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = false
  vb.Visible = true
  vc.Visible = false
  vd.Visible = false
  ve.Visible = false
  vg.Visible = false
  vh.Visible = false
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("ScrollingFrame"), "teleport bar"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0218978152, 0, 0,112387493, 0)
Instance.new("TextButton").Size = UDim2.new(0, 111, 0, 20)
Instance.new("TextButton").Font = Enum.Font.GothamBlack
Instance.new("TextButton").Text = "Teleports"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = false
  vb.Visible = false
  vc.Visible = true
  vd.Visible = false
  ve.Visible = false
  vg.Visible = false
  vh.Visible = false
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("ScrollingFrame"), "Teams bar"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0218978152, 0, 0,154141828, 0)
Instance.new("TextButton").Size = UDim2.new(0, 111, 0, 20)
Instance.new("TextButton").Font = Enum.Font.GothamBlack
Instance.new("TextButton").Text = "Teams"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = false
  vb.Visible = false
  vc.Visible = false
  vd.Visible = true
  ve.Visible = false
  vg.Visible = false
  vh.Visible = false
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("ScrollingFrame"), "Commands bar"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0218978152, 0, 0,197086617, 0)
Instance.new("TextButton").Size = UDim2.new(0, 111, 0, 20)
Instance.new("TextButton").Font = Enum.Font.GothamBlack
Instance.new("TextButton").Text = "Commands"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = false
  vb.Visible = false
  vc.Visible = false
  vd.Visible = false
  ve.Visible = true
  vg.Visible = false
  vh.Visible = false
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("ScrollingFrame"), "Player bar"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0219999999, 0, 0,239999995, 0)
Instance.new("TextButton").Size = UDim2.new(0, 111, 0, 20)
Instance.new("TextButton").Font = Enum.Font.GothamBlack
Instance.new("TextButton").Text = "Player"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = false
  vb.Visible = false
  vc.Visible = false
  vd.Visible = false
  ve.Visible = false
  vg.Visible = true
  vh.Visible = false
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("ScrollingFrame"), "KeyBinds bar"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0219999999, 0, 0,281411052, 0)
Instance.new("TextButton").Size = UDim2.new(0, 111, 0, 20)
Instance.new("TextButton").Font = Enum.Font.GothamBlack
Instance.new("TextButton").Text = "KeyBinds"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = false
  vb.Visible = false
  vc.Visible = false
  vd.Visible = false
  ve.Visible = false
  vg.Visible = false
  vh.Visible = true
end)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").Name = Instance.new("Frame"), "Toggles Not Scr"
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,2277008, 0, 0,122274481, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 510, 0, 265)
Instance.new("TextLabel").Visible = false
Instance.new("TextLabel").Font = Enum.Font.SourceSans
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").TextSize = 14
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "On autore"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0124960672, 0, 0,0446880311, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Visible = false
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Auto Respawn"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(148, 173, 19)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = false
  vb.Visible = true
  _G.AutoRe = false
  while _G.AutoRe == true do
    wait(0,1)
    if game:GetService("Workspace")[game.Players.LocalPlayer.Name].Humanoid.Health == 0 then
      saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
      game:GetService("Workspace").Remote.loadchar:InvokeServer("LocalPlayer")
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
    end
  end
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "off autore"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0120000001, 0, 0,0450000018, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Auto Respawn"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(173, 0, 2)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = true
  vb.Visible = false
  _G.AutoRe = true
  while _G.AutoRe == true do
    wait(0,1)
    if game:GetService("Workspace")[game.Players.LocalPlayer.Name].Humanoid.Health == 0 then
      saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
      game:GetService("Workspace").Remote.loadchar:InvokeServer("LocalPlayer")
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
    end
  end
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "off autoguns"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,243527085, 0, 0,047021538, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "AutoGuns(swat)"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(173, 0, 2)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = false
  vb.Visible = true
  _G.Aguns = true
  while _G.Aguns == true do
    wait(0,1)
    Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
    Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver.M4A1.ITEMPICKUP)
    Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
  end
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "on autoguns"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,243527085, 0, 0,047021538, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Visible = false
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "AutoGuns(swat)"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(148, 173, 19)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = true
  vb.Visible = false
  _G.Aguns = false
  while _G.Aguns == true do
    wait(0,1)
    Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
    Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver.M4A1.ITEMPICKUP)
    Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
  end
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "off autoguns free"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,476860404, 0, 0,047021538, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "AutoGuns(Free)"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(173, 0, 2)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = false
  vb.Visible = true
  _G.Agunsfr = true
  while _G.Agunsfr == true do
    wait(0,1)
    Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
    Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
  end
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "on autoguns free"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,476860404, 0, 0,047021538, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Visible = false
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "AutoGuns(Free)"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(148, 173, 19)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = true
  vb.Visible = false
  _G.Agunsfr = false
  while _G.Agunsfr == true do
    wait(0,1)
    Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
    Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
  end
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "off rapid punch"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,706272185, 0, 0,047021538, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Rapid Punch"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(173, 0, 2)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = false
  vb.Visible = true
  _G.toggle = true
  while _G.toggle == true do
    wait()
    getsenv(game:GetService("Players").LocalPlayer.Character.ClientInputHandler).cs.isFighting = false
  end
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "on rapid punch"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,706272185, 0, 0,047021538, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Visible = false
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Rapid Punch"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(148, 173, 19)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = true
  vb.Visible = false
  _G.toggle = false
  while _G.toggle == true do
    wait()
    getsenv(game:GetService("Players").LocalPlayer.Character.ClientInputHandler).cs.isFighting = false
  end
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "off antibring"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0101937652, 0, 0,209285691, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "AntiBring"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(173, 0, 2)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = false
  vb.Visible = true
  _G.AntiBring = true
  for fl, fm in pairs(game:GetService("Players"):GetPlayers()) do
    (function(a)
      spawn(function()
        wait()
        va:WaitForChild("Backpack", -9223372036854775808)
        repeat
          wait()
        until not va
        if va ~= game.Players.LocalPlayer then
          for fd, fe in pairs(va.Backpack:GetChildren()) do
            if fe ~= nil and not pairs(va.Backpack:GetChildren()) then
              vb(fe)
            end
          end
          for fd, fe in pairs(va.Character:GetChildren()) do
            if fe ~= nil and not pairs(va.Character:GetChildren()) then
              vb(fe)
            end
          end
          va.Backpack.ChildAdded:Connect(function(a)
            if a ~= nil and not a then
              va(a)
            end
          end)
          va.Character.ChildAdded:Connect(function(a)
            if a ~= nil and not a then
              va(a)
            end
          end)
          va.CharacterAdded:Connect(function(a)
            va.Backpack.ChildAdded:Connect(function(a)
              if a ~= nil and a:IsA("Tool") then
                va(a)
              end
            end)
            va.Character.ChildAdded:Connect(function(a)
              if a ~= nil and a:IsA("Tool") then
                va(a)
              end
            end)
          end)
        end
      end)
    end)(fm)
  end
  game:GetService("Players").PlayerAdded:Connect(function(a)
    va(a)
  end)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "on antibring"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0101937652, 0, 0,209285691, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Visible = false
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "AntiBring"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(148, 173, 19)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = true
  vb.Visible = false
  _G.AntiBring = false
  for fl, fm in pairs(game:GetService("Players"):GetPlayers()) do
    (function(a)
      spawn(function()
        wait()
        va:WaitForChild("Backpack", -9223372036854775808)
        repeat
          wait()
        until va.Character
        if va ~= game.Players.LocalPlayer then
          for fd, fe in pairs(va.Backpack:GetChildren()) do
            if fe ~= nil and fe:IsA("Tool") then
              vb(fe)
            end
          end
          for fd, fe in pairs(va.Character:GetChildren()) do
            if fe ~= nil and not pairs(va.Character:GetChildren()) then
              vb(fe)
            end
          end
          va.Backpack.ChildAdded:Connect(function(a)
            if a ~= nil and not a then
              va(a)
            end
          end)
          va.Character.ChildAdded:Connect(function(a)
            if a ~= nil and a:IsA("Tool") then
              va(a)
            end
          end)
          va.CharacterAdded:Connect(function(a)
            va.Backpack.ChildAdded:Connect(function(a)
              if a ~= nil and not a then
                va(a)
              end
            end)
            va.Character.ChildAdded:Connect(function(a)
              if a ~= nil and a:IsA("Tool") then
                va(a)
              end
            end)
          end)
        end
      end)
    end)(fm)
  end
  game:GetService("Players").PlayerAdded:Connect(function(a)
    va(a)
  end)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "off AntiFling"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,243527099, 0, 0,209285691, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "AntiFling"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(173, 0, 2)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = false
  vb.Visible = true
  _G.AntiFling = true
  while _G.AntiFling == true do
    wait(0,1)
    game:GetService("RunService").Heartbeat:Connect(function(a)
      va = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end)
  end
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "on AntiFling"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,243527099, 0, 0,209285691, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Visible = false
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "AntiFling"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(148, 173, 19)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = true
  vb.Visible = false
  _G.AntiFling = false
  while _G.AntiFling == true do
    wait(0,1)
    game:GetService("RunService").Heartbeat:Connect(function(a)
      va = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end)
  end
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "off Anticrash"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,476860434, 0, 0,209285691, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "AntiCrash"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(173, 0, 2)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = false
  vb.Visible = true
  game.Players.LocalPlayer.PlayerScripts.ClientGunReplicator.Disabled = true
  wait(0,1)
  warn("AntiCrash Working")
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "on Anticrash"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,476860434, 0, 0,209285691, 0)
Instance.new("TextButton").Size = UDim2.new(0, 108, 0, 28)
Instance.new("TextButton").Visible = false
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "AntiCrash"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(148, 173, 19)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  va.Visible = true
  vb.Visible = false
  game.Players.LocalPlayer.PlayerScripts.ClientGunReplicator.Disabled = false
end)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").Name = Instance.new("Frame"), "Loacl Funtcions Not Scr"
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,228, 0, 0,122000001, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 510, 0, 265)
Instance.new("TextLabel").Visible = false
Instance.new("TextLabel").Font = Enum.Font.SourceSans
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").TextSize = 14
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Respawn"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0313725509, 0, 0,0452830195, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Respawn"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game:GetService("Workspace").Remote.loadchar:InvokeServer(game.Players.LocalPlayer.Name)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "OnePunch"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,258823544, 0, 0,0452830195, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "OnePunch"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  loadstring(game:HttpGet("https://pastebin.com/raw/KxsPxqDV"))()
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Rejoin"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,482352942, 0, 0,0452830195, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Rejoin"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game:GetService("TeleportService"):Teleport(155615604, player)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Kill Cops"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,709803939, 0, 0,0452830195, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Kill Cops"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
  function getPacketFromPlayer(a)
    return {
      RayObject = Ray.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
      Distance = 0,
      Cframe = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
      Hit = a.Character.Head
    }
  end
  for fe, fg in pairs(game:GetService("Teams").Guards:GetPlayers()) do
    for fl = 1, 7 do
      table.insert({}, getPacketFromPlayer(fg))
    end
  end
  game:GetService("ReplicatedStorage").ShootEvent:FireServer({}, game.Players.LocalPlayer.Backpack["Remington 870"])
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Inf Ammo"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0313725509, 0, 0,192452833, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Inf Ammo"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  for fd = 1, math.huge do
    wait(1)
    pcall(function()
      game.ReplicatedStorage.ReloadEvent:FireServer((game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")))
      wait(0,5)
      for fe, fg in next, debug.getregistry() do
        if type(fg) == "table" and fg.Bullets then
          fg.CurrentAmmo = math.huge
          fg.MaxAmmo = math.huge
        end
      end
    end)
  end
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Guns"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,258823544, 0, 0,192452833, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Guns"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
  Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver.M4A1.ITEMPICKUP)
  Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Silent Aim"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,482352942, 0, 0,192452833, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Silent Aim"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  function ClosestChar()
    for fg, fh in pairs(va(vb)) do
      if fh ~= vc and fh.Team ~= vc.Team and fh.Character and not nil and ve(vg, vd(fh.Character, "Head").Position) and math.huge >= vh(ve(vg, vd(fh.Character, "Head").Position).X, ve(vg, vd(fh.Character, "Head").Position).Y) - vh(vj.X, vj.Y).Magnitude then
      end
    end
    return fh.Character
  end
  setreadonly(getrawmetatable(game), false)
  getrawmetatable(game).__namecall = newcclosure(function(a, ...)
    if getnamecallmethod() == "FindPartOnRay" and nil and tostring(getfenv(0).script) == "GunInterface" and ClosestChar() then
      return ClosestChar().Head, ClosestChar().Head.Position
    end
    return va(a, ...)
  end)
  setreadonly(getrawmetatable(game), true)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Anti Crim"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,709803939, 0, 0,192452833, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Anti Crim"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game:GetService("RunService").Stepped:Connect(function()
    pcall(function()
      if game:GetService("Players").LocalPlayer.Team == game:GetService("Teams").Criminals then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916,297546, 99,9900055, 2383,50928)
        wait(0)
        workspace.Remote.TeamEvent:FireServer("Bright blue")
        wait(0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916,297546, 99,9900055, 2383,50928)
        wait(0)
        workspace.Remote.TeamEvent:FireServer("Bright blue")
      end
    end)
  end)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Arrest All Crim"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0313725509, 0, 0,343396246, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Arrest All Crim"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  loadstring(game:HttpGet("https://pastebin.com/raw/0t94akfr"))()
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "PP Guns"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,258823544, 0, 0,343396217, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "PP Gun"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  for fd, fe in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if not pairs(game.Players.LocalPlayer.Character:GetChildren()) then
      fe.Parent = game.Players.LocalPlayer.Backpack
    end
  end
  workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
  game.Players.LocalPlayer.Backpack["Remington 870"].Parent = game.Players.LocalPlayer.Character
  wait()
  game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripPos = Vector3.new(-1, -1,1, 0)
  game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripUp = Vector3.new(0, -500, 1)
  game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripRight = Vector3.new(-500, 0, log14)
  wait()
  wait()
  for fd, fe in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if fe:IsA("Tool") then
      fe.Parent = game.Players.LocalPlayer.Backpack
    end
  end
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Crash Server"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,482352942, 0, 0,343396217, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Crash Server"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  workspace:WaitForChild("Remote").ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
  for fn = 1, 750 do
  end
  for fn = 1, 5 do
    game:GetService("ReplicatedStorage"):WaitForChild("ShootEvent"):FireServer({
      [fn] = {
        RayObject = Ray.new(Vector3.new(-1, -1, -1), Vector3.new(1, 1, 1)),
        Distance = 2048,
        Cframe = CFrame.new(0, 0, 0),
        Hit = workspace:FindFirstChildOfClass("Part")
      }
    }, game:GetService("Players").LocalPlayer.Backpack["Remington 870"])
  end
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Lag Server Swat"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,709803939, 0, 0,343396217, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Lag Server Swat"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game:GetService("RunService").Stepped:Connect(function()
    pcall(function()
      if game:GetService("Players").LocalPlayer.Team == game:GetService("Teams").Criminals then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916,297546, 99,9900055, 2383,50928)
        wait(0)
        workspace.Remote.TeamEvent:FireServer("Bright blue")
        wait(0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916,297546, 99,9900055, 2383,50928)
        wait(0)
        workspace.Remote.TeamEvent:FireServer("Bright blue")
      end
    end)
  end)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "KeyCard Finder"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0313725509, 0, 0,490566045, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "KeyCard Finder"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game.StarterGui:SetCore("SendNotification", {
    Title = "KeyCard Finder",
    Text = "Looking For Dropped KeyCards...",
    Duration = 1
  })
  game.StarterGui:SetCore("SendNotification", {
    Title = "KeyCard Finder",
    Text = "KeyCard Found!",
    Duration = 1
  })
  game.Workspace.Remote.ItemHandler:InvokeServer(unpack({
    [1] = Workspace.Prison_ITEMS.single:WaitForChild("Key card").ITEMPICKUP
  }))
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "AntiLoop Kill"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,258823544, 0, 0,490566045, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Anti Loop Kill"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  loadstring(game:HttpGet("https://pastebin.com/raw/zk80Q36V"))()
end)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").Name = Instance.new("Frame"), "Teleports Not Scr"
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,2277008, 0, 0,122274481, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 510, 0, 265)
Instance.new("TextLabel").Visible = false
Instance.new("TextLabel").Font = Enum.Font.SourceSans
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").TextSize = 14
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Nexus"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0235294253, 0, 0,0452830195, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Nexus"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879, 99, 2377)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "back"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,25686276, 0, 0,0452830195, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Back"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(980, 101, 2327)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Armory"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,488235295, 0, 0,0452830195, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Armory"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(798, 99, 2260)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Cells"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,715686262, 0, 0,0452830195, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Cells"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(910, 99, 2477)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Tower"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0235294253, 0, 0,188679248, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Tower"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795,592, 122,32, 2592,388)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Yard"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,25686276, 0, 0,188679248, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Yard"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779, 99, 2477)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Cafe"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,488235325, 0, 0,188679248, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Cafe"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879, 99, 2247)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Border"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,715686262, 0, 0,188679248, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Border"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(778,280029, 396,23996, 2674,35278, 0,998099327, 4,16638704E-06, -0,0616256408, 3,69708708E-08, 1, 6,82067985E-05, 0,0616256408, -6,80794183E-05, 0,998099327)
end)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").Name = Instance.new("Frame"), "Teams Not Scr"
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,2277008, 0, 0,122274481, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 510, 0, 265)
Instance.new("TextLabel").Visible = false
Instance.new("TextLabel").Font = Enum.Font.SourceSans
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").TextSize = 14
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Team Green"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0235294104, 0, 0,0452830195, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Team Green"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  workspace.Remote.loadchar:InvokeServer("", "Bright Green")
  wait()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Team Black"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,25686276, 0, 0,0452830195, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Team Black"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  workspace.Remote.loadchar:InvokeServer("", "Really black")
  wait()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Team Yellow"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,488235295, 0, 0,0452830195, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Team Yellow"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  workspace.Remote.loadchar:InvokeServer("", "333")
  wait()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Team Brown"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,715686262, 0, 0,0452830195, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Team Brown"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  workspace.Remote.loadchar:InvokeServer("", "Brown")
  wait()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Team Pink"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,0235294104, 0, 0,200000003, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Team Pink"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  workspace.Remote.loadchar:InvokeServer("", "Pink")
  wait()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Team Fog"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,25686276, 0, 0,200000003, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Team Fog"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  workspace.Remote.loadchar:InvokeServer("", "Fog")
  wait()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Team Blue"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,488235295, 0, 0,200000003, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Team Blue"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  workspace.Remote.loadchar:InvokeServer("", "Really blue")
  wait()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position)
end)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").Name = Instance.new("Frame"), "Commands Not Scr"
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,2277008, 0, 0,122274481, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 510, 0, 265)
Instance.new("TextLabel").Visible = false
Instance.new("TextLabel").Font = Enum.Font.SourceSans
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,0254901964, 0, 0,0452830195, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-autore <on/off>"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,315686285, 0, 0,0452830195, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-autoguns <on/off>"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,600000024, 0, 0,0452830195, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-Back"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,0254901946, 0, 0,196226418, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-Nexus"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,315686285, 0, 0,196226418, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-cafe"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,600000024, 0, 0,196226418, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-yard"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,0254901946, 0, 0,343396217, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-armory"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,315686285, 0, 0,343396217, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-tower"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,600000024, 0, 0,343396217, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-cells"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,0254901946, 0, 0,486792445, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-respawn"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,315686285, 0, 0,486792445, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-onepunch"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,600000024, 0, 0,486792445, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-fastpunch / fp"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,0254901946, 0, 0,637735844, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-lock / antitaze"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,315686285, 0, 0,637735844, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 133, 0, 28)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "-anticrash"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").TextSize = 14
Instance.new("TextLabel").Parent, Instance.new("TextLabel").Name = Instance.new("Frame"), "Player Not Scr"
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,2277008, 0, 0,122274481, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 510, 0, 265)
Instance.new("TextLabel").Visible = false
Instance.new("TextLabel").Font = Enum.Font.SourceSans
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").TextSize = 14
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Kill"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,272549033, 0, 0,184905648, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Kill"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextBox").Parent, Instance.new("TextButton").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextBox").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextBox").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextBox").Position = UDim2.new(0,30392158, 0, 0,0377358496, 0)
Instance.new("TextBox").Size = UDim2.new(0, 199, 0, 30)
Instance.new("TextBox").Font = Enum.Font.GothamSemibold
Instance.new("TextBox").PlaceholderColor3 = Color3.fromRGB(243, 24, 222)
Instance.new("TextBox").Text = "FULL NAME"
Instance.new("TextBox").TextColor3 = Color3.fromRGB(255, 14, 171)
Instance.new("TextBox").TextSize = 17
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Taze"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,521568596, 0, 0,184905648, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Taze"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").MouseButton1Down:connect(function()
  workspace.Remote.TeamEvent:FireServer("Bright blue")
  wait()
  game:GetService("Workspace").Remote.loadchar:InvokeServer(game.Players.LocalPlayer.Name)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position)
  wait()
  game:GetService("ReplicatedStorage").ShootEvent:FireServer({
    [1] = {
      RayObject = Ray.new(Vector3.new(829,838562, 101,489998, 2331,25635), Vector3.new(-30,6540909, -5,42795324, 95,0308533)),
      Distance = 15,355997085571,
      Cframe = CFrame.new(826,616699, 100,8508, 2340,11279, 0,964640439, -0,00993416365, -0,263382077, 9,31322575E-10, 0,999289393, -0,0376908854, 0,263569355, 0,0363581516, 0,963954985),
      Hit = game.Workspace[va.Text].Torso
    }
  }, game.Players.LocalPlayer.Backpack.Taser)
end)
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Bring"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,272549033, 0, 0,328301877, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Bring"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("TextButton").Parent, Instance.new("TextButton").Name = Instance.new("TextLabel"), "Kill"
Instance.new("TextButton").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextButton").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextButton").Position = UDim2.new(0,521568656, 0, 0,328301877, 0)
Instance.new("TextButton").Size = UDim2.new(0, 105, 0, 28)
Instance.new("TextButton").Font = Enum.Font.GothamSemibold
Instance.new("TextButton").Text = "Teleport"
Instance.new("TextButton").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextButton").TextSize = 14
Instance.new("ImageButton").Parent, Instance.new("ImageButton").Name = Instance.new("TextLabel"), "lock"
Instance.new("ImageButton").BackgroundTransparency = 1
Instance.new("ImageButton").Position = UDim2.new(0,521568656, 0, 0,337735832, 0)
Instance.new("ImageButton").Size = UDim2.new(0, 25, 0, 25)
Instance.new("ImageButton").ZIndex = 2
Instance.new("ImageButton").Image = "rbxassetid://3926305904"
Instance.new("ImageButton").ImageRectOffset = Vector2.new(4, 684)
Instance.new("ImageButton").ImageRectSize = Vector2.new(36, 36)
Instance.new("ImageButton").Parent, Instance.new("ImageButton").Name = Instance.new("ImageButton"), "lock"
Instance.new("ImageButton").BackgroundTransparency = 1
Instance.new("ImageButton").Position = UDim2.new(-5,0999999, 0, -1,49999988, 0)
Instance.new("ImageButton").Size = UDim2.new(0, 25, 0, 25)
Instance.new("ImageButton").ZIndex = 2
Instance.new("ImageButton").Image = "rbxassetid://3926305904"
Instance.new("ImageButton").ImageRectOffset = Vector2.new(4, 684)
Instance.new("ImageButton").ImageRectSize = Vector2.new(36, 36)
Instance.new("ImageButton").Parent, Instance.new("ImageButton").Name = Instance.new("TextLabel"), "lock"
Instance.new("ImageButton").BackgroundTransparency = 1
Instance.new("ImageButton").Position = UDim2.new(0,272549033, 0, 0,341509432, 0)
Instance.new("ImageButton").Size = UDim2.new(0, 25, 0, 25)
Instance.new("ImageButton").ZIndex = 2
Instance.new("ImageButton").Image = "rbxassetid://3926305904"
Instance.new("ImageButton").ImageRectOffset = Vector2.new(4, 684)
Instance.new("ImageButton").ImageRectSize = Vector2.new(36, 36)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").Name = Instance.new("Frame"), "KeyBinds Not Scr"
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,2277008, 0, 0,122274481, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 510, 0, 265)
Instance.new("TextLabel").Font = Enum.Font.SourceSans
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,0235294122, 0, 0,0452830195, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 151, 0, 32)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "G - To Open Gui"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").Parent, Instance.new("TextLabel").TextSize = Instance.new("TextLabel"), 14
Instance.new("TextLabel").BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("TextLabel").BorderColor3 = Color3.fromRGB(255, 0, 4)
Instance.new("TextLabel").Position = UDim2.new(0,0235294122, 0, 0,207547173, 0)
Instance.new("TextLabel").Size = UDim2.new(0, 151, 0, 32)
Instance.new("TextLabel").Font = Enum.Font.GothamSemibold
Instance.new("TextLabel").Text = "H - To Close Gui"
Instance.new("TextLabel").TextColor3 = Color3.fromRGB(218, 210, 255)
Instance.new("TextLabel").TextSize = 14
Char = game.Players.LocalPlayer.Character
Hum = Char.Humanoid
Char = game.Players.LocalPlayer.Character
Hum = Char.Humanoid
game.Players.LocalPlayer.Chatted:connect(function(a)
  if a:match("-autore on") then
    loadstring(game:HttpGet("https://pastebin.com/raw/XeeaEH8e"))()
  end
end)
Char = game.Players.LocalPlayer.Character
Hum = Char.Humanoid
game.Players.LocalPlayer.Chatted:connect(function(a)
  if not a then
    loadstring(game:HttpGet("https://pastebin.com/raw/cRGkbD4J"))()
  end
end)
Char = game.Players.LocalPlayer.Character
Hum = Char.Humanoid
game.Players.LocalPlayer.Chatted:connect(function(a)
  if not a then
    loadstring(game:HttpGet("https://pastebin.com/raw/b1qE8jgi"))()
  end
end)
game.Players.LocalPlayer.Chatted:connect(function(a)
  if not a then
    loadstring(game:HttpGet("https://pastebin.com/raw/HfHSXhX2"))()
  end
end)
Char = game.Players.LocalPlayer.Character
Hum = Char.Humanoid
game.Players.LocalPlayer.Chatted:connect(function(a)
  if a:match("-nex") then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879, 99, 2377)
  end
end)
Char = game.Players.LocalPlayer.Character
Hum = Char.Humanoid
game.Players.LocalPlayer.Chatted:connect(function(a)
  if a:match("-bac") then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(980, 101, 2327)
  end
end)
Char = game.Players.LocalPlayer.Character
Hum = Char.Humanoid
game.Players.LocalPlayer.Chatted:connect(function(a)
  if not a then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879, 99, 2247)
  end
end)
Char = game.Players.LocalPlayer.Character
Hum = Char.Humanoid
game.Players.LocalPlayer.Chatted:connect(function(a)
  if not a then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779, 99, 2477)
  end
end)
Char = game.Players.LocalPlayer.Character
Hum = Char.Humanoid
game.Players.LocalPlayer.Chatted:connect(function(a)
  if a:match("-arm") then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(798, 99, 2260)
  end
end)
game.Players.LocalPlayer.Chatted:connect(function(a)
  if not a then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795,592, 122,32, 2592,388)
  end
end)
game.Players.LocalPlayer.Chatted:connect(function(a)
  if a:match("-cel") then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(910, 99, 2477)
  end
end)
game.Players.LocalPlayer.Chatted:connect(function(a)
  if a:match("-antitaze") then
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
end)
game.Players.LocalPlayer.Chatted:connect(function(a)
  if a:match("-lock") then
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
end)
game.Players.LocalPlayer.Chatted:connect(function(a)
  if not a then
    game:GetService("TeleportService"):Teleport(155615604, player)
  end
end)
game.Players.LocalPlayer.Chatted:connect(function(a)
  if a:match("-rejoin") then
    game:GetService("TeleportService"):Teleport(155615604, player)
  end
end)
game.Players.LocalPlayer.Chatted:connect(function(a)
  if a:match("-re") then
    game:GetService("Workspace").Remote.loadchar:InvokeServer(game.Players.LocalPlayer.Name)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position)
  end
end)
game.Players.LocalPlayer.Chatted:connect(function(a)
  if not a then
    loadstring(game:HttpGet("https://pastebin.com/raw/KxsPxqDV"))()
  end
end)
game.Players.LocalPlayer.Chatted:connect(function(a)
  if not a then
    workspace:WaitForChild("Remote").ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
    for fr = 1, 750 do
    end
    for fr = 1, 5 do
      game:GetService("ReplicatedStorage"):WaitForChild("ShootEvent"):FireServer({
        [fr] = {
          RayObject = Ray.new(Vector3.new(-1, -1, -1), Vector3.new(1, 1, 1)),
          Distance = 2048,
          Cframe = CFrame.new(0, 0, 0),
          Hit = workspace:FindFirstChildOfClass("Part")
        }
      }, game:GetService("Players").LocalPlayer.Backpack["Remington 870"])
    end
  end
end)
game.Players.LocalPlayer.Chatted:connect(function(a)
  if a:match("-anticrash") then
    game.Players.LocalPlayer.PlayerScripts.ClientGunReplicator.Disabled = true
    wait(0,1)
    print("AntiCrash Working")
  end
end)
Instance.new("BindableFunction").OnInvoke = function(a)
  if a == "Button1 text" then
    print("Answer")
  elseif a == "Button2 text" then
    print("Answer2")
  end
end
game.StarterGui:SetCore("SendNotification", {
  Title = "PieRat V3",
  Text = "Welcome to PieRat Admin click G to open gui and H to close !",
  Icon = "",
  Duration = 20,
  Button1 = "Okay",
  Callback = Instance.new("BindableFunction")
})
bc = BrickColor.new("Dark stone grey")
game.StarterGui:SetCore("ChatMakeSystemMessage", {
  Text = "Welcome to PieRat Admin V3!",
  Font = Enum.Font.Cartoon,
  Color = bc.Color,
  FontSize = Enum.FontSize.Size96
})
game.Players.LocalPlayer.Chatted:connect(function(a)
  if not a then
    _G.toggle = true
    while _G.toggle == true do
      wait()
      getsenv(game:GetService("Players").LocalPlayer.Character.ClientInputHandler).cs.isFighting = false
    end
  end
end)
game.Players.LocalPlayer.Chatted:connect(function(a)
  if not a then
    _G.toggle = true
    while _G.toggle == true do
      wait()
      getsenv(game:GetService("Players").LocalPlayer.Character.ClientInputHandler).cs.isFighting = false
    end
  end
end)
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(a)
  if a == "g" then
    --va.Visible = true
  end
end)
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(a)
  if a == "h" then
    --va.Visible = false
  end
end)
