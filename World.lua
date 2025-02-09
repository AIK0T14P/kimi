-- World.lua
local World = {}

function World.Initialize(section, CreateToggle, CreateSlider)
    CreateToggle("RemoveFog", section, function(enabled)
        -- Implement remove fog logic here
    end)
    
    CreateToggle("DayNight", section, function(enabled)
        -- Implement day/night cycle logic here
    end)
    
    CreateToggle("RemoveTextures", section, function(enabled)
        -- Implement remove textures logic here
    end)
end

return World
