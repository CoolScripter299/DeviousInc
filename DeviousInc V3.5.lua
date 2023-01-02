local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Devious Inc V3.5", HidePremium = false,IntroText = "Prepare for mass deviousness...",IntroEnabled = true, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Infinite Yield

loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

-- tabs

local Toggles = Window:MakeTab({
	Name = "Toggles",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Healing = Window:MakeTab({
	Name = "AutoHeal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Binds = Window:MakeTab({
	Name = "Binding",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Buttons = Window:MakeTab({
    Name = "Buttons",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Farming = Window:MakeTab({
	Name = "Farming",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local GoldFarming = Window:MakeTab({
	Name = "Gold Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
	})

local TweenPlace = Window:MakeTab({
	Name = "Tween Points",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
	})

local Teleports = Window:MakeTab({
    Name = "Teleports",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Visuals = Window:MakeTab({
    Name = "Visuals",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Credits = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Old God Gui
local plr = game.Players.LocalPlayer
local mg = plr.PlayerGui.MainGui
local upd = mg.Panels.UpdateNotifier:Clone()
upd.Name = "OldGodNotifier"
upd.Parent = plr.PlayerGui.MainGui.Panels
local notif = plr.PlayerGui.MainGui.Panels:FindFirstChild('OldGodNotifier')
notif.Backdrop.ConfirmButton.TextLabel.Text = "YESSIR UWU!"
notif.Backdrop.ItemNameLabel.Text = "OLD GOD HAS SPAWNED!"
notif.Backdrop.ItemNameLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
notif.Backdrop.ItemDescription.Text = "Get to stepping."
notif.Backdrop.ImageLabel.Image = "http://www.roblox.com/Game/Tools/ThumbnailAsset.ashx?fmt=png&wd=420&ht=420&aid=15967519"notif.Backdrop.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
notif.Backdrop.ConfirmButton.MouseButton1Click:Connect(function()
    notif.Visible = false
end)

--Gloabls and important locals

_G.AutoShield = false
_G.AccurateBullet = false
_G.SafeLog = false
_G.NoStarve = false
_G.OldAFarm = false
_G.OldGodNotif = false
_G.AutoBlood = false
_G.AutoBloodVoid = false
_G.AutoEatNaked = false
_G.Essence = false
_G.AutoMine = false
_G.AutoPlace = false
_G.OpPlant = false
_G.AutoPlantPlace = false
_G.AutoPlantPickup = false
_G.GoldFarm = false
_G.IceAura = false
_G.AutoPickUpGold = false
_G.CoinpressGold = false
_G.TweenPoints = false
local amine = false
local toplant = 'None'

-- functions

function AutoShield()
    while _G.AutoShield == true do
        if _G.AutoShield == true then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 30 then 
                game:GetService("ReplicatedStorage").Events.VoodooSpell:FireServer("Energy Shield") -- W script
            end
            task.wait()
        end
    end
end

function AccurateBulletMain()
    while _G.AccurateBullet == true do
        wait()
        if game.Players.LocalPlayer.TeamColor == BrickColor.new("CGA brown") then
            game.Players.LocalPlayer.TeamColor = BrickColor.new("Really black")
        else
            function __IsPlayerNear()
                local dist = 230
                for _, a in pairs(game.Players:GetPlayers()) do
                    if a ~= game.Players.LocalPlayer and a.TeamColor ~= game.Players.LocalPlayer.TeamColor then
                        local realdistance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - a.Character.HumanoidRootPart.Position).magnitude
                        if realdistance < dist then
                        end
                    end
                end
                return true
            end
            function __ClosestPlayerToMouse()
                local target = nil
                local dist = math.huge
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= game.Players.LocalPlayer and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
                        local mouse = game.Players.LocalPlayer:GetMouse()
                        local screenpoint = game.Workspace.CurrentCamera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                        local playertomouse = (Vector2.new(mouse.X,mouse.Y) - Vector2.new(screenpoint.X,screenpoint.Y)).magnitude
                        if playertomouse < dist then
                            dist = playertomouse
                            target = v.Character.HumanoidRootPart.Position
                        end
                    end
                end
                return target
            end
        end
    end
end

function AccurateBullet()
    if _G.AccurateBullet == true then
        __ClosestPlayerToMouse()
        __IsPlayerNear()
        if __ClosestPlayerToMouse() and __IsPlayerNear() then
            game:GetService("ReplicatedStorage").Events.VoodooSpell:FireServer(__ClosestPlayerToMouse())
            game:GetService("ReplicatedStorage").Events.VoodooSpell:FireServer(__ClosestPlayerToMouse())
            game:GetService("ReplicatedStorage").Events.VoodooSpell:FireServer(__ClosestPlayerToMouse())
        end
    end
end

function SafeLog()
    while _G.SafeLog == true do 
        if _G.SafeLog == true then
            task.wait()
            if game.Players.LocalPlayer.Character.Head:FindFirstChild('LogNotice') == nil then
                wait()
                if game.Players.LocalPlayer.Character.Head:FindFirstChild('LogNotice') == nil then
                    game.Players.LocalPlayer:Kick('Safely Combat Logged!')
                end
            end
        end
    end
end

function NoStarve()
    while _G.NoStarve == true do
        if _G.NoStarve == true then
            task.wait()
            local mojo = tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.LeftPanel.Mojo.Lists.MojoList.Survivalist.TextButton.Text)
            if mojo == 'TURN OFF' then
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(CropType)
                task.wait(93)
            elseif mojo == 'Unlock' then
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(CropType)
                task.wait(45)
            end
        end
    end
end

function OldAFarm()
    while _G.OldAFarm == true do
        if _G.OldAFarm == true then
            task.wait(0.1)
            local lp = game.Players.LocalPlayer
            local function getnearestant()
                local range = math.huge
                local nearant = nil
                for _, a in pairs(game:GetService("Workspace")["White Ant Mound"].Ants:GetChildren()) do
                    if a and a:FindFirstChildOfClass('Humanoid') then
                        local dist = (lp.Character.HumanoidRootPart.Position - a.HumanoidRootPart.Position).magnitude
                        if dist < range then
                            range = dist
                            nearant = a.HumanoidRootPart
                        end
                    end
                end
                return nearant
            end
            local function autofarm(v)
                if lp.Character and lp.Character:FindFirstChild('HumanoidRootPart') then
                    local tween_s = game:GetService('TweenService')
                    local tweeninfo = TweenInfo.new(0.2,Enum.EasingStyle.Linear)
                    local cf = CFrame.new(v)
                    local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf,})
                    a:Play()
                    a.Completed:wait()
                end
            end
            local function getessencefromgod()
                wait(0.5)
                _G.Essence = true
                AutoPickUp(game.Players.LocalPlayer.Character)
                _G.Essence = false
            end
            if workspace:FindFirstChild('Old God') and workspace:FindFirstChild('Old God').Totem then
                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(game.ReplicatedStorage.RelativeTime.Value, {workspace:FindFirstChild('Old God').Totem})
                autofarm(Vector3.new(-1019, -204, -462))
                for i3, v3 in pairs(game:GetService("Workspace")["White Ant Mound"].Ants:GetChildren()) do
                    if v3 and v3:FindFirstChildOfClass('Humanoid') then 
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v3.PrimaryPart.Position).magnitude < 25 then
                            v3.Hum.Sit = true
                            wait(0.2)
                        end
                    end
                end
            else
                wait()
                getessencefromgod()
                getnearestant()
                autofarm(Vector3.new(-1071.5244140625, -204.5394744873047, -466.9952087402344))
                for i, v in pairs(game:GetService("Workspace")["White Ant Mound"].Ants:GetChildren()) do
                    if v and v:FindFirstChildOfClass('Humanoid') then
                        v.Hum.Sit = false
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude < 8.5 then
                            v.Hum.WalkSpeed = 0
                            game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(game.ReplicatedStorage.RelativeTime.Value, {getnearestant()})
                        end
                    end
                end
            end
        end
    end
end

function oldgodspawn()
    while _G.OldGodNotif == true do
        task.wait()
        if _G.OldGodNotif == true then
            workspace.ChildAdded:Connect(function(v)
                if v.Name == 'Old God' then
                    notif.Visible = true
                end
            end)
        end
    end
end

function AutoBlood(Character)
    while _G.AutoBlood == true do
        task.wait(0.1)
        if _G.AutoBlood == true and Character:FindFirstChild('God Chestplate') then 
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health < 85 then
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
            end
        end
    end
end

function AutoBloodVoid(Character)
    while _G.AutoBloodVoid == true do
        task.wait(0.08)
        if _G.AutoBloodVoid == true and Character:FindFirstChild('Void Chestplate')
        or Character:FindFirstChild('Pink Diamond Chestplate')
        or Character:FindFirstChild('Emerald Chestplate') then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health < 85 then
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
            end
        end
    end
end

function AutoEatNaked(Character)
    while _G.AutoEatNaked == true do
        task.wait(0.05)
        if _G.AutoEatNaked == true and Character:FindFirstChild('Void Bag') then 
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health < 85 then
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(HealType)
            end
        end
    end
end

function AutoMine()
    while _G.AutoMine == true do
        task.wait(0.5)
        local mouse = game:GetService("Players").LocalPlayer:GetMouse()
        while amine and task.wait(0.1) do
            local part = game:GetService("Players").LocalPlayer:GetMouse().Target
            local one = game:GetService("ReplicatedStorage").RelativeTime.Value
            local two = {part,part,part,part}
            game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(one, two)
            task.wait()
        end    
    end
end

function AutoPlace()
    while _G.AutoPlace == true do
        if _G.AutoPlace == true then
            task.wait(0.2)
            local LocalPlayer = game:GetService("Players").LocalPlayer
            local RootPart = LocalPlayer.Character.HumanoidRootPart
            local cframe = RootPart.CFrame
            local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure
        
            Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -9), 0)
            Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -8.5), 0)
            Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -8), 0)
            Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -7.5), 0)
            Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -7), 0)
            Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -6.5), 0)
            Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -6), 0)
        end
    end
