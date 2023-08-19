local ToggleSPX = game.CoreGui:FindFirstChild("ToggleSPX")

if ToggleSPX then
ToggleSPX:Destroy()
end

ToggleSPX = Instance.new("ScreenGui")
ToggleSPX.Name = "ToggleSPX"
ToggleSPX.Parent = game.CoreGui
ToggleSPX.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local ToggleS = Instance.new("TextButton")
ToggleS.Name = "ToggleS"
ToggleS.Parent = ToggleSPX
ToggleS.BackgroundColor3 = Color3.fromRGB(20, 235, 180)
ToggleS.Position = UDim2.new(0.01, 0, 0.13, 0)
ToggleS.Size = UDim2.new(0, 45, 0, 45)
ToggleS.Font = Enum.Font.SourceSansSemibold
ToggleS.Text = "SPX"
ToggleS.TextColor3 = Color3.fromRGB(0, 0, 0)
ToggleS.TextSize = 30.0

local UICorner = Instance.new("UICorner")
UICorner.Parent = ToggleS

ToggleS.MouseButton1Click:Connect(function()
    local Orion = game.CoreGui:FindFirstChild("Orion")
    if Orion then
    Orion.Enabled = not Orion.Enabled
    end
    end)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local L_5_ = game.PlaceId
if L_5_ == 2753915549 then
World1 = true
elseif L_5_ == 4442272183 then
World2 = true
elseif L_5_ == 7449423635 then
World3 = true
else
    game.Players.LocalPlayer:Kick("รันผิดเเมพรึป่าว ไอหนุ่ม")
end

function Pirates()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
end

Pirates()

local Window = OrionLib:MakeWindow({
    Name = "SPX", HidePremium = false, SaveConfig = true, ConfigFolder = "SPXTest"
})

local Main1 = Window:MakeTab({
    Name = "GrabChest",
    Icon = "rbxassetid://14457679352",
    PremiumOnly = false
})

local Shop = Window:MakeTab({
    Name = "SHOP",
    Icon = "rbxassetid://14457679352",
    PremiumOnly = false
})

local Setting = Window:MakeTab({
    Name = "Settings",
    Icon = "rbxassetid://14457679352",
    PremiumOnly = false
})

local Misc = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://14457679352",
    PremiumOnly = false
})

local Section = Main1:AddSection({
    Name = "Farm Chest"
})

Main1:AddToggle({
    Name = "Auto Farm Chest!",
    Default = false,
    Callback = function(vu)
    Grab_Chest = vu
    T_P_H = vu
    _G.WalkWater = vu
    AutoEquiped = vu
    end
})

if World2 then

Main1:AddButton({
    Name = "Remove Lava!",
    Callback = function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "Lava" then
    v:Destroy()
    end
    end
    for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
    if v.Name == "Lava" then
    v:Destroy()
    end
    end
    end
})
end

spawn(function()
    while task.wait() do
    pcall(function()
        if _G.WalkWater then
        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
        else
            game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
        end
        end)
    end
    end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.click then
        pcall(function()
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
        end)
    end)

spawn(function()
    while wait(0.05) do
    pcall(function()
        for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        local playerPos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
        if (v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3") and (v.Position - playerPos).Magnitude <= 6 then
        _G.Chest_100 = v
        _G.Chest_500 = v
        _G.Chest_1000 = v
        _G.Chest_1500 = v
        _G.Chest_2000 = v
        _G.Chest_2500 = v
        _G.Chest_3500 = v
        _G.Chest_4500 = v
        _G.Chest_5500 = v
        _G.Chest_6500 = v
        _G.Chest_7500 = v
        _G.Chest_9500 = v
        _G.Chest_10500 = v
        _G.Chest_12500 = v
        _G.Chest_15500 = v
        _G.Chest_17500 = v
        game:GetService('VirtualUser'):Button1Down(Vector2.new(0, 1))
        print("Found and clicked a chest")
        return
        end
        end
        end)
    end
    end)

Main1:AddButton({
    Name = "Stop Teleport!",
    Callback = function()
    topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    _G.Clip = false
    end
})

Main1:AddLabel("Made By YT LocalPlayer! (LocalPlayer5757")

Main1:AddButton({
    Name = "RandomFruit!",
    Callback = function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end
})

Main1:AddToggle({
    Name = "Bring Fruit!",
    Default = false,
    Callback = function(value)
    _G.BringFruit = value
    pcall(function()
        while _G.BringFruit do wait(.1)
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v:IsA("Tool") then
        local OldCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame * CFrame.new(0,0,8)
        v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(.1)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
        end
        end
        end
        end)
    end
})

Main1:AddToggle({
    Name = "Teleport Fruit Spawn!",
    Default = false,
    Callback = function(value)
    _G.Grabfruit = value
    end
})

spawn(function()
    while wait(.1) do
    if _G.Grabfruit then
    for i,v in pairs(game.Workspace:GetChildren()) do
    if string.find(v.Name, "Fruit") then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
    end
    end
    end
    end
    end)

local Section = Shop:AddSection({
    Name = "SHOP"
})

Shop:AddButton({
    Name = "FruitShop!",
    Callback = function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
    game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
})

Shop:AddButton({
    Name = "RandomFruit!",
    Callback = function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end
})

Shop:AddButton({
    Name = "ColorsAura!",
    Callback = function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end
})

local Section = Setting:AddSection({
    Name = "Settings"
})

Setting:AddToggle({
    Name = "No Clip!",
    Default = false,
    Callback = function(vu)
    _G.No_clip = vu
    end
})

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.No_clip then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
            v.CanCollide = false
            end
            end
            end
            end)
        end)
    end)

