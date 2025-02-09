-- Player.lua
local Player = {}

function Player.Initialize(section, CreateToggle, CreateSlider)
    CreateToggle("Invisibility", section, function(enabled)
        -- Implement invisibility logic here
    end)
    
    CreateToggle("AntiAFK", section, function(enabled)
        -- Implement anti AFK logic here
    end)
    
    CreateToggle("AutoReset", section, function(enabled)
        -- Implement auto reset logic here
    end)
end

return Player
