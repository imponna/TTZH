local SPXTOGGLE = loadstring(game:HttpGet"https://raw.githubusercontent.com/imponna/SPX-FreeTOGGLE-OPEN-CLOSE-GUI/main/SPX%20TOGGLE.lua")()
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("SPX-ChestFarm")

local serv = win:Server("เมนู", "")

local Tab1 = serv:Channel("เก็บกล่อง")

local Tab2 = serv:Channel("เครื่องมือ")

local Tab3 = serv:Channel("ESP")

local Tab4 = serv:Channel("Setting")

local Tab5 = serv:Channel("Teleport-Island")

local Tab6 = serv:Channel("Shop")

local Tab7 = serv:Channel("Players")

local L_5_ = game.PlaceId
if L_5_ == 2753915549 then
World1 = true
elseif L_5_ == 4442272183 then
World2 = true
elseif L_5_ == 7449423635 then
ThreeWorld = true
else
    game.Players.LocalPlayer:Kick("รันผิดเเมพรึป่าว ไอหนุ่ม")
end

Tab1:Toggle("ออโต้เก็บกล่อง",false, function(vu)
    Grab_Chest = vu
    T_P_H = vu
    _G.WalkWater = vu
    end)

if World2 then
Tab1:Button("Remove Lava",function()
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
    end)
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

Tab1:Toggle("ออโต้ต่อยกันเก็บไม่ติด",false, function(vu)
    _G.click = vu
    AutoEquiped = vu
    end)

Tab1:Button("หยุดบิน", function()
    topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    _G.Clip = false
    end)

Tab1:Label("Made By YT LocalPlayer! (LocalPlayer5757")

Tab2:Button("ร้านผล", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
    game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end)

Tab2:Button("สุ่มผล", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end)

Tab2:Button("สีฮาคิ", function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end)

Tab3:Toggle("ESPFruit",false, function(vu)
    DevilFruitESP = vu
    while DevilFruitESP do wait()
    UpdateDevilChams()
    end
    end)

Tab3:Toggle("ESPChest",false, function(vu)
    ChestESP = vu
    while ChestESP do wait()
    UpdateChestChams()
    end
    end)

Tab3:Toggle("ESP Island",false, function(vu)
    IslandESP = vu
    while IslandESP do wait()
    UpdateIslandESP()
    end
    end)

Tab3:Toggle("ToFruitSpawn",false, function(vu)
    _G.Grabfruit = vu
    end)

Tab3:Toggle("BringFruit",false, function(vu)
    _G.BringFruit = vu
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
    end)

Tab4:Toggle("No Clip",false, function(vu)
    _G.No_clip = vu
    end)

Tab4:Toggle("WalkWater",true, function(vu)
    _G.WalkWater = vu
    end)

Tab4:Seperator(" Joins ")

