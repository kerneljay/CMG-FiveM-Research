--[[
    LEVEL 1 BEGINNER GUIDE — Packing
    =====================================

    File: cmg/prod/client/util/shared/packing.lua
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
      * Named functions: 5
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
--[[
    Optional Table Packing
    ======================

    This is a bandwidth-saving helper controlled by the server tunable
    "table_packing".

    CMG.packTable(rows, schema)
      Converts repeated table rows into a compact flat numeric array.

    CMG.unpackTable(packedRows, schema)
      Rebuilds the normal table rows.

    The `schema` describes which keys are copied and can contain a nested table
    directly after a key to describe nested row data.

    If table_packing is disabled, both helpers simply return the original
    input unchanged.

    This is shared utility code; most gameplay scripts should not need to know
    how the packing format works.
]]


-- ============================================================
-- PACK
-- ============================================================

local function packRows(
    rows,
    schema,
    output,
    startIndex
)
    local writeIndex =
        startIndex

    for _, row in pairs(rows) do
        local nestedHandled = false

        for schemaIndex, key
            in pairs(schema) do

            local value =
                row[key]

            local nextSchema =
                schema[
                    schemaIndex + 1
                ]

            if type(nextSchema)
                == "table" then

                -- Store how many nested rows follow.
                output[writeIndex] =
                    #value

                writeIndex =
                    writeIndex + 1

                local amountWritten =
                    packRows(
                        value,
                        nextSchema,
                        output,
                        writeIndex
                    )

                writeIndex =
                    writeIndex
                    + amountWritten

                nestedHandled = true

            elseif not nestedHandled then
                output[writeIndex] =
                    value
            end

            writeIndex =
                writeIndex + 1
        end
    end

    return
        writeIndex
        - startIndex
end


function CMG.packTable(
    rows,
    schema
)
    if not CMG.getTunableValue(
        "table_packing"
    ) then
        return rows
    end

    local packed = {}

    packRows(
        rows,
        schema,
        packed,
        1
    )

    return packed
end


-- ============================================================
-- UNPACK
-- ============================================================

local function warnIfTableUsedAsKey(
    key
)
    if type(key) == "table" then
        CMG.warn(
            "^CMG.unpackTable: Key used for the table was a table! Additional information: "
            .. json.encode(key)
        )
    end
end


local function unpackRows(
    packed,
    schema,
    outputRows,
    startIndex,
    maximumRows
)
    local readIndex =
        startIndex

    local nestedHandled = false

    for _ = 1, maximumRows do
        if readIndex >= #packed then
            break
        end

        local row = {}

        for schemaIndex, key
            in pairs(schema) do

            local nextSchema =
                schema[
                    schemaIndex + 1
                ]

            if type(nextSchema)
                == "table" then

                local nestedRowCount =
                    packed[readIndex]

                readIndex =
                    readIndex + 1

                local nestedRows = {}

                local amountRead =
                    unpackRows(
                        packed,
                        nextSchema,
                        nestedRows,
                        readIndex,
                        nestedRowCount
                    )

                readIndex =
                    readIndex
                    + amountRead

                warnIfTableUsedAsKey(
                    key
                )

                row[key] =
                    nestedRows

                nestedHandled = false

            elseif not nestedHandled then
                warnIfTableUsedAsKey(
                    key
                )

                row[key] =
                    packed[
                        readIndex
                    ]
            end

            readIndex =
                readIndex + 1
        end

        table.insert(
            outputRows,
            row
        )
    end

    return
        readIndex
        - startIndex
end


function CMG.unpackTable(
    packed,
    schema
)
    if not CMG.getTunableValue(
        "table_packing"
    ) then
        return packed
    end

    local unpacked = {}

    unpackRows(
        packed,
        schema,
        unpacked,
        1,
        4294967295
    )

    return unpacked
end


-- ============================================================
-- SERVER-SIDE FEATURE TOGGLES
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    if not IsDuplicityVersion() then
        return
    end

    CMG.registerTunable(
        "Utils",
        "table_packing",
        "boolean",
        false,
        true
    )

    CMG.registerTunable(
        "Utils",
        "cmgui_focus",
        "boolean",
        false,
        true
    )
end)
