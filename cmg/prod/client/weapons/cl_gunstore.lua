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

    IMPORTANT — decompiler temporary names have been normalized for readability.
      Names like workingValue12, text4, dataCollection7, stateFlag3, cmgOperation2,
      localValue1/localValue2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workingValue = GetEntityCoords
        dataCollection2 = workingValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      Temporary variables use conservative plain-English fallback names.
      Decompiled code can reuse one temporary for several purposes, so API calls
      and nearby comments explain the exact role at each point.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local cmgOperation, cmgOperation2, cmgOperation3, text18, createVector32, text23, text25, text26, stateFlag7, dataCollection5, stateFlag, dataCollection, dataCollection2, workingValue2, text4, text5, rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
cmgOperation2 = "cfg/weapons"
-- Beginner: result below is config.
cmgOperation = cmgOperation(cmgOperation2)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.loadModule
cmgOperation3 = "cfg/cfg_gunstore"
-- Beginner: result below is config.
cmgOperation2 = cmgOperation2(cmgOperation3)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.loadModule
text18 = "cfg/cfg_smallarms"
-- Beginner: result below is config.
cmgOperation3 = cmgOperation3(text18)
text18 = nil
createVector32 = vector3
text23 = 0.0
text25 = 0.0
text26 = 0.0
createVector32 = createVector32(text23, text25, text26)
text23 = ""
text25 = ""
text26 = ""
stateFlag7 = false
dataCollection5 = {}
stateFlag = false
dataCollection = {}
dataCollection.name = ""
dataCollection.price = 0
dataCollection.model = ""
dataCollection.ammoPrice = 0
dataCollection.weaponShop = ""
dataCollection.breakdown = nil
dataCollection2 = {}
workingValue2 = RMenu
workingValue2 = workingValue2.Add
text4 = "cmggunstore"
text5 = "mainmenu"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text8 = ""
text10 = ""
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_gunstoreui"
text11 = "cmg_gunstoreui"
rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6 = rageUiOperation(text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11)
workingValue2(text4, text5, rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6)
workingValue2 = RMenu
text4 = workingValue2
workingValue2 = workingValue2.Get
text5 = "cmggunstore"
rageUiOperation = "mainmenu"
-- Beginner: result below is menu.
workingValue2 = workingValue2(text4, text5, rageUiOperation)
text4 = workingValue2
workingValue2 = workingValue2.SetSubtitle
text5 = "~b~GUNSTORE"
workingValue2(text4, text5)
workingValue2 = RMenu
workingValue2 = workingValue2.Add
text4 = "cmggunstore"
text5 = "category"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text8 = RMenu
text10 = text8
text8 = text8.Get
rageUiOperation2 = "cmggunstore"
rageUiOperation3 = "mainmenu"
-- Beginner: result below is menu.
text8 = text8(text10, rageUiOperation2, rageUiOperation3)
text10 = ""
rageUiOperation2 = "~b~Purchase Weapon or Ammo"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text11 = "cmg_gunstoreui"
text12 = "cmg_gunstoreui"
rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6 = rageUiOperation(text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12)
workingValue2(text4, text5, rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6)
workingValue2 = RMenu
workingValue2 = workingValue2.Add
text4 = "cmggunstore"
text5 = "type"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text8 = RMenu
text10 = text8
text8 = text8.Get
rageUiOperation2 = "cmggunstore"
rageUiOperation3 = "category"
-- Beginner: result below is menu.
text8 = text8(text10, rageUiOperation2, rageUiOperation3)
text10 = ""
rageUiOperation2 = "~b~Purchase Weapon or Ammo"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text11 = "cmg_gunstoreui"
text12 = "cmg_gunstoreui"
rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6 = rageUiOperation(text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12)
workingValue2(text4, text5, rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6)
workingValue2 = RMenu
workingValue2 = workingValue2.Add
text4 = "cmggunstore"
text5 = "confirm"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text8 = RMenu
text10 = text8
text8 = text8.Get
rageUiOperation2 = "cmggunstore"
rageUiOperation3 = "type"
-- Beginner: result below is menu.
text8 = text8(text10, rageUiOperation2, rageUiOperation3)
text10 = ""
rageUiOperation2 = "~b~Purchase confirm your purchase"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text11 = "cmg_gunstoreui"
text12 = "cmg_gunstoreui"
rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6 = rageUiOperation(text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12)
workingValue2(text4, text5, rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6)
workingValue2 = RMenu
workingValue2 = workingValue2.Add
text4 = "cmggunstore"
text5 = "vip_melee"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text8 = RMenu
text10 = text8
text8 = text8.Get
rageUiOperation2 = "cmggunstore"
rageUiOperation3 = "mainmenu"
-- Beginner: result below is menu.
text8 = text8(text10, rageUiOperation2, rageUiOperation3)
text10 = ""
rageUiOperation2 = "~b~Purchase Weapon or Ammo"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text11 = "cmg_gunstoreui"
text12 = "cmg_gunstoreui"
rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6 = rageUiOperation(text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12)
workingValue2(text4, text5, rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6)
workingValue2 = RMenu
workingValue2 = workingValue2.Add
text4 = "cmggunstore"
text5 = "vip_smallarms"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text8 = RMenu
text10 = text8
text8 = text8.Get
rageUiOperation2 = "cmggunstore"
rageUiOperation3 = "mainmenu"
-- Beginner: result below is menu.
text8 = text8(text10, rageUiOperation2, rageUiOperation3)
text10 = ""
rageUiOperation2 = "~b~Purchase Weapon or Ammo"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text11 = "cmg_gunstoreui"
text12 = "cmg_gunstoreui"
rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6 = rageUiOperation(text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12)
workingValue2(text4, text5, rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6)
workingValue2 = RMenu
workingValue2 = workingValue2.Add
text4 = "cmggunstore"
text5 = "vip_largearms"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text8 = RMenu
text10 = text8
text8 = text8.Get
rageUiOperation2 = "cmggunstore"
rageUiOperation3 = "mainmenu"
-- Beginner: result below is menu.
text8 = text8(text10, rageUiOperation2, rageUiOperation3)
text10 = ""
rageUiOperation2 = "~b~Purchase Weapon or Ammo"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text11 = "cmg_gunstoreui"
text12 = "cmg_gunstoreui"
rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6 = rageUiOperation(text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12)
workingValue2(text4, text5, rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6)
workingValue2 = RMenu
workingValue2 = workingValue2.Add
text4 = "cmggunstore"
text5 = "largearms_rebel"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text8 = RMenu
text10 = text8
text8 = text8.Get
rageUiOperation2 = "cmggunstore"
rageUiOperation3 = "mainmenu"
-- Beginner: result below is menu.
text8 = text8(text10, rageUiOperation2, rageUiOperation3)
text10 = ""
rageUiOperation2 = "~b~Purchase Weapon or Ammo"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text11 = "cmg_gunstoreui"
text12 = "cmg_gunstoreui"
rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6 = rageUiOperation(text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12)
workingValue2(text4, text5, rageUiOperation, text8, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, text11, text12, text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6)

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue
  if not localValue2 then
    localValue3 = string
    localValue3 = localValue3.format
    text19 = "\194\163%s"
    dataCollection3 = getMoneyStringFormatted
    number7 = localValue1
    dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue = dataCollection3(number7)
    return localValue3(text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue)
  end
  localValue3 = localValue2.basePrice
  if not localValue3 then
    localValue3 = localValue1
  end
  text19 = localValue2.commissionPct
  if not text19 then
    text19 = 0
  end
  dataCollection3 = localValue2.discounts
  if not dataCollection3 then
    dataCollection3 = {}
  end
  number7 = localValue2.totalDiscountPct
  if not number7 then
    number7 = 0
  end
  if 0 == text19 then
    stringHelper4 = #dataCollection3
    if 0 == stringHelper4 then
      stringHelper4 = string
      stringHelper4 = stringHelper4.format
      tableHelper2 = "\194\163%s"
      workingValue20 = getMoneyStringFormatted
      stringHelper5 = localValue1
      workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue = workingValue20(stringHelper5)
      return stringHelper4(tableHelper2, workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue)
    end
  end
  stringHelper4 = {}
  tableHelper2 = table
  tableHelper2 = tableHelper2.insert
  workingValue20 = stringHelper4
  stringHelper5 = string
  stringHelper5 = stringHelper5.format
  stringHelper = "Base: ~c~\194\163%s~s~"
  text2 = getMoneyStringFormatted
  workingValue = localValue3
  text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue = text2(workingValue)
  stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue = stringHelper5(stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue)
  tableHelper2(workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue)
  if text19 > 0 then
    tableHelper2 = math
    tableHelper2 = tableHelper2.floor
    workingValue20 = text19 / 100
    workingValue20 = 1 + workingValue20
    workingValue20 = localValue3 * workingValue20
    tableHelper2 = tableHelper2(workingValue20)
    workingValue20 = table
    workingValue20 = workingValue20.insert
    stringHelper5 = stringHelper4
    stringHelper = string
    stringHelper = stringHelper.format
    text2 = "~y~+%d%% Turf Commission~s~ \226\134\146 \194\163%s"
    workingValue = text19
    tableHelper = getMoneyStringFormatted
    workingValue4 = tableHelper2
    tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue = tableHelper(workingValue4)
    stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue = stringHelper(text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue)
    workingValue20(stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue)
  end
  tableHelper2 = ipairs
  workingValue20 = dataCollection3
  tableHelper2, workingValue20, stringHelper5, stringHelper = tableHelper2(workingValue20)
  for text2, workingValue in tableHelper2, workingValue20, stringHelper5, stringHelper do
    tableHelper = table
    tableHelper = tableHelper.insert
    workingValue4 = stringHelper4
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    text6 = "~b~-%d%% %s~s~"
    workingValue7 = workingValue.pct
    nameValue = workingValue.name
    stringHelper2, text6, workingValue7, nameValue = stringHelper2(text6, workingValue7, nameValue)
    tableHelper(workingValue4, stringHelper2, text6, workingValue7, nameValue)
  end
  tableHelper2 = #dataCollection3
  if tableHelper2 > 1 then
    tableHelper2 = table
    tableHelper2 = tableHelper2.insert
    workingValue20 = stringHelper4
    stringHelper5 = string
    stringHelper5 = stringHelper5.format
    stringHelper = "~b~Total Discount: -%d%%~s~"
    text2 = number7
    stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue = stringHelper5(stringHelper, text2)
    tableHelper2(workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue)
  end
  tableHelper2 = table
  tableHelper2 = tableHelper2.insert
  workingValue20 = stringHelper4
  stringHelper5 = string
  stringHelper5 = stringHelper5.format
  stringHelper = "Final: ~g~\194\163%s~s~"
  text2 = getMoneyStringFormatted
  workingValue = localValue1
  text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue = text2(workingValue)
  stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue = stringHelper5(stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue)
  tableHelper2(workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue)
  tableHelper2 = table
  tableHelper2 = tableHelper2.concat
  workingValue20 = stringHelper4
  stringHelper5 = "\n"
  return tableHelper2(workingValue20, stringHelper5)
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper
  localValue1 = {}
  localValue2 = cmgOperation2.CMGGunStores
  localValue3 = text18
  localValue2 = localValue2[localValue3]
  localValue3 = pairs
  text19 = localValue2
  localValue3, text19, dataCollection3, number7 = localValue3(text19)
  for stringHelper4 in localValue3, text19, dataCollection3, number7 do
    tableHelper2 = cmgOperation.weapons
    tableHelper2 = tableHelper2[stringHelper4]
    if tableHelper2 then
      workingValue20 = tableHelper2.ammo
      if "modelammo" ~= workingValue20 then
        workingValue20 = cmgOperation2.miscWeaponItems
        workingValue20 = workingValue20[stringHelper4]
        if not workingValue20 then
          workingValue20 = tableHelper2.class
          workingValue20 = localValue1[workingValue20]
          if not workingValue20 then
            workingValue20 = tableHelper2.class
            localValue1[workingValue20] = true
          end
      end
    end
    else
      localValue1.Misc = true
    end
  end
  localValue3 = {}
  text19 = pairs
  dataCollection3 = localValue1
  text19, dataCollection3, number7, stringHelper4 = text19(dataCollection3)
  for tableHelper2 in text19, dataCollection3, number7, stringHelper4 do
    workingValue20 = table
    workingValue20 = workingValue20.insert
    stringHelper5 = localValue3
    stringHelper = tableHelper2
    workingValue20(stringHelper5, stringHelper)
  end
  text19 = table
  text19 = text19.sort
  dataCollection3 = localValue3
  text19(dataCollection3)
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2, localValue3, text19
  localValue2 = cmgOperation.weapons
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = localValue2.ammo
    if "modelammo" ~= localValue3 then
      localValue3 = cmgOperation2.miscWeaponItems
      localValue3 = localValue3[localValue1]
      if not localValue3 then
        goto continueAtStep18
      end
    end
  end
  localValue3 = text23
  localValue3 = "Misc" == localValue3
  return localValue3
  ::continueAtStep18::
  localValue3 = localValue2.class
  text19 = text23
  localValue3 = localValue3 == text19
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper
  localValue2 = false
  localValue3 = pairs
  text19 = localValue1
  localValue3, text19, dataCollection3, number7 = localValue3(text19)
  for stringHelper4, tableHelper2 in localValue3, text19, dataCollection3, number7 do
    if "cmgplatinum.whitelisted" == tableHelper2 then
      localValue2 = true
    end
  end
  localValue3 = localValue2
  if localValue2 then
    text19 = pairs
    dataCollection3 = localValue1
    text19, dataCollection3, number7, stringHelper4 = text19(dataCollection3)
    for tableHelper2, workingValue20 in text19, dataCollection3, number7, stringHelper4 do
      if "" ~= workingValue20 then
        stringHelper5 = CMG
        stringHelper5 = stringHelper5.hasClientPermission
        stringHelper = workingValue20
        stringHelper5 = stringHelper5(stringHelper)
        if not stringHelper5 then
          localValue3 = false
        end
      end
    end
  else
    text19 = pairs
    dataCollection3 = localValue1
    text19, dataCollection3, number7, stringHelper4 = text19(dataCollection3)
    for tableHelper2, workingValue20 in text19, dataCollection3, number7, stringHelper4 do
      if "" ~= workingValue20 then
        stringHelper5 = CMG
        stringHelper5 = stringHelper5.hasClientPermission
        stringHelper = workingValue20
        stringHelper5 = stringHelper5(stringHelper)
        if not stringHelper5 then
          goto continueAtStep45
        end
      end
      localValue3 = true
      ::continueAtStep45::
    end
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1, localValue2, localValue3) ===
function text8(localValue1, localValue2, localValue3)
  local text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7, nameValue, workingValue8, workingValue9, workingValue10, workingValue11, text13, text15
  if "_config" == localValue1 then
    return
  end
  if localValue3 then
    text19 = text5
    dataCollection3 = localValue1
    text19 = text19(dataCollection3)
    if not text19 then
      return
    end
  end
  text19 = cmgOperation2.CMGGunStores
  text19 = text19[localValue2]
  dataCollection3 = table
  dataCollection3 = dataCollection3.unpack
  number7 = text19[localValue1]
  dataCollection3, number7, stringHelper4, tableHelper2 = dataCollection3(number7)
  workingValue20 = rageUiOperation
  stringHelper5 = tableHelper2
  workingValue20 = workingValue20(stringHelper5)
  stringHelper5 = text19._config
  if not workingValue20 then
    stringHelper = stringHelper5.grayNotPurchableItems
    if not stringHelper then
      return
    end
  end
  stringHelper = number7
  text2 = stringHelper4
  workingValue = nil
  tableHelper = dataCollection5
  tableHelper = tableHelper[localValue2]
  if tableHelper then
    workingValue4 = tableHelper[localValue1]
    if workingValue4 then
      stringHelper2 = workingValue4.price
      stringHelper = stringHelper2 or stringHelper
      if not stringHelper2 then
      end
      stringHelper2 = workingValue4.ammoPrice
      text2 = stringHelper2 or text2
      if not stringHelper2 then
      end
      workingValue = workingValue4.breakdown
    end
  end
  workingValue4 = nil
  stringHelper2 = stringHelper5.useRebelTokens
  if stringHelper2 then
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    text6 = "%s Rebel Tokens"
    workingValue7 = getMoneyStringFormatted
    nameValue = stringHelper
    workingValue7, nameValue, workingValue8, workingValue9, workingValue10, workingValue11, text13, text15 = workingValue7(nameValue)
    stringHelper2 = stringHelper2(text6, workingValue7, nameValue, workingValue8, workingValue9, workingValue10, workingValue11, text13, text15)
    workingValue4 = stringHelper2
  else
    stringHelper2 = workingValue2
    text6 = stringHelper
    workingValue7 = workingValue
    stringHelper2 = stringHelper2(text6, workingValue7)
    workingValue4 = stringHelper2
  end
  stringHelper2 = stringHelper5.useRebelTokens
  if stringHelper2 then
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    text6 = "%s Rebel Tokens"
    workingValue7 = getMoneyStringFormatted
    nameValue = stringHelper
    workingValue7, nameValue, workingValue8, workingValue9, workingValue10, workingValue11, text13, text15 = workingValue7(nameValue)
    stringHelper2 = stringHelper2(text6, workingValue7, nameValue, workingValue8, workingValue9, workingValue10, workingValue11, text13, text15)
    workingValue4 = stringHelper2
  end
  stringHelper2 = RageUI
  stringHelper2 = stringHelper2.ButtonWithStyle
  text6 = dataCollection3
  workingValue7 = workingValue4
  nameValue = {}
  nameValue.RightLabel = "\226\134\146\226\134\146\226\134\146"
  workingValue8 = workingValue20

  -- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue12, localValue22, localValue32) ===
  function workingValue9(localValue12, localValue22, localValue32)
    local workingValue16
    if localValue22 then
      workingValue16 = localValue1
      text26 = workingValue16
    end
    if localValue32 then
      workingValue16 = dataCollection3
      dataCollection.name = workingValue16
      workingValue16 = localValue1
      dataCollection.model = workingValue16
      workingValue16 = stringHelper
      dataCollection.price = workingValue16
      workingValue16 = text2
      dataCollection.ammoPrice = workingValue16
      workingValue16 = localValue2
      dataCollection.weaponShop = workingValue16
      workingValue16 = workingValue
      dataCollection.breakdown = workingValue16
    end
  end
  workingValue10 = RMenu
  workingValue11 = workingValue10
  workingValue10 = workingValue10.Get
  text13 = "cmggunstore"
  text15 = "type"
  workingValue10, workingValue11, text13, text15 = workingValue10(workingValue11, text13, text15)
  -- Beginner: Draw a selectable RageUI menu button.
  stringHelper2(text6, workingValue7, nameValue, workingValue8, workingValue9, workingValue10, workingValue11, text13, text15)
