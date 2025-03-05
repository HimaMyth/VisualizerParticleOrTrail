local RS = game:GetService("RunService") -- a class for looping Instance instead of doing while loop
local Particle = script.Parent -- particle or trail that you want to visualize
local Song = game.Workspace.R6.HumanoidRootPart.Song -- Song Path

RS.Heartbeat:Connect(function(deltaTime) -- looping the instance using RunService
    Particle.Size = NumberSequence.new(Song.PlaybackLoudness / 1800) -- btw the more you divide, the more you make the visualizer small
           --^^^^
           --you can change whatever you want, the size, the color, anything, but if you wanna change the size do NumberSequence.new(), but if you do color, then do ColorSequence.new()
end)