local banned = {4238542691} -- Player UserIDs go here in the format {UserID, UserID2, UserID3}
local Players = game:GetService("Players")

warn("Checking Blacklist... Please Wait")

-- When a new player joins the game, check if they are blacklisted
game.Players.PlayerAdded:Connect(function(player)
    for _, bannedUserId in pairs(banned) do
        if player.UserId == bannedUserId then
            player:Kick("You Have Been Blacklisted.") -- Custom message
            return -- Exit the function if the player is kicked
        end
    end
end)
