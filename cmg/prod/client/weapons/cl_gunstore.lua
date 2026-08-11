--[[
    LEVEL 1 BEGINNER GUIDE — Gunstore
    ======================================

    File: cmg/prod/client/weapons/cl_gunstore.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: weapon/combat gameplay, specifically the Gunstore feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 63
      * Background threads: 0
      * Always-running loops: 1
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

    IMPORTANT — this file still contains decompiler temporary names.
      Names like workValue12, textValue4, dataTable7, flag3, cmgCall2,
      arg1/arg2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workValue = GetEntityCoords
        dataTable2 = workValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      I have deliberately NOT mass-renamed these reused temporary variables:
      doing that without full control-flow reconstruction can silently change
      behaviour. Comments/section labels below explain the code safely.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local cmgCall, cmgCall2, cmgCall3, textValue18, vector3Builder2, textValue23, textValue25, textValue26, flag7, dataTable5, flag, dataTable, dataTable2, workValue2, textValue4, textValue5, rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6
cmgCall = CMG
cmgCall = cmgCall.loadModule
cmgCall2 = "cfg/weapons"
-- Beginner: result below is config.
cmgCall = cmgCall(cmgCall2)
cmgCall2 = CMG
cmgCall2 = cmgCall2.loadModule
cmgCall3 = "cfg/cfg_gunstore"
-- Beginner: result below is config.
cmgCall2 = cmgCall2(cmgCall3)
cmgCall3 = CMG
cmgCall3 = cmgCall3.loadModule
textValue18 = "cfg/cfg_smallarms"
-- Beginner: result below is config.
cmgCall3 = cmgCall3(textValue18)
textValue18 = nil
vector3Builder2 = vector3
textValue23 = 0.0
textValue25 = 0.0
textValue26 = 0.0
vector3Builder2 = vector3Builder2(textValue23, textValue25, textValue26)
textValue23 = ""
textValue25 = ""
textValue26 = ""
flag7 = false
dataTable5 = {}
flag = false
dataTable = {}
dataTable.name = ""
dataTable.price = 0
dataTable.model = ""
dataTable.ammoPrice = 0
dataTable.weaponShop = ""
dataTable.breakdown = nil
dataTable2 = {}
workValue2 = RMenu
workValue2 = workValue2.Add
textValue4 = "cmggunstore"
textValue5 = "mainmenu"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue8 = ""
textValue10 = ""
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_gunstoreui"
textValue11 = "cmg_gunstoreui"
rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6 = rageUiCall(textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11)
workValue2(textValue4, textValue5, rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6)
workValue2 = RMenu
textValue4 = workValue2
workValue2 = workValue2.Get
textValue5 = "cmggunstore"
rageUiCall = "mainmenu"
-- Beginner: result below is menu.
workValue2 = workValue2(textValue4, textValue5, rageUiCall)
textValue4 = workValue2
workValue2 = workValue2.SetSubtitle
textValue5 = "~b~GUNSTORE"
workValue2(textValue4, textValue5)
workValue2 = RMenu
workValue2 = workValue2.Add
textValue4 = "cmggunstore"
textValue5 = "category"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue8 = RMenu
textValue10 = textValue8
textValue8 = textValue8.Get
rageUiCall2 = "cmggunstore"
rageUiCall3 = "mainmenu"
-- Beginner: result below is menu.
textValue8 = textValue8(textValue10, rageUiCall2, rageUiCall3)
textValue10 = ""
rageUiCall2 = "~b~Purchase Weapon or Ammo"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue11 = "cmg_gunstoreui"
textValue12 = "cmg_gunstoreui"
rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6 = rageUiCall(textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12)
workValue2(textValue4, textValue5, rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6)
workValue2 = RMenu
workValue2 = workValue2.Add
textValue4 = "cmggunstore"
textValue5 = "type"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue8 = RMenu
textValue10 = textValue8
textValue8 = textValue8.Get
rageUiCall2 = "cmggunstore"
rageUiCall3 = "category"
-- Beginner: result below is menu.
textValue8 = textValue8(textValue10, rageUiCall2, rageUiCall3)
textValue10 = ""
rageUiCall2 = "~b~Purchase Weapon or Ammo"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue11 = "cmg_gunstoreui"
textValue12 = "cmg_gunstoreui"
rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6 = rageUiCall(textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12)
workValue2(textValue4, textValue5, rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6)
workValue2 = RMenu
workValue2 = workValue2.Add
textValue4 = "cmggunstore"
textValue5 = "confirm"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue8 = RMenu
textValue10 = textValue8
textValue8 = textValue8.Get
rageUiCall2 = "cmggunstore"
rageUiCall3 = "type"
-- Beginner: result below is menu.
textValue8 = textValue8(textValue10, rageUiCall2, rageUiCall3)
textValue10 = ""
rageUiCall2 = "~b~Purchase confirm your purchase"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue11 = "cmg_gunstoreui"
textValue12 = "cmg_gunstoreui"
rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6 = rageUiCall(textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12)
workValue2(textValue4, textValue5, rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6)
workValue2 = RMenu
workValue2 = workValue2.Add
textValue4 = "cmggunstore"
textValue5 = "vip_melee"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue8 = RMenu
textValue10 = textValue8
textValue8 = textValue8.Get
rageUiCall2 = "cmggunstore"
rageUiCall3 = "mainmenu"
-- Beginner: result below is menu.
textValue8 = textValue8(textValue10, rageUiCall2, rageUiCall3)
textValue10 = ""
rageUiCall2 = "~b~Purchase Weapon or Ammo"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue11 = "cmg_gunstoreui"
textValue12 = "cmg_gunstoreui"
rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6 = rageUiCall(textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12)
workValue2(textValue4, textValue5, rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6)
workValue2 = RMenu
workValue2 = workValue2.Add
textValue4 = "cmggunstore"
textValue5 = "vip_smallarms"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue8 = RMenu
textValue10 = textValue8
textValue8 = textValue8.Get
rageUiCall2 = "cmggunstore"
rageUiCall3 = "mainmenu"
-- Beginner: result below is menu.
textValue8 = textValue8(textValue10, rageUiCall2, rageUiCall3)
textValue10 = ""
rageUiCall2 = "~b~Purchase Weapon or Ammo"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue11 = "cmg_gunstoreui"
textValue12 = "cmg_gunstoreui"
rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6 = rageUiCall(textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12)
workValue2(textValue4, textValue5, rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6)
workValue2 = RMenu
workValue2 = workValue2.Add
textValue4 = "cmggunstore"
textValue5 = "vip_largearms"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue8 = RMenu
textValue10 = textValue8
textValue8 = textValue8.Get
rageUiCall2 = "cmggunstore"
rageUiCall3 = "mainmenu"
-- Beginner: result below is menu.
textValue8 = textValue8(textValue10, rageUiCall2, rageUiCall3)
textValue10 = ""
rageUiCall2 = "~b~Purchase Weapon or Ammo"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue11 = "cmg_gunstoreui"
textValue12 = "cmg_gunstoreui"
rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6 = rageUiCall(textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12)
workValue2(textValue4, textValue5, rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6)
workValue2 = RMenu
workValue2 = workValue2.Add
textValue4 = "cmggunstore"
textValue5 = "largearms_rebel"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue8 = RMenu
textValue10 = textValue8
textValue8 = textValue8.Get
rageUiCall2 = "cmggunstore"
rageUiCall3 = "mainmenu"
-- Beginner: result below is menu.
textValue8 = textValue8(textValue10, rageUiCall2, rageUiCall3)
textValue10 = ""
rageUiCall2 = "~b~Purchase Weapon or Ammo"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue11 = "cmg_gunstoreui"
textValue12 = "cmg_gunstoreui"
rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6 = rageUiCall(textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12)
workValue2(textValue4, textValue5, rageUiCall, textValue8, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, textValue11, textValue12, textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6)

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, arg2) ===
function workValue2(arg1, arg2)
  local arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue
  if not arg2 then
    arg3 = string
    arg3 = arg3.format
    textValue19 = "\194\163%s"
    dataTable3 = getMoneyStringFormatted
    numberValue7 = arg1
    dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue = dataTable3(numberValue7)
    return arg3(textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue)
  end
  arg3 = arg2.basePrice
  if not arg3 then
    arg3 = arg1
  end
  textValue19 = arg2.commissionPct
  if not textValue19 then
    textValue19 = 0
  end
  dataTable3 = arg2.discounts
  if not dataTable3 then
    dataTable3 = {}
  end
  numberValue7 = arg2.totalDiscountPct
  if not numberValue7 then
    numberValue7 = 0
  end
  if 0 == textValue19 then
    stringHelper4 = #dataTable3
    if 0 == stringHelper4 then
      stringHelper4 = string
      stringHelper4 = stringHelper4.format
      tableHelper2 = "\194\163%s"
      workValue20 = getMoneyStringFormatted
      stringHelper5 = arg1
      workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue = workValue20(stringHelper5)
      return stringHelper4(tableHelper2, workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue)
    end
  end
  stringHelper4 = {}
  tableHelper2 = table
  tableHelper2 = tableHelper2.insert
  workValue20 = stringHelper4
  stringHelper5 = string
  stringHelper5 = stringHelper5.format
  stringHelper = "Base: ~c~\194\163%s~s~"
  textValue2 = getMoneyStringFormatted
  workValue = arg3
  textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue = textValue2(workValue)
  stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue = stringHelper5(stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue)
  tableHelper2(workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue)
  if textValue19 > 0 then
    tableHelper2 = math
    tableHelper2 = tableHelper2.floor
    workValue20 = textValue19 / 100
    workValue20 = 1 + workValue20
    workValue20 = arg3 * workValue20
    tableHelper2 = tableHelper2(workValue20)
    workValue20 = table
    workValue20 = workValue20.insert
    stringHelper5 = stringHelper4
    stringHelper = string
    stringHelper = stringHelper.format
    textValue2 = "~y~+%d%% Turf Commission~s~ \226\134\146 \194\163%s"
    workValue = textValue19
    tableHelper = getMoneyStringFormatted
    workValue4 = tableHelper2
    tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue = tableHelper(workValue4)
    stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue = stringHelper(textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue)
    workValue20(stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue)
  end
  tableHelper2 = ipairs
  workValue20 = dataTable3
  tableHelper2, workValue20, stringHelper5, stringHelper = tableHelper2(workValue20)
  for textValue2, workValue in tableHelper2, workValue20, stringHelper5, stringHelper do
    tableHelper = table
    tableHelper = tableHelper.insert
    workValue4 = stringHelper4
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    textValue6 = "~b~-%d%% %s~s~"
    workValue7 = workValue.pct
    nameValue = workValue.name
    stringHelper2, textValue6, workValue7, nameValue = stringHelper2(textValue6, workValue7, nameValue)
    tableHelper(workValue4, stringHelper2, textValue6, workValue7, nameValue)
  end
  tableHelper2 = #dataTable3
  if tableHelper2 > 1 then
    tableHelper2 = table
    tableHelper2 = tableHelper2.insert
    workValue20 = stringHelper4
    stringHelper5 = string
    stringHelper5 = stringHelper5.format
    stringHelper = "~b~Total Discount: -%d%%~s~"
    textValue2 = numberValue7
    stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue = stringHelper5(stringHelper, textValue2)
    tableHelper2(workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue)
  end
  tableHelper2 = table
  tableHelper2 = tableHelper2.insert
  workValue20 = stringHelper4
  stringHelper5 = string
  stringHelper5 = stringHelper5.format
  stringHelper = "Final: ~g~\194\163%s~s~"
  textValue2 = getMoneyStringFormatted
  workValue = arg1
  textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue = textValue2(workValue)
  stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue = stringHelper5(stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue)
  tableHelper2(workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue)
  tableHelper2 = table
  tableHelper2 = tableHelper2.concat
  workValue20 = stringHelper4
  stringHelper5 = "\n"
  return tableHelper2(workValue20, stringHelper5)
end

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper
  arg1 = {}
  arg2 = cmgCall2.CMGGunStores
  arg3 = textValue18
  arg2 = arg2[arg3]
  arg3 = pairs
  textValue19 = arg2
  arg3, textValue19, dataTable3, numberValue7 = arg3(textValue19)
  for stringHelper4 in arg3, textValue19, dataTable3, numberValue7 do
    tableHelper2 = cmgCall.weapons
    tableHelper2 = tableHelper2[stringHelper4]
    if tableHelper2 then
      workValue20 = tableHelper2.ammo
      if "modelammo" ~= workValue20 then
        workValue20 = cmgCall2.miscWeaponItems
        workValue20 = workValue20[stringHelper4]
        if not workValue20 then
          workValue20 = tableHelper2.class
          workValue20 = arg1[workValue20]
          if not workValue20 then
            workValue20 = tableHelper2.class
            arg1[workValue20] = true
          end
      end
    end
    else
      arg1.Misc = true
    end
  end
  arg3 = {}
  textValue19 = pairs
  dataTable3 = arg1
  textValue19, dataTable3, numberValue7, stringHelper4 = textValue19(dataTable3)
  for tableHelper2 in textValue19, dataTable3, numberValue7, stringHelper4 do
    workValue20 = table
    workValue20 = workValue20.insert
    stringHelper5 = arg3
    stringHelper = tableHelper2
    workValue20(stringHelper5, stringHelper)
  end
  textValue19 = table
  textValue19 = textValue19.sort
  dataTable3 = arg3
  textValue19(dataTable3)
  return arg3
end

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2, arg3, textValue19
  arg2 = cmgCall.weapons
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = arg2.ammo
    if "modelammo" ~= arg3 then
      arg3 = cmgCall2.miscWeaponItems
      arg3 = arg3[arg1]
      if not arg3 then
        goto flow_label_18
      end
    end
  end
  arg3 = textValue23
  arg3 = "Misc" == arg3
  return arg3
  ::flow_label_18::
  arg3 = arg2.class
  textValue19 = textValue23
  arg3 = arg3 == textValue19
  return arg3
end

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1) ===
function rageUiCall(arg1)
  local arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper
  arg2 = false
  arg3 = pairs
  textValue19 = arg1
  arg3, textValue19, dataTable3, numberValue7 = arg3(textValue19)
  for stringHelper4, tableHelper2 in arg3, textValue19, dataTable3, numberValue7 do
    if "cmgplatinum.whitelisted" == tableHelper2 then
      arg2 = true
    end
  end
  arg3 = arg2
  if arg2 then
    textValue19 = pairs
    dataTable3 = arg1
    textValue19, dataTable3, numberValue7, stringHelper4 = textValue19(dataTable3)
    for tableHelper2, workValue20 in textValue19, dataTable3, numberValue7, stringHelper4 do
      if "" ~= workValue20 then
        stringHelper5 = CMG
        stringHelper5 = stringHelper5.hasClientPermission
        stringHelper = workValue20
        stringHelper5 = stringHelper5(stringHelper)
        if not stringHelper5 then
          arg3 = false
        end
      end
    end
  else
    textValue19 = pairs
    dataTable3 = arg1
    textValue19, dataTable3, numberValue7, stringHelper4 = textValue19(dataTable3)
    for tableHelper2, workValue20 in textValue19, dataTable3, numberValue7, stringHelper4 do
      if "" ~= workValue20 then
        stringHelper5 = CMG
        stringHelper5 = stringHelper5.hasClientPermission
        stringHelper = workValue20
        stringHelper5 = stringHelper5(stringHelper)
        if not stringHelper5 then
          goto flow_label_45
        end
      end
      arg3 = true
      ::flow_label_45::
    end
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1, arg2, arg3) ===
function textValue8(arg1, arg2, arg3)
  local textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7, nameValue, workValue8, workValue9, workValue10, workValue11, textValue13, textValue15
  if "_config" == arg1 then
    return
  end
  if arg3 then
    textValue19 = textValue5
    dataTable3 = arg1
    textValue19 = textValue19(dataTable3)
    if not textValue19 then
      return
    end
  end
  textValue19 = cmgCall2.CMGGunStores
  textValue19 = textValue19[arg2]
  dataTable3 = table
  dataTable3 = dataTable3.unpack
  numberValue7 = textValue19[arg1]
  dataTable3, numberValue7, stringHelper4, tableHelper2 = dataTable3(numberValue7)
  workValue20 = rageUiCall
  stringHelper5 = tableHelper2
  workValue20 = workValue20(stringHelper5)
  stringHelper5 = textValue19._config
  if not workValue20 then
    stringHelper = stringHelper5.grayNotPurchableItems
    if not stringHelper then
      return
    end
  end
  stringHelper = numberValue7
  textValue2 = stringHelper4
  workValue = nil
  tableHelper = dataTable5
  tableHelper = tableHelper[arg2]
  if tableHelper then
    workValue4 = tableHelper[arg1]
    if workValue4 then
      stringHelper2 = workValue4.price
      stringHelper = stringHelper2 or stringHelper
      if not stringHelper2 then
      end
      stringHelper2 = workValue4.ammoPrice
      textValue2 = stringHelper2 or textValue2
      if not stringHelper2 then
      end
      workValue = workValue4.breakdown
    end
  end
  workValue4 = nil
  stringHelper2 = stringHelper5.useRebelTokens
  if stringHelper2 then
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    textValue6 = "%s Rebel Tokens"
    workValue7 = getMoneyStringFormatted
    nameValue = stringHelper
    workValue7, nameValue, workValue8, workValue9, workValue10, workValue11, textValue13, textValue15 = workValue7(nameValue)
    stringHelper2 = stringHelper2(textValue6, workValue7, nameValue, workValue8, workValue9, workValue10, workValue11, textValue13, textValue15)
    workValue4 = stringHelper2
  else
    stringHelper2 = workValue2
    textValue6 = stringHelper
    workValue7 = workValue
    stringHelper2 = stringHelper2(textValue6, workValue7)
    workValue4 = stringHelper2
  end
  stringHelper2 = stringHelper5.useRebelTokens
  if stringHelper2 then
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    textValue6 = "%s Rebel Tokens"
    workValue7 = getMoneyStringFormatted
    nameValue = stringHelper
    workValue7, nameValue, workValue8, workValue9, workValue10, workValue11, textValue13, textValue15 = workValue7(nameValue)
    stringHelper2 = stringHelper2(textValue6, workValue7, nameValue, workValue8, workValue9, workValue10, workValue11, textValue13, textValue15)
    workValue4 = stringHelper2
  end
  stringHelper2 = RageUI
  stringHelper2 = stringHelper2.ButtonWithStyle
  textValue6 = dataTable3
  workValue7 = workValue4
  nameValue = {}
  nameValue.RightLabel = "\226\134\146\226\134\146\226\134\146"
  workValue8 = workValue20

  -- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg12, arg22, arg32) ===
  function workValue9(arg12, arg22, arg32)
    local workValue16
    if arg22 then
      workValue16 = arg1
      textValue26 = workValue16
    end
    if arg32 then
      workValue16 = dataTable3
      dataTable.name = workValue16
      workValue16 = arg1
      dataTable.model = workValue16
      workValue16 = stringHelper
      dataTable.price = workValue16
      workValue16 = textValue2
      dataTable.ammoPrice = workValue16
      workValue16 = arg2
      dataTable.weaponShop = workValue16
      workValue16 = workValue
      dataTable.breakdown = workValue16
    end
  end
  workValue10 = RMenu
  workValue11 = workValue10
  workValue10 = workValue10.Get
  textValue13 = "cmggunstore"
  textValue15 = "type"
  workValue10, workValue11, textValue13, textValue15 = workValue10(workValue11, textValue13, textValue15)
  -- Beginner: Draw a selectable RageUI menu button.
  stringHelper2(textValue6, workValue7, nameValue, workValue8, workValue9, workValue10, workValue11, textValue13, textValue15)