end

function OpPlant()
    while _G.OpPlant == true do
        if _G.OpPlant == true then
            task.wait()
            local LocalPlayer = game:GetService("Players").LocalPlayer
            local RootPart = LocalPlayer.Character.HumanoidRootPart
            local cframe = RootPart.CFrame
            local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure
        
            Remote:FireServer("Plant Box", cframe * CFrame.new(-49, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(-42, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(-35, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(-28, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(0, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(7, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(14, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(21, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(28, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(35, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(42, -3, -9), 0)
            wait()
            Remote:FireServer("Plant Box", cframe * CFrame.new(49, -3, -9), 0)
        end
    end
end

function PickUpPlant()
    local Player = game:GetService("Players").LocalPlayer
    for _, v in pairs(workspace:GetChildren()) do
        if v.Name == ''..toplant.. " Bush" or v.Name == ''..toplant.. " Crop" or v.Name == ''..toplant.. " Tree" or v.Name == ''..toplant.. " Patch Crop" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 25 then
            game.ReplicatedStorage.Events.Pickup:FireServer(v)
        end
    end
end

function AutoPlant()
    local Player = game:GetService("Players").LocalPlayer
    for _, v in pairs(workspace.Deployables:GetChildren()) do
        if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 15 then
            if game.PlaceId == 11729688377 then 
                game.ReplicatedStorage.Events.lnteractStructure:FireServer(v, toplant)
            elseif game.PlaceId == 11879754496 then
                game.ReplicatedStorage.Events.InteractStructure:FireServer(v, toplant)
            end
        end
    end
end

function AutoPlantPlace()
    while _G.AutoPlantPlace == true do
        if _G.AutoPlantPlace == true then
            task.wait(0.5)
            local Player = game:GetService("Players").LocalPlayer
            for _, v in pairs(workspace.Deployables:GetChildren()) do
                if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 15 then
                    if game.PlaceId == 11729688377 then
                        game.ReplicatedStorage.Events.lnteractStructure:FireServer(v, toplant)
                    elseif game.PlaceId == 11879754496 then
                        game.ReplicatedStorage.Events.InteractStructure:FireServer(v, toplant)
                    end
                end
            end
        end
    end
end

function AutoPlantPickup()
    while _G.AutoPlantPickup == true do
        if _G.AutoPlantPickup == true then 
            task.wait(1)
            local Player = game:GetService("Players").LocalPlayer
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == ''..toplant.. " Bush" or v.Name == ''..toplant.. " Crop" or v.Name == ''..toplant.. " Tree" or v.Name == ''..toplant.. " Patch Crop" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 25 then
                game.ReplicatedStorage.Events.Pickup:FireServer(v)
            end
        end
    end
    end
end

function GoldFarm()
    while _G.GoldFarm == true do
        if _G.GoldFarm == true then
            task.wait()
            local tween_s = game:GetService('TweenService')
            local tweeninfo = TweenInfo.new(0.37,Enum.EasingStyle.Quad)
            local lp = game.Players.LocalPlayer
            
            function autofarm(v)
                if lp.Character and lp.Character:FindFirstChild('HumanoidRootPart') then
                    local cf = CFrame.new(v)
                    local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                    a:Play()
                    a.Completed:wait()
                end
            end
            
            function GetIce()
                for i, v in pairs(game.Workspace:GetChildren()) do
                    if v:IsA('Model') and v.Name == 'Ice Chunk' then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Ice.Position).Magnitude < 50 then
                            v = v.Ice.Position
                            return v
                        end
                    end
                end
            end
            local NearestIce = GetIce()
            if NearestIce then
                autofarm(NearestIce + Vector3.new(0, 8, 0))
            else
                autofarm(Vector3.new(911, -2, -1411))
            end
        end
    end
end

function IceAura()
    while _G.IceAura == true do 
        if _G.IceAura == true then
            task.wait(0.1)
            for i, v in pairs(Workspace:GetChildren()) do
                if string.find(v.Name, 'Ice Chunk') then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Ice.Position).Magnitude <= 18 then
                        game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(game:GetService("ReplicatedStorage").RelativeTime.Value, {v.Ice})
                    end
                end
            end
        end
    end
end

function AutoPickUpGold(Character)
    while _G.AutoPickUpGold == true do
        if _G.AutoPickUpGold == true then
            local myPos = Character.HumanoidRootPart.Position
            local Objects = {}
            for i,v in pairs(workspace.Deployables:GetDescendants()) do
                if v:FindFirstChild("Pickup") ~= nil and v.ClassName == "Part" and v.Color == Color3.fromRGB(218, 165, 50) then
                    local Pos = v.Position
                    local Distance = (myPos - Pos).magnitude
                    if Distance < 20 then
                        table.insert(Objects, v)
                    end
                end
            end
            for i,v in pairs(Objects) do
                for i=1,10 do
                    v.Position = myPos
                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
                end
            end
            task.wait(1)
        end
    end
end

function CoinPressGold()
    while _G.CoinpressGold == true do
        if _G.CoinpressGold == true then
            task.wait()
            local myPos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
            for i,v in pairs(workspace.Deployables:GetChildren()) do
                if v.Name == 'Coin Press' then
                    local Pos = v.Reference.Position
                    local Distance = (myPos - Pos).magnitude
                    if Distance < 15 then 
                        if game.PlaceId == 11729688377 then
                            game:GetService("ReplicatedStorage").Events.lnteractStructure:FireServer(v, 'Gold')
                        elseif game.PlaceId == 11879754496 then
                            game:GetService("ReplicatedStorage").Events.InteractStructure:FireServer(v, 'Gold')
                        end
                    end
                end
            end
        end
    end
end

function TweenPoints()
    while _G.TweenPoints == true do
        if _G.TweenPoints == true then
            wait()
            local function CheckNotif()
                if _G.TweenPoints == false then
                    OrionLib:MakeNotification({
                    Name = "Tweening Stopped",
                    Content = "Hmm, yes, i presume your not afk anymore?",
                    Image = "rbxassetid://4483345998",
                    Time = 3
                    })
                end
            end
            if __TweenPlace1 == nil then
                OrionLib:MakeNotification({
                Name = "No Locations Set Bucko!",
                Content = "Set locations before you start tweening.",
                Image = "rbxassetid://4483345998",
                Time = 6
                })
            end
            local chrpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            local Check_Table = {
                __TweenPlace1,
                __TweenPlace2,
                __TweenPlace3,
                __TweenPlace4,
                __TweenPlace5,
                __TweenPlace6,
                __TweenPlace7,
                __TweenPlace8,
                __TweenPlace9,
                __TweenPlace10
            }
            
            local __TweenTable = {}
            
            
            for i, v in ipairs(Check_Table) do
                if v ~= nil then
                    table.insert(__TweenTable, math.abs((chrpos - v).magnitude))
                end
            end
            
            local function GetInputtedTweens()
                for i2, v2 in ipairs(__TweenTable) do
                    if v2 ~= nil then 
                        for _, a in ipairs(Check_Table) do
                            if table.find(__TweenTable, _) then
                                return math.round(v2)
                            end
                        end
                    end
                end
            end
            
            local ResultInTweens = GetInputtedTweens()
            
            local tween_s = game:GetService('TweenService')
            local tweeninfo = TweenInfo.new(ResultInTweens/10,Enum.EasingStyle.Linear)
            local lp = game.Players.LocalPlayer
            
            function autotween(pos)
                if lp.Character and lp.Character:FindFirstChild('HumanoidRootPart') then
                    local cf = CFrame.new(pos)
                    local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                    a:Play()
                    if _G.TweenPoints == false then 
                        a:Cancel()
                    else
                        a.Completed:wait()
                    end
                end
            end
            for _, a in ipairs(Check_Table) do
                if a ~= nil then
                    autotween(a)
                end
            end
            CheckNotif()
        end
    end
end

function PlacePlantbox()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local RootPart = LocalPlayer.Character.HumanoidRootPart
    local cframe = RootPart.CFrame
    local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure
        
    Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -9), 0)
    Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -8.5), 0)
    Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -8), 0)
    Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -7.5), 0)
    Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -7), 0)
    Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -6.5), 0)
    Remote:FireServer("Plant Box", cframe * CFrame.new(-0, -3, -6), 0)
