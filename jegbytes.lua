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
local v2=false;
local v3=false;
local v4=false;
local v5=false;
local v7=false;
local v23=false;





 
--Function



spawn(function()
while task.wait() do 
if v5 then 
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmsService.RF.RollAllCratesForPlayer:InvokeServer();
else 
end 
end 
end);

spawn(function()
while task.wait() do 
if v4 then 
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.SpinService.RE.onSpinRequest:FireServer();
else 
end 
end 
end);


spawn(function()
while task.wait() do 
if v23 then 
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.EventService.RF.ClaimEgg:InvokeServer();
else 
end 
end 
end);



spawn(function()
while task.wait() do 
if v2 then 
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onClick:FireServer();
else 
end 
end 
end);

spawn(function()
while task.wait() do 
if v3 then 
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onClickRequest:FireServer();
else 
end 
end 
end);

 








	
------------------

--Main Tab

local v58=v1:MakeTab({
Name="Farm 🧺",
Icon="rbxassetid://4483345998",
PremiumOnly=false});

local v59=v1:MakeTab({
Name="Egg List 🥚",
Icon="rbxassetid://4483345998",
PremiumOnly=false});

local v60=v1:MakeTab({
Name="Auto NPC 🤖",
Icon="rbxassetid://4483345998",
PremiumOnly=false});

local v62=v1:MakeTab({
Name="Teleport 🌐",
Icon="rbxassetid://4483345998",
PremiumOnly=false});

local food=v1:MakeTab({
Name="Foods🍏🍄🦴",
Icon="rbxassetid://4483345998",
PremiumOnly=false});
	
local event=v1:MakeTab({
Name = "Event Eggs 🥚",
Icon="rbxassetid://4483345998",
PremiumOnly=false});


	
--Toogle
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
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.EventService.RF.ClaimEgg:InvokeServer()
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
	game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.EventService.RF.ClaimEgg:InvokeServer(tonumber(_G.AmountPrevEggs),true)
    end
end
});



	
food:AddDropdown({
   Name = "Pick A food",
   Default = "GreenApple",
   Options = {"GreenApple","Mushroom","GodlyBones"},
   Callback = function(Value)
     _G.foodname = Value
   end    
});

	
food:AddSlider({
Name = "Food Amount",
Min = 0,
Max = 1000,
Default = 1,
Color = Color3.fromRGB(255,255,255),
Increment = 1,
ValueName = "Food",
Callback = function(Value)
 _G._FoodUses = Value
 end    
});

food:AddToggle({
   Name = "Use Mushroom",
   Default = false,
   Callback = function(Value)
     foods = Value
	while wait() do
		if foods == false then break end
			game:GetService("ReplicatedStorage")["Packages"]["_Index"]:FindFirstChild("sleitnick_knit@1.4.7")["knit"]["Services"]["SnackService"]["RF"]["redeemSnack"]:InvokeServer(_G.foodname,tonumber(_G._FoodUses))		
	end
  end    
});

	

v58:AddToggle({
Name="Auto Click",
Default=false,
Callback=function(v63)
v2=v63;
end});

v58:AddToggle({
Name="Auto Click Battle",
Default=false,
Callback=function(v64)
v3=v64;
end});

v58:AddToggle({
Name="Auto Spin",
Default=false,
Callback=function(v65)
v4=v65;
end});

v58:AddToggle({
Name="Auto Crates",
Default=false,
Callback=function(v66)
v5=v66;
end});

v58:AddLabel("Buy Crate");
v58:AddDropdown({
   Name = "Select Crate",
   Default = "Rust",
   Options = {"Rust","Silver","Gold","Diamond","Emerald","Platinum"},
   Callback = function(Value)
     _G.BuyCrateSkins = Value
  end    
})

v58:AddDropdown({
   Name = "Select Amount",
   Default = "1",
   Options = {"1","10","100"},
   Callback = function(Value)
     _G.AmountCrate = Value
  end    
})

v58:AddToggle({
  Name = "Buy Crate",
  Callback = function(value)
_G.crates = value
  while wait() do
	if _G.crates == false then break end
   game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmsService.RF.PurchaseCrates:InvokeServer(tostring(_G.BuyCrateSkins) .. "Crate",_G.AmountCrate)
end
end
});
	
