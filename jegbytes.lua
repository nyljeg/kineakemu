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
local v2=false;
local v3=false;
local v4=false;
local v5=false;
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

 


local args = {
    [1] = "Earth","Icy","Blackhole","Lava","Molten","Crystal","Solar","Ice","Burning","Moon","Coconut","Palm","Treasure","Poseidon","KingFish","Clam","Rust","Widget","Atom","Nuclear","Mutant","Iridescent","TRex","Herbivore","Pterodactyl","Gem","DinoFossil","Mystic","Void","Nebula","Wormhole","star","Meteor","Cyberpunk","Deepsea","Rocket","Shark","Crab","Jellyfish","Spartan","GreekMoster","Roman","Greek","Tomb","Ectoplasmic","Bewitched","Cauldron",
    [2] = {},
    [4] = false
}





	
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

local pot=v1:MakeTab({
Name = "Potions",
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
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.EventService.RF.ClaimEgg:InvokeServer(tonumber(_G.AmountPrevEggs),false)
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
local args = {
    [1] = "1"
    [2] = "2"
    [3] = "3"
    [4] = "4"
    [5] = "5"
    [6] = "6"
    [7] = "7"		
}
v58:AddToggle({
  Name = "Auto Claim Gift",
  Default = false,
  Callback = function(Value)
  _G.Gift = Value
    while wait() do
      if _G.Gift == false then break end
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
      end
  end    
})

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer(unpack(args))
	

	

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

v59:AddDropdown({
   Name = "Select Egg",
   Default = "Earth",
   Options = args,
   Callback = function(value)
   arg = value
  end    
})	

v59:AddToggle({
   Name = "Open Egg",
   Default = false,
   Callback = function(Value)
     _G.hegg = Value
	while wait() do		
             if _G.hegg == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("purchaseEgg"):InvokeServer(unpack(arg))					
end 
end
});
	
local w1list = {Bully,Teacher,GymRat,MafiaBoss,Champion}
v60:AddDropdown({
Name="World 1 NPC",
Default = Bully,
Options = w1list,
Callback = function(value)
w1name = value
w1names = value
end});
				
v60:AddToggle({
Name="Auto Fight NPC",
Default=false,
Callback=function(value)
nnnpppccc = value
while wait() do
	if nnnpppccc == false then break end
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("w1name",workspace.Zones["1"].Interactables.ArmWrestling.NPC.w1names.Table,"1");
end
end});
	
v60:AddLabel("No Need Gamepass");	
v60:AddToggle({
Name="Auto Click Battle",
Default=false,
Callback=function(v64)
v3=v64;
end});


local zone = {
    [1] = workspace:WaitForChild("Zones"):WaitForChild("1"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("BackToSchool")
    [2] = workspace:WaitForChild("Zones"):WaitForChild("2"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("Futuristic")
    [3] = workspace:WaitForChild("Zones"):WaitForChild("3"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("Beach")
    [4] = workspace:WaitForChild("Zones"):WaitForChild("4"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("NuclearBunker")
    [5] = workspace:WaitForChild("Zones"):WaitForChild("5"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("DinoWorld")
    [6] = workspace:WaitForChild("Zones"):WaitForChild("6"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("VoidWorld")
    [7] = workspace:WaitForChild("Zones"):WaitForChild("7"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("SapaceCenter")
}

v62:AddDropdown({
   Name = "Select Zone",
   Default = "1",
   Options = zone,
   Callback = function(value)
   zones = value
  end    
})	

v62:AddButton({
Name="Enter Zone",
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(unpack(zones))
end});

	
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(unpack(args))
	
	
pot:AddDropdown({
   Name = "Select Boost",
   Default = "Wins",
   Options = {"Wins","Luck","Golden","Void"},
   Callback = function(Value)
     _G.BoostPoison = Value
  end    
})
	
 pot:AddButton({
  Name = "Use Selected Boost",
  Default = false,
  Callback = function()
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.BoostService.RE.useBoost:FireServer(_G.BoostPoison)
  end    
})

pot:AddButton({
  Name = "Use All Boost",
  Default = false,
  Callback = function()
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.BoostService.RE.useBoost:FireServer("Luck")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.BoostService.RE.useBoost:FireServer("Golden")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.BoostService.RE.useBoost:FireServer("Void")
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.BoostService.RE.useBoost:FireServer("Wins")
end
})

	
 
end 
OrionLib:Init();