end
text10 = RageUI
text10 = text10.CreateWhile
rageUiOperation2 = 1.0
rageUiOperation3 = RMenu
rageUiOperation4 = rageUiOperation3
rageUiOperation3 = rageUiOperation3.Get
text11 = "cmggunstore"
text12 = "mainmenu"
-- Beginner: result below is menu.
rageUiOperation3 = rageUiOperation3(rageUiOperation4, text11, text12)
rageUiOperation4 = nil

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, localValue3, text19, dataCollection3, number7, stringHelper4
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text19 = "cmggunstore"
  dataCollection3 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text19, dataCollection3)
  localValue3 = true
  text19 = true
  dataCollection3 = true

  -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
  function number7()
    local localValue12, localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9
    localValue12 = assert
    localValue22 = text18
    localValue12(localValue22)
    localValue12 = cmgOperation2.CMGGunStores
    localValue22 = text18
    localValue12 = localValue12[localValue22]
    localValue22 = localValue12._config
    localValue32 = localValue22.useRebelTokens
    if localValue32 then
      localValue32 = RageUI
      localValue32 = localValue32.Separator
      workingValue16 = "~y~Rebel Tokens: "
      stringHelper3 = tostring
      dataCollection4 = select
      stateFlag6 = 4
      cmgOperation8 = CMG
      cmgOperation8 = cmgOperation8.getClientDisplayMoney
      cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9 = cmgOperation8()
      dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9 = dataCollection4(stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9)
      stringHelper3 = stringHelper3(dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9)
      workingValue16 = workingValue16 .. stringHelper3
      localValue32(workingValue16)
    end
    localValue32 = CMG
    localValue32 = localValue32.isPlatClub
    localValue32 = localValue32()
    if localValue32 then
      localValue32 = localValue22.hasPlatLargeArms
      if localValue32 then
        localValue32 = CMG
        localValue32 = localValue32.hasClientPermission
        workingValue16 = "vip.gunstore"
        localValue32 = localValue32(workingValue16)
        if localValue32 then
          localValue32 = RageUI
          localValue32 = localValue32.ButtonWithStyle
          workingValue16 = "~y~[Platinum Melee Store]"
          stringHelper3 = ""
          dataCollection4 = {}
          dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
          stateFlag6 = true

          -- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue13, localValue23, localValue33) ===
          function cmgOperation8(localValue13, localValue23, localValue33)
            local serverEventCall, text21, text24
            if localValue33 then
              serverEventCall = TriggerServerEvent
              text21 = "da3d489217"
              text24 = "Legion_VIP"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3d489217".
              serverEventCall(text21, text24)
            end
          end
          workingValue21 = RMenu
          workingValue22 = workingValue21
          workingValue21 = workingValue21.Get
          text = "cmggunstore"
          text3 = "vip_melee"
          workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9 = workingValue21(workingValue22, text, text3)
          -- Beginner: Draw a selectable RageUI menu button.
          localValue32(workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9)
          localValue32 = RageUI
          localValue32 = localValue32.ButtonWithStyle
          workingValue16 = "~y~[Platinum Small Arms]"
          stringHelper3 = ""
          dataCollection4 = {}
          dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
          stateFlag6 = true

          -- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue13, localValue23, localValue33) ===
          function cmgOperation8(localValue13, localValue23, localValue33)
            local serverEventCall, text21, text24
            if localValue33 then
              serverEventCall = TriggerServerEvent
              text21 = "da3d489217"
              text24 = "SmallArms_VIP"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3d489217".
              serverEventCall(text21, text24)
            end
          end
          workingValue21 = RMenu
          workingValue22 = workingValue21
          workingValue21 = workingValue21.Get
          text = "cmggunstore"
          text3 = "vip_smallarms"
          workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9 = workingValue21(workingValue22, text, text3)
          -- Beginner: Draw a selectable RageUI menu button.
          localValue32(workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9)
          localValue32 = RageUI
          localValue32 = localValue32.ButtonWithStyle
          workingValue16 = "~y~[Platinum Large Arms]"
          stringHelper3 = ""
          dataCollection4 = {}
          dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
          stateFlag6 = true

          -- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue13, localValue23, localValue33) ===
          function cmgOperation8(localValue13, localValue23, localValue33)
            local serverEventCall, text21, text24
            if localValue33 then
              serverEventCall = TriggerServerEvent
              text21 = "da3d489217"
              text24 = "LargeArms_VIP"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3d489217".
              serverEventCall(text21, text24)
            end
          end
          workingValue21 = RMenu
          workingValue22 = workingValue21
          workingValue21 = workingValue21.Get
          text = "cmggunstore"
          text3 = "vip_largearms"
          workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9 = workingValue21(workingValue22, text, text3)
          -- Beginner: Draw a selectable RageUI menu button.
          localValue32(workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9)
        end
      end
    end
    localValue32 = localValue22[4]
    if "Rebel Gun Store" == localValue32 then
      localValue32 = RageUI
      localValue32 = localValue32.ButtonWithStyle
      workingValue16 = "~r~[Rebel Large Arms]"
      stringHelper3 = ""
      dataCollection4 = {}
      dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag6 = true

      -- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue13, localValue23, localValue33) ===
      function cmgOperation8(localValue13, localValue23, localValue33)
        local serverEventCall, text21, text24
        if localValue33 then
          serverEventCall = TriggerServerEvent
          text21 = "da3d489217"
          text24 = "LargeArms_Rebel"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3d489217".
          serverEventCall(text21, text24)
        end
      end
      workingValue21 = RMenu
      workingValue22 = workingValue21
      workingValue21 = workingValue21.Get
      text = "cmggunstore"
      text3 = "largearms_rebel"
      workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9 = workingValue21(workingValue22, text, text3)
      -- Beginner: Draw a selectable RageUI menu button.
      localValue32(workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9)
    end
    localValue32 = localValue22.disableCategories
    if localValue32 then
      localValue32 = pairs
      workingValue16 = sortedKeys
      stringHelper3 = localValue12
      workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9 = workingValue16(stringHelper3)
      localValue32, workingValue16, stringHelper3, dataCollection4 = localValue32(workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9)
      for stateFlag6, cmgOperation8 in localValue32, workingValue16, stringHelper3, dataCollection4 do
        workingValue21 = text8
        workingValue22 = cmgOperation8
        text = text18
        text3 = false
        workingValue21(workingValue22, text, text3)
      end
    else
      localValue32 = pairs
      workingValue16 = text4
      workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9 = workingValue16()
      localValue32, workingValue16, stringHelper3, dataCollection4 = localValue32(workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9)
      for stateFlag6, cmgOperation8 in localValue32, workingValue16, stringHelper3, dataCollection4 do
        workingValue21 = RageUI
        workingValue21 = workingValue21.ButtonWithStyle
        workingValue22 = cmgOperation2.classToName
        workingValue22 = workingValue22[cmgOperation8]
        if not workingValue22 then
          workingValue22 = cmgOperation8
        end
        text = ""
        text3 = {}
        text3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag2 = true

        -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue33) ===
        function workingValue3(localValue13, localValue23, localValue33)
          local serverEventCall
          if localValue33 then
            serverEventCall = cmgOperation8
            text23 = serverEventCall
          end
        end
        workingValue5 = RMenu
        workingValue6 = workingValue5
        workingValue5 = workingValue5.Get
        text7 = "cmggunstore"
        text9 = "category"
        workingValue5, workingValue6, text7, text9 = workingValue5(workingValue6, text7, text9)
        -- Beginner: Draw a selectable RageUI menu button.
        workingValue21(workingValue22, text, text3, stateFlag2, workingValue3, workingValue5, workingValue6, text7, text9)
      end
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, text19, dataCollection3, number7, stringHelper4)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text19 = "cmggunstore"
  dataCollection3 = "category"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text19, dataCollection3)
  localValue3 = true
  text19 = true
  dataCollection3 = true

  -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
  function number7()
    local localValue12, localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text
    localValue12 = assert
    localValue22 = text18
    localValue12(localValue22)
    localValue12 = cmgOperation2.CMGGunStores
    localValue22 = text18
    localValue12 = localValue12[localValue22]
    localValue22 = pairs
    localValue32 = sortedKeys
    workingValue16 = localValue12
    localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text = localValue32(workingValue16)
    localValue22, localValue32, workingValue16, stringHelper3 = localValue22(localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text)
    for dataCollection4, stateFlag6 in localValue22, localValue32, workingValue16, stringHelper3 do
      cmgOperation8 = text8
      workingValue21 = stateFlag6
      workingValue22 = text18
      text = true
      cmgOperation8(workingValue21, workingValue22, text)
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, text19, dataCollection3, number7, stringHelper4)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text19 = "cmggunstore"
  dataCollection3 = "type"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text19, dataCollection3)
  localValue3 = true
  text19 = true
  dataCollection3 = true

  -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
  function number7()
    local localValue12, localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2
    localValue12 = cmgOperation2.CMGGunStores
    localValue22 = text18
    localValue12 = localValue12[localValue22]
    localValue12 = localValue12._config
    localValue22 = nil
    localValue32 = localValue12.useRebelTokens
    if localValue32 then
      localValue32 = string
      localValue32 = localValue32.format
      workingValue16 = "%s Rebel Tokens"
      stringHelper3 = getMoneyStringFormatted
      dataCollection4 = tonumber
      stateFlag6 = dataCollection.price
      dataCollection4 = dataCollection4(stateFlag6)
      if not dataCollection4 then
        dataCollection4 = 0
      end
      stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2 = stringHelper3(dataCollection4)
      localValue32 = localValue32(workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2)
      localValue22 = localValue32
    else
      localValue32 = workingValue2
      workingValue16 = tonumber
      stringHelper3 = dataCollection.price
      workingValue16 = workingValue16(stringHelper3)
      if not workingValue16 then
        workingValue16 = 0
      end
      stringHelper3 = dataCollection.breakdown
      localValue32 = localValue32(workingValue16, stringHelper3)
      localValue22 = localValue32
    end
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    workingValue16 = "Purchase Weapon Body"
    stringHelper3 = localValue22
    dataCollection4 = {}
    dataCollection4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue13, localValue23, localValue33) ===
    function cmgOperation8(localValue13, localValue23, localValue33)
      local serverEventCall
      if localValue33 then
        serverEventCall = false
        stateFlag = serverEventCall
      end
    end
    workingValue21 = RMenu
    workingValue22 = workingValue21
    workingValue21 = workingValue21.Get
    text = "cmggunstore"
    text3 = "confirm"
    workingValue21, workingValue22, text, text3, stateFlag2 = workingValue21(workingValue22, text, text3)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2)
    localValue32 = nil
    workingValue16 = localValue12.useRebelTokens
    if workingValue16 then
      workingValue16 = string
      workingValue16 = workingValue16.format
      stringHelper3 = "%s Rebel Tokens"
      dataCollection4 = getMoneyStringFormatted
      stateFlag6 = tonumber
      cmgOperation8 = dataCollection.ammoPrice
      stateFlag6 = stateFlag6(cmgOperation8)
      if not stateFlag6 then
        stateFlag6 = 0
      end
      dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2 = dataCollection4(stateFlag6)
      workingValue16 = workingValue16(stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2)
      localValue32 = workingValue16
    else
      workingValue16 = nil
      stringHelper3 = dataCollection.breakdown
      if stringHelper3 then
        dataCollection4 = {}
        stateFlag6 = stringHelper3.baseAmmoPrice
        if not stateFlag6 then
          stateFlag6 = stringHelper3.basePrice
        end
        dataCollection4.basePrice = stateFlag6
        stateFlag6 = stringHelper3.commissionPct
        dataCollection4.commissionPct = stateFlag6
        stateFlag6 = stringHelper3.discounts
        dataCollection4.discounts = stateFlag6
        stateFlag6 = stringHelper3.totalDiscountPct
        dataCollection4.totalDiscountPct = stateFlag6
        workingValue16 = dataCollection4
      end
      dataCollection4 = workingValue2
      stateFlag6 = tonumber
      cmgOperation8 = dataCollection.ammoPrice
      stateFlag6 = stateFlag6(cmgOperation8)
      if not stateFlag6 then
        stateFlag6 = 0
      end
      cmgOperation8 = workingValue16
      dataCollection4 = dataCollection4(stateFlag6, cmgOperation8)
      localValue32 = dataCollection4
    end
    workingValue16 = cmgOperation.weapons
    stringHelper3 = dataCollection.model
    workingValue16 = workingValue16[stringHelper3]
    if workingValue16 then
      workingValue16 = cmgOperation.weapons
      stringHelper3 = dataCollection.model
      workingValue16 = workingValue16[stringHelper3]
      workingValue16 = workingValue16.ammo
      if "modelammo" ~= workingValue16 then
        workingValue16 = RageUI
        workingValue16 = workingValue16.ButtonWithStyle
        stringHelper3 = "Purchase Weapon Ammo (Max)"
        dataCollection4 = localValue32
        stateFlag6 = {}
        stateFlag6.RightLabel = "\226\134\146\226\134\146\226\134\146"
        cmgOperation8 = true

        -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue13, localValue23, localValue33) ===
        function workingValue21(localValue13, localValue23, localValue33)
          local serverEventCall
          if localValue33 then
            serverEventCall = true
            stateFlag = serverEventCall
          end
        end
        workingValue22 = RMenu
        text = workingValue22
        workingValue22 = workingValue22.Get
        text3 = "cmggunstore"
        stateFlag2 = "confirm"
        workingValue22, text, text3, stateFlag2 = workingValue22(text, text3, stateFlag2)
        workingValue16(stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22, text, text3, stateFlag2)
      end
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, text19, dataCollection3, number7, stringHelper4)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text19 = "cmggunstore"
  dataCollection3 = "confirm"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text19, dataCollection3)
  localValue3 = true
  text19 = true
  dataCollection3 = true

  -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
  function number7()
    local localValue12, localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Yes"
    localValue32 = ""
    workingValue16 = {}
    workingValue16.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue13, localValue23, localValue33) ===
    function dataCollection4(localValue13, localValue23, localValue33)
      local serverEventCall, text21, text24, modelValue, workingValue19
      if localValue33 then
        serverEventCall = TriggerServerEvent
        text21 = "7fa6c51dd3"
        text24 = dataCollection.weaponShop
        modelValue = dataCollection.model
        workingValue19 = stateFlag
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7fa6c51dd3".
        serverEventCall(text21, text24, modelValue, workingValue19)
      end
    end
    stateFlag6 = RMenu
    cmgOperation8 = stateFlag6
    stateFlag6 = stateFlag6.Get
    workingValue21 = "cmggunstore"
    workingValue22 = "confirm"
    stateFlag6, cmgOperation8, workingValue21, workingValue22 = stateFlag6(cmgOperation8, workingValue21, workingValue22)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "No"
    localValue32 = ""
    workingValue16 = {}
    workingValue16.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue13, localValue23, localValue33) ===
    function dataCollection4(localValue13, localValue23, localValue33)
      local serverEventCall
      if localValue33 then
        serverEventCall = RageUI
        serverEventCall = serverEventCall.GoBack
        serverEventCall()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue16, stringHelper3, dataCollection4)
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, text19, dataCollection3, number7, stringHelper4)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text19 = "cmggunstore"
  dataCollection3 = "vip_melee"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text19, dataCollection3)
  localValue3 = true
  text19 = true
  dataCollection3 = true

  -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
  function number7()
    local localValue12, localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22
    localValue12 = pairs
    localValue22 = sortedKeys
    localValue32 = cmgOperation2.CMGGunStores
    localValue32 = localValue32.Legion_VIP
    localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22 = localValue22(localValue32)
    localValue12, localValue22, localValue32, workingValue16 = localValue12(localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22)
    for stringHelper3, dataCollection4 in localValue12, localValue22, localValue32, workingValue16 do
      stateFlag6 = text8
      cmgOperation8 = dataCollection4
      workingValue21 = "Legion_VIP"
      workingValue22 = false
      stateFlag6(cmgOperation8, workingValue21, workingValue22)
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, text19, dataCollection3, number7, stringHelper4)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text19 = "cmggunstore"
  dataCollection3 = "vip_smallarms"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text19, dataCollection3)
  localValue3 = true
  text19 = true
  dataCollection3 = true

  -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
  function number7()
    local localValue12, localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22
    localValue12 = pairs
    localValue22 = sortedKeys
    localValue32 = cmgOperation2.CMGGunStores
    localValue32 = localValue32.SmallArms_VIP
    localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22 = localValue22(localValue32)
    localValue12, localValue22, localValue32, workingValue16 = localValue12(localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22)
    for stringHelper3, dataCollection4 in localValue12, localValue22, localValue32, workingValue16 do
      stateFlag6 = text8
      cmgOperation8 = dataCollection4
      workingValue21 = "SmallArms_VIP"
      workingValue22 = false
      stateFlag6(cmgOperation8, workingValue21, workingValue22)
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, text19, dataCollection3, number7, stringHelper4)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text19 = "cmggunstore"
  dataCollection3 = "vip_largearms"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text19, dataCollection3)
  localValue3 = true
  text19 = true
  dataCollection3 = true

  -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
  function number7()
    local localValue12, localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22
    localValue12 = pairs
    localValue22 = sortedKeys
    localValue32 = cmgOperation2.CMGGunStores
    localValue32 = localValue32.LargeArms_VIP
    localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22 = localValue22(localValue32)
    localValue12, localValue22, localValue32, workingValue16 = localValue12(localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22)
    for stringHelper3, dataCollection4 in localValue12, localValue22, localValue32, workingValue16 do
      stateFlag6 = text8
      cmgOperation8 = dataCollection4
      workingValue21 = "LargeArms_VIP"
      workingValue22 = false
      stateFlag6(cmgOperation8, workingValue21, workingValue22)
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, text19, dataCollection3, number7, stringHelper4)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text19 = "cmggunstore"
  dataCollection3 = "largearms_rebel"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text19, dataCollection3)
  localValue3 = true
  text19 = true
  dataCollection3 = true

  -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
  function number7()
    local localValue12, localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22
    localValue12 = pairs
    localValue22 = sortedKeys
    localValue32 = cmgOperation2.CMGGunStores
    localValue32 = localValue32.LargeArms_Rebel
    localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22 = localValue22(localValue32)
    localValue12, localValue22, localValue32, workingValue16 = localValue12(localValue22, localValue32, workingValue16, stringHelper3, dataCollection4, stateFlag6, cmgOperation8, workingValue21, workingValue22)
    for stringHelper3, dataCollection4 in localValue12, localValue22, localValue32, workingValue16 do
      stateFlag6 = text8
      cmgOperation8 = dataCollection4
      workingValue21 = "LargeArms_Rebel"
      workingValue22 = false
      stateFlag6(cmgOperation8, workingValue21, workingValue22)
    end
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, text19, dataCollection3, number7, stringHelper4)
end
text10(rageUiOperation2, rageUiOperation3, rageUiOperation4, text11)

