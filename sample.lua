if (game.PlaceId==13127800756) then 
local v0=loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))();
local v1=v0:MakeWindow({
Name="Nyljeg Hub | Arm Wrestling Simulator",
HidePremium=false,
IntroText="Nyljeg Library",
SaveConfig=true,
ConfigFolder="nyljegLib"});




--main tab
local eggs=v1:MakeTab({
Name="🥚 Eggs",
Icon="rbxassetid://4483345998",
PremiumOnly=false});

local NPC=v1:MakeTab({
Name="🤖 Auto NPC",
Icon="rbxassetid://4483345998",
PremiumOnly=false});



--tab
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
   Callback = function(Value)
     _G.BuyEggs = Value
  end    
})

eggs:AddToggle({
  Name = "Buy Eggs",
  Callback = function()
   game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.EggService.RF.purchaseEgg:InvokeServer(_G.BuyEggs,{},false)
end
})
  
   


end
v0:Init();