Tab4:Button("Join Pirates Team",function()
    local args = {
        [1] = "SetTeam",
        [2] = "Pirates"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BartiloQuestProgress"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)


Tab4:Button("Join Marines Team",function()
    local args = {
        [1] = "SetTeam",
        [2] = "Marines"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BartiloQuestProgress"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)

Tab5:Seperator(" Island ")

Tab5:Dropdown("World 1 Select Island!", {
    "WindMill",
    "Marine",
    "Middle Town",
    "Jungle",
    "Pirate Village",
    "Desert",
    "Snow Island",
    "MarineFord",
    "Colosseum",
    "Sky Island 1",
    "Sky Island 2",
    "Sky Island 3",
    "Prison",
    "Magma Village",
    "Under Water Island",
    "Fountain City",
    "Shank Room",
    "Mob Island"
}, function(value)
    _G.SelectIsland = value
    end)

Tab5:Dropdown("World 2 Select Island!", {
    "The Cafe",
    "Frist Spot",
    "Dark Area",
    "Flamingo Mansion",
    "Flamingo Room",
    "Green Zone",
    "Factory",
    "Colossuim",
    "Zombie Island",
    "Two Snow Mountain",
    "Punk Hazard",
    "Cursed Ship",
    "Ice Castle",
    "Forgotten Island",
    "Ussop Island",
    "Mini Sky Island"
}, function(value)
    _G.SelectIsland = value
    end)

Tab5:Dropdown("World 3 Select Island!", {
    "Mansion",
    "Port Town",
    "Great Tree",
    "Castle On The Sea",
    "MiniSky",
    "Hydra Island",
    "Floating Turtle",
    "Haunted Castle",
    "Ice Cream Island",
    "Peanut Island",
    "Cake Island",
    "Noname Island(New)"
}, function(value)
    _G.SelectIsland = value
    end)

Tab5:Toggle("Teleport-Island",false, function(value)
    _G.WalkWater = value
    _G.TeleportIsland = value
    if _G.TeleportIsland == true then
    repeat wait()
    if _G.SelectIsland == "WindMill" then
    topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
    elseif _G.SelectIsland == "Marine" then
    topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
    elseif _G.SelectIsland == "Middle Town" then
    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
    elseif _G.SelectIsland == "Jungle" then
    topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
    elseif _G.SelectIsland == "Pirate Village" then
    topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
    elseif _G.SelectIsland == "Desert" then
    topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
    elseif _G.SelectIsland == "Snow Island" then
    topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
    elseif _G.SelectIsland == "MarineFord" then
    topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
    elseif _G.SelectIsland == "Colosseum" then
    topos(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
    elseif _G.SelectIsland == "Sky Island 1" then
    topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
    elseif _G.SelectIsland == "Sky Island 2" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
    elseif _G.SelectIsland == "Sky Island 3" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
    elseif _G.SelectIsland == "Prison" then
    topos(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
    elseif _G.SelectIsland == "Magma Village" then
    topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
    elseif _G.SelectIsland == "Under Water Island" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    elseif _G.SelectIsland == "Fountain City" then
    topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
    elseif _G.SelectIsland == "Shank Room" then
    topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
    elseif _G.SelectIsland == "Mob Island" then
    topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
    elseif _G.SelectIsland == "The Cafe" then
    topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
    elseif _G.SelectIsland == "Frist Spot" then
    topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
    elseif _G.SelectIsland == "Dark Area" then
    topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
    elseif _G.SelectIsland == "Flamingo Mansion" then
    topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
    elseif _G.SelectIsland == "Flamingo Room" then
    topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
    elseif _G.SelectIsland == "Green Zone" then
    topos(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
    elseif _G.SelectIsland == "Factory" then
    topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
    elseif _G.SelectIsland == "Colossuim" then
    topos(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
    elseif _G.SelectIsland == "Zombie Island" then
    topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
    elseif _G.SelectIsland == "Two Snow Mountain" then
    topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
    elseif _G.SelectIsland == "Punk Hazard" then
    topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
    elseif _G.SelectIsland == "Cursed Ship" then
    topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
    elseif _G.SelectIsland == "Ice Castle" then
    topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
    elseif _G.SelectIsland == "Forgotten Island" then
    topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
    elseif _G.SelectIsland == "Ussop Island" then
    topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
    elseif _G.SelectIsland == "Mini Sky Island" then
    topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
    elseif _G.SelectIsland == "Great Tree" then
    topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
    elseif _G.SelectIsland == "Castle On The Sea" then
    topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
    elseif _G.SelectIsland == "MiniSky" then
    topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
    elseif _G.SelectIsland == "Port Town" then
    topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
    elseif _G.SelectIsland == "Hydra Island" then
    topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
    elseif _G.SelectIsland == "Floating Turtle" then
    topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
    elseif _G.SelectIsland == "Mansion" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
    elseif _G.SelectIsland == "Haunted Castle" then
    topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
    elseif _G.SelectIsland == "Ice Cream Island" then
    topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
    elseif _G.SelectIsland == "Peanut Island" then
    topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
    elseif _G.SelectIsland == "Cake Island" then
    topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
    elseif _G.SelectIsland == "Noname Island(New)" then
    topos(CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677))
    end
    until not _G.TeleportIsland
    end
    StopTween(_G.TeleportIsland)
    end)

Tab6:Seperator(" Abilities ")

Tab6:Button("Buy Geppo",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
    end)

Tab6:Button("Buy Buso Haki",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
    end)

Tab6:Button("Buy Soru",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    end)

Tab6:Button("Buy Observation(Ken) Haki",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
    end)

Tab6:Seperator(" Fighting Style ")

Tab6:Button("Buy Black Leg",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end)

Tab6:Button("Buy Electro",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end)

Tab6:Button("Buy Fishman Karate",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end)

Tab6:Button("Buy Dragon Claw",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
    end)

Tab6:Button("Buy Superhuman",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end)

Tab6:Button("Buy Death Step",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end)

Tab6:Button("Buy Sharkman Karate",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end)

Tab6:Button("Buy Electric Claw",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end)

Tab6:Button("Buy Dragon Talon",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end)
Tab6:Button("Buy GodHuman",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end)
-----Tab6----------------
Tab6:Seperator(" Accessory ")

Tab6:Button("Tomoe Ring",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
    end)

Tab6:Button("Black Cape",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
    end)

Tab6:Button("Swordsman Hat",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
    end)

Tab6:Seperator(" Sword ")

Tab6:Button("Cutlass",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
    end)

Tab6:Button("Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
    end)

Tab6:Button("Iron Mace",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
    end)

Tab6:Button("Duel Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
    end)

Tab6:Button("Triple Katana", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
    end)

Tab6:Button("Pipe",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
    end)

Tab6:Button("Dual Headed Blade",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
    end)

Tab6:Button("Bisento",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
    end)

Tab6:Button("Soul Cane",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
    end)

Tab6:Seperator(" Gun ")

Tab6:Button("Slingshot",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
    end)

Tab6:Button("Musket",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
    end)

Tab6:Button("Flintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
    end)

Tab6:Button("Refined Flintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
    end)

Tab6:Button("Cannon",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
    end)

Tab6:Button("Kabucha",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
    end)

Tab6:Button("Race Reroll",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,3)
    end)

Tab7:Seperator(" Combats ")

Playerslist = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
table.insert(Playerslist,v.Name)
end

local SelectedPly = Tab7:Dropdown("Select Players",Playerslist,function(value)
    _G.Select_Player = value
    end)

Tab7:Button("Refresh Player",function()
    Playerslist = {}
    SelectedPly:Clear()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
    SelectedPly:Add(v.Name)
    end
    end)

Tab7:Toggle("Spectate Player",false,function(value)
    _G.Spectate_Player = value
    end)


spawn(function()
    while wait() do
    if _G.Spectate_Player then
    pcall(function()
        if game.Players:FindFirstChild(_G.Select_Player) then
        game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(_G.Select_Player).Character.Humanoid
        end
        end)
    else
        game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    end
    end
    end)

Tab7:Toggle("Teleport to Player",false,function(value)
    _G.Teleport_to_Player = value
    StopTween(_G.Teleport_to_Player)
    end)


spawn(function()
    while wait() do
    if _G.Teleport_to_Player then
    pcall(function()
        if game.Players:FindFirstChild(_G.Select_Player) then
        topos(game.Players[_G.Select_Player].Character.HumanoidRootPart.CFrame)
        end
        end)
    end
    end
    end)

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

spawn(function()
    while wait(.1) do
    pcall(function()
        if Grab_Chest then
        if T_P_H then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
        TP2(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
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
        repeat wait(.1)
        TP(_G.Chest_100.CFrame)
        until not _G.Chest_100.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_500.CFrame)
        until not _G.Chest_500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_1000 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_1000.CFrame)
        until not _G.Chest_1000.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_1500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_1500.CFrame)
        until not _G.Chest_1500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_2000 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_2000.CFrame)
        until not _G.Chest_2000.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_2500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_2500.CFrame)
        until not _G.Chest_2500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_3500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_3500.CFrame)
        until not _G.Chest_3500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_4500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_4500.CFrame)
        until not _G.Chest_4500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_5500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_5500.CFrame)
        until not _G.Chest_5500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_6500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_6500.CFrame)
        until not _G.Chest_6500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_7500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_7500.CFrame)
        until not _G.Chest_7500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_9500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_9500.CFrame)
        until not _G.Chest_9500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_10500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_10500.CFrame)
        until not _G.Chest_10500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_12500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_12500.CFrame)
        until not _G.Chest_12500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_15500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_15500.CFrame)
        until not _G.Chest_15500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_17500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_17500.CFrame)
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
        repeat wait(.1)
        TP(_G.Chest_100.CFrame)
        until not _G.Chest_100.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_500.CFrame)
        until not _G.Chest_500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_1000 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_1000.CFrame)
        until not _G.Chest_1000.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_1500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_1500.CFrame)
        until not _G.Chest_1500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_2000 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_2000.CFrame)
        until not _G.Chest_2000.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_2500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_2500.CFrame)
        until not _G.Chest_2500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_3500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_3500.CFrame)
        until not _G.Chest_3500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_4500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_4500.CFrame)
        until not _G.Chest_4500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_5500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_5500.CFrame)
        until not _G.Chest_5500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_6500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_6500.CFrame)
        until not _G.Chest_6500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_7500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_7500.CFrame)
        until not _G.Chest_7500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_9500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_9500.CFrame)
        until not _G.Chest_9500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_10500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_10500.CFrame)
        until not _G.Chest_10500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_12500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_12500.CFrame)
        until not _G.Chest_12500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_15500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_15500.CFrame)
        until not _G.Chest_15500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_17500 ~= nil then
        repeat wait(.1)
        TP(_G.Chest_17500.CFrame)
        until not _G.Chest_17500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        end
        end
        end
        end)
    end
    end)
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
end
end
end
function TP(P1)
if not _G.Stop_Tween then
local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
Speed = 100
if Distance < 250 then
Speed = 5000
elseif Distance < 500 then
Speed = 650
elseif Distance < 1000 then
Speed = 350
elseif Distance >= 1000 then
Speed = 250
end
Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
    CFrame = P1
})
if _G.Stop_Tween or Auto_Raid then
Tween:Cancel()
elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
Tween:Play()
end
end
end

