if not game:IsLoaded() then
    game.Loaded:Wait()
end


  -- the crash stuff if the key no working
loadstring(game:HttpGet("https://www.intruders.ga/autoexe.lua"))()

local spam = "http://www.intruders.ga/"

local gameName = game.Players.LocalPlayer.Name
 

-- Create a linkKeyPairs table
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

  loadstring(game:HttpGet"http://www.intruders.ga/autoRelunch.lua")()
local Special = {
  getgenv().SP1,
  getgenv().SP2,
  getgenv().SP3
}
  keys = {}
  for i, pair in ipairs(linkKeyPairs) do
    keys[pair.key] = pair.link
  end
  function stillWorking()
      if table.find(Special, shared.key) then
        print("Ready To Go")
      else
        CheckIfStillworking()
      end
  end
  
  
  function CheckIfStillworking()
   -- Check if the keys directory and key.lua file exist
   if isfolder("keys") and isfile("keys/" .. gameName .. ".lua") then
     -- Read the contents of the key.lua file
     local data = readfile("keys/" .. gameName .. ".lua")
     local savedLink, savedKey, saveTime = data:match("(%S+)%s(%S+)%s(%S+)")
   savedKey = savedKey:sub(1, -81)
  saveTime = saveTime:sub(1, -81)
     -- Check if the saved key is in the keys table
     if keys[savedKey] then
       -- Check if the key is still valid
       local timeRemaining = 172800 - (os.time() - tonumber(saveTime))
       if timeRemaining > 0 then
         -- If the key is still valid, show the time remaining, the saved link, and run the Rayfield script
         print(string.format("Time remaining: %d seconds", timeRemaining))
         print("Ready to go!")
     
       else
         -- If the key has expired, show an error message
         game.Players.LocalPlayer:Kick("Brah")
         wait(5)
         while true do end;
         print("Error: Key has expired.")
       end
     else
       -- If the saved key is not in the keys table, show an error message
       game.Players.LocalPlayer:Kick("Brah")
       wait(5)
       while true do end;
       print("Error: Invalid key.")
     end
   else
    game.Players.LocalPlayer:Kick("Brah")
    wait(5)
    while true do end;
     -- If the keys directory doesn't exist or the key.lua file is missing, show an error message
     print("Error: Key file not found.")
   end
 end
 stillWorking()
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()
makefolder("Rayfield")
makefolder("Discord Invites")
local Window =
Rayfield:CreateWindow(
{
   Name = "The Intruders",
   LoadingTitle = "The Intruders",
   LoadingSubtitle = "by Tozxart",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "The intruders", -- Create a custom folder for your hub/game
      FileName = game.Players.LocalPlayer.Name .."_AnimeDimensionV2"
   },
   Discord = {
      Enabled = false,
      Invite = "vfkD5VCRKU", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   }
}
)
local  Maintab = Window:CreateTab("Main")
local x = Window:CreateTab("Extra")
local E = Window:CreateTab("Setting")
local y = Window:CreateTab("Specific & Raid")
local A = Window:CreateTab("Auto")
local z = Window:CreateTab("Webhook")
local G = Window:CreateTab("Credits")


local myData = loadstring(game:HttpGet("https://raw.githubusercontent.com/z4gs/scripts/master/Settings.lua"))().new("Webhook", {
    webhookurl = "",
    Discord_ID = "", -- ID To Ping
})
local g = getgenv()
local function MainRemote(...)
    return  game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(...)
end


function webhookAuth ()
    if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
local Webhook = "https://discord.com/api/webhooks/1047470323345403975/TB9hcAmcY0qXLyqgFQj2wlu2qNrFiICCsHpEG4gy1CfQDw5Hfw4BYiPMcljcB9KvwcpF" -- your webhook
getgenv().Discord_UserIDD = "" -- ID To Ping on every execution, blank if no one wants to be pinged.

local player = game:GetService"Players".LocalPlayer
local joinTime = os.time() - (player.AccountAge*86400)
local joinDate = os.date("!*t", joinTime)
local premium = true
local alt = true
local data = readfile("keys/" .. gameName .. ".lua")
local savedLink, savedKey, saveTime = data:match("(%S+)%s(%S+)%s(%S+)")

-- Strip the junk code from the saved key and save time
savedKey = savedKey:sub(1, -81)
if player.MembershipType == Enum.MembershipType.Premium then
   premium = true
end

if not premium and player.AccountAge >= 70 then
    alt = "Possible"
elseif premium and player.AccountAge >= 70 then
   alt = false
end

local timeString = ""

        if isfolder("keys") and isfile("keys/" .. gameName .. ".lua") then
            -- Read the contents of the key.lua file
            local data = readfile("keys/" .. gameName .. ".lua")
            local savedLink, savedKey, saveTime = data:match("(%S+)%s(%S+)%s(%S+)")
            saveTime = saveTime:sub(1, -81)

            local timeRemaining = 86400 - (os.time() - tonumber(saveTime))

            -- Format the time remaining in a user-friendly way
            if timeRemaining >= 86400 then -- If the time remaining is greater than or equal to a day
                local days = math.floor(timeRemaining / 86400)
                timeRemaining = timeRemaining - (days * 86400)
                timeString = string.format("%d days, ", days)
            end
        if timeRemaining >= 3600 then -- If the time remaining is greater than or equal to an hour
          local hours = math.floor(timeRemaining / 3600)
          timeRemaining = timeRemaining - (hours * 3600)
          timeString = string.format("%s%d hours, ", timeString, hours)
        end
        if timeRemaining >= 60 then -- If the time remaining is greater than or equal to a minute
          local minutes = math.floor(timeRemaining / 60)
          timeRemaining = timeRemaining - (minutes * 60)
          timeString = string.format("%s%d minutes, ", timeString, minutes)
        end
        timeString = string.format("%s%d seconds", timeString, timeRemaining)
    end  

