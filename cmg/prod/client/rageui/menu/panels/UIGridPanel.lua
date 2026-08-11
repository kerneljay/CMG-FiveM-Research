--[[
    LEVEL 1 BEGINNER GUIDE — Uigrid Panel
    ==========================================

    File: cmg/prod/client/rageui/menu/panels/UIGridPanel.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: RageUI menu framework/library code.

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
local dataTable, dataTable2, dataTable3
dataTable = {}
dataTable2 = {}
dataTable2.Dictionary = "commonmenu"
dataTable2.Texture = "gradient_bgd"
dataTable2.Y = 4
dataTable2.Width = 431
dataTable2.Height = 275
dataTable.Background = dataTable2
dataTable2 = {}
dataTable2.Dictionary = "pause_menu_pages_char_mom_dad"
dataTable2.Texture = "nose_grid"
dataTable2.X = 115.5
dataTable2.Y = 47.5
dataTable2.Width = 200
dataTable2.Height = 200
dataTable.Grid = dataTable2
dataTable2 = {}
dataTable2.Dictionary = "mpinventory"
dataTable2.Texture = "in_world_circle"
dataTable2.X = 115.5
dataTable2.Y = 47.5
dataTable2.Width = 20
dataTable2.Height = 20
dataTable.Circle = dataTable2
dataTable2 = {}
dataTable3 = {}
dataTable3.X = 215.5
dataTable3.Y = 15
dataTable3.Scale = 0.35
dataTable2.Top = dataTable3
dataTable3 = {}
dataTable3.X = 215.5
dataTable3.Y = 250
dataTable3.Scale = 0.35
dataTable2.Bottom = dataTable3
dataTable3 = {}
dataTable3.X = 57.75
dataTable3.Y = 130
dataTable3.Scale = 0.35
dataTable2.Left = dataTable3
dataTable3 = {}
dataTable3.X = 373.25
dataTable3.Y = 130
dataTable3.Scale = 0.35
dataTable2.Right = dataTable3
dataTable.Text = dataTable2
dataTable2 = RageUI

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) ===
function dataTable3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local rageUiCall2, rageUiCall3, workValue, workValue2, workValue3, workValue4, workValue5, workValue6, workValue7, workValue8, rageUiCall, workValue9, numberValue, numberValue2, numberValue3, numberValue4
  rageUiCall2 = RageUI
  rageUiCall2 = rageUiCall2.CurrentMenu
  if nil ~= rageUiCall2 then
    rageUiCall3 = rageUiCall2
    rageUiCall3 = rageUiCall3()
    if rageUiCall3 then
      if nil ~= arg8 then
        rageUiCall3 = rageUiCall2.Index
        if rageUiCall3 ~= arg8 then
          goto flow_label_650
        end
      end
      rageUiCall3 = RageUI
      rageUiCall3 = rageUiCall3.IsMouseInBounds
      workValue = rageUiCall2.X
      workValue2 = dataTable.Grid
      workValue2 = workValue2.X
      workValue = workValue + workValue2
      workValue2 = rageUiCall2.SafeZoneSize
      workValue2 = workValue2.X
      workValue = workValue + workValue2
      workValue = workValue + 20
      workValue2 = rageUiCall2.Y
      workValue3 = dataTable.Grid
      workValue3 = workValue3.Y
      workValue2 = workValue2 + workValue3
      workValue3 = rageUiCall2.SafeZoneSize
      workValue3 = workValue3.Y
      workValue2 = workValue2 + workValue3
      workValue3 = rageUiCall2.SubtitleHeight
      workValue2 = workValue2 + workValue3
      workValue3 = RageUI
      workValue3 = workValue3.ItemOffset
      workValue2 = workValue2 + workValue3
      workValue2 = workValue2 + 20
      workValue3 = dataTable.Grid
      workValue3 = workValue3.Width
      workValue4 = rageUiCall2.WidthOffset
      workValue3 = workValue3 + workValue4
      workValue3 = workValue3 - 40
      workValue4 = dataTable.Grid
      workValue4 = workValue4.Height
      workValue4 = workValue4 - 40
      rageUiCall3 = rageUiCall3(workValue, workValue2, workValue3, workValue4)
      workValue = false
      workValue2 = rageUiCall2.X
      workValue3 = dataTable.Grid
      workValue3 = workValue3.X
      workValue2 = workValue2 + workValue3
      workValue3 = rageUiCall2.WidthOffset
      workValue3 = workValue3 / 2
      workValue2 = workValue2 + workValue3
      workValue2 = workValue2 + 20
      workValue3 = rageUiCall2.Y
      workValue4 = dataTable.Grid
      workValue4 = workValue4.Y
      workValue3 = workValue3 + workValue4
      workValue4 = rageUiCall2.SubtitleHeight
      workValue3 = workValue3 + workValue4
      workValue4 = RageUI
      workValue4 = workValue4.ItemOffset
      workValue3 = workValue3 + workValue4
      workValue3 = workValue3 + 20
      if arg1 < 0.0 or arg1 > 1.0 then
        arg1 = 0.0
      end
      if arg2 < 0.0 or arg2 > 1.0 then
        arg2 = 0.0
      end
      workValue4 = dataTable.Grid
      workValue4 = workValue4.Width
      workValue4 = workValue4 - 40
      workValue4 = workValue4 * arg1
      workValue4 = workValue2 + workValue4
      workValue5 = dataTable.Circle
      workValue5 = workValue5.Width
      workValue5 = workValue5 / 2
      workValue2 = workValue4 - workValue5
      workValue4 = dataTable.Grid
      workValue4 = workValue4.Height
      workValue4 = workValue4 - 40
      workValue4 = workValue4 * arg2
      workValue4 = workValue3 + workValue4
      workValue5 = dataTable.Circle
      workValue5 = workValue5.Height
      workValue5 = workValue5 / 2
      workValue3 = workValue4 - workValue5
      workValue4 = RenderSprite
      workValue5 = dataTable.Background
      workValue5 = workValue5.Dictionary
      workValue6 = dataTable.Background
      workValue6 = workValue6.Texture
      workValue7 = rageUiCall2.X
      workValue8 = rageUiCall2.Y
      rageUiCall = dataTable.Background
      rageUiCall = rageUiCall.Y
      workValue8 = workValue8 + rageUiCall
      rageUiCall = rageUiCall2.SubtitleHeight
      workValue8 = workValue8 + rageUiCall
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ItemOffset
      workValue8 = workValue8 + rageUiCall
      rageUiCall = dataTable.Background
      rageUiCall = rageUiCall.Width
      workValue9 = rageUiCall2.WidthOffset
      rageUiCall = rageUiCall + workValue9
      workValue9 = dataTable.Background
      workValue9 = workValue9.Height
      workValue4(workValue5, workValue6, workValue7, workValue8, rageUiCall, workValue9)
      workValue4 = RenderSprite
      workValue5 = dataTable.Grid
      workValue5 = workValue5.Dictionary
      workValue6 = dataTable.Grid
      workValue6 = workValue6.Texture
      workValue7 = rageUiCall2.X
      workValue8 = dataTable.Grid
      workValue8 = workValue8.X
      workValue7 = workValue7 + workValue8
      workValue8 = rageUiCall2.WidthOffset
      workValue8 = workValue8 / 2
      workValue7 = workValue7 + workValue8
      workValue8 = rageUiCall2.Y
      rageUiCall = dataTable.Grid
      rageUiCall = rageUiCall.Y
      workValue8 = workValue8 + rageUiCall
      rageUiCall = rageUiCall2.SubtitleHeight
      workValue8 = workValue8 + rageUiCall
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ItemOffset
      workValue8 = workValue8 + rageUiCall
      rageUiCall = dataTable.Grid
      rageUiCall = rageUiCall.Width
      workValue9 = dataTable.Grid
      workValue9 = workValue9.Height
      workValue4(workValue5, workValue6, workValue7, workValue8, rageUiCall, workValue9)
      workValue4 = RenderSprite
      workValue5 = dataTable.Circle
      workValue5 = workValue5.Dictionary
      workValue6 = dataTable.Circle
      workValue6 = workValue6.Texture
      workValue7 = workValue2
      workValue8 = workValue3
      rageUiCall = dataTable.Circle
      rageUiCall = rageUiCall.Width
      workValue9 = dataTable.Circle
      workValue9 = workValue9.Height
      workValue4(workValue5, workValue6, workValue7, workValue8, rageUiCall, workValue9)
      workValue4 = RenderText
      workValue5 = arg3 or workValue5
      if not arg3 then
        workValue5 = ""
      end
      workValue6 = rageUiCall2.X
      workValue7 = dataTable.Text
      workValue7 = workValue7.Top
      workValue7 = workValue7.X
      workValue6 = workValue6 + workValue7
      workValue7 = rageUiCall2.WidthOffset
      workValue7 = workValue7 / 2
      workValue6 = workValue6 + workValue7
      workValue7 = rageUiCall2.Y
      workValue8 = dataTable.Text
      workValue8 = workValue8.Top
      workValue8 = workValue8.Y
      workValue7 = workValue7 + workValue8
      workValue8 = rageUiCall2.SubtitleHeight
      workValue7 = workValue7 + workValue8
      workValue8 = RageUI
      workValue8 = workValue8.ItemOffset
      workValue7 = workValue7 + workValue8
      workValue8 = 0
      rageUiCall = dataTable.Text
      rageUiCall = rageUiCall.Top
      rageUiCall = rageUiCall.Scale
      workValue9 = 245
      numberValue = 245
      numberValue2 = 245
      numberValue3 = 255
      numberValue4 = 1
      workValue4(workValue5, workValue6, workValue7, workValue8, rageUiCall, workValue9, numberValue, numberValue2, numberValue3, numberValue4)
      workValue4 = RenderText
      workValue5 = arg4 or workValue5
      if not arg4 then
        workValue5 = ""
      end
      workValue6 = rageUiCall2.X
      workValue7 = dataTable.Text
      workValue7 = workValue7.Bottom
      workValue7 = workValue7.X
      workValue6 = workValue6 + workValue7
      workValue7 = rageUiCall2.WidthOffset
      workValue7 = workValue7 / 2
      workValue6 = workValue6 + workValue7
      workValue7 = rageUiCall2.Y
      workValue8 = dataTable.Text
      workValue8 = workValue8.Bottom
      workValue8 = workValue8.Y
      workValue7 = workValue7 + workValue8
      workValue8 = rageUiCall2.SubtitleHeight
      workValue7 = workValue7 + workValue8
      workValue8 = RageUI
      workValue8 = workValue8.ItemOffset
      workValue7 = workValue7 + workValue8
      workValue8 = 0
      rageUiCall = dataTable.Text
      rageUiCall = rageUiCall.Bottom
      rageUiCall = rageUiCall.Scale
      workValue9 = 245
      numberValue = 245
      numberValue2 = 245
      numberValue3 = 255
      numberValue4 = 1
      workValue4(workValue5, workValue6, workValue7, workValue8, rageUiCall, workValue9, numberValue, numberValue2, numberValue3, numberValue4)
      workValue4 = RenderText
      workValue5 = arg5 or workValue5
      if not arg5 then
        workValue5 = ""
      end
      workValue6 = rageUiCall2.X
      workValue7 = dataTable.Text
      workValue7 = workValue7.Left
      workValue7 = workValue7.X
      workValue6 = workValue6 + workValue7
      workValue7 = rageUiCall2.WidthOffset
      workValue7 = workValue7 / 2
      workValue6 = workValue6 + workValue7
      workValue7 = rageUiCall2.Y
      workValue8 = dataTable.Text
      workValue8 = workValue8.Left
      workValue8 = workValue8.Y
      workValue7 = workValue7 + workValue8
      workValue8 = rageUiCall2.SubtitleHeight
      workValue7 = workValue7 + workValue8
      workValue8 = RageUI
      workValue8 = workValue8.ItemOffset
      workValue7 = workValue7 + workValue8
      workValue8 = 0
      rageUiCall = dataTable.Text
      rageUiCall = rageUiCall.Left
      rageUiCall = rageUiCall.Scale
      workValue9 = 245
      numberValue = 245
      numberValue2 = 245
      numberValue3 = 255
      numberValue4 = 1
      workValue4(workValue5, workValue6, workValue7, workValue8, rageUiCall, workValue9, numberValue, numberValue2, numberValue3, numberValue4)
      workValue4 = RenderText
      workValue5 = arg6 or workValue5
      if not arg6 then
        workValue5 = ""
      end
      workValue6 = rageUiCall2.X
      workValue7 = dataTable.Text
      workValue7 = workValue7.Right
      workValue7 = workValue7.X
      workValue6 = workValue6 + workValue7
      workValue7 = rageUiCall2.WidthOffset
      workValue7 = workValue7 / 2
      workValue6 = workValue6 + workValue7
      workValue7 = rageUiCall2.Y
      workValue8 = dataTable.Text
      workValue8 = workValue8.Right
      workValue8 = workValue8.Y
      workValue7 = workValue7 + workValue8
      workValue8 = rageUiCall2.SubtitleHeight
      workValue7 = workValue7 + workValue8
      workValue8 = RageUI
      workValue8 = workValue8.ItemOffset
      workValue7 = workValue7 + workValue8
      workValue8 = 0
      rageUiCall = dataTable.Text
      rageUiCall = rageUiCall.Right
      rageUiCall = rageUiCall.Scale
      workValue9 = 245
      numberValue = 245
      numberValue2 = 245
      numberValue3 = 255
      numberValue4 = 1
      workValue4(workValue5, workValue6, workValue7, workValue8, rageUiCall, workValue9, numberValue, numberValue2, numberValue3, numberValue4)
      if rageUiCall3 then
        workValue4 = IsDisabledControlPressed
        workValue5 = 0
        workValue6 = 24
        workValue4 = workValue4(workValue5, workValue6)
        if workValue4 then
          workValue = true
          workValue4 = RageUI
          workValue4 = workValue4.round
          workValue5 = GetControlNormal
          workValue6 = 2
          workValue7 = 239
          workValue5 = workValue5(workValue6, workValue7)
          workValue5 = workValue5 * 1920
          workValue4 = workValue4(workValue5)
          workValue5 = rageUiCall2.SafeZoneSize
          workValue5 = workValue5.X
          workValue4 = workValue4 - workValue5
          workValue5 = dataTable.Circle
          workValue5 = workValue5.Width
          workValue5 = workValue5 / 2
          workValue2 = workValue4 - workValue5
          workValue4 = RageUI
          workValue4 = workValue4.round
          workValue5 = GetControlNormal
          workValue6 = 2
          workValue7 = 240
          workValue5 = workValue5(workValue6, workValue7)
          workValue5 = workValue5 * 1080
          workValue4 = workValue4(workValue5)
          workValue5 = rageUiCall2.SafeZoneSize
          workValue5 = workValue5.Y
          workValue4 = workValue4 - workValue5
          workValue5 = dataTable.Circle
          workValue5 = workValue5.Height
          workValue5 = workValue5 / 2
          workValue3 = workValue4 - workValue5
          workValue4 = rageUiCall2.X
          workValue5 = dataTable.Grid
          workValue5 = workValue5.X
          workValue4 = workValue4 + workValue5
          workValue5 = rageUiCall2.WidthOffset
          workValue5 = workValue5 / 2
          workValue4 = workValue4 + workValue5
          workValue4 = workValue4 + 20
          workValue5 = dataTable.Grid
          workValue5 = workValue5.Width
          workValue4 = workValue4 + workValue5
          workValue4 = workValue4 - 40
          if workValue2 > workValue4 then
            workValue4 = rageUiCall2.X
            workValue5 = dataTable.Grid
            workValue5 = workValue5.X
            workValue4 = workValue4 + workValue5
            workValue5 = rageUiCall2.WidthOffset
            workValue5 = workValue5 / 2
            workValue4 = workValue4 + workValue5
            workValue4 = workValue4 + 20
            workValue5 = dataTable.Grid
            workValue5 = workValue5.Width
            workValue4 = workValue4 + workValue5
            workValue2 = workValue4 - 40
          else
            workValue4 = rageUiCall2.X
            workValue5 = dataTable.Grid
            workValue5 = workValue5.X
            workValue4 = workValue4 + workValue5
            workValue4 = workValue4 + 20
            workValue5 = dataTable.Circle
            workValue5 = workValue5.Width
            workValue5 = workValue5 / 2
            workValue4 = workValue4 - workValue5
            if workValue2 < workValue4 then
              workValue4 = rageUiCall2.X
              workValue5 = dataTable.Grid
              workValue5 = workValue5.X
              workValue4 = workValue4 + workValue5
              workValue4 = workValue4 + 20
              workValue5 = dataTable.Circle
              workValue5 = workValue5.Width
              workValue5 = workValue5 / 2
              workValue2 = workValue4 - workValue5
            end
          end
          workValue4 = rageUiCall2.Y
          workValue5 = dataTable.Grid
          workValue5 = workValue5.Y
          workValue4 = workValue4 + workValue5
          workValue5 = rageUiCall2.SubtitleHeight
          workValue4 = workValue4 + workValue5
          workValue5 = RageUI
          workValue5 = workValue5.ItemOffset
          workValue4 = workValue4 + workValue5
          workValue4 = workValue4 + 20
          workValue5 = dataTable.Grid
          workValue5 = workValue5.Height
          workValue4 = workValue4 + workValue5
          workValue4 = workValue4 - 40
          if workValue3 > workValue4 then
            workValue4 = rageUiCall2.Y
            workValue5 = dataTable.Grid
            workValue5 = workValue5.Y
            workValue4 = workValue4 + workValue5
            workValue5 = rageUiCall2.SubtitleHeight
            workValue4 = workValue4 + workValue5
            workValue5 = RageUI
            workValue5 = workValue5.ItemOffset
            workValue4 = workValue4 + workValue5
            workValue4 = workValue4 + 20
            workValue5 = dataTable.Grid
            workValue5 = workValue5.Height
            workValue4 = workValue4 + workValue5
            workValue3 = workValue4 - 40
          else
            workValue4 = rageUiCall2.Y
            workValue5 = dataTable.Grid
            workValue5 = workValue5.Y
            workValue4 = workValue4 + workValue5
            workValue5 = rageUiCall2.SubtitleHeight
            workValue4 = workValue4 + workValue5
            workValue5 = RageUI
            workValue5 = workValue5.ItemOffset
            workValue4 = workValue4 + workValue5
            workValue4 = workValue4 + 20
            workValue5 = dataTable.Circle
            workValue5 = workValue5.Height
            workValue5 = workValue5 / 2
            workValue4 = workValue4 - workValue5
            if workValue3 < workValue4 then
              workValue4 = rageUiCall2.Y
              workValue5 = dataTable.Grid
              workValue5 = workValue5.Y
              workValue4 = workValue4 + workValue5
              workValue5 = rageUiCall2.SubtitleHeight
              workValue4 = workValue4 + workValue5
              workValue5 = RageUI
              workValue5 = workValue5.ItemOffset
              workValue4 = workValue4 + workValue5
              workValue4 = workValue4 + 20
              workValue5 = dataTable.Circle
              workValue5 = workValue5.Height
              workValue5 = workValue5 / 2
              workValue3 = workValue4 - workValue5
            end
          end
          workValue4 = RageUI
          workValue4 = workValue4.round
          workValue5 = rageUiCall2.X
          workValue6 = dataTable.Grid
          workValue6 = workValue6.X
          workValue5 = workValue5 + workValue6
          workValue6 = rageUiCall2.WidthOffset
          workValue6 = workValue6 / 2
          workValue5 = workValue5 + workValue6
          workValue5 = workValue5 + 20
          workValue5 = workValue2 - workValue5
          workValue6 = dataTable.Circle
          workValue6 = workValue6.Width
          workValue6 = workValue6 / 2
          workValue5 = workValue5 + workValue6
          workValue6 = dataTable.Grid
          workValue6 = workValue6.Width
          workValue6 = workValue6 - 40
          workValue5 = workValue5 / workValue6
          workValue6 = 2
          workValue4 = workValue4(workValue5, workValue6)
          arg1 = workValue4
          workValue4 = RageUI
          workValue4 = workValue4.round
          workValue5 = rageUiCall2.Y
          workValue6 = dataTable.Grid
          workValue6 = workValue6.Y
          workValue5 = workValue5 + workValue6
          workValue6 = rageUiCall2.SubtitleHeight
          workValue5 = workValue5 + workValue6
          workValue6 = RageUI
          workValue6 = workValue6.ItemOffset
          workValue5 = workValue5 + workValue6
          workValue5 = workValue5 + 20
          workValue5 = workValue3 - workValue5
          workValue6 = dataTable.Circle
          workValue6 = workValue6.Height
          workValue6 = workValue6 / 2
          workValue5 = workValue5 + workValue6
          workValue6 = dataTable.Grid
          workValue6 = workValue6.Height
          workValue6 = workValue6 - 40
          workValue5 = workValue5 / workValue6
          workValue6 = 2
          workValue4 = workValue4(workValue5, workValue6)
          arg2 = workValue4
          if arg1 > 1.0 then
            arg1 = 1.0
          end
          if arg2 > 1.0 then
            arg2 = 1.0
          end
        end
      end
      workValue4 = RageUI
      workValue5 = RageUI
      workValue5 = workValue5.ItemOffset
      workValue6 = dataTable.Background
      workValue6 = workValue6.Height
      workValue5 = workValue5 + workValue6
      workValue6 = dataTable.Background
      workValue6 = workValue6.Y
      workValue5 = workValue5 + workValue6
      workValue4.ItemOffset = workValue5
      if rageUiCall3 and workValue then
        workValue4 = RageUI
        workValue4 = workValue4.Settings
        workValue4 = workValue4.Audio
        workValue5 = RageUI
        workValue5 = workValue5.PlaySound
        workValue6 = workValue4.Use
        workValue6 = workValue4[workValue6]
        workValue6 = workValue6.Slider
        workValue6 = workValue6.audioName
        workValue7 = workValue4.Use
        workValue7 = workValue4[workValue7]
        workValue7 = workValue7.Slider
        workValue7 = workValue7.audioRef
        workValue8 = true
        workValue5(workValue6, workValue7, workValue8)
      end
      workValue4 = arg7
      workValue5 = rageUiCall3
      workValue6 = workValue
      workValue7 = arg1
      workValue8 = arg2
      workValue4(workValue5, workValue6, workValue7, workValue8)
    end
  end
  ::flow_label_650::
end
dataTable2.GridPanel = dataTable3
