--[[
    LEVEL 1 BEGINNER GUIDE — Structures
    ========================================

    File: cmg/prod/client/util/shared/structures.lua
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
      * Named functions: 4
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
    Circular Buffer Helper
    ======================

    CMG.createCircularBuffer(size, template)

    A circular buffer is a fixed-size history list. Once the end is reached,
    new values start overwriting the oldest values from the beginning.

    Returned object:
      buffer.put(value)
        Store one simple value.

      buffer.put(a, b, c, ...)
        If a table template was supplied, update the current history row with
        the supplied fields.

      buffer.get()
        Return the most recently written row/value.

      buffer.iterator()
        Returns an iterator which walks backwards from newest to oldest.

    Example:
      local positions = CMG.createCircularBuffer(10, {x=0, y=0})
      positions.put({x=10, y=20})
      print(positions.get().x)
]]

-- === HELPER FUNCTION: CMG.createCircularBuffer(size, template) ===
function CMG.createCircularBuffer(size, template)
    local buffer = {
        data = {},
        head = 1
    }

    -- Pre-create each slot.
    for index = 1, size do
        if type(template) == "table" then
            table.insert(
                buffer.data,
                table.copy(template)
            )
        else
            table.insert(
                buffer.data,
                0
            )
        end
    end


    -- === HELPER FUNCTION: buffer.put(...) ===
    function buffer.put(...)
        local values = {...}

        -- A single non-table value is stored directly.
        if #values == 1
            and type(values[1]) ~= "table" then

            buffer.data[
                buffer.head
            ] = values[1]

        else
            -- For structured rows, the original decompile expects the number
            -- of passed values to match the template length.
            assert(
                #values == #template
            )

            local row =
                buffer.data[
                    buffer.head
                ]

            for fieldIndex, value
                in pairs(values) do

                row[fieldIndex] = value
            end
        end

        buffer.head =
            buffer.head + 1

        if buffer.head > size then
            buffer.head = 1
        end
    end


    -- === HELPER FUNCTION: buffer.get() ===
    function buffer.get()
        local newestIndex =
            buffer.head - 1

        if newestIndex == 0 then
            newestIndex = size
        end

        return
            buffer.data[
                newestIndex
            ]
    end


    -- === HELPER FUNCTION: buffer.iterator() ===
    function buffer.iterator()
        local returnedCount = 0
        local index = buffer.head

        return function()
            index = index - 1

            if index == 0 then
                index = size
            end

            returnedCount =
                returnedCount + 1

            if returnedCount <= size then
                return
                    returnedCount,
                    buffer.data[index]
            end

            return nil
        end
    end


    return buffer
end
