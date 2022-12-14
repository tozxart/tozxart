
if not LPH_OBFUSCATED then
  LPH_JIT_MAX = function(...) return(...) end;
  LPH_NO_VIRTUALIZE = function(...) return(...) end;
end
if not game:IsLoaded() then
  game.Loaded:Wait()
end
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()
local Window =
Rayfield:CreateWindow(
{
 Name = "Key System",
 LoadingTitle = "The Intruders",
 LoadingSubtitle = "by Tozxart",
 ConfigurationSaving = {
    Enabled = true,
    FolderName = "Key System", -- Create a custom folder for your hub/game
    FileName = game.Players.LocalPlayer.Name .."_keysystem"
 },
 Discord = {
    Enabled = false,
    Invite = "vfkD5VCRKU", -- The Discord invite code, do not include discord.gg/
    RememberJoins = true -- Set this to false to make them join the discord every time they load it up
 },
}
)


local  Maintab = Window:CreateTab("Main")

local Input = Maintab:CreateInput({
  Name = "Enter Key",
  Info = "Please Enter the key!.", -- Speaks for itself, Remove if none.
  PlaceholderText = "Key Here!.",
  NumbersOnly = false, -- If the user can only type numbers.
  CharacterLimit = 10, --max character limit. Remove if none.
  OnEnter = false, -- Will callback only if the user pressed ENTER while being focused.
  RemoveTextAfterFocusLost = true,
  Callback = function(Value)
    if not isfile("Mykey.txt") or readfile("Mykey.txt") ~= Value then 
      writefile("Mykey.txt",Value)
  end
      getgenv().keyinput = Value
      checkKey()
  end,
})

local Button = Maintab:CreateButton({
  Name = "Copy Key Link",
  Info = "After press the button you will get the link in your clipbord.", -- Speaks for itself, Remove if none.
  Interact = 'Key Link!',
  Callback = function()
      copyLink()
  end,
})


--  getgenv().link1 = "A1ieHGI2CStdkuvS1d3KnGou"
--  getgenv().key1 = "7TMeadN7FM"
--  getgenv().link2 = "A2rrOeW2rq5isjB"
--  getgenv().key2 = "pOU542kTh0"
--  getgenv().link3 = "A3x7a10uZAAuHMcV4"
--  getgenv().key3 = "7k9LJd10L1"
--  getgenv().link4 = "A4x7a10uHMcV4"
--  getgenv().key4 = "aIAr0Hc10s"
--  getgenv().link5 = "A5EsHD5vW8Z4"
--  getgenv().key5 = "mxQhv72l1e"
--  getgenv().link6 = "A6HlWO42NwP"
--  getgenv().key6 = "v0NpB0j3o2"



loadstring(game:HttpGet("https://www.intruders.ga/autoexe.lua"))()






local spam = "http://www.intruders.ga/main/"
local html = ".html"


local linkKeyPairs = {
{
  link = getgenv().link1,
  key = getgenv().key1
},
{
  link = getgenv().link2,
  key = getgenv().key2
},
{
  link = getgenv().link3,
  key = getgenv().key3
},
{
  link = getgenv().link4,
  key = getgenv().key4
},
{
  link = getgenv().link5,
  key = getgenv().key5
},
{
  link = getgenv().link6,
  key = getgenv().key6
},
}


local gameName = game.Players.LocalPlayer.Name


