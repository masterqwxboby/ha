local Players = game:GetService("Players")

local function highlight(player)
  local highLight = Instance.new("Highlight")
  highLight.Parent = player.Character
  highLight.FillColor = Color3.fromRGB(255,0,0)
  highLight.OutLineColor = Color3.fromRGB(255,0,0)
end

while wait(5) do
  for _, player in ipairs(Players:GetPlayers()) do
    if not player.Character:FindFirstChild("Highlight") then
      highlight(player)
    end
  end
end
  
