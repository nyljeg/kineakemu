_G.trickortreat = true
while _G.trickortreat == true do
    for i,v in pairs(game:GetService("Workspace").Zones.HalloweenWorld.Interactables.TrickOrTreat:GetChildren()) do
        if v.BillboardGui.Frame.Title.Text == "TRICK OR TREAT!" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.4.7"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("TrickOrTreatService"):WaitForChild("RE"):WaitForChild("onTrickOrTreat"):FireServer(v.Name)
        end
    end
    wait(10)
end