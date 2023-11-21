local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local HttpService = game:GetService("HttpService")
local player = game.Players.LocalPlayer
local update = loadstring(game:HttpGet("https://raw.githubusercontent.com/HileciBabaYT/hileciexploitpro/main/scriptupdate2"))() 
if update == "14.0" then

local Window = Rayfield:CreateWindow({
    Name = "ElmerHub Key System",
    LoadingTitle = "ElmerHub Key system",
    LoadingSubtitle = "Loading.......",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "ElmerHub Script"
    },
    Discord = {
       Enabled = false,
       Invite = "y2WxeCN3", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "ElmerHUB",
       Subtitle = "Key System",
       Note = "Key in Discord : discord.gg/y2WxeCN3 ",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"https://pastebin.com/raw/MLnK77Nn"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 loadstring(game:HttpGet("https://raw.githubusercontent.com/nyljeg/kineakemu/main/jegbytes.lua"))()
 Rayfield:Destroy()

else
player:Kick("Error.")
end