function TP3(P1)
local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if Distance < 250 then
Speed = 10000
elseif Distance < 500 then
Speed = 500
elseif Distance < 1000 then
Speed = 250
elseif Distance >= 1000 then
Speed = 250
end
game:GetService("TweenService"):Create(
    game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
    {
        CFrame = P1
    }
):Play()
if _G.Stop_Tween then
game:GetService("TweenService"):Create(
    game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
    {
        CFrame = P1
    }
):Cancel()
end
end

function TP2(P1)
local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if Distance < 150 then
Speed = 5000
elseif Distance < 200 then
Speed = 1500
elseif Distance < 300 then
Speed = 800
elseif Distance < 500 then
Speed = 500
elseif Distance < 1000 then
Speed = 250
elseif Distance >= 1000 then
Speed = 250
end
game:GetService("TweenService"):Create(
    game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
    {
        CFrame = P1
    }
):Play()
if _G.Stop_Tween then
game:GetService("TweenService"):Create(
    game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
    {
        CFrame = P1
    }
):Cancel()
end
_G.Clip = true
wait(Distance/Speed)
_G.Clip = false
end
function topos(Pos)
Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear), {
    CFrame = Pos
}) end)
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
if game.PlaceId == 2753915549 then
World1 = true
elseif game.PlaceId == 4442272183 then
World2 = true
elseif game.PlaceId == 7449423635 then
World3 = true
end
function UpdateBfEsp()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
pcall(function()
    if DevilFruitESP then
    if string.find(v.Name, "Fruit") then
    if not v.Handle:FindFirstChild('NameEsp'..Number) then
    local bill = Instance.new('BillboardGui',v.Handle)
    bill.Name = 'NameEsp'..Number
    bill.ExtentsOffset = Vector3.new(0, 1, 0)
    bill.Size = UDim2.new(1,200,1,30)
    bill.Adornee = v.Handle
    bill.AlwaysOnTop = true
    local name = Instance.new('TextLabel',bill)
    name.Font = "Code"
    name.FontSize = "Size14"
    name.TextWrapped = true
    name.Size = UDim2.new(1,0,1,0)
    name.TextYAlignment = 'Top'
    name.BackgroundTransparency = 1
    name.TextStrokeTransparency = 0.5
    name.TextColor3 = Color3.fromRGB(255, 0, 0)
    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
    else
        v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
    end
    end
    else
        if v.Handle:FindFirstChild('NameEsp'..Number) then
    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
    end
    end
    end)
