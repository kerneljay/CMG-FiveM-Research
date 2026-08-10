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
