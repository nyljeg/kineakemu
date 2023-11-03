local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shl...)
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
 Name = "logged in!",
 Content = "You are logged in as "..Player.Name.." ",
 Image = "rbxassetid://4483345998",
 Time = 5
})

_G.Key = "ElmerPogi"
_G.KeyInput = "string"

function MakeScriptHub()
 local Window = loadstring(game:HttpGet("https://raw.githubusercontent.com/nyljeg/kineakemu/main/jegbytes.lua"))()

end

local Tab = Window:MakeTab({
 Name = "Key",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

Tab:AddTextbox({
 Name = "Enter Key",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
  _G.KeyInput = Value
 end   
})

Tab:AddButton({
 Name = "Submit",
 Callback = function()
        if _G.KeyInput == _G.Key then
        MakeScriptHub()
        end
   end    
})

local Tab = Window:MakeTab({
 Name = "Get Key",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

Tab:AddButton({
 Name = "Copy Discord Server",
 Callback = function()
setclipboard("discord.gg/q5pd5pGd")
 toclipboard("discord.gg/q5pd5pGd")
   end    
})