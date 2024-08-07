
local Players = game:GetService("Players")

local function highlight(player)
	local highLight = Instance.new("Highlight")
	highLight.Parent = player.Character
	highLight.FillColor = Color3.fromRGB(255,0,0)
	highLight.OutLineColor = Color3.fromRGB(255,0,0)
end


Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		wait(1)
		highlight(player)
	end)
end)
