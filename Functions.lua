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

end
