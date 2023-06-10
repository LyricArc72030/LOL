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
    if not workspace:FindFirstChild("Spot") then
    local SafeSpot = Instance.new("Part", workspace)
    SafeSpot.Position = Vector3.new(-100000,100,-1500) 
    SafeSpot.Name = "Spot"    
    SafeSpot.Size = Vector3.new(45,2,45)    
    SafeSpot.Anchored = true    
    SafeSpot.Transparency = .5 
    Time = 0

end