end
textValue10 = RageUI
textValue10 = textValue10.CreateWhile
rageUiCall2 = 1.0
rageUiCall3 = RMenu
rageUiCall4 = rageUiCall3
rageUiCall3 = rageUiCall3.Get
textValue11 = "cmggunstore"
textValue12 = "mainmenu"
-- Beginner: result below is menu.
rageUiCall3 = rageUiCall3(rageUiCall4, textValue11, textValue12)
rageUiCall4 = nil

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
function textValue11()
  local arg1, arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue19 = "cmggunstore"
  dataTable3 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue19, dataTable3)
  arg3 = true
  textValue19 = true
  dataTable3 = true

  -- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
  function numberValue7()
    local arg12, arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9
    arg12 = assert
    arg22 = textValue18
    arg12(arg22)
    arg12 = cmgCall2.CMGGunStores
    arg22 = textValue18
    arg12 = arg12[arg22]
    arg22 = arg12._config
    arg32 = arg22.useRebelTokens
    if arg32 then
      arg32 = RageUI
      arg32 = arg32.Separator
      workValue16 = "~y~Rebel Tokens: "
      stringHelper3 = tostring
      dataTable4 = select
      flag6 = 4
      cmgCall8 = CMG
      cmgCall8 = cmgCall8.getClientDisplayMoney
      cmgCall8, workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9 = cmgCall8()
      dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9 = dataTable4(flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9)
      stringHelper3 = stringHelper3(dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9)
      workValue16 = workValue16 .. stringHelper3
      arg32(workValue16)
    end
    arg32 = CMG
    arg32 = arg32.isPlatClub
    arg32 = arg32()
    if arg32 then
      arg32 = arg22.hasPlatLargeArms
      if arg32 then
        arg32 = CMG
        arg32 = arg32.hasClientPermission
        workValue16 = "vip.gunstore"
        arg32 = arg32(workValue16)
        if arg32 then
          arg32 = RageUI
          arg32 = arg32.ButtonWithStyle
          workValue16 = "~y~[Platinum Melee Store]"
          stringHelper3 = ""
          dataTable4 = {}
          dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
          flag6 = true

          -- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: arg13, arg23, arg33) ===
          function cmgCall8(arg13, arg23, arg33)
            local serverEventCall, textValue21, textValue24
            if arg33 then
              serverEventCall = TriggerServerEvent
              textValue21 = "da3d489217"
              textValue24 = "Legion_VIP"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3d489217".
              serverEventCall(textValue21, textValue24)
            end
          end
          workValue21 = RMenu
          workValue22 = workValue21
          workValue21 = workValue21.Get
          textValue = "cmggunstore"
          textValue3 = "vip_melee"
          workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9 = workValue21(workValue22, textValue, textValue3)
          -- Beginner: Draw a selectable RageUI menu button.
          arg32(workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9)
          arg32 = RageUI
          arg32 = arg32.ButtonWithStyle
          workValue16 = "~y~[Platinum Small Arms]"
          stringHelper3 = ""
          dataTable4 = {}
          dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
          flag6 = true

          -- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: arg13, arg23, arg33) ===
          function cmgCall8(arg13, arg23, arg33)
            local serverEventCall, textValue21, textValue24
            if arg33 then
              serverEventCall = TriggerServerEvent
              textValue21 = "da3d489217"
              textValue24 = "SmallArms_VIP"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3d489217".
              serverEventCall(textValue21, textValue24)
            end
          end
          workValue21 = RMenu
          workValue22 = workValue21
          workValue21 = workValue21.Get
          textValue = "cmggunstore"
          textValue3 = "vip_smallarms"
          workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9 = workValue21(workValue22, textValue, textValue3)
          -- Beginner: Draw a selectable RageUI menu button.
          arg32(workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9)
          arg32 = RageUI
          arg32 = arg32.ButtonWithStyle
          workValue16 = "~y~[Platinum Large Arms]"
          stringHelper3 = ""
          dataTable4 = {}
          dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
          flag6 = true

          -- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: arg13, arg23, arg33) ===
          function cmgCall8(arg13, arg23, arg33)
            local serverEventCall, textValue21, textValue24
            if arg33 then
              serverEventCall = TriggerServerEvent
              textValue21 = "da3d489217"
              textValue24 = "LargeArms_VIP"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3d489217".
              serverEventCall(textValue21, textValue24)
            end
          end
          workValue21 = RMenu
          workValue22 = workValue21
          workValue21 = workValue21.Get
          textValue = "cmggunstore"
          textValue3 = "vip_largearms"
          workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9 = workValue21(workValue22, textValue, textValue3)
          -- Beginner: Draw a selectable RageUI menu button.
          arg32(workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9)
        end
      end
    end
    arg32 = arg22[4]
    if "Rebel Gun Store" == arg32 then
      arg32 = RageUI
      arg32 = arg32.ButtonWithStyle
      workValue16 = "~r~[Rebel Large Arms]"
      stringHelper3 = ""
      dataTable4 = {}
      dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag6 = true

      -- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: arg13, arg23, arg33) ===
      function cmgCall8(arg13, arg23, arg33)
        local serverEventCall, textValue21, textValue24
        if arg33 then
          serverEventCall = TriggerServerEvent
          textValue21 = "da3d489217"
          textValue24 = "LargeArms_Rebel"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3d489217".
          serverEventCall(textValue21, textValue24)
        end
      end
      workValue21 = RMenu
      workValue22 = workValue21
      workValue21 = workValue21.Get
      textValue = "cmggunstore"
      textValue3 = "largearms_rebel"
      workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9 = workValue21(workValue22, textValue, textValue3)
      -- Beginner: Draw a selectable RageUI menu button.
      arg32(workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9)
    end
    arg32 = arg22.disableCategories
    if arg32 then
      arg32 = pairs
      workValue16 = sortedKeys
      stringHelper3 = arg12
      workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9 = workValue16(stringHelper3)
      arg32, workValue16, stringHelper3, dataTable4 = arg32(workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9)
      for flag6, cmgCall8 in arg32, workValue16, stringHelper3, dataTable4 do
        workValue21 = textValue8
        workValue22 = cmgCall8
        textValue = textValue18
        textValue3 = false
        workValue21(workValue22, textValue, textValue3)
      end
    else
      arg32 = pairs
      workValue16 = textValue4
      workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9 = workValue16()
      arg32, workValue16, stringHelper3, dataTable4 = arg32(workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9)
      for flag6, cmgCall8 in arg32, workValue16, stringHelper3, dataTable4 do
        workValue21 = RageUI
        workValue21 = workValue21.ButtonWithStyle
        workValue22 = cmgCall2.classToName
        workValue22 = workValue22[cmgCall8]
        if not workValue22 then
          workValue22 = cmgCall8
        end
        textValue = ""
        textValue3 = {}
        textValue3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag2 = true

        -- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg13, arg23, arg33) ===
        function workValue3(arg13, arg23, arg33)
          local serverEventCall
          if arg33 then
            serverEventCall = cmgCall8
            textValue23 = serverEventCall
          end
        end
        workValue5 = RMenu
        workValue6 = workValue5
        workValue5 = workValue5.Get
        textValue7 = "cmggunstore"
        textValue9 = "category"
        workValue5, workValue6, textValue7, textValue9 = workValue5(workValue6, textValue7, textValue9)
        -- Beginner: Draw a selectable RageUI menu button.
        workValue21(workValue22, textValue, textValue3, flag2, workValue3, workValue5, workValue6, textValue7, textValue9)
      end
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local arg12, arg22
  end
  arg1(arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue19 = "cmggunstore"
  dataTable3 = "category"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue19, dataTable3)
  arg3 = true
  textValue19 = true
  dataTable3 = true

  -- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
  function numberValue7()
    local arg12, arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue
    arg12 = assert
    arg22 = textValue18
    arg12(arg22)
    arg12 = cmgCall2.CMGGunStores
    arg22 = textValue18
    arg12 = arg12[arg22]
    arg22 = pairs
    arg32 = sortedKeys
    workValue16 = arg12
    arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue = arg32(workValue16)
    arg22, arg32, workValue16, stringHelper3 = arg22(arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue)
    for dataTable4, flag6 in arg22, arg32, workValue16, stringHelper3 do
      cmgCall8 = textValue8
      workValue21 = flag6
      workValue22 = textValue18
      textValue = true
      cmgCall8(workValue21, workValue22, textValue)
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local arg12, arg22
  end
  arg1(arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue19 = "cmggunstore"
  dataTable3 = "type"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue19, dataTable3)
  arg3 = true
  textValue19 = true
  dataTable3 = true

  -- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
  function numberValue7()
    local arg12, arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2
    arg12 = cmgCall2.CMGGunStores
    arg22 = textValue18
    arg12 = arg12[arg22]
    arg12 = arg12._config
    arg22 = nil
    arg32 = arg12.useRebelTokens
    if arg32 then
      arg32 = string
      arg32 = arg32.format
      workValue16 = "%s Rebel Tokens"
      stringHelper3 = getMoneyStringFormatted
      dataTable4 = tonumber
      flag6 = dataTable.price
      dataTable4 = dataTable4(flag6)
      if not dataTable4 then
        dataTable4 = 0
      end
      stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2 = stringHelper3(dataTable4)
      arg32 = arg32(workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2)
      arg22 = arg32
    else
      arg32 = workValue2
      workValue16 = tonumber
      stringHelper3 = dataTable.price
      workValue16 = workValue16(stringHelper3)
      if not workValue16 then
        workValue16 = 0
      end
      stringHelper3 = dataTable.breakdown
      arg32 = arg32(workValue16, stringHelper3)
      arg22 = arg32
    end
    arg32 = RageUI
    arg32 = arg32.ButtonWithStyle
    workValue16 = "Purchase Weapon Body"
    stringHelper3 = arg22
    dataTable4 = {}
    dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: arg13, arg23, arg33) ===
    function cmgCall8(arg13, arg23, arg33)
      local serverEventCall
      if arg33 then
        serverEventCall = false
        flag = serverEventCall
      end
    end
    workValue21 = RMenu
    workValue22 = workValue21
    workValue21 = workValue21.Get
    textValue = "cmggunstore"
    textValue3 = "confirm"
    workValue21, workValue22, textValue, textValue3, flag2 = workValue21(workValue22, textValue, textValue3)
    -- Beginner: Draw a selectable RageUI menu button.
    arg32(workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2)
    arg32 = nil
    workValue16 = arg12.useRebelTokens
    if workValue16 then
      workValue16 = string
      workValue16 = workValue16.format
      stringHelper3 = "%s Rebel Tokens"
      dataTable4 = getMoneyStringFormatted
      flag6 = tonumber
      cmgCall8 = dataTable.ammoPrice
      flag6 = flag6(cmgCall8)
      if not flag6 then
        flag6 = 0
      end
      dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2 = dataTable4(flag6)
      workValue16 = workValue16(stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2)
      arg32 = workValue16
    else
      workValue16 = nil
      stringHelper3 = dataTable.breakdown
      if stringHelper3 then
        dataTable4 = {}
        flag6 = stringHelper3.baseAmmoPrice
        if not flag6 then
          flag6 = stringHelper3.basePrice
        end
        dataTable4.basePrice = flag6
        flag6 = stringHelper3.commissionPct
        dataTable4.commissionPct = flag6
        flag6 = stringHelper3.discounts
        dataTable4.discounts = flag6
        flag6 = stringHelper3.totalDiscountPct
        dataTable4.totalDiscountPct = flag6
        workValue16 = dataTable4
      end
      dataTable4 = workValue2
      flag6 = tonumber
      cmgCall8 = dataTable.ammoPrice
      flag6 = flag6(cmgCall8)
      if not flag6 then
        flag6 = 0
      end
      cmgCall8 = workValue16
      dataTable4 = dataTable4(flag6, cmgCall8)
      arg32 = dataTable4
    end
    workValue16 = cmgCall.weapons
    stringHelper3 = dataTable.model
    workValue16 = workValue16[stringHelper3]
    if workValue16 then
      workValue16 = cmgCall.weapons
      stringHelper3 = dataTable.model
      workValue16 = workValue16[stringHelper3]
      workValue16 = workValue16.ammo
      if "modelammo" ~= workValue16 then
        workValue16 = RageUI
        workValue16 = workValue16.ButtonWithStyle
        stringHelper3 = "Purchase Weapon Ammo (Max)"
        dataTable4 = arg32
        flag6 = {}
        flag6.RightLabel = "\226\134\146\226\134\146\226\134\146"
        cmgCall8 = true

        -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg13, arg23, arg33) ===
        function workValue21(arg13, arg23, arg33)
          local serverEventCall
          if arg33 then
            serverEventCall = true
            flag = serverEventCall
          end
        end
        workValue22 = RMenu
        textValue = workValue22
        workValue22 = workValue22.Get
        textValue3 = "cmggunstore"
        flag2 = "confirm"
        workValue22, textValue, textValue3, flag2 = workValue22(textValue, textValue3, flag2)
        workValue16(stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22, textValue, textValue3, flag2)
      end
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local arg12, arg22
  end
  arg1(arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue19 = "cmggunstore"
  dataTable3 = "confirm"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue19, dataTable3)
  arg3 = true
  textValue19 = true
  dataTable3 = true

  -- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
  function numberValue7()
    local arg12, arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Yes"
    arg32 = ""
    workValue16 = {}
    workValue16.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg13, arg23, arg33) ===
    function dataTable4(arg13, arg23, arg33)
      local serverEventCall, textValue21, textValue24, modelValue, workValue19
      if arg33 then
        serverEventCall = TriggerServerEvent
        textValue21 = "7fa6c51dd3"
        textValue24 = dataTable.weaponShop
        modelValue = dataTable.model
        workValue19 = flag
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7fa6c51dd3".
        serverEventCall(textValue21, textValue24, modelValue, workValue19)
      end
    end
    flag6 = RMenu
    cmgCall8 = flag6
    flag6 = flag6.Get
    workValue21 = "cmggunstore"
    workValue22 = "confirm"
    flag6, cmgCall8, workValue21, workValue22 = flag6(cmgCall8, workValue21, workValue22)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "No"
    arg32 = ""
    workValue16 = {}
    workValue16.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg13, arg23, arg33) ===
    function dataTable4(arg13, arg23, arg33)
      local serverEventCall
      if arg33 then
        serverEventCall = RageUI
        serverEventCall = serverEventCall.GoBack
        serverEventCall()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue16, stringHelper3, dataTable4)
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local arg12, arg22
  end
  arg1(arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue19 = "cmggunstore"
  dataTable3 = "vip_melee"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue19, dataTable3)
  arg3 = true
  textValue19 = true
  dataTable3 = true

  -- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
  function numberValue7()
    local arg12, arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22
    arg12 = pairs
    arg22 = sortedKeys
    arg32 = cmgCall2.CMGGunStores
    arg32 = arg32.Legion_VIP
    arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22 = arg22(arg32)
    arg12, arg22, arg32, workValue16 = arg12(arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22)
    for stringHelper3, dataTable4 in arg12, arg22, arg32, workValue16 do
      flag6 = textValue8
      cmgCall8 = dataTable4
      workValue21 = "Legion_VIP"
      workValue22 = false
      flag6(cmgCall8, workValue21, workValue22)
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local arg12, arg22
  end
  arg1(arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue19 = "cmggunstore"
  dataTable3 = "vip_smallarms"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue19, dataTable3)
  arg3 = true
  textValue19 = true
  dataTable3 = true

  -- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
  function numberValue7()
    local arg12, arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22
    arg12 = pairs
    arg22 = sortedKeys
    arg32 = cmgCall2.CMGGunStores
    arg32 = arg32.SmallArms_VIP
    arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22 = arg22(arg32)
    arg12, arg22, arg32, workValue16 = arg12(arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22)
    for stringHelper3, dataTable4 in arg12, arg22, arg32, workValue16 do
      flag6 = textValue8
      cmgCall8 = dataTable4
      workValue21 = "SmallArms_VIP"
      workValue22 = false
      flag6(cmgCall8, workValue21, workValue22)
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local arg12, arg22
  end
  arg1(arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue19 = "cmggunstore"
  dataTable3 = "vip_largearms"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue19, dataTable3)
  arg3 = true
  textValue19 = true
  dataTable3 = true

  -- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
  function numberValue7()
    local arg12, arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22
    arg12 = pairs
    arg22 = sortedKeys
    arg32 = cmgCall2.CMGGunStores
    arg32 = arg32.LargeArms_VIP
    arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22 = arg22(arg32)
    arg12, arg22, arg32, workValue16 = arg12(arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22)
    for stringHelper3, dataTable4 in arg12, arg22, arg32, workValue16 do
      flag6 = textValue8
      cmgCall8 = dataTable4
      workValue21 = "LargeArms_VIP"
      workValue22 = false
      flag6(cmgCall8, workValue21, workValue22)
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local arg12, arg22
  end
  arg1(arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue19 = "cmggunstore"
  dataTable3 = "largearms_rebel"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue19, dataTable3)
  arg3 = true
  textValue19 = true
  dataTable3 = true

  -- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
  function numberValue7()
    local arg12, arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22
    arg12 = pairs
    arg22 = sortedKeys
    arg32 = cmgCall2.CMGGunStores
    arg32 = arg32.LargeArms_Rebel
    arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22 = arg22(arg32)
    arg12, arg22, arg32, workValue16 = arg12(arg22, arg32, workValue16, stringHelper3, dataTable4, flag6, cmgCall8, workValue21, workValue22)
    for stringHelper3, dataTable4 in arg12, arg22, arg32, workValue16 do
      flag6 = textValue8
      cmgCall8 = dataTable4
      workValue21 = "LargeArms_Rebel"
      workValue22 = false
      flag6(cmgCall8, workValue21, workValue22)
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local arg12, arg22
  end
  arg1(arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4)
