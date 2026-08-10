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
