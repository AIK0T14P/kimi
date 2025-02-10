local Combat = {}

local function GodMode(enabled)
    -- ... (código de la función GodMode)
end

local function ToggleAimbot(enabled)
    -- ... (código de la función ToggleAimbot)
end

Combat.Features = {
    {name = "GodMode", callback = GodMode},
    {name = "KillAura", callback = function() end},
    {name = "AutoParry", callback = function() end},
    {name = "Reach", callback = function() end},
    {name = "Aimbot", callback = ToggleAimbot}
}

return Combat
