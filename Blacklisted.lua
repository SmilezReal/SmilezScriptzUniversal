local banned = {7394125753} -- Player UserIDs go here in the format {UserID, UserID2, UserID3}
local Players = game:GetService("Players")

warn("Checking Blacklist... Please Wait")

game.Players.PlayerAdded:Connect(function() 
	for _, v in pairs(game.Players:GetChildren()) do
		for i = 1, #banned do
			if v.UserId == banned[i] then
				warn("Oof, Your Blacklisted.")
				v:Kick("You Have Been Blacklisted.") -- You may set a custom message within the quotations
			end
		end
	end
end)
