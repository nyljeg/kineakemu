local msg = Instance.new("Message",workspace)
msg.Text = "Made By Elmer Mangio"
wait(5.8)
msg:Destroy()
if (game.PlaceId==13127800756) then 
local v0=loadstring(game:HttpGet("https://raw.githubusercontent.com/nyljeg/pslibrary/main/punchLibrary.lua"))();
local v1=v0:MakeWindow({
Name="Elmer Hub | Arm Wrestle Simulator",
HidePremium=false,
IntroText="Elmer Library",
SaveConfig=true,
ConfigFolder="nyljegLib"});





local eggs=v1:MakeTab({
Name="Farm",
Icon="rbxassetid://4483345998",
PremiumOnly=false});






local egglist = {"Forest", "Desert", "Cave", "Ocean", "Candy", "Snow", "Toy", "Farm", "Samurai", "Space", "MagicalForest"}
eggs:AddDropdown({
   Name = "Choose your Egg",
   Default = "Forest",
   Options = egglist,
   Callback = function(Value)
     _G.EggName = Value
   end    
});

eggs:AddToggle({
   Name = "Open Egg",
   Default = false,
   Callback = function(Value)
     _G.hegg = Value
	while wait() do		
             if _G.hegg == false then break end
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.EggService.RF.purchaseEgg:InvokeServer(_G.EggName,{},false);
end 
end
});



end
OrionLib:Inet();