end    

function GetNearestPlayerForHutTrapping()
    local range = 55
    local closestplayer
    for _, a in pairs(game.Players:GetChildren()) do
        if a ~= game.Players.LocalPlayer then
            if game.Players.LocalPlayer.TeamColor == BrickColor.new('CGA brown') then
                game.Players.LocalPlayer.TeamColor = BrickColor.new('Really black')
            else
                if a.TeamColor == game.Players.LocalPlayer.TeamColor then
                    a = nil
                else
                    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - a.Character:FindFirstChild('HumanoidRootPart', true).Position).Magnitude
                    if distance < range then
                        range = distance
                        closestplayer = a
                        for i, v in pairs(closestplayer.Character:GetDescendants()) do
                            if v.Name == 'HumanoidRootPart' then
                                if closestplayer then
                                    v = v.Position
                                    return v, closestplayer
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

function KeybindGodArmour()
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("God Halo")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("God Chestplate")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("God Legs")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Void Bag")
end

function KeybindVoidArmour()
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Void Shroud")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Void Chestplate")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Void Greaves")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Void Bag")
end

function AutoPickUp(Character)
    local myPos = Character.HumanoidRootPart.Position
    local Objects = {}
    for i,v in pairs(workspace.Items:GetChildren()) do
        if v:FindFirstChild("Pickup") ~= nil and v.ClassName == "Part" then
            local Pos = v.Position
            local Distance = (myPos - Pos).magnitude
            if Distance < 40 then
                table.insert(Objects, v)
            end
        elseif v:FindFirstChild("Pickup") ~= nil and v:FindFirstChild("Part") ~= nil and v.Part.ClassName == "Part" then
            local Pos = v.Part.Position
            local Distance = (myPos - Pos).magnitude
            if Distance < 40 then
                table.insert(Objects, v)
            end
        elseif v:FindFirstChild("Pickup") ~= nil and v.ClassName == "UnionOperation" then
            local Pos = v.Position
            local Distance = (myPos - Pos).magnitude
            if Distance < 40 then
                table.insert(Objects, v)
            end
        elseif v:FindFirstChild("Pickup") ~= nil and v.Name == 'Pink Diamond' then
            local Pos = v.Position
            local Distance = (myPos - Pos).magnitude
            if Distance < 40 then
                table.insert(Objects, v)
            end
        end
    end
    for i,v in pairs(Objects) do
        for i=1,10 do
            if _G.Essence == false then
                v.Position = myPos
                game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
            elseif _G.Essence == true then
                if v.Color == Color3.fromRGB(239, 184, 56) then
                    v.Position = myPos
                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
                end
            end
        end
    end