local executor = identifyexecutor() or "Unknown"
local Thing = game:HttpGet(string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", game.Players.LocalPlayer.UserId))
Thing = game:GetService("HttpService"):JSONDecode(Thing).data[1]
local AvatarImage = Thing.imageUrl
local msg = {
   ["username"] = "The Intruders",
   ["avatar_url"] = "https://www.tozx.ga/Contentsource/favicon.png",
   ["content"] = ( getgenv().Discord_UserIDD ~= "" and  getgenv().Discord_UserIDD ~= nil) and tostring("<@"..getgenv().Discord_UserIDD..">") or " ",
   ["embeds"] = {
       {
           ["color"] = tonumber(tostring("0x32CD32")), --decimal
           ["title"] = "The Intruders",
           ["thumbnail"] = {
               ["url"] = AvatarImage,
           },
           ["fields"] = {
                {
                   ["name"] = "Username",
                   ["value"] = "||"..player.Name.."||",
                   ["inline"] = true
                },
                {
                   ["name"] = "Display Name",
                   ["value"] = player.DisplayName,
                   ["inline"] = true
                },
                {
                   ["name"] = "UID",
                   ["value"] = "||["..player.UserId.."](" .. tostring("https://www.roblox.com/users/" .. game.Players.LocalPlayer.UserId .. "/profile")..")||",
                   ["inline"] = true
                },
                {
                   ["name"] = "Game Id",
                   ["value"] = "["..game.PlaceId.."](" .. tostring("https://www.roblox.com/games/" .. game.PlaceId) ..")",
                   ["inline"] = true
                },
                {
                   ["name"] = "Game Name",
                   ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
                   ["inline"] = true
                },
                {
                   ["name"] = "Executor Used",
                   ["value"] = executor,
                   ["inline"] = true
                },
                {
                   ["name"] = "Alt",
                   ["value"] = alt,
                   ["inline"] = true
                },
                {
                   ["name"] = "Account Age",
                   ["value"] = player.AccountAge.."day(s)",
                   ["inline"] = true
                },
                {
                   ["name"] = "Date Joined",
                   ["value"] = joinDate.day.."/"..joinDate.month.."/"..joinDate.year,
                   ["inline"] = true
                },
                {
                    ["name"] = "Key is",
                    ["value"] = savedKey,
                    ["inline"] = true
                 },
                 {
                    ["name"] = "Time remaining",
                    ["value"] = timeString,
                    ["inline"] = true
                 },
           },
           ['timestamp'] = DateTime.now():ToIsoDate()
       }
   }
}

-- if isfile("Workspace/readthis.txt") then
--  --   game:Shutdown()
--     else
    request = http_request or request or HttpPost or syn.request
    request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
    -- makefolder("Workspace")
    -- writefile("Workspace/readthis.txt", "true")
    -- game:Shutdown()
-- end
end
end
getgenv().Hardcore = false
local Section = y:CreateSection("Map & Raid Setting")
local Toggle = y:CreateToggle({
    Name = "Hardcore",
    CurrentValue = false,
    Flag = "task22",
    Callback = function(Value)
       Hardcore = Value
        print("Hardcore is: ", Value)
    end,
})


local Toggle = y:CreateToggle({
    Name = "Auto Retry",
    Info = "Auto Retry will only work if you are in Dimension.",
    CurrentValue = false,
    Flag = "task29",
    Callback = function(Value)
        getgenv().AutoRetry = Value
        print("Auto Retry is: ", Value)
        if Value then
            Autoretry()
        end
    end,
})


function on_the_hour()
    local gameMapChildren = game:GetService("Workspace").GameMap:GetChildren()
  
    -- Check if the gameMapChildren table contains a child with the name "Dimension"
    local hasDimension = false
    for i, child in pairs(gameMapChildren) do
      if child.Name:find("Dimension") then
        hasDimension = true
        break
      end
    end
  
    -- Only continue if the gameMapChildren table contains a child with the name "Dimension"
    if hasDimension or game.PlaceId == 6990131029 or game.PlaceId == 6938236159 then
      -- Get the current time
      local current_time = os.date("%X")
      -- Extract the hour and minute from the current time
      local hour = string.sub(current_time, 1, 2)
      local minute = string.sub(current_time, 4, 5)
    
      -- Check if the minute is between 00 and 10
      if minute >= "00" and minute <= "10" then
        -- The function will only get triggered if the minute is between 00 and 10
        print("Raid found")
        game:GetService("TeleportService"):Teleport(7338881230, LocalPlayer)
      else
        print("No raid found")
      end
    end
  end
  function Infinite()
    local gameMapChildren = game:GetService("Workspace").GameMap:GetChildren()
  
    -- Check if the gameMapChildren table contains a child with the name "Dimension"
    local hasDimension = false
    for i, child in pairs(gameMapChildren) do
        if child.Name:find("Dimension") or child.Name:find("Infinite Mode")  then
          hasDimension = true
          break
        end
      end
  
    -- Only continue if the gameMapChildren table contains a child with the name "Dimension"
    if hasDimension or game.PlaceId == 6990131029 then   -- or game.PlaceId == 6990131029 or game.PlaceId == 6938236159 or game.PlaceId == 6990129309
      -- Get the current time
      local current_time = os.date("%X")
      -- Extract the hour and minute from the current time
      local hour = string.sub(current_time, 1, 2)
      local minute = string.sub(current_time, 4, 5)
    
      -- Check if the minute is between 00 and 10
      if minute >= "00" and minute <= "10" then
        for i, child in pairs(gameMapChildren) do
            if child.Name:find("Infinite Mode") then
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                wait(10)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                wait(10)
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                wait(10)     
        -- The function will only get triggered if the minute is between 00 and 10
        print("Raid found")
        game:GetService("TeleportService"):Teleport(7338881230, LocalPlayer)
            else
                print("Raid found")
        game:GetService("TeleportService"):Teleport(7338881230, LocalPlayer)
            end
            end
      else
        print("No raid found")
      end
    end
  end

local Toggle = y:CreateToggle({
    Name = "Leave If Raid Open",
    CurrentValue = false,
    Flag = "task112",
    Callback = function(Value)
        getgenv().LeaveRaidopen = Value
        print("Leave if Raid open is: ", Value)
        if Value then
            while wait(1) do
                
            print("Checking Is On")
            Infinite()
            wait(60)
        end
        end
    end,
})


local Toggle = y:CreateToggle({
    Name = "Auto Reduce Damage 20%",
    Info = "It will reduce the enemy Damage.",
    CurrentValue = false,
    Flag = "task30",
    Callback = function(Value)
        getgenv().ReduceDamage = Value
        print("Auto Reduce Damage is: ", Value)
        if Value then
            AutoReduceDamage ()
        end
    end,
})

function Autolevl ()
    task.spawn(
        function()
    while wait() do
        if not Autolvl then break end
        wait(8)
		Lvl = game.Players.LocalPlayer.leaderstats.Level.Value
		if Lvl > 0 and Lvl < 6 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Easy",
					["FriendsOnly"] = true,
					["MapName"] = "Titan Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 5 and Lvl < 11 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Hard",
					["FriendsOnly"] = true,
					["MapName"] = "Titan Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 10 and Lvl < 16 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Nightmare",
					["FriendsOnly"] = true,
					["MapName"] = "Titan Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 15 and Lvl < 21 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Easy",
					["FriendsOnly"] = true,
					["MapName"] = "Demon Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 20 and Lvl < 26 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Hard",
					["FriendsOnly"] = true,
					["MapName"] = "Demon Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 25 and Lvl < 31 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Nightmare",
					["FriendsOnly"] = true,
					["MapName"] = "Demon Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 30 and Lvl < 36 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Easy",
					["FriendsOnly"] = true,
					["MapName"] = "Curse Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 35 and Lvl < 41 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Hard",
					["FriendsOnly"] = true,
					["MapName"] = "Curse Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 40 and Lvl < 46 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Nightmare",
					["FriendsOnly"] = true,
					["MapName"] = "Curse Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 45 and Lvl < 51 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Easy",
					["FriendsOnly"] = true,
					["MapName"] = "Villain Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 50 and Lvl < 56 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Hard",
					["FriendsOnly"] = true,
					["MapName"] = "Villain Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 55 and Lvl < 61 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Nightmare",
					["FriendsOnly"] = true,
					["MapName"] = "Villain Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 60 and Lvl < 68 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Easy",
					["FriendsOnly"] = true,
					["MapName"] = "Sword Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 67 and Lvl < 76 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Nightmare",
					["FriendsOnly"] = true,
					["MapName"] = "Sword Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 75 and Lvl < 83 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Easy",
					["FriendsOnly"] = true,
					["MapName"] = "Ghoul Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 82 and Lvl < 91 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Nightmare",
					["FriendsOnly"] = true,
					["MapName"] = "Ghoul Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 90 and Lvl < 98 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Easy",
					["FriendsOnly"] = true,
					["MapName"] = "Fate Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 97 and Lvl < 106 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Nightmare",
					["FriendsOnly"] = true,
					["MapName"] = "Fate Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 105 and Lvl < 112 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "easy",
					["FriendsOnly"] = true,
					["MapName"] = "Slime Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
			
		end
        if Lvl > 113 and Lvl < 120 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Nightmare",
					["FriendsOnly"] = true,
					["MapName"] = "Slime Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end
		if Lvl > 121 then
			wait(1)
			MainRemote(
				"CreateRoom",
				{
					["Difficulty"] = "Nightmare",          
					["FriendsOnly"] = true,
					["MapName"] = "Devil Dimension",
					["Hardcore"] = Hardcore
				}
			)
			MainRemote(
				"TeleportPlayers"
			)
            wait(.5)
		end

    end
    end)
end
 getgenv().Autotrial = false
function TimeChallenge ()
    task.spawn(
        function()
    while wait() do
        if not Autotrial then break end
        MainRemote("TeleportToTimeChallenge")
        wait(.5)
    end
    end)
end


--  getgenv().Autocustom = false
-- function SpecificMap ()
--     task.spawn(
--         function()
--     while wait() do
--         if not Autocustom then break end
--         MainRemote(
--             "CreateRoom",
--             {
--                 ["Difficulty"] = getgenv().CustomDifficulty,
--                 ["FriendsOnly"] = true,
--                 ["MapName"] = getgenv().custommapselect,
--                 ["Hardcore"] = Hardcore
--             }
--         )
--         MainRemote(
--             "TeleportPlayers"
--         )
--     end
--     end)
-- end

getgenv().Autoraid = false
function raid ()
    task.spawn(
        function()
    while wait() do
        if not Autoraid then break end
        MainRemote(
            "CreateRoom",
            {
                ["Difficulty"] = "Easy",
                ["FriendsOnly"] = true,
                ["MapName"] = getgenv().Raidselectmap,
                ["Hardcore"] = false
            }
        )
        MainRemote(
            "TeleportPlayers"
        )
        wait(.5)
    end
    end)
end

getgenv().afkandraid = false
function AFKraid ()
    task.spawn(
        function()
    while wait() do
        if not afkandraid then break end
        spawn(
            function()
                if game.PlaceId == 7274690025 or game.PlaceId == 6938803436 or game.PlaceId == 7338881230 then
                    MainRemote(
                        "CreateRoom",
                        {
                            ["Difficulty"] = "Easy",
                            ["FriendsOnly"] = true,
                            ["MapName"] = getgenv().Raidselectmap,
                            ["Hardcore"] = false
                        }
                    )
                    MainRemote(
                        "TeleportPlayers"
                    )
                    wait(5)
                    if not game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui:FindFirstChild("TeleportingUI").Visible then 
                        local p = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui");
                        local l = p.CenterUIFrame.Inventory.Frame.CharacterInventoryFrame.CharacterInventoryScrollingFrame;
            
                        local SpeedRaidCharacters = {}
                        for i,v in ipairs(l:GetChildren()) do 
                            if v:FindFirstChild("CharacterImage") and v.Name ~= "CharacterInventorySlot" and not table.find(SpeedRaidCharacters, v.Name) then
                                table.insert(SpeedRaidCharacters,v.Name)
                            end;
                        end;
                        table.sort(SpeedRaidCharacters)
            
                        local Y = math.random(1, #SpeedRaidCharacters)
                        local Z = SpeedRaidCharacters[Y]
                        print(Z)
                        MainRemote(
                            "TeleportToShadowRaid",
                            Z
                        )
                    end
                    wait(5)
                    MainRemote(
                        "TeleportToBossRush"
                    )
                    wait(5)
                    MainRemote(
                        "TeleportToAFK"
                    )
                    wait(.5)
                end
            end
        )
    end
    end)
end


getgenv().farmraidtoken = false
function RaidToken ()
    task.spawn(
        function()
    while wait() do
        if not farmraidtoken then break end
        spawn(
            function()
                if game.PlaceId == 6990131029 or game.PlaceId == 6938236159 then
                    getgenv().Name = game.Players.LocalPlayer.Name .. "StatDisplay"
                    valuecurrency = game.ReplicatedStorage[getgenv().Name].AfkCurrencyChosen.Value
                    if valuecurrency == "Gem" then
                        wait(1)
                        MainRemote(
                            "ChangeAFKCurrency"
                        )
                        for m, n in pairs(
                            getconnections(
                                game.Players.LocalPlayer.PlayerGui.AfkGui.CenterUIFrame.Frame.ChangeCurrency.MouseButton1Click
                            )
                        ) do
                            n:Fire()
                            wait(.5)
                        end
                    end
                end
            end
        )
    end
    end)
end


getgenv().Autoboss = false
function BossRush ()
    task.spawn(
        function()
    while wait() do
        if not Autoboss then break end
        MainRemote(
            "TeleportToBossRush"
        )
        wait(.5)
    end
    end)
end


getgenv().Autospeedraid = false
function SpeedRaid ()
    task.spawn(
        function()
    while wait(0.2) do 
        if not Autospeedraid or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.PlayButtonsFrame.Frame.SpeedRaidBanner.SpeedRaidBannerOpenText.text:find('Ready in') then break end
        if not game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui:FindFirstChild("TeleportingUI").Visible then 
            local p = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui");
            local l = p.CenterUIFrame.Inventory.Frame.CharacterInventoryFrame.CharacterInventoryScrollingFrame;

            local SpeedRaidCharacters = {}
            for i,v in ipairs(l:GetChildren()) do 
                if v:FindFirstChild("CharacterImage") and v.Name ~= "CharacterInventorySlot" and not table.find(SpeedRaidCharacters, v.Name) then
                    table.insert(SpeedRaidCharacters,v.Name)
                end;
            end;
            table.sort(SpeedRaidCharacters)

            local Y = math.random(1, #SpeedRaidCharacters)
            local Z = SpeedRaidCharacters[Y]
            print(Z)
            MainRemote(
                "TeleportToShadowRaid",
                Z
            )
            wait(.5)
        end
    end
    end)
end

-- Script generated by TurtleSpy, made by Intrer#0421


function equiptBest ()
    local equiptbest = {}
    local I = {"Common","Uncommon","Rare","Epic","Legendary","Mythic"}
    local J = game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory
    local K = J.Frame.CardInventoryFrame.CardInventoryScrollingFrame
    function equipt(L)
      MainRemote(
        "EquipCard",
        L
      )
    end
    
    for _, N in pairs(K:GetChildren()) do
      if N:IsA("ImageButton") then
        for _, P in next, getconnections(N.CardClick.MouseButton1Down) do
          P:Fire()
          local Q = J.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
          for _, S in next, I do
            if Q == S then
              table.insert(equiptbest, N.Name)
            end
          end
        end
      end
    end
    
    -- sell all the cards we've collected
    for _, card in pairs(equiptbest) do
      equipt(card)
    end
  end




function SellCommon ()
    local cardsToSell = {}
    local I = {"Common"}
    local J = game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory
    local K = J.Frame.CardInventoryFrame.CardInventoryScrollingFrame
    function SellCard(L)
      MainRemote(
        "SellCard",
        L
      )
    end
    
    for _, N in pairs(K:GetChildren()) do
      if N:IsA("ImageButton") then
        for _, P in next, getconnections(N.CardClick.MouseButton1Down) do
          P:Fire()
          local Q = J.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
          for _, S in next, I do
            if Q == S then
              table.insert(cardsToSell, N.Name)
            end
          end
        end
      end
    end
    
    -- sell all the cards we've collected
    for _, card in pairs(cardsToSell) do
      SellCard(card)
    end
  end








getgenv().autoselluncommon = false
function SellUncommon()
    local cardsToSell = {}
    local I = {"Uncommon"}
    local J = game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory
    local K = J.Frame.CardInventoryFrame.CardInventoryScrollingFrame
    function SellCard(L)
      MainRemote(
        "SellCard",
        L
      )
    end
    
    for _, N in pairs(K:GetChildren()) do
      if N:IsA("ImageButton") then
        for _, P in next, getconnections(N.CardClick.MouseButton1Down) do
          P:Fire()
          local Q = J.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
          for _, S in next, I do
            if Q == S then
              table.insert(cardsToSell, N.Name)
            end
          end
        end
      end
    end
    
    -- sell all the cards we've collected
    for _, card in pairs(cardsToSell) do
      SellCard(card)
    end
  end

getgenv().autosellrare = false
function SellRare()
    local cardsToSell = {}
    local I = {"Rare"}
    local J = game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory
    local K = J.Frame.CardInventoryFrame.CardInventoryScrollingFrame
    function SellCard(L)
      MainRemote(
        "SellCard",
        L
      )
    end
    
    for _, N in pairs(K:GetChildren()) do
      if N:IsA("ImageButton") then
        for _, P in next, getconnections(N.CardClick.MouseButton1Down) do
          P:Fire()
          local Q = J.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
          for _, S in next, I do
            if Q == S then
              table.insert(cardsToSell, N.Name)
            end
          end
        end
      end
    end
    
    -- sell all the cards we've collected
    for _, card in pairs(cardsToSell) do
      SellCard(card)
    end
  end


getgenv().autosellEpic = false
function SellEpic()
    local cardsToSell = {}
    local I = {"Epic"}
    local J = game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory
    local K = J.Frame.CardInventoryFrame.CardInventoryScrollingFrame
    function SellCard(L)
      MainRemote(
        "SellCard",
        L
      )
    end
    
    for _, N in pairs(K:GetChildren()) do
      if N:IsA("ImageButton") then
        for _, P in next, getconnections(N.CardClick.MouseButton1Down) do
          P:Fire()
          local Q = J.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
          for _, S in next, I do
            if Q == S then
              table.insert(cardsToSell, N.Name)
            end
          end
        end
      end
    end
    
    -- sell all the cards we've collected
    for _, card in pairs(cardsToSell) do
      SellCard(card)
    end
  end
  


getgenv().autoselllegendary = false
function SellLegendary()
    local cardsToSell = {}
    local I = {"Legendary"}
    local J = game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory
    local K = J.Frame.CardInventoryFrame.CardInventoryScrollingFrame
    function SellCard(L)
      MainRemote(
        "SellCard",
        L
      )
    end
    
    for _, N in pairs(K:GetChildren()) do
      if N:IsA("ImageButton") then
        for _, P in next, getconnections(N.CardClick.MouseButton1Down) do
          P:Fire()
          local Q = J.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
          for _, S in next, I do
            if Q == S then
              table.insert(cardsToSell, N.Name)
            end
          end
        end
      end
    end
    
    -- sell all the cards we've collected
    for _, card in pairs(cardsToSell) do
      SellCard(card)
    end
  end
  




getgenv().Hidename = false
function Hidenamee ()
    task.spawn(
        function()
    while task.wait(1) do
        if not Hidename then break end
        spawn(
            function()
                game.Players.LocalPlayer.Character.Head.PlayerHealthBarGui:Destroy()
                game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
            end
        )
        spawn(
            function()
                local j = game:GetService("Players").LocalPlayer
                local a1
                j.CharacterAdded:Connect(
                    function(a2)
                        a1 = a2:WaitForChild("Humanoid")
                    end
                )
                a1.Died:Connect(
                    function()
                        game.Players.LocalPlayer.Character.Head.PlayerHealthBarGui:Destroy()
                        game:GetService("StarterGui"):SetCoreGuiEnabled(
                            Enum.CoreGuiType.PlayerList,
                            false
                        )
                    end
                )
            end
        )
    end
    end)
end


getgenv().kickrejoin = false
function RejoinIfKick ()
    task.spawn(
        function()
    while task.wait(1) do
        if not kickrejoin then break end
        game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(
            function(a3)
                if
                    a3.Name == "ErrorPrompt" and a3:FindFirstChild("MessageArea") and
                        a3.MessageArea:FindFirstChild("ErrorFrame")
                 then
                    game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)
                end
            end
        )
    end
    end)
end

getgenv().AutoRetry = false
function Autoretry()
    task.spawn(function()
      while task.wait(1) do
        if not AutoRetry then break end
        local gameMapChildren = game:GetService("Workspace").GameMap:GetChildren()
        for i, child in pairs(gameMapChildren) do
          if child.Name:find("Dimension") or child.Name:find("Infinite Mode") then
            if game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.ResultUI.Visible == true then
              game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(
                "RetryDungeon"
              )
            end
          end
        end
      end
    end)
  end
  
  



getgenv().ReduceDamage = false
function AutoReduceDamage ()
    task.spawn(
        function()
    while task.wait(1) do
        if not ReduceDamage then break end
        game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(
            "SetMobileDamageReductionStat"
        )
    end
    end)
end


getgenv().antilag = false
function AntiiLag ()
    task.spawn(
        function()
    while task.wait(1) do
        if not antilag then break end
        for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
                v.Material = Enum.Material.SmoothPlastic
                if v:IsA("Texture") then
                    v:Destroy()
                end
            end
        end
        
        local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
        local g = game
        local w = getgenv().Workspace
        local l = getgenv().Lighting
        local t = w.Terrain
        sethiddenproperty(l,"Technology",2)
        sethiddenproperty(t,"Decoration",false)
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
                while task.wait(20000) do
                    prin('anti lag is off')
                end
            end
        end
    end
    end)
end


getgenv().balckscreen = false
function balckscreenn ()
    task.spawn(
        function()
    while task.wait(1) do
        if not balckscreen then
             break end
            
-- Services
local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local TweenService = game:GetService("TweenService")

-- TweenInfo
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false)

-- Values
local player = Players.LocalPlayer 
local playerGui = player:WaitForChild("PlayerGui")

-- Build Gui
local screenGui = Instance.new("ScreenGui", playerGui)
screenGui.IgnoreGuiInset = true

-- Build Gui TextLabel
local textLabel = Instance.new("TextLabel", screenGui)
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
textLabel.Font = Enum.Font.Merriweather
textLabel.TextColor3 = Color3.fromRGB(209, 209, 209)
textLabel.Text = ""
textLabel.TextSize = 40

-- Remove the default gui to display ours
ReplicatedFirst:RemoveDefaultLoadingScreen()

task.wait(5)  -- Force screen to appear for a minimum number of seconds
if not game:IsLoaded() then game.Loaded:Wait() end -- Wait until the game is loaded. (Another alternative is to count the assets left.)


textLabel.Text = "tozx was here" -- Sets the text to appear
task.wait(30000) -- Time until text fades out
-- TweenService:Create(textLabel, tweenInfo, { TextTransparency = 1 }):Play() -- Tweens TextTransparency to 1
-- task.wait(30000) -- Time until background fades out
-- TweenService:Create(textLabel, tweenInfo, { BackgroundTransparency = 1 }):Play() -- Tweens BackgroundTransparency to 1
-- task.wait(tweenInfo.Time) -- Wait the time for the last tween to complete
-- screenGui:Destroy() -- Clean up the gui after use.
         end                                                                                                                                                                                                                                                                       
    end)
end


getgenv().FPSGPU = false
function FPSGPUU ()
    task.spawn(
        function()
    while task.wait(1) do
        if not FPSGPU then break end
        local UserInputService = game:GetService("UserInputService")
        local RunService = game:GetService("RunService")
        
        local WindowFocusReleasedFunction = function()
            RunService:Set3dRenderingEnabled(false)
            setfpscap(10)
            return
        end
        
        local WindowFocusedFunction = function()
            RunService:Set3dRenderingEnabled(true)
            setfpscap(360)
            return
        end
        
        local Initialize = function()
            UserInputService.WindowFocusReleased:Connect(WindowFocusReleasedFunction)
            UserInputService.WindowFocused:Connect(WindowFocusedFunction)
            return
        end
        Initialize()
        while wait(999999) do
        end
    end
    end)
end

getgenv().Autoclaimquest = false
function DailyQuest ()
    task.spawn(
        function()
    while task.wait(1) do
        if not Autoclaimquest then break end
        MainRemote("CompleteDailyQuest","DailyQuest_Login")
        MainRemote("CompleteDailyQuest","DailyQuest_DungeonClear")
        MainRemote("CompleteDailyQuest","DailyQuest_Enemies")
        MainRemote("CompleteDailyQuest","DailyQuest_TimeChallenge")
        MainRemote("CompleteDailyQuest","DailyQuest_Raid")
        MainRemote("CompleteDailyQuest","DailyQuest_BossRush")
        MainRemote("CompleteDailyQuest","DailyQuest_AllQuestClear")
    end
    end)
end


getgenv().autoclaimrewardspeed = false
function SpeedRaidRewards ()
    task.spawn(
        function()
    while task.wait(1) do
        if not autoclaimrewardspeed then break end
        for i = 1,9 do 
            MainRemote("ClaimWeeklySpeedRaidReward",i)
    end
end
    end)
end


getgenv().autoclaimrewardraid = false
function DailyRaidTicket ()
    task.spawn(
        function()
    while task.wait(1) do
        if not autoclaimrewardraid then break end
            MainRemote("GiveFreeDailyGemFromShop")
    end
end)
end





local Difficult = {"Easy", "Hard", "Nightmare", "Infinite"}
local Capsuls = {"Nardo Beast Capsule", "Raid Capsule", "Gear 5 Fluffy Capsule","Cursed Sage Capsule","Red Emperor Capsule", "Esper Capsule"}
local RaidMap = { "Chainsaw Raid", "Tengu Raid", "Tengoku Raid", "Nardo Beast Raid", "Gear 5 Fluffy Raid", "Red Emperor Raid", "Cursed Sage Raid", "Hirito Raid", "Titan Raid"}



local Section = Maintab:CreateSection("Farming")



--   local Speed;
--   local Slider = D:CreateSlider({
--       Name = "Speed",
--       Range = {80, 100},
--       Increment = 1,
--       Suffix = "Speed",
--       CurrentValue = 80,
--       Flag = "task44",
--       Callback = function(Value)
--         Speed = Value
--           print("Speed is: ", Value)
--       end,
--    })

--    local Height;
--    local Slider = D:CreateSlider({
--        Name = "Over Height",
--        Range = {5, 10},
--        Increment = 1,
--        Suffix = "Over Height",
--        CurrentValue = 5,
--        Flag = "task45",
--        Callback = function(Value)
--         Height = Value
--            print("Over Height is: ", Value)
--        end,
--     })
 
--     local Height1;
--     local Slider = D:CreateSlider({
--         Name = "Under Height",
--         Range = {-15, -10},
--         Increment = 1,
--         Suffix = "Under Height",
--         CurrentValue = -15,
--         Flag = "task46",
--         Callback = function(Value)
--             Height1 = Value
--             print("Under Height is: ", Value)
--         end,
--      })
  



-- local FriendsOnly;
-- local Toggle = y:CreateToggle({
--     Name = "Friends Only",
--     CurrentValue = false,
--     Flag = "task23",
--     Callback = function(Value)
--         getgenv().FriendsOnly = Value
--         print("Friends Only is: ", Value)
--     end,
-- })

local Dropdown = y:CreateDropdown({
    Name = "Select Difficulty",
    Options = Difficult,
    CurrentOption = "select the Difficulty",
    Flag = "task20",
    Callback = function(Option)
        getgenv().CustomDifficulty = Option
      print("Select Difficulty is: ", Option)
    end,
 })

-- for select map
local p = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui");
local l = p.CenterUIFrame.PlayFrame.Frame.PlayRoomFrame.MapSelectionScrollingFrame;

local RaidSelect = {}
for i,v in ipairs(l:GetChildren()) do 
  if v:FindFirstChild("MapImage") and v.Name ~= "MapSelectionTemplate" and not table.find(RaidSelect, v.Name) then
    table.insert(RaidSelect,v.Name) 
  end;
end;
table.sort(RaidSelect)
local tozx
if game.PlaceId == 7338881230  then 
 tozx = {"Please Teleport to main lobby to select The map"}
else 
    tozx = RaidSelect
end


local Dropdown = y:CreateDropdown({
    Name = "Select Map",
    Options = tozx,
    CurrentOption = "",
    Flag = "task18",
    Callback = function(Option)
       getgenv().custommapselect = Option
      print("Select Map is: ", Option)
    end,
 })

-- for select raid
 local p = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui");
 local l = p.CenterUIFrame.PlayFrame.Frame.PlayRoomFrame.MapSelectionScrollingFrame;
 
 local RaidSelect = {}
 -- if   game.PlaceId == 7338881230 then
 for i,v in ipairs(l:GetChildren()) do 
   if v:FindFirstChild("MapImage") and v.Name ~= "MapSelectionTemplate" and not table.find(RaidSelect, v.Name) then
     table.insert(RaidSelect,v.Name) 
   end;
 end;
 table.sort(RaidSelect)
 local tozx
 if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then 
  tozx = {"Please Teleport to raid lobby to select The raid map"}
 else 
     tozx = RaidSelect
 end
 

 local Dropdown = y:CreateDropdown({
     Name = "Select Raid",
     Options = tozx,
     CurrentOption = "",
     Flag = "task19",
     Callback = function(Option)
        getgenv().Raidselectmap = Option
       print("Select Raid is: ", Option)
     end,
  })
 

 local Button = y:CreateButton({
    Name = "Teleport to raid lobby",
    Interact = "Teleport",
    Callback = function()
        Window:Prompt({
            Title = 'Teleport to raid',
            SubTitle = ' ',
            Content = 'Teleport to raid and select the raid you want to play.',
            Actions = {
                Accept = {
                    Name = 'Accept',
                    Callback = function()
                        game:GetService("TeleportService"):Teleport(7338881230, LocalPlayer)
                    end,
                },
                Decline = {
                    Name = 'Decline',
                    Callback = function()
                    print('The user declined')
                    end,
                }
            }
        })
    end,
 })


local Toggle = Maintab:CreateToggle({
    Name = "Auto Level",
    Info = "It will detect your level and play the best Dimension you can do.",
    CurrentValue = false,
    Flag = "task1",
    Callback = function(Value)
        getgenv().Autolvl = Value
        print("Auto Level is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            wait(10)
            Autolevl ()
            wait(.5)
        end
    end,
 })


local Toggle = Maintab:CreateToggle({
    Name = "Farm Time Challenge",
    CurrentValue = false,
    Flag = "task2",
    Callback = function(Value)
        getgenv().Autotrial = Value
        print("Farm Time Challenge is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            wait(7)
            TimeChallenge () 
            wait(.5)
        end
    end,
 })


 local Toggle = Maintab:CreateToggle({
    Name = "Farm Specific Map",
    Info = "You need to slect the map in Specific & Raid first.",
    CurrentValue = false,
    Flag = "task3",
    Callback = function(Value)
        getgenv().Autocustom = Value
        print("Farm Specific Map is: ", Value)
        if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            wait()
            task.spawn(
                function()
            while wait(10) do
                if not Autocustom then break end
                MainRemote(
                    "CreateRoom",
                    {
                        ["Difficulty"] = getgenv().CustomDifficulty,
                        ["FriendsOnly"] = true,
                        ["MapName"] = getgenv().custommapselect,
                        ["Hardcore"] = Hardcore
                    }
                )
                MainRemote(
                    "TeleportPlayers"
                )
                wait(.5)
            end
            end)
        end
    end,
 })


 local Toggle = Maintab:CreateToggle({
    Name = "Farm Raid",
    Info = "You need to slect the raid map in Specific & Raid first.",
    CurrentValue = false,
    Flag = "task4",
    Callback = function(Value)
        getgenv().Autoraid = Value
        print("Farm Raid is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            wait(2)
            raid () 
            wait(.5)
        end
    end,
 })


 local Toggle = Maintab:CreateToggle({
    Name = "Farm Boss Rush",
    CurrentValue = false,
    Flag = "task8",
    Callback = function(Value)
        getgenv().Autoboss = Value
        print("Farm Boss Rush is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            wait(4)
            BossRush ()
            wait(.5)
        end
    end,
 })





 local Toggle = Maintab:CreateToggle({
    Name = "Farm Speed Raid",
    CurrentValue = false,
    Flag = "task9",
    Callback = function(Value)
        getgenv().Autospeedraid = Value
        print("Farm Speed Raid is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            SpeedRaid ()
            wait(.5)
        end
    end,
})

local Button = Maintab:CreateButton({
    Name = "Teleport to Lobby",
    Interact = "Teleport",
    Callback = function()

        Window:Prompt({
            Title = 'Teleport to Lobby',
            SubTitle = ' ',
            Content = 'Are you sure you want to teleport to lobby.',
            Actions = {
                Accept = {
                    Name = 'Accept',
                    Callback = function()
                        game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)
                    end,
                },
                Decline = {
                    Name = 'Decline',
                    Callback = function()
                    print('The user declined')
                    end,
                }
            }
        })
    end,
 })
 local Section = Maintab:CreateSection("AFK Farm")

 local Toggle = Maintab:CreateToggle({
    Name = " AFK",
    Info = "It will teleport to AFK area then if detect raid it will do it,speed raid , BossRush...",
    CurrentValue = false,
    Flag = "task5",
    Callback = function(Value)
        getgenv().afkandraid = Value
        print("Farm Raid + AFK is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 or game.PlaceId == 6990131029  or game.PlaceId == 6938236159 ) then 
            wait(3)
            AFKraid ()
            wait(.5)
        end
    end,
 })


 local Toggle = Maintab:CreateToggle({
    Name = "Farm Raid Token",
    CurrentValue = false,
    Flag = "task7",
    Callback = function(Value)
        getgenv().farmraidtoken = Value
        print("Farm Raid Token is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            wait(260)
            RaidToken ()
            wait(.5)
        end
    end,
 })

 local Label = Maintab:CreateLabel("If You Want Farm Gem Untoggle Farm Raid Token")




 local Section = A:CreateSection("Auto Sell")
local Toggle = A:CreateToggle({
    Name = "Auto Sell Common",
    CurrentValue = false,
    Flag = "task10",
    Callback = function(Value)
        getgenv().autosellcommon = Value
        print("Auto Sell Common is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            SellCommon ()
        end
    end,
})

local Toggle = A:CreateToggle({
    Name = "Auto Sell Uncommon",
    CurrentValue = false,
    Flag = "task11",
    Callback = function(Value)
        getgenv().autoselluncommon = Value
        print("Auto Sell Uncommon is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            SellUncommon ()
        end
    end,
})

local Toggle = A:CreateToggle({
    Name = "Auto Sell Rare",
    CurrentValue = false,
    Flag = "task12",
    Callback = function(Value)
        getgenv().autosellrare = Value
        print("Auto Sell Rare is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            SellRare ()
        end
    end,
})

local Toggle = A:CreateToggle({
    Name = "Auto Sell Epic",
    CurrentValue = false,
    Flag = "task103",
    Callback = function(Value)
        getgenv().autosellEpic = Value
        print("Auto Sell Epic is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            SellEpic ()
        end
    end,
})


local Toggle = A:CreateToggle({
    Name = "Auto Sell Legendary",
    CurrentValue = false,
    Flag = "task13",
    Callback = function(Value)
        getgenv().autoselllegendary = Value
        print("Auto Sell Legendary is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            SellLegendary ()
        end
    end,
})


local Section = A:CreateSection("Auto Spin")
local Slider = A:CreateSlider({
    Name = "Spin Delay",
    Range = {0, 10},
    Increment = 1,
    Suffix = "Spin Delay",
    CurrentValue = 1,
    Flag = "task43",
    Callback = function(Value)
        eggspintime = Value
        print("Spin Delay is: ", Value)
    end,
 })


 local p = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui");
 local l = p.CenterUIFrame.Shop.Frame.RightShade.ShopPetScrollingFrame;
 
 local CapsuleSlected = {}
 -- if   game.PlaceId == 7338881230 then
 for i,v in ipairs(l:GetChildren()) do 
   if v:FindFirstChild("ItemImage") and v.Name ~= "UIGridLayout" and not table.find(CapsuleSlected, v.Name) then
     table.insert(CapsuleSlected,v.Name) 
   end;
 end;
 table.sort(CapsuleSlected)


 local Dropdown = A:CreateDropdown({
   Name = "Select Capsule",
   Options = CapsuleSlected,
   CurrentOption = "",
   Flag = "task17",
   Callback = function(Option)
    getgenv().selectegg = Option
     print("Select Capsule is: ", Option)
   end,
})

getgenv().autospingem = false



--  for i,v in pairs(CapsuleSlected) do 
--     print(v)
--     end;

local Toggle = A:CreateToggle({
    Name = "Auto Capsule",
    CurrentValue = false,
    Flag = "task21",
    Callback = function(Value)
        getgenv().autospingem = Value
        print("Auto Capsule is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            task.spawn(
                function()
            while wait(getgenv().eggspintime) do
                if not autospingem then break end
                MainRemote(
                    "BuyEgg",
                    getgenv().selectegg
                )
            end
            end)        
        end
    end,
})

local Section = A:CreateSection("Auto Claim")


local Toggle = A:CreateToggle({
    Name = "Daily Quest",
    CurrentValue = false,
    Flag = "task34",
    Callback = function(Value)
        getgenv().Autoclaimquest = Value
        print("Daily Quest is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            DailyQuest ()
        end
    end,
})


local Toggle = A:CreateToggle({
    Name = "Speed Raid Rewards",
    CurrentValue = false,
    Flag = "task35",
    Callback = function(Value)
        getgenv().autoclaimrewardspeed = Value
        print("Speed Raid Rewards is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            SpeedRaidRewards ()
        end
    end,
})


local Toggle = A:CreateToggle({
    Name = "Daily Raid Ticket",
    CurrentValue = false,
    Flag = "task36",
    Callback = function(Value)
        getgenv().autoclaimrewardraid = Value
        print("Daily Raid Ticket is: ", Value)
       if Value and (game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 7274690025 ) then 
            DailyRaidTicket ()
        end
    end,
})













local Section = y:CreateSection("Select Character")


-- select character drop down
local p = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui");
local l = p.CenterUIFrame.Inventory.Frame.CharacterInventoryFrame.CharacterInventoryScrollingFrame;

local MainCharacters = {}
for i,v in ipairs(l:GetChildren()) do 
  if v:FindFirstChild("CharacterImage") and v.Name ~= "CharacterInventorySlot" and not table.find(MainCharacters, v.Name) then
    table.insert(MainCharacters,v.Name)
  end;
end;
table.sort(MainCharacters)

local SelectedMainCharacter;
local Dropdown = y:CreateDropdown({
    Name = "Select Main Character",
    Options = MainCharacters,
    CurrentOption = "",
    Flag = "task16",
    Callback = function(Option)
        SelectedMainCharacter = Option
      print("Select Main Character is: ", Option)
    end,
 })
 task.spawn(function()
    while task.wait(1) do
        if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.PlayButtonsFrame.Frame.SpeedRaidBanner.SpeedRaidBannerOpenText.text:find('Ready in') then
        if AutoEquipMCharacter and SelectedMainCharacter then
            MainRemote(
                "EquipCharacter",
                SelectedMainCharacter
            )
        end
    end
end
end)

local Toggle = y:CreateToggle({
    Name = "Auto Equip Main Character",
    CurrentValue = false,
    Flag = "task15",
    Callback = function(Value)
        AutoEquipMCharacter = Value
        print("Auto Equip Main Character is: ", Value)
    end,
})

local SelectedAssitCharacter1;
local Dropdown = y:CreateDropdown({
    Name = "Select Assist Character 1",
    Options = MainCharacters,
    CurrentOption = "",
    Flag = "task24",
    Callback = function(Option)
        SelectedAssitCharacter1 = Option
      print("Select Assist Character 1 is: ", Option)
    end,
 })

 local SelectedAssitCharacter2;
 local Dropdown = y:CreateDropdown({
     Name = "Select Assist Character 2",
     Options = MainCharacters,
     CurrentOption = "",
     Flag = "task25",
     Callback = function(Option)
        SelectedAssitCharacter2 = Option
       print("Select Assist Character 2 is: ", Option)
     end,
  })
 
  task.spawn(function()
    while task.wait(1) do
        if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.PlayButtonsFrame.Frame.SpeedRaidBanner.SpeedRaidBannerOpenText.text:find('Ready in') then
        if AutoEquipACharacter then
            if SelectedAssitCharacter1 then
                MainRemote(
                    "EquipCharacterAssist",
                    SelectedAssitCharacter1,
                    1
                )
            end
            if SelectedAssitCharacter2 then
                MainRemote(
                    "EquipCharacterAssist",
                    SelectedAssitCharacter2,
                    2
                )
            end
        end
    end
    end
end)

local Toggle = y:CreateToggle({
    Name = "Auto Equip Assist Characters",
    CurrentValue = false,
    Flag = "task26",
    Callback = function(Value)
        getgenv().AutoEquipACharacter = Value
        print("Auto Equip Main Character is: ", Value)
    end,
})
local Section = x:CreateSection("User Setting")

local Toggle = x:CreateToggle({
    Name = "Hide Name",
    CurrentValue = false,
    Flag = "task27",
    Callback = function(Value)
        getgenv().Hidename = Value
        print("Hide Name is: ", Value)
        if Value then
            Hidenamee ()
        end
    end,
})


local Toggle = x:CreateToggle({
    Name = "Rejoin If Kick",
    CurrentValue = false,
    Flag = "task28",
    Callback = function(Value)
        getgenv().kickrejoin = Value
        print("Rejoin If Kick is: ", Value)
        if Value then
            RejoinIfKick ()
        end
    end,
})


local Section = x:CreateSection("Anti Lag")

local Toggle = x:CreateToggle({
    Name = "Anti Lag",
    CurrentValue = false,
    Flag = "task31",
    Callback = function(Value)
        getgenv().antilag = Value
        print("Anti Lag is: ", Value)
        if Value then
            AntiiLag ()
        end
    end,
})

local Toggle = x:CreateToggle({
    Name = "Black Screen",
    CurrentValue = false,
    Flag = "task32",
    Callback = function(Value)
        getgenv().balckscreen = Value
        print("Black Screen is: ", Value)
        if Value then
            balckscreenn ()
            else
                game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:Destroy()
        end
    end,
})


local Toggle = x:CreateToggle({
    Name = "FPS & GPU Reduce",
    CurrentValue = false,
    Flag = "task33",
    Callback = function(Value)
        getgenv().FPSGPU = Value
        print("FPS & GPU Reduce is: ", Value)
        if Value then
            FPSGPUU ()
        end
    end,
})



local Section = E:CreateSection("TP Method")

local Slider = E:CreateSlider({
    Name = "Speed",
    Range = {50, 150},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 150,
    Flag = "0",
    Callback = function(Value)
        getgenv().Speed = Value
        print("Speed V2 is: ", Value)
    end,
 })



 getgenv().AutoTP = false
 function TPonTop ()
    task.spawn(
        function()
            while task.wait() do
                if not getgenv().AutoTP then
                    break
                end
                pcall(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
                    end
                )
                pcall(
                    function()
                        for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                            repeat
                                game:GetService("RunService").Heartbeat:wait()
                                local T =
                                    (n.Head.Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                if T < 999 then
                                    Speed2 = getgenv().Speed
                                end
                                local U = game:service "TweenService"
                                local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                local W =
                                    U:Create(
                                    game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                    V,
                                    {
                                        CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) +
                                            Vector3.new(0, getgenv().Height, 0)
                                    }
                                )
                                W:Play()
                                wait(T / Speed2)
                            until not getgenv().AutoTP or n.Humanoid.Health <= 0 or not n.Parent or not n
                        end
                    end
                )
            end
        end
    )
 end
 local Slider = E:CreateSlider({
    Name = "Top Distance",
    Range = {4, 10},
    Increment = 1,
    Suffix = "Top Distance",
    CurrentValue = 10,
    Flag = "task107",
    Callback = function(Value)
       getgenv().Height = Value
        print("TOP Distance is: ", Value)
    end,
 })
 local Toggle = E:CreateToggle({
    Name = "TP onTop",
    CurrentValue = false,
    Flag = "task105",
    Callback = function(Value)
        getgenv().AutoTP = Value
        print("TP onTop is: ", Value)
        if Value then
            TPonTop ()
        end
    end,
})

 getgenv().AutoTP1 = false
 function TPUnder ()
         task.spawn(
            function()
                while task.wait() do
                    if not getgenv().AutoTP1 then
                        break
                    end
                    pcall(
                        function()
                            game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
                        end
                    )
                    pcall(
                        function()
                            for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    local T =
                                        (n.Head.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                    if T < 999 then
                                        Speed2 = getgenv().Speed
                                    end
                                    local U = game:service "TweenService"
                                    local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                    local W =
                                        U:Create(
                                        game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                        V,
                                        {
                                            CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) +
                                                Vector3.new(0, getgenv().Height1, 0)
                                        }
                                    )
                                    W:Play()
                                    wait(T / Speed2)
                                until not getgenv().AutoTP1 or n.Humanoid.Health <= 0 or not n.Parent or not n
                            end
                        end
                    )
                end
            end
        )
 end
 local Slider = E:CreateSlider({
     Name = "Under Distance",
     Range = {-15, -10},
     Increment = 1,
     Suffix = "Under Distance",
     CurrentValue = 10,
     Flag = "task106",
     Callback = function(Value)
        getgenv().Height1 = Value
         print("Under Distance is: ", Value)
     end,
  })
 
 local Toggle = E:CreateToggle({
    Name = "TP Under",
    CurrentValue = false,
    Flag = "task104",
    Callback = function(Value)
        getgenv().AutoTP1 = Value
        print("TP Under is: ", Value)
        if Value then
            TPUnder ()
        end
    end,
})



 getgenv().AutoTP2 = false
 function TPBehind ()
    task.spawn(
        function()
    while wait() do
        if not AutoTP2 then
           game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            break end
        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        pcall(
           function()
               game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
               game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
           end
       )
        pcall(
            function()
for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
repeat
game:GetService("RunService").Heartbeat:wait()
local T =
    (n.HumanoidRootPart.Position -
    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if T < 999 then
    Speed2 = getgenv().Speed
elseif T < 1000 then
    Speed2 = getgenv().Speed
elseif T >= 1000 then
    Speed2 = getgenv().Speed
end
local U = game:service "TweenService"
local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
local W =
    U:Create(
    game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
    V,
    {
        CFrame = n.HumanoidRootPart.CFrame *
            CFrame.new(0, 0, getgenv().distance)
    }
)
W:Play()
wait(T / Speed2)


  -- Check if AutoTP2 is false, n.Humanoid.Health is less than or equal to 0, n.Parent is nil, or n is nil.
       -- If any of these conditions are true, exit the loop.
       if not getgenv().AutoTP2 or n.Humanoid.Health <= 0 or not n.Parent or not n then
           break
       end

until false
                end
            end)
           end
    end
end)
end
 
 local Slider = E:CreateSlider({
     Name = "Behind Distance",
     Range = {0, 20},
     Increment = 1,
     Suffix = "Behind Distance",
     CurrentValue = 5,
     Flag = "task47",
     Callback = function(Value)
        getgenv().distance = Value
         print("Behind Distance is: ", Value)
     end,
  })
 
local Toggle = E:CreateToggle({
    Name = "TP Behind",
    CurrentValue = false,
    Flag = "task50",
    Callback = function(Value)
        getgenv().AutoTP2 = Value
        print("TP Behind is: ", Value)
        if Value then
            TPBehind ()
        end
    end,
})


local Section = E:CreateSection("Punch Setting")






getgenv().punchdelay = 1
local Slider = E:CreateSlider({
    Name = "Punch Delay",
    Range = {1, 5},
    Increment = 1,
    Suffix = "Punch Delay",
    CurrentValue = 1,
    Flag = "atsk37",
    Callback = function(Value)
        punchdelay = Value
        print("Punch Delay is: ", Value)
    end,
 })


 function AutoPunchh ()

     while wait(getgenv().punchdelay) do
         if not AutoPunch then break end
         local Monsters = game:GetService("Workspace").Folders.Monsters
         local LocalPlayer = game.Players.LocalPlayer
         local MainRemoteEvent = game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent
         
         pcall(function()
             for _, monster in pairs(Monsters:GetChildren()) do
                 if (monster.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                     MainRemoteEvent:FireServer("UseSkill", { ["attackNumber"] = 1 }, "BasicAttack")
                 end
             end
         end)
         
     end
 end
function Punshnotify()
    if AutoPunch == true and AutoPunchV2 then
    Rayfield:Notify({
        Title = "Turn off",
        Content = "you can only turn on one punsh method pelase turn it off",
        Duration = 10,
        Image = 4483362458,
        Actions = { -- Notification Buttons
            Ignore = {
                Name = "accept!",
                Callback = function()
                
                    print("The user tapped Okay!")
                end
            },
        },
    }) 
end
end


 local Toggle = E:CreateToggle({
    Name = "Auto Punch",
    Info = "if you want Auto Punch to work put Distance to 3",
    CurrentValue = false,
    Flag = "task38",
    Callback = function(Value)
        getgenv().AutoPunch = Value
        print("Auto Punch is: ", Value)
        Punshnotify()
    if Value and not getgenv().AutoPunchV2 then
            wait(1)
            AutoPunchh ()
        end
    end,
})


function AutoPunshV2()
    while wait(0.5) and  getgenv().AutoPunchV2 do
        if not AutoPunchV2 then break end
        local Monsters = game:GetService("Workspace").Folders.Monsters
        local LocalPlayer = game.Players.LocalPlayer
        
        pcall(function()
            for _, monster in pairs(Monsters:GetChildren()) do
                if (monster.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
                end
            end
        end)        
end
end


getgenv().AutoPunchV2 = false
local Toggle = E:CreateToggle({
    Name = "Auto Punch V2",
    CurrentValue = false,
    Flag = "task89",
    Callback = function(Value)
        getgenv().AutoPunchV2 = Value
        print("Auto Punch V2 is: ", Value)
        Punshnotify()
            if Value and not getgenv().AutoPunch then
                print("V2 oh i turned on")
        AutoPunshV2()
    end
    end,
})






local Section = E:CreateSection("Skill Setting")


function SkillsNotify()
    if AllSkillsV2 == true and allskills then
    Rayfield:Notify({
        Title = "Turn off",
        Content = "you can only turn on one Skill method pelase turn it off",
        Duration = 10,
        Image = 4483362458,
        Actions = { -- Notification Buttons
            Ignore = {
                Name = "accept!",
                Callback = function()
                    print("The user tapped Okay!")
                end
            },
        },
    })
end
end

getgenv().skilldelay = 1
local Slider = E:CreateSlider({
    Name = "Skill Delay",
    Range = {1, 5},
    Increment = 1,
    Suffix = "Skill Delay",
    CurrentValue = 1,
    Flag = "task42",
    Callback = function(Value)
        getgenv().skilldelay = Value
        print("Skill Delay is: ", Value)
    end,
 })
 local Toggle = E:CreateToggle({
    Name = "All skills V1",
    CurrentValue = false,
    Flag = "task39",
    Callback = function(Value)
        getgenv().allskills = Value
        print("All skills is: ", Value)
        SkillsNotify()
        while wait() do
            if not allskills then break end
            if Value and not AllSkillsV2  then
                pcall(function()
                    for _, monster in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                        local monsterPos = monster.HumanoidRootPart.Position
                        local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        if (monsterPos - playerPos).Magnitude <= 20 then
                           
                            for i = 1, 5 do
                                for _, conn in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder["Skill" .. i].MouseButton1Click)) do
                                    conn:Fire()
                                end
                                wait(0.5)
                            end
                            for i = 1, 2 do
                                for _, conn in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder["SkillAssist" .. i].MouseButton1Click)) do
                                    conn:Fire()
                                end
                                wait(0.5)
                            end
                        end
                    end
                end)
            end
        end
    end,
})



local Toggle = E:CreateToggle({
    Name = "All skills V1.2",
    CurrentValue = false,
    Flag = "task3666669",
    Callback = function(Value)
        getgenv().allskills = Value
        print("All skills is: ", Value)
        SkillsNotify()
        while wait() do
            if not allskills then break end
            if Value and not AllSkillsV2  then
                pcall(function()
                    for _, monster in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                        local monsterPos = monster.HumanoidRootPart.Position
                        local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        if (monsterPos - playerPos).Magnitude <= 20 then
                            wait(skilldelay)
                            for _, conn in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill1.MouseButton1Click)) do
                                conn:Fire()
                            end
                            wait(0.5)
                            for _, conn in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill2.MouseButton1Click)) do
                                conn:Fire()
                            end
                            wait(0.5)
                            for _, conn in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill3.MouseButton1Click)) do
                                conn:Fire()
                            end
                            wait(0.5)
                            for _, conn in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill4.MouseButton1Click)) do
                                conn:Fire()
                            end
                            wait(0.5)
                            for _, conn in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill5.MouseButton1Click)) do
                                conn:Fire()
                            end
                            wait(0.5)
                            for _, conn in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.SkillAssist1.MouseButton1Click)) do
                                conn:Fire()
                            end
                            wait(0.5)
                            for _, conn in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.SkillAssist2.MouseButton1Click)) do
                                conn:Fire()
                            end
                            wait(0.5)
                        end
                    end
                end)
            end
        end
    end,
})



 getgenv().AllSkillsV2 = false
 local Toggle = E:CreateToggle({
    Name = "All Skills + Assist V2",
    CurrentValue = false,
    Flag = "task87",
    Callback = function(Value)
        getgenv().AllSkillsV2 = Value
        print("All Skills V2 is: ", Value)
        SkillsNotify()
        if Value and not allskills then
            while wait() do
                if not AllSkillsV2 then break end
                pcall(function()
                    for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                    wait(1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 49, false, uwu)
                    wait(0.5)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 50, false, uwu)
                    wait(0.5)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 51, false, uwu)
                    wait(0.5)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 52, false, uwu)
                    wait(0.5)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 53, false, uwu)
                    wait(0.5)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 101, false, uwu)
                    wait(0.5)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 114, false, uwu)
                    wait(0.5)
                    end
                end
            end)
        end
    end
    end,
})

