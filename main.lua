-- Servicios
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")

-- Variables principales
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Camera = workspace.CurrentCamera

-- Importar módulos de categorías
local Movement = require(script.Parent.Movement)
local Combat = require(script.Parent.Combat)
local Visuals = require(script.Parent.Visuals)
local Player = require(script.Parent.Player)
local World = require(script.Parent.World)
local Optimization = require(script.Parent.Optimization)
local Misc = require(script.Parent.Misc)
local Settings = require(script.Parent.Settings)

-- Sistema de idiomas
local Languages = {
    ["English"] = {
        categories = {
            Movement = "Movement",
            Combat = "Combat",
            Visuals = "Visuals",
            Player = "Player",
            World = "World",
            Optimization = "Optimization",
            Misc = "Misc",
            Settings = "Settings"
        },
        features = {
            -- ... (resto de las traducciones)
        },
        loading = "Loading..."
    },
    ["Español"] = {
        categories = {
            Movement = "Movimiento",
            Combat = "Combate",
            Visuals = "Visuales",
            Player = "Jugador",
            World = "Mundo",
            Optimization = "Optimización",
            Misc = "Misc",
            Settings = "Ajustes"
        },
        features = {
            -- ... (resto de las traducciones)
        },
        loading = "Cargando..."
    }
}

local CurrentLanguage = "English"
local Texts = Languages[CurrentLanguage]

-- Crear pantalla de carga
local LoadingGui = Instance.new("ScreenGui")
LoadingGui.Name = "LoadingGui"
LoadingGui.ResetOnSpawn = false
LoadingGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LoadingGui.Parent = game.CoreGui

-- ... (resto del código de la interfaz)

-- Categorías actualizadas
local Categories = {
    {name = "Movement", icon = "rbxassetid://3926307971", module = Movement},
    {name = "Combat", icon = "rbxassetid://3926307971", module = Combat},
    {name = "Visuals", icon = "rbxassetid://3926307971", module = Visuals},
    {name = "Player", icon = "rbxassetid://3926307971", module = Player},
    {name = "World", icon = "rbxassetid://3926307971", module = World},
    {name = "Optimization", icon = "rbxassetid://3926307971", module = Optimization},
    {name = "Misc", icon = "rbxassetid://3926307971", module = Misc},
    {name = "Settings", icon = "rbxassetid://3926307971", module = Settings}
}

-- Crear categorías y secciones
local Sections = {}
local ActiveCategory = nil

for i, category in ipairs(Categories) do
    local button = CreateCategory(category.name, category.icon, (i-1) * 50)
    Sections[category.name] = CreateSection(category.name)
    
    -- Crear toggles y sliders para cada característica
    for _, feature in ipairs(category.module.Features) do
        if feature.slider then
            CreateSlider(feature.name, Sections[category.name], feature.callback, feature.min, feature.max, feature.default)
        else
            CreateToggle(feature.name, Sections[category.name], feature.callback)
        end
    end
end

-- ... (resto del código de la interfaz y manejo de eventos)

-- Eliminar la GUI de carga
LoadingGui:Destroy()

-- Mostrar la primera sección por defecto
ShowSection("Movement")

-- Mensaje de confirmación
print("Script mejorado cargado correctamente. Use el botón en la izquierda para mostrar/ocultar el menú.")
