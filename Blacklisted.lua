warn("Checking Blacklist... Please Wait")

-- Blacklisted UserIds and Player Names
local blacklistedUserIds = {
    7394125753,  -- Add UserIds here
    null,
    null
}

local blacklistedNames = {
    "SmilezMusic",  -- Add Player Names here
    "null",
    "null"
}

local blacklistReason = "You are blacklisted from the game."

game.Players.PlayerAdded:Connect(function(player)
    -- Check if the player's UserId is blacklisted
    for _, userId in pairs(blacklistedUserIds) do
        if userId == player.UserId then
            player:Kick(blacklistReason)
            return
        end
    end

    -- Check if the player's Name is blacklisted
    for _, name in pairs(blacklistedNames) do
        if name == player.Name then
            player:Kick(blacklistReason)
            return
        end
    end
end)
