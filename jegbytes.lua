

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
ConfigFolder="ElmerLib"});



_G.AutoDeleteWithTable = {
   Earth = nil,
   Icy = nil,
   Blackhole = nil,
   Lava = nil,
   Molten = nil,
   Crystal = nil,
   Solar = nil,
   Ice = nil,
   Burning = nil,
   Moon = nil,
   Coconut = nil,
   Palm = nil,
   Treasure = nil,
   Poseidon = nil,
   KingFish = nil,
   Clam = nil,
   Rust = nil,
   Widget = nil,
   Atom = nil,
   Nuclear = nil,
   Mutant = nil,
   Iridescent = nil,
   TRex = nil,
   Herbivore = nil,
   Pterodactyl = nil,
   Gem = nil,
   DinoFossil = nil,
   Mystic = nil,
   Void = nil,
   Nebula = nil,
   Wormhole = nil,
   Star = nil,
   Meteor = nil,
   Cyberpunk = nil,
   Deepsea = nil,
   Rocket = nil,
   Shark = nil,
   Crab = nil,
   Jellyfish = nil,
   Limited = nil
}

local DeleteFuckingPet = nil
local mt = getrawmetatable(game);
setreadonly(mt,false)
local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
	local Method = getnamecallmethod()
	local Args = {...}

	if Method == 'InvokeServer' and self.Name == 'purchaseEgg' then
        DeleteFuckingPet = Args[2]
end
	return namecall(self, ...) 
end)
	
------------------

--Main Tab

local v58=v1:MakeTab({
Name="Auto",
PremiumOnly=false});

local v59=v1:MakeTab({
Name="Egg List",
PremiumOnly=false});

local v60=v1:MakeTab({
Name="NPC/PLAYER",
PremiumOnly=false});

local teleport=v1:MakeTab({
Name="Teleport",
PremiumOnly=false});

local food=v1:MakeTab({
Name="Foods",
PremiumOnly=false});
	
local event=v1:MakeTab({
Name = "Event Eggs",
PremiumOnly=false});

local pot=v1:MakeTab({
Name = "Potions",
PremiumOnly=false});

local tools=v1:MakeTab({
Name = "Tools",
PremiumOnly=false});	
	
local crate=v1:MakeTab({
Name = "Crates",
PremiumOnly=false});
	
--Toogle
local Event_A3 = event:AddParagraph("Event Eggs available","#EGG_ERROR")
	
event:AddDropdown({
   Name = "Select Amount Of Eggs",
   Default = "1",
   Options = {"1","3","8"},
   Callback = function(Value)
     _G.AmountPrevEggs = Value
   end  
});

event:AddToggle({
  Name = "Auto Claim Event Eggs",
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
  Name = "Auto Claim Previous Event Eggs",
  Default = false,
  Callback = function(Value)
  _G.PrevEgg = Value
    while wait() do
      if _G.PrevEgg == false then break end
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EventService"):WaitForChild("RF"):WaitForChild("ClaimEgg"):InvokeServer(tonumber(_G.AmountPrevEggs),true)
    end
end
});

food:AddDropdown({
   Name = "Select Food",
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
   Name = "Use Selected Food",
   Default = false,
   Callback = function(Value)
     foods = Value
	while wait() do
		if foods == false then break end
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("SnackService"):WaitForChild("RF"):WaitForChild("redeemSnack"):InvokeServer(_G.foodname,_G._FoodUses)	
	end
  end    
});

v58:AddToggle({
Name="Auto Click [NPC]",
Default=false,
Callback=function(value)
fight=value
while wait() do
if fight == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ArmWrestleService"):WaitForChild("RE"):WaitForChild("onClickRequest"):FireServer()					
end					
end});
	
v58:AddToggle({
Name="Auto Click",
Default=false,
Callback=function(value)
v2=value
while wait() do
if v2 == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ToolService"):WaitForChild("RE"):WaitForChild("onClick"):FireServer();
end					
end});

