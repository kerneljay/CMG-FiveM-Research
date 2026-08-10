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


function DataView:__len()
    return #self.blob
end


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


function DataView:GetString(offset)
    return unpackAt(
        self,
        "z",
        offset
    )
end


function DataView:GetInt8(offset)
    return unpackAt(
        self,
        "b",
        offset
    )
end


function DataView:GetUint8(offset)
    return unpackAt(
        self,
        "B",
        offset
    )
end


function DataView:GetInt16(offset)
    return unpackAt(
        self,
        "<i2",
        offset
    )
end


function DataView:GetUint16(offset)
    return unpackAt(
        self,
        "<I2",
        offset
    )
end


function DataView:GetInt32(offset)
    return unpackAt(
        self,
        "<i4",
        offset
    )
end


function DataView:GetUint32(offset)
    return unpackAt(
        self,
        "<I4",
        offset
    )
end


function DataView:GetInt64(offset)
    return unpackAt(
        self,
        "<i8",
        offset
    )
end


function DataView:GetUint64(offset)
    return unpackAt(
        self,
        "<I8",
        offset
    )
end


function DataView:GetFloat32(offset)
    return unpackAt(
        self,
        "<f",
        offset
    )
end


function DataView:GetFloat64(offset)
    return unpackAt(
        self,
        "<d",
        offset
    )
end