local Section = E:CreateSection("Reccomend V2 for better performance")
local Section = E:CreateSection("Get exploit detected put more delay only for V1")
local Section = E:CreateSection("Reccomend 1 delay no detected")


getgenv().AutoSkill1 = false
function skill1 ()
    task.spawn(
        function()
    while wait() do
        if not AutoSkill1 then break end
        pcall(function()
            for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
        for m, n in pairs(
            getconnections(
                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill1.MouseButton1Click)) do
            n:Fire()
            wait(0.5)
                    end
                end
            end
            end)
    end
end)
end


getgenv().AutoSkill2 = false
function skill2 ()
    task.spawn(
        function()
    while wait() do
        if not AutoSkill2 then break end
        pcall(function()
            for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                for m, n in pairs(
                    getconnections(
                        game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill2.MouseButton1Click)) do
                    n:Fire()
                    wait(0.6)
                    end
                end
            end
            end)
    end
end)
end

getgenv().AutoSkill3 = false
function skill3 ()
    task.spawn(
        function()
    while wait() do
        if not AutoSkill3 then break end
        pcall(function()
            for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                for m, n in pairs(
                    getconnections(
                        game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill3.MouseButton1Click)) do
                    n:Fire()
                    wait(0.7)
                    end
                end
            end
            end)
    end
end)
end

