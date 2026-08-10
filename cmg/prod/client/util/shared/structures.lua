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
