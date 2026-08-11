--[[
    LEVEL 1 BEGINNER GUIDE — Kvp
    =================================

    File: cmg/prod/client/util/client/cl_kvp.lua
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
      * Named functions: 8
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: 51b7fcfab1
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
    Secure KVP Helper
    =================

    FiveM KVPs (key/value pairs) are tiny values saved locally on the player's
    PC. This helper makes those values harder to casually edit by:

      * hashing/obscuring the KVP key
      * shifting each saved character by a repeating offset
      * saving a checksum beside the value
      * checking that checksum when reading

    Public functions:
      CMG.getSecureKVP(name)
      CMG.setSecureKVP(name, value)

    IMPORTANT:
      This is tamper detection/obfuscation, not cryptographic encryption.
]]

local KEY_XOR = 4048302200
local SHIFT_MODULUS = 20
local SHIFT_BASE = 10

-- Prevent reporting the same bad KVP checksum repeatedly in one session.
local reportedBadChecksums = {}


local function secureStorageKey(
    plainName
)
    local hash =
        GetHashKey(plainName)

    local obscured =
        (hash ~ KEY_XOR)
        & 0xFFFFFFFF

    return tostring(obscured)
end


local function checksumStorageKey(
    secureKey
)
    return secureStorageKey(
        "checksum:"
        .. secureKey
    )
end


local function calculateChecksum(
    value
)
    local checksum =
        #value

    for index = 1, #value do
        local byte =
            string.byte(
                value,
                index
            )

        checksum =
            (checksum * byte)
            ~ byte

        checksum =
            checksum
            & 0xFFFFFFFF
    end

    return checksum
end


local function characterShift(
    index
)
    return
        (index % SHIFT_MODULUS)
        - SHIFT_BASE
end


local function decodeValue(
    encoded
)
    local output =
        table.create(
            #encoded,
            0
        )

    for index = 1, #encoded do
        local byte =
            string.byte(
                encoded,
                index
            )

        output[index] =
            string.char(
                byte
                - characterShift(index)
            )
    end

    return
        table.concat(output)
end


local function encodeValue(
    plainText
)
    local output =
        table.create(
            #plainText,
            0
        )

    for index = 1, #plainText do
        local byte =
            string.byte(
                plainText,
                index
            )

        output[index] =
            string.char(
                byte
                + characterShift(index)
            )
    end

    return
        table.concat(output)
end


-- === HELPER FUNCTION: CMG.getSecureKVP(name) ===
function CMG.getSecureKVP(name)
    local key =
        secureStorageKey(name)

    local encodedValue =
        GetResourceKvpString(key)

    local savedChecksum =
        GetResourceKvpInt(
            checksumStorageKey(key)
        )
        & 0xFFFFFFFF

    -- No checksum means no securely-saved value.
    if savedChecksum == 0 then
        return nil
    end

    local decodedValue =
        decodeValue(
            encodedValue
        )

    local calculatedChecksum =
        calculateChecksum(
            decodedValue
        )

    if calculatedChecksum
        ~= savedChecksum
        and not reportedBadChecksums[
            name
        ] then

        if CMG.isDevMode() then
            print(
                "[CMG KVP] Invalid checksum for "
                .. name
                .. " (saved "
                .. tostring(savedChecksum)
                .. " vs calculated "
                .. tostring(calculatedChecksum)
                .. ")"
            )
        end

        TriggerServerEvent(
            "51b7fcfab1",
            name,
            savedChecksum,
            calculatedChecksum
        )

        reportedBadChecksums[
            name
        ] = true
    end

    return decodedValue
end


function CMG.setSecureKVP(
    name,
    value
)
    if not value then
        return
    end

    local key =
        secureStorageKey(name)

    SetResourceKvp(
        key,
        encodeValue(value)
    )

    SetResourceKvpInt(
        checksumStorageKey(key),
        calculateChecksum(value)
    )
end