end

-- Gui stuff 

Toggles:AddToggle({
    Name = "Auto Shield",
    Default = false,
    Callback = function(Value)
        _G.AutoShield = Value
        AutoShield()
    end
})

Toggles:AddToggle({
    Name = "Accurate Bullet(Default; Q[in binding])",
    Default = false,
    Callback = function(Value)
        _G.AccurateBullet = Value
        AccurateBulletMain()
        if _G.AccurateBullet == false then
            if game.Players.LocalPlayer.TeamColor == BrickColor.new("Really black") then
                game.Players.LocalPlayer.TeamColor = BrickColor.new("CGA brown")
            end
        end
    end
})

Toggles:AddToggle({
	Name = "Safe Combat Log(only enable to leave)",
	Default = false,
	Callback = function(Value)
		_G.SafeLog = Value
        SafeLog()
	end    
})


Toggles:AddToggle({
    Name = "AutoEat(No Starve)",
    Default = false,
    Callback = function(Value)
        _G.NoStarve = Value
        NoStarve()
    end
})

Toggles:AddDropdown({
    Name = 'AutoEat Food Type',
    Default = 'Bluefruit',
    Options = {'Bluefruit', 'Bloodfruit', 'Pumpkin', 'Berry', 'Cooked Meat'},
    Callback = function(Value)
        CropType = Value
    end
})

Toggles:AddParagraph("Food Per Hour(Bluefruit Recommended)" , "39/Hour Survivalist, 80/Hour No Survivalist")

Toggles:AddToggle({
    Name = "Old God Xp AutoFarm(use pick/ be near god)",
    Default = false,
    Callback = function(Value)
        _G.OldAFarm = Value
        OldAFarm()
        if game.PlaceId == 11729688377 then
            for i, v in pairs(game:GetService("Workspace")["White Ant Mound"].Ants:GetChildren()) do
                if v.Hum then
                    v.Hum.WalkSpeed = 8
                end
            end
        end
    end
})

Toggles:AddToggle({
	Name = "Old God Spawn Notifier",
	Default = false,
	Callback = function(Value)
		_G.OldGodNotif = Value
        oldgodspawn()
	end    
})

Healing:AddToggle({
	Name = "Auto Heal [God Armor]",
	Default = false,
	Callback = function(Value)
		_G.AutoBlood = Value
        AutoBlood(game.Players.LocalPlayer.Character)
	end    
})

Healing:AddToggle({
	Name = "Auto Heal [Void, Pink, or Emerald Armor]",
	Default = false,
	Callback = function(Value)
		_G.AutoBloodVoid = Value
        AutoBloodVoid(game.Players.LocalPlayer.Character)
	end    
})

