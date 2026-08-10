--[[
    Small Matrix / Geometry Helpers
    ===============================

    This file contains two tiny math utilities used by geometry code:

      JT(size)
        A Johnson-Trotter permutation iterator. It generates every permutation
        of 1..size and also tracks whether the next permutation changes sign.

      MTX(rows)
        Wraps a Lua table-of-rows as a matrix object with:
          matrix:dump()
          matrix:perm()
          matrix:det(sign)

    CMG.isOnPlane(a, b, c, d, e, f)
      Builds two 4x4 determinant matrices and returns true when the first
      determinant is very close to zero (< 0.1 absolute value).

    The unusual names JT and MTX are preserved because other scripts may use
    them directly.
]]

-- ============================================================
-- JOHNSON-TROTTER PERMUTATION ITERATOR
-- ============================================================

local permutationMethods = {}


function JT(size)
    local iterator = {
        values = {},
        positions = {},
        directions = {},
        sign = 1
    }

    setmetatable(
        iterator,
        {
            __index =
                permutationMethods
        }
    )

    for index = 1, size do
        iterator.values[index] =
            index

        iterator.positions[index] =
            index

        iterator.directions[index] =
            -1
    end

    return iterator
end


function permutationMethods:largestMobile()
    for value = #self.values,
        1,
        -1 do

        local currentPosition =
            self.positions[value]

        local nextPosition =
            currentPosition
            + self.directions[value]

        if nextPosition >= 1
            and nextPosition
                <= #self.values
            and value
                > self.values[
                    nextPosition
                ] then

            return value
        end
    end

    return 0
end


function permutationMethods:next()
    local mobileValue =
        self:largestMobile()

    if mobileValue == 0 then
        return false
    end

    local currentPosition =
        self.positions[
            mobileValue
        ]

    local nextPosition =
        currentPosition
        + self.directions[
            mobileValue
        ]

    local swappedValue =
        self.values[
            nextPosition
        ]

    -- Swap permutation values.
    self.values[
        currentPosition
    ],
    self.values[
        nextPosition
    ] =
        self.values[
            nextPosition
        ],
        self.values[
            currentPosition
        ]

    -- Keep each value's position lookup correct.
    self.positions[
        mobileValue
    ],
    self.positions[
        swappedValue
    ] =
        self.positions[
            swappedValue
        ],
        self.positions[
            mobileValue
        ]

    -- Every swap changes permutation parity.
    self.sign =
        -self.sign

    -- Values larger than the moved value reverse direction.
    for value = mobileValue + 1,
        #self.directions do

        self.directions[value] =
            -self.directions[value]
    end

    return true
end


-- ============================================================
-- MATRIX
-- ============================================================

local matrixMethods = {}


function MTX(rows)
    setmetatable(
        rows,
        {
            __index =
                matrixMethods
        }
    )

    rows.rows =
        #rows

    rows.cols =
        #rows[1]

    return rows
end


function matrixMethods:dump()
    for _, row in ipairs(self) do
        print(
            table.unpack(row)
        )
    end
end


function matrixMethods:perm()
    return self:det(1)
end


function matrixMethods:det(
    forcedSign
)
    local determinant = 0

    local permutation =
        JT(self.cols)

    repeat
        local productSign =
            forcedSign
            or permutation.sign

        for rowIndex, columnIndex
            in ipairs(
                permutation.values
            ) do

            productSign =
                productSign
                * self[
                    rowIndex
                ][
                    columnIndex
                ]
        end

        determinant =
            determinant
            + productSign

    until not permutation:next()

    return determinant
end


-- ============================================================
-- GEOMETRY TEST
-- ============================================================

function CMG.isOnPlane(
    pointA,
    pointB,
    pointC,
    pointD,
    pointE,
    pointF
)
    local firstMatrix =
        MTX({
            {
                pointA.x,
                pointB.x,
                pointC.x,
                pointD.x
            },

            {
                pointA.y,
                pointB.y,
                pointC.y,
                pointD.y
            },

            {
                pointA.z,
                pointB.z,
                pointC.z,
                pointD.z
            },

            {1, 1, 1, 1}
        })

    -- The original decompiled client also creates a second matrix using
    -- A/C/E/F. It never uses that matrix afterwards, but creating it is kept
    -- here to accurately document the source's structure.
    local secondMatrix =
        MTX({
            {
                pointA.x,
                pointC.x,
                pointE.x,
                pointF.x
            },

            {
                pointA.y,
                pointC.y,
                pointE.y,
                pointF.y
            },

            {
                pointA.z,
                pointC.z,
                pointE.z,
                pointF.z
            },

            {1, 1, 1, 1}
        })

    -- Keep the local so a beginner can see the second matrix is intentionally
    -- unused rather than accidentally forgotten.
    local _unusedSecondMatrix =
        secondMatrix

    return
        math.abs(
            firstMatrix:det()
        ) < 0.1
end