Setting:AddToggle({
    Name = "WalkWater!",
    Default = true,
    Callback = function(value)
    _G.WalkWater = value
    end
})

local Section = Misc:AddSection({
    Name = "Joins"
})

Misc:AddButton({
    Name = "Join Pirates Team!",
    Callback = function()
    local args = {
        [1] = "SetTeam",
        [2] = "Pirates"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BartiloQuestProgress"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

Misc:AddButton({
    Name = "Join Marines Team!",
    Callback = function()
    local args = {
        [1] = "SetTeam",
        [2] = "Marines"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BartiloQuestProgress"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

require(game.ReplicatedStorage.Util.CameraShaker):Stop()

function CR ()
require(game:GetService("ReplicatedStorage").Notification).new("จัดทำโดย  YT LocalPlayer5757 !"):Display();
wait()
setthreadcontext(5)
end

CR()

spawn(function()
    while wait() do
    if AutoEquiped then
    pcall(function()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ToolTip == "Melee" and v:IsA('Tool') then
        local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
        end
        end
        end)
    end
    end
    end)

function YT()
game.StarterGui:SetCore("SendNotification", {
    Title = "SPX Notification",
    Text = "YT-LocalPlayer5757",
    Icon = "rbxassetid://14457679352",
    Duration = 5
})
end

YT()

spawn(function()
    while wait(0.05) do
    pcall(function()
        if Grab_Chest then
        if T_P_H then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
        topos(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
        H_F = true
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
        wait(3)
        else
            _G.Chest_100 = nil
        _G.Chest_500 = nil
        _G.Chest_1000 = nil
        _G.Chest_1500 = nil
        _G.Chest_2000 = nil
        _G.Chest_2500 = nil
        _G.Chest_3500 = nil
        _G.Chest_4500 = nil
        _G.Chest_5500 = nil
        _G.Chest_6500 = nil
        _G.Chest_7500 = nil
        _G.Chest_9500 = nil
        _G.Chest_10500 = nil
        _G.Chest_12500 = nil
        _G.Chest_15500 = nil
        _G.Chest_17500 = nil
        Chest_100()
        Chest_500()
        Chest_1000()
        Chest_1500()
        Chest_2000()
        Chest_2500()
        Chest_3500()
        Chest_4500()
        Chest_5500()
        Chest_6500()
        Chest_7500()
        Chest_9500()
        Chest_10500()
        Chest_12500()
        Chest_15500()
        Chest_17500()
        if _G.Chest_100 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_100.CFrame)
        until not _G.Chest_100.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_500.CFrame)
        until not _G.Chest_500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_1000 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_1000.CFrame)
        until not _G.Chest_1000.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_1500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_1500.CFrame)
        until not _G.Chest_1500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_2000 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_2000.CFrame)
        until not _G.Chest_2000.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_2500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_2500.CFrame)
        until not _G.Chest_2500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_3500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_3500.CFrame)
        until not _G.Chest_3500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_4500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_4500.CFrame)
        until not _G.Chest_4500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_5500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_5500.CFrame)
        until not _G.Chest_5500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_6500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_6500.CFrame)
        until not _G.Chest_6500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_7500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_7500.CFrame)
        until not _G.Chest_7500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_9500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_9500.CFrame)
        until not _G.Chest_9500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_10500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_10500.CFrame)
        until not _G.Chest_10500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_12500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_12500.CFrame)
        until not _G.Chest_12500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_15500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_15500.CFrame)
        until not _G.Chest_15500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_17500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_17500.CFrame)
        until not _G.Chest_17500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        end
        end
        else

            _G.Chest_100 = nil
        _G.Chest_500 = nil
        _G.Chest_1000 = nil
        _G.Chest_1500 = nil
        _G.Chest_2000 = nil
        _G.Chest_2500 = nil
        _G.Chest_3500 = nil
        _G.Chest_4500 = nil
        _G.Chest_5500 = nil
        _G.Chest_6500 = nil
        _G.Chest_7500 = nil
        _G.Chest_9500 = nil
        _G.Chest_10500 = nil
        _G.Chest_12500 = nil
        _G.Chest_15500 = nil
        _G.Chest_17500 = nil
        Chest_100()
        Chest_500()
        Chest_1000()
        Chest_1500()
        Chest_2000()
        Chest_2500()
        Chest_3500()
        Chest_4500()
        Chest_5500()
        Chest_6500()
        Chest_7500()
        Chest_9500()
        Chest_10500()
        Chest_12500()
        Chest_15500()
        Chest_17500()
        if _G.Chest_100 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_100.CFrame)
        until not _G.Chest_100.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_500.CFrame)
        until not _G.Chest_500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_1000 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_1000.CFrame)
        until not _G.Chest_1000.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_1500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_1500.CFrame)
        until not _G.Chest_1500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_2000 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_2000.CFrame)
        until not _G.Chest_2000.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_2500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_2500.CFrame)
        until not _G.Chest_2500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_3500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_3500.CFrame)
        until not _G.Chest_3500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_4500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_4500.CFrame)
        until not _G.Chest_4500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_5500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_5500.CFrame)
        until not _G.Chest_5500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_6500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_6500.CFrame)
        until not _G.Chest_6500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_7500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_7500.CFrame)
        until not _G.Chest_7500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_9500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_9500.CFrame)
        until not _G.Chest_9500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_10500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_10500.CFrame)
        until not _G.Chest_10500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_12500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_12500.CFrame)
        until not _G.Chest_12500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_15500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_15500.CFrame)
        until not _G.Chest_15500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_17500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_17500.CFrame)
        until not _G.Chest_17500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        end
        end
        end
        end)
    end
    end)