Healing:AddToggle({
	Name = "AutoHeal Naked[USES VOID BAG]",
	Default = false,
	Callback = function(Value)
		_G.AutoEatNaked = Value
        AutoEatNaked(game.Players.LocalPlayer.Character)
	end    
})

Healing:AddDropdown({
	Name = "Heal Food Type",
	Default = "Bloodfruit",
	Options = {"Bloodfruit", "Berry", "Bluefruit", "Pumpkin", "Jelly"},
	Callback = function(Value)
		HealType = Value
	end    
})

Binds:AddBind({
    Name = 'Accurate Bullet Keybind',
    Default = Enum.KeyCode.Q,
    Callback = function()
        AccurateBullet()
    end
})

Binds:AddBind({
    Name = "Auto Pickup",
    Default = Enum.KeyCode.G,
    Hold = false,
    Callback = function()
        AutoPickUp(game.Players.LocalPlayer.Character)
    end
})

Binds:AddToggle({
    Name = 'Pickup Just Essence',
    Default = false,
    Callback = function(Value)
        _G.Essence = Value
    end
})

Binds:AddBind({
    Name = 'Hut Nearest Player',
    Default = Enum.KeyCode.M,
    Hold = false,
    Callback = function()
        HutNearestplayer = GetNearestPlayerForHutTrapping()
        if HutNearestplayer then
            game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer(HutType1, CFrame.new(HutNearestplayer - Vector3.new(-7, 1, 0)), 0)
        end
        game.Players.LocalPlayer.TeamColor = BrickColor.new('CGA brown')
    end
})

Binds:AddDropdown({
	Name = "Hut Type",
	Default = "Big Ol' Hut",
	Options = {"Big Ol' Hut", "God Hut"},
	Callback = function(Value)
		HutType1 = Value
	end    
})

Binds:AddBind({
	Name = "Auto Mine",
	Default = Enum.KeyCode.L,
	Hold = false,
	Callback = function()
	    if amine == false then
	        _G.AutoMine = true
	        amine = true
	        AutoMine()
        elseif amine == true then
            _G.AutoMine = false
            amine = false
  	    end
  	end    
})

Binds:AddBind({
    Name = "God Armor Equip",
    Default = Enum.KeyCode.LeftBracket,
    Hold = false,
    Callback = function()
        KeybindGodArmour()
    end
})

Binds:AddBind({
    Name = "Void Armor Equip",
    Default = Enum.KeyCode.RightBracket,
    Hold = false,
    Callback = function()
        KeybindVoidArmour()
    end
})

Buttons:AddButton({
    Name = "Hide Tribe Totem[Big Ol' Hut]",
    Callback = function()
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local RootPart = LocalPlayer.Character.HumanoidRootPart
        local cframe = RootPart.CFrame
        local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure
        
        Remote:FireServer("Tribe Totem", cframe * CFrame.new(0, -4.5, -25), 0)
        Remote:FireServer("Big Ol' Hut", cframe * CFrame.new(0, -2.8, -25), 0)
    end
})

Buttons:AddButton({
    Name = 'Hide Tribe Totem[God Hut]',
    Callback = function()
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local RootPart = LocalPlayer.Character.HumanoidRootPart
        local cframe = RootPart.CFrame
        local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure
        
        Remote:FireServer("Tribe Totem", cframe * CFrame.new(0, -4.5, -25), 0)
        Remote:FireServer("God Hut", cframe * CFrame.new(0, -2.8, -25), 0)
    end
})

Buttons:AddButton({
    Name = 'Auto Campfire',
    Callback = function()
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local RootPart = LocalPlayer.Character.HumanoidRootPart
        local cframe = RootPart.CFrame
        local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure
    
        Remote:FireServer("Chest", cframe * CFrame.new(0, -3, -9), 0)
        Remote:FireServer("Campfire", cframe * CFrame.new(0, -3, -2), 0)--sides
        Remote:FireServer("Campfire", cframe * CFrame.new(0, -3, -16), 0)
        Remote:FireServer("Campfire", cframe * CFrame.new(-7, -3, -9), 0)
        Remote:FireServer("Campfire", cframe * CFrame.new(7, -3, -9), 0)
        
        Remote:FireServer("Campfire", cframe * CFrame.new(-7, -3, -2), 0)--corners
        Remote:FireServer("Campfire", cframe * CFrame.new(7, -3, -2), 0)
        Remote:FireServer("Campfire", cframe * CFrame.new(-7, -3, -16), 0)
        Remote:FireServer("Campfire", cframe * CFrame.new(7, -3, -16), 0)
    end
})

Buttons:AddButton({
	Name = "Water Walker",
	Callback = function()
        local mt = getrawmetatable(game)
        local oldIndex = mt.__index
        local oldNIndex = mt.__newindex
        
        if setreadonly then
            setreadonly(mt,false)
        else
            make_writeable(mt)
        end
        
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        
        mt.__index = function(self,i)
            if i == "WalkSpeed" then 
                return 16
            elseif i == "Velocity" then
                return Vector3.new(0,0,0)
            end
            return oldIndex(self,i)
        end

        mt.__newindex = function(self,i,v)
            if i == "WalkSpeed" then 
                return
            elseif i == "Velocity" then
                return  
            end
            return oldNIndex(self,i,v)
        end
    end
})

Buttons:AddButton({
    Name = 'AntiAfk',
    Callback = function()
        OrionLib:MakeNotification({
        Name = "AntiAfk Notifier",
        Content = "AntiAfk has been turned on!",
        Image = "rbxassetid://4483345998",
        Time = 5
        })
        
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
    end
})

local dest = Buttons:AddSection({
   Name = "Destroy" 
})

Buttons:AddButton({
    Name = "Destroy",
    Callback = function()
    OrionLib:Destroy()
    end
})

