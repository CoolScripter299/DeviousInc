local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Devious Inc V3", HidePremium = false,IntroText = "Prepare for mass deviousness...",IntroEnabled = true, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Infinite Yield

loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

--tween stuff
local teleport_table = {
    location1 = Vector3.new(897.758, -0.950247, -1421.29),
    location2 = Vector3.new(916.084, -0.943519, -1422.33),
    location3 = Vector3.new(929.505, -2.33558, -1404.29),
    location4 = Vector3.new(901.782, -3, -1402.69)
}

local teleport_farm = {
    location1 = Vector3.new(899.303, -3, -1448.77),
    location2 = Vector3.new(913.65, -1.99679, -1410.31),
    location3 = Vector3.new(921.369, -3, -1361.87),
    location4 = Vector3.new(913.65, -1.99679, -1410.31)
    }
    
local blood_farm = {
    location1 = Vector3.new(-366, -2, -1577),
    location2 = Vector3.new(-101, -2, -1616),
    location3 = Vector3.new(-107, -2, -1657),
    location4 = Vector3.new(-372, -2, -1618)
    }
    
-- Old God Notifier

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
   notif.Backdrop.ImageLabel.Image = "http://www.roblox.com/Game/Tools/ThumbnailAsset.ashx?fmt=png&wd=420&ht=420&aid=15967519"
   notif.Backdrop.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
   
    notif.Backdrop.ConfirmButton.MouseButton1Click:Connect(function()
        notif.Visible = false
    end)

-- tabs

