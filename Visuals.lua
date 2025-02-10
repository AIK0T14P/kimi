local Visuals = {}

local function ESP(enabled)
    -- ... (código de la función ESP)
end

local function Tracers(enabled)
    -- ... (código de la función Tracers)
end

local function Fullbright(enabled)
    -- ... (código de la función Fullbright)
end

Visuals.Features = {
    {name = "ESP", callback = ESP},
    {name = "Chams", callback = function() end},
    {name = "Tracers", callback = Tracers},
    {name = "Fullbright", callback = Fullbright}
}

return Visuals