end
textValue10(rageUiCall2, rageUiCall3, rageUiCall4, textValue11)

-- === HELPER FUNCTION (decompiler name: textValue10; parameters: arg1, arg2) ===
function textValue10(arg1, arg2)
  local arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2
  textValue18 = arg1
  vector3Builder2 = arg2
  arg3 = cmgCall2.CMGGunStores
  textValue19 = textValue18
  arg3 = arg3[textValue19]
  arg3 = arg3._config
  arg3 = arg3.menuTexture
  if not arg3 then
    arg3 = "cmg_gunstoreui"
  end
  textValue19 = RMenu
  dataTable3 = textValue19
  textValue19 = textValue19.Get
  numberValue7 = "cmggunstore"
  stringHelper4 = "mainmenu"
  -- Beginner: result below is menu.
  textValue19 = textValue19(dataTable3, numberValue7, stringHelper4)
  dataTable3 = textValue19
  textValue19 = textValue19.SetSpriteBanner
  numberValue7 = arg3
  stringHelper4 = arg3
  textValue19(dataTable3, numberValue7, stringHelper4)
  textValue19 = RageUI
  textValue19 = textValue19.Visible
  dataTable3 = RMenu
  numberValue7 = dataTable3
  dataTable3 = dataTable3.Get
  stringHelper4 = "cmggunstore"
  tableHelper2 = "mainmenu"
  -- Beginner: result below is menu.
  dataTable3 = dataTable3(numberValue7, stringHelper4, tableHelper2)
  numberValue7 = true
  textValue19(dataTable3, numberValue7)
  textValue19 = TriggerServerEvent
  dataTable3 = "da3d489217"
  numberValue7 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3d489217".
  textValue19(dataTable3, numberValue7)
