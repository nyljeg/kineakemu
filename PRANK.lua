local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shl...)
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
 Name = "logged in!",
 Content = "You are logged in as "..Player.Name.." ",
 Image = "rbxassetid://4483345998",
 Time = 5
})

_G.Key = "OMGitzAdan"
_G.KeyInput = "string"

function MakeScriptHub()
 print("IT'S A PRANK")
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
 Name = "Copy Key Link",
 Callback = function()
setclipboard("https://link-center.net/1003806/get-lightninghub-key1")
 toclipboard("https://link-center.net/1003806/get-lightninghub-key1")
   end    
})