-- === HELPER FUNCTION (decompiler name: text10; parameters: localValue1, localValue2) ===
function text10(localValue1, localValue2)
  local localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2
  text18 = localValue1
  createVector32 = localValue2
  localValue3 = cmgOperation2.CMGGunStores
  text19 = text18
  localValue3 = localValue3[text19]
  localValue3 = localValue3._config
  localValue3 = localValue3.menuTexture
  if not localValue3 then
    localValue3 = "cmg_gunstoreui"
  end
  text19 = RMenu
  dataCollection3 = text19
  text19 = text19.Get
  number7 = "cmggunstore"
  stringHelper4 = "mainmenu"
  -- Beginner: result below is menu.
  text19 = text19(dataCollection3, number7, stringHelper4)
  dataCollection3 = text19
  text19 = text19.SetSpriteBanner
  number7 = localValue3
  stringHelper4 = localValue3
  text19(dataCollection3, number7, stringHelper4)
  text19 = RageUI
  text19 = text19.Visible
  dataCollection3 = RMenu
  number7 = dataCollection3
  dataCollection3 = dataCollection3.Get
  stringHelper4 = "cmggunstore"
  tableHelper2 = "mainmenu"
  -- Beginner: result below is menu.
  dataCollection3 = dataCollection3(number7, stringHelper4, tableHelper2)
  number7 = true
  text19(dataCollection3, number7)
  text19 = TriggerServerEvent
  dataCollection3 = "da3d489217"
  number7 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3d489217".
  text19(dataCollection3, number7)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2
  localValue1 = nil
  text18 = localValue1
  localValue1 = ""
  text26 = localValue1
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2
  localValue1 = text25
  localValue2 = text26
  if localValue1 == localValue2 then
    return
  end
  localValue1 = text26
  text25 = localValue1
  localValue1 = cmgOperation2.CMGGunStores
  localValue2 = text18
  localValue1 = localValue1[localValue2]
  if localValue1 then
    localValue2 = stateFlag7
    if not localValue2 then
      goto continueAtStep17
    end
  end
  return
  ::continueAtStep17::
  localValue2 = text26
  localValue2 = localValue1[localValue2]
  if not localValue2 then
    return
  end
  localValue3 = localValue2[5]
  if not localValue3 or "" == localValue3 then
    return
  end
  text19 = GetHashKey
  dataCollection3 = localValue3
  -- Beginner: result below is hash.
  text19 = text19(dataCollection3)
  dataCollection3 = IsModelValid
  number7 = text19
  dataCollection3 = dataCollection3(number7)
  if not dataCollection3 then
    return
  end
  dataCollection3 = RequestModel
  number7 = text19
  dataCollection3(number7)
  dataCollection3 = HasModelLoaded
  number7 = text19
  dataCollection3 = dataCollection3(number7)
  if not dataCollection3 then
    return
  end
  dataCollection3 = CreateObject
  number7 = text19
  stringHelper4 = createVector32.x
  tableHelper2 = createVector32.y
  workingValue20 = createVector32.z
  workingValue20 = workingValue20 + 1.0
  stringHelper5 = false
  stringHelper = false
  text2 = false
  -- Beginner: result below is objectEntity.
  dataCollection3 = dataCollection3(number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2)
  number7 = SetModelAsNoLongerNeeded
  stringHelper4 = text19
  number7(stringHelper4)
  if 0 == dataCollection3 then
    return
  end
  number7 = FreezeEntityPosition
  stringHelper4 = dataCollection3
  tableHelper2 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  number7(stringHelper4, tableHelper2)
  number7 = SetEntityCollision
  stringHelper4 = dataCollection3
  tableHelper2 = false
  workingValue20 = false
  number7(stringHelper4, tableHelper2, workingValue20)
  number7 = true
  stateFlag7 = number7
  number7 = Citizen
  number7 = number7.CreateThread

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local localValue12, localValue22, localValue32, workingValue16, stringHelper3
    localValue12 = text25
    while true do
      localValue22 = text25
      if localValue22 ~= localValue12 then
        break
      end
      localValue22 = DoesEntityExist
      localValue32 = dataCollection3
      localValue22 = localValue22(localValue32)
      if not localValue22 then
        break
      end
      localValue22 = SetEntityHeading
      localValue32 = dataCollection3
      workingValue16 = GetEntityHeading
      stringHelper3 = dataCollection3
      -- Beginner: result below is heading.
      workingValue16 = workingValue16(stringHelper3)
      workingValue16 = workingValue16 + 1
      -- Beginner: Change the direction an entity is facing.
      localValue22(localValue32, workingValue16)
      localValue22 = Wait
      localValue32 = 0
      localValue22(localValue32)
    end
    localValue22 = DeleteEntity
    localValue32 = dataCollection3
    -- Beginner: Delete a GTA entity.
    localValue22(localValue32)
    localValue22 = false
    stateFlag7 = localValue22
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number7(stringHelper4)
end
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.createThreadOnTick
text11 = rageUiOperation3
text12 = "Weapon Preview"
-- Beginner: Run a helper every game frame while this script is active.
rageUiOperation4(text11, text12)

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2, localValue3, text19, dataCollection3
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "ludde.whitelisted"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = GetSelectedPedWeapon
    localValue3 = localValue1
    -- Beginner: result below is weaponHash.
    localValue2 = localValue2(localValue3)
    if -1337195216 == localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.setWeapon
      localValue3 = localValue1
      text19 = -1569615261
      dataCollection3 = true
      localValue2(localValue3, text19, dataCollection3)
    end
  end
