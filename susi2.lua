-- / Key System \ --

-- Booting Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- your key

-- Values & Functions
_G.Key = "ElmerPogi"
_G.KeyInput = "string"

-- notification
function CorrectKey()
OrionLib:MakeNotification({
	Name = "Key!",
	Content = "You have entered the correct key!",
	Image = "",
	Time = 4
})
end

function WrongKey()
OrionLib:MakeNotification({
	Name = "Key!",
	Content = "Your Key is InCorrect! Please Try Again!",
	Image = "",
	Time = 4
})
end

--window for key system
-- Creating Window
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = false})

-- Tabs
local tab1 = Window:MakeTab({
	Name = "Enter key.",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Define tab1
local section1 = tab1:AddSection({
	Name = "Key"
})

-- text box
tab1:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})


tab1:AddButton({
	Name = "Check Key!",
	Callback = function()
            if _G.KeyInput == _G.Key then                
                wait(0.5)
                CorrectKey() else WrongKey()
            end
  	end    
})

-- you can remove this tab, the label and the button it's just credits or you can edit them.

local Tab = Window:MakeTab({
	Name = "Get Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("Copy the Link And Paste to","•Discord\n•Chrome\n•or any browser you have on your device.");
Tab:AddButton({
	Name = "Copy The Key Link",
	Callback = function()
setclipboard("https://discord.gg/Rfafdjq3")
toclipboard("https://discord.gg/Rfafdjq3")
      		print("Link Coppied")
  	end    
})

function CorrectKey()
-- you're script
loadstring(game:HttpGet("https://raw.githubusercontent.com/nyljeg/kineakemu/main/eggbites.lua"))()

   end -- you're gonna want to keep the end part because it's then end of the script. 
