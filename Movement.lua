local Movement = {}

local function ToggleFly(enabled)
    -- ... (código de la función ToggleFly)
end

local function ToggleSpeed(value)
    -- ... (código de la función ToggleSpeed)
end

local function ToggleSuperJump(value)
    -- ... (código de la función ToggleSuperJump)
end

local function InfiniteJump(enabled)
    -- ... (código de la función InfiniteJump)
end

local function NoClip(enabled)
    -- ... (código de la función NoClip)
end

Movement.Features = {
    {name = "Fly", callback = ToggleFly},
    {name = "Speed", callback = ToggleSpeed, slider = true, min = 16, max = 200, default = 16},
    {name = "SuperJump", callback = ToggleSuperJump, slider = true, min = 50, max = 500, default = 50},
    {name = "InfiniteJump", callback = InfiniteJump},
    {name = "NoClip", callback = NoClip}
}

return Movement