getgenv().AutoSkill4 = false
function skill4 ()
    task.spawn(
        function()
    while wait() do
        if not AutoSkill4 then break end
        pcall(function()
            for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                for m, n in pairs(
                    getconnections(
                        game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill4.MouseButton1Click)) do
                    n:Fire()
                    wait(0.8)
                    end
                end
            end
            end)
    end
end)
end

getgenv().AutoSkill5 = false
function skill5 ()
    task.spawn(
        function()
    while wait() do
        if not AutoSkill5 then break end
        pcall(function()
            for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                for m, n in pairs(
                    getconnections(
                        game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill5.MouseButton1Click)) do
                    n:Fire()
                    wait(0.9)
                    end
                end
            end
            end)
    end
end)
end

getgenv().SkillAssist1 = false
function SSkillAssist1 ()
    task.spawn(
        function()
    while wait() do
        if not SkillAssist1 then break end
        for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
        for m, n in pairs(
            getconnections(
                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.SkillAssist1.MouseButton1Click)) do
            n:Fire()
            wait(1)
        end
    end
end
    end
    end)
end

getgenv().SkillAssist2 = false
function SSkillAssist2 ()
    task.spawn(
        function()
    while wait() do
        if not SkillAssist2 then break end
        for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
        for m, n in pairs(
            getconnections(
                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.SkillAssist2.MouseButton1Click)) do
            n:Fire()
            wait(1.1)
        end
    end
end
    end
    end)
