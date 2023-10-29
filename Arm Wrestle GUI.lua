local msg = Instance.new("Message",workspace)
msg.Text = "Made By FireServiceScripter"
wait(5.8)
msg:Destroy()

function C() 
spawn(function () 
while getgenv().C do 
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ToolService.RE.onClick:FireServer() 
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onClickRequest:FireServer() 
wait() 
end 
end) 
end

function R() 
spawn(function () 
while getgenv().R do 
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.RebirthService.RE.onRebirthRequest:FireServer() 
wait() 
end 
end) 
end

function H() 
spawn(function () 
while getgenv().H do 
local args = {[1] = E,[2] = {}}
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.EggService.RF.purchaseEgg:InvokeServer(unpack(args)) 
wait() 
end 
end) 
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Arm Wrestle Simulator")

local b = w:CreateFolder("Main")

b:Toggle("Inf. Power/Instant Win",function(val) getgenv().C = val C() end)
b:Toggle("Inf. Rebirth",function(val) getgenv().R = val R() end)
b:Toggle("Hatch",function(val) getgenv().H = val H() end)

b:Dropdown("Select",{"Earth","Icy","Lava","Blackhole","Crystal","Molten","Solar","Moon","Burning","Ice"},true,function(val)
E = val
end)

b:Label("Made by FireServiceScripter",{
TextSize = 14; TextColor = Color3.fromRGB(255,255,255); BgColor = Color3.fromRGB(38, 38, 38);})

local w = library:CreateWindow("LocalPlayer")

local b = w:CreateFolder("LP")

b:DestroyGui()

b:Button("Our Website",function() setclipboard("https://fireservice.webador.fr") end)
b:Button("Rejoin",function() loadstring(game:HttpGet("https://pastebin.com/raw/mM7JBG5h", true))() end)
b:Button("Reset",function() loadstring(game:HttpGet("https://pastebin.com/raw/EEY6SATj", true))() end)

b:Box("Speed","number",function(val) S = val end)
b:Box("Jump","number",function(val) J = val end)
b:Box("Hip Height","number",function(val) H = val end)
b:Box("Gravity","number",function(val) G = val end)
 
b:Toggle("Speed",function(bool) getgenv().Speed = bool Speed(S) end)
b:Toggle("Jump",function(bool) getgenv().Jump = bool Jump(J) end)
b:Toggle("Hip Height",function(bool) getgenv().Hip = bool Hip(H) end)
b:Toggle("Gravity",function(bool) getgenv().Grav = bool Grav(G) end)
 
b:Slider("FOV (Default is 70)",{min = 0;max = 120;precise = true;},function(val) game.workspace.CurrentCamera.FieldOfView = val end)

function TPCFrame(Player_CFrame) if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player_CFrame end end
function RTPCFrame(M_CF) if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then M_CF.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame end end
function PHP(Player_HP) game.Players.LocalPlayer.Character.Humanoid.Health = Player_HP end

function Chat(Mes, Freq) spawn(function () while getgenv().Chat do local args = {[1] = Mes,[2] = "All"} game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args)) wait(Freq) end end) end
function Speed(Nume) spawn(function () while getgenv().Speed do game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Nume if not getgenv().Speed then game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16 end wait() end end) end
function Jump(Nume) spawn(function () while getgenv().Jump do game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Nume if not getgenv().Jump then game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50 end wait() end end) end
function Hip(Nume) spawn(function () while getgenv().Hip do game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = Nume if not getgenv().Hip then game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = 0.1 end wait() end end) end
function Grav(Nume) spawn(function () while getgenv().Grav do game:GetService("Workspace").Gravity = Nume if not getgenv().Grav then game:GetService("Workspace").Gravity = 196.2 end wait() end end) end