end

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: none) ===
function rageUiCall2()
  local arg1, arg2
  arg1 = nil
  textValue18 = arg1
  arg1 = ""
  textValue26 = arg1
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
end

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: none) ===
function rageUiCall3()
  local arg1, arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2
  arg1 = textValue25
  arg2 = textValue26
  if arg1 == arg2 then
    return
  end
  arg1 = textValue26
  textValue25 = arg1
  arg1 = cmgCall2.CMGGunStores
  arg2 = textValue18
  arg1 = arg1[arg2]
  if arg1 then
    arg2 = flag7
    if not arg2 then
      goto flow_label_17
    end
  end
  return
  ::flow_label_17::
  arg2 = textValue26
  arg2 = arg1[arg2]
  if not arg2 then
    return
  end
  arg3 = arg2[5]
  if not arg3 or "" == arg3 then
    return
  end
  textValue19 = GetHashKey
  dataTable3 = arg3
  -- Beginner: result below is hash.
  textValue19 = textValue19(dataTable3)
  dataTable3 = IsModelValid
  numberValue7 = textValue19
  dataTable3 = dataTable3(numberValue7)
  if not dataTable3 then
    return
  end
  dataTable3 = RequestModel
  numberValue7 = textValue19
  dataTable3(numberValue7)
  dataTable3 = HasModelLoaded
  numberValue7 = textValue19
  dataTable3 = dataTable3(numberValue7)
  if not dataTable3 then
    return
  end
  dataTable3 = CreateObject
  numberValue7 = textValue19
  stringHelper4 = vector3Builder2.x
  tableHelper2 = vector3Builder2.y
  workValue20 = vector3Builder2.z
  workValue20 = workValue20 + 1.0
  stringHelper5 = false
  stringHelper = false
  textValue2 = false
  -- Beginner: result below is objectEntity.
  dataTable3 = dataTable3(numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2)
  numberValue7 = SetModelAsNoLongerNeeded
  stringHelper4 = textValue19
  numberValue7(stringHelper4)
  if 0 == dataTable3 then
    return
  end
  numberValue7 = FreezeEntityPosition
  stringHelper4 = dataTable3
  tableHelper2 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  numberValue7(stringHelper4, tableHelper2)
  numberValue7 = SetEntityCollision
  stringHelper4 = dataTable3
  tableHelper2 = false
  workValue20 = false
  numberValue7(stringHelper4, tableHelper2, workValue20)
  numberValue7 = true
  flag7 = numberValue7
  numberValue7 = Citizen
  numberValue7 = numberValue7.CreateThread

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local arg12, arg22, arg32, workValue16, stringHelper3
    arg12 = textValue25
    while true do
      arg22 = textValue25
      if arg22 ~= arg12 then
        break
      end
      arg22 = DoesEntityExist
      arg32 = dataTable3
      arg22 = arg22(arg32)
      if not arg22 then
        break
      end
      arg22 = SetEntityHeading
      arg32 = dataTable3
      workValue16 = GetEntityHeading
      stringHelper3 = dataTable3
      -- Beginner: result below is heading.
      workValue16 = workValue16(stringHelper3)
      workValue16 = workValue16 + 1
      -- Beginner: Change the direction an entity is facing.
      arg22(arg32, workValue16)
      arg22 = Wait
      arg32 = 0
      arg22(arg32)
    end
    arg22 = DeleteEntity
    arg32 = dataTable3
    -- Beginner: Delete a GTA entity.
    arg22(arg32)
    arg22 = false
    flag7 = arg22
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue7(stringHelper4)
end
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.createThreadOnTick
textValue11 = rageUiCall3
textValue12 = "Weapon Preview"
-- Beginner: Run a helper every game frame while this script is active.
rageUiCall4(textValue11, textValue12)

