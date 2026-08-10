--[[
    Inventory Hotbar
    ================

    The hotbar has 9 slots.

    Runtime state:
      hotbarEnabled
        Whether number-key selection is active.

      selectedSlotIndex
        Zero-based selected slot. -1 means nothing is selected.

      hotbarItems
        The first 9 inventory items currently shown in the HUD.

      selectionListeners
        Other systems can subscribe to hotbar-selection changes.

    Public helpers:
      CMG.onHotbarSelect(callback)
        Registers a listener and returns an unsubscribe function.

      CMG.getCurrentHotbarItem()
      CMG.selectHotbarSlot(zeroBasedIndex)
      CMG.setHotBarEnabled(enabled)
      CMG.getHotBarEnabled()

    Commands:
      cmg_hotbar:1 ... cmg_hotbar:9
      mapped to keyboard keys 1..9.

    Event 0c20c62dc8 refreshes the hotbar from the current inventory.

    The trapper config is used to decide which inventory items belong on the
    hotbar.
]]

local trapperConfig =
    CMG.loadModule(
        "cfg/cfg_trapper"
    )

local SLOT_COUNT = 9

local hotbarEnabled = false
local selectedSlotIndex = -1

local hotbarItems = {}
local selectionListeners = {}


-- ============================================================
-- LISTENER API
-- ============================================================

function CMG.onHotbarSelect(callback)
    if type(callback)
        ~= "function" then
        return
    end

    table.insert(
        selectionListeners,
        callback
    )

    return function()
        for index =
            #selectionListeners,
            1,
            -1 do

            if selectionListeners[index]
                == callback then

                table.remove(
                    selectionListeners,
                    index
                )

                break
            end
        end
    end
end


function CMG.getCurrentHotbarItem()
    if selectedSlotIndex >= 0 then
        return
            hotbarItems[
                selectedSlotIndex + 1
            ]
    end

    return nil
end


-- ============================================================
-- NUI
-- ============================================================

local function sendHotbarMessage(
    action,
    payload
)
    CMG.uiSendMessage({
        action = action,
        payload = payload
    })
end


local function notifySelectionListeners()
    local selectedItem =
        CMG.getCurrentHotbarItem()

    for _, callback
        in ipairs(
            selectionListeners
        ) do

        callback(
            selectedSlotIndex,
            selectedItem
        )
    end
end


local function sortItemsByName(items)
    table.sort(
        items,
        function(a, b)
            return
                string.lower(
                    a
                    and a.name
                    or ""
                )
                <
                string.lower(
                    b
                    and b.name
                    or ""
                )
        end
    )
end


-- ============================================================
-- SET HOTBAR CONTENTS
-- ============================================================

local function setHotbarItems(items)
    sortItemsByName(items)

    for slot = 1,
        SLOT_COUNT do
        hotbarItems[slot] = nil
    end

    for slot = 1,
        math.min(
            SLOT_COUNT,
            #items
        ) do

        hotbarItems[slot] =
            items[slot]
    end

    -- If the currently selected slot disappeared, clear selection.
    if selectedSlotIndex >= 0
        and hotbarItems[
            selectedSlotIndex + 1
        ] == nil then

        selectedSlotIndex = -1

        sendHotbarMessage(
            "HOTBAR_SET_SELECTED",
            {
                selectedIndex = -1
            }
        )

        notifySelectionListeners()
    end

    sendHotbarMessage(
        "HOTBAR_SET_ITEMS",
        {
            items = items
        }
    )
end


-- ============================================================
-- SELECT A SLOT
-- ============================================================

function CMG.selectHotbarSlot(
    zeroBasedIndex
)
    if not hotbarEnabled then
        return
    end

    if type(zeroBasedIndex)
        ~= "number" then
        return
    end

    if zeroBasedIndex == -1 then
        selectedSlotIndex = -1

        sendHotbarMessage(
            "HOTBAR_SET_SELECTED",
            {
                selectedIndex = -1
            }
        )

        notifySelectionListeners()
        return
    end

    if zeroBasedIndex < 0
        or zeroBasedIndex
            >= SLOT_COUNT then
        return
    end

    -- Press the selected number again to deselect it.
    if selectedSlotIndex
        == zeroBasedIndex then

        selectedSlotIndex = -1

        sendHotbarMessage(
            "HOTBAR_SET_SELECTED",
            {
                selectedIndex = -1
            }
        )

        notifySelectionListeners()
        return
    end

    local item =
        hotbarItems[
            zeroBasedIndex + 1
        ]

    if item == nil then
        selectedSlotIndex = -1

        sendHotbarMessage(
            "HOTBAR_SET_SELECTED",
            {
                selectedIndex = -1
            }
        )

        notifySelectionListeners()
        return
    end

    selectedSlotIndex =
        zeroBasedIndex

    sendHotbarMessage(
        "HOTBAR_SET_SELECTED",
        {
            selectedIndex =
                selectedSlotIndex
        }
    )

    notifySelectionListeners()
end


-- ============================================================
-- NUMBER-KEY BINDS
-- ============================================================

for slot = 1,
    SLOT_COUNT do

    local commandName =
        string.format(
            "cmg_hotbar:%d",
            slot
        )

    RegisterCommand(
        commandName,
        function()
            CMG.selectHotbarSlot(
                slot - 1
            )
        end,
        false
    )

    RegisterKeyMapping(
        commandName,
        string.format(
            "Hotbar Slot %d",
            slot
        ),
        "keyboard",
        tostring(slot)
    )
end


-- ============================================================
-- HOTBAR ENABLE / DISABLE
-- ============================================================

local function hotbarControlTick()
    if hotbarEnabled then
        HudWeaponWheelIgnoreSelection()
    end
end

CMG.createThreadOnTick(
    hotbarControlTick,
    "hotbarControls"
)


function CMG.setHotBarEnabled(enabled)
    hotbarEnabled =
        enabled == true

    if not hotbarEnabled then
        selectedSlotIndex = -1

        sendHotbarMessage(
            "HOTBAR_SET_SELECTED",
            {
                selectedIndex = -1
            }
        )

        notifySelectionListeners()
    end

    sendHotbarMessage(
        "HOTBAR_SET_ENABLED",
        {
            enabled =
                hotbarEnabled
        }
    )
end


function CMG.getHotBarEnabled()
    return hotbarEnabled
end


-- ============================================================
-- REFRESH FROM INVENTORY
-- ============================================================

AddEventHandler(
    "0c20c62dc8",
    function()
        local inventory =
            CMG.getClientInventoryItemList()

        if not inventory then
            return
        end

        local items = {}

        for itemId, itemData
            in pairs(inventory) do

            if trapperConfig.items[
                itemId
            ] then

                table.insert(
                    items,
                    {
                        name =
                            itemData[1],
                        icon =
                            itemId,
                        count =
                            itemData[2]
                    }
                )
            end
        end

        setHotbarItems(items)
    end
)
