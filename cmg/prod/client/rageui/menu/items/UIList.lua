--[[
    LEVEL 1 BEGINNER GUIDE — Uilist
    ====================================

    File: cmg/prod/client/rageui/menu/items/UIList.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: usable inventory item behaviour, specifically the Uilist feature.

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
local dataTable, dataTable2, rageUiCall8, workValue10
dataTable = {}
dataTable2 = {}
dataTable2.Y = 0
dataTable2.Width = 431
dataTable2.Height = 38
dataTable.Rectangle = dataTable2
dataTable2 = {}
dataTable2.X = 8
dataTable2.Y = 3
dataTable2.Scale = 0.33
dataTable.Text = dataTable2
dataTable2 = {}
dataTable2.Y = -2
dataTable2.Width = 40
dataTable2.Height = 40
dataTable.LeftBadge = dataTable2
dataTable2 = {}
dataTable2.X = 385
dataTable2.Y = -2
dataTable2.Width = 40
dataTable2.Height = 40
dataTable.RightBadge = dataTable2
dataTable2 = {}
dataTable2.X = 420
dataTable2.Y = 4
dataTable2.Scale = 0.35
dataTable.RightText = dataTable2
dataTable2 = {}
dataTable2.Dictionary = "commonmenu"
dataTable2.Texture = "gradient_nav"
dataTable2.Y = 0
dataTable2.Width = 431
dataTable2.Height = 38
dataTable.SelectedSprite = dataTable2
dataTable2 = {}
rageUiCall8 = {}
rageUiCall8.Dictionary = "commonmenu"
rageUiCall8.Texture = "arrowleft"
rageUiCall8.X = 378
rageUiCall8.Y = 3
rageUiCall8.Width = 30
rageUiCall8.Height = 30
dataTable2.LeftArrow = rageUiCall8
rageUiCall8 = {}
rageUiCall8.Dictionary = "commonmenu"
rageUiCall8.Texture = "arrowright"
rageUiCall8.X = 400
rageUiCall8.Y = 3
rageUiCall8.Width = 30
rageUiCall8.Height = 30
dataTable2.RightArrow = rageUiCall8
rageUiCall8 = {}
rageUiCall8.X = 403
rageUiCall8.Y = 3
rageUiCall8.Scale = 0.35
dataTable2.Text = rageUiCall8
rageUiCall8 = RageUI

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) ===
function workValue10(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
  local rageUiCall9, rageUiCall, workValue, rageUiCall2, flag, rageUiCall3, workValue2, rageUiCall4, rageUiCall5, rageUiCall6, textValue, workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4, workValue8, workValue9, numberValue5
  rageUiCall9 = RageUI
  rageUiCall9 = rageUiCall9.CurrentMenu
  if nil ~= rageUiCall9 then
    rageUiCall = rageUiCall9
    rageUiCall = rageUiCall()
    if rageUiCall then
      rageUiCall = RageUI
      rageUiCall = rageUiCall.Options
      rageUiCall = rageUiCall + 1
      workValue = rageUiCall9.Pagination
      workValue = workValue.Minimum
      if rageUiCall >= workValue then
        workValue = rageUiCall9.Pagination
        workValue = workValue.Maximum
        if rageUiCall <= workValue then
          workValue = rageUiCall9.Index
          workValue = workValue == rageUiCall
          rageUiCall2 = false
          flag = false
          rageUiCall3 = RageUI
          rageUiCall3 = rageUiCall3.ItemsSafeZone
          workValue2 = rageUiCall9
          rageUiCall3(workValue2)
          rageUiCall3 = false
          workValue2 = arg5.LeftBadge
          rageUiCall4 = RageUI
          rageUiCall4 = rageUiCall4.BadgeStyle
          rageUiCall4 = rageUiCall4.None
          if workValue2 ~= rageUiCall4 then
            workValue2 = arg5.LeftBadge
            if nil ~= workValue2 then
              goto flow_label_45
            end
          end
          workValue2 = 0
          ::flow_label_45::
          if not workValue2 then
            workValue2 = 27
          end
          rageUiCall4 = arg5.RightBadge
          rageUiCall5 = RageUI
          rageUiCall5 = rageUiCall5.BadgeStyle
          rageUiCall5 = rageUiCall5.None
          if rageUiCall4 ~= rageUiCall5 then
            rageUiCall4 = arg5.RightBadge
            if nil ~= rageUiCall4 then
              goto flow_label_58
            end
          end
          rageUiCall4 = 0
          ::flow_label_58::
          if not rageUiCall4 then
            rageUiCall4 = 32
          end
          rageUiCall5 = 0
          rageUiCall6 = rageUiCall9.EnableMouse
          if true == rageUiCall6 then
            rageUiCall6 = rageUiCall9.CursorStyle
            if 0 == rageUiCall6 then
              goto flow_label_69
            end
          end
          rageUiCall6 = rageUiCall9.CursorStyle
          ::flow_label_69::
          if 1 == rageUiCall6 then
            rageUiCall6 = RageUI
            rageUiCall6 = rageUiCall6.ItemsMouseBounds
            textValue = rageUiCall9
            workValue3 = workValue
            workValue4 = rageUiCall
            workValue5 = dataTable
            rageUiCall6 = rageUiCall6(textValue, workValue3, workValue4, workValue5)
            rageUiCall3 = rageUiCall6
          end
          rageUiCall6 = type
          textValue = arg2[arg3]
          rageUiCall6 = rageUiCall6(textValue)
          if "table" == rageUiCall6 then
            rageUiCall6 = string
            rageUiCall6 = rageUiCall6.format
            textValue = "\226\134\144 %s \226\134\146"
            workValue3 = arg2[arg3]
            workValue3 = workValue3.Name
            rageUiCall6 = rageUiCall6(textValue, workValue3)
            if rageUiCall6 then
              goto flow_label_98
            end
          end
          rageUiCall6 = string
          rageUiCall6 = rageUiCall6.format
          textValue = "\226\134\144 %s \226\134\146"
          workValue3 = arg2[arg3]
          rageUiCall6 = rageUiCall6(textValue, workValue3)
          if not rageUiCall6 then
            rageUiCall6 = "NIL"
          end
          ::flow_label_98::
          if workValue then
            textValue = RenderSprite
            workValue3 = dataTable.SelectedSprite
            workValue3 = workValue3.Dictionary
            workValue4 = dataTable.SelectedSprite
            workValue4 = workValue4.Texture
            workValue5 = rageUiCall9.X
            workValue6 = rageUiCall9.Y
            rageUiCall7 = dataTable.SelectedSprite
            rageUiCall7 = rageUiCall7.Y
            workValue6 = workValue6 + rageUiCall7
            rageUiCall7 = rageUiCall9.SubtitleHeight
            workValue6 = workValue6 + rageUiCall7
            rageUiCall7 = RageUI
            rageUiCall7 = rageUiCall7.ItemOffset
            workValue6 = workValue6 + rageUiCall7
            rageUiCall7 = dataTable.SelectedSprite
            rageUiCall7 = rageUiCall7.Width
            workValue7 = rageUiCall9.WidthOffset
            rageUiCall7 = rageUiCall7 + workValue7
            workValue7 = dataTable.SelectedSprite
            workValue7 = workValue7.Height
            textValue(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7)
          end
          if true == arg6 or nil == arg6 then
            if workValue then
              textValue = arg5.RightLabel
              if nil ~= textValue then
                textValue = arg5.RightLabel
                if "" ~= textValue then
                  textValue = RenderText
                  workValue3 = arg5.RightLabel
                  workValue4 = rageUiCall9.X
                  workValue5 = dataTable.RightText
                  workValue5 = workValue5.X
                  workValue4 = workValue4 + workValue5
                  workValue4 = workValue4 - rageUiCall4
                  workValue5 = rageUiCall9.WidthOffset
                  workValue4 = workValue4 + workValue5
                  workValue5 = rageUiCall9.Y
                  workValue6 = dataTable.RightText
                  workValue6 = workValue6.Y
                  workValue5 = workValue5 + workValue6
                  workValue6 = rageUiCall9.SubtitleHeight
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
                  textValue(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4)
                  textValue = MeasureStringWidth
                  workValue3 = arg5.RightLabel
                  workValue4 = 0
                  workValue5 = 0.35
                  textValue = textValue(workValue3, workValue4, workValue5)
                  rageUiCall5 = textValue
                end
              end
            else
              textValue = arg5.RightLabel
              if nil ~= textValue then
                textValue = arg5.RightLabel
                if "" ~= textValue then
                  textValue = MeasureStringWidth
                  workValue3 = arg5.RightLabel
                  workValue4 = 0
                  workValue5 = 0.35
                  textValue = textValue(workValue3, workValue4, workValue5)
                  rageUiCall5 = textValue
                  textValue = RenderText
                  workValue3 = arg5.RightLabel
                  workValue4 = rageUiCall9.X
                  workValue5 = dataTable.RightText
                  workValue5 = workValue5.X
                  workValue4 = workValue4 + workValue5
                  workValue4 = workValue4 - rageUiCall4
                  workValue5 = rageUiCall9.WidthOffset
                  workValue4 = workValue4 + workValue5
                  workValue5 = rageUiCall9.Y
                  workValue6 = dataTable.RightText
                  workValue6 = workValue6.Y
                  workValue5 = workValue5 + workValue6
                  workValue6 = rageUiCall9.SubtitleHeight
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
                  textValue(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4)
                end
              end
            end
          end
          textValue = rageUiCall4 * 1.3
          rageUiCall5 = textValue + rageUiCall5
          if true == arg6 or nil == arg6 then
            if workValue then
              textValue = RenderText
              workValue3 = arg1
              workValue4 = rageUiCall9.X
              workValue5 = dataTable.Text
              workValue5 = workValue5.X
              workValue4 = workValue4 + workValue5
              workValue4 = workValue4 + workValue2
              workValue5 = rageUiCall9.Y
              workValue6 = dataTable.Text
              workValue6 = workValue6.Y
              workValue5 = workValue5 + workValue6
              workValue6 = rageUiCall9.SubtitleHeight
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
              textValue(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3)
              textValue = RenderText
              workValue3 = rageUiCall6
              workValue4 = rageUiCall9.X
              workValue5 = dataTable2.Text
              workValue5 = workValue5.X
              workValue4 = workValue4 + workValue5
              workValue4 = workValue4 + 15
              workValue5 = rageUiCall9.WidthOffset
              workValue4 = workValue4 + workValue5
              workValue4 = workValue4 - rageUiCall5
              workValue5 = rageUiCall9.Y
              workValue6 = dataTable2.Text
              workValue6 = workValue6.Y
              workValue5 = workValue5 + workValue6
              workValue6 = rageUiCall9.SubtitleHeight
              workValue5 = workValue5 + workValue6
              workValue6 = RageUI
              workValue6 = workValue6.ItemOffset
              workValue5 = workValue5 + workValue6
              workValue6 = 0
              rageUiCall7 = dataTable2.Text
              rageUiCall7 = rageUiCall7.Scale
              workValue7 = 0
              numberValue = 0
              numberValue2 = 0
              numberValue3 = 255
              numberValue4 = 2
              textValue(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4)
            else
              textValue = RenderText
              workValue3 = arg1
              workValue4 = rageUiCall9.X
              workValue5 = dataTable.Text
              workValue5 = workValue5.X
              workValue4 = workValue4 + workValue5
              workValue4 = workValue4 + workValue2
              workValue5 = rageUiCall9.Y
              workValue6 = dataTable.Text
              workValue6 = workValue6.Y
              workValue5 = workValue5 + workValue6
              workValue6 = rageUiCall9.SubtitleHeight
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
              textValue(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3)
              textValue = RenderText
              workValue3 = rageUiCall6
              workValue4 = rageUiCall9.X
              workValue5 = dataTable2.Text
              workValue5 = workValue5.X
              workValue4 = workValue4 + workValue5
              workValue4 = workValue4 + 15
              workValue5 = rageUiCall9.WidthOffset
              workValue4 = workValue4 + workValue5
              workValue4 = workValue4 - rageUiCall5
              workValue5 = rageUiCall9.Y
              workValue6 = dataTable2.Text
              workValue6 = workValue6.Y
              workValue5 = workValue5 + workValue6
              workValue6 = rageUiCall9.SubtitleHeight
              workValue5 = workValue5 + workValue6
              workValue6 = RageUI
              workValue6 = workValue6.ItemOffset
              workValue5 = workValue5 + workValue6
              workValue6 = 0
              rageUiCall7 = dataTable2.Text
              rageUiCall7 = rageUiCall7.Scale
              workValue7 = 245
              numberValue = 245
              numberValue2 = 245
              numberValue3 = 255
              numberValue4 = 2
              textValue(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4)
            end
          else
            textValue = RenderText
            workValue3 = arg1
            workValue4 = rageUiCall9.X
            workValue5 = dataTable.Text
            workValue5 = workValue5.X
            workValue4 = workValue4 + workValue5
            workValue4 = workValue4 + workValue2
            workValue5 = rageUiCall9.Y
            workValue6 = dataTable.Text
            workValue6 = workValue6.Y
            workValue5 = workValue5 + workValue6
            workValue6 = rageUiCall9.SubtitleHeight
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
            textValue(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3)
            if workValue then
              textValue = RenderText
              workValue3 = rageUiCall6
              workValue4 = rageUiCall9.X
              workValue5 = dataTable2.Text
              workValue5 = workValue5.X
              workValue4 = workValue4 + workValue5
              workValue5 = rageUiCall9.WidthOffset
              workValue4 = workValue4 + workValue5
              workValue5 = rageUiCall9.Y
              workValue6 = dataTable2.Text
              workValue6 = workValue6.Y
              workValue5 = workValue5 + workValue6
              workValue6 = rageUiCall9.SubtitleHeight
              workValue5 = workValue5 + workValue6
              workValue6 = RageUI
              workValue6 = workValue6.ItemOffset
              workValue5 = workValue5 + workValue6
              workValue6 = 0
              rageUiCall7 = dataTable2.Text
              rageUiCall7 = rageUiCall7.Scale
              workValue7 = 163
              numberValue = 159
              numberValue2 = 148
              numberValue3 = 255
              numberValue4 = 2
              textValue(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4)
            else
              textValue = RenderText
              workValue3 = rageUiCall6
              workValue4 = rageUiCall9.X
              workValue5 = dataTable2.Text
              workValue5 = workValue5.X
              workValue4 = workValue4 + workValue5
              workValue4 = workValue4 + 15
              workValue5 = rageUiCall9.WidthOffset
              workValue4 = workValue4 + workValue5
              workValue5 = rageUiCall9.Y
              workValue6 = dataTable2.Text
              workValue6 = workValue6.Y
              workValue5 = workValue5 + workValue6
              workValue6 = rageUiCall9.SubtitleHeight
              workValue5 = workValue5 + workValue6
              workValue6 = RageUI
              workValue6 = workValue6.ItemOffset
              workValue5 = workValue5 + workValue6
              workValue6 = 0
              rageUiCall7 = dataTable2.Text
              rageUiCall7 = rageUiCall7.Scale
              workValue7 = 163
              numberValue = 159
              numberValue2 = 148
              numberValue3 = 255
              numberValue4 = 2
              textValue(workValue3, workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4)
            end
          end
          textValue = type
          workValue3 = arg5
          textValue = textValue(workValue3)
          if "table" == textValue then
            textValue = arg5.Enabled
            if true ~= textValue then
              textValue = arg5.Enabled
              if nil ~= textValue then
                goto flow_label_627
              end
            end
            textValue = type
            workValue3 = arg5
            textValue = textValue(workValue3)
            if "table" ~= textValue then
              goto flow_label_692
            end
            textValue = arg5.LeftBadge
            if nil ~= textValue then
              textValue = arg5.LeftBadge
              workValue3 = RageUI
              workValue3 = workValue3.BadgeStyle
              workValue3 = workValue3.None
              if textValue ~= workValue3 then
                textValue = arg5.LeftBadge
                workValue3 = workValue
                textValue = textValue(workValue3)
                workValue3 = RenderSprite
                workValue4 = textValue.BadgeDictionary
                if not workValue4 then
                  workValue4 = "commonmenu"
                end
                workValue5 = textValue.BadgeTexture
                if not workValue5 then
                  workValue5 = ""
                end
                workValue6 = rageUiCall9.X
                rageUiCall7 = rageUiCall9.Y
                workValue7 = dataTable.LeftBadge
                workValue7 = workValue7.Y
                rageUiCall7 = rageUiCall7 + workValue7
                workValue7 = rageUiCall9.SubtitleHeight
                rageUiCall7 = rageUiCall7 + workValue7
                workValue7 = RageUI
                workValue7 = workValue7.ItemOffset
                rageUiCall7 = rageUiCall7 + workValue7
                workValue7 = dataTable.LeftBadge
                workValue7 = workValue7.Width
                numberValue = dataTable.LeftBadge
                numberValue = numberValue.Height
                numberValue2 = 0
                numberValue3 = textValue.BadgeColour
                if numberValue3 then
                  numberValue3 = textValue.BadgeColour
                  numberValue3 = numberValue3.R
                  if numberValue3 then
                    goto flow_label_522
                  end
                end
                numberValue3 = 255
                ::flow_label_522::
                numberValue4 = textValue.BadgeColour
                if numberValue4 then
                  numberValue4 = textValue.BadgeColour
                  numberValue4 = numberValue4.G
                  if numberValue4 then
                    goto flow_label_530
                  end
                end
                numberValue4 = 255
                ::flow_label_530::
                workValue8 = textValue.BadgeColour
                if workValue8 then
                  workValue8 = textValue.BadgeColour
                  workValue8 = workValue8.B
                  if workValue8 then
                    goto flow_label_538
                  end
                end
                workValue8 = 255
                ::flow_label_538::
                workValue9 = textValue.BadgeColour
                if workValue9 then
                  workValue9 = textValue.BadgeColour
                  workValue9 = workValue9.A
                  if workValue9 then
                    goto flow_label_546
                  end
                end
                workValue9 = 255
                ::flow_label_546::
                workValue3(workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4, workValue8, workValue9)
              end
            end
            textValue = arg5.RightBadge
            if nil == textValue then
              goto flow_label_692
            end
            textValue = arg5.RightBadge
            workValue3 = RageUI
            workValue3 = workValue3.BadgeStyle
            workValue3 = workValue3.None
            if textValue == workValue3 then
              goto flow_label_692
            end
            textValue = arg5.RightBadge
            workValue3 = workValue
            textValue = textValue(workValue3)
            workValue3 = RenderSprite
            workValue4 = textValue.BadgeDictionary
            if not workValue4 then
              workValue4 = "commonmenu"
            end
            workValue5 = textValue.BadgeTexture
            if not workValue5 then
              workValue5 = ""
            end
            workValue6 = rageUiCall9.X
            rageUiCall7 = dataTable.RightBadge
            rageUiCall7 = rageUiCall7.X
            workValue6 = workValue6 + rageUiCall7
            rageUiCall7 = rageUiCall9.WidthOffset
            workValue6 = workValue6 + rageUiCall7
            rageUiCall7 = rageUiCall9.Y
            workValue7 = dataTable.RightBadge
            workValue7 = workValue7.Y
            rageUiCall7 = rageUiCall7 + workValue7
            workValue7 = rageUiCall9.SubtitleHeight
            rageUiCall7 = rageUiCall7 + workValue7
            workValue7 = RageUI
            workValue7 = workValue7.ItemOffset
            rageUiCall7 = rageUiCall7 + workValue7
            workValue7 = dataTable.RightBadge
            workValue7 = workValue7.Width
            numberValue = dataTable.RightBadge
            numberValue = numberValue.Height
            numberValue2 = 0
            numberValue3 = textValue.BadgeColour
            if numberValue3 then
              numberValue3 = textValue.BadgeColour
              numberValue3 = numberValue3.R
              if numberValue3 then
                goto flow_label_601
              end
            end
            numberValue3 = 255
            ::flow_label_601::
            numberValue4 = textValue.BadgeColour
            if numberValue4 then
              numberValue4 = textValue.BadgeColour
              numberValue4 = numberValue4.G
              if numberValue4 then
                goto flow_label_609
              end
            end
            numberValue4 = 255
            ::flow_label_609::
            workValue8 = textValue.BadgeColour
            if workValue8 then
              workValue8 = textValue.BadgeColour
              workValue8 = workValue8.B
              if workValue8 then
                goto flow_label_617
              end
            end
            workValue8 = 255
            ::flow_label_617::
            workValue9 = textValue.BadgeColour
            if workValue9 then
              workValue9 = textValue.BadgeColour
              workValue9 = workValue9.A
              if workValue9 then
                goto flow_label_625
              end
            end
            workValue9 = 255
            ::flow_label_625::
            workValue3(workValue4, workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4, workValue8, workValue9)
            goto flow_label_692
            ::flow_label_627::
            textValue = RageUI
            textValue = textValue.BadgeStyle
            textValue = textValue.Lock
            workValue3 = RageUI
            workValue3 = workValue3.BadgeStyle
            workValue3 = workValue3.None
            if textValue ~= workValue3 and nil ~= textValue then
              workValue3 = textValue
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
              rageUiCall7 = rageUiCall9.X
              workValue7 = rageUiCall9.Y
              numberValue = dataTable.LeftBadge
              numberValue = numberValue.Y
              workValue7 = workValue7 + numberValue
              numberValue = rageUiCall9.SubtitleHeight
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
              workValue8 = workValue3.BadgeColour
              workValue8 = workValue8.G
              if not workValue8 then
                workValue8 = 255
              end
              workValue9 = workValue3.BadgeColour
              workValue9 = workValue9.B
              if not workValue9 then
                workValue9 = 255
              end
              numberValue5 = workValue3.BadgeColour
              numberValue5 = numberValue5.A
              if not numberValue5 then
                numberValue5 = 255
              end
              workValue4(workValue5, workValue6, rageUiCall7, workValue7, numberValue, numberValue2, numberValue3, numberValue4, workValue8, workValue9, numberValue5)
            end
          else
            textValue = error
            workValue3 = "UICheckBox Style is not a `table`"
            textValue(workValue3)
          end
          ::flow_label_692::
          textValue = RageUI
          workValue3 = RageUI
          workValue3 = workValue3.ItemOffset
          workValue4 = dataTable.Rectangle
          workValue4 = workValue4.Height
          workValue3 = workValue3 + workValue4
          textValue.ItemOffset = workValue3
          textValue = RageUI
          textValue = textValue.ItemsDescription
          workValue3 = rageUiCall9
          workValue4 = arg4
          workValue5 = workValue
          textValue(workValue3, workValue4, workValue5)
          if workValue then
            textValue = rageUiCall9.Controls
            textValue = textValue.Left
            textValue = textValue.Active
            if not textValue then
              textValue = rageUiCall9.Controls
              textValue = textValue.Click
              textValue = textValue.Active
              if not (textValue and rageUiCall2) then
                goto flow_label_758
              end
            end
            textValue = rageUiCall9.Controls
            textValue = textValue.Right
            textValue = textValue.Active
            if not textValue then
              textValue = rageUiCall9.Controls
              textValue = textValue.Click
              textValue = textValue.Active
              if not textValue or not flag then
                arg3 = arg3 - 1
                if arg3 < 1 then
                  arg3 = #arg2
                end
                if nil ~= arg8 then
                  textValue = arg8
                  workValue3 = arg3
                  workValue4 = arg2[arg3]
                  textValue(workValue3, workValue4)
                end
                textValue = RageUI
                textValue = textValue.Settings
                textValue = textValue.Audio
                workValue3 = RageUI
                workValue3 = workValue3.PlaySound
                workValue4 = textValue.Use
                workValue4 = textValue[workValue4]
                workValue4 = workValue4.LeftRight
                workValue4 = workValue4.audioName
                workValue5 = textValue.Use
                workValue5 = textValue[workValue5]
                workValue5 = workValue5.LeftRight
                workValue5 = workValue5.audioRef
                workValue3(workValue4, workValue5)
            end
          end
          else
            ::flow_label_758::
            if workValue then
              textValue = rageUiCall9.Controls
              textValue = textValue.Right
              textValue = textValue.Active
              if not textValue then
                textValue = rageUiCall9.Controls
                textValue = textValue.Click
                textValue = textValue.Active
                if not (textValue and flag) then
                  goto flow_label_810
                end
              end
              textValue = rageUiCall9.Controls
              textValue = textValue.Left
              textValue = textValue.Active
              if not textValue then
                textValue = rageUiCall9.Controls
                textValue = textValue.Click
                textValue = textValue.Active
                if not textValue or not rageUiCall2 then
                  arg3 = arg3 + 1
                  textValue = #arg2
                  if arg3 > textValue then
                    arg3 = 1
                  end
                  if nil ~= arg8 then
                    textValue = arg8
                    workValue3 = arg3
                    workValue4 = arg2[arg3]
                    textValue(workValue3, workValue4)
                  end
                  textValue = RageUI
                  textValue = textValue.Settings
                  textValue = textValue.Audio
                  workValue3 = RageUI
                  workValue3 = workValue3.PlaySound
                  workValue4 = textValue.Use
                  workValue4 = textValue[workValue4]
                  workValue4 = workValue4.LeftRight
                  workValue4 = workValue4.audioName
                  workValue5 = textValue.Use
                  workValue5 = textValue[workValue5]
                  workValue5 = workValue5.LeftRight
                  workValue5 = workValue5.audioRef
                  workValue3(workValue4, workValue5)
                end
              end
            end
          end
          ::flow_label_810::
          if workValue then
            textValue = rageUiCall9.Controls
            textValue = textValue.Select
            textValue = textValue.Active
            if not textValue then
              if not rageUiCall3 then
                goto flow_label_857
              end
              textValue = rageUiCall9.Controls
              textValue = textValue.Click
              textValue = textValue.Active
              if not textValue or rageUiCall2 or flag then
                goto flow_label_857
              end
            end
            textValue = RageUI
            textValue = textValue.Settings
            textValue = textValue.Audio
            workValue3 = RageUI
            workValue3 = workValue3.PlaySound
            workValue4 = textValue.Use
            workValue4 = textValue[workValue4]
            workValue4 = workValue4.Select
            workValue4 = workValue4.audioName
            workValue5 = textValue.Use
            workValue5 = textValue[workValue5]
            workValue5 = workValue5.Select
            workValue5 = workValue5.audioRef
            workValue3(workValue4, workValue5)
            if nil ~= arg9 then
              workValue3 = type
              workValue4 = arg9
              workValue3 = workValue3(workValue4)
              if "table" == workValue3 then
                workValue3 = RageUI
                workValue3 = workValue3.IsAnyMenuVisible
                workValue3 = workValue3()
                if workValue3 then
                  workValue3 = RageUI
                  workValue4 = arg9[arg3]
                  workValue3.NextMenu = workValue4
                end
              end
            end
          end
          ::flow_label_857::
          if arg6 then
            textValue = arg7
            workValue3 = rageUiCall3
            workValue4 = workValue
            workValue5 = rageUiCall9.Controls
            workValue5 = workValue5.Select
            workValue5 = workValue5.Active
            if not workValue5 then
              if not rageUiCall3 then
                goto flow_label_882
                workValue5 = rageUiCall3 or workValue5
              end
              workValue5 = rageUiCall9.Controls
              workValue5 = workValue5.Click
              workValue5 = workValue5.Active
            end
            workValue5 = workValue5 and not rageUiCall2 and not flag and workValue5
            ::flow_label_882::
            workValue6 = arg3
            textValue(workValue3, workValue4, workValue5, workValue6)
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
rageUiCall8.List = workValue10
