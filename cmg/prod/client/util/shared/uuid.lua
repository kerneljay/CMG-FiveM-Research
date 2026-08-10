--[[
    UUID / Unique-Code Generator
    ============================

    CMG.generateUUID(namespace, length, characterSet)

    Generates a random string and remembers every generated value inside the
    supplied namespace so the same code is not returned twice during this
    client session.

    characterSet can be:
      "alphabet"     -> letters only
      "numerical"    -> numbers only
      "alphanumeric" -> letters and numbers (default)

    The original random-string helper sometimes PREPENDS and sometimes APPENDS
    each random character. That unusual behaviour is preserved.
]]

local generatedByNamespace = {}

local characterSets = {
    alphabet =
        "abcdefghijklmnopqrstuvwxyz",

    numerical =
        "0123456789",

    alphanumeric =
        "abcdefghijklmnopqrstuvwxyz0123456789"
}

local function randomString(length, characterSetName)
    local characters =
        characterSets[characterSetName]

    assert(
        characters,
        "Unknown UUID character set: "
            .. tostring(characterSetName)
    )

    local result = ""

    repeat
        local randomIndex =
            math.random(
                characters:len()
            )

        local character =
            characters:sub(
                randomIndex,
                randomIndex
            )

        if math.random(2) == 1 then
            result =
                result .. character
        else
            result =
                character .. result
        end
    until result:len() >= length

    return result
end

function CMG.generateUUID(
    namespace,
    length,
    characterSetName
)
    generatedByNamespace[namespace] =
        generatedByNamespace[namespace]
        or {}

    characterSetName =
        characterSetName
        or "alphanumeric"

    local uuid =
        randomString(
            length,
            characterSetName
        )

    while generatedByNamespace[
        namespace
    ][uuid] do

        uuid =
            randomString(
                length,
                characterSetName
            )

        Wait(0)
    end

    generatedByNamespace[
        namespace
    ][uuid] = true

    return uuid
end
