local msg = Instance.new("Message",workspace)
msg.Text = "Made By Elmer Mangio"
wait(5.8)
msg:Destroy()
if (game.PlaceId==13127800756) then 
local v0=loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))();
local v1=v0:MakeWindow({
Name="Elmer Hub | Arm Wrestle Simulator",
HidePremium=false,
IntroText="Elmer Library",
SaveConfig=true,
ConfigFolder="nyljegLib"});

local farm=v1:MakeTab({
Name="Farm",
Icon="rbxassetid://4483345998",
PremiumOnly=false});

local eggs=v1:MakeTab({
Name="Eggs",
Icon="rbxassetid://4483345998",
PremiumOnly=false});

local teleport=v1:MakeTab({
Name="Teleport",
Icon="rbxassetid://4483345998",
PremiumOnly=false});

local event=v1:MakeTab({
Name="Teleport",
Icon="rbxassetid://4483345998",
PremiumOnly=false});


farm:AddToogle({
Name = "Auto Claim Gifts",
Default = false,
Callback = function(value)
gifts = value
while wait() do
if gifts == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(1)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(2)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(3)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(4)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(5)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(6)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(7)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(8)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(9)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(10)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(11)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(12)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(13)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(14)
end
end});





local egglist = {"Earth","Icy","Blackhole","Lava","Molten","Crystal","Solar","Ice","Burning","Moon","Coconut","Palm","Treasure","Poseidon","KingFish","Clam","Rust","Widget","Atom","Nuclear","Mutant","Iridescent","TRex","Herbivore","Pterodactyl","Gem","DinoFossil","Mystic","Void","Nebula","Wormhole","star","Meteor","Cyberpunk","Deepsea","Rocket","Shark","Crab","Jellyfish","Tomb","Ectoplasmic","Bewitched","Cauldron"}
eggs:AddDropdown({
   Name = "Choose your Egg",
   Default = "Earth",
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
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("purchaseEgg"):InvokeServer(_G.EggName,{},false);
end 
end
});




teleport:AddLabel("TELEPORT");
teleport:AddButton({
Name="World 1",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("1"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("BackToSchool"))
end});

teleport:AddButton({
Name="World 2",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("2"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("Futuristic"))
end});

teleport:AddButton({
Name="World 3",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("3"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("Beach"))
end});

teleport:AddButton({
Name="World 4",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("4"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("NuclearBunker"))
end});

teleport:AddButton({
Name="World 5",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("5"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("DinoWorld"))
end});

teleport:AddButton({
Name="World 6",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("6"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("VoidWorld"))
end});

teleport:AddButton({
Name="World 7",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("7"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("SpaceCenter"))
end});	

event:AddDropdown({
   Name = "Number of previous hatches on eggs",
   Default = "1",
   Options = {"1","3","8"},
   Callback = function(Value)
     _G.AmountPrevEggs = Value
   end    
});

event:AddToggle({
  Name = "Auto Claim Event Egg",
  Default = false,
  Callback = function(Value)
  _G.Event_AV3 = Value
    while wait() do
      if _G.Event_AV3 == false then break end       
 game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EventService"):WaitForChild("RF"):WaitForChild("ClaimEgg"):InvokeServer(tonumber(_G.AmountPrevEggs),false)
      end
  end    
});

event:AddToggle({
  Name = "Auto Hatch Previous Eggs",
  Default = false,
  Callback = function(Value)
  _G.PrevEgg = Value
    while wait() do
      if _G.PrevEgg == false then break end
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EventService"):WaitForChild("RF"):WaitForChild("ClaimEgg"):InvokeServer(tonumber(_G.AmountPrevEggs),true)
    end
end
});







end
OrionLib:Inet();