v58:AddToggle({
Name="Auto Start Fishing",
Default=false,
Callback=function(value)
fish=value
while wait() do
if fish == false then break end					
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("NetService"):WaitForChild("RF"):WaitForChild("StartCatching"):InvokeServer()
local args = {
    [1] = 96,
    [2] = 111.83650879561901
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("NetService"):WaitForChild("RF"):WaitForChild("VerifyCatch"):InvokeServer(unpack(args))
end					
end});
			
v58:AddToggle({
Name="Auto Roll Title",
Default=false,
Callback=function(value)
roll=value
while wait() do
if roll == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TitleService"):WaitForChild("RF"):WaitForChild("Roll"):InvokeServer()
end
end});	

v58:AddParagraph("Fish Number","•Roten Fish = 1\n•Fish = 2\n•Shark = 3")
v58:AddDropdown({
   Name = "Select Fish Number",
   Default = "1",
   Options = {1,2,3},
   Callback = function(Value)
     _G.fishnum = Value
   end  
});

v58:AddToggle({
  Name = "Auto Sell Fish",
  Default = false,
  Callback = function(Value)
  _G.Balls = Value
    while wait() do
      if _G.Balls == false then break end
local args = {
    [1] = "Fisherman",
    [2] = _G.fishnum
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("MerchantService"):WaitForChild("RF"):WaitForChild("BuyItem"):InvokeServer(unpack(args))
end
end});	

v58:AddToggle({
  Name = "Auto Upgrade Snacks",
  Default = false,
  Callback = function(Value)
  _G.Balls = Value
    while wait() do
      if _G.Balls == false then break end
local args = {
    [1] = {
        ["Item"] = "Apple",
        ["Tier"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemCraftingService"):WaitForChild("RF"):WaitForChild("UpgradeSnack"):InvokeServer(unpack(args))
local args2 = {
    [1] = {
        ["Item"] = "Apple",
        ["Tier"] = 2
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemCraftingService"):WaitForChild("RF"):WaitForChild("UpgradeSnack"):InvokeServer(unpack(args2))
local args3 = {
    [1] = {
        ["Item"] = "Banana",
        ["Tier"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemCraftingService"):WaitForChild("RF"):WaitForChild("UpgradeSnack"):InvokeServer(unpack(args3))
local args4 = {
    [1] = {
        ["Item"] = "Banana",
        ["Tier"] = 2
    }
	}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemCraftingService"):WaitForChild("RF"):WaitForChild("UpgradeSnack"):InvokeServer(unpack(args4))				
end
end});

v58:AddToggle({
Name="Auto Plant Snacks",
Default=false,
Callback=function(v65)
vrs=v65;
while wait() do
if vrs == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Plant"):InvokeServer("Banana Seeds","1","1")						
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Plant"):InvokeServer("Banana Seeds","1","2")						
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Plant"):InvokeServer("Banana Seeds","1","3")						
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Plant"):InvokeServer("Banana Seeds","1","4")						
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Plant"):InvokeServer("Banana Seeds","1","5")						
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Plant"):InvokeServer("Banana Seeds","1","6")									
end
end});

v58:AddToggle({
Name="Auto Plant Apple",
Default=false,
Callback=function(v65)
plnt=v65;
while wait() do
if plnt == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Plant"):InvokeServer("Apple Seeds","1","1")						
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Plant"):InvokeServer("Apple Seeds","1","2")						
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Plant"):InvokeServer("Apple Seeds","1","3")						
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Plant"):InvokeServer("Apple Seeds","1","4")						
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Plant"):InvokeServer("Apple Seeds","1","5")						
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Plant"):InvokeServer("Apple Seeds","1","6")					
end
end});

v58:AddToggle({
Name="Auto Harvest",
Default=false,
Callback=function(v65)
hrvst=v65;
while wait() do
if hrvst == false then break end
local args = {
    [1] = "1"
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Harvest"):InvokeServer(unpack(args))
local args2 = {
    [1] = "2"
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Harvest"):InvokeServer(unpack(args2))
local args3 = {
    [1] = "3"
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Harvest"):InvokeServer(unpack(args3))
	local args4 = {
    [1] = "4"
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Harvest"):InvokeServer(unpack(args4))
	local args5 = {
    [1] = "5"
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Harvest"):InvokeServer(unpack(args5))
local args6 = {
    [1] = "6"
}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ItemPlantingService"):WaitForChild("RF"):WaitForChild("Harvest"):InvokeServer(unpack(args6))
end
end});

	
v58:AddToggle({
Name="Auto Spin",
Default=false,
Callback=function(v65)
v4=v65;
while wait() do
if v4 == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PetService"):WaitForChild("RF"):WaitForChild("getOwned"):InvokeServer(game:GetService("Players").LocalPlayer);
end					
end});

crate:AddToggle({
Name="Auto Roll All Crates",
Default=false,
Callback=function(v66)
v5=v66;
while wait() do
if v5 == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ArmsService"):WaitForChild("RF"):WaitForChild("RollAllCratesForPlayer"):InvokeServer()
end					
end});

crate:AddDropdown({
   Name = "Select Crate",
   Default = "RustCrate",
   Options = {"RustCrate","SilverCrate","GoldCrate","DiamondCrate","EmeraldCrate","PlatinumCrate"},
   Callback = function(Value)
     _G.crateAll = Value
  end    
})
	
crate:AddToggle({
Name="Auto Roll Specific Crate",
Default=false,
Callback=function(value)
hehehe = value
while wait() do
if hehehe == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ArmsService"):WaitForChild("RF"):WaitForChild("RollAllSpecificCratesForPlayer"):InvokeServer(_G.crateAll)
end
end});
	
crate:AddLabel("AUTO BUY CRATE");
crate:AddDropdown({
   Name = "Select Crate",
   Default = "Rust",
   Options = {"Rust","Silver","Gold","Diamond","Emerald","Platinum"},
   Callback = function(Value)
     _G.BuyCrateSkins = Value
  end    
})

crate:AddDropdown({
   Name = "Select Amount",
   Default = "1",
   Options = {"1","10","100"},
   Callback = function(Value)
     _G.AmountCrate = Value
  end    
})

crate:AddToggle({
  Name = "Auto Buy Crate",
  Callback = function(value)
_G.crates = value
  while wait() do
	if _G.crates == false then break end
   game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ArmsService"):WaitForChild("RF"):WaitForChild("PurchaseCrates"):InvokeServer(tostring(_G.BuyCrateSkins) .. "Crate",_G.AmountCrate)
end
end
});
	
v58:AddToggle({
  Name = "Auto Claim Gift",
  Default = false,
  Callback = function(Value)
  _G.Gift = Value
    while wait() do
      if _G.Gift == false then break end					
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("1")
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("2")
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("3")
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("4")
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("5")
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("6")
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("7")
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("8")
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("9")
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("10")
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("11")
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("12")
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("13")
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TimedRewardService"):WaitForChild("RE"):WaitForChild("onClaim"):FireServer("14")
      end
  end    
})

v58:AddToggle({
  Name = "Auto Spin Lucky Draw [Blueprint]",
  Default = false,
  Callback = function(Value)
  _G.blueprint = Value
    while wait() do
      if _G.blueprint == false then break end
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BlueprintService"):WaitForChild("RF"):WaitForChild("LuckyDraw"):InvokeServer(false)
      end
  end    
})

v58:AddToggle({
  Name = "Auto Spin Daily Lucky Draw [Blueprint]",
  Default = false,
  Callback = function(Value)
  _G.dailyblueprint = Value
    while wait() do
      if _G.dailyblueprint == false then break end
         game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BlueprintService"):WaitForChild("RF"):WaitForChild("LuckyDraw"):InvokeServer(true)
      end
  end    
})

v58:AddToggle({
  Name = "Auto Claim Daily Log-in",
  Default = false,
  Callback = function(Value)
  _G.dailylogin = Value
    while wait() do
      if _G.dailylogin == false then break end
         game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("DailyRewardService"):WaitForChild("RE"):WaitForChild("onClaimReward"):FireServer()
      end
  end    
})

v58:AddToggle({
  Name = "Auto Rebirth",
  Default = false,
  Callback = function(Value)
  _G.Rbr = Value
    while wait() do
      if _G.Rbr == false then break end
         game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RebirthService"):WaitForChild("RE"):WaitForChild("onRebirthRequest"):FireServer()
      end
  end    
})

v58:AddToggle({
  Name = "Auto Super Rebirth",
  Default = false,
  Callback = function(Value)
  _G.Rbr = Value
    while wait() do
      if _G.Rbr == false then break end
         game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RebirthService"):WaitForChild("RE"):WaitForChild("onSuperRebirth"):FireServer()
  end
  end    
})

local dislist = {"=[ Zone 1 ]=","Earth","Icy","Blackhole","Lava","=[ Zone 2 ]=","Molten","Crystal","Solar","Ice","Burning","Moon","=[ Zone 3 ]=","Coconut","Palm","Treasure","Poseidon","KingFish","Clam","=[ Zone 4 ]=","Rust","Widget","Atom","Nuclear","Mutant","Iridescent","=[ Zone 5 ]=","TRex","Herbivore","Pterodactyl","Gem","DinoFossil","Mystic","=[ Zone 6 ]=","Void","Nebula","Wormhole","Star","=[ ZONE 7 ]=","Meteor","Cyberpunk","Deepsea","Rocket","=[ ZONE 8 ]=","Gladius","Arena","Lionheart","Praetorian","=[ ZONE 9 ]=","Ember","Inferno","Eternal","Heated","=[ Aqua Event ]=","Shark","Crab","Jellyfish","=[ Greek World ]=","Spartan","GreekMonster","RomanGod","GreekGod","=[ XMAS EGG ]=","Santa","Gingerbread","=[ Limited Egg ]=","Candy"}
v59:AddDropdown({
   Name = "Select EGG",
   Default = "Earth",
   Options = dislist,
   Callback = function(Value)
     _G.Egg = Value
   end    
})

v59:AddToggle({
  Name = "Auto Hatch",
  Default = false,
  Callback = function(Value)
  _G.Balls = Value
    while wait() do
      if _G.Balls == false then break end
	  if _G.AutoDeleteWithTable[_G.Egg] == nil then     
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("purchaseEgg"):InvokeServer(_G.Egg,DeleteFuckingPet)
	 _G.AutoDeleteWithTable[_G.Egg] = DeleteFuckingPet
	else     
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("purchaseEgg"):InvokeServer(_G.Egg,_G.AutoDeleteWithTable[_G.Egg])
	end
      end
  end    
})
	

	--[[
local egglist = {"Earth","Icy","Blackhole","Lava","Molten","Crystal","Solar","Ice","Burning","Moon","Coconut","Palm","Treasure","Poseidon","KingFish","Clam","Rust","Widget","Atom","Nuclear","Mutant","Iridescent","TRex","Herbivore","Pterodactyl","Gem","DinoFossil","Mystic","Void","Nebula","Wormhole","star","Meteor","Cyberpunk","Deepsea","Rocket"}
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
	while wait(0) do		
             if _G.hegg == false then break end
	local args = {			 
      [1] = _G.EggName,
      [2] = {},
       [4] = false
	}			
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("purchaseEgg"):InvokeServer(unpack(args));
end 
end
});
]]--
	
tools:AddDropdown({
   Name = "Your Zone",
   Default = "1",
   Options = {"1","2","3","4","5","6","7"},
   Callback = function(Value)
     _G.dumbzone = Value
   end    
});


tools:AddDropdown({
   Name = "Choose your Tier",
   Default = "Tier1",
   Options = {"=[ ZONE 1 ]=","Tier1","Tier2","Tier3","=[ ZONE 2 ]=","Tier4","Tier5","Tier6","=[ ZONE 3 ]=","Tier7","Tier8","Tier9","=[ ZONE 4 ]=","Tier10","Tier11","tier12","=[ ZONE 6 ]=","Tier16","Tier17","Tier18","=[ ZONE 7 ]=","Tier19","Tier20","Tier21"},
   Callback = function(Value)
     _G.barbtier = Value
   end    
});

tools:AddToggle({
   Name = "Equip Barbell",
   Default = false,
   Callback = function(Value)
     barb = Value
	while wait() do
		if barb == false then break end		
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ToolService"):WaitForChild("RE"):WaitForChild("onGuiEquipRequest"):FireServer(tonumber(_G.dumbzone),"Barbells",_G.barbtier)
	end
  end    
});	

local dumbellslist = {"=[ ZONE 1 ]=","1Kg","2Kg","3Kg","4Kg","5Kg","10Kg","15Kg","20Kg","25Kg","50Kg","100Kg","250Kg","=[ ZONE 2 ]=","300Kg","400Kg","500Kg","650Kg","800Kg","1000Kg","1500Kg","2000Kg","2500kg","300Kg","3500Kg","4000Kg","=[ ZONE 3 ]=","5000Kg","6000Kg","7500Kg","10000Kg","12500Kg","15000Kg","20000Kg","25000Kg","30000Kg","35000Kg","40000Kg","45000Kg","=[ ZONE 4 ]=","50000Kg","60000Kg","70000Kg","80000Kg","90000Kg","100000Kg","125000Kg","150000Kg","175000Kg","200000Kg","250000Kg","300000Kg","=[ ZONE 6 ]=","350000Kg","375000Kg","400000Kg","425000Kg","450000Kg","475000Kg","500000Kg","525000Kg","550000Kg","575000Kg","600000Kg","625000Kg","=[ ZONE 7 ]=","650000Kg","675000Kg","700000Kg","725000Kg","750000Kg","775000Kg","800000Kg","825000Kg","850000Kg","875000Kg","900000Kg","925000Kg"}
tools:AddDropdown({
   Name = "Weights",
   Default = "1Kg",
   Options = dumbellslist,
   Callback = function(Value)
     _G.dumbtier = Value
   end    
});

tools:AddToggle({
   Name = "Equip Dumbell",
   Default = false,
   Callback = function(Value)
     lump = Value
	while wait() do
    if lump == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ToolService"):WaitForChild("RE"):WaitForChild("onGuiEquipRequest"):FireServer(_G.dumbzone,"Dumbells",_G.dumbtier)
	end
  end    
});

local gripslist = {"=[ ZONE 1 ]=","1Kg","2Kg","3Kg","4Kg","5Kg","10Kg","15Kg","20Kg","25Kg","50Kg","100Kg","250Kg","=[ ZONE 2 ]=","300Kg","350Kg","400Kg","450Kg","500Kg","600Kg","700Kg","800Kg","900Kg","1000Kg","1250Kg","1500Kg","=[ ZONE 3 ]=","5000Kg","6000Kg","7500Kg","10000Kg","12500Kg","15000Kg","20000Kg","25000Kg","30000Kg","35000Kg","40000Kg","45000Kg","=[ ZONE 4 ]=","50000Kg","60000Kg","70000Kg","80000Kg","90000Kg","100000Kg","125000Kg","150000Kg","175000Kg","200000Kg","250000Kg","300000Kg","=[ ZONE 5 ]=","350000Kg","375000Kg","400000Kg","425000Kg","450000Kg","475000Kg","500000Kg","525000Kg","550000Kg","575000Kg","600000Kg","625000Kg","=[ ZONE 6 ]=","650000Kg","675000Kg","700000Kg","725000Kg","750000Kg","775000Kg","800000Kg","825000Kg","850000Kg","875000Kg","900000Kg","925000Kg","=[ ZONE 7 ]=","950000Kg","975000Kg","1000000Kg","1025000Kg","1050000Kg","1075000Kg","1100000Kg","1125000Kg","1150000Kg"}
tools:AddDropdown({
Name = "Weights",
Default = "1Kg",
Options = gripslist,
Callback = function(value)
_G._griptier = value
end});

tools:AddToggle({
   Name = "Auto Grips",
   Default = false,
   Callback = function(value)
_G._1 = value
while wait() do
if _G._1 == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ToolService"):WaitForChild("RE"):WaitForChild("onGuiEquipRequest"):FireServer(_G.dumbzone,"Grips",_G._griptier);
end
end});
--------------------

local workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local zone = {}
local VSPLAYER = {}
local egg = {}
local npc = {}
function AddTable(Table_V,LocalName)
for _,v in pairs(Table_V:GetChildren()) do
    table.insert(LocalName,v.Name)
end
end
AddTable(workspace.Zones,zone)
function TPType(type,pos)
  if type == "teleport" then      
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
     end
end

teleport:AddDropdown({
   Name = "Select Zone",
   Default = "1",
   Options = zone,
   Callback = function(Value)
     _G.zone_TP = Value
  end    
})

teleport:AddButton({
  Name = "Teleport",
  Callback = function()
     if _G.zone_TP == "1" then
        TPType(_G.TP_TYPE,CFrame.new(-10323.709, 5.79754305, 42.2389755, 1, 0, 0, 0, 1, 0, 0, 0, 1))
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("1"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("BackToSchool"))
     end
     if _G.zone_TP == "2" then
        TPType("teleport",CFrame.new(-10324,4,637))
     game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("2"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("Futuristic"))
     end
     if _G.zone_TP == "3" then
        TPType("teleport",CFrame.new(11599,10,-19))
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("3"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("Beach"))
   end
     if _G.zone_TP == "4" then   
	TPType("teleport",CFrame.new(-10274,4,-817))
     game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("4"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("NuclearBunker"))
     end
     if _G.zone_TP == "5" then    
	TPType("teleport",CFrame.new(-10305,-4,-1417))
      game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("5"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("DinoWorld"))
      end
     if _G.zone_TP == "6" then    
	TPType("teleport",CFrame.new(-9709.87695, -5.80758238, -4633.05664, 1, 0, 0, 0, 1, 0, 0, 0, 1))
     game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("6"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("VoidWorld"))
     end
    if _G.zone_TP == "7" then
	TPType("teleport",CFrame.new(-9760.76855, 52.899971, 555.893982, 1, 0, 0, 0, 1, 0, 0, 0, 1))
     game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("7"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("SpaceCenter"))
      end
	if _G.zone_TP == "8" then
	TPType("teleport",CFrame.new(-1533.91821, 44.4587784, -51.1420135, 0, 0, -1, 0, 1, 0, 1, 0, 0))
     game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("8"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("RomanEmpire"))
      end
	if _G.zone_TP == "9" then
	TPType("teleport",CFrame.new(-12350.459, 68.7939835, 1435.89478, 0, 0, -1, 0, 1, 0, 1, 0, 0))
     game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("9"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("Underworld"))
      end
	if _G.zone_TP == "Garden" then
     game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(workspace:WaitForChild("Zones"):WaitForChild("Garden"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("BackToSchool"))					
	end
	if _G.zone_TP == "GreekEvent" then
        TPType("teleport",CFrame.new(-10114,48,-2362))
     end
  end    
})
	
for i = 1, 7 do  
AddTable(workspace.Zones[i].Interactables.ArmWrestling.NPC,npc)
AddTable(workspace.Zones[i].Interactables.ArmWrestling.PVP,VSPLAYER)		
end
v60:AddDropdown({
   Name = "Select Zone",
   Default = "1",
   Options = zone,
   Callback = function(Value)
     _G.zone_npc = Value
   end    
})

v60:AddDropdown({
   Name = "Select NPC",
   Default = "Bully",
   Options = npc,
   Callback = function(Value)
     _G.AI = Value
   end    
})

v60:AddToggle({
  Name = "Auto Wrestle",
  Default = false,
  Callback = function(Value)
  _G.JoinW = Value
    while wait() do
      if _G.JoinW == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ArmWrestleService"):WaitForChild("RE"):WaitForChild("onEnterNPCTable"):FireServer(_G.AI,workspace:WaitForChild("Zones"):WaitForChild(_G.zone_npc):WaitForChild("Interactables"):WaitForChild("ArmWrestling"):WaitForChild("NPC"):WaitForChild(_G.AI):WaitForChild("Table"),_G.zone_npc)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ArmWrestleService"):WaitForChild("RE"):WaitForChild("onClickRequest"):FireServer();
end
end});

v60:AddDropdown({
   Name = "Select Table",
   Default = "ArmWrestleTable1",
   Options = VSPLAYER,
   Callback = function(Value)
     _G.TABLE_VSPLAYER = Value
   end    
})

v60:AddToggle({
  Name = "Auto Enter Table",
  Default = false,
  Callback = function(Value)
  _G.ENTERTABLE = Value
    while wait() do
      if _G.ENTERTABLE == false then break end
         game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ArmWrestleService"):WaitForChild("RE"):WaitForChild("onEnterTable"):FireServer(workspace:WaitForChild("Zones"):WaitForChild(_G.zone_npc):WaitForChild("Interactables"):WaitForChild("ArmWrestling"):WaitForChild("PVP"):WaitForChild(_G.TABLE_VSPLAYER))
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ArmWrestleService"):WaitForChild("RE"):WaitForChild("onClickRequest"):FireServer();					
      end
  end    
})	
	
	--[[

teleport:AddButton({
Name="Slime Machine",
Default=false,
Callback=function()
local Character = game.Players.LocalPlayer.Character or workspace:WaitForChild(game.Players.LocalPlayer.Name)
Character:PivotTo(CFrame.new(-9554.43, 42.7513, 682.634))
print(Character:GetPivot())
end});			
]]--
	
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
         game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BoostService"):WaitForChild("RE"):WaitForChild("useBoost"):FireServer(_G.BoostPoison)
  end    
})

pot:AddButton({
  Name = "Use All Boost",
  Default = false,
  Callback = function()
         game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BoostService"):WaitForChild("RE"):WaitForChild("useBoost"):FireServer("Luck")
         game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BoostService"):WaitForChild("RE"):WaitForChild("useBoost"):FireServer("Golden")
         game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BoostService"):WaitForChild("RE"):WaitForChild("useBoost"):FireServer("Void")
         game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BoostService"):WaitForChild("RE"):WaitForChild("useBoost"):FireServer("Wins")
end
})


--EVENT EGG
RunService.RenderStepped:Connect(function()
if game.Players.LocalPlayer.PlayerGui.GameUI.Menus:FindFirstChild("Event") then
Event_A3:Set(tostring(game.Players.LocalPlayer.PlayerGui.GameUI.Menus.Event.Amount.Text),"Event Eggs available")
end
end)

	
	
 
end 
OrionLib:Init();
