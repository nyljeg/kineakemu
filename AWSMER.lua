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




local T5 = Window:MakeTab({
Name = "Teleport",
Icon = "rbxassetid://0",
PremiumOnly = false
})

local S102 = T5:AddSection({
     Name = "Teleport V1"
})

local workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")	
local zone = {}

for _,v in pairs(Table_V:GetChildren()) do
    table.insert(LocalName,v.Name)
end
end

function GetText(str)
	return str.Text
end

AddTable(workspace.zone)

function TPType(type,pos)
   if type == "tween" then
          TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), {CFrame = pos}):Play()
   end
   if type == "teleport" then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
     end
end

S102:AddDropdown({
   Name = "Select Zone",
   Default = "1",
   Options = zone,
   Callback = function(Value)
     _G.zone_TP = Value
  end    
})

S102:AddDropdown({
   Name = "Select the teleport type",
   Default = "teleport",
   Options = {"teleport","tween"},
   Callback = function(Value)
     _G.TP_TYPE = Value
  end    
})

S102:AddButton({
  Name = "Teleport",
  Callback = function()
     if _G.zone_TP == "1" then
        TPType(_G.TP_TYPE,CFrame.new(-10326,4,34))
	game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["1"].Interactables.Teleports.Locations.BackToSchool)
    end
     if _G.zone_TP == "2" then
        TPType(_G.TP_TYPE,CFrame.new(-10324,4,637))
	game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["2"].Interactables.Teleports.Locations.Futuristic)
     end
     if _G.zone_TP == "3" then
        TPType(_G.TP_TYPE,CFrame.new(11599,10,-19))
	game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["3"].Interactables.Teleports.Locations.Beach)
    end
     if _G.zone_TP == "4" then
        TPType(_G.TP_TYPE,CFrame.new(-10274,4,-817))
	game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["4"].Interactables.Teleports.Locations.NuclearBunker)
     end
     if _G.zone_TP == "5" then
        TPType(_G.TP_TYPE,CFrame.new(-10305,-4,-1417))
      game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["5"].Interactables.Teleports.Locations.Dino)
     end
	if _G.zone_TP == "6" then
        TPType(_G.TP_TYPE,CFrame.new(-10461,4,-612))
	game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["6"].Interactables.Teleports.Locations.Void)
     end
	if _G.zone_TP == "7" then
        TPType(_G.TP_TYPE,CFrame.new(-10564,-4,-717))
	game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["7"].Interactables.Teleports.Locations.SpaceCenter)
     end		
     if _G.zone_TP == "HalloweenWorld" then
        TPType(_G.TP_TYPE,CFrame.new(9500, 12, 125))
	game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones.HalloweenWorld.Interactables.Teleports.Locations.Halloween)
     end
  end    
})






end
OrionLib:Init();
