local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

setclipboard("https://discord.gg/y2WxeCN3")
toclipboard("https://discord.gg/y2WxeCN3")

local Window = Rayfield:CreateWindow({
   Name = "KEY SYSTEM",
   LoadingTitle = "Load Key System",
   LoadingSubtitle = "The link key has been copied on your keyboard",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "ElmerHub"
   },
   Discord = {
      Enabled = true,
      Invite = "y2WxeCN3", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "ElmerHub Key System",
      Subtitle = "Key System",
      Note = "Key has been copied on the keyboard",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/MLnK77Nn"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Destroy()

loadstring(game:HttpGet("https://raw.githubusercontent.com/nyljeg/kineakemu/main/jegbytes.lua"))()