-- === HELPER FUNCTION (decompiler name: rageUiCall4; parameters: none) ===
function rageUiCall4()
  local arg1, arg2, arg3, textValue19, dataTable3
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "ludde.whitelisted"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = GetSelectedPedWeapon
    arg3 = arg1
    -- Beginner: result below is weaponHash.
    arg2 = arg2(arg3)
    if -1337195216 == arg2 then
      arg2 = CMG
      arg2 = arg2.setWeapon
      arg3 = arg1
      textValue19 = -1569615261
      dataTable3 = true
      arg2(arg3, textValue19, dataTable3)
    end
  end
end
textValue11 = CMG
textValue11 = textValue11.createThreadOnTick
textValue12 = rageUiCall4
textValue14 = "Disable MP5 Taser"
-- Beginner: Run a helper every game frame while this script is active.
textValue11(textValue12, textValue14)
textValue11 = Citizen
textValue11 = textValue11.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: none) ===
function textValue12()
  local arg1, arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6
  arg1 = pairs
  arg2 = cmgCall2.CMGGunStores
  arg1, arg2, arg3, textValue19 = arg1(arg2)
  for dataTable3, numberValue7 in arg1, arg2, arg3, textValue19 do
    stringHelper4 = numberValue7._config
    tableHelper2 = pairs
    workValue20 = stringHelper4[1]
    tableHelper2, workValue20, stringHelper5, stringHelper = tableHelper2(workValue20)
    for textValue2, workValue in tableHelper2, workValue20, stringHelper5, stringHelper do
      tableHelper = CMG
      tableHelper = tableHelper.createGunStore
      workValue4 = string
      workValue4 = workValue4.format
      stringHelper2 = "Static %s"
      textValue6 = textValue2
      workValue4 = workValue4(stringHelper2, textValue6)
      stringHelper2 = dataTable3
      textValue6 = workValue
      tableHelper(workValue4, stringHelper2, textValue6)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue11(textValue12)