function copyLink()
  LPH_JIT_MAX(function()
    -- Generate a random index from 1 to the number of elements in the linkKeyPairs table
    local index = math.random(#linkKeyPairs)
    -- Use the generated index to get a random link and key pair from the linkKeyPairs table
    local link = linkKeyPairs[index].link
    local key = linkKeyPairs[index].key

    -- Save the link and key in the key.lua file
    saveKey(link, key)

    -- Copy the link to the clipboard
    setclipboard(spam .. link..html)
    KeyNotification()
  end)()
end


keys = {}
for i, pair in ipairs(linkKeyPairs) do
 keys[pair.key] = pair.link
end
loadstring(game:HttpGet"http://www.intruders.ga/autoRelunch.lua")()
local Special = {
  getgenv().SP1,
  getgenv().SP2,
  getgenv().SP3
}

function checkKey()
  LPH_JIT_MAX(function()
    if table.find(Special, shared.key) then
      loadstring(game:HttpGet"https://raw.githubusercontent.com/tozxart/tozxart/main/Personal/assets/Send/tes.lua")()
    else
      CheckingKey()
    end

  end)()
end

function CheckingKey()
      -- Check if the entered key matches a key in the keys table
      local key = getgenv().keyinput
      if not key then
        print("Error: No key entered.")
      elseif not keys[key] then
        IncorrectKeyNotification()
        print("Error: Keys table not defined.")
      else
        -- Read the contents of the key.lua file
        local data = readfile("keys/" .. gameName .. ".lua")
        local savedLink, savedKey, saveTime = data:match("(%S+)%s(%S+)%s(%S+)")
  
        -- Strip the junk code from the saved key
        savedKey = savedKey:sub(1, -81)
  
        -- Check if the saved key matches the entered key
        if savedKey == key then
          -- Check if the key is still valid
          local timeRemaining = 86400 - (os.time() - tonumber(saveTime:sub(1, -81)))
          if timeRemaining > 0 then
            -- If the key is still valid, show the time remaining, the saved link, and run the Rayfield script
            print(string.format("Time remaining: %d seconds", timeRemaining))
            print(string.format("Saved link: %s", savedLink:sub(1, -81)))
            loadstring(game:HttpGet"http://www.intruders.ga/script.lua")()
          else
            -- If the key is no longer valid, show an error message
            print("Error: Key expired.")
          end
        else
          -- If the entered key does not match the saved key, show an error message
          IncorrectKeyNotification()
          print("Error: Incorrect key.")
        end
        end
end

function saveKey(link, key)
-- Create a directory called keys
makefolder("keys")
local saveTime = os.time()

-- Generate a random string to append to the link, key, and saveTime values
-- Generate a random string to append to the link, key, and saveTime values
local junkCode = ""
for i = 1, 80 do
-- Generate a random number between 1 and 95
local n = math.random(95)
if n <= 10 then
  -- Numbers
  junkCode = junkCode .. string.char(n + 48)
elseif n <= 36 then
  -- Uppercase letters
  junkCode = junkCode .. string.char(n + 55)
else
  -- Special characters
  junkCode = junkCode .. string.char(n + 61)
end
end


-- Append the junk code to the link, key, and saveTime values
link = link .. junkCode
key = key .. junkCode
saveTime = saveTime .. junkCode

-- Write the modified link, key, and saveTime values to the key.lua file
writefile("keys/" .. gameName .. ".lua", link .. " " .. key .. " " .. saveTime)
end



function checkExpiration()
-- Read the contents of the key.lua file
local data = readfile("keys/" .. gameName .. ".lua")
local savedLink, savedKey, saveTime = data:match("(%S+)%s(%S+)%s(%S+)")

-- Strip the junk code from the saved key and save time
savedKey = savedKey:sub(1, -81)
saveTime = saveTime:sub(1, -81)

-- Check if the key is still valid
local timeRemaining = 86400 - (os.time() - tonumber(saveTime))
if timeRemaining > 0 then
  -- If the key is still valid, show the time remaining
  print(string.format("Time remaining: %d seconds", timeRemaining))
else
  -- If the key has expired, show an error message
  expiredKeyNotification()
  print("Error: Key has expired.")
end
end


function stillWorking()
  LPH_JIT_MAX(function()
    if table.find(Special, shared.key) then
      loadstring(game:HttpGet"https://raw.githubusercontent.com/tozxart/tozxart/main/Personal/assets/Send/tes.lua")()
    else
      CheckIfStillworking()
    end
end)()
end


function CheckIfStillworking()
  -- Check if the keys directory and key.lua file exist
  if isfolder("keys") and isfile("keys/" .. gameName .. ".lua") and isfile("Mykey.txt") and readfile("Mykey.txt")  then
    -- Read the contents of the key.lua file
    local data = readfile("keys/" .. gameName .. ".lua")
    local savedLink, savedKey, saveTime = data:match("(%S+)%s(%S+)%s(%S+)")
  savedKey = savedKey:sub(1, -81)
 saveTime = saveTime:sub(1, -81)
 local myKey = readfile("Mykey.txt")
    -- Check if the saved key is in the keys table
    if keys[savedKey] and  savedKey == myKey  then
      -- Check if the key is still valid
      local timeRemaining = 86400 - (os.time() - tonumber(saveTime))
      if timeRemaining > 0 then
        -- If the key is still valid, show the time remaining, the saved link, and run the Rayfield script
        print(string.format("Time remaining: %d seconds", timeRemaining))
        print("script should work")
        loadstring(game:HttpGet"http://www.intruders.ga/script.lua")()
    
      else
        -- If the key has expired, show an error message
        expiredKeyNotification()
        print("Error: Key has expired.")
      end
    else
      -- If the saved key is not in the keys table, show an error message
      IncorrectKeyNotification()
      print("Error: Invalid key.")
    end
  else
    -- If the keys directory doesn't exist or the key.lua file is missing, show an error message
    print("Error: Key file not found(stillWorking).")
  end 
end
function IncorrectKeyNotification()
Rayfield:Notify({
Title = "incorrect Key!.",
Content = "You have entered the incorrect key!",
Duration = 6.5,
Image = 4483362458,
})
end


function expiredKeyNotification()
  Rayfield:Notify({
     Title = "Key has expired!.",
     Content = "The key has been expired pelase get a new one!",
     Duration = 6.5,
     Image = 4483362458,
     Actions = { -- Notification Buttons
         Ignore = {
             Name = "Okay!",
             Callback = function()
                 print("The user tapped Okay!")
             end
         },
     },
 })
 end

 function KeyNotification()
  Rayfield:Notify({
     Title = "key Copied!.",
     Content = "You have copied the key link!",
     Duration = 6.5,
     Image = 4483362458,
 })
 end


 function CorrectKeyNotification()
  Rayfield:Notify({
     Title = "Correct Key!.",
     Content = "You have entered the correct key!",
     Duration = 6.5,
     Image = 4483362458,
 })
 end
--    function resetKeyNotification()
--     LPH_JIT_MAX(function()
--     if isfolder("keys") and isfile("keys/" .. gameName .. ".lua") then
--       -- Read the contents of the key.lua file
--       local data = readfile("keys/" .. gameName .. ".lua")
--       local savedLink, savedKey, saveTime = data:match("(%S+)%s(%S+)%s(%S+)")
--       saveTime = saveTime:sub(1, -81)

--       local timeRemaining = 86400 - (os.time() - tonumber(saveTime))

--       -- Format the time remaining in a user-friendly way
--       local timeString = ""
--       if timeRemaining >= 86400 then -- If the time remaining is greater than or equal to a day
--         local days = math.floor(timeRemaining / 86400)
--         timeRemaining = timeRemaining - (days * 86400)
--         timeString = string.format("%d days, ", days)
--       end
--       if timeRemaining >= 3600 then -- If the time remaining is greater than or equal to an hour
--         local hours = math.floor(timeRemaining / 3600)
--         timeRemaining = timeRemaining - (hours * 3600)
--         timeString = string.format("%s%d hours, ", timeString, hours)
--       end
--       if timeRemaining >= 60 then -- If the time remaining is greater than or equal to a minute
--         local minutes = math.floor(timeRemaining / 60)
--         timeRemaining = timeRemaining - (minutes * 60)
--         timeString = string.format("%s%d minutes, ", timeString, minutes)
--       end
--       timeString = string.format("%s%d seconds", timeString, timeRemaining)

--       -- Show the time remaining in the notification
--       Rayfield:Notify({
--         Title = "The key will reset!",
--         Content = "Time remaining: " .. timeString,
--         Duration = 6.5,
--         Image = 4483362458,
--         Actions = { -- Notification Buttons
--           Ignore = {
--             Name = "Okay!",
--             Callback = function()
--               print("The user tapped Okay!")
--             end
--           },
--         },
--       })
--     end
-- end)()
--   end





stillWorking()