end


local Input = z:CreateInput({
    Name = "Webhook Url",
    Info = "Your link will save afte you put it, so no need to readd it everytime.",
    PlaceholderText = "Input Placeholder",
    NumbersOnly = false,
    OnEnter = false, 
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        myData:Set("webhookurl", Text)
    -- The function that takes place when the input is changed
    -- The variable (Text) is a string for the value in the text box
    end,
 })

 local Input = z:CreateInput({
    Name = "Put Your ID",
    Info = "Your ID will save afte you put it, so no need to readd it everytime.",
    PlaceholderText = "Discord ID",
    NumbersOnly = false,
    OnEnter = false, 
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        myData:Set("Discord_ID", Text)
    -- The function that takes place when the input is changed
    -- The variable (Text) is a string for the value in the text box
    end,
 })
 local Toggle = z:CreateToggle({
    Name = "Clear Notifier",
    CurrentValue = false,
    Flag = "task109",
    Callback = function(Value)
        getgenv().webhook = Value
        print("Clear Notifier is: ", Value)
            task.spawn(
                function()
                    while task.wait(10) do
                        if not getgenv().webhook then
                            break
                        end
                        if
                            game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.ResultUI.Visible ==
                                true
                         then
                            getgenv().Name = game.Players.LocalPlayer.Name .. "StatDisplay"
                            local Webhook = myData:Get("webhookurl") --myData:Get("webhookurl") -- your webhook
                            
                            getgenv().Discord_UserID = myData:Get("Discord_ID")-- ID To Ping on every execution, blank if no one wants to be pinged. 
                            local player = game:GetService"Players".LocalPlayer
                            local joinTime = os.time() - (player.AccountAge*86400)
                            local joinDate = os.date("!*t", joinTime)
                         
                            local Thing = game:HttpGet(string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", game.Players.LocalPlayer.UserId))
                            Thing = game:GetService("HttpService"):JSONDecode(Thing).data[1]
                            local AvatarImage = Thing.imageUrl
                            local msg = {
                               ["username"] = "The Intruders",
                               ["avatar_url"] = "https://www.tozx.ga/Contentsource/favicon.png",
                               ["content"] = ( getgenv().Discord_UserID ~= "" and  getgenv().Discord_UserID ~= nil) and tostring("<@"..getgenv().Discord_UserID..">") or " ",
                               ["embeds"] = {
                                   {
                                       ["color"] = tonumber(tostring("4e25ae")), --decimal
                                       ["title"] = "The Intruders",
                                       ["thumbnail"] = {
                                           ["url"] = AvatarImage,
                                       },
                                       ["description"] = "**Character Info / Session Info:**",
                                       ["fields"] = {
                                            {
                                               ["name"] = "Username",
                                               ["value"] = "||"..player.Name.."||",
                                               ["inline"] = true
                                            },
                                            {
                                               ["name"] = "Display Name",
                                               ["value"] = "||"..player.DisplayName.."||",
                                               ["inline"] = true
                                            },
                                            {
                                               ["name"] = "💥 My Level",
                                               ["value"] =  game:GetService("HttpService"):JSONDecode(game.Players.LocalPlayer.leaderstats.Level.Value),
                                               ["inline"] = false
                                            },
                                            {
                                               ["name"] = "⚠️ Exploit Detected",
                                               ["value"] = game:GetService("HttpService"):JSONDecode(game.ReplicatedStorage[getgenv().Name].ExploitsDetected.Value),
                                               ["inline"] = false
                                            },
                                            {
                                               ["name"] = "Time Challenge High Score",
                                               ["value"] = game:GetService("HttpService"):JSONDecode(game.ReplicatedStorage[getgenv().Name].TimeChallengeHighScore.Value),
                                               ["inline"] = false
                                            },
                                            {
                                               ["name"] = "Deaths",
                                               ["value"] = game:GetService("HttpService"):JSONDecode(game.ReplicatedStorage[getgenv().Name].Deaths.Value),
                                               ["inline"] = false
                                            },
                                            {
                                               ["name"] = "💠 Infinite Record",
                                               ["value"] = game:GetService("HttpService"):JSONDecode(game.ReplicatedStorage[getgenv().Name].InfiniteRecord.Value),
                                               ["inline"] = false
                                            },
                                            {
                                               ["name"] = "🌌 Dimension Clear",
                                               ["value"] = game:GetService("HttpService"):JSONDecode(game.ReplicatedStorage[getgenv().Name].StageClear.Value),
                                               ["inline"] = false
                                            },
                                       },
                                       ['timestamp'] = DateTime.now():ToIsoDate()
                                   }
                               }
                            }
                                request = http_request or request or HttpPost or syn.request
                                request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
                        end
                    end
                end
            )
    end,
})



local Toggle = z:CreateToggle({
    Name = "Raid Notifier",
    CurrentValue = false,
    Flag = "task110",
    Callback = function(Value)
        getgenv().raidwebhook = Value
        print("Raid Notifierr is: ", Value)
        task.spawn(
            function()
                while task.wait(10) do
                    if not getgenv().raidwebhook then
                        break
                    end
                    if
                        game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.RaidResultUI.Visible == true
                     then
                            getgenv().Name = game.Players.LocalPlayer.Name .. "StatDisplay"
                            local Webhook = myData:Get("webhookurl") --myData:Get("webhookurl") -- your webhook
                            
                            getgenv().Discord_UserID = myData:Get("Discord_ID")-- ID To Ping on every execution, blank if no one wants to be pinged. 
                            local player = game:GetService"Players".LocalPlayer
                            local joinTime = os.time() - (player.AccountAge*86400)
                            local joinDate = os.date("!*t", joinTime)
                         
                            local Thing = game:HttpGet(string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", game.Players.LocalPlayer.UserId))
                            Thing = game:GetService("HttpService"):JSONDecode(Thing).data[1]
                            local AvatarImage = Thing.imageUrl
                            local msg = {
                               ["username"] = "The Intruders",
                               ["avatar_url"] = "https://www.tozx.ga/Contentsource/favicon.png",
                               ["content"] = ( getgenv().Discord_UserID ~= "" and  getgenv().Discord_UserID ~= nil) and tostring("<@"..getgenv().Discord_UserID..">") or " ",
                               ["embeds"] = {
                                   {
                                       ["color"] = tonumber(tostring("4e25ae")), --decimal
                                       ["title"] = "The Intruders",
                                       ["thumbnail"] = {
                                           ["url"] = AvatarImage,
                                       },
                                       ["description"] = "**RAID & BOSSRUSH CLEAR**",
                                       ["fields"] = {
                                            {
                                               ["name"] = "Username",
                                               ["value"] = "||"..player.Name.."||",
                                               ["inline"] = true
                                            },
                                            {
                                               ["name"] = "Display Name",
                                               ["value"] = "||"..player.DisplayName.."||",
                                               ["inline"] = true
                                            },
                                            {
                                               ["name"] = "💥 My Level",
                                               ["value"] =  game:GetService("HttpService"):JSONDecode(game.Players.LocalPlayer.leaderstats.Level.Value),
                                               ["inline"] = false
                                            },
                                            {
                                               ["name"] = "⚠️ Exploit Detected",
                                               ["value"] = game:GetService("HttpService"):JSONDecode(game.ReplicatedStorage[getgenv().Name].ExploitsDetected.Value),
                                               ["inline"] = false
                                            },
                                            {
                                                ["name"] = "🌀 Boss Rush Clear",
                                                ["value"] = game:GetService("HttpService"):JSONDecode(game.ReplicatedStorage[getgenv().Name].BossRushClears.Value),
                                                ["inline"] = false
                                             },
                                            {
                                                ["name"] = "🎟️ Boss Rush Ticket",
                                                ["value"] = game:GetService("HttpService"):JSONDecode(game.ReplicatedStorage[getgenv().Name].BossRushFreeEntry.Value),
                                                ["inline"] = false
                                             },
                                            {
                                               ["name"] = "🌀 Raid Clear",
                                               ["value"] = game:GetService("HttpService"):JSONDecode(game.ReplicatedStorage[getgenv().Name].RaidClears.Value),
                                               ["inline"] = false
                                            },
                                            {
                                               ["name"] = "Deaths",
                                               ["value"] = game:GetService("HttpService"):JSONDecode(game.ReplicatedStorage[getgenv().Name].Deaths.Value),
                                               ["inline"] = false
                                            },
                                       },
                                       ['timestamp'] = DateTime.now():ToIsoDate()
                                   }
                               }
                            }
                                request = http_request or request or HttpPost or syn.request
                                request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
                        end
                    end
                end
            )
    end,
})

local Toggle = z:CreateToggle({
    Name = "Level Notifier",
    CurrentValue = false,
    Flag = "task108",
    Callback = function(Value)
        getgenv().levelwebhook = Value
        print("Level Notifier is: ", Value)
        task.spawn(
            function()
                while task.wait(3) do
                    if not getgenv().levelwebhook then
                        break
                    end
                    if
                        game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.LevelUpImage.Visible ==
                            true
                     then
                            getgenv().Name = game.Players.LocalPlayer.Name .. "StatDisplay"
                            local Webhook = myData:Get("webhookurl") --myData:Get("webhookurl") -- your webhook
                            
                            getgenv().Discord_UserID = myData:Get("Discord_ID")-- ID To Ping on every execution, blank if no one wants to be pinged. 
                            local player = game:GetService"Players".LocalPlayer
                            local joinTime = os.time() - (player.AccountAge*86400)
                            local joinDate = os.date("!*t", joinTime)
                         
                            local Thing = game:HttpGet(string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", game.Players.LocalPlayer.UserId))
                            Thing = game:GetService("HttpService"):JSONDecode(Thing).data[1]
                            local AvatarImage = Thing.imageUrl
                            local msg = {
                               ["username"] = "The Intruders",
                               ["avatar_url"] = "https://www.tozx.ga/Contentsource/favicon.png",
                               ["content"] = ( getgenv().Discord_UserID ~= "" and  getgenv().Discord_UserID ~= nil) and tostring("<@"..getgenv().Discord_UserID..">") or " ",
                               ["embeds"] = {
                                   {
                                       ["color"] = tonumber(tostring("4e25ae")), --decimal
                                       ["title"] = "The Intruders",
                                       ["thumbnail"] = {
                                           ["url"] = AvatarImage,
                                       },
                                       ["description"] = "**🆙 YOU HAVE LEVELED**",
                                       ["fields"] = {
                                            {
                                               ["name"] = "Username",
                                               ["value"] = "||"..player.Name.."||",
                                               ["inline"] = true
                                            },
                                            {
                                               ["name"] = "Display Name",
                                               ["value"] = "||"..player.DisplayName.."||",
                                               ["inline"] = true
                                            },
                                            {
                                               ["name"] = "Your are now:",
                                               ["value"] =  game:GetService("HttpService"):JSONDecode(game.Players.LocalPlayer.leaderstats.Level.Value),
                                               ["inline"] = false
                                            },
                                       },
                                       ['timestamp'] = DateTime.now():ToIsoDate()
                                   }
                               }
                            }
                                request = http_request or request or HttpPost or syn.request
                                request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
                        end
                    end
                end
            )
    end,
})




local Section = G:CreateSection("Credit")


local Button = G:CreateButton({
	Name = "Updating And More Features By Tozxart",
    Info = "Press to copy my discord id.",
    Interact = "Copy",
	Callback = function()
		setclipboard("ToZx#1217")
	end,
})

local Button = G:CreateButton({
	Name = "Discord",
    Info = "Press to copy discord link.",
    Interact = "Copy",
	Callback = function()
		setclipboard("https://discord.gg/vfkD5VCRKU")
	end,
})

local Button = G:CreateButton({
	Name = "Destroy Gui",
    Interact = "Destroy",
	Callback = function()
		Rayfield:Destroy()
	end,
})
local Section = G:CreateSection("Key Setting")

local Button = G:CreateButton({
	Name = "Key Time remaining!.",
    Interact = "Key Timer",
	Callback = function()
		resetKeyNotification()
	end,
})

local Button = G:CreateButton({
    Name = "Reset the key",
    Interact = "Reset",
    Callback = function()
        Window:Prompt({
            Title = 'Reset the key',
            SubTitle = ' ',
            Content = 'Are you sure you want to reset the key?.',
            Actions = {
                Accept = {
                    Name = 'Accept',
                    Callback = function()
                        delfile("keys/" .. gameName .. ".lua")
                        keydeletedNotification()
                        wait(1)
                        game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)

                    end,
                },
                Decline = {
                    Name = 'Decline',
                    Callback = function()
                    print('The user declined')
                    end,
                }
            }
        })
    end,
 })




function AutoLeave ()
    while wait(860) do
        if game.PlaceId == 6990129309 then 
            print("i cant leave") break end
        if game.PlaceId == 6990129309 then 
            wait(1800)
        game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)       
        else
            game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)       
        end               
     end                                                                              