textValue11 = {}
textValue12 = CMG

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg1, arg2, arg3) ===
function textValue14(arg1, arg2, arg3)
  local textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper

  -- === HELPER FUNCTION (decompiler name: textValue19; parameters: none) ===
  function textValue19()
    local arg12, arg22, arg32
    arg12 = GetVehiclePedIsIn
    arg22 = CMG
    arg22 = arg22.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg22 = arg22()
    arg32 = false
    -- Beginner: result below is currentVehicle.
    arg12 = arg12(arg22, arg32)
    if 0 == arg12 then
      arg12 = textValue10
      arg22 = arg2
      arg32 = arg3
      arg12(arg22, arg32)
    else
      arg12 = tCMG
      arg12 = arg12.notify
      arg22 = "~r~Exit your vehicle to access the gun store."
      -- Beginner: Show a notification to the player.
      arg12(arg22)
    end
  end

  -- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
  function dataTable3()
    local arg12, arg22
    arg12 = rageUiCall2
    arg12()
  end
  numberValue7 = string
  numberValue7 = numberValue7.format
  stringHelper4 = "gunstore_%s_%s"
  tableHelper2 = arg2
  workValue20 = arg1
  numberValue7 = numberValue7(stringHelper4, tableHelper2, workValue20)
  stringHelper4 = CMG
  stringHelper4 = stringHelper4.createArea
  tableHelper2 = numberValue7
  workValue20 = arg3
  stringHelper5 = 1.5
  stringHelper = 6
  textValue2 = textValue19
  workValue = dataTable3

  -- === HELPER FUNCTION: tableHelper() ===
  function tableHelper()
    local arg12, arg22
  end
  -- Beginner: Create an interaction area around a world position.
  stringHelper4(tableHelper2, workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper)
  stringHelper4 = tCMG
  stringHelper4 = stringHelper4.addPropMarker
  tableHelper2 = "bzzz_marker_gun_red_anim"
  workValue20 = arg3.x
  stringHelper5 = arg3.y
  stringHelper = arg3.z
  textValue2 = 20.0
  stringHelper4 = stringHelper4(tableHelper2, workValue20, stringHelper5, stringHelper, textValue2)
  tableHelper2 = textValue11
  workValue20 = {}
  workValue20.area = numberValue7
  workValue20.marker = stringHelper4
  tableHelper2[arg1] = workValue20
  return arg1
end
textValue12.createGunStore = textValue14
textValue12 = CMG

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg1) ===
function textValue14(arg1)
  local arg2, arg3, textValue19
  arg2 = textValue11
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = tCMG
    arg3 = arg3.removeMarker
    textValue19 = arg2.marker
    arg3(textValue19)
    arg3 = tCMG
    arg3 = arg3.removeArea
    textValue19 = arg2.area
    arg3(textValue19)
    arg3 = textValue11
    arg3[arg1] = nil
  end
end
textValue12.deleteGunStore = textValue14
textValue12 = RMenu
textValue12 = textValue12.Add
textValue14 = "gunstore"
rageUiCall5 = "inactivity"
rageUiCall6 = RageUI
rageUiCall6 = rageUiCall6.CreateMenu
textValue16 = ""
textValue17 = "Weapon Inactivity"
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuWidth
rageUiCall7 = rageUiCall7()
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.getRageUIMenuHeight
rageUiCall8 = rageUiCall8()
flag3 = "cmg_gunstoreui"
flag4 = "cmg_gunstoreui"
rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6 = rageUiCall6(textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4)
textValue12(textValue14, rageUiCall5, rageUiCall6, textValue16, textValue17, rageUiCall7, rageUiCall8, flag3, flag4, numberValue, workValue12, workValue13, workValue14, workValue15, cmgCall4, cmgCall5, iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6)
textValue12 = nil
textValue14 = nil
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateWhile
rageUiCall6 = 1.0
textValue16 = RMenu
textValue17 = textValue16
textValue16 = textValue16.Get
rageUiCall7 = "gunstore"
rageUiCall8 = "inactivity"
-- Beginner: result below is menu.
textValue16 = textValue16(textValue17, rageUiCall7, rageUiCall8)
textValue17 = nil

-- === HELPER FUNCTION (decompiler name: rageUiCall7; parameters: none) ===
function rageUiCall7()
  local arg1, arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue19 = "gunstore"
  dataTable3 = "inactivity"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue19, dataTable3)
  arg3 = true
  textValue19 = true
  dataTable3 = true

  -- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
  function numberValue7()
    local arg12, arg22, arg32, workValue16, stringHelper3, dataTable4
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~The weapon '"
    arg32 = textValue12
    workValue16 = "' is inactive."
    arg22 = arg22 .. arg32 .. workValue16
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~This occurs to weapon which aren't used in 4 months."
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~This improves load times and increases performance."
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~To make the weapon active click the button below."
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "~y~The weapon will be spawnable from the next restart."
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~g~Activate Weapon"
    arg32 = ""
    workValue16 = {}
    workValue16.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg13, arg23, arg33) ===
    function dataTable4(arg13, arg23, arg33)
      local serverEventCall, textValue21, textValue24
      if arg33 then
        serverEventCall = TriggerServerEvent
        textValue21 = "5137044dad"
        textValue24 = textValue14
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5137044dad".
        serverEventCall(textValue21, textValue24)
        serverEventCall = RageUI
        serverEventCall = serverEventCall.CloseAll
        serverEventCall()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, workValue16, stringHelper3, dataTable4)
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local arg12, arg22
  end
  arg1(arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4)
end
rageUiCall5(rageUiCall6, textValue16, textValue17, rageUiCall7)
rageUiCall5 = RegisterNetEvent
rageUiCall6 = "32de57e1f2"
-- Beginner: this function handles network event "32de57e1f2".

-- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg1, arg2) ===
function textValue16(arg1, arg2)
  local arg3, textValue19, dataTable3, numberValue7, stringHelper4
  textValue12 = arg1
  textValue14 = arg2
  arg3 = RageUI
  arg3 = arg3.Visible
  textValue19 = RMenu
  dataTable3 = textValue19
  textValue19 = textValue19.Get
  numberValue7 = "gunstore"
  stringHelper4 = "inactivity"
  -- Beginner: result below is menu.
  textValue19 = textValue19(dataTable3, numberValue7, stringHelper4)
  dataTable3 = true
  arg3(textValue19, dataTable3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "32de57e1f2".
rageUiCall5(rageUiCall6, textValue16)
rageUiCall5 = RegisterNetEvent
rageUiCall6 = "96bacf0094"
-- Beginner: this function handles network event "96bacf0094".

-- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg1) ===
function textValue16(arg1)
  local arg2
  dataTable5 = arg1
end
rageUiCall5(rageUiCall6, textValue16)
rageUiCall5 = CMG
-- Beginner: this function handles network event "96bacf0094".

-- === HELPER FUNCTION (decompiler name: rageUiCall6; parameters: arg1, arg2, arg3) ===
function rageUiCall6(arg1, arg2, arg3)
  local textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2
  textValue19 = 0
  dataTable3 = ""
  numberValue7 = cmgCall2.CMGGunStores
  numberValue7 = numberValue7[arg1]
  if not numberValue7 then
    return
  end
  stringHelper4 = numberValue7[arg2]
  if not stringHelper4 then
    return
  end
  if textValue19 and dataTable3 then
    tableHelper2 = 1
    workValue20 = arg3
    stringHelper5 = 1
    for stringHelper = tableHelper2, workValue20, stringHelper5 do
      textValue2 = TriggerServerEvent
      workValue = "7fa6c51dd3"
      tableHelper = arg1
      workValue4 = arg2
      stringHelper2 = false
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7fa6c51dd3".
      textValue2(workValue, tableHelper, workValue4, stringHelper2)
    end
  end
end
rageUiCall5.purchaseFromGunstore = rageUiCall6

-- === HELPER FUNCTION (decompiler name: rageUiCall5; parameters: arg1) ===
function rageUiCall5(arg1)
  local arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper
  arg2 = FreezeEntityPosition
  arg3 = arg1
  textValue19 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, textValue19)
  arg2 = SetEntityProofs
  arg3 = arg1
  textValue19 = true
  dataTable3 = true
  numberValue7 = true
  stringHelper4 = true
  tableHelper2 = true
  workValue20 = true
  stringHelper5 = true
  stringHelper = true
  arg2(arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper)
  arg2 = SetEntityCanBeDamaged
  arg3 = arg1
  textValue19 = false
  arg2(arg3, textValue19)
  arg2 = SetEntityLodDist
  arg3 = arg1
  textValue19 = 225
  arg2(arg3, textValue19)
end

