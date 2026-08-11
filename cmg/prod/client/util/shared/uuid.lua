--[[
    LEVEL 1 BEGINNER GUIDE — Uuid
    ==================================

    File: cmg/prod/client/util/shared/uuid.lua
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
      * Named functions: 2
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

-- === HELPER FUNCTION: randomString(length, characterSetName) ===
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