end
text11 = CMG
text11 = text11.createThreadOnTick
text12 = rageUiOperation4
text14 = "Disable MP5 Taser"
-- Beginner: Run a helper every game frame while this script is active.
text11(text12, text14)
text11 = Citizen
text11 = text11.CreateThread

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2, localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6
  localValue1 = pairs
  localValue2 = cmgOperation2.CMGGunStores
  localValue1, localValue2, localValue3, text19 = localValue1(localValue2)
  for dataCollection3, number7 in localValue1, localValue2, localValue3, text19 do
    stringHelper4 = number7._config
    tableHelper2 = pairs
    workingValue20 = stringHelper4[1]
    tableHelper2, workingValue20, stringHelper5, stringHelper = tableHelper2(workingValue20)
    for text2, workingValue in tableHelper2, workingValue20, stringHelper5, stringHelper do
      tableHelper = CMG
      tableHelper = tableHelper.createGunStore
      workingValue4 = string
      workingValue4 = workingValue4.format
      stringHelper2 = "Static %s"
      text6 = text2
      workingValue4 = workingValue4(stringHelper2, text6)
      stringHelper2 = dataCollection3
      text6 = workingValue
      tableHelper(workingValue4, stringHelper2, text6)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text11(text12)
text11 = {}
text12 = CMG

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1, localValue2, localValue3) ===
function text14(localValue1, localValue2, localValue3)
  local text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper

  -- === HELPER FUNCTION (decompiler name: text19; parameters: none) ===
  function text19()
    local localValue12, localValue22, localValue32
    localValue12 = GetVehiclePedIsIn
    localValue22 = CMG
    localValue22 = localValue22.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue22 = localValue22()
    localValue32 = false
    -- Beginner: result below is currentVehicle.
    localValue12 = localValue12(localValue22, localValue32)
    if 0 == localValue12 then
      localValue12 = text10
      localValue22 = localValue2
      localValue32 = localValue3
      localValue12(localValue22, localValue32)
    else
      localValue12 = tCMG
      localValue12 = localValue12.notify
      localValue22 = "~r~Exit your vehicle to access the gun store."
      -- Beginner: Show a notification to the player.
      localValue12(localValue22)
    end
  end

  -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
  function dataCollection3()
    local localValue12, localValue22
    localValue12 = rageUiOperation2
    localValue12()
  end
  number7 = string
  number7 = number7.format
  stringHelper4 = "gunstore_%s_%s"
  tableHelper2 = localValue2
  workingValue20 = localValue1
  number7 = number7(stringHelper4, tableHelper2, workingValue20)
  stringHelper4 = CMG
  stringHelper4 = stringHelper4.createArea
  tableHelper2 = number7
  workingValue20 = localValue3
  stringHelper5 = 1.5
  stringHelper = 6
  text2 = text19
  workingValue = dataCollection3

  -- === HELPER FUNCTION: tableHelper() ===
  function tableHelper()
    local localValue12, localValue22
  end
  -- Beginner: Create an interaction area around a world position.
  stringHelper4(tableHelper2, workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper)
  stringHelper4 = tCMG
  stringHelper4 = stringHelper4.addPropMarker
  tableHelper2 = "bzzz_marker_gun_red_anim"
  workingValue20 = localValue3.x
  stringHelper5 = localValue3.y
  stringHelper = localValue3.z
  text2 = 20.0
  stringHelper4 = stringHelper4(tableHelper2, workingValue20, stringHelper5, stringHelper, text2)
  tableHelper2 = text11
  workingValue20 = {}
  workingValue20.area = number7
  workingValue20.marker = stringHelper4
  tableHelper2[localValue1] = workingValue20
  return localValue1