-- === HELPER FUNCTION (decompiler name: rageUiCall6; parameters: arg1) ===
function rageUiCall6(arg1)
  local arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5
  arg1.isActive = true
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = arg1.pedModel
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = arg1.vehicleModel
  arg2(arg3)
  arg2 = arg1.isActive
  if arg2 then
    arg2 = arg1.ped
    if arg2 then
      arg2 = CreatePed
      arg3 = 0
      textValue19 = arg1.pedModel
      dataTable3 = arg1.ped
      dataTable3 = dataTable3.x
      numberValue7 = arg1.ped
      numberValue7 = numberValue7.y
      stringHelper4 = arg1.ped
      stringHelper4 = stringHelper4.z
      stringHelper4 = stringHelper4 - 1.0
      tableHelper2 = arg1.ped
      tableHelper2 = tableHelper2.w
      workValue20 = false
      stringHelper5 = false
      -- Beginner: result below is pedEntity.
      arg2 = arg2(arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5)
      arg1.pedHandle = arg2
      arg2 = rageUiCall5
      arg3 = arg1.pedHandle
      arg2(arg3)
      arg2 = SetBlockingOfNonTemporaryEvents
      arg3 = arg1.pedHandle
      textValue19 = true
      arg2(arg3, textValue19)
    end
    arg2 = arg1.van
    if arg2 then
      arg2 = CreateVehicle
      arg3 = arg1.vehicleModel
      textValue19 = arg1.van
      textValue19 = textValue19.x
      dataTable3 = arg1.van
      dataTable3 = dataTable3.y
      numberValue7 = arg1.van
      numberValue7 = numberValue7.z
      stringHelper4 = arg1.van
      stringHelper4 = stringHelper4.w
      tableHelper2 = false
      workValue20 = false
      -- Beginner: result below is vehicleEntity.
      arg2 = arg2(arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20)
      arg1.vehicleHandle = arg2
      arg2 = CMG
      arg2 = arg2.initLocalVehicle
      arg3 = arg1.vehicleHandle
      arg2(arg3)
      arg2 = rageUiCall5
      arg3 = arg1.vehicleHandle
      arg2(arg3)
      arg2 = SetVehicleOnGroundProperly
      arg3 = arg1.vehicleHandle
      arg2(arg3)
      arg2 = SetVehicleDoorOpen
      arg3 = arg1.vehicleHandle
      textValue19 = 2
      dataTable3 = false
      numberValue7 = true
      arg2(arg3, textValue19, dataTable3, numberValue7)
      arg2 = SetVehicleDoorOpen
      arg3 = arg1.vehicleHandle
      textValue19 = 3
      dataTable3 = false
      numberValue7 = true
      arg2(arg3, textValue19, dataTable3, numberValue7)
      arg2 = SetVehicleDoorsLocked
      arg3 = arg1.vehicleHandle
      textValue19 = 2
      arg2(arg3, textValue19)
      arg2 = SetVehicleDoorsLockedForAllPlayers
      arg3 = arg1.vehicleHandle
      textValue19 = true
      arg2(arg3, textValue19)
    end
  end
  arg2 = SetModelAsNoLongerNeeded
  arg3 = arg1.pedModel
  arg2(arg3)
  arg2 = SetModelAsNoLongerNeeded
  arg3 = arg1.vehicleModel
  arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg1) ===
function textValue16(arg1)
  local arg2, arg3
  arg1.isActive = false
  arg2 = arg1.pedHandle
  if arg2 then
    arg2 = DeleteEntity
    arg3 = arg1.pedHandle
    -- Beginner: Delete a GTA entity.
    arg2(arg3)
    arg1.pedHandle = nil
  end
  arg2 = arg1.vehicleHandle
  if arg2 then
    arg2 = DeleteEntity
    arg3 = arg1.vehicleHandle
    arg2(arg3)
    arg1.vehicleHandle = nil
  end
end
textValue17 = nil
rageUiCall7 = 0.0
rageUiCall8 = 0.0
flag3 = false
flag4 = false
numberValue = 0

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: arg1) ===
function workValue12(arg1)
  local arg2, arg3, textValue19
  if 0 == arg1 or -1569615261 == arg1 or 1953687840 == arg1 then
    arg2 = true
    return arg2
  end
  arg2 = cmgCall.weaponHashToModels
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = cmgCall.weapons
    arg3 = arg3[arg2]
    if arg3 then
      textValue19 = arg3.class
      if "Pistol" == textValue19 then
        textValue19 = true
        return textValue19
      end
    end
    textValue19 = false
    return textValue19
  end
  arg3 = GetWeapontypeGroup
  textValue19 = arg1
  arg3 = arg3(textValue19)
  arg3 = 416676503 == arg3
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5
  arg1 = CMG
  arg1 = arg1.getPlayerBucket
  arg1 = arg1()
  if 0 ~= arg1 then
    arg1 = false
    return arg1
  end
  arg1 = textValue17
  if arg1 then
    arg1 = rageUiCall7
    if not (arg1 <= 0.0) then
      goto flow_label_16
    end
  end
  arg1 = false
  return arg1
  ::flow_label_16::
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = pairs
  arg3 = textValue17
  arg2, arg3, textValue19, dataTable3 = arg2(arg3)
  for numberValue7, stringHelper4 in arg2, arg3, textValue19, dataTable3 do
    tableHelper2 = arg1.xy
    workValue20 = stringHelper4.xy
    tableHelper2 = tableHelper2 - workValue20
    tableHelper2 = #tableHelper2
    workValue20 = rageUiCall7
    if tableHelper2 <= workValue20 then
      tableHelper2 = math
      tableHelper2 = tableHelper2.abs
      workValue20 = arg1.z
      stringHelper5 = stringHelper4.z
      workValue20 = workValue20 - stringHelper5
      tableHelper2 = tableHelper2(workValue20)
      workValue20 = rageUiCall8
      if tableHelper2 <= workValue20 then
        tableHelper2 = true
        return tableHelper2
      end
    end
  end
  arg2 = false
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2
  arg1 = workValue13
  arg1 = arg1()
  if not arg1 then
    arg2 = false
    flag4 = arg2
    return
  end
  arg2 = flag4
  if not arg2 then
    arg2 = true
    flag4 = arg2
    arg2 = tCMG
    arg2 = arg2.notify
    arg3 = "~b~Pistol only zone~s~ - only pistols may be used in this area."
    -- Beginner: Show a notification to the player.
    arg2(arg3)
  end
  arg2 = CMG
  arg2 = arg2.inEvent
  arg2 = arg2()
  if arg2 then
    return
  end
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  textValue19 = GetSelectedPedWeapon
  dataTable3 = arg2
  -- Beginner: result below is weaponHash.
  textValue19 = textValue19(dataTable3)
  if -1569615261 == textValue19 then
    return
  end
  dataTable3 = workValue12
  numberValue7 = textValue19
  dataTable3 = dataTable3(numberValue7)
  if dataTable3 then
    return
  end
  dataTable3 = DisablePlayerFiring
  numberValue7 = arg3
  stringHelper4 = true
  dataTable3(numberValue7, stringHelper4)
  dataTable3 = DisableControlAction
  numberValue7 = 0
  stringHelper4 = 24
  tableHelper2 = true
  dataTable3(numberValue7, stringHelper4, tableHelper2)
  dataTable3 = DisableControlAction
  numberValue7 = 0
  stringHelper4 = 257
  tableHelper2 = true
  dataTable3(numberValue7, stringHelper4, tableHelper2)
  dataTable3 = DisableControlAction
  numberValue7 = 0
  stringHelper4 = 263
  tableHelper2 = true
  dataTable3(numberValue7, stringHelper4, tableHelper2)
  dataTable3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  dataTable3 = dataTable3()
  numberValue7 = numberValue
  dataTable3 = dataTable3 - numberValue7
  numberValue7 = 3000
  if dataTable3 > numberValue7 then
    dataTable3 = tCMG
    dataTable3 = dataTable3.notify
    numberValue7 = "~r~Only pistols can be used in this area!"
    -- Beginner: Show a notification to the player.
    dataTable3(numberValue7)
    dataTable3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    dataTable3 = dataTable3()
    numberValue = dataTable3
  end
  dataTable3 = CMG
  dataTable3 = dataTable3.setWeapon
  numberValue7 = arg2
  stringHelper4 = -1569615261
  tableHelper2 = true
  dataTable3(numberValue7, stringHelper4, tableHelper2)
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2
  arg2 = {}
  textValue17 = arg2
  arg2 = cmgCall3.pistolZone
  arg2 = arg2.radius
  rageUiCall7 = arg2
  arg2 = cmgCall3.pistolZone
  arg2 = arg2.height
  rageUiCall8 = arg2
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, textValue19, dataTable3 = arg2(arg3)
  for numberValue7, stringHelper4 in arg2, arg3, textValue19, dataTable3 do
    tableHelper2 = stringHelper4.pistolZone
    if tableHelper2 then
      tableHelper2 = textValue17
      tableHelper2 = #tableHelper2
      workValue20 = tableHelper2 + 1
      tableHelper2 = textValue17
      stringHelper5 = stringHelper4.shop
      tableHelper2[workValue20] = stringHelper5
      tableHelper2 = AddBlipForRadius
      workValue20 = stringHelper4.shop
      workValue20 = workValue20.x
      stringHelper5 = stringHelper4.shop
      stringHelper5 = stringHelper5.y
      stringHelper = stringHelper4.shop
      stringHelper = stringHelper.z
      textValue2 = rageUiCall7
      -- Beginner: result below is blipHandle.
      tableHelper2 = tableHelper2(workValue20, stringHelper5, stringHelper, textValue2)
      workValue20 = SetBlipColour
      stringHelper5 = tableHelper2
      stringHelper = 5
      workValue20(stringHelper5, stringHelper)
      workValue20 = SetBlipAlpha
      stringHelper5 = tableHelper2
      stringHelper = 180
      workValue20(stringHelper5, stringHelper)
      workValue20 = SetBlipDisplay
      stringHelper5 = tableHelper2
      stringHelper = 5
      workValue20(stringHelper5, stringHelper)
      workValue20 = CMG
      workValue20 = workValue20.addBlipContext
      stringHelper5 = "Civilian"
      stringHelper = tableHelper2
      workValue20(stringHelper5, stringHelper)
    end
  end
  arg2 = textValue17
  arg2 = #arg2
  if arg2 > 0 then
    arg2 = flag3
    if not arg2 then
      arg2 = true
      flag3 = arg2
      arg2 = CMG
      arg2 = arg2.createThreadOnTick
      arg3 = workValue14
      textValue19 = "Small Arms Pistol Zone"
      -- Beginner: Run a helper every game frame while this script is active.
      arg2(arg3, textValue19)
    end
  end
