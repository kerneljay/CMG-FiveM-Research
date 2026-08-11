--[[
    LEVEL 1 BEGINNER GUIDE — Uislider
    ======================================

    File: cmg/prod/client/rageui/menu/items/UISlider.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: usable inventory item behaviour, specifically the Uislider feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 1
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
local dataTable, dataTable3, dataTable4, workValue9
dataTable = {}
dataTable3 = {}
dataTable3.Y = 0
dataTable3.Width = 431
dataTable3.Height = 38
dataTable.Rectangle = dataTable3
dataTable3 = {}
dataTable3.X = 8
dataTable3.Y = 3
dataTable3.Scale = 0.33
dataTable.Text = dataTable3
dataTable3 = {}
dataTable3.Y = -2
dataTable3.Width = 40
dataTable3.Height = 40
dataTable.LeftBadge = dataTable3
dataTable3 = {}
dataTable3.X = 385
dataTable3.Y = -2
dataTable3.Width = 40
dataTable3.Height = 40
dataTable.RightBadge = dataTable3
dataTable3 = {}
dataTable3.X = 420
dataTable3.Y = 4
dataTable3.Scale = 0.35
dataTable.RightText = dataTable3
dataTable3 = {}
dataTable3.Dictionary = "commonmenu"
dataTable3.Texture = "gradient_nav"
dataTable3.Y = 0
dataTable3.Width = 431
dataTable3.Height = 38
dataTable.SelectedSprite = dataTable3
dataTable3 = {}
dataTable4 = {}
dataTable4.X = 250
dataTable4.Y = 14.5
dataTable4.Width = 150
dataTable4.Height = 9
dataTable3.Background = dataTable4
dataTable4 = {}
dataTable4.X = 250
dataTable4.Y = 14.5
dataTable4.Width = 75
dataTable4.Height = 9
dataTable3.Slider = dataTable4
dataTable4 = {}
dataTable4.X = 323.5
dataTable4.Y = 9
dataTable4.Width = 2.5
dataTable4.Height = 20
dataTable3.Divider = dataTable4
dataTable4 = {}
dataTable4.Dictionary = "commonmenutu"
dataTable4.Texture = "arrowleft"
dataTable4.X = 235
dataTable4.Y = 11.5
dataTable4.Width = 15
dataTable4.Height = 15
dataTable3.LeftArrow = dataTable4
dataTable4 = {}
dataTable4.Dictionary = "commonmenutu"
dataTable4.Texture = "arrowright"
dataTable4.X = 400
dataTable4.Y = 11.5
dataTable4.Width = 15
dataTable4.Height = 15
dataTable3.RightArrow = dataTable4
dataTable4 = RageUI

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) ===
function workValue9(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local rageUiCall8, rageUiCall9, dataTable2, rageUiCall, workValue, rageUiCall2, flag, rageUiCall3, workValue2, rageUiCall4, rageUiCall5, rageUiCall6, workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, workValue8, numberValue6
  rageUiCall8 = RageUI
  rageUiCall8 = rageUiCall8.CurrentMenu
  rageUiCall9 = RageUI
  rageUiCall9 = rageUiCall9.Settings
  rageUiCall9 = rageUiCall9.Audio
  if nil ~= rageUiCall8 then
    dataTable2 = rageUiCall8
    dataTable2 = dataTable2()
    if dataTable2 then
      dataTable2 = {}
      rageUiCall = 1
      workValue = arg3
      rageUiCall2 = 1
      for flag = rageUiCall, workValue, rageUiCall2 do
        rageUiCall3 = table
        rageUiCall3 = rageUiCall3.insert
        workValue2 = dataTable2
        rageUiCall4 = flag
        rageUiCall3(workValue2, rageUiCall4)
      end
      rageUiCall = RageUI
      rageUiCall = rageUiCall.Options
      rageUiCall = rageUiCall + 1
      workValue = rageUiCall8.Pagination
      workValue = workValue.Minimum
      if rageUiCall >= workValue then
        workValue = rageUiCall8.Pagination
        workValue = workValue.Maximum
        if rageUiCall <= workValue then
          workValue = rageUiCall8.Index
          workValue = workValue == rageUiCall
          rageUiCall2 = false
          flag = false
          rageUiCall3 = RageUI
          rageUiCall3 = rageUiCall3.ItemsSafeZone
          workValue2 = rageUiCall8
          rageUiCall3(workValue2)
          rageUiCall3 = false
          workValue2 = arg6.LeftBadge
          rageUiCall4 = RageUI
          rageUiCall4 = rageUiCall4.BadgeStyle
          rageUiCall4 = rageUiCall4.None
          if workValue2 ~= rageUiCall4 then
            workValue2 = arg6.LeftBadge
            if nil ~= workValue2 then
              goto flow_label_60
            end
          end
          workValue2 = 0
          ::flow_label_60::
          if not workValue2 then
            workValue2 = 27
          end
          rageUiCall4 = arg6.RightBadge
          rageUiCall5 = RageUI
          rageUiCall5 = rageUiCall5.BadgeStyle
          rageUiCall5 = rageUiCall5.None
          if rageUiCall4 ~= rageUiCall5 then
            rageUiCall4 = arg6.RightBadge
            if nil ~= rageUiCall4 then
              goto flow_label_73
            end
          end
          rageUiCall4 = 0
          ::flow_label_73::
          if not rageUiCall4 then
            rageUiCall4 = 32
          end
          rageUiCall5 = 0
          rageUiCall6 = rageUiCall8.EnableMouse
          if true == rageUiCall6 then
            rageUiCall6 = rageUiCall8.CursorStyle
            if 0 == rageUiCall6 then
              goto flow_label_84
            end
          end
          rageUiCall6 = rageUiCall8.CursorStyle
          ::flow_label_84::
          if 1 == rageUiCall6 then
            rageUiCall6 = RageUI
            rageUiCall6 = rageUiCall6.ItemsMouseBounds
            workValue3 = rageUiCall8
            workValue4 = workValue
            workValue5 = rageUiCall
            workValue6 = dataTable
            rageUiCall6 = rageUiCall6(workValue3, workValue4, workValue5, workValue6)
            rageUiCall3 = rageUiCall6
          end
          if workValue then
            rageUiCall6 = RenderSprite
            workValue3 = dataTable.SelectedSprite
            workValue3 = workValue3.Dictionary
            workValue4 = dataTable.SelectedSprite
            workValue4 = workValue4.Texture
            workValue5 = rageUiCall8.X
            workValue6 = rageUiCall8.Y
            rageUiCall7 = dataTable.SelectedSprite
            rageUiCall7 = rageUiCall7.Y
            workValue6 = workValue6 + rageUiCall7
            rageUiCall7 = rageUiCall8.SubtitleHeight
            workValue6 = workValue6 + rageUiCall7
            rageUiCall7 = RageUI
            rageUiCall7 = rageUiCall7.ItemOffset
            workValue6 = workValue6 + rageUiCall7
            rageUiCall7 = dataTable.SelectedSprite
            rageUiCall7 = rageUiCall7.Width
            workValue7 = rageUiCall8.WidthOffset
            rageUiCall7 = rageUiCall7 + workValue7
            workValue7 = dataTable.SelectedSprite
            workValue7 = workValue7.Height
            rageUiCall6(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7)
            rageUiCall6 = RageUI
            rageUiCall6 = rageUiCall6.IsMouseInBounds
            workValue3 = rageUiCall8.X
            workValue4 = dataTable3.LeftArrow
            workValue4 = workValue4.X
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall8.SafeZoneSize
            workValue4 = workValue4.X
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall8.WidthOffset
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall8.Y
            workValue5 = dataTable3.LeftArrow
            workValue5 = workValue5.Y
            workValue4 = workValue4 + workValue5
            workValue5 = rageUiCall8.SafeZoneSize
            workValue5 = workValue5.Y
            workValue4 = workValue4 + workValue5
            workValue5 = rageUiCall8.SubtitleHeight
            workValue4 = workValue4 + workValue5
            workValue5 = RageUI
            workValue5 = workValue5.ItemOffset
            workValue4 = workValue4 + workValue5
            workValue5 = dataTable3.LeftArrow
            workValue5 = workValue5.Width
            workValue6 = dataTable3.LeftArrow
            workValue6 = workValue6.Height
            rageUiCall6 = rageUiCall6(workValue3, workValue4, workValue5, workValue6)
            rageUiCall2 = rageUiCall6
            rageUiCall6 = RageUI
            rageUiCall6 = rageUiCall6.IsMouseInBounds
            workValue3 = rageUiCall8.X
            workValue4 = dataTable3.RightArrow
            workValue4 = workValue4.X
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall8.SafeZoneSize
            workValue4 = workValue4.X
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall8.WidthOffset
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall8.Y
            workValue5 = dataTable3.RightArrow
            workValue5 = workValue5.Y
            workValue4 = workValue4 + workValue5
            workValue5 = rageUiCall8.SafeZoneSize
            workValue5 = workValue5.Y
            workValue4 = workValue4 + workValue5
            workValue5 = rageUiCall8.SubtitleHeight
            workValue4 = workValue4 + workValue5
            workValue5 = RageUI
            workValue5 = workValue5.ItemOffset
            workValue4 = workValue4 + workValue5
            workValue5 = dataTable3.RightArrow
            workValue5 = workValue5.Width
            workValue6 = dataTable3.RightArrow
            workValue6 = workValue6.Height
            rageUiCall6 = rageUiCall6(workValue3, workValue4, workValue5, workValue6)
            flag = rageUiCall6
          end
          if true == arg7 or nil == arg7 then
            if workValue then
              rageUiCall6 = arg6.RightLabel
              if nil ~= rageUiCall6 then
                rageUiCall6 = arg6.RightLabel
                if "" ~= rageUiCall6 then
                  rageUiCall6 = RenderText
                  workValue3 = arg6.RightLabel
                  workValue4 = rageUiCall8.X
                  workValue5 = dataTable.RightText
                  workValue5 = workValue5.X
                  workValue4 = workValue4 + workValue5
                  workValue4 = workValue4 - rageUiCall4
                  workValue5 = rageUiCall8.WidthOffset
                  workValue4 = workValue4 + workValue5
                  workValue5 = rageUiCall8.Y
                  workValue6 = dataTable.RightText
                  workValue6 = workValue6.Y
                  workValue5 = workValue5 + workValue6
                  workValue6 = rageUiCall8.SubtitleHeight
                  workValue5 = workValue5 + workValue6
                  workValue6 = RageUI
                  workValue6 = workValue6.ItemOffset
                  workValue5 = workValue5 + workValue6
                  workValue6 = 0
                  rageUiCall7 = dataTable.RightText
                  rageUiCall7 = rageUiCall7.Scale
                  workValue7 = 0
                  numberValue = 0
                  numberValue2 = 0
                  numberValue3 = 255
                  numberValue4 = 2
                  rageUiCall6(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4)
                  rageUiCall6 = MeasureStringWidth
                  workValue3 = arg6.RightLabel
                  workValue4 = 0
                  workValue5 = 0.35
                  rageUiCall6 = rageUiCall6(workValue3, workValue4, workValue5)
                  rageUiCall5 = rageUiCall6
                end
              end
            else
              rageUiCall6 = arg6.RightLabel
              if nil ~= rageUiCall6 then
                rageUiCall6 = arg6.RightLabel
                if "" ~= rageUiCall6 then
                  rageUiCall6 = MeasureStringWidth
                  workValue3 = arg6.RightLabel
                  workValue4 = 0
                  workValue5 = 0.35
                  rageUiCall6 = rageUiCall6(workValue3, workValue4, workValue5)
                  rageUiCall5 = rageUiCall6
                  rageUiCall6 = RenderText
                  workValue3 = arg6.RightLabel
                  workValue4 = rageUiCall8.X
                  workValue5 = dataTable.RightText
                  workValue5 = workValue5.X
                  workValue4 = workValue4 + workValue5
                  workValue4 = workValue4 - rageUiCall4
                  workValue5 = rageUiCall8.WidthOffset
                  workValue4 = workValue4 + workValue5
                  workValue5 = rageUiCall8.Y
                  workValue6 = dataTable.RightText
                  workValue6 = workValue6.Y
                  workValue5 = workValue5 + workValue6
                  workValue6 = rageUiCall8.SubtitleHeight
                  workValue5 = workValue5 + workValue6
                  workValue6 = RageUI
                  workValue6 = workValue6.ItemOffset
                  workValue5 = workValue5 + workValue6
                  workValue6 = 0
                  rageUiCall7 = dataTable.RightText
                  rageUiCall7 = rageUiCall7.Scale
                  workValue7 = 245
                  numberValue = 245
                  numberValue2 = 245
                  numberValue3 = 255
                  numberValue4 = 2
                  rageUiCall6(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4)
                end
              end
            end
          end
          rageUiCall5 = rageUiCall5 + rageUiCall4
          if true == arg7 or nil == arg7 then
            if workValue then
              rageUiCall6 = RenderText
              workValue3 = arg1
              workValue4 = rageUiCall8.X
              workValue5 = dataTable.Text
              workValue5 = workValue5.X
              workValue4 = workValue4 + workValue5
              workValue4 = workValue4 + workValue2
              workValue5 = rageUiCall8.Y
              workValue6 = dataTable.Text
              workValue6 = workValue6.Y
              workValue5 = workValue5 + workValue6
              workValue6 = rageUiCall8.SubtitleHeight
              workValue5 = workValue5 + workValue6
              workValue6 = RageUI
              workValue6 = workValue6.ItemOffset
              workValue5 = workValue5 + workValue6
              workValue6 = 0
              rageUiCall7 = dataTable.Text
              rageUiCall7 = rageUiCall7.Scale
              workValue7 = 0
              numberValue = 0
              numberValue2 = 0
              numberValue3 = 255
              rageUiCall6(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3)
              rageUiCall6 = RenderSprite
              workValue3 = dataTable3.LeftArrow
              workValue3 = workValue3.Dictionary
              workValue4 = dataTable3.LeftArrow
              workValue4 = workValue4.Texture
              workValue5 = rageUiCall8.X
              workValue6 = dataTable3.LeftArrow
              workValue6 = workValue6.X
              workValue5 = workValue5 + workValue6
              workValue6 = rageUiCall8.WidthOffset
              workValue5 = workValue5 + workValue6
              workValue5 = workValue5 - rageUiCall5
              workValue6 = rageUiCall8.Y
              rageUiCall7 = dataTable3.LeftArrow
              rageUiCall7 = rageUiCall7.Y
              workValue6 = workValue6 + rageUiCall7
              rageUiCall7 = rageUiCall8.SubtitleHeight
              workValue6 = workValue6 + rageUiCall7
              rageUiCall7 = RageUI
              rageUiCall7 = rageUiCall7.ItemOffset
              workValue6 = workValue6 + rageUiCall7
              rageUiCall7 = dataTable3.LeftArrow
              rageUiCall7 = rageUiCall7.Width
              workValue7 = dataTable3.LeftArrow
              workValue7 = workValue7.Height
              numberValue = 0
              numberValue2 = 0
              numberValue3 = 0
              numberValue4 = 0
              numberValue5 = 255
              rageUiCall6(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4, numberValue5)
              rageUiCall6 = RenderSprite
              workValue3 = dataTable3.RightArrow
              workValue3 = workValue3.Dictionary
              workValue4 = dataTable3.RightArrow
              workValue4 = workValue4.Texture
              workValue5 = rageUiCall8.X
              workValue6 = dataTable3.RightArrow
              workValue6 = workValue6.X
              workValue5 = workValue5 + workValue6
              workValue6 = rageUiCall8.WidthOffset
              workValue5 = workValue5 + workValue6
              workValue5 = workValue5 - rageUiCall5
              workValue6 = rageUiCall8.Y
              rageUiCall7 = dataTable3.RightArrow
              rageUiCall7 = rageUiCall7.Y
              workValue6 = workValue6 + rageUiCall7
              rageUiCall7 = rageUiCall8.SubtitleHeight
              workValue6 = workValue6 + rageUiCall7
              rageUiCall7 = RageUI
              rageUiCall7 = rageUiCall7.ItemOffset
              workValue6 = workValue6 + rageUiCall7
              rageUiCall7 = dataTable3.RightArrow
              rageUiCall7 = rageUiCall7.Width
              workValue7 = dataTable3.RightArrow
              workValue7 = workValue7.Height
              numberValue = 0
              numberValue2 = 0
              numberValue3 = 0
              numberValue4 = 0
              numberValue5 = 255
              rageUiCall6(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4, numberValue5)
            else
              rageUiCall6 = RenderText
              workValue3 = arg1
              workValue4 = rageUiCall8.X
              workValue5 = dataTable.Text
              workValue5 = workValue5.X
              workValue4 = workValue4 + workValue5
              workValue4 = workValue4 + workValue2
              workValue5 = rageUiCall8.Y
              workValue6 = dataTable.Text
              workValue6 = workValue6.Y
              workValue5 = workValue5 + workValue6
              workValue6 = rageUiCall8.SubtitleHeight
              workValue5 = workValue5 + workValue6
              workValue6 = RageUI
              workValue6 = workValue6.ItemOffset
              workValue5 = workValue5 + workValue6
              workValue6 = 0
              rageUiCall7 = dataTable.Text
              rageUiCall7 = rageUiCall7.Scale
              workValue7 = 245
              numberValue = 245
              numberValue2 = 245
              numberValue3 = 255
              rageUiCall6(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3)
            end
          else
            rageUiCall6 = RenderText
            workValue3 = arg1
            workValue4 = rageUiCall8.X
            workValue5 = dataTable.Text
            workValue5 = workValue5.X
            workValue4 = workValue4 + workValue5
            workValue4 = workValue4 + workValue2
            workValue5 = rageUiCall8.Y
            workValue6 = dataTable.Text
            workValue6 = workValue6.Y
            workValue5 = workValue5 + workValue6
            workValue6 = rageUiCall8.SubtitleHeight
            workValue5 = workValue5 + workValue6
            workValue6 = RageUI
            workValue6 = workValue6.ItemOffset
            workValue5 = workValue5 + workValue6
            workValue6 = 0
            rageUiCall7 = dataTable.Text
            rageUiCall7 = rageUiCall7.Scale
            workValue7 = 163
            numberValue = 159
            numberValue2 = 148
            numberValue3 = 255
            rageUiCall6(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3)
            if workValue then
              rageUiCall6 = RenderSprite
              workValue3 = dataTable3.LeftArrow
              workValue3 = workValue3.Dictionary
              workValue4 = dataTable3.LeftArrow
              workValue4 = workValue4.Texture
              workValue5 = rageUiCall8.X
              workValue6 = dataTable3.LeftArrow
              workValue6 = workValue6.X
              workValue5 = workValue5 + workValue6
              workValue6 = rageUiCall8.WidthOffset
              workValue5 = workValue5 + workValue6
              workValue5 = workValue5 - rageUiCall5
              workValue6 = rageUiCall8.Y
              rageUiCall7 = dataTable3.LeftArrow
              rageUiCall7 = rageUiCall7.Y
              workValue6 = workValue6 + rageUiCall7
              rageUiCall7 = rageUiCall8.SubtitleHeight
              workValue6 = workValue6 + rageUiCall7
              rageUiCall7 = RageUI
              rageUiCall7 = rageUiCall7.ItemOffset
              workValue6 = workValue6 + rageUiCall7
              rageUiCall7 = dataTable3.LeftArrow
              rageUiCall7 = rageUiCall7.Width
              workValue7 = dataTable3.LeftArrow
              workValue7 = workValue7.Height
              numberValue = 163
              numberValue2 = 159
              numberValue3 = 148
              numberValue4 = 255
              rageUiCall6(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4)
              rageUiCall6 = RenderSprite
              workValue3 = dataTable3.RightArrow
              workValue3 = workValue3.Dictionary
              workValue4 = dataTable3.RightArrow
              workValue4 = workValue4.Texture
              workValue5 = rageUiCall8.X
              workValue6 = dataTable3.RightArrow
              workValue6 = workValue6.X
              workValue5 = workValue5 + workValue6
              workValue6 = rageUiCall8.WidthOffset
              workValue5 = workValue5 + workValue6
              workValue5 = workValue5 - rageUiCall5
              workValue6 = rageUiCall8.Y
              rageUiCall7 = dataTable3.RightArrow
              rageUiCall7 = rageUiCall7.Y
              workValue6 = workValue6 + rageUiCall7
              rageUiCall7 = rageUiCall8.SubtitleHeight
              workValue6 = workValue6 + rageUiCall7
              rageUiCall7 = RageUI
              rageUiCall7 = rageUiCall7.ItemOffset
              workValue6 = workValue6 + rageUiCall7
              rageUiCall7 = dataTable3.RightArrow
              rageUiCall7 = rageUiCall7.Width
              workValue7 = dataTable3.RightArrow
              workValue7 = workValue7.Height
              numberValue = 163
              numberValue2 = 159
              numberValue3 = 148
              numberValue4 = 255
              rageUiCall6(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4)
            end
          end
          rageUiCall6 = type
          workValue3 = arg6
          rageUiCall6 = rageUiCall6(workValue3)
          if "table" == rageUiCall6 then
            rageUiCall6 = arg6.Enabled
            if true ~= rageUiCall6 then
              rageUiCall6 = arg6.Enabled
              if nil ~= rageUiCall6 then
                goto flow_label_702
              end
            end
            rageUiCall6 = type
            workValue3 = arg6
            rageUiCall6 = rageUiCall6(workValue3)
            if "table" ~= rageUiCall6 then
              goto flow_label_767
            end
            rageUiCall6 = arg6.LeftBadge
            if nil ~= rageUiCall6 then
              rageUiCall6 = arg6.LeftBadge
              workValue3 = RageUI
              workValue3 = workValue3.BadgeStyle
              workValue3 = workValue3.None
              if rageUiCall6 ~= workValue3 then
                rageUiCall6 = arg6.LeftBadge
                workValue3 = workValue
                rageUiCall6 = rageUiCall6(workValue3)
                workValue3 = RenderSprite
                workValue4 = rageUiCall6.BadgeDictionary
                if not workValue4 then
                  workValue4 = "commonmenu"
                end
                workValue5 = rageUiCall6.BadgeTexture
                if not workValue5 then
                  workValue5 = ""
                end
                workValue6 = rageUiCall8.X
                rageUiCall7 = rageUiCall8.Y
                workValue7 = dataTable.LeftBadge
                workValue7 = workValue7.Y
                rageUiCall7 = rageUiCall7 + workValue7
                workValue7 = rageUiCall8.SubtitleHeight
                rageUiCall7 = rageUiCall7 + workValue7
                workValue7 = RageUI
                workValue7 = workValue7.ItemOffset
                rageUiCall7 = rageUiCall7 + workValue7
                workValue7 = dataTable.LeftBadge
                workValue7 = workValue7.Width
                numberValue = dataTable.LeftBadge
                numberValue = numberValue.Height
                numberValue2 = 0
                numberValue3 = rageUiCall6.BadgeColour
                if numberValue3 then
                  numberValue3 = rageUiCall6.BadgeColour
                  numberValue3 = numberValue3.R
                  if numberValue3 then
                    goto flow_label_597
                  end
                end
                numberValue3 = 255
                ::flow_label_597::
                numberValue4 = rageUiCall6.BadgeColour
                if numberValue4 then
                  numberValue4 = rageUiCall6.BadgeColour
                  numberValue4 = numberValue4.G
                  if numberValue4 then
                    goto flow_label_605
                  end
                end
                numberValue4 = 255
                ::flow_label_605::
                numberValue5 = rageUiCall6.BadgeColour
                if numberValue5 then
                  numberValue5 = rageUiCall6.BadgeColour
                  numberValue5 = numberValue5.B
                  if numberValue5 then
                    goto flow_label_613
                  end
                end
                numberValue5 = 255
                ::flow_label_613::
                workValue8 = rageUiCall6.BadgeColour
                if workValue8 then
                  workValue8 = rageUiCall6.BadgeColour
                  workValue8 = workValue8.A
                  if workValue8 then
                    goto flow_label_621
                  end
                end
                workValue8 = 255
                ::flow_label_621::
                workValue3(workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, workValue8)
              end
            end
            rageUiCall6 = arg6.RightBadge
            if nil == rageUiCall6 then
              goto flow_label_767
            end
            rageUiCall6 = arg6.RightBadge
            workValue3 = RageUI
            workValue3 = workValue3.BadgeStyle
            workValue3 = workValue3.None
            if rageUiCall6 == workValue3 then
              goto flow_label_767
            end
            rageUiCall6 = arg6.RightBadge
            workValue3 = workValue
            rageUiCall6 = rageUiCall6(workValue3)
            workValue3 = RenderSprite
            workValue4 = rageUiCall6.BadgeDictionary
            if not workValue4 then
              workValue4 = "commonmenu"
            end
            workValue5 = rageUiCall6.BadgeTexture
            if not workValue5 then
              workValue5 = ""
            end
            workValue6 = rageUiCall8.X
            rageUiCall7 = dataTable.RightBadge
            rageUiCall7 = rageUiCall7.X
            workValue6 = workValue6 + rageUiCall7
            rageUiCall7 = rageUiCall8.WidthOffset
            workValue6 = workValue6 + rageUiCall7
            rageUiCall7 = rageUiCall8.Y
            workValue7 = dataTable.RightBadge
            workValue7 = workValue7.Y
            rageUiCall7 = rageUiCall7 + workValue7
            workValue7 = rageUiCall8.SubtitleHeight
            rageUiCall7 = rageUiCall7 + workValue7
            workValue7 = RageUI
            workValue7 = workValue7.ItemOffset
            rageUiCall7 = rageUiCall7 + workValue7
            workValue7 = dataTable.RightBadge
            workValue7 = workValue7.Width
            numberValue = dataTable.RightBadge
            numberValue = numberValue.Height
            numberValue2 = 0
            numberValue3 = rageUiCall6.BadgeColour
            if numberValue3 then
              numberValue3 = rageUiCall6.BadgeColour
              numberValue3 = numberValue3.R
              if numberValue3 then
                goto flow_label_676
              end
            end
            numberValue3 = 255
            ::flow_label_676::
            numberValue4 = rageUiCall6.BadgeColour
            if numberValue4 then
              numberValue4 = rageUiCall6.BadgeColour
              numberValue4 = numberValue4.G
              if numberValue4 then
                goto flow_label_684
              end
            end
            numberValue4 = 255
            ::flow_label_684::
            numberValue5 = rageUiCall6.BadgeColour
            if numberValue5 then
              numberValue5 = rageUiCall6.BadgeColour
              numberValue5 = numberValue5.B
              if numberValue5 then
                goto flow_label_692
              end
            end
            numberValue5 = 255
            ::flow_label_692::
            workValue8 = rageUiCall6.BadgeColour
            if workValue8 then
              workValue8 = rageUiCall6.BadgeColour
              workValue8 = workValue8.A
              if workValue8 then
                goto flow_label_700
              end
            end
            workValue8 = 255
            ::flow_label_700::
            workValue3(workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, workValue8)
            goto flow_label_767
            ::flow_label_702::
            rageUiCall6 = RageUI
            rageUiCall6 = rageUiCall6.BadgeStyle
            rageUiCall6 = rageUiCall6.Lock
            workValue3 = RageUI
            workValue3 = workValue3.BadgeStyle
            workValue3 = workValue3.None
            if rageUiCall6 ~= workValue3 and nil ~= rageUiCall6 then
              workValue3 = rageUiCall6
              workValue4 = workValue
              workValue3 = workValue3(workValue4)
              workValue4 = RenderSprite
              workValue5 = workValue3.BadgeDictionary
              if not workValue5 then
                workValue5 = "commonmenu"
              end
              workValue6 = workValue3.BadgeTexture
              if not workValue6 then
                workValue6 = ""
              end
              rageUiCall7 = rageUiCall8.X
              workValue7 = rageUiCall8.Y
              numberValue = dataTable.LeftBadge
              numberValue = numberValue.Y
              workValue7 = workValue7 + numberValue
              numberValue = rageUiCall8.SubtitleHeight
              workValue7 = workValue7 + numberValue
              numberValue = RageUI
              numberValue = numberValue.ItemOffset
              workValue7 = workValue7 + numberValue
              numberValue = dataTable.LeftBadge
              numberValue = numberValue.Width
              numberValue2 = dataTable.LeftBadge
              numberValue2 = numberValue2.Height
              numberValue3 = 0
              numberValue4 = workValue3.BadgeColour
              numberValue4 = numberValue4.R
              if not numberValue4 then
                numberValue4 = 255
              end
              numberValue5 = workValue3.BadgeColour
              numberValue5 = numberValue5.G
              if not numberValue5 then
                numberValue5 = 255
              end
              workValue8 = workValue3.BadgeColour
              workValue8 = workValue8.B
              if not workValue8 then
                workValue8 = 255
              end
              numberValue6 = workValue3.BadgeColour
              numberValue6 = numberValue6.A
              if not numberValue6 then
                numberValue6 = 255
              end
              workValue4(workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, workValue8, numberValue6)
            end
          else
            rageUiCall6 = error
            workValue3 = "UICheckBox Style is not a `table`"
            rageUiCall6(workValue3)
          end
          ::flow_label_767::
          rageUiCall6 = RenderRectangle
          workValue3 = rageUiCall8.X
          workValue4 = dataTable3.Background
          workValue4 = workValue4.X
          workValue3 = workValue3 + workValue4
          workValue4 = rageUiCall8.WidthOffset
          workValue3 = workValue3 + workValue4
          workValue3 = workValue3 - rageUiCall5
          workValue4 = rageUiCall8.Y
          workValue5 = dataTable3.Background
          workValue5 = workValue5.Y
          workValue4 = workValue4 + workValue5
          workValue5 = rageUiCall8.SubtitleHeight
          workValue4 = workValue4 + workValue5
          workValue5 = RageUI
          workValue5 = workValue5.ItemOffset
          workValue4 = workValue4 + workValue5
          workValue5 = dataTable3.Background
          workValue5 = workValue5.Width
          workValue6 = dataTable3.Background
          workValue6 = workValue6.Height
          rageUiCall7 = 4
          workValue7 = 32
          numberValue = 57
          numberValue2 = 255
          rageUiCall6(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2)
          rageUiCall6 = RenderRectangle
          workValue3 = rageUiCall8.X
          workValue4 = dataTable3.Slider
          workValue4 = workValue4.X
          workValue3 = workValue3 + workValue4
          workValue4 = dataTable3.Background
          workValue4 = workValue4.Width
          workValue5 = dataTable3.Slider
          workValue5 = workValue5.Width
          workValue4 = workValue4 - workValue5
          workValue5 = #dataTable2
          workValue5 = workValue5 - 1
          workValue4 = workValue4 / workValue5
          workValue5 = arg2 - 1
          workValue4 = workValue4 * workValue5
          workValue3 = workValue3 + workValue4
          workValue4 = rageUiCall8.WidthOffset
          workValue3 = workValue3 + workValue4
          workValue3 = workValue3 - rageUiCall5
          workValue4 = rageUiCall8.Y
          workValue5 = dataTable3.Slider
          workValue5 = workValue5.Y
          workValue4 = workValue4 + workValue5
          workValue5 = rageUiCall8.SubtitleHeight
          workValue4 = workValue4 + workValue5
          workValue5 = RageUI
          workValue5 = workValue5.ItemOffset
          workValue4 = workValue4 + workValue5
          workValue5 = dataTable3.Slider
          workValue5 = workValue5.Width
          workValue6 = dataTable3.Slider
          workValue6 = workValue6.Height
          rageUiCall7 = 57
          workValue7 = 116
          numberValue = 200
          numberValue2 = 255
          rageUiCall6(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2)
          if arg5 then
            rageUiCall6 = RenderRectangle
            workValue3 = rageUiCall8.X
            workValue4 = dataTable3.Divider
            workValue4 = workValue4.X
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall8.WidthOffset
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall8.Y
            workValue5 = dataTable3.Divider
            workValue5 = workValue5.Y
            workValue4 = workValue4 + workValue5
            workValue5 = rageUiCall8.SubtitleHeight
            workValue4 = workValue4 + workValue5
            workValue5 = RageUI
            workValue5 = workValue5.ItemOffset
            workValue4 = workValue4 + workValue5
            workValue5 = dataTable3.Divider
            workValue5 = workValue5.Width
            workValue6 = dataTable3.Divider
            workValue6 = workValue6.Height
            rageUiCall7 = 245
            workValue7 = 245
            numberValue = 245
            numberValue2 = 255
            rageUiCall6(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2)
          end
          rageUiCall6 = RageUI
          workValue3 = RageUI
          workValue3 = workValue3.ItemOffset
          workValue4 = dataTable.Rectangle
          workValue4 = workValue4.Height
          workValue3 = workValue3 + workValue4
          rageUiCall6.ItemOffset = workValue3
          rageUiCall6 = RageUI
          rageUiCall6 = rageUiCall6.ItemsDescription
          workValue3 = rageUiCall8
          workValue4 = arg4
          workValue5 = workValue
          rageUiCall6(workValue3, workValue4, workValue5)
          if workValue then
            rageUiCall6 = rageUiCall8.Controls
            rageUiCall6 = rageUiCall6.Left
            rageUiCall6 = rageUiCall6.Active
            if not rageUiCall6 then
              rageUiCall6 = rageUiCall8.Controls
              rageUiCall6 = rageUiCall6.Click
              rageUiCall6 = rageUiCall6.Active
              if not (rageUiCall6 and rageUiCall2) then
                goto flow_label_937
              end
            end
            rageUiCall6 = rageUiCall8.Controls
            rageUiCall6 = rageUiCall6.Right
            rageUiCall6 = rageUiCall6.Active
            if not rageUiCall6 then
              rageUiCall6 = rageUiCall8.Controls
              rageUiCall6 = rageUiCall6.Click
              rageUiCall6 = rageUiCall6.Active
              if not rageUiCall6 or not flag then
                arg2 = arg2 - 1
                if arg2 < 1 then
                  arg2 = #dataTable2
                end
                rageUiCall6 = RageUI
                rageUiCall6 = rageUiCall6.PlaySound
                workValue3 = rageUiCall9.Use
                workValue3 = rageUiCall9[workValue3]
                workValue3 = workValue3.LeftRight
                workValue3 = workValue3.audioName
                workValue4 = rageUiCall9.Use
                workValue4 = rageUiCall9[workValue4]
                workValue4 = workValue4.LeftRight
                workValue4 = workValue4.audioRef
                rageUiCall6(workValue3, workValue4)
            end
          end
          else
            ::flow_label_937::
            if workValue then
              rageUiCall6 = rageUiCall8.Controls
              rageUiCall6 = rageUiCall6.Right
              rageUiCall6 = rageUiCall6.Active
              if not rageUiCall6 then
                rageUiCall6 = rageUiCall8.Controls
                rageUiCall6 = rageUiCall6.Click
                rageUiCall6 = rageUiCall6.Active
                if not (rageUiCall6 and flag) then
                  goto flow_label_980
                end
              end
              rageUiCall6 = rageUiCall8.Controls
              rageUiCall6 = rageUiCall6.Left
              rageUiCall6 = rageUiCall6.Active
              if not rageUiCall6 then
                rageUiCall6 = rageUiCall8.Controls
                rageUiCall6 = rageUiCall6.Click
                rageUiCall6 = rageUiCall6.Active
                if not rageUiCall6 or not rageUiCall2 then
                  arg2 = arg2 + 1
                  rageUiCall6 = #dataTable2
                  if arg2 > rageUiCall6 then
                    arg2 = 1
                  end
                  rageUiCall6 = RageUI
                  rageUiCall6 = rageUiCall6.PlaySound
                  workValue3 = rageUiCall9.Use
                  workValue3 = rageUiCall9[workValue3]
                  workValue3 = workValue3.LeftRight
                  workValue3 = workValue3.audioName
                  workValue4 = rageUiCall9.Use
                  workValue4 = rageUiCall9[workValue4]
                  workValue4 = workValue4.LeftRight
                  workValue4 = workValue4.audioRef
                  rageUiCall6(workValue3, workValue4)
                end
              end
            end
          end
          ::flow_label_980::
          if workValue then
            rageUiCall6 = rageUiCall8.Controls
            rageUiCall6 = rageUiCall6.Select
            rageUiCall6 = rageUiCall6.Active
            if not rageUiCall6 then
              if not rageUiCall3 then
                goto flow_label_1009
              end
              rageUiCall6 = rageUiCall8.Controls
              rageUiCall6 = rageUiCall6.Click
              rageUiCall6 = rageUiCall6.Active
              if not rageUiCall6 or rageUiCall2 or flag then
                goto flow_label_1009
              end
            end
            rageUiCall6 = RageUI
            rageUiCall6 = rageUiCall6.PlaySound
            workValue3 = rageUiCall9.Use
            workValue3 = rageUiCall9[workValue3]
            workValue3 = workValue3.Select
            workValue3 = workValue3.audioName
            workValue4 = rageUiCall9.Use
            workValue4 = rageUiCall9[workValue4]
            workValue4 = workValue4.Select
            workValue4 = workValue4.audioRef
            rageUiCall6(workValue3, workValue4)
          end
          ::flow_label_1009::
          if arg7 then
            rageUiCall6 = arg8
            workValue3 = rageUiCall3
            workValue4 = workValue
            workValue5 = rageUiCall8.Controls
            workValue5 = workValue5.Select
            workValue5 = workValue5.Active
            if not workValue5 then
              if not rageUiCall3 then
                goto flow_label_1034
                workValue5 = rageUiCall3 or workValue5
              end
              workValue5 = rageUiCall8.Controls
              workValue5 = workValue5.Click
              workValue5 = workValue5.Active
            end
            workValue5 = workValue5 and not rageUiCall2 and not flag and workValue5
            ::flow_label_1034::
            workValue6 = arg2
            rageUiCall6(workValue3, workValue4, workValue5, workValue6)
          end
        end
      end
      workValue = RageUI
      rageUiCall2 = RageUI
      rageUiCall2 = rageUiCall2.Options
      rageUiCall2 = rageUiCall2 + 1
      workValue.Options = rageUiCall2
    end
  end
end
dataTable4.Slider = workValue9