end
end


function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
pcall(function()
    if not isnil(v.Character) then
    if ESPPlayer then
    if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
    local bill = Instance.new('BillboardGui',v.Character.Head)
    bill.Name = 'NameEsp'..Number
    bill.ExtentsOffset = Vector3.new(0, 1, 0)
    bill.Size = UDim2.new(1,200,1,30)
    bill.Adornee = v.Character.Head
    bill.AlwaysOnTop = true
    local name = Instance.new('TextLabel',bill)
    name.Font = "GothamBold"
    name.FontSize = "Size14"
    name.TextWrapped = true
    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
    name.Size = UDim2.new(1,0,1,0)
    name.TextYAlignment = 'Top'
    name.BackgroundTransparency = 1
    name.TextStrokeTransparency = 0.5
    if v.Team == game.Players.LocalPlayer.Team then
    name.TextColor3 = Color3.new(0,255,0)
    else
        name.TextColor3 = Color3.new(255,0,0)
    end
    else
        v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
    end
    else
        if v.Character.Head:FindFirstChild('NameEsp'..Number) then
    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
    end
    end
    end
    end)
end
end
function UpdateChestChams()
for i,v in pairs(game.Workspace:GetChildren()) do
pcall(function()
    if string.find(v.Name,"Chest") then
    if ChestESP then
    if string.find(v.Name,"Chest") then
    if not v:FindFirstChild('NameEsp'..Number) then
    local bill = Instance.new('BillboardGui',v)
    bill.Name = 'NameEsp'..Number
    bill.ExtentsOffset = Vector3.new(0, 1, 0)
    bill.Size = UDim2.new(1,200,1,30)
    bill.Adornee = v
    bill.AlwaysOnTop = true
    local name = Instance.new('TextLabel',bill)
    name.Font = "GothamBold"
    name.FontSize = "Size14"
    name.TextWrapped = true
    name.Size = UDim2.new(1,0,1,0)
    name.TextYAlignment = 'Top'
    name.BackgroundTransparency = 1
    name.TextStrokeTransparency = 0.5
    if v.Name == "Chest1" then
    name.TextColor3 = Color3.fromRGB(10, 224, 153)
    name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
    end
    if v.Name == "Chest2" then
    name.TextColor3 = Color3.fromRGB(10, 224, 153)
    name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
    end
    if v.Name == "Chest3" then
    name.TextColor3 = Color3.fromRGB(10, 224, 153)
    name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
    end
    else
        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
    end
    end
    else
        if v:FindFirstChild('NameEsp'..Number) then
    v:FindFirstChild('NameEsp'..Number):Destroy()
    end
    end
    end
    end)
