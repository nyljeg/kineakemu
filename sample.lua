if (game.PlaceId==13127800756) then 
local v0=loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))();
local v1=v0:MakeWindow({
Name="Nyljeg Hub | Arm Wrestling Simulator",
HidePremium=false,
IntroText="Nyljeg Library",
SaveConfig=true,
ConfigFolder="nyljegLib"});
local click=false;
local world1=false;
local world2=false;
local world3=false;
local world4=false;
local world5=false;
local world6=false;
local world7=false;
local halloweenT=false;


   
   
spawn(function()
while task.wait() do 
if click then 
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ToolService.RE.onClick:FireServer();
else 
end 
end 
end);
   
spawn(function()
while task.wait() do 
if world1 then 
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["1"].Interactables.Teleports.Locations.BackToSchool);
else 
end 
end 
end);

spawn(function()
while task.wait() do 
if world2 then 
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["2"].Interactables.Teleports.Locations.Futuristic);
else 
end 
end 
end);

spawn(function()
while task.wait() do 
if world3 then 
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["3"].Interactables.Teleports.Locations.Beach);
else
end 
end 
end);

spawn(function()
while task.wait() do 
if world4 then 
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["4"].Interactables.Teleports.Locations.NuclearBunker);
else 
end 
end 
end);

spawn(function()
while task.wait() do 
if world5 then 
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["5"].Interactables.Teleports.Locations.DinoWorld);
else 
end 
end 
end);

spawn(function()
while task.wait() do 
if world6 then 
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["6"].Interactables.Teleports.Locations.VoidWorld);
else 
end 
end 
end);

spawn(function()
while task.wait() do 
if world7 then 
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["7"].Interactables.Teleports.Locations.SpaceCenter);
else 
end 
end 
end);

spawn(function()
while task.wait() do 
if holloweenT then 
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones.HalloweenWorld.Interactables.Teleports.Locations.Halloween);
    else
    end
end 
end);
   


--main tab
local farm=v1:MakeTb({
Name="🏝️Farm"",
Icon="rbxassetid://4483345998",
PremiumOnly=false});
	
local eggs=v1:MakeTab({
Name="🥚 Eggs",
Icon="rbxassetid://4483345998",
PremiumOnly=false});

local tp=v1:MakeTab({
Name="✈️ Teleport",
Icon="rbxassetid://4483345998",
PremiumOnly=false});

local NPC=v1:MakeTab({
Name="🤖 Auto NPC",
Icon="rbxassetid://4483345998",
PremiumOnly=false});

 local food=v1:MakeTab({
 Name="🍏🍄🦴 Food",
 Icon="rbxassetid://4483345998",
 PremiumOnly=false});


--tab
farm:AddToggle({
  Name = "Auto Click",
  Default = false,
  Callback = function(Value)
  _G.Click = Value
    while wait() do
      if _G.Click == false then break end
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ToolService.RE.onClick:FireServer()
      end
  end    
})

farm:AddToggle({
  Name = "Auto Spin",
  Default = false,
  Callback = function(Value)
  _G.Spin = Value
    while wait() do
      if _G.Spin == false then break end
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.SpinService.RE.onSpinRequest:FireServer()
      end
  end    
})