local plantbox = Farming:AddSection({
    Name = 'PlantBox'
})

Farming:AddToggle({
	Name = "Auto Plant Box",
	Default = false,
	Callback = function(Value)
		_G.AutoPlace = Value
        AutoPlace()
	end    
})

Farming:AddToggle({
    Name = 'Op Auto Plant Box',
    Default = false,
    Callback = function(Value)
        _G.OpPlant = Value
        OpPlant()
    end
})

Farming:AddButton({
    Name = 'Mass PlantBox',
    Callback = function()
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local RootPart = LocalPlayer.Character.HumanoidRootPart
        local cframe = RootPart.CFrame
        local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure
 
        wait (0.2)
        Remote:FireServer("Plant Box", cframe * CFrame.new(-28, -3, -9), 0)--infront
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -3, -9), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -3, -9), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -3, -9), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(0, -3, -9), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(7, -3, -9), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(14, -3, -9), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(21, -3, -9), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(28, -3, -9), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-28, -3, -2), 0)--middle
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -3, -2), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -3, -2), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -3, -2), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(0, -3, -2), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(7, -3, -2), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(14, -3, -2), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(21, -3, -2), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(28, -3, -2), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-28, -3, 5), 0)--behind
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -3, 5), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -3, 5), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -3, 5), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(0, -3, 5), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(7, -3, 5), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(14, -3, 5), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(21, -3, 5), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(28, -3, 5), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-28, -3, -16), 0)--outside front
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -3, -16), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -3, -16), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -3, -16), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(0, -3, -16), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(7, -3, -16), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(14, -3, -16), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(21, -3, -16), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(28, -3, -16), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-28, -3, 12), 0)--outside back
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -3, 12), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -3, 12), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -3, 12), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(0, -3, 12), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(7, -3, 12), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(14, -3, 12), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(21, -3, 12), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(28, -3, 12), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-28, -3, -23), 0)--outside front 2
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -3, -23), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -3, -23), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -3, -23), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(0, -3, -23), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(7, -3, -23), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(14, -3, -23), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(21, -3, -23), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(28, -3, -23), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-28, -3, 19), 0)--outside back 2
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -3, 19), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -3, 19), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -3, 19), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(0, -3, 19), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(7, -3, 19), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(14, -3, 19), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(21, -3, 19), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(28, -3, 19), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-28, -3, -30), 0)--outside front 3
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -3, -30), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -3, -30), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -3, -30), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(0, -3, -30), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(7, -3, -30), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(14, -3, -30), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(21, -3, -30), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(28, -3, -30), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-28, -3, 26), 0)--outside back 3
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -3, 26), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -3, 26), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -3, 26), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(0, -3, 26), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(7, -3, 26), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(14, -3, 26), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(21, -3, 26), 0)
        wait()
        Remote:FireServer("Plant Box", cframe * CFrame.new(28, -3, 26), 0)
    end
})

local planting = Farming:AddSection({
   Name = "Planting" 
})

Farming:AddDropdown({
	Name = "Crop Type",
	Default = "Bloodfruit",
	Options = {"Bloodfruit", "Bluefruit", "Jelly", "Lemon", "Sunfruit", "Strangefruit", "Oddberry", "Pumpkin"},
	Callback = function(Value)
		toplant = Value
	end    
})

Farming:AddBind({
	Name = "Plant Crop",
	Default = Enum.KeyCode.P,
	Hold = false,
	Callback = function()
		AutoPlant()
	end    
})

Farming:AddBind({
	Name = "Pickup Crop",
	Default = Enum.KeyCode.R,
	Hold = false,
	Callback = function()
		PickUpPlant()
	end    
})

Farming:AddToggle({
	Name = "Auto Plant Crop",
	Default = false,
	Callback = function(Value)
		_G.AutoPlantPlace = Value
        AutoPlantPlace()
	end    
})

Farming:AddToggle({
	Name = "Auto Pickup Crop",
	Default = false,
	Callback = function(Value)
		_G.AutoPlantPickup = Value
        AutoPlantPickup()
	end    
})

GoldFarming:AddToggle({
    Name = "Gold Farm",
    Default = false,
    Callback = function(Value)
        _G.GoldFarm = Value
        GoldFarm()
    end
})

GoldFarming:AddParagraph("Gold Farm Notice", 'Toggle when in middle of 4 gold ice nodes; turn on ice aura and Auto Eat' )

GoldFarming:AddToggle({
    Name = "Ice Aura",
    Default = false,
    Callback = function(Value)
        _G.IceAura = Value
        IceAura()
    end
})

GoldFarming:AddButton({
    Name = "Ice Cubes Destroyer(optional)",
    Callback = function()
        OrionLib:MakeNotification({
	    Name = "Ice Destroyer is on",
	    Content = "You have turned on Ice Destroyer, refrain from clicking multiple times.",
	    Image = "rbxassetid://4483345998",
	    Time = 5
        })
        game.workspace.ChildRemoved:Connect(function(v)
            if v.Name == 'Ice Chunk' then
                task.wait(0.5)
                workspace.Items:FindFirstChild("Ice Cube"):Destroy()
                task.wait(0.3)
                workspace.Items:FindFirstChild("Ice Cube"):Destroy()
                task.wait(0.3)
                workspace.Items:FindFirstChild("Ice Cube"):Destroy()
                task.wait(0.3)
                workspace.Items:FindFirstChild("Ice Cube"):Destroy()
            end
        end)
    end
})  

GoldFarming:AddButton({
    Name = "Pickup Raw Gold",
    Callback = function()
        local function AutoPickup2(Character)
            local myPos = Character.HumanoidRootPart.Position
            local Objects = {}
            for i,v in pairs(workspace.Items:GetChildren()) do
                if v:FindFirstChild("Pickup") ~= nil and v.ClassName == "UnionOperation" and v.Color == Color3.fromRGB(218, 165, 50) then
                    local Pos = v.Position
                    local Distance = (myPos - Pos).magnitude
                    if Distance < 20 then
                        table.insert(Objects, v)
                    end
                end
            end
            for i,v in pairs(Objects) do
                for i=1,10 do
                    v.Position = myPos
                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
                end
            end
        end
        AutoPickup2(game.Players.LocalPlayer.Character)
    end
})