end
end
function UpdateDevilChams()
for i,v in pairs(game.Workspace:GetChildren()) do
pcall(function()
    if DevilFruitESP then
    if string.find(v.Name, "Fruit") then
    if not v.Handle:FindFirstChild('NameEsp'..Number) then
    local bill = Instance.new('BillboardGui',v.Handle)
    bill.Name = 'NameEsp'..Number
    bill.ExtentsOffset = Vector3.new(0, 1, 0)
    bill.Size = UDim2.new(1,200,1,30)
    bill.Adornee = v.Handle
    bill.AlwaysOnTop = true
    local name = Instance.new('TextLabel',bill)
    name.Font = "GothamBold"
    name.FontSize = "Size14"
    name.TextWrapped = true
    name.Size = UDim2.new(1,0,1,0)
    name.TextYAlignment = 'Top'
    name.BackgroundTransparency = 1
    name.TextStrokeTransparency = 0.5
    name.TextColor3 = Color3.fromRGB(10, 224, 153)
    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
    else
        v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
    end
    end
    else
        if v.Handle:FindFirstChild('NameEsp'..Number) then
    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
    end
    end
    end)
end
end
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
function UpdateIslandESP()
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
pcall(function()
    if IslandESP then
    if v.Name ~= "Sea" then
    if not v:FindFirstChild('NameEsp') then
    local bill = Instance.new('BillboardGui',v)
    bill.Name = 'NameEsp'
    bill.ExtentsOffset = Vector3.new(0, 1, 0)
    bill.Size = UDim2.new(1,200,1,30)
    bill.Adornee = v
    bill.AlwaysOnTop = true
    local name = Instance.new('TextLabel',bill)
    name.Font = "GothamBold"
    name.FontSize = "Size14"
    name.TextWrapped = true
    name.Size = UDim2.new(1,0,1,0)
    name.TextYAlignment = 'Top'
    name.BackgroundTransparency = 1
    name.TextStrokeTransparency = 0.5
    name.TextColor3 = Color3.fromRGB(80, 245, 245)
    else
        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
    end
    end
    else
        if v:FindFirstChild('NameEsp') then
    v:FindFirstChild('NameEsp'):Destroy()
    end
    end
    end)
end
end
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
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.TeleportIsland or _G.Grabfruit then
            if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            local Noclip = Instance.new("BodyVelocity")
            Noclip.Name = "BodyClip"
            Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
            Noclip.MaxForce = Vector3.new(100000,100000,100000)
            Noclip.Velocity = Vector3.new(0,0,0)
            end
            else
                if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
            end
            end)
        end)
    end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.TeleportIsland or _G.Grabfruit then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
            v.CanCollide = false
            end
            end
            end
            end)
        end)
    end)