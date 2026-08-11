--[[
    LEVEL 1 BEGINNER GUIDE — Entity Zone
    =========================================

    File: cmg/util/client/polyzone/EntityZone.lua
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
      * Named functions: 10
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: gameEventTriggered
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

EntityZone = {}
-- Inherits from BoxZone
setmetatable(EntityZone, { __index = BoxZone })

-- Utility functions
local deg, atan2 = math.deg, math.atan2

-- === HELPER FUNCTION: GetRotation(entity) ===
local function GetRotation(entity)
  local fwdVector = GetEntityForwardVector(entity)
  return deg(atan2(fwdVector.y, fwdVector.x))
end

-- === HELPER FUNCTION: _calculateMinAndMaxZ(entity, dimensions, scaleZ, offsetZ) ===
local function _calculateMinAndMaxZ(entity, dimensions, scaleZ, offsetZ)
  local min, max = dimensions[1], dimensions[2]
  local minX, minY, minZ, maxX, maxY, maxZ = min.x, min.y, min.z, max.x, max.y, max.z

  -- Bottom vertices
  local p1 = GetOffsetFromEntityInWorldCoords(entity, minX, minY, minZ).z
  local p2 = GetOffsetFromEntityInWorldCoords(entity, maxX, minY, minZ).z
  local p3 = GetOffsetFromEntityInWorldCoords(entity, maxX, maxY, minZ).z
  local p4 = GetOffsetFromEntityInWorldCoords(entity, minX, maxY, minZ).z

  -- Top vertices
  local p5 = GetOffsetFromEntityInWorldCoords(entity, minX, minY, maxZ).z
  local p6 = GetOffsetFromEntityInWorldCoords(entity, maxX, minY, maxZ).z
  local p7 = GetOffsetFromEntityInWorldCoords(entity, maxX, maxY, maxZ).z
  local p8 = GetOffsetFromEntityInWorldCoords(entity, minX, maxY, maxZ).z

  local entityMinZ = math.min(p1, p2, p3, p4, p5, p6, p7, p8)
  local entityMaxZ = math.max(p1, p2, p3, p4, p5, p6, p7, p8)
  return BoxZone.calculateMinAndMaxZ(entityMinZ, entityMaxZ, scaleZ, offsetZ)
end

-- Initialization functions

-- === HELPER FUNCTION: _initDebug(zone, options) ===
local function _initDebug(zone, options)
  if options.debugBlip then zone:addDebugBlip() end
  if not options.debugPoly and not options.debugBlip then
    return
  end

  -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
  Citizen.CreateThread(function()
    local entity = zone.entity
    local shouldDraw = options.debugPoly
    while not zone.destroyed do
      UpdateOffsets(entity, zone)
      if shouldDraw then zone:draw(false) end
      Citizen.Wait(0)
    end
  end)
end

-- === HELPER FUNCTION: EntityZone:new(entity, options) ===
function EntityZone:new(entity, options)
  assert(DoesEntityExist(entity), "Entity does not exist")

  local min, max = GetModelDimensions(GetEntityModel(entity))
  local dimensions = {min, max}

  local length = max.y - min.y
  local width = max.x - min.x
  local pos = GetEntityCoords(entity)

  local zone = BoxZone:new(pos, length, width, options)
  if options.useZ == true then
    options.minZ, options.maxZ = _calculateMinAndMaxZ(entity, dimensions, zone.scaleZ, zone.offsetZ)
  else
    options.minZ = nil
    options.maxZ = nil
  end
  zone.entity = entity
  zone.dimensions = dimensions
  zone.useZ = options.useZ
  zone.damageEventHandlers = {}
  zone.isEntityZone = true
  setmetatable(zone, self)
  self.__index = self
  return zone
end

-- === HELPER FUNCTION: EntityZone:Create(entity, options) ===
function EntityZone:Create(entity, options)
  local zone = EntityZone:new(entity, options)
  _initDebug(zone, options)
  return zone
end

-- === HELPER FUNCTION: UpdateOffsets(entity, zone) ===
function UpdateOffsets(entity, zone)
  local pos = GetEntityCoords(entity)
  local rot = GetRotation(entity)
  zone.offsetPos = pos.xy - zone.startPos
  zone.offsetRot = rot - 90.0

  if zone.useZ then
    zone.minZ, zone.maxZ = _calculateMinAndMaxZ(entity, zone.dimensions, zone.scaleZ, zone.offsetZ)
  end
  if zone.debugBlip then SetBlipCoords(zone.debugBlip, pos.x, pos.y, 0.0) end
end


-- Helper functions

-- === HELPER FUNCTION: EntityZone:isPointInside(point) ===
function EntityZone:isPointInside(point)
  local entity = self.entity
  if entity == nil then
    print("[PolyZone] Error: Called isPointInside on Entity zone with no entity {name=" .. self.name .. "}")
    return false
  end

  UpdateOffsets(entity, self)
  return BoxZone.isPointInside(self, point)
end

-- === HELPER FUNCTION: EntityZone:onEntityDamaged(onDamagedCb) ===
function EntityZone:onEntityDamaged(onDamagedCb)
  local entity = self.entity
  if not entity then
    print("[PolyZone] Error: Called onEntityDamage on Entity Zone with no entity {name=" .. self.name .. "}")
    return
  end

  -- === EVENT HANDLER: runs when "gameEventTriggered" fires ===
  self.damageEventHandlers[#self.damageEventHandlers + 1] = AddEventHandler('gameEventTriggered', function (name, args)
    if self.destroyed or self.paused then
      return
    end

    if name == 'CEventNetworkEntityDamage' then
      local victim, attacker, victimDied, weaponHash, isMelee = args[1], args[2], args[4], args[5], args[10]
      --print(entity, victim, attacker, victimDied, weaponHash, isMelee)
      if victim ~= entity then return end
      onDamagedCb(victimDied == 1, attacker, weaponHash, isMelee == 1)
    end
  end)
end

-- === HELPER FUNCTION: EntityZone:destroy() ===
function EntityZone:destroy()
  for i=1, #self.damageEventHandlers do
    print("Destroying damageEventHandler:", self.damageEventHandlers[i])
    RemoveEventHandler(self.damageEventHandlers[i])
  end
  self.damageEventHandlers = {}
  PolyZone.destroy(self)
end

-- === HELPER FUNCTION: EntityZone:addDebugBlip() ===
function EntityZone:addDebugBlip()
  local blip = PolyZone.addDebugBlip(self)
  self.debugBlip = blip
  return blip
end
