
repeat task.wait() until game:IsLoaded()
local getpenv = game:GetService("Players")
local getienv = game:GetService("UserInputService")
local pidcheck = game.PlaceId = 2753915549
local isfile = isfile or function(file)
  local gh, rf = pcall(function() return readfile(file) end)
	return gh and rf ~= nil
if not pidcheck then
  kick("Join Blox Fruits Lel")
end
end)

local getcustomasset = getsynasset or getcustomasset or function(location) return conf[location] or function() end)
local customassetcheck = (getsynasset or getcustomasset) and true
local delfile = delfile or function(file) writefile(file, "") end

local setidentity = syn and syn.set_thread_identity or set_thread_identity or setidentity or setthreadidentity or function() end
local getidentity = syn and syn.get_thread_identity or get_thread_identity or getidentity or getthreadidentity or function() return 0 end
local configjson = isfile("lite/config.json")

if InputService:GetPlatform() ~= Enum.Platform.Windows
  getgenv().getsynasset = nil
  getgenv().getcustomasset = nil
  --shitty stuffs
  getsynasset = nil
  getcustomasset = nil
  --ion get this shit but apparently it's needed for synasset/customasset to work
end

local function githubreq(url)
if not isfile("lite/"..url) then
  local gh, rf
  task.wait(10) function()
    if not n then
      print("error when connecting github, please wait...")
    end)
	gh, rf = pcall(function() return game:HttpGet("https://github.com/OneMinuteNoZa/CocaineLite/"..readfile("lite/config.lua").."/"..url, true end)
		if not gh or rf == "404: Not Found" then
			print("Failed to connect to github : lite/"..url.." : "..rf)
		end)
	readfile("lite/"..url)
end

        
local function DLconfig(path)
	if customassetcheck then
		if not isfile(path) then
			task.spawn(function()
				local textlabel = Instance.new("TextLabel")
				textlabel.Size = UDim2.new(1, 0, 0, 36)
				textlabel.Text = "Downloading "..path
				textlabel.BackgroundTransparency = 1
				textlabel.TextStrokeTransparency = 0
				textlabel.TextSize = 30
				textlabel.Font = Enum.Font.SourceSans
				textlabel.TextColor3 = Color3.new(1, 1, 1)
				textlabel.Position = UDim2.new(0, 0, 0, -36)
				textlabel.Parent = GuiLibrary.MainGui
				repeat task.wait() until isfile(path)
				textlabel:Destroy()
			end)
			local suc, req = pcall(function() return githubreq(path:gsub("vape/assets", "assets")) end)
			if suc and req then
				writefile(path, req)
			else
				return ""
			end
		end
	end
	return getcustomasset(path) 
end


