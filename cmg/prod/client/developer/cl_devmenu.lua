--[[
    LEVEL 1 BEGINNER GUIDE - Dev Menu

    This file owns the developer-only RageUI menu framework.

    Other developer scripts call CMG.registerDevMenuItems("Path/To/Menu", cb).
    This file creates the nested RageUI menus, draws each registered callback,
    stores small menu state tables in resource KVPs, and runs optional dev-only
    tick threads.
]]

local latestCommit = "0.0.1784367447"

local menuItemsById = {
  main = {}
}
local devMenuStates = {}
local lastSavedDevMenuStates = {}
local hasStartedDevThreads = false
local devMenuThreads = {}
local entityEditors = {}

local function getSortedKeys(source)
  local keys = {}

  for key in pairs(source) do
    keys[#keys + 1] = key
  end

  table.sort(keys, function(left, right)
    return tostring(left):lower() < tostring(right):lower()
  end)

  return keys
end

local function getSortedMenuItems(menuItems)
  local sortableItems = {}

  for index, menuItem in ipairs(menuItems) do
    local sortKey = nil

    if menuItem.key then
      sortKey = tostring(menuItem.key):lower()
    end

    sortableItems[#sortableItems + 1] = {
      index = index,
      key = sortKey,
      callback = menuItem.cb or menuItem
    }
  end

  table.sort(sortableItems, function(left, right)
    if left.key and right.key then
      if left.key == right.key then
        return left.index < right.index
      end

      return left.key < right.key
    end

    if left.key and not right.key then
      return true
    end

    if not left.key and right.key then
      return false
    end

    return left.index < right.index
  end)

  return sortableItems
end

RMenu.Add("devmenu", "main", RageUI.CreateMenu("", "Developer Tools", CMG.getRageUIMenuWidth(), CMG.getRageUIMenuHeight()))

RageUI.CreateWhile(1.0, RMenu.Get("devmenu", "main"), nil, function()
  for _, menuId in ipairs(getSortedKeys(menuItemsById)) do
    local menuItems = menuItemsById[menuId]

    RageUI.IsVisible(RMenu.Get("devmenu", menuId), true, true, true, function()
      if menuId == "main" then
        RageUI.Separator(string.format("Latest Commit: %s", latestCommit))
      end

      for _, menuItem in ipairs(getSortedMenuItems(menuItems)) do
        menuItem.callback()
      end
    end)
  end
end)

function CMG.getDevMenuId(menuPath)
  local pathParts = stringsplit(menuPath, "/")
  local menuId = "main"

  for _, pathPart in pairs(pathParts) do
    menuId = menuId .. "_" .. pathPart
  end

  return menuId
end

function CMG.registerDevMenuItems(menuPath, callback)
  local pathParts = stringsplit(menuPath, "/")
  local parentMenuId = "main"

  if not menuItemsById[parentMenuId] then
    menuItemsById[parentMenuId] = {}
  end

  if #pathParts == 0 then
    table.insert(menuItemsById.main, { cb = callback })
    return
  end

  for index, pathPart in pairs(pathParts) do
    local childMenuId = parentMenuId .. "_" .. pathPart

    if not menuItemsById[childMenuId] then
      RMenu.Add("devmenu", childMenuId, RageUI.CreateSubMenu(
        RMenu.Get("devmenu", parentMenuId),
        "",
        pathPart,
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight()
      ))

      table.insert(menuItemsById[parentMenuId], {
        key = pathPart,
        cb = function()
          RageUI.ButtonWithStyle(pathPart, "", { RightLabel = "\f\f\f" }, true, function()
          end, RMenu.Get("devmenu", childMenuId))
        end
      })

      menuItemsById[childMenuId] = {}
    end

    if index == #pathParts then
      table.insert(menuItemsById[childMenuId], { cb = callback })
    end

    parentMenuId = childMenuId
  end
end

function CMG.registerDevMenuState(stateName, defaultState)
  local savedJson = GetResourceKvpString(string.format("devmenu_state_%s", stateName))
  local state = nil

  if savedJson and #savedJson > 0 then
    state = json.decode(savedJson)
  end

  if not state then
    state = defaultState
  end

  for key, defaultValue in pairs(defaultState) do
    if not state[key] then
      state[key] = defaultValue
    end
  end

  devMenuStates[stateName] = state
  lastSavedDevMenuStates[stateName] = table.copy(state)

  return state
end

function CMG.registerDevMenuThread(threadName, callback)
  devMenuThreads[threadName] = callback
end

function CMG.registerDevMenuEntityEditor(name, entityType, debugInfoCallback, editorButtonsCallback)
  table.insert(entityEditors, {
    name = name,
    entityType = entityType,
    debugInfoCallback = debugInfoCallback,
    editorButtonsCallback = editorButtonsCallback
  })
end

local displayOptions = CMG.registerDevMenuState("Display Options", {
  pedsEnabled = false,
  vehiclesEnabled = false,
  objectsEnabled = false
})

local function saveChangedDevMenuStates()
  for stateName, state in pairs(devMenuStates) do
    if not table.contentEquals(state, lastSavedDevMenuStates[stateName]) then
      SetResourceKvp(string.format("devmenu_state_%s", stateName), json.encode(state))
      lastSavedDevMenuStates[stateName] = table.copy(state)
    end
  end
end

local function startDevMenuThreads()
  if hasStartedDevThreads then
    return
  end

  hasStartedDevThreads = true

  for threadName, callback in pairs(devMenuThreads) do
    CMG.createThreadOnTick(callback, string.format("DevMenu %s", threadName))
  end

  while true do
    saveChangedDevMenuStates()
    Wait(1000)
  end
end

AddEventHandler("onResourceStop", function(resourceName)
  if resourceName == GetCurrentResourceName() and hasStartedDevThreads then
    saveChangedDevMenuStates()
  end
end)

RegisterCommand("devmenu", function()
  local userId = CMG.getClientUserId()

  if not userId or not CMG.isDeveloper(userId) then
    return
  end

  RageUI.Visible(RMenu.Get("devmenu", "main"), true)
  startDevMenuThreads()
end, false)

local function getScreenCoordFromWorldPosition(coords)
  return GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
end

function CMG.isSphereOnScreen(coords, radius)
  if getScreenCoordFromWorldPosition(coords) then
    return true
  end

  local offsets = {
    vector3(radius, 0.0, 0.0),
    vector3(-radius, 0.0, 0.0),
    vector3(0.0, radius, 0.0),
    vector3(0.0, -radius, 0.0),
    vector3(0.0, 0.0, radius),
    vector3(0.0, 0.0, -radius)
  }

  for _, offset in ipairs(offsets) do
    if getScreenCoordFromWorldPosition(coords + offset) then
      return true
    end
  end

  return false
end

CMG.registerDevMenuItems("Displays", function()
  RageUI.Checkbox("Player Debug", "Whether to draw information and activate the editor for players.", displayOptions.playersEnabled, {}, function(_, _, _, checked)
    displayOptions.playersEnabled = checked
  end)

  RageUI.Checkbox("Ped Debug", "Whether to draw information and activate the editor for peds.", displayOptions.pedsEnabled, {}, function(_, _, _, checked)
    displayOptions.pedsEnabled = checked
  end)

  RageUI.Checkbox("Vehicle Debug", "Whether to draw information and activate the editor for vehicles.", displayOptions.vehiclesEnabled, {}, function(_, _, _, checked)
    displayOptions.vehiclesEnabled = checked
  end)

  RageUI.Checkbox("Object Debug", "Whether to draw information and activate the editor for objects.", displayOptions.objectsEnabled, {}, function(_, _, _, checked)
    displayOptions.objectsEnabled = checked
  end)
end)

local function drawEntityDebugInfo(entityType, entity)
  local entityCoords = GetEntityCoords(entity)

  if not getScreenCoordFromWorldPosition(entityCoords) then
    return
  end

  local playerDistance = #(CMG.getPlayerCoords() - entityCoords)
  if playerDistance > 50.0 then
    return
  end

  local textLines = ""

  for _, editor in pairs(entityEditors) do
    if editor.entityType == "entity" or editor.entityType == entityType then
      local debugInfo = editor.debugInfoCallback(entity)

      if debugInfo ~= "" then
        if #textLines > 0 then
          textLines = textLines .. "\n"
        end

        textLines = textLines .. debugInfo
      end
    end
  end

  if textLines ~= "" then
    CMG.DrawText3D(entityCoords, textLines, 0.25, nil, true)
  end
end

local function drawEnabledEntityDebugInfo()
  if displayOptions.pedsEnabled then
    for _, ped in pairs(GetGamePool("CPed")) do
      drawEntityDebugInfo("ped", ped)
    end
  end

  if displayOptions.vehiclesEnabled then
    for _, vehicle in pairs(CMG.getAllVehicles()) do
      drawEntityDebugInfo("vehicle", vehicle)
    end
  end

  if displayOptions.objectsEnabled then
    for _, object in pairs(GetGamePool("CObject")) do
      drawEntityDebugInfo("object", object)
    end
  end
end

CMG.registerDevMenuThread("Entity Debug", drawEnabledEntityDebugInfo)

if CMG.isDevMode() then
  Citizen.CreateThread(startDevMenuThreads)
end

CMG.registerCommand("latestcommit", function()
  print(string.format("Latest commit is: %s", latestCommit))
end, true)