end

function keydeletedNotification()
    Rayfield:Notify({
        Title = "The key has been deleted",
        Content = "",
        Duration = 6.5,
        Image = 4483362458,
      })
end
function resetKeyNotification()
    if isfolder("keys") and isfile("keys/" .. gameName .. ".lua") then
      -- Read the contents of the key.lua file
      local data = readfile("keys/" .. gameName .. ".lua")
      local savedLink, savedKey, saveTime = data:match("(%S+)%s(%S+)%s(%S+)")
      saveTime = saveTime:sub(1, -81)
  
      local timeRemaining = 86400 - (os.time() - tonumber(saveTime))
  
      -- Format the time remaining in a user-friendly way
      local timeString = ""
      if timeRemaining >= 86400 then -- If the time remaining is greater than or equal to a day
        local days = math.floor(timeRemaining / 86400)
        timeRemaining = timeRemaining - (days * 86400)
        timeString = string.format("%d days, ", days)
      end
      if timeRemaining >= 3600 then -- If the time remaining is greater than or equal to an hour
        local hours = math.floor(timeRemaining / 3600)
        timeRemaining = timeRemaining - (hours * 3600)
        timeString = string.format("%s%d hours, ", timeString, hours)
      end
      if timeRemaining >= 60 then -- If the time remaining is greater than or equal to a minute
        local minutes = math.floor(timeRemaining / 60)
        timeRemaining = timeRemaining - (minutes * 60)
        timeString = string.format("%s%d minutes, ", timeString, minutes)
      end
      timeString = string.format("%s%d seconds", timeString, timeRemaining)
  
      -- Show the time remaining in the notification
      Rayfield:Notify({
        Title = "The key will reset!",
        Content = "Time remaining: " .. timeString,
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
  end
  



Rayfield:LoadConfiguration()

webhookAuth ()
AutoLeave ()