end
text12.createGunStore = text14
text12 = CMG

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1) ===
function text14(localValue1)
  local localValue2, localValue3, text19
  localValue2 = text11
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = tCMG
    localValue3 = localValue3.removeMarker
    text19 = localValue2.marker
    localValue3(text19)
    localValue3 = tCMG
    localValue3 = localValue3.removeArea
    text19 = localValue2.area
    localValue3(text19)
    localValue3 = text11
    localValue3[localValue1] = nil
  end
end
text12.deleteGunStore = text14
text12 = RMenu
text12 = text12.Add
text14 = "gunstore"
rageUiOperation5 = "inactivity"
rageUiOperation6 = RageUI
rageUiOperation6 = rageUiOperation6.CreateMenu
text16 = ""
text17 = "Weapon Inactivity"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8 = rageUiOperation8()
stateFlag3 = "cmg_gunstoreui"
stateFlag4 = "cmg_gunstoreui"
rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6 = rageUiOperation6(text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4)
text12(text14, rageUiOperation5, rageUiOperation6, text16, text17, rageUiOperation7, rageUiOperation8, stateFlag3, stateFlag4, number, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation4, cmgOperation5, iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20, workingValue18, number4, number5, text22, number6)
text12 = nil
text14 = nil
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateWhile
rageUiOperation6 = 1.0
text16 = RMenu
text17 = text16
text16 = text16.Get
rageUiOperation7 = "gunstore"
rageUiOperation8 = "inactivity"
-- Beginner: result below is menu.
text16 = text16(text17, rageUiOperation7, rageUiOperation8)
text17 = nil

