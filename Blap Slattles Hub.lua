   if not game:IsLoaded() then

       game.Loaded:Wait()

   end

   task.wait()

  

local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local Win1 = DiscordLib:Window("Blap Slattles Hub")



local MainTab = Win1:Server("Main", "")

local AutoChann = MainTab:Channel("Auto Farms")

local BadgesChann = MainTab:Channel("Badges Farms")

--------------------------------------------------------

local CheatsTab = Win1:Server("Cheats", "")

local CombatChann = CheatsTab:Channel("Combat")

local AntiChann = CheatsTab:Channel("Anti")

--------------------------------------------------------

local PlayerTab = Win1:Server("Player", "")

local PerksChann = PlayerTab:Channel("Perks")

local AdvanceChann = PlayerTab:Channel("Advance")



AutoChann:Toggle("Auto Slapple Farm",false, function(bool)

            getgenv().Slapple = bool

                if bool == true then

                    while getgenv().Slapple do

                        wait(.001)

                        for Index, Instance in next, workspace.Arena.island5.Slapples:GetDescendants() do

                            if Instance.ClassName == "TouchTransmitter" then

                                firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 0)
                                
                                wait(0.1)

                                firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 1)

                            end

                        end

                    end

                end

end)



BadgesChann:Button("TP to Safespot (Recommended)", function()

    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart

local location = CFrame.new(-5516, 109, -3433)

local humanoid = game.Players.LocalPlayer.Character.Humanoid

humanoid:ChangeState(Enum.HumanoidStateType.Jumping)

wait(0.1)

pl.CFrame = location

    local SafeSpot = Instance.new("Part", workspace)

    SafeSpot.Position = Vector3.new(-5516,104,-3433) 

    SafeSpot.Name = "Spot"    

    SafeSpot.Size = Vector3.new(50,2,50)    

    SafeSpot.Anchored = true    

    SafeSpot.Transparency = .5 

    Time = 0

DiscordLib:Notification("Teleported!", "Teleported Successfully!", "Okay!")

end)



BadgesChann:Toggle("Bob Farm",false, function(bool)

        bobFarm = bool        

        if bool == true then           

            while bobFarm do               

                task.wait()              

                    if getGlove() == "Replica" and bobFarm and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) then

                    game.ReplicatedStorage.Duplicate:FireServer()

                    task.wait()                    

                    tick = os.time()                    

                    repeat task.wait()                       

                    until os.time() - tick >= 5.1        

                    end

            end           

            else    

            task.wait(10.2)

    end

end)



AntiChann:Toggle("Anti Void",false, function(noVoid)

    if noVoid == true then            

            for i,v in pairs(game.Workspace:GetDescendants()) do                

                if v.Name == "dedBarrier"  or v.Name == "ArenaBarrier" or v.Name == "DEATHBARRIER" or v.Name == "DEATHBARRIER2" then           

                    if v.CanCollide == false then           

                        v.CanCollide = true                

                        v.Material = "ForceField"      

                        v.Color = Color3.new(255,2,255)   

                        v.Transparency = .9

                    end

                end   

            end  

            else      

            for i,v in pairs(game.Workspace:GetDescendants()) do    

                if v.Name == "dedBarrier"  or v.Name == "ArenaBarrier" or v.Name == "DEATHBARRIER" or v.Name == "DEATHBARRIER2" then

                    if v.CanCollide == true then

                        v.CanCollide = false        

                        v.Transparency = 1

                    end

                end    

            end

        end

    end)