end
cmgCall4 = RegisterNetEvent
cmgCall5 = "1e8e401746"
-- Beginner: this function handles network event "1e8e401746".

-- === HELPER FUNCTION: iterator(arg1) ===
function iterator(arg1)
  local arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7
  arg2 = nil
  while not arg2 do
    arg3 = cmgCall2.CMGGunStores
    arg2 = arg3.SmallArmsDealer
    arg3 = Wait
    textValue19 = 0
    arg3(textValue19)
  end
  arg3 = arg2._config
  if not arg3 then
    return
  end
  textValue19 = pairs
  dataTable3 = arg1
  textValue19, dataTable3, numberValue7, stringHelper4 = textValue19(dataTable3)
  for tableHelper2, workValue20 in textValue19, dataTable3, numberValue7, stringHelper4 do
    stringHelper5 = CMG
    stringHelper5 = stringHelper5.createGunStore
    stringHelper = "Small Arms "
    textValue2 = tostring
    workValue = tableHelper2
    textValue2 = textValue2(workValue)
    stringHelper = stringHelper .. textValue2
    textValue2 = "SmallArmsDealer"
    workValue = workValue20.shop
    tableHelper = vector3
    workValue4 = 0.0
    stringHelper2 = 0.0
    textValue6 = 0.99
    tableHelper = tableHelper(workValue4, stringHelper2, textValue6)
    workValue = workValue - tableHelper
    stringHelper5(stringHelper, textValue2, workValue)
    stringHelper5 = CMG
    stringHelper5 = stringHelper5.createArea
    stringHelper = "small_arms_"
    textValue2 = tostring
    workValue = tableHelper2
    textValue2 = textValue2(workValue)
    stringHelper = stringHelper .. textValue2
    textValue2 = workValue20.shop
    workValue = cmgCall3.pistolZone
    workValue = workValue.radius
    tableHelper = cmgCall3.pistolZone
    tableHelper = tableHelper.height
    workValue4 = rageUiCall6
    stringHelper2 = textValue16

    -- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
    function textValue6()
      local arg12, arg22
    end
    workValue7 = workValue20
    -- Beginner: Create an interaction area around a world position.
    stringHelper5(stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2, textValue6, workValue7)
    stringHelper5 = tCMG
    stringHelper5 = stringHelper5.addBlip
    stringHelper = workValue20.shop
    stringHelper = stringHelper.x
    textValue2 = workValue20.shop
    textValue2 = textValue2.y
    workValue = workValue20.shop
    workValue = workValue.z
    tableHelper = arg3[2]
    workValue4 = arg3[3]
    stringHelper2 = arg3[4]
    stringHelper5 = stringHelper5(stringHelper, textValue2, workValue, tableHelper, workValue4, stringHelper2)
    stringHelper = CMG
    stringHelper = stringHelper.addBlipContext
    textValue2 = "Civilian"
    workValue = stringHelper5
    stringHelper(textValue2, workValue)
    stringHelper = workValue20.van
    if stringHelper then
      stringHelper = AddBlipForRadius
      textValue2 = workValue20.shop
      textValue2 = textValue2.x
      workValue = workValue20.shop
      workValue = workValue.y
      tableHelper = workValue20.shop
      tableHelper = tableHelper.z
      workValue4 = 20.0
      -- Beginner: result below is blipHandle.
      stringHelper = stringHelper(textValue2, workValue, tableHelper, workValue4)
      textValue2 = SetBlipColour
      workValue = stringHelper
      tableHelper = 5
      textValue2(workValue, tableHelper)
      textValue2 = SetBlipAlpha
      workValue = stringHelper
      tableHelper = 180
      textValue2(workValue, tableHelper)
      textValue2 = CMG
      textValue2 = textValue2.addBlipContext
      workValue = "Civilian"
      tableHelper = stringHelper
      textValue2(workValue, tableHelper)
    end
  end
  dataTable2 = arg1
  textValue19 = workValue15
  dataTable3 = arg1
  textValue19(dataTable3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1e8e401746".
cmgCall4(cmgCall5, iterator)
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20
  arg1 = {}
  arg2 = pairs
  arg3 = dataTable2
  arg2, arg3, textValue19, dataTable3 = arg2(arg3)
  for numberValue7, stringHelper4 in arg2, arg3, textValue19, dataTable3 do
    tableHelper2 = stringHelper4.shop
    if tableHelper2 then
      tableHelper2 = #arg1
      tableHelper2 = tableHelper2 + 1
      workValue20 = stringHelper4.shop
      arg1[tableHelper2] = workValue20
    end
  end
  return arg1
end
cmgCall4.getSmallArmsShopCoordsForHudWaypoint = cmgCall5

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1) ===
function cmgCall4(arg1)
  local arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2, workValue
  arg2 = CMG
  arg2 = arg2.loadAnimDict
  arg3 = "mp_common"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg2(arg3)
  arg2 = TaskPlayAnim
  arg3 = arg1
  textValue19 = "mp_common"
  dataTable3 = "givetake1_a"
  numberValue7 = 8.0
  stringHelper4 = 8.0
  tableHelper2 = 2000
  workValue20 = 1
  stringHelper5 = 0
  stringHelper = false
  textValue2 = false
  workValue = false
  -- Beginner: Play an animation on a ped.
  arg2(arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2, workValue)
  arg2 = RemoveAnimDict
  arg3 = "mp_common"
  arg2(arg3)
end
cmgCall5 = RegisterNetEvent
iterator = "efb8051732"
-- Beginner: this function handles network event "efb8051732".

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: arg1) ===
function vector3Builder(arg1)
  local arg2, arg3, textValue19, dataTable3, numberValue7, stringHelper4, tableHelper2, workValue20, stringHelper5, stringHelper, textValue2, workValue, tableHelper
  arg2 = GetPlayerFromServerId
  arg3 = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(arg3)
  if -1 == arg2 then
    return
  end
  arg3 = GetPlayerPed
  textValue19 = arg2
  -- Beginner: result below is playerPed.
  arg3 = arg3(textValue19)
  if 0 == arg3 then
    return
  end
  textValue19 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  textValue19 = textValue19()
  if arg3 == textValue19 then
    dataTable3 = cmgCall4
    numberValue7 = textValue19
    dataTable3(numberValue7)
  end
  dataTable3 = GetEntityCoords
  numberValue7 = arg3
  stringHelper4 = true
  -- Beginner: result below is entityCoords.
  dataTable3 = dataTable3(numberValue7, stringHelper4)
  numberValue7 = pairs
  stringHelper4 = dataTable2
  numberValue7, stringHelper4, tableHelper2, workValue20 = numberValue7(stringHelper4)
  for stringHelper5, stringHelper in numberValue7, stringHelper4, tableHelper2, workValue20 do
    textValue2 = stringHelper.pedHandle
    if textValue2 then
      textValue2 = GetEntityCoords
      workValue = stringHelper.pedHandle
      tableHelper = true
      -- Beginner: result below is entityCoords.
      textValue2 = textValue2(workValue, tableHelper)
      workValue = dataTable3 - textValue2
      workValue = #workValue
      if workValue < 10.0 then
        workValue = cmgCall4
        tableHelper = stringHelper.pedHandle
        workValue(tableHelper)
        break
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "efb8051732".
cmgCall5(iterator, vector3Builder)
cmgCall5 = CMG
cmgCall5 = cmgCall5.createDynamicPed
iterator = -1275859404
vector3Builder = vector3
numberValue2 = 1444.9714355469
flag5 = 6333.5341796875
numberValue3 = 23.854248046875
vector3Builder = vector3Builder(numberValue2, flag5, numberValue3)
numberValue2 = 90.708656311035
flag5 = true
numberValue3 = nil
workValue17 = nil
cmgCall6 = 25.0
cmgCall7 = nil

-- === HELPER FUNCTION (decompiler name: textValue20; parameters: none) ===
function textValue20()
  local arg1, arg2
end
cmgCall5(iterator, vector3Builder, numberValue2, flag5, numberValue3, workValue17, cmgCall6, cmgCall7, textValue20)
cmgCall5 = cmgCall2.CMGGunStores
cmgCall5 = cmgCall5.Legion
cmgCall5 = cmgCall5._config
cmgCall5 = cmgCall5[1]
iterator = pairs
vector3Builder = cmgCall5
iterator, vector3Builder, numberValue2, flag5 = iterator(vector3Builder)
for numberValue3, workValue17 in iterator, vector3Builder, numberValue2, flag5 do
  cmgCall6 = tCMG
  cmgCall6 = cmgCall6.addBlip
  cmgCall7 = workValue17.x
  textValue20 = workValue17.y
  workValue18 = workValue17.z
  numberValue4 = 154
  numberValue5 = 1
  textValue22 = "Melee Store"
  numberValue6 = 1.0
  cmgCall6 = cmgCall6(cmgCall7, textValue20, workValue18, numberValue4, numberValue5, textValue22, numberValue6)
  cmgCall7 = CMG
  cmgCall7 = cmgCall7.addBlipContext
  textValue20 = "Civilian"
  workValue18 = cmgCall6
  cmgCall7(textValue20, workValue18)
end