-- === HELPER FUNCTION (decompiler name: rageUiOperation7; parameters: none) ===
function rageUiOperation7()
  local localValue1, localValue2, localValue3, text19, dataCollection3, number7, stringHelper4
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text19 = "gunstore"
  dataCollection3 = "inactivity"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text19, dataCollection3)
  localValue3 = true
  text19 = true
  dataCollection3 = true

  -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
  function number7()
    local localValue12, localValue22, localValue32, workingValue16, stringHelper3, dataCollection4
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~The weapon '"
    localValue32 = text12
    workingValue16 = "' is inactive."
    localValue22 = localValue22 .. localValue32 .. workingValue16
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~This occurs to weapon which aren't used in 4 months."
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~This improves load times and increases performance."
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~To make the weapon active click the button below."
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~The weapon will be spawnable from the next restart."
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~g~Activate Weapon"
    localValue32 = ""
    workingValue16 = {}
    workingValue16.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stringHelper3 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue13, localValue23, localValue33) ===
    function dataCollection4(localValue13, localValue23, localValue33)
      local serverEventCall, text21, text24
      if localValue33 then
        serverEventCall = TriggerServerEvent
        text21 = "5137044dad"
        text24 = text14
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5137044dad".
        serverEventCall(text21, text24)
        serverEventCall = RageUI
        serverEventCall = serverEventCall.CloseAll
        serverEventCall()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue16, stringHelper3, dataCollection4)
  end

  -- === HELPER FUNCTION: stringHelper4() ===
  function stringHelper4()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, text19, dataCollection3, number7, stringHelper4)
end
rageUiOperation5(rageUiOperation6, text16, text17, rageUiOperation7)
rageUiOperation5 = RegisterNetEvent
rageUiOperation6 = "32de57e1f2"
-- Beginner: this function handles network event "32de57e1f2".

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1, localValue2) ===
function text16(localValue1, localValue2)
  local localValue3, text19, dataCollection3, number7, stringHelper4
  text12 = localValue1
  text14 = localValue2
  localValue3 = RageUI
  localValue3 = localValue3.Visible
  text19 = RMenu
  dataCollection3 = text19
  text19 = text19.Get
  number7 = "gunstore"
  stringHelper4 = "inactivity"
  -- Beginner: result below is menu.
  text19 = text19(dataCollection3, number7, stringHelper4)
  dataCollection3 = true
  localValue3(text19, dataCollection3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "32de57e1f2".
rageUiOperation5(rageUiOperation6, text16)
rageUiOperation5 = RegisterNetEvent
rageUiOperation6 = "96bacf0094"
-- Beginner: this function handles network event "96bacf0094".

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1) ===
function text16(localValue1)
  local localValue2
  dataCollection5 = localValue1
end
rageUiOperation5(rageUiOperation6, text16)
rageUiOperation5 = CMG
-- Beginner: this function handles network event "96bacf0094".

-- === HELPER FUNCTION (decompiler name: rageUiOperation6; parameters: localValue1, localValue2, localValue3) ===
function rageUiOperation6(localValue1, localValue2, localValue3)
  local text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2
  text19 = 0
  dataCollection3 = ""
  number7 = cmgOperation2.CMGGunStores
  number7 = number7[localValue1]
  if not number7 then
    return
  end
  stringHelper4 = number7[localValue2]
  if not stringHelper4 then
    return
  end
  if text19 and dataCollection3 then
    tableHelper2 = 1
    workingValue20 = localValue3
    stringHelper5 = 1
    for stringHelper = tableHelper2, workingValue20, stringHelper5 do
      text2 = TriggerServerEvent
      workingValue = "7fa6c51dd3"
      tableHelper = localValue1
      workingValue4 = localValue2
      stringHelper2 = false
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7fa6c51dd3".
      text2(workingValue, tableHelper, workingValue4, stringHelper2)
    end
  end
end
rageUiOperation5.purchaseFromGunstore = rageUiOperation6

-- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: localValue1) ===
function rageUiOperation5(localValue1)
  local localValue2, localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper
  localValue2 = FreezeEntityPosition
  localValue3 = localValue1
  text19 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, text19)
  localValue2 = SetEntityProofs
  localValue3 = localValue1
  text19 = true
  dataCollection3 = true
  number7 = true
  stringHelper4 = true
  tableHelper2 = true
  workingValue20 = true
  stringHelper5 = true
  stringHelper = true
  localValue2(localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper)
  localValue2 = SetEntityCanBeDamaged
  localValue3 = localValue1
  text19 = false
  localValue2(localValue3, text19)
  localValue2 = SetEntityLodDist
  localValue3 = localValue1
  text19 = 225
  localValue2(localValue3, text19)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation6; parameters: localValue1) ===
