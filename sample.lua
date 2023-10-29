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





--tab
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
