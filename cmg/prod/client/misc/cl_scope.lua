--[[
    Sniper Scope Distance Display
    =============================

    /scope opens a small settings menu for the distance text shown while
    aiming through a weapon scope.

    Local settings are saved in FiveM KVPs:
      cmg_scope_horizontal -> 1..100 percent, default 50
      cmg_scope_vertical   -> 1..100 percent, default 30
      cmg_scope_enabled    -> "true" / "false"

    When enabled, the distance text is shown if:
      * the current weapon has a recognised scope
      * the player is free-aiming

    While the settings menu is open, the text stays visible as a live preview.

    CMG.doesCurrentWeaponHaveScope()
      Returns true if:
        * the current weapon entity has one of five known scope components, OR
        * the selected weapon belongs to the sniper weapon group and does not
          use the excluded ammo type.

    Distance is measured by raycasting 500 metres from the gameplay camera.
]]

local HORIZONTAL_KVP =
    "cmg_scope_horizontal"

local VERTICAL_KVP =
    "cmg_scope_vertical"

local ENABLED_KVP =
    "cmg_scope_enabled"


-- ============================================================
-- SETTINGS
-- ============================================================

local function readNumberKvp(
    key,
    defaultValue
)
    local value =
        GetResourceKvpString(key)

    if value == nil
        or value == "" then
        return defaultValue
    end

    return
        tonumber(value)
        or defaultValue
end


local horizontalOptions = {}
local verticalOptions = {}

for value = 1, 100 do
    horizontalOptions[value] =
        string.format(
            "%d%%",
            value
        )

    verticalOptions[value] =
        string.format(
            "%d%%",
            value
        )
end


local horizontalIndex =
    readNumberKvp(
        HORIZONTAL_KVP,
        50
    )

local verticalIndex =
    readNumberKvp(
        VERTICAL_KVP,
        30
    )

local distanceEnabled =
    GetResourceKvpString(
        ENABLED_KVP
    ) == "true"

-- Set true by the menu draw callback and then refreshed from RageUI.Visible by
-- the tick. This lets the settings menu show a live distance preview.
local settingsMenuOpen = false


-- ============================================================
-- SETTINGS MENU
-- ============================================================

RMenu.Add(
    "scope",
    "main",
    RageUI.CreateMenu(
        "Scope Settings",
        "Main Menu",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight()
    )
)

local scopeMenu =
    RMenu:Get(
        "scope",
        "main"
    )


RageUI.CreateWhile(
    1.0,
    scopeMenu,
    nil,
    function()
        RageUI.IsVisible(
            scopeMenu,
            true,
            false,
            true,
            function()
                settingsMenuOpen =
                    true

                RageUI.List(
                    "Horizontal Position",
                    horizontalOptions,
                    horizontalIndex,
                    "The horizontal position of the distance text",
                    {},
                    true,
                    function(
                        _,
                        active,
                        _,
                        newIndex
                    )
                        horizontalIndex =
                            newIndex

                        if active then
                            SetResourceKvp(
                                HORIZONTAL_KVP,
                                tostring(
                                    newIndex
                                )
                            )
                        end
                    end,
                    function()
                    end
                )

                RageUI.List(
                    "Vertical Position",
                    verticalOptions,
                    verticalIndex,
                    "The vertical position of the distance text",
                    {},
                    true,
                    function(
                        _,
                        active,
                        _,
                        newIndex
                    )
                        verticalIndex =
                            newIndex

                        if active then
                            SetResourceKvp(
                                VERTICAL_KVP,
                                tostring(
                                    newIndex
                                )
                            )
                        end
                    end,
                    function()
                    end
                )

                RageUI.Checkbox(
                    "Enabled",
                    "Whether the distance should be shown when using a weapon scope",
                    distanceEnabled,
                    {},
                    function(
                        _,
                        _,
                        selected,
                        checked
                    )
                        distanceEnabled =
                            checked

                        if selected then
                            SetResourceKvp(
                                ENABLED_KVP,
                                tostring(
                                    checked
                                )
                            )
                        end
                    end
                )
            end
        )
    end
)


RegisterCommand(
    "scope",
    function()
        RageUI.Visible(
            scopeMenu,
            true
        )
    end,
    false
)


-- ============================================================
-- DOES CURRENT WEAPON HAVE A SCOPE?
-- ============================================================

local scopeComponents = {
    -767279652,
    -2101279869,
    -1135289737,
    471997210,
    1528590652
}


function CMG.doesCurrentWeaponHaveScope()
    local ped =
        PlayerPedId()

    local weaponEntity =
        GetCurrentPedWeaponEntityIndex(
            ped
        )

    if weaponEntity == 0 then
        return false
    end

    for _, componentHash
        in ipairs(scopeComponents) do

        if HasWeaponGotWeaponComponent(
            weaponEntity,
            componentHash
        ) then
            return true
        end
    end

    local selectedWeapon =
        GetSelectedPedWeapon(
            ped
        )

    local weaponGroup =
        GetWeapontypeGroup(
            selectedWeapon
        )

    local ammoType =
        GetPedAmmoTypeFromWeapon(
            ped,
            selectedWeapon
        )

    -- -1212426201 = sniper weapon group in the original client.
    -- -1878508229 is explicitly excluded.
    if weaponGroup == -1212426201
        and ammoType ~= -1878508229 then
        return true
    end

    return false
end


-- ============================================================
-- CAMERA RAYCAST DISTANCE
-- ============================================================

local function getScopeDistance()
    local cameraCoords =
        GetGameplayCamCoord()

    local cameraRotation =
        GetGameplayCamRot(2)

    local direction =
        CMG.rotationToDirection(
            cameraRotation
        )

    local endCoords =
        cameraCoords
        + direction * 500.0

    local ray =
        StartExpensiveSynchronousShapeTestLosProbe(
            cameraCoords.x,
            cameraCoords.y,
            cameraCoords.z,
            endCoords.x,
            endCoords.y,
            endCoords.z,
            -1,
            PlayerPedId(),
            4
        )

    local _,
          _,
          hitPosition =
        GetShapeTestResult(ray)

    return
        #(cameraCoords - hitPosition)
end


-- ============================================================
-- DRAW DISTANCE
-- ============================================================

local function scopeDistanceTick()
    if not distanceEnabled then
        return
    end

    if settingsMenuOpen then
        settingsMenuOpen =
            RageUI.Visible(
                scopeMenu
            )
    else
        if not CMG.doesCurrentWeaponHaveScope()
            or not IsPlayerFreeAiming(
                PlayerId()
            ) then
            return
        end
    end

    local distance =
        math.round(
            getScopeDistance(),
            1
        )

    DrawAdvancedText(
        horizontalIndex / 100.0,
        1.0
            - verticalIndex / 100.0,
        0.1,
        0.002,
        0.4,
        string.format(
            "%dm",
            distance
        ),
        255,
        255,
        255,
        255,
        0,
        0
    )
end


CMG.createThreadOnTick(
    scopeDistanceTick,
    "Sniper Scope Distance"
)