function rageUiOperation6(localValue1)
  local localValue2, localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5
  localValue1.isActive = true
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = localValue1.pedModel
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = localValue1.vehicleModel
  localValue2(localValue3)
  localValue2 = localValue1.isActive
  if localValue2 then
    localValue2 = localValue1.ped
    if localValue2 then
      localValue2 = CreatePed
      localValue3 = 0
      text19 = localValue1.pedModel
      dataCollection3 = localValue1.ped
      dataCollection3 = dataCollection3.x
      number7 = localValue1.ped
      number7 = number7.y
      stringHelper4 = localValue1.ped
      stringHelper4 = stringHelper4.z
      stringHelper4 = stringHelper4 - 1.0
      tableHelper2 = localValue1.ped
      tableHelper2 = tableHelper2.w
      workingValue20 = false
      stringHelper5 = false
      -- Beginner: result below is pedEntity.
      localValue2 = localValue2(localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5)
      localValue1.pedHandle = localValue2
      localValue2 = rageUiOperation5
      localValue3 = localValue1.pedHandle
      localValue2(localValue3)
      localValue2 = SetBlockingOfNonTemporaryEvents
      localValue3 = localValue1.pedHandle
      text19 = true
      localValue2(localValue3, text19)
    end
    localValue2 = localValue1.van
    if localValue2 then
      localValue2 = CreateVehicle
      localValue3 = localValue1.vehicleModel
      text19 = localValue1.van
      text19 = text19.x
      dataCollection3 = localValue1.van
      dataCollection3 = dataCollection3.y
      number7 = localValue1.van
      number7 = number7.z
      stringHelper4 = localValue1.van
      stringHelper4 = stringHelper4.w
      tableHelper2 = false
      workingValue20 = false
      -- Beginner: result below is vehicleEntity.
      localValue2 = localValue2(localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20)
      localValue1.vehicleHandle = localValue2
      localValue2 = CMG
      localValue2 = localValue2.initLocalVehicle
      localValue3 = localValue1.vehicleHandle
      localValue2(localValue3)
      localValue2 = rageUiOperation5
      localValue3 = localValue1.vehicleHandle
      localValue2(localValue3)
      localValue2 = SetVehicleOnGroundProperly
      localValue3 = localValue1.vehicleHandle
      localValue2(localValue3)
      localValue2 = SetVehicleDoorOpen
      localValue3 = localValue1.vehicleHandle
      text19 = 2
      dataCollection3 = false
      number7 = true
      localValue2(localValue3, text19, dataCollection3, number7)
      localValue2 = SetVehicleDoorOpen
      localValue3 = localValue1.vehicleHandle
      text19 = 3
      dataCollection3 = false
      number7 = true
      localValue2(localValue3, text19, dataCollection3, number7)
      localValue2 = SetVehicleDoorsLocked
      localValue3 = localValue1.vehicleHandle
      text19 = 2
      localValue2(localValue3, text19)
      localValue2 = SetVehicleDoorsLockedForAllPlayers
      localValue3 = localValue1.vehicleHandle
      text19 = true
      localValue2(localValue3, text19)
    end
  end
  localValue2 = SetModelAsNoLongerNeeded
  localValue3 = localValue1.pedModel
  localValue2(localValue3)
  localValue2 = SetModelAsNoLongerNeeded
  localValue3 = localValue1.vehicleModel
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1) ===
function text16(localValue1)
  local localValue2, localValue3
  localValue1.isActive = false
  localValue2 = localValue1.pedHandle
  if localValue2 then
    localValue2 = DeleteEntity
    localValue3 = localValue1.pedHandle
    -- Beginner: Delete a GTA entity.
    localValue2(localValue3)
    localValue1.pedHandle = nil
  end
  localValue2 = localValue1.vehicleHandle
  if localValue2 then
    localValue2 = DeleteEntity
    localValue3 = localValue1.vehicleHandle
    localValue2(localValue3)
    localValue1.vehicleHandle = nil
  end
end
text17 = nil
rageUiOperation7 = 0.0
rageUiOperation8 = 0.0
stateFlag3 = false
stateFlag4 = false
number = 0

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1) ===
function workingValue12(localValue1)
  local localValue2, localValue3, text19
  if 0 == localValue1 or -1569615261 == localValue1 or 1953687840 == localValue1 then
    localValue2 = true
    return localValue2
  end
  localValue2 = cmgOperation.weaponHashToModels
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = cmgOperation.weapons
    localValue3 = localValue3[localValue2]
    if localValue3 then
      text19 = localValue3.class
      if "Pistol" == text19 then
        text19 = true
        return text19
      end
    end
    text19 = false
    return text19
  end
  localValue3 = GetWeapontypeGroup
  text19 = localValue1
  localValue3 = localValue3(text19)
  localValue3 = 416676503 == localValue3
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5
  localValue1 = CMG
  localValue1 = localValue1.getPlayerBucket
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue1 = false
    return localValue1
  end
  localValue1 = text17
  if localValue1 then
    localValue1 = rageUiOperation7
    if not (localValue1 <= 0.0) then
      goto continueAtStep16
    end
  end
  localValue1 = false
  return localValue1
  ::continueAtStep16::
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = pairs
  localValue3 = text17
  localValue2, localValue3, text19, dataCollection3 = localValue2(localValue3)
  for number7, stringHelper4 in localValue2, localValue3, text19, dataCollection3 do
    tableHelper2 = localValue1.xy
    workingValue20 = stringHelper4.xy
    tableHelper2 = tableHelper2 - workingValue20
    tableHelper2 = #tableHelper2
    workingValue20 = rageUiOperation7
    if tableHelper2 <= workingValue20 then
      tableHelper2 = math
      tableHelper2 = tableHelper2.abs
      workingValue20 = localValue1.z
      stringHelper5 = stringHelper4.z
      workingValue20 = workingValue20 - stringHelper5
      tableHelper2 = tableHelper2(workingValue20)
      workingValue20 = rageUiOperation8
      if tableHelper2 <= workingValue20 then
        tableHelper2 = true
        return tableHelper2
      end
    end
  end
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2
  localValue1 = workingValue13
  localValue1 = localValue1()
  if not localValue1 then
    localValue2 = false
    stateFlag4 = localValue2
    return
  end
  localValue2 = stateFlag4
  if not localValue2 then
    localValue2 = true
    stateFlag4 = localValue2
    localValue2 = tCMG
    localValue2 = localValue2.notify
    localValue3 = "~b~Pistol only zone~s~ - only pistols may be used in this area."
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
  end
  localValue2 = CMG
  localValue2 = localValue2.inEvent
  localValue2 = localValue2()
  if localValue2 then
    return
  end
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  text19 = GetSelectedPedWeapon
  dataCollection3 = localValue2
  -- Beginner: result below is weaponHash.
  text19 = text19(dataCollection3)
  if -1569615261 == text19 then
    return
  end
  dataCollection3 = workingValue12
  number7 = text19
  dataCollection3 = dataCollection3(number7)
  if dataCollection3 then
    return
  end
  dataCollection3 = DisablePlayerFiring
  number7 = localValue3
  stringHelper4 = true
  dataCollection3(number7, stringHelper4)
  dataCollection3 = DisableControlAction
  number7 = 0
  stringHelper4 = 24
  tableHelper2 = true
  dataCollection3(number7, stringHelper4, tableHelper2)
  dataCollection3 = DisableControlAction
  number7 = 0
  stringHelper4 = 257
  tableHelper2 = true
  dataCollection3(number7, stringHelper4, tableHelper2)
  dataCollection3 = DisableControlAction
  number7 = 0
  stringHelper4 = 263
  tableHelper2 = true
  dataCollection3(number7, stringHelper4, tableHelper2)
  dataCollection3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  dataCollection3 = dataCollection3()
  number7 = number
  dataCollection3 = dataCollection3 - number7
  number7 = 3000
  if dataCollection3 > number7 then
    dataCollection3 = tCMG
    dataCollection3 = dataCollection3.notify
    number7 = "~r~Only pistols can be used in this area!"
    -- Beginner: Show a notification to the player.
    dataCollection3(number7)
    dataCollection3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    dataCollection3 = dataCollection3()
    number = dataCollection3
  end
  dataCollection3 = CMG
  dataCollection3 = dataCollection3.setWeapon
  number7 = localValue2
  stringHelper4 = -1569615261
  tableHelper2 = true
  dataCollection3(number7, stringHelper4, tableHelper2)
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1) ===
function workingValue15(localValue1)
  local localValue2, localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2
  localValue2 = {}
  text17 = localValue2
  localValue2 = cmgOperation3.pistolZone
  localValue2 = localValue2.radius
  rageUiOperation7 = localValue2
  localValue2 = cmgOperation3.pistolZone
  localValue2 = localValue2.height
  rageUiOperation8 = localValue2
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, text19, dataCollection3 = localValue2(localValue3)
  for number7, stringHelper4 in localValue2, localValue3, text19, dataCollection3 do
    tableHelper2 = stringHelper4.pistolZone
    if tableHelper2 then
      tableHelper2 = text17
      tableHelper2 = #tableHelper2
      workingValue20 = tableHelper2 + 1
      tableHelper2 = text17
      stringHelper5 = stringHelper4.shop
      tableHelper2[workingValue20] = stringHelper5
      tableHelper2 = AddBlipForRadius
      workingValue20 = stringHelper4.shop
      workingValue20 = workingValue20.x
      stringHelper5 = stringHelper4.shop
      stringHelper5 = stringHelper5.y
      stringHelper = stringHelper4.shop
      stringHelper = stringHelper.z
      text2 = rageUiOperation7
      -- Beginner: result below is blipHandle.
      tableHelper2 = tableHelper2(workingValue20, stringHelper5, stringHelper, text2)
      workingValue20 = SetBlipColour
      stringHelper5 = tableHelper2
      stringHelper = 5
      workingValue20(stringHelper5, stringHelper)
      workingValue20 = SetBlipAlpha
      stringHelper5 = tableHelper2
      stringHelper = 180
      workingValue20(stringHelper5, stringHelper)
      workingValue20 = SetBlipDisplay
      stringHelper5 = tableHelper2
      stringHelper = 5
      workingValue20(stringHelper5, stringHelper)
      workingValue20 = CMG
      workingValue20 = workingValue20.addBlipContext
      stringHelper5 = "Civilian"
      stringHelper = tableHelper2
      workingValue20(stringHelper5, stringHelper)
    end
  end
  localValue2 = text17
  localValue2 = #localValue2
  if localValue2 > 0 then
    localValue2 = stateFlag3
    if not localValue2 then
      localValue2 = true
      stateFlag3 = localValue2
      localValue2 = CMG
      localValue2 = localValue2.createThreadOnTick
      localValue3 = workingValue14
      text19 = "Small Arms Pistol Zone"
      -- Beginner: Run a helper every game frame while this script is active.
      localValue2(localValue3, text19)
    end
  end
