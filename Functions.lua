shared.removeBlue = function()
    for i,x in pairs(game.CoreGui:GetDescendants()) do   
        if x:IsA("ImageButton") and x.Parent.Name == "TabButtons" then      
            firesignal(x.MouseButton1Down)        
        end   
    end
end
shared.autofarmTab = function()   
    for i,x in pairs(game.CoreGui:GetDescendants()) do   
        if x:IsA("ImageButton") and x.Name == "AutofarmsTabButton" then        
            firesignal(x.MouseButton1Down)        
        end   
    end       
end

shared.createSpot = function()

    local SafeSpot = Instance.new("Part")
    SafeSpot.Name = "Spot"
    SafeSpot.Anchored = true
    SafeSpot.Position = Vector3.new(-100000, 100, -1500)
    SafeSpot.Size = Vector3.new(45, 2, 45)
    SafeSpot.Transparency = .5
    SafeSpot.Parent = workspace

    local SafeSpot2 = Instance.new("Part")
    SafeSpot2.Name = "SpotBarrier1"
    SafeSpot2.Anchored = true
    SafeSpot2.Position = Vector3.new(-100000, 120, -1523)
    SafeSpot2.Size = Vector3.new(45, 100000, 1)
    SafeSpot2.Transparency = .5
    SafeSpot2.Parent = workspace:FindFirstChild("Spot")

    local SafeSpot3 = Instance.new("Part")
    SafeSpot3.Name = "SpotBarrier2"
    SafeSpot3.Anchored = true
    SafeSpot3.Position = Vector3.new(-99980, 131, -1500)
    SafeSpot3.Size = Vector3.new(1, 100000, 45)
    SafeSpot3.Transparency = .5
    SafeSpot3.Parent = workspace:FindFirstChild("Spot")

end
