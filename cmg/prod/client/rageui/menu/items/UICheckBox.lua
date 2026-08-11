--[[
    LEVEL 1 BEGINNER GUIDE — Uicheck Box
    =========================================

    File: cmg/prod/client/rageui/menu/items/UICheckBox.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: usable inventory item behaviour, specifically the Uicheck Box feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 2
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
local dataTable, dataTable2, rageUiCall4, rageUiCall5, textValue, textValue2, textValue3, textValue4, textValue5
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
dataTable2.Dictionary = "commonmenu"
rageUiCall4 = {}
rageUiCall5 = "shop_box_blankb"
textValue = "shop_box_tickb"
textValue2 = "shop_box_blank"
textValue3 = "shop_box_tick"
textValue4 = "shop_box_crossb"
textValue5 = "shop_box_cross"
rageUiCall4[1] = rageUiCall5
rageUiCall4[2] = textValue
rageUiCall4[3] = textValue2
rageUiCall4[4] = textValue3
rageUiCall4[5] = textValue4
rageUiCall4[6] = textValue5
dataTable2.Textures = rageUiCall4
dataTable2.X = 380
dataTable2.Y = -6
dataTable2.Width = 50
dataTable2.Height = 50
rageUiCall4 = RageUI
rageUiCall5 = {}
rageUiCall5.Tick = 1
rageUiCall5.Cross = 2
rageUiCall4.CheckboxStyle = rageUiCall5

-- === HELPER FUNCTION (decompiler name: rageUiCall4; parameters: arg1, arg2, arg3, arg4, arg5) ===
function rageUiCall4(arg1, arg2, arg3, arg4, arg5)
  local arg6, arg7, workValue12, workValue13, workValue14, workValue, rageUiCall, workValue2
  arg6 = RageUI
  arg6 = arg6.CurrentMenu
  if nil == arg5 then
    arg5 = 0
  end
  if arg1 then
    if arg2 then
      arg7 = RenderSprite
      workValue12 = dataTable2.Dictionary
      workValue13 = dataTable2.Textures
      workValue13 = workValue13[arg3]
      workValue14 = arg6.X
      workValue = dataTable2.X
      workValue14 = workValue14 + workValue
      workValue = arg6.WidthOffset
      workValue14 = workValue14 + workValue
      workValue14 = workValue14 - arg5
      workValue = arg6.Y
      rageUiCall = dataTable2.Y
      workValue = workValue + rageUiCall
      rageUiCall = arg6.SubtitleHeight
      workValue = workValue + rageUiCall
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ItemOffset
      workValue = workValue + rageUiCall
      rageUiCall = dataTable2.Width
      workValue2 = dataTable2.Height
      arg7(workValue12, workValue13, workValue14, workValue, rageUiCall, workValue2)
    else
      arg7 = RenderSprite
      workValue12 = dataTable2.Dictionary
      workValue13 = dataTable2.Textures
      workValue13 = workValue13[1]
      workValue14 = arg6.X
      workValue = dataTable2.X
      workValue14 = workValue14 + workValue
      workValue = arg6.WidthOffset
      workValue14 = workValue14 + workValue
      workValue14 = workValue14 - arg5
      workValue = arg6.Y
      rageUiCall = dataTable2.Y
      workValue = workValue + rageUiCall
      rageUiCall = arg6.SubtitleHeight
      workValue = workValue + rageUiCall
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ItemOffset
      workValue = workValue + rageUiCall
      rageUiCall = dataTable2.Width
      workValue2 = dataTable2.Height
      arg7(workValue12, workValue13, workValue14, workValue, rageUiCall, workValue2)
    end
  elseif arg2 then
    arg7 = RenderSprite
    workValue12 = dataTable2.Dictionary
    workValue13 = dataTable2.Textures
    workValue13 = workValue13[arg4]
    workValue14 = arg6.X
    workValue = dataTable2.X
    workValue14 = workValue14 + workValue
    workValue = arg6.WidthOffset
    workValue14 = workValue14 + workValue
    workValue14 = workValue14 - arg5
    workValue = arg6.Y
    rageUiCall = dataTable2.Y
    workValue = workValue + rageUiCall
    rageUiCall = arg6.SubtitleHeight
    workValue = workValue + rageUiCall
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ItemOffset
    workValue = workValue + rageUiCall
    rageUiCall = dataTable2.Width
    workValue2 = dataTable2.Height
    arg7(workValue12, workValue13, workValue14, workValue, rageUiCall, workValue2)
  else
    arg7 = RenderSprite
    workValue12 = dataTable2.Dictionary
    workValue13 = dataTable2.Textures
    workValue13 = workValue13[3]
    workValue14 = arg6.X
    workValue = dataTable2.X
    workValue14 = workValue14 + workValue
    workValue = arg6.WidthOffset
    workValue14 = workValue14 + workValue
    workValue14 = workValue14 - arg5
    workValue = arg6.Y
    rageUiCall = dataTable2.Y
    workValue = workValue + rageUiCall
    rageUiCall = arg6.SubtitleHeight
    workValue = workValue + rageUiCall
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ItemOffset
    workValue = workValue + rageUiCall
    rageUiCall = dataTable2.Width
    workValue2 = dataTable2.Height
    arg7(workValue12, workValue13, workValue14, workValue, rageUiCall, workValue2)
  end
end
rageUiCall5 = RageUI

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7) ===
function textValue(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local workValue12, workValue13, workValue14, workValue, rageUiCall, workValue2, rageUiCall2, workValue3, workValue4, workValue5, workValue6, workValue7, rageUiCall3, workValue8, numberValue, numberValue2, numberValue3, workValue9, workValue10, workValue11, numberValue4, numberValue5
  workValue12 = RageUI
  workValue12 = workValue12.CurrentMenu
  if nil ~= workValue12 then
    workValue13 = workValue12
    workValue13 = workValue13()
    if workValue13 then
      workValue13 = RageUI
      workValue13 = workValue13.Options
      workValue13 = workValue13 + 1
      workValue14 = workValue12.Pagination
      workValue14 = workValue14.Minimum
      if workValue13 >= workValue14 then
        workValue14 = workValue12.Pagination
        workValue14 = workValue14.Maximum
        if workValue13 <= workValue14 then
          workValue14 = workValue12.Index
          workValue14 = workValue14 == workValue13
          workValue = arg4.LeftBadge
          rageUiCall = RageUI
          rageUiCall = rageUiCall.BadgeStyle
          rageUiCall = rageUiCall.None
          if workValue ~= rageUiCall then
            workValue = arg4.LeftBadge
            if nil ~= workValue then
              goto flow_label_38
            end
          end
          workValue = 0
          ::flow_label_38::
          if not workValue then
            workValue = 27
          end
          rageUiCall = arg4.RightBadge
          workValue2 = RageUI
          workValue2 = workValue2.BadgeStyle
          workValue2 = workValue2.None
          if rageUiCall ~= workValue2 then
            rageUiCall = arg4.RightBadge
            if nil ~= rageUiCall then
              goto flow_label_51
            end
          end
          rageUiCall = 0
          ::flow_label_51::
          if not rageUiCall then
            rageUiCall = 32
          end
          workValue2 = 0
          rageUiCall2 = RageUI
          rageUiCall2 = rageUiCall2.ItemsSafeZone
          workValue3 = workValue12
          rageUiCall2(workValue3)
          rageUiCall2 = false
          workValue3 = workValue12.EnableMouse
          if true == workValue3 then
            workValue3 = workValue12.CursorStyle
            if 0 == workValue3 then
              goto flow_label_67
            end
          end
          workValue3 = workValue12.CursorStyle
          ::flow_label_67::
          if 1 == workValue3 then
            workValue3 = RageUI
            workValue3 = workValue3.ItemsMouseBounds
            workValue4 = workValue12
            workValue5 = workValue14
            workValue6 = workValue13
            workValue7 = dataTable
            workValue3 = workValue3(workValue4, workValue5, workValue6, workValue7)
            rageUiCall2 = workValue3
          end
          if workValue14 then
            workValue3 = RenderSprite
            workValue4 = dataTable.SelectedSprite
            workValue4 = workValue4.Dictionary
            workValue5 = dataTable.SelectedSprite
            workValue5 = workValue5.Texture
            workValue6 = workValue12.X
            workValue7 = workValue12.Y
            rageUiCall3 = dataTable.SelectedSprite
            rageUiCall3 = rageUiCall3.Y
            workValue7 = workValue7 + rageUiCall3
            rageUiCall3 = workValue12.SubtitleHeight
            workValue7 = workValue7 + rageUiCall3
            rageUiCall3 = RageUI
            rageUiCall3 = rageUiCall3.ItemOffset
            workValue7 = workValue7 + rageUiCall3
            rageUiCall3 = dataTable.SelectedSprite
            rageUiCall3 = rageUiCall3.Width
            workValue8 = workValue12.WidthOffset
            rageUiCall3 = rageUiCall3 + workValue8
            workValue8 = dataTable.SelectedSprite
            workValue8 = workValue8.Height
            workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall3, workValue8)
          end
          workValue3 = type
          workValue4 = arg4
          workValue3 = workValue3(workValue4)
          if "table" == workValue3 then
            workValue3 = arg4.Enabled
            if true ~= workValue3 then
              workValue3 = arg4.Enabled
              if nil ~= workValue3 then
                goto flow_label_332
              end
            end
            if workValue14 then
              workValue3 = RenderText
              workValue4 = arg1
              workValue5 = workValue12.X
              workValue6 = dataTable.Text
              workValue6 = workValue6.X
              workValue5 = workValue5 + workValue6
              workValue5 = workValue5 + workValue
              workValue6 = workValue12.Y
              workValue7 = dataTable.Text
              workValue7 = workValue7.Y
              workValue6 = workValue6 + workValue7
              workValue7 = workValue12.SubtitleHeight
              workValue6 = workValue6 + workValue7
              workValue7 = RageUI
              workValue7 = workValue7.ItemOffset
              workValue6 = workValue6 + workValue7
              workValue7 = 0
              rageUiCall3 = dataTable.Text
              rageUiCall3 = rageUiCall3.Scale
              workValue8 = 0
              numberValue = 0
              numberValue2 = 0
              numberValue3 = 255
              workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall3, workValue8, numberValue, numberValue2, numberValue3)
            else
              workValue3 = RenderText
              workValue4 = arg1
              workValue5 = workValue12.X
              workValue6 = dataTable.Text
              workValue6 = workValue6.X
              workValue5 = workValue5 + workValue6
              workValue5 = workValue5 + workValue
              workValue6 = workValue12.Y
              workValue7 = dataTable.Text
              workValue7 = workValue7.Y
              workValue6 = workValue6 + workValue7
              workValue7 = workValue12.SubtitleHeight
              workValue6 = workValue6 + workValue7
              workValue7 = RageUI
              workValue7 = workValue7.ItemOffset
              workValue6 = workValue6 + workValue7
              workValue7 = 0
              rageUiCall3 = dataTable.Text
              rageUiCall3 = rageUiCall3.Scale
              workValue8 = 245
              numberValue = 245
              numberValue2 = 245
              numberValue3 = 255
              workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall3, workValue8, numberValue, numberValue2, numberValue3)
            end
            workValue3 = type
            workValue4 = arg4
            workValue3 = workValue3(workValue4)
            if "table" == workValue3 then
              workValue3 = arg4.LeftBadge
              if nil ~= workValue3 then
                workValue3 = arg4.LeftBadge
                workValue4 = RageUI
                workValue4 = workValue4.BadgeStyle
                workValue4 = workValue4.None
                if workValue3 ~= workValue4 then
                  workValue3 = arg4.LeftBadge
                  workValue4 = workValue14
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
                  workValue7 = workValue12.X
                  rageUiCall3 = workValue12.Y
                  workValue8 = dataTable.LeftBadge
                  workValue8 = workValue8.Y
                  rageUiCall3 = rageUiCall3 + workValue8
                  workValue8 = workValue12.SubtitleHeight
                  rageUiCall3 = rageUiCall3 + workValue8
                  workValue8 = RageUI
                  workValue8 = workValue8.ItemOffset
                  rageUiCall3 = rageUiCall3 + workValue8
                  workValue8 = dataTable.LeftBadge
                  workValue8 = workValue8.Width
                  numberValue = dataTable.LeftBadge
                  numberValue = numberValue.Height
                  numberValue2 = 0
                  numberValue3 = workValue3.BadgeColour
                  if numberValue3 then
                    numberValue3 = workValue3.BadgeColour
                    numberValue3 = numberValue3.R
                    if numberValue3 then
                      goto flow_label_227
                    end
                  end
                  numberValue3 = 255
                  ::flow_label_227::
                  workValue9 = workValue3.BadgeColour
                  if workValue9 then
                    workValue9 = workValue3.BadgeColour
                    workValue9 = workValue9.G
                    if workValue9 then
                      goto flow_label_235
                    end
                  end
                  workValue9 = 255
                  ::flow_label_235::
                  workValue10 = workValue3.BadgeColour
                  if workValue10 then
                    workValue10 = workValue3.BadgeColour
                    workValue10 = workValue10.B
                    if workValue10 then
                      goto flow_label_243
                    end
                  end
                  workValue10 = 255
                  ::flow_label_243::
                  workValue11 = workValue3.BadgeColour
                  if workValue11 then
                    workValue11 = workValue3.BadgeColour
                    workValue11 = workValue11.A
                    if workValue11 then
                      goto flow_label_251
                    end
                  end
                  workValue11 = 255
                  ::flow_label_251::
                  workValue4(workValue5, workValue6, workValue7, rageUiCall3, workValue8, numberValue, numberValue2, numberValue3, workValue9, workValue10, workValue11)
                end
              end
              workValue3 = arg4.RightBadge
              if nil ~= workValue3 then
                workValue3 = arg4.RightBadge
                workValue4 = RageUI
                workValue4 = workValue4.BadgeStyle
                workValue4 = workValue4.None
                if workValue3 ~= workValue4 then
                  workValue3 = arg4.RightBadge
                  workValue4 = workValue14
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
                  workValue7 = workValue12.X
                  rageUiCall3 = dataTable.RightBadge
                  rageUiCall3 = rageUiCall3.X
                  workValue7 = workValue7 + rageUiCall3
                  rageUiCall3 = workValue12.WidthOffset
                  workValue7 = workValue7 + rageUiCall3
                  rageUiCall3 = workValue12.Y
                  workValue8 = dataTable.RightBadge
                  workValue8 = workValue8.Y
                  rageUiCall3 = rageUiCall3 + workValue8
                  workValue8 = workValue12.SubtitleHeight
                  rageUiCall3 = rageUiCall3 + workValue8
                  workValue8 = RageUI
                  workValue8 = workValue8.ItemOffset
                  rageUiCall3 = rageUiCall3 + workValue8
                  workValue8 = dataTable.RightBadge
                  workValue8 = workValue8.Width
                  numberValue = dataTable.RightBadge
                  numberValue = numberValue.Height
                  numberValue2 = 0
                  numberValue3 = workValue3.BadgeColour
                  if numberValue3 then
                    numberValue3 = workValue3.BadgeColour
                    numberValue3 = numberValue3.R
                    if numberValue3 then
                      goto flow_label_306
                    end
                  end
                  numberValue3 = 255
                  ::flow_label_306::
                  workValue9 = workValue3.BadgeColour
                  if workValue9 then
                    workValue9 = workValue3.BadgeColour
                    workValue9 = workValue9.G
                    if workValue9 then
                      goto flow_label_314
                    end
                  end
                  workValue9 = 255
                  ::flow_label_314::
                  workValue10 = workValue3.BadgeColour
                  if workValue10 then
                    workValue10 = workValue3.BadgeColour
                    workValue10 = workValue10.B
                    if workValue10 then
                      goto flow_label_322
                    end
                  end
                  workValue10 = 255
                  ::flow_label_322::
                  workValue11 = workValue3.BadgeColour
                  if workValue11 then
                    workValue11 = workValue3.BadgeColour
                    workValue11 = workValue11.A
                    if workValue11 then
                      goto flow_label_330
                    end
                  end
                  workValue11 = 255
                  ::flow_label_330::
                  workValue4(workValue5, workValue6, workValue7, rageUiCall3, workValue8, numberValue, numberValue2, numberValue3, workValue9, workValue10, workValue11)
                  goto flow_label_465
                  ::flow_label_332::
                  workValue3 = RageUI
                  workValue3 = workValue3.BadgeStyle
                  workValue3 = workValue3.Lock
                  workValue4 = RageUI
                  workValue4 = workValue4.BadgeStyle
                  workValue4 = workValue4.None
                  if workValue3 == workValue4 or nil == workValue3 then
                    workValue4 = 0
                    if workValue4 then
                      goto flow_label_346
                    end
                  end
                  workValue4 = 27
                  ::flow_label_346::
                  if workValue14 then
                    workValue5 = RenderText
                    workValue6 = arg1
                    workValue7 = workValue12.X
                    rageUiCall3 = dataTable.Text
                    rageUiCall3 = rageUiCall3.X
                    workValue7 = workValue7 + rageUiCall3
                    workValue7 = workValue7 + workValue4
                    rageUiCall3 = workValue12.Y
                    workValue8 = dataTable.Text
                    workValue8 = workValue8.Y
                    rageUiCall3 = rageUiCall3 + workValue8
                    workValue8 = workValue12.SubtitleHeight
                    rageUiCall3 = rageUiCall3 + workValue8
                    workValue8 = RageUI
                    workValue8 = workValue8.ItemOffset
                    rageUiCall3 = rageUiCall3 + workValue8
                    workValue8 = 0
                    numberValue = dataTable.Text
                    numberValue = numberValue.Scale
                    numberValue2 = 0
                    numberValue3 = 0
                    workValue9 = 0
                    workValue10 = 255
                    workValue5(workValue6, workValue7, rageUiCall3, workValue8, numberValue, numberValue2, numberValue3, workValue9, workValue10)
                  else
                    workValue5 = RenderText
                    workValue6 = arg1
                    workValue7 = workValue12.X
                    rageUiCall3 = dataTable.Text
                    rageUiCall3 = rageUiCall3.X
                    workValue7 = workValue7 + rageUiCall3
                    workValue7 = workValue7 + workValue4
                    rageUiCall3 = workValue12.Y
                    workValue8 = dataTable.Text
                    workValue8 = workValue8.Y
                    rageUiCall3 = rageUiCall3 + workValue8
                    workValue8 = workValue12.SubtitleHeight
                    rageUiCall3 = rageUiCall3 + workValue8
                    workValue8 = RageUI
                    workValue8 = workValue8.ItemOffset
                    rageUiCall3 = rageUiCall3 + workValue8
                    workValue8 = 0
                    numberValue = dataTable.Text
                    numberValue = numberValue.Scale
                    numberValue2 = 163
                    numberValue3 = 159
                    workValue9 = 148
                    workValue10 = 255
                    workValue5(workValue6, workValue7, rageUiCall3, workValue8, numberValue, numberValue2, numberValue3, workValue9, workValue10)
                  end
                  workValue5 = RageUI
                  workValue5 = workValue5.BadgeStyle
                  workValue5 = workValue5.None
                  if workValue3 ~= workValue5 and nil ~= workValue3 then
                    workValue5 = workValue3
                    workValue6 = workValue14
                    workValue5 = workValue5(workValue6)
                    workValue6 = RenderSprite
                    workValue7 = workValue5.BadgeDictionary
                    if not workValue7 then
                      workValue7 = "commonmenu"
                    end
                    rageUiCall3 = workValue5.BadgeTexture
                    if not rageUiCall3 then
                      rageUiCall3 = ""
                    end
                    workValue8 = workValue12.X
                    numberValue = workValue12.Y
                    numberValue2 = dataTable.LeftBadge
                    numberValue2 = numberValue2.Y
                    numberValue = numberValue + numberValue2
                    numberValue2 = workValue12.SubtitleHeight
                    numberValue = numberValue + numberValue2
                    numberValue2 = RageUI
                    numberValue2 = numberValue2.ItemOffset
                    numberValue = numberValue + numberValue2
                    numberValue2 = dataTable.LeftBadge
                    numberValue2 = numberValue2.Width
                    numberValue3 = dataTable.LeftBadge
                    numberValue3 = numberValue3.Height
                    workValue9 = 0
                    workValue10 = workValue5.BadgeColour
                    workValue10 = workValue10.R
                    if not workValue10 then
                      workValue10 = 255
                    end
                    workValue11 = workValue5.BadgeColour
                    workValue11 = workValue11.G
                    if not workValue11 then
                      workValue11 = 255
                    end
                    numberValue4 = workValue5.BadgeColour
                    numberValue4 = numberValue4.B
                    if not numberValue4 then
                      numberValue4 = 255
                    end
                    numberValue5 = workValue5.BadgeColour
                    numberValue5 = numberValue5.A
                    if not numberValue5 then
                      numberValue5 = 255
                    end
                    workValue6(workValue7, rageUiCall3, workValue8, numberValue, numberValue2, numberValue3, workValue9, workValue10, workValue11, numberValue4, numberValue5)
                  end
                end
              end
            end
            ::flow_label_465::
            workValue3 = arg4.Enabled
            if true ~= workValue3 then
              workValue3 = arg4.Enabled
              if nil ~= workValue3 then
                goto flow_label_564
              end
            end
            if workValue14 then
              workValue3 = arg4.RightLabel
              if nil ~= workValue3 then
                workValue3 = arg4.RightLabel
                if "" ~= workValue3 then
                  workValue3 = RenderText
                  workValue4 = arg4.RightLabel
                  workValue5 = workValue12.X
                  workValue6 = dataTable.RightText
                  workValue6 = workValue6.X
                  workValue5 = workValue5 + workValue6
                  workValue5 = workValue5 - rageUiCall
                  workValue6 = workValue12.WidthOffset
                  workValue5 = workValue5 + workValue6
                  workValue6 = workValue12.Y
                  workValue7 = dataTable.RightText
                  workValue7 = workValue7.Y
                  workValue6 = workValue6 + workValue7
                  workValue7 = workValue12.SubtitleHeight
                  workValue6 = workValue6 + workValue7
                  workValue7 = RageUI
                  workValue7 = workValue7.ItemOffset
                  workValue6 = workValue6 + workValue7
                  workValue7 = 0
                  rageUiCall3 = dataTable.RightText
                  rageUiCall3 = rageUiCall3.Scale
                  workValue8 = 0
                  numberValue = 0
                  numberValue2 = 0
                  numberValue3 = 255
                  workValue9 = 2
                  workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall3, workValue8, numberValue, numberValue2, numberValue3, workValue9)
                  workValue3 = MeasureStringWidth
                  workValue4 = arg4.RightLabel
                  workValue5 = 0
                  workValue6 = 0.35
                  workValue3 = workValue3(workValue4, workValue5, workValue6)
                  workValue2 = workValue3
                end
              end
            else
              workValue3 = arg4.RightLabel
              if nil ~= workValue3 then
                workValue3 = arg4.RightLabel
                if "" ~= workValue3 then
                  workValue3 = RenderText
                  workValue4 = arg4.RightLabel
                  workValue5 = workValue12.X
                  workValue6 = dataTable.RightText
                  workValue6 = workValue6.X
                  workValue5 = workValue5 + workValue6
                  workValue5 = workValue5 - rageUiCall
                  workValue6 = workValue12.WidthOffset
                  workValue5 = workValue5 + workValue6
                  workValue6 = workValue12.Y
                  workValue7 = dataTable.RightText
                  workValue7 = workValue7.Y
                  workValue6 = workValue6 + workValue7
                  workValue7 = workValue12.SubtitleHeight
                  workValue6 = workValue6 + workValue7
                  workValue7 = RageUI
                  workValue7 = workValue7.ItemOffset
                  workValue6 = workValue6 + workValue7
                  workValue7 = 0
                  rageUiCall3 = dataTable.RightText
                  rageUiCall3 = rageUiCall3.Scale
                  workValue8 = 245
                  numberValue = 245
                  numberValue2 = 245
                  numberValue3 = 255
                  workValue9 = 2
                  workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall3, workValue8, numberValue, numberValue2, numberValue3, workValue9)
                  workValue3 = MeasureStringWidth
                  workValue4 = arg4.RightLabel
                  workValue5 = 0
                  workValue6 = 0.35
                  workValue3 = workValue3(workValue4, workValue5, workValue6)
                  workValue2 = workValue3
                end
              end
            end
            ::flow_label_564::
            workValue2 = rageUiCall + workValue2
            workValue3 = arg4.Style
            if nil ~= workValue3 then
              workValue3 = arg4.Style
              workValue4 = RageUI
              workValue4 = workValue4.CheckboxStyle
              workValue4 = workValue4.Tick
              if workValue3 == workValue4 then
                workValue3 = rageUiCall4
                workValue4 = workValue14
                workValue5 = arg3
                workValue6 = 2
                workValue7 = 4
                rageUiCall3 = workValue2
                workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall3)
              else
                workValue3 = arg4.Style
                workValue4 = RageUI
                workValue4 = workValue4.CheckboxStyle
                workValue4 = workValue4.Cross
                if workValue3 == workValue4 then
                  workValue3 = rageUiCall4
                  workValue4 = workValue14
                  workValue5 = arg3
                  workValue6 = 5
                  workValue7 = 6
                  rageUiCall3 = workValue2
                  workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall3)
                else
                  workValue3 = rageUiCall4
                  workValue4 = workValue14
                  workValue5 = arg3
                  workValue6 = 2
                  workValue7 = 4
                  rageUiCall3 = workValue2
                  workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall3)
                end
              end
            else
              workValue3 = rageUiCall4
              workValue4 = workValue14
              workValue5 = arg3
              workValue6 = 2
              workValue7 = 4
              rageUiCall3 = workValue2
              workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall3)
            end
            if workValue14 then
              workValue3 = workValue12.Controls
              workValue3 = workValue3.Select
              workValue3 = workValue3.Active
              if not workValue3 then
                if not rageUiCall2 then
                  goto flow_label_658
                end
                workValue3 = workValue12.Controls
                workValue3 = workValue3.Click
                workValue3 = workValue3.Active
                if not workValue3 then
                  goto flow_label_658
                end
              end
              workValue3 = arg4.Enabled
              if true ~= workValue3 then
                workValue3 = arg4.Enabled
                if nil ~= workValue3 then
                  goto flow_label_658
                end
              end
              workValue3 = RageUI
              workValue3 = workValue3.Settings
              workValue3 = workValue3.Audio
              workValue4 = RageUI
              workValue4 = workValue4.PlaySound
              workValue5 = workValue3.Use
              workValue5 = workValue3[workValue5]
              workValue5 = workValue5.Select
              workValue5 = workValue5.audioName
              workValue6 = workValue3.Use
              workValue6 = workValue3[workValue6]
              workValue6 = workValue6.Select
              workValue6 = workValue6.audioRef
              workValue4(workValue5, workValue6)
              arg3 = not arg3
              if arg3 then
                if nil ~= arg6 then
                  workValue4 = arg6
                  workValue4()
                end
              elseif nil ~= arg7 then
                workValue4 = arg7
                workValue4()
              end
            end
            ::flow_label_658::
            if workValue14 then
              workValue3 = workValue12.Controls
              workValue3 = workValue3.Select
              workValue3 = workValue3.Active
              if not workValue3 then
                if rageUiCall2 then
                  workValue3 = workValue12.Controls
                  workValue3 = workValue3.Click
                  workValue3 = workValue3.Active
                  if workValue3 then
                    workValue3 = arg4.Enabled
                    if false == workValue3 then
                      workValue3 = RageUI
                      workValue3 = workValue3.Settings
                      workValue3 = workValue3.Audio
                      workValue4 = RageUI
                      workValue4 = workValue4.PlaySound
                      workValue5 = workValue3.Use
                      workValue5 = workValue3[workValue5]
                      workValue5 = workValue5.Error
                      workValue5 = workValue5.audioName
                      workValue6 = workValue3.Use
                      workValue6 = workValue3[workValue6]
                      workValue6 = workValue6.Error
                      workValue6 = workValue6.audioRef
                      workValue4(workValue5, workValue6)
                      arg3 = false
                      if arg3 then
                        if nil ~= arg6 then
                          workValue4 = arg6
                          workValue4()
                        end
                      elseif nil ~= arg7 then
                        workValue4 = arg7
                        workValue4()
                      end
                    end
                  end
                end
              end
            end
          else
            workValue3 = error
            workValue4 = "UICheckBox Style is not a `table`"
            workValue3(workValue4)
          end
          workValue3 = RageUI
          workValue4 = RageUI
          workValue4 = workValue4.ItemOffset
          workValue5 = dataTable.Rectangle
          workValue5 = workValue5.Height
          workValue4 = workValue4 + workValue5
          workValue3.ItemOffset = workValue4
          workValue3 = RageUI
          workValue3 = workValue3.ItemsDescription
          workValue4 = workValue12
          workValue5 = arg2
          workValue6 = workValue14
          workValue3(workValue4, workValue5, workValue6)
          workValue3 = arg5
          workValue4 = rageUiCall2
          workValue5 = workValue14
          workValue6 = workValue12.Controls
          workValue6 = workValue6.Select
          workValue6 = workValue6.Active
          if not workValue6 then
            if not rageUiCall2 then
              goto flow_label_735
              workValue6 = rageUiCall2 or workValue6
            end
            workValue6 = workValue12.Controls
            workValue6 = workValue6.Click
            workValue6 = workValue6.Active
            if not workValue6 then
              goto flow_label_735
            end
          end
          workValue6 = workValue14
          ::flow_label_735::
          workValue7 = arg3
          workValue3(workValue4, workValue5, workValue6, workValue7)
        end
      end
      workValue14 = RageUI
      workValue = RageUI
      workValue = workValue.Options
      workValue = workValue + 1
      workValue14.Options = workValue
    end
  end
end
rageUiCall5.Checkbox = textValue