end
cmgOperation4 = RegisterNetEvent
cmgOperation5 = "1e8e401746"
-- Beginner: this function handles network event "1e8e401746".

-- === HELPER FUNCTION: iterator(localValue1) ===
function iterator(localValue1)
  local localValue2, localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7
  localValue2 = nil
  while not localValue2 do
    localValue3 = cmgOperation2.CMGGunStores
    localValue2 = localValue3.SmallArmsDealer
    localValue3 = Wait
    text19 = 0
    localValue3(text19)
  end
  localValue3 = localValue2._config
  if not localValue3 then
    return
  end
  text19 = pairs
  dataCollection3 = localValue1
  text19, dataCollection3, number7, stringHelper4 = text19(dataCollection3)
  for tableHelper2, workingValue20 in text19, dataCollection3, number7, stringHelper4 do
    stringHelper5 = CMG
    stringHelper5 = stringHelper5.createGunStore
    stringHelper = "Small Arms "
    text2 = tostring
    workingValue = tableHelper2
    text2 = text2(workingValue)
    stringHelper = stringHelper .. text2
    text2 = "SmallArmsDealer"
    workingValue = workingValue20.shop
    tableHelper = vector3
    workingValue4 = 0.0
    stringHelper2 = 0.0
    text6 = 0.99
    tableHelper = tableHelper(workingValue4, stringHelper2, text6)
    workingValue = workingValue - tableHelper
    stringHelper5(stringHelper, text2, workingValue)
    stringHelper5 = CMG
    stringHelper5 = stringHelper5.createArea
    stringHelper = "small_arms_"
    text2 = tostring
    workingValue = tableHelper2
    text2 = text2(workingValue)
    stringHelper = stringHelper .. text2
    text2 = workingValue20.shop
    workingValue = cmgOperation3.pistolZone
    workingValue = workingValue.radius
    tableHelper = cmgOperation3.pistolZone
    tableHelper = tableHelper.height
    workingValue4 = rageUiOperation6
    stringHelper2 = text16

    -- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
    function text6()
      local localValue12, localValue22
    end
    workingValue7 = workingValue20
    -- Beginner: Create an interaction area around a world position.
    stringHelper5(stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2, text6, workingValue7)
    stringHelper5 = tCMG
    stringHelper5 = stringHelper5.addBlip
    stringHelper = workingValue20.shop
    stringHelper = stringHelper.x
    text2 = workingValue20.shop
    text2 = text2.y
    workingValue = workingValue20.shop
    workingValue = workingValue.z
    tableHelper = localValue3[2]
    workingValue4 = localValue3[3]
    stringHelper2 = localValue3[4]
    stringHelper5 = stringHelper5(stringHelper, text2, workingValue, tableHelper, workingValue4, stringHelper2)
    stringHelper = CMG
    stringHelper = stringHelper.addBlipContext
    text2 = "Civilian"
    workingValue = stringHelper5
    stringHelper(text2, workingValue)
    stringHelper = workingValue20.van
    if stringHelper then
      stringHelper = AddBlipForRadius
      text2 = workingValue20.shop
      text2 = text2.x
      workingValue = workingValue20.shop
      workingValue = workingValue.y
      tableHelper = workingValue20.shop
      tableHelper = tableHelper.z
      workingValue4 = 20.0
      -- Beginner: result below is blipHandle.
      stringHelper = stringHelper(text2, workingValue, tableHelper, workingValue4)
      text2 = SetBlipColour
      workingValue = stringHelper
      tableHelper = 5
      text2(workingValue, tableHelper)
      text2 = SetBlipAlpha
      workingValue = stringHelper
      tableHelper = 180
      text2(workingValue, tableHelper)
      text2 = CMG
      text2 = text2.addBlipContext
      workingValue = "Civilian"
      tableHelper = stringHelper
      text2(workingValue, tableHelper)
    end
  end
  dataCollection2 = localValue1
  text19 = workingValue15
  dataCollection3 = localValue1
  text19(dataCollection3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1e8e401746".
cmgOperation4(cmgOperation5, iterator)
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20
  localValue1 = {}
  localValue2 = pairs
  localValue3 = dataCollection2
  localValue2, localValue3, text19, dataCollection3 = localValue2(localValue3)
  for number7, stringHelper4 in localValue2, localValue3, text19, dataCollection3 do
    tableHelper2 = stringHelper4.shop
    if tableHelper2 then
      tableHelper2 = #localValue1
      tableHelper2 = tableHelper2 + 1
      workingValue20 = stringHelper4.shop
      localValue1[tableHelper2] = workingValue20
    end
  end
  return localValue1
end
cmgOperation4.getSmallArmsShopCoordsForHudWaypoint = cmgOperation5

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2, workingValue
  localValue2 = CMG
  localValue2 = localValue2.loadAnimDict
  localValue3 = "mp_common"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue2(localValue3)
  localValue2 = TaskPlayAnim
  localValue3 = localValue1
  text19 = "mp_common"
  dataCollection3 = "givetake1_a"
  number7 = 8.0
  stringHelper4 = 8.0
  tableHelper2 = 2000
  workingValue20 = 1
  stringHelper5 = 0
  stringHelper = false
  text2 = false
  workingValue = false
  -- Beginner: Play an animation on a ped.
  localValue2(localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2, workingValue)
  localValue2 = RemoveAnimDict
  localValue3 = "mp_common"
  localValue2(localValue3)
end
cmgOperation5 = RegisterNetEvent
iterator = "efb8051732"
-- Beginner: this function handles network event "efb8051732".

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: localValue1) ===
function createVector3(localValue1)
  local localValue2, localValue3, text19, dataCollection3, number7, stringHelper4, tableHelper2, workingValue20, stringHelper5, stringHelper, text2, workingValue, tableHelper
  localValue2 = GetPlayerFromServerId
  localValue3 = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(localValue3)
  if -1 == localValue2 then
    return
  end
  localValue3 = GetPlayerPed
  text19 = localValue2
  -- Beginner: result below is playerPed.
  localValue3 = localValue3(text19)
  if 0 == localValue3 then
    return
  end
  text19 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  text19 = text19()
  if localValue3 == text19 then
    dataCollection3 = cmgOperation4
    number7 = text19
    dataCollection3(number7)
  end
  dataCollection3 = GetEntityCoords
  number7 = localValue3
  stringHelper4 = true
  -- Beginner: result below is entityCoords.
  dataCollection3 = dataCollection3(number7, stringHelper4)
  number7 = pairs
  stringHelper4 = dataCollection2
  number7, stringHelper4, tableHelper2, workingValue20 = number7(stringHelper4)
  for stringHelper5, stringHelper in number7, stringHelper4, tableHelper2, workingValue20 do
    text2 = stringHelper.pedHandle
    if text2 then
      text2 = GetEntityCoords
      workingValue = stringHelper.pedHandle
      tableHelper = true
      -- Beginner: result below is entityCoords.
      text2 = text2(workingValue, tableHelper)
      workingValue = dataCollection3 - text2
      workingValue = #workingValue
      if workingValue < 10.0 then
        workingValue = cmgOperation4
        tableHelper = stringHelper.pedHandle
        workingValue(tableHelper)
        break
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "efb8051732".
cmgOperation5(iterator, createVector3)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.createDynamicPed
iterator = -1275859404
createVector3 = vector3
number2 = 1444.9714355469
stateFlag5 = 6333.5341796875
number3 = 23.854248046875
createVector3 = createVector3(number2, stateFlag5, number3)
number2 = 90.708656311035
stateFlag5 = true
number3 = nil
workingValue17 = nil
cmgOperation6 = 25.0
cmgOperation7 = nil

-- === HELPER FUNCTION (decompiler name: text20; parameters: none) ===
function text20()
  local localValue1, localValue2
end
cmgOperation5(iterator, createVector3, number2, stateFlag5, number3, workingValue17, cmgOperation6, cmgOperation7, text20)
cmgOperation5 = cmgOperation2.CMGGunStores
cmgOperation5 = cmgOperation5.Legion
cmgOperation5 = cmgOperation5._config
cmgOperation5 = cmgOperation5[1]
iterator = pairs
createVector3 = cmgOperation5
iterator, createVector3, number2, stateFlag5 = iterator(createVector3)
for number3, workingValue17 in iterator, createVector3, number2, stateFlag5 do
  cmgOperation6 = tCMG
  cmgOperation6 = cmgOperation6.addBlip
  cmgOperation7 = workingValue17.x
  text20 = workingValue17.y
  workingValue18 = workingValue17.z
  number4 = 154
  number5 = 1
  text22 = "Melee Store"
  number6 = 1.0
  cmgOperation6 = cmgOperation6(cmgOperation7, text20, workingValue18, number4, number5, text22, number6)
  cmgOperation7 = CMG
  cmgOperation7 = cmgOperation7.addBlipContext
  text20 = "Civilian"
  workingValue18 = cmgOperation6
  cmgOperation7(text20, workingValue18)
end
