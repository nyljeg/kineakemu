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



local args = {
    [1] = "Earth","Icy","Blackhole","Lava","Molten","Crystal","Solar","Ice","Burning","Moon","Coconut","Palm","Treasure","Poseidon","KingFish","Clam","Rust","Widget","Atom","Nuclear","Mutant","Iridescent","TRex","Herbivore","Pterodactyl","Gem","DinoFossil","Mystic","Shark","Crab","Jellyfish","Cauldron"
    [2] = {},
    [4] = false
}











local eggs=v1:MakeTab({
Name="Eggs",
Icon="rbxassetid://4483345998",
PremiumOnly=false});

local v62=v1:MakeTab({
Name="Eggs",
Icon="rbxassetid://4483345998",
PremiumOnly=false});





eggs:AddDropdown({
   Name = "Choose your Egg",
   Default = "Earth",
   Options = args,
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
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("purchaseEgg"):InvokeServer(unpack(args));
end 
end
});

ocal zone1 = {
    [1] = workspace:WaitForChild("Zones"):WaitForChild("1"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("BackToSchool")
}

ocal zone2 = {
    [1] = workspace:WaitForChild("Zones"):WaitForChild("2"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("Futuristic")
}

ocal zone3 = {
    [1] = workspace:WaitForChild("Zones"):WaitForChild("3"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("Beach")
}

ocal zone4 = {
    [1] = workspace:WaitForChild("Zones"):WaitForChild("4"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("NuclearBunker")
}

local zone5 = {
    [1] = workspace:WaitForChild("Zones"):WaitForChild("5"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("DinoWorld")
}

local zone6 = {
    [1] = workspace:WaitForChild("Zones"):WaitForChild("6"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("VoidWorld")
}

local zone7 = {
    [1] = workspace:WaitForChild("Zones"):WaitForChild("7"):WaitForChild("Interactables"):WaitForChild("Teleports"):WaitForChild("Locations"):WaitForChild("SpaceCenter")
}





v62:AddLabel("TELEPORT");
v62:AddButton({
Name="World 1",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(unpack(zone1))
end});

v62:AddButton({
Name="World 2",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(unpack(zone2))
end});

v62:AddButton({
Name="World 3",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(unpack(zone3))
end});

v62:AddButton({
Name="World 4",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(unpack(zone4))
end});

v62:AddButton({
Name="World 5",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(unpack(zone5))
end});

v62:AddButton({
Name="World 6",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(unpack(zone6))
end});

v62:AddButton({
Name="World 7",
Default=false,
Callback=function()
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RE"):WaitForChild("teleport"):FireServer(unpack(zone7))
end});	



end
OrionLib:Inet();