v58:AddToggle({
  Name = "Auto Rebirth",
  Default = false,
  Callback = function(Value)
  _G.Rbr = Value
    while wait() do
      if _G.Rbr == false then break end
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.RebirthService.RE.onRebirthRequest:FireServer()
      end
  end    
})

v58:AddToggle({
  Name = "Auto Claim Gift",
  Default = false,
  Callback = function(Value)
  _G.Gift = Value
    while wait() do
      if _G.Gift == false then break end
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("1")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("2")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("3")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("4")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("5")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("6")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("7")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("8")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("9")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("10")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("11")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("12")
	 game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("13")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("14")
      end
  end    
})

v58:AddToggle({
  Name = "Auto spin lucky draw [Blueprint]",
  Default = false,
  Callback = function(Value)
  _G.blueprint = Value
    while wait() do
      if _G.blueprint == false then break end
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.BlueprintService.RF.LuckyDraw:InvokeServer(false)
      end
  end    
})

v58:AddToggle({
  Name = "Auto spin daily lucky draw [Blueprint]",
  Default = false,
  Callback = function(Value)
  _G.dailyblueprint = Value
    while wait() do
      if _G.dailyblueprint == false then break end
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.BlueprintService.RF.LuckyDraw:InvokeServer(true)
      end
  end    
})

v58:AddToggle({
  Name = "Auto Claim Daily Login",
  Default = false,
  Callback = function(Value)
  _G.dailylogin = Value
    while wait() do
      if _G.dailylogin == false then break end
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.DailyRewardService.RE.onClaimReward:FireServer()
      end
  end    
})

local egglist = {"Limited Egg","Earth","Icy","Blackhole","Lava","Molten","Crystal","Solar","Ice","Burning","Moon","Coconut","Palm","Treasure","Poseidon","KingFish","Clam","Rust","Widget","Atom","Nuclear","Mutant","Iridescent","TRex","Herbivore","Pterodactyl","Gem","DinoFossil","Mystic","Void","Nebula","Wormhole","star","Meteor","Cyberpunk","Deepsea","Rocket","Shark","Crab","Jellyfish","Tomb","Ectoplasmic","Bewitched","Cauldron"}
v59:AddDropdown({
   Name = "Choose your Egg",
   Default = "Earth",
   Options = egglist,
   Callback = function(Value)
     _G.EggName = Value
   end    
});

v59:AddToggle({
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

v60:AddDropdown({
Name="World 1 NPC",
Default = Bully,
Option = {Bully,Teacher,GymRat,MafiaBoss,Champion},
Callback = function(value)
w1name = value
end});
				
v60:AddToggle({
Name="Auto Fight NPC",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("w1name",workspace.Zones["1"].Interactables.ArmWrestling.NPC.w1name.Table,"1");
end});
	
v60:AddLabel("No Need Gamepass");	
v60:AddToggle({
Name="Auto Click Battle",
Default=false,
Callback=function(v64)
v3=v64;
end});
	

v59:AddLabel("EVENT EGGS");
v59:AddToggle({
Name="Event Egg",
Default=false,
Callback=function(v113)
v23=v113;
end});

v62:AddLabel("TELEPORT");
v62:AddButton({
Name="World 1",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["1"].Interactables.Teleports.Locations.BackToSchool);
end});

v62:AddButton({
Name="World 2",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["2"].Interactables.Teleports.Locations.Futuristic);
end});

v62:AddButton({
Name="World 3",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["3"].Interactables.Teleports.Locations.Beach);
end});

v62:AddButton({
Name="World 4",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["4"].Interactables.Teleports.Locations.NuclearBunker);
end});

v62:AddButton({
Name="World 5",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["5"].Interactables.Teleports.Locations.DinoWorld);
end});

v62:AddButton({
Name="World 6",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["6"].Interactables.Teleports.Locations.VoidWorld);
end});

v62:AddButton({
Name="World 7",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["7"].Interactables.Teleports.Locations.SpaceCenter);
end});	

v62:AddButton({
Name="HolloweenWorld",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones.HalloweenWorld.Interactables.Teleports.Locations.Halloween);
end});

	
 
end 
OrionLib:Init();