farm:AddToggle({
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

farm:AddToggle({
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

farm:AddToggle({
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

farm:AddToggle({
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

farm:AddToggle({
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



         
NPC:AddToggle:{
Name = "Auto Click ↙️",
Default = false,
Callback = function(value)
click = value
end
})
   
NPC:AddDropdown({
   Name = "World 1 NPC",
   Default = "Bully",
   Options = {Bully,Teacher,GymRat,MafiaBoss,Champion},
   Callback = function(Value)
     _G.ncp1list = Value
   end    
})

NPC:AddToggle({
  Name = "Auto fight NPC",
  Default = false,
  Callback = function(Value)
  _G.ncp1list = Value
    while wait() do
      if _G.ncp1list == false then break end
         game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("_G.ncp1list",workspace.Zones["1"].Interactables.ArmWrestling.NPC._G.ncp1list.Table,"1");
      end
  end    
})

NPC:AddDropdown({
   Name = "World 2 NPC",
   Default = "ScrapTrader",
   Options = {ScrapTrader,CyberCop,CyberAssassin,RipperDoc,RogueAi},
   Callback = function(Value)
     _G.ncp2list = Value
   end    
})

NPC:AddToggle({
  Name = "Auto fight NPC",
  Default = false,
  Callback = function(Value)
  _G.ncp2list = Value
    while wait() do
      if _G.ncp2list == false then break end
         game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("_G.ncp2list",workspace.Zones["2"].Interactables.ArmWrestling.NPC._G.ncp2list.Table,"2");
      end
  end    
})

NPC:AddDropdown({
   Name = "World 3 NPC",
   Default = "CocoNut",
   Options = {CocoNut,FatPirate,MermaidKing,PirateShark,KrakenBoss},
   Callback = function(Value)
     _G.ncp3list = Value
   end    
})

NPC:AddToggle({
  Name = "Auto fight NPC",
  Default = false,
  Callback = function(Value)
  _G.ncp3list = Value
    while wait() do
      if _G.ncp3list == false then break end
         game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("_G.ncp3list",workspace.Zones["3"].Interactables.ArmWrestling.NPC._G.ncp3list.Table,"3");
      end
  end    
})
 
NPC:AddDropdown({
   Name = "World 4 NPC",
   Default = "Barbarian",
   Options = {Barbarian,Hazmat,Enforcer,Bulk,MutantKing},
   Callback = function(Value)
     G.ncp4list = Value
   end    
})

NPC:AddToggle({
  Name = "Auto fight NPC",
  Default = false,
  Callback = function(Value)
  _G.ncp4list = Value
    while wait() do
      if _G.ncp4list == false then break end
         game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("_G.ncp4list",workspace.Zones["4"].Interactables.ArmWrestling.NPC._G.ncp4list.Table,"4");
      end
  end    
})

NPC:AddDropdown({
   Name = "World 5 NPC",
   Default = "Primal",
   Options = {Primal,Dino,Archeologist,TribeLeader,Mammoth},
   Callback = function(Value)
     _G.ncp5list = Value
   end    
})

NPC:AddToggle({
  Name = "Auto fight NPC",
  Default = false,
  Callback = function(Value)
  _G.ncp5list = Value
    while wait() do
      if _G.ncp5list == false then break end
         game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("_G.ncp5list",workspace.Zones["5"].Interactables.ArmWrestling.NPC._G.ncp5list.Table,"5");
      end
  end    
})

NPC:AddDropdown({
   Name = "World 6 NPC",
   Default = "Orinthian",
   Options = {Orinthian,Spaceboy,DemonSlayer,Uzdan,Cybernetic},
   Callback = function(Value)
     _G.ncp6list = Value
   end    
})

NPC:AddToggle({
  Name = "Auto fight NPC",
  Default = false,
  Callback = function(Value)
  _G.ncp6list = Value
    while wait() do
      if _G.ncp6list == false then break end
         game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("_G.ncp6list",workspace.Zones["6"].Interactables.ArmWrestling.NPC._G.ncp6list.Table,"6");
      end
  end    
})
 
NPC:AddDropdown({
   Name = "World 7 NPC",
   Default = "RocketRider",
   Options = {RocketRider,MissileMaven,LairGuardian,NovaNomad,DrPropulsion},
   Callback = function(Value)
     _G.ncp7list = Value
   end    
})

NPC:AddToggle({
  Name = "Auto fight NPC",
  Default = false,
  Callback = function(Value)
  _G.ncp7list = Value
    while wait() do
      if _G.ncp7list == false then break end
         game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("_G.ncp7list",workspace.Zones["7"].Interactables.ArmWrestling.NPC._G.ncp7list.Table,"7");
      end
  end    
})


eggs:AddDropdown({
 Name = "Select EGG",
 Default = "Earth",
Options = {"Earth","Icy","Blackhole","Lava","Molten","Crystal","Solar","Ice","Burning","Moon","Coconut","Palm","Treasure","Poseidon","KingFish","Clam","Rust","Widget","Atom","Nuclear","Mutant","Iridescent","TRex","Herbivore","Pterodactyl","Gem","DinoFossil","Mystic","Void","Nebula","WormHole","Star","Limited"},
   Callback = function(value)
_G.BuyEggs = value
  end    
})

eggs:AddToggle({
  Name = "Buy Eggs",
  Callback = function(value)
_G.eggname = value
while wait() do
if _G.eggname == false then break end
   game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.EggService.RF.purchaseEgg:InvokeServer(_G.BuyEggs,{},false)
end
end
})
  


tp:AddLabel("TELEPORT");
tp:AddButton({
Name="World 1",
Default=false,
Callback=function(value)
world1=value;
end});

tp:AddButton({
Name="World 2",
Default=false,
Callback=function(value)
world2=value;
end});

tp:AddButton({
Name="World 3",
Default=false,
Callback=function(v116)
world3=value;
end});

tp:AddButton({
Name="World 4",
Default=false,
Callback=function(v117)
world4=value;
end});

tp:AddButton({
Name="World 5",
Default=false,
Callback=function(value)
world5=value;
end});

tp:AddButton({
Name="World 6",
Default=false,
Callback=function(value)
world6=value;
end});

tp:AddButton({
Name="World 7",
Default=false,
Callback=function(value)
world7=value;
end});

tp:AddButton({
Name="HolloweenWorld",
Default=false,
Callback=function(value)
holloweenT=value;
end});


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
})
food:AddDropdown({
Name = "Pick Food",
Default = "1",
 Options = {"GreenApple","Mushroom","GodlyBone"},
 Callback = function(Value)
  _G.foody = Value
  end    
})

food:AddToggle({
   Name = "Use Food",
   Default = false,
   Callback = function(Value)
     foods = Value
	while wait() do
		if foods == false then break end
			game:GetService("ReplicatedStorage")["Packages"]["_Index"]:FindFirstChild("sleitnick_knit@1.4.7")["knit"]["Services"]["SnackService"]["RF"]["redeemSnack"]:InvokeServer(_G.foody,tonumber(_G._FoodUses))		
	end
  end    
})


end
v0:Init();