function topos(Pos)
local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
local Speed = 100
local EasingStyle = Enum.EasingStyle.Linear -- ลองเปลี่ยนเป็นอีกแบบถ้าต้องการ

if Distance < 250 then
Speed = 5000
elseif Distance < 500 then
Speed = 650
elseif Distance < 1000 then
Speed = 350
elseif Distance >= 1000 then
Speed = 250
end

if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
game.Players.LocalPlayer.Character.Humanoid.Sit = false
end

local tweenInfo = TweenInfo.new(Distance/Speed, EasingStyle)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweenInfo, {
    CFrame = Pos
})

tween:Play()

if Distance <= 250 then
tween:Cancel()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
end

if _G.StopTween == true then
tween:Cancel()
_G.Clip = false
end
end

function GetDistance(target)
return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end


function StopTween(target)
if not target then
_G.StopTween = true
wait()
topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
end
_G.StopTween = false
_G.Clip = false
end
end

function Chest_100()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
_G.Chest_100 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
_G.Chest_100 = v
return
end
end
end
function Chest_500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
_G.Chest_500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
_G.Chest_500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
_G.Chest_500 = v
return
end
end
end
function Chest_1000()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
_G.Chest_1000 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
_G.Chest_1000 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
_G.Chest_1000 = v
return
end
end
end
function Chest_1500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
_G.Chest_1500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
_G.Chest_1500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
_G.Chest_1500 = v
return
end
end
end
function Chest_2000()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
_G.Chest_2000 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
_G.Chest_2000 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
_G.Chest_2000 = v
return
end
end
end
function Chest_2500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
_G.Chest_2500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
_G.Chest_2500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
_G.Chest_2500 = v
return
end
end
end
function Chest_3500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3500 then
_G.Chest_3500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3500 then
_G.Chest_3500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3500 then
_G.Chest_3500 = v
return
end
end
end
function Chest_4500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
_G.Chest_4500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
_G.Chest_4500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
_G.Chest_4500 = v
return
end
end
end
function Chest_5500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5500 then
_G.Chest_5500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5500 then
_G.Chest_5500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5500 then
_G.Chest_5500 = v
return
end
end
end
function Chest_6500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6500 then
_G.Chest_6500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6500 then
_G.Chest_6500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6500 then
_G.Chest_6500 = v
return
end
end
end
function Chest_7500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7500 then
_G.Chest_7500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7500 then
_G.Chest_7500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7500 then
_G.Chest_7500 = v
return
end
end
end
function Chest_9500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 9500 then
_G.Chest_9500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 9500 then
_G.Chest_9500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 9500 then
_G.Chest_9500 = v
return
end
end
end
function Chest_10500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10500 then
_G.Chest_10500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10500 then
_G.Chest_10500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10500 then
_G.Chest_10500 = v
return
end
end
end
function Chest_12500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12500 then
_G.Chest_12500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12500 then
_G.Chest_12500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12500 then
_G.Chest_12500 = v
return
end
end
end
function Chest_15500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15500 then
_G.Chest_15500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15500 then
_G.Chest_15500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15500 then
_G.Chest_15500 = v
return
end
end
end
function Chest_17500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 17500 then
_G.Chest_17500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 17500 then
_G.Chest_17500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 17500 then
_G.Chest_17500 = v
return
end
end
end