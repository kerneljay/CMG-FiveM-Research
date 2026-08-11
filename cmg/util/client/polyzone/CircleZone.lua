--[[
    LEVEL 1 BEGINNER GUIDE — Circle Zone
    =========================================

    File: cmg/util/client/polyzone/CircleZone.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: PolyZone geometry/zone library code.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 9
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
---@diagnostic disable

CircleZone = {}
-- Inherits from PolyZone
setmetatable(CircleZone, { __index = PolyZone })

-- === HELPER FUNCTION: CircleZone:draw(forceDraw) ===
function CircleZone:draw(forceDraw)
  if not forceDraw and not self.debugPoly then return end
  local center = self.center
  local debugColor = self.debugColor
  local r, g, b = debugColor[1], debugColor[2], debugColor[3]
  if self.useZ then
    local radius = self.radius
    DrawMarker(28, center.x, center.y, center.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, radius, radius, radius, r, g, b, 48, false, false, 2, nil, nil, false)
  else
    local diameter = self.diameter
    DrawMarker(1, center.x, center.y, -500.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, diameter, diameter, 1000.0, r, g, b, 96, false, false, 2, nil, nil, false)
  end
end


-- === HELPER FUNCTION: _initDebug(zone, options) ===
local function _initDebug(zone, options)
  if options.debugBlip then zone:addDebugBlip() end
  if not options.debugPoly then
    return
  end

  -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
  Citizen.CreateThread(function()
    while not zone.destroyed do
      zone:draw(false)
      Citizen.Wait(0)
    end
  end)
end

-- === HELPER FUNCTION: CircleZone:new(center, radius, options) ===
function CircleZone:new(center, radius, options)
  options = options or {}
  local zone = {
    name = tostring(options.name) or nil,
    center = center,
    radius = radius + 0.0,
    diameter = radius * 2.0,
    useZ = options.useZ or false,
    debugPoly = options.debugPoly or false,
    debugColor = options.debugColor or {0, 255, 0},
    data = options.data or {},
    isCircleZone = true,
  }
  if zone.useZ then
    assert(type(zone.center) == "vector3", "Center must be vector3 if useZ is true {center=" .. center .. "}")
  end
  setmetatable(zone, self)
  self.__index = self
  return zone
end

-- === HELPER FUNCTION: CircleZone:Create(center, radius, options) ===
function CircleZone:Create(center, radius, options)
  local zone = CircleZone:new(center, radius, options)
  _initDebug(zone, options)
  return zone
end

-- === HELPER FUNCTION: CircleZone:isPointInside(point) ===
function CircleZone:isPointInside(point)
  if self.destroyed then
    print("[PolyZone] Warning: Called isPointInside on destroyed zone {name=" .. self.name .. "}")
    return false
  end

  local center = self.center
  local radius = self.radius

  if self.useZ then
    return #(point - center) < radius
  else
    return #(point.xy - center.xy) < radius
  end
end

-- === HELPER FUNCTION: CircleZone:getRadius() ===
function CircleZone:getRadius()
  return self.radius
end

-- === HELPER FUNCTION: CircleZone:setRadius(radius) ===
function CircleZone:setRadius(radius)
  if not radius or radius == self.radius then
    return
  end
  self.radius = radius
  self.diameter = radius * 2.0
end

-- === HELPER FUNCTION: CircleZone:getCenter() ===
function CircleZone:getCenter()
  return self.center
end

-- === HELPER FUNCTION: CircleZone:setCenter(center) ===
function CircleZone:setCenter(center)
  if not center or center == self.center then
    return
  end
  self.center = center
end