GoldFarming:AddButton({
    Name = "Pickup Gold",
    Callback = function()
        local function AutoPickup4(Character)
            local myPos = Character.HumanoidRootPart.Position
            local Objects = {}
            for i,v in pairs(workspace.Items:GetChildren()) do
                if v:FindFirstChild("Pickup") ~= nil and v.ClassName == "Part" and v.Color == Color3.fromRGB(218, 165, 50) then
                    local Pos = v.Position
                    local Distance = (myPos - Pos).magnitude
                    if Distance < 20 then
                        table.insert(Objects, v)
                    end
                end
            end
            for i,v in pairs(Objects) do
                for i=1,10 do
                    v.Position = myPos
                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
                end
            end
        end
        AutoPickup4(game.Players.LocalPlayer.Character)
    end
})

GoldFarming:AddButton({
    Name = "Pickup Raw Gold(Chest)",
    Callback = function()
        local function AutoPickup3(Character)
            local myPos = Character.HumanoidRootPart.Position
            local Objects = {}
            for i,v in pairs(workspace.Deployables:GetDescendants()) do
                if v:FindFirstChild("Pickup") ~= nil and v.ClassName == "UnionOperation" and v.Color == Color3.fromRGB(218, 165, 50) then
                    local Pos = v.Position
                    local Distance = (myPos - Pos).magnitude
                    if Distance < 20 then
                        table.insert(Objects, v)
                    end
                end
            end
            for i,v in pairs(Objects) do
                for i=1,10 do
                    v.Position = myPos
                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
                end
            end
        end
        AutoPickup3(game.Players.LocalPlayer.Character)
    end
})

GoldFarming:AddButton({
    Name = "Pickup Gold(Chest)",
    Callback = function()
        local function AutoPickup5(Character)
            local myPos = Character.HumanoidRootPart.Position
            local Objects = {}
            for i,v in pairs(workspace.Deployables:GetDescendants()) do
                if v:FindFirstChild("Pickup") ~= nil and v.ClassName == "Part" and v.Color == Color3.fromRGB(218, 165, 50) then
                    local Pos = v.Position
                    local Distance = (myPos - Pos).magnitude
                    if Distance < 20 then
                        table.insert(Objects, v)
                    end
                end
            end
            for i,v in pairs(Objects) do
                for i=1,10 do
                    v.Position = myPos
                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
                end
            end
        end
        AutoPickup5(game.Players.LocalPlayer.Character)
    end
})

GoldFarming:AddToggle({
    Name = "Auto Pickup Gold(Chest)",
    Default = false,
    Callback = function(Value)
    _G.AutoPickUpGold = Value
    AutoPickUpGold(game.Players.LocalPlayer.Character)
end
})

GoldFarming:AddToggle({
    Name = 'Auto CoinPress Gold',
    Default = false,
    Callback = function(Value)
    _G.CoinpressGold = Value
    CoinPressGold()
    end
})

GoldFarming:AddButton({
    Name = "Pickup GoldCoins",
    Callback = function()
        local function Pickupcoins(Character)
            local myPos = Character.HumanoidRootPart.Position
            local Objects = {}
            for i,v in pairs(workspace.ItemDrops:GetChildren()) do
                if v:FindFirstChild("Pickup") ~= nil and v.ClassName == "Part" and v.Color == Color3.fromRGB(218, 165, 50) then
                    local Pos = v.Position
                    local Distance = (myPos - Pos).magnitude
                    if Distance < 20 then
                        table.insert(Objects, v)
                    end
                end
            end
            for i,v in pairs(Objects) do
                for i=1,10 do
                    v.Position = myPos
                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
                end
            end
        end
        Pickupcoins(game.Players.LocalPlayer.Character)
    end
})

TweenPlace:AddButton({
    Name = 'Clear all tween points',
    Default = false,
    Callback = function()
        __TweenPlace1 = nil
        __TweenPlace2 = nil
        __TweenPlace3 = nil
        __TweenPlace4 = nil
        __TweenPlace5 = nil
        __TweenPlace6 = nil
        __TweenPlace7 = nil
        __TweenPlace8 = nil
        __TweenPlace9 = nil
        __TweenPlace10 = nil
        OrionLib:MakeNotification({
        Name = "You have reset all tween locations!",
        Content = "All points have been reset",
        Image = "rbxassetid://4483345998",
        Time = 3
        })
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 1',
    Callback = function()
        __TweenPlace1 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        OrionLib:MakeNotification({
        Name = "Location Placed!",
        Content = "Tween Point 1 has been set, this is your first Location",
        Image = "rbxassetid://4483345998",
        Time = 3
        })
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 2',
    Callback = function()
        __TweenPlace2 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        OrionLib:MakeNotification({
        Name = "Location Placed!",
        Content = "Tween Point 2 has been set",
        Image = "rbxassetid://4483345998",
        Time = 3
        })
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 3',
    Callback = function()
        __TweenPlace3 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        OrionLib:MakeNotification({
        Name = "Location Placed!",
        Content = "Tween Point 3 has been set",
        Image = "rbxassetid://4483345998",
        Time = 3
        })
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 4',
    Callback = function()
        __TweenPlace4 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        OrionLib:MakeNotification({
        Name = "Location Placed!",
        Content = "Tween Point 4 has been set",
        Image = "rbxassetid://4483345998",
        Time = 3
        })
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 5',
    Callback = function()
        __TweenPlace5 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        OrionLib:MakeNotification({
        Name = "Location Placed!",
        Content = "Tween Point 5 has been set",
        Image = "rbxassetid://4483345998",
        Time = 3
        })
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 6',
    Callback = function()
        __TweenPlace6 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        OrionLib:MakeNotification({
        Name = "Location Placed!",
        Content = "Tween Point 6 has been set",
        Image = "rbxassetid://4483345998",
        Time = 3
        })
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 7',
    Callback = function()
        __TweenPlace7 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        OrionLib:MakeNotification({
        Name = "Location Placed!",
        Content = "Tween Point 7 has been set",
        Image = "rbxassetid://4483345998",
        Time = 3
        })
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 8',
    Callback = function()
        __TweenPlace8 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        OrionLib:MakeNotification({
        Name = "Location Placed!",
        Content = "Tween Point 8 has been set",
        Image = "rbxassetid://4483345998",
        Time = 3
        })
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 9',
    Callback = function()
        __TweenPlace9 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        OrionLib:MakeNotification({
        Name = "Location Placed!",
        Content = "Tween Point 9 has been set",
        Image = "rbxassetid://4483345998",
        Time = 3
        })
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 10',
    Callback = function()
        __TweenPlace10 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        OrionLib:MakeNotification({
        Name = "Location Placed!",
        Content = "Tween Point 10 has been set, this is your last Location",
        Image = "rbxassetid://4483345998",
        Time = 3
        })
    end
})