local Toggles = Window:MakeTab({
	Name = "Toggles",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Misc = Window:MakeTab({
	Name = "Binding",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Teleports = Window:MakeTab({
    Name = "Teleports",
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

local Visuals = Window:MakeTab({
	Name = "Visuals",
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

local Credits = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Gloabls and important locals

_G.AutoBlood = false
_G.AutoBloodVoid = false
_G.AutoMine = false
_G.AutoShield = false
local amine = false
_G.NoStarve = false
_G.OldGodNotif = false
_G.SafeLog = false
_G.AutoPlace = false
_G.AutoPlantPlace = false
_G.AutoPlantPickup = false
_G.AutoEatNaked = false
_G.GoldFarm = false
_G.IceAura = false
_G.OpPlant = false
_G.BloodFarm = false
_G.AutoPickUpGold = false
_G.CoinpressGold = false
local toplant = 'None'
_G.TweenPoints = false
_G.AccurateBullet = false

-- functions

function AccurateBullet()
    while _G.AccurateBullet == true do
        if _G.AccurateBullet == true then
            wait()
            local function ClosestPlayerToMouse()
                local target = nil
                local dist = math.huge
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v ~= game.Players.LocalPlayer then
                        if game.Players.LocalPlayer.TeamColor == BrickColor.new('CGA brown') then
                            game.Players.LocalPlayer.TeamColor = BrickColor.new('Really black')
                        else
                            if v.TeamColor == game.Players.LocalPlayer.TeamColor then
                                v = nil
                            else
                                local mouse = game.Players.LocalPlayer:GetMouse()
                                local screenpoint = game.Workspace.CurrentCamera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                                local playertomouse = (Vector2.new(mouse.X,mouse.Y)-Vector2.new(screenpoint.X,screenpoint.Y)).magnitude
                                if playertomouse < dist then
                                    dist = playertomouse
                                    target = v.Character.HumanoidRootPart.Position
                                    return target
                                end
                            end
                        end
                    end
                end
            end
            
            local function IsPlayerNear()
                local dist = 230
                for _, a in pairs(game.Players:GetPlayers()) do
                    if a ~= game.Players.LocalPlayer then
                        if game.Players.LocalPlayer.TeamColor == BrickColor.new('CGA brown') then
                            game.Players.LocalPlayer.TeamColor = BrickColor.new('Really black')
                        else
                            if a.TeamColor == game.Players.LocalPlayer.TeamColor then
                                a = nil
                            else
                                local realdistance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - a.Character.HumanoidRootPart.Position).magnitude
                                if realdistance < dist then
                                    return true
                                end
                            end
                        end
                    end
                end
            end
            
            ClosestPlayerToMouse()
            if ClosestPlayerToMouse() and IsPlayerNear() then
                FireAccurateBullet = game:GetService('UserInputService').InputBegan:Connect(function(Key)
                    if Key.KeyCode == Enum.KeyCode.V then
                        game:GetService("ReplicatedStorage").Events.VoodooSpell:FireServer(ClosestPlayerToMouse())
                        FireAccurateBullet:Disconnect()
                    end
                end)
            end
        end
    end
end


function TweenPoints()
    while _G.TweenPoints == true do
        if _G.TweenPoints == true then
            wait()
            local chrpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            
            local __TweenTable1 = {
            RealDistance1 = (chrpos - __TweenPlace1).magnitude
            }
            
            if __TweenPlace2 then
                local __TweenTable2 = {
                RealDistance6 = (chrpos - __TweenPlace2).magnitude
                }
            end
            
            if __TweenPlace3 then
                local __TweenTable3 = {
                RealDistance6 = (chrpos - __TweenPlace3).magnitude
                }
            end
            
            if __TweenPlace4 then
                local __TweenTable4 = {
                RealDistance6 = (chrpos - __TweenPlace4).magnitude
                }
            end
            
            if __TweenPlace5 then
                local __TweenTable5 = {
                RealDistance6 = (chrpos - __TweenPlace5).magnitude
                }
            end
            
            if __TweenPlace6 then
                local __TweenTable6 = {
                RealDistance6 = (chrpos - __TweenPlace6).magnitude
                }
            end
            
            local function GetInputtedTweens()
                for i, v in pairs(__TweenTable1, __TweenTable2, __TweenTable3, __TweenTable4, __TweenTable5, __TweenTable6) do
                    if v ~= nil then 
                        return math.round(v)
                    end
                end
            end
            
            local ResultInTweens = GetInputtedTweens()
            
            local tween_s = game:GetService('TweenService')
            local tweeninfo = TweenInfo.new(ResultInTweens/10,Enum.EasingStyle.Linear)
            local lp = game.Players.LocalPlayer
            
            function autotween(v)
                if lp.Character and lp.Character:FindFirstChild('HumanoidRootPart') then
                    local cf = CFrame.new(v)
                    local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                    a:Play()
                    if _G.TweenPoints == false then 
                        a:Pause()
                    else
                        a.Completed:wait()
                    end
                end
            end
            
            
            autotween(__TweenPlace1)
            if __TweenPlace2 then
                autotween(__TweenPlace2)
                if __TweenPlace3 then
                    autotween(__TweenPlace3)
                    if __TweenPlace4 then
                        autotween(__TweenPlace4)
                        if __TweenPlace5 then
                            autotween(__TweenPlace5)
                            if __TweenPlace6 then
                                autotween(__TweenPlace6)
                            end
                        end
                    end
                end
            end
        end
    end
end

function PickUpPlant()
    local Player = game:GetService("Players").LocalPlayer
    for _, v in pairs(workspace:GetChildren()) do
        if v.Name == ''..toplant.. " Bush" or v.Name == ''..toplant.. " Crop" or v.Name == ''..toplant.. " Tree" or v.Name == ''..toplant.. " Patch Crop" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 30 then
            game.ReplicatedStorage.Events.Pickup:FireServer(v)
        end
    end
end

function AutoPlant()
    local Player = game:GetService("Players").LocalPlayer
    for _, v in pairs(workspace.Deployables:GetChildren()) do
        if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 25 then
            game.ReplicatedStorage.Events.InteractStructure:FireServer(v, toplant)
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

function AutoBlood(Character)
        while _G.AutoBlood == true do
            task.wait(0.1)
        if _G.AutoBlood == true and Character:FindFirstChild('God Chestplate') then 
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health < 90 then
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
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health < 90 then
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

function AutoBloodVoid(Character)
        while _G.AutoBloodVoid == true do
            task.wait(0.08)
        if _G.AutoBloodVoid == true and Character:FindFirstChild('Void Chestplate')
        or Character:FindFirstChild('Pink Diamond Chestplate')
        or Character:FindFirstChild('Emerald Chestplate') then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health < 90 then
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
    v.Position = myPos
    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
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

function KeybindGodArmour()
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("God Halo")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("God Chestplate")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("God Legs")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Candy Bag")
end

function KeybindVoidArmour()
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Void Shroud")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Void Chestplate")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Void Greaves")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Candy Bag")
end

function KeyBindBloodfruit()
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer("Bloodfruit")
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

function SafeLog()
    while _G.SafeLog == true do 
    if _G.SafeLog == true then
        task.wait()
        
end
end
end

function AutoPlantPlace()
    while _G.AutoPlantPlace == true do
    if _G.AutoPlantPlace == true then
        task.wait(1)
        local Player = game:GetService("Players").LocalPlayer
    for _, v in pairs(workspace.Deployables:GetChildren()) do
        if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 25 then
            game.ReplicatedStorage.Events.InteractStructure:FireServer(v, toplant)
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
            local tweeninfo = TweenInfo.new(0.35,Enum.EasingStyle.Linear)
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
            task.wait(0.185)
            for i, v in pairs(Workspace:GetChildren()) do
                if string.find(v.Name, 'Ice Chunk') then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Ice.Position).Magnitude <= 25 then
                        game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(game:GetService("ReplicatedStorage").RelativeTime.Value, {v.Ice})
                    end
                end
            end
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

function BloodFarm()
    while _G.BloodFarm == true do
    if _G.BloodFarm == true then
        task.wait(5)

    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(45,Enum.EasingStyle.Linear)
    local lp = game.Players.LocalPlayer

function bloodfarm(v)
    if lp.Character and
    lp.Character:FindFirstChild('HumanoidRootPart') then
    
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
        a:Play()
        a.Completed:wait()
    end
end

bloodfarm(blood_farm.location1)
    task.wait(0.2)
bloodfarm(blood_farm.location2)
    task.wait(0.2)
bloodfarm(blood_farm.location3)
    task.wait(0.2)
bloodfarm(blood_farm.location4)
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
            game:GetService("ReplicatedStorage").Events.InteractStructure:FireServer(v, 'Gold')
            game:GetService("ReplicatedStorage").Events.InteractStructure:FireServer(v, 'Gold')
    end
    end
    end
    end
end
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


-- Gui stuff 

Misc:AddBind({
    Name = "God Armour Equip",
    Default = Enum.KeyCode.I,
    Hold = false,
    Callback = function()
        KeybindGodArmour()
    end
})

Misc:AddBind({
    Name = "Void Armour Equip",
    Default = Enum.KeyCode.O,
    Hold = false,
    Callback = function()
        KeybindVoidArmour()
    end
})

Misc:AddBind({
    Name = "Auto Pickup",
    Default = Enum.KeyCode.G,
    Hold = false,
    Callback = function()
        AutoPickUp(game.Players.LocalPlayer.Character)
    end
})

Misc:AddBind({
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

Misc:AddBind({
    Name = 'Hut Nearest Player',
    Default = Enum.KeyCode.M,
    Hold = false,
    Callback = function()
        HutNearestplayer = GetNearestPlayerForHutTrapping()
        if HutNearestplayer then
            game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer(HutType1, CFrame.new(HutNearestplayer - Vector3.new(-7, 1, 0)), 0)
        end
    end
})

Misc:AddDropdown({
	Name = "Hut Type",
	Default = "Big Ol' Hut",
	Options = {"Big Ol' Hut", "God Hut"},
	Callback = function(Value)
		HutType1 = Value
	end    
})

Teleports:AddButton({
    Name = "Void Tp",
    Callback = function()
    game:GetService("TeleportService"):Teleport(11879754496)
    end
})

Buttons:AddButton({
    Name = 'Hide Tribe Totem',
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

Visuals:AddButton({
	Name = "Night Mode",
	Callback = function()
        game.Lighting.TimeOfDay = 3
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
	Max = 3,
	Default = 0.1,
	Color = Color3.fromRGB(60, 234, 176),
	Increment = 1,
	ValueName = "Brightness",
	Callback = function(Value)
		game.Lighting.Brightness  = Value
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
	Default = 2000,
	Color = Color3.fromRGB(60, 234, 176),
	Increment = 100,
	ValueName = "FogEnd",
	Callback = function(Value)
		game.Lighting.FogEnd  = Value
	end    
})

Toggles:AddToggle({
    Name = "Auto Shield",
    Default = false,
    Callback = function(Value)
        _G.AutoShield = Value
        AutoShield()
    end
})

Toggles:AddToggle({
    Name = "Accurate Bullet(fires all 3 at once)",
    Default = false,
    Callback = function(Value)
        _G.AccurateBullet = Value
        AccurateBullet()
    end
})

Toggles:AddToggle({
	Name = "Auto Heal [God Armor]",
	Default = false,
	Callback = function(Value)
		_G.AutoBlood = Value
        AutoBlood(game.Players.LocalPlayer.Character)
	end    
})

Toggles:AddToggle({
	Name = "Auto Heal [Void, Pink, or Emerald Armor]",
	Default = false,
	Callback = function(Value)
		_G.AutoBloodVoid = Value
        AutoBloodVoid(game.Players.LocalPlayer.Character)
	end    
})

Toggles:AddToggle({
	Name = "AutoHeal Naked[USES VOID BAG]",
	Default = false,
	Callback = function(Value)
		_G.AutoEatNaked = Value
        AutoEatNaked(game.Players.LocalPlayer.Character)
	end    
})

Toggles:AddDropdown({
	Name = "Heal Food Type",
	Default = "Bloodfruit",
	Options = {"Bloodfruit", "Berry", "Bluefruit", "Pumpkin", "Jelly"},
	Callback = function(Value)
		HealType = Value
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

Toggles:AddParagraph("(Bluefruit Recommended) Food Per Hour" , "39/Hour Survivalist, 80/Hour No Survivalist")

Toggles:AddToggle({
	Name = "Old God Spawn Notifier",
	Default = false,
	Callback = function(Value)
		_G.OldGodNotif = Value
        oldgodspawn()
	end    
})

Toggles:AddToggle({
	Name = "Safe Combat Log",
	Default = false,
	Callback = function(Value)
		_G.SafeLog = Value
        SafeLog()
	end    
})
	
Toggles:AddToggle({
	Name = "BloodFarm",
	Default = false,
	Callback = function(Value)
		_G.BloodFarm = Value
        BloodFarm()
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

GoldFarming:AddParagraph("Gold Farm Tutorial","Turn on AntiAfk(in buttons), then, In ice biome, go in the middle of all 4 gold ice nodes, then, turn on Gold Farm and Ice Aura!!!TURN ON EAT(have 1K+ of Food you are eating)!!! Then let the farm do the rest of the work; turn it off(give it a minute to process) and collect ur earnings in when ur done ;)" )

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
    Name = "Create Crop Farm(optional; dont move until done)",
    Callback = function()
        game:GetService("ReplicatedStorage").Events.ChangeSetting:InvokeServer("camLock", false)
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local RootPart = LocalPlayer.Character.HumanoidRootPart
        local cframe = RootPart.CFrame
        local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure    
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(5,Enum.EasingStyle.Linear)
    local lp = game.Players.LocalPlayer

function CropFarm(v)
    if lp.Character and
    lp.Character:FindFirstChild('HumanoidRootPart') then
    
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
        a:Play()
        a.Completed:wait()
    end
end

OrionLib:MakeNotification({
	Name = "Turn on OpPlant Box",
	Content = "When you stop at the first point, turn on Op Plant Box(in farming)",
	Image = "rbxassetid://4483345998",
	Time = 5
})

CropFarm(teleport_farm.location1)
    task.wait(0.5)
CropFarm(teleport_farm.location2)
    task.wait(0.5)
CropFarm(teleport_farm.location3)
    OrionLib:MakeNotification({
	Name = "Turn Off Op PlantBox",
	Content = "You may now turn Op PlantBox off.",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    task.wait(0.1)
CropFarm(teleport_farm.location4)
    game:GetService("ReplicatedStorage").Events.ChangeSetting:InvokeServer("camLock", true)
    end
})

GoldFarming:AddParagraph("How to use Crop Farm" , "Jus turn on Auto Plant(Gold Farm) and Auto Plant Pickup(Gold Farm) inside the farming menu, then pick the type of plant you want in farming as well.")

GoldFarming:AddButton({
    Name = "Pickup Raw Gold",
    Callback = function()
   local function AutoPickup2(Character)
    local myPos = Character.HumanoidRootPart.Position
    local Objects = {}
    for i,v in pairs(workspace:GetChildren()) do
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
    Name = "Pickup Gold",
    Callback = function()
    local function AutoPickup4(Character)
    local myPos = Character.HumanoidRootPart.Position
    local Objects = {}
    for i,v in pairs(workspace:GetChildren()) do
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

GoldFarming:AddButton({
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
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 1',
    Callback = function()
        __TweenPlace1 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 2',
    Callback = function()
        __TweenPlace2 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 3',
    Callback = function()
        __TweenPlace3 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 4',
    Callback = function()
        __TweenPlace4 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 5',
    Callback = function()
        __TweenPlace5 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end
})

TweenPlace:AddButton({
    Name = 'Set Tween Point Location 6',
    Callback = function()
        __TweenPlace6 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end
})

TweenPlace:AddToggle({
    Name = 'Start Tweening',
    Default = false,
    Callback = function(Value)
        _G.TweenPoints = Value
        TweenPoints()
    end
})

Credits:AddParagraph("Credits","zvppe#3013 and YDS#0001")
Credits:AddParagraph("Credits","zvppe#3013 and YDS#0001")
Credits:AddParagraph("Credits","zvppe#3013 and YDS#0001")
Credits:AddParagraph("Credits","zvppe#3013 and YDS#0001")
Credits:AddParagraph("Credits","zvppe#3013 and YDS#0001")

OrionLib:Init()
