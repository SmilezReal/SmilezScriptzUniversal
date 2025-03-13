-- player.UserId method
local blacklisted = {
	7394125753,  -- Add more UserIds here
	null,
	null
}

local blacklistReason = "You Are Blacklisted."

game.Players.PlayerAdded:Connect(function(player)
	for i,v in pairs(blacklisted) do
		if v == player.UserId then
			player:Kick(blacklistReason)
		end
	end
end)

-- player.Name method
local blacklisted = {
	"SmilezMusic",  -- Add more Player names here
	"null",
	"null"
}

local blacklistReason = "You Are Blacklisted."

game.Players.PlayerAdded:Connect(function(player)
	for i,v in pairs(blacklisted) do
		if v == player.Name then
			player:Kick(blacklistReason)
		end
	end
end)