TweenPlace:AddToggle({
    Name = 'Start Tweening',
    Default = false,
    Callback = function(Value)
        _G.TweenPoints = Value
        if _G.TweenPoints == true then
            OrionLib:MakeNotification({
            Name = "Tweening Started",
            Content = "Watchu grindin there young buck??",
            Image = "rbxassetid://4483345998",
            Time = 3
            })
        end
        TweenPoints()
    end
})

Teleports:AddButton({
    Name = "Void Tp",
    Callback = function()
        game:GetService("TeleportService"):Teleport(11879754496)
    end
})

Teleports:AddButton({
    Name = "Overworld Tp",
    Callback = function()
        game:GetService("TeleportService"):Teleport(11729688377)
    end
})

Teleports:AddButton({
    Name = 'Go to Secret Area(Void)',
    Callback = function()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").BackPortal, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").BackPortal, 1)
    end
})

Teleports:AddButton({
    Name = 'Get out Secret Area(Void)',
    Callback = function()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").TeleportParts:GetChildren()[4], 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").TeleportParts:GetChildren()[4], 1)
    end
})

Visuals:AddSlider({
	Name = "Time Of Day",
	Min = 0.1,
	Max = 24,
	Default = game.Lighting.ClockTime,
	Color = Color3.fromRGB(60, 234, 176),
	Increment = 0.1,
	ValueName = "Hours",
	Callback = function(Value)
		game.Lighting.ClockTime  = Value
	end    
})

Visuals:AddSlider({
	Name = "Field Of View",
	Min = 10,
	Max = 120,
	Default = game.Workspace.Camera.FieldOfView,
	Color = Color3.fromRGB(60, 234, 176),
	Increment = 1,
	ValueName = "FOV",
	Callback = function(Value)
		game.Workspace.CurrentCamera.FieldOfView  = Value
	end    
})

Visuals:AddSlider({
	Name = "Brightness",
	Min = 0.1,
	Max = 10,
	Default = game.Lighting.Brightness,
	Color = Color3.fromRGB(60, 234, 176),
	Increment = 0.1,
	ValueName = "Brightness",
	Callback = function(Value)
		game.Lighting.Brightness = Value
	end    
})

Visuals:AddSlider({
	Name = "Saturation",
	Min = 0.1,
	Max = 3,
	Default = 0.1,
	Color = Color3.fromRGB(60, 234, 176),
	Increment = 0.1,
	ValueName = "Saturation",
	Callback = function(Value)
		game.Lighting.ColorCorrection.Saturation  = Value
	end    
})

Visuals:AddSlider({
	Name = "Contrast",
	Min = 0.1,
	Max = 3,
	Default = 0.1,
	Color = Color3.fromRGB(60, 234, 176),
	Increment = 0.1,
	ValueName = "Contrast",
	Callback = function(Value)
		game.Lighting.ColorCorrection.Contrast  = Value
	end    
})

Visuals:AddSlider({
	Name = "FogEnd",
	Min = 100,
	Max = 4500,
	Default = game:GetService("Lighting").FogEnd,
	Color = Color3.fromRGB(60, 234, 176),
	Increment = 100,
	ValueName = "FogEnd",
	Callback = function(Value)
		game.Lighting.FogEnd  = Value
	end    
})

Visuals:AddColorpicker({
    Name = 'Water Color',
    Default = Color3.fromRGB(game.Workspace.Terrain.WaterColor.R*255, game.Workspace.Terrain.WaterColor.G*255, game.Workspace.Terrain.WaterColor.B*255),
    Callback = function(Value)
        game.Workspace.Terrain.WaterColor = (Value)
    end
})

Visuals:AddButton({
    Name = 'Remove Rain',
    Callback = function()
        __GetRainInstance = game:GetService("Workspace").RainPart.ParticleEmitter
        __GetRainInstance.Enabled = false
    end
})

Visuals:AddButton({
    Name = 'Add Rain Back',
    Callback = function()
        __GetRainInstance.Enabled = true
    end
})

Credits:AddParagraph("Credits","zvppe#3013 and YDS#0001")
Credits:AddParagraph("Credits","zvppe#3013 and YDS#0001")
Credits:AddParagraph("Credits","zvppe#3013 and YDS#0001")
Credits:AddParagraph("Credits","zvppe#3013 and YDS#0001")
Credits:AddParagraph("Credits","zvppe#3013 and YDS#0001")

OrionLib:Init()
--Welcome User
OrionLib:MakeNotification({
    Name = "Welcome!",
    Content = "Hello " .. game.Players.LocalPlayer.Name .. "!, Welcome to Devious Inc V3.5.",
    Image = "rbxassetid://4483345998",
    Time = 10
})
