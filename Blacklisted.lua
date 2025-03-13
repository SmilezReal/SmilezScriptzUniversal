warn("Checking Blacklist... Please Wait")

-- Blacklisted UserIds and Player Names
local blacklistedUserIds = {
    nil,  -- Add UserIds here
    -- Add more UserIds as needed
}

local blacklistedNames = {
    "nil",  -- Add Player Names here
    -- Add more Player Names as needed
}

local blacklistReason = "You Are Blacklisted."

-- Get LocalPlayer
local player = game.Players.LocalPlayer

-- Check if the player's UserId is blacklisted
local isBlacklistedByUserId = false
for _, userId in pairs(blacklistedUserIds) do
    if userId == player.UserId then
        isBlacklistedByUserId = true
        break
    end
end

-- Debugging: Print out the check result for UserId
if isBlacklistedByUserId then
    print("Player " .. player.Name .. " (" .. player.UserId .. ") is blacklisted by UserId.")
    player:Kick(blacklistReason)
else
    print("Player " .. player.Name .. " (" .. player.UserId .. ") is not blacklisted by UserId.")
end

-- Check if the player's Name is blacklisted
local isBlacklistedByName = false
for _, name in pairs(blacklistedNames) do
    if name == player.Name then
        isBlacklistedByName = true
        break
    end
end

-- Debugging: Print out the check result for Name
if isBlacklistedByName then
    print("Player " .. player.Name .. " (" .. player.UserId .. ") is blacklisted by Name.")
    player:Kick(blacklistReason)
else
    print("Player " .. player.Name .. " (" .. player.UserId .. ") is not blacklisted by Name.")
end
