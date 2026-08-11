--[[
    LEVEL 1 BEGINNER GUIDE — Dataview
    ======================================

    File: cmg/prod/client/util/shared/dataview.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared utility/framework helper code.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 15
      * Background threads: 0
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
--[[
    DataView / Binary Reader
    ========================

    DataView wraps a Lua binary string and provides small helpers for reading
    typed values at byte offsets.

    Example:
        local view = DataView.ArrayBuffer(binaryData)

        local byte  = view:GetUint8(0)
        local value = view:GetInt32(4)
        local name  = view:GetString(8)

    Offsets passed to DataView are ZERO-BASED, like JavaScript DataView.
    Lua string.unpack is one-based internally, so every method adds 1.

    Integer/float methods use little-endian format strings (`<...`).

    Available readers:
      GetFixedString(offset, length)
      GetString(offset)                 -- zero-terminated string
      GetInt8 / GetUint8
      GetInt16 / GetUint16
      GetInt32 / GetUint32
      GetInt64 / GetUint64
      GetFloat32 / GetFloat64
]]

DataView = {}
DataView.__index = DataView


-- === HELPER FUNCTION: DataView:__len() ===
function DataView:__len()
    return #self.blob
end


-- === HELPER FUNCTION: DataView.ArrayBuffer(blob) ===
function DataView.ArrayBuffer(blob)
    assert(
        type(blob) == "string",
        "DataView.ArrayBuffer expects a binary string"
    )

    return setmetatable(
        {
            blob = blob,
            length = #blob
        },
        DataView
    )
end


local function unpackAt(
    self,
    format,
    offset
)
    return string.unpack(
        format,
        self.blob,
        (offset or 0) + 1
    )
end


function DataView:GetFixedString(
    offset,
    length
)
    return unpackAt(
        self,
        "c" .. tostring(length),
        offset
    )
end


-- === HELPER FUNCTION: DataView:GetString(offset) ===
function DataView:GetString(offset)
    return unpackAt(
        self,
        "z",
        offset
    )
end


-- === HELPER FUNCTION: DataView:GetInt8(offset) ===
function DataView:GetInt8(offset)
    return unpackAt(
        self,
        "b",
        offset
    )
end


-- === HELPER FUNCTION: DataView:GetUint8(offset) ===
function DataView:GetUint8(offset)
    return unpackAt(
        self,
        "B",
        offset
    )
end


-- === HELPER FUNCTION: DataView:GetInt16(offset) ===
function DataView:GetInt16(offset)
    return unpackAt(
        self,
        "<i2",
        offset
    )
end


-- === HELPER FUNCTION: DataView:GetUint16(offset) ===
function DataView:GetUint16(offset)
    return unpackAt(
        self,
        "<I2",
        offset
    )
end


-- === HELPER FUNCTION: DataView:GetInt32(offset) ===
function DataView:GetInt32(offset)
    return unpackAt(
        self,
        "<i4",
        offset
    )
end


-- === HELPER FUNCTION: DataView:GetUint32(offset) ===
function DataView:GetUint32(offset)
    return unpackAt(
        self,
        "<I4",
        offset
    )
end


-- === HELPER FUNCTION: DataView:GetInt64(offset) ===
function DataView:GetInt64(offset)
    return unpackAt(
        self,
        "<i8",
        offset
    )
end


-- === HELPER FUNCTION: DataView:GetUint64(offset) ===
function DataView:GetUint64(offset)
    return unpackAt(
        self,
        "<I8",
        offset
    )
end


-- === HELPER FUNCTION: DataView:GetFloat32(offset) ===
function DataView:GetFloat32(offset)
    return unpackAt(
        self,
        "<f",
        offset
    )
end


-- === HELPER FUNCTION: DataView:GetFloat64(offset) ===
function DataView:GetFloat64(offset)
    return unpackAt(
        self,
        "<d",
        offset
    )
end
