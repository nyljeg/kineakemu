local msg = Instance.new("Message",workspace)
msg.Text = "Made By Elmer Mangio"
wait(5.8)
msg:Destroy()
if (game.PlaceId==14399154682) then 
local v0=loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))();
local v1=v0:MakeWindow({
Name="Elmer Hub | Skibidi Arm Wrestle",
HidePremium=false,
IntroText="Elmer Library",
SaveConfig=true,
ConfigFolder="elmerLib"});


local auto=v1:MakeTab({
Name="Farm",
Icon="rbxassetid://4483345998",
PremiumOnly=false});

local egg=v1:MakeTab({
Name="Farm",
Icon="rbxassetid://4483345998",
PremiumOnly=false});





--------------
auto:AddToggle({
Name="Auto Click",
Default=false,
Callback=function(value)
_G._auto = value
while wait(0.08) do
if _G._auto == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TrainBicep"):FireServer()
end
end});

auto:AddToggle({
Name="Auto Click [Battle]",
Default=false,
Callback=function(value)
_G._autot = value
while wait(0.08) do
if _G._autot == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Fight"):FireServer()
end
end});

auto:AddToggle({
Name="Auto Daily Reward",
Default=false,
Callback=function(value)
_G._autot = value
while wait(0.08) do
if _G._autot == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("DailyReward"):InvokeServer()
end
end
});


auto:AddToggle({
Name="Auto Knuckle [inf]",
Default=false,
Callback=function(value)
_G._autotc = value
while wait(0.08) do
if _G._autotc == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TrainKnuckle"):FireServer("1")
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TrainKnuckle"):FireServer("2")
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TrainKnuckle"):FireServer("3")
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TrainKnuckle"):FireServer("4")
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TrainKnuckle"):FireServer("5")
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TrainKnuckle"):FireServer("6")
end
end
});


auto:AddToggle({
Name="Auto Claim Rewards/Gifts",
Default=false,
Callback=function(value)
_G._autotcx = value
while wait(0.08) do
if _G._autotcx == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("PlaytimeReward"):InvokeServer(1)
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("PlaytimeReward"):InvokeServer(2)
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("PlaytimeReward"):InvokeServer(3)
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("PlaytimeReward"):InvokeServer(4)
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("PlaytimeReward"):InvokeServer(5)
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("PlaytimeReward"):InvokeServer(6)
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("PlaytimeReward"):InvokeServer(7)
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("PlaytimeReward"):InvokeServer(8)
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("PlaytimeReward"):InvokeServer(9)
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("PlaytimeReward"):InvokeServer(10)
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("PlaytimeReward"):InvokeServer(11)
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("PlaytimeReward"):InvokeServer(12)
end
end
});

auto:AddToggle({
Name="Auto Rebirth",
Default=false,
Callback=function(value)
_G._autotcxz = value
while wait(0.08) do
if _G._autotcxz == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer()    
end
end
});

  
auto:AddToggle({
Name="Auto Spin",
Default=false,
Callback=function(value)
_G._autotcxz = value
while wait(0.08) do
if _G._autotcxz == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Spin"):InvokeServer()
end
end
});


  

egg:AddDropdown({
Name = "Amount Of Egg",
Default = "Single",
Options = {"Single","Triple"},
Callback = function(value)
_G._amount = value
end
});

egg:AddDropdown({
Name = "Pick Egg",
Default = "Default",
Options = {"Default","Speakerman","Titan Speakerman","Cameraman","TV","Titan"},
Callback = function(value)
_G._eggname = value
end
});



egg:AddToggle({
Name = "Open Egg",
Default = false,
Callback = function(value)
_G._Eggyolk = value
while wait(0.8) do
if _G._Eggyolk == false then break end
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Unbox"):InvokeServer(_G._eggname,_G._amount)
end
end
});


end 
OrionLib:Init();
