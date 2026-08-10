--[[
    Beginner Guide: UIStatisticsPanel.lua
    =====================================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Uistatistics Panel
    ===================================

    File: cmg/prod/client/rageui/menu/panels/UIStatisticsPanel.lua
    Purpose: This file contains FiveM client/resource logic.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

]]
local dataTable, dataTable2, dataTable3
dataTable = {}
dataTable2 = {}
dataTable2.Dictionary = "commonmenu"
dataTable2.Texture = "gradient_bgd"
dataTable2.Y = 4
dataTable2.Width = 431
dataTable2.Height = 42
dataTable.Background = dataTable2
dataTable2 = {}
dataTable3 = {}
dataTable3.X = -40
dataTable3.Y = 15
dataTable3.Scale = 0.35
dataTable2.Left = dataTable3
dataTable.Text = dataTable2
dataTable2 = {}
dataTable2.Right = 8
dataTable2.Y = 27
dataTable2.Width = 200
dataTable2.Height = 10
dataTable2.OffsetRatio = 0.5
dataTable.Bar = dataTable2
dataTable2 = {}
dataTable3 = {}
dataTable3.X = 200
dataTable3.Y = 27
dataTable3.Width = 2
dataTable3.Height = 10
dataTable2[1] = dataTable3
dataTable3 = {}
dataTable3.X = 200
dataTable3.Y = 27
dataTable3.Width = 2
dataTable3.Height = 10
dataTable2[2] = dataTable3
dataTable3 = {}
dataTable3.X = 200
dataTable3.Y = 27
dataTable3.Width = 2
dataTable3.Height = 10
dataTable2[3] = dataTable3
dataTable3 = {}
dataTable3.X = 200
dataTable3.Y = 27
dataTable3.Width = 2
dataTable3.Height = 10
dataTable2[4] = dataTable3
dataTable3 = {}
dataTable3.X = 200
dataTable3.Y = 27
dataTable3.Width = 2
dataTable3.Height = 10
dataTable2[5] = dataTable3
dataTable.Divider = dataTable2
dataTable2 = RageUI
function dataTable3(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, workValue, rageUiCall, workValue2, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8
  arg4 = RageUI
  arg4 = arg4.CurrentMenu
  if nil ~= arg4 then
    arg5 = arg4
    arg5 = arg5()
    if arg5 then
      if nil ~= arg3 then
        arg5 = arg4.Index
        if arg5 ~= arg3 then
          goto flow_label_262
        end
      end
      arg5 = dataTable.Bar
      arg5 = arg5.Width
      arg6 = arg4.WidthOffset
      arg7 = dataTable.Bar
      arg7 = arg7.OffsetRatio
      arg6 = arg6 * arg7
      arg5 = arg5 + arg6
      arg6 = RenderRectangle
      arg7 = arg4.X
      workValue = arg4.Y
      rageUiCall = dataTable.Background
      rageUiCall = rageUiCall.Y
      workValue = workValue + rageUiCall
      rageUiCall = arg4.SubtitleHeight
      workValue = workValue + rageUiCall
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ItemOffset
      workValue = workValue + rageUiCall
      rageUiCall = RageUI
      rageUiCall = rageUiCall.StatisticPanelCount
      rageUiCall = rageUiCall * 42
      workValue = workValue + rageUiCall
      rageUiCall = dataTable.Background
      rageUiCall = rageUiCall.Width
      workValue2 = arg4.WidthOffset
      rageUiCall = rageUiCall + workValue2
      workValue2 = dataTable.Background
      workValue2 = workValue2.Height
      numberValue = 0
      numberValue2 = 0
      numberValue3 = 0
      numberValue4 = 170
      arg6(arg7, workValue, rageUiCall, workValue2, numberValue, numberValue2, numberValue3, numberValue4)
      arg6 = RenderText
      arg7 = arg2 or arg7
      if not arg2 then
        arg7 = ""
      end
      workValue = arg4.X
      workValue = workValue + 8.0
      rageUiCall = RageUI
      rageUiCall = rageUiCall.StatisticPanelCount
      rageUiCall = rageUiCall * 40
      workValue2 = arg4.Y
      rageUiCall = rageUiCall + workValue2
      workValue2 = dataTable.Text
      workValue2 = workValue2.Left
      workValue2 = workValue2.Y
      rageUiCall = rageUiCall + workValue2
      workValue2 = arg4.SubtitleHeight
      rageUiCall = rageUiCall + workValue2
      workValue2 = RageUI
      workValue2 = workValue2.ItemOffset
      rageUiCall = rageUiCall + workValue2
      workValue2 = 0
      numberValue = dataTable.Text
      numberValue = numberValue.Left
      numberValue = numberValue.Scale
      numberValue2 = 245
      numberValue3 = 245
      numberValue4 = 245
      numberValue5 = 255
      numberValue6 = 0
      arg6(arg7, workValue, rageUiCall, workValue2, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6)
      arg6 = RenderRectangle
      arg7 = arg4.X
      workValue = RageUI
      workValue = workValue.Settings
      workValue = workValue.Items
      workValue = workValue.Title
      workValue = workValue.Background
      workValue = workValue.Width
      arg7 = arg7 + workValue
      arg7 = arg7 - arg5
      workValue = dataTable.Bar
      workValue = workValue.Right
      arg7 = arg7 - workValue
      workValue = arg4.WidthOffset
      arg7 = arg7 + workValue
      workValue = RageUI
      workValue = workValue.StatisticPanelCount
      workValue = workValue * 40
      rageUiCall = arg4.Y
      workValue = workValue + rageUiCall
      rageUiCall = dataTable.Bar
      rageUiCall = rageUiCall.Y
      workValue = workValue + rageUiCall
      rageUiCall = arg4.SubtitleHeight
      workValue = workValue + rageUiCall
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ItemOffset
      workValue = workValue + rageUiCall
      rageUiCall = arg5
      workValue2 = dataTable.Bar
      workValue2 = workValue2.Height
      numberValue = 87
      numberValue2 = 87
      numberValue3 = 87
      numberValue4 = 255
      arg6(arg7, workValue, rageUiCall, workValue2, numberValue, numberValue2, numberValue3, numberValue4)
      arg6 = RenderRectangle
      arg7 = arg4.X
      workValue = RageUI
      workValue = workValue.Settings
      workValue = workValue.Items
      workValue = workValue.Title
      workValue = workValue.Background
      workValue = workValue.Width
      arg7 = arg7 + workValue
      arg7 = arg7 - arg5
      workValue = dataTable.Bar
      workValue = workValue.Right
      arg7 = arg7 - workValue
      workValue = arg4.WidthOffset
      arg7 = arg7 + workValue
      workValue = RageUI
      workValue = workValue.StatisticPanelCount
      workValue = workValue * 40
      rageUiCall = arg4.Y
      workValue = workValue + rageUiCall
      rageUiCall = dataTable.Bar
      rageUiCall = rageUiCall.Y
      workValue = workValue + rageUiCall
      rageUiCall = arg4.SubtitleHeight
      workValue = workValue + rageUiCall
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ItemOffset
      workValue = workValue + rageUiCall
      rageUiCall = arg1 * arg5
      workValue2 = dataTable.Bar
      workValue2 = workValue2.Height
      numberValue = 255
      numberValue2 = 255
      numberValue3 = 255
      numberValue4 = 255
      arg6(arg7, workValue, rageUiCall, workValue2, numberValue, numberValue2, numberValue3, numberValue4)
      arg6 = 1
      arg7 = dataTable.Divider
      arg7 = #arg7
      workValue = 1
      for rageUiCall = arg6, arg7, workValue do
        workValue2 = RenderRectangle
        numberValue = arg4.X
        numberValue2 = RageUI
        numberValue2 = numberValue2.Settings
        numberValue2 = numberValue2.Items
        numberValue2 = numberValue2.Title
        numberValue2 = numberValue2.Background
        numberValue2 = numberValue2.Width
        numberValue = numberValue + numberValue2
        numberValue = numberValue - arg5
        numberValue2 = dataTable.Bar
        numberValue2 = numberValue2.Right
        numberValue = numberValue - numberValue2
        numberValue2 = dataTable.Divider
        numberValue2 = #numberValue2
        numberValue3 = dataTable.Divider
        numberValue3 = numberValue3[rageUiCall]
        numberValue3 = numberValue3.Width
        numberValue2 = numberValue2 / numberValue3
        numberValue2 = arg5 - numberValue2
        numberValue3 = dataTable.Divider
        numberValue3 = #numberValue3
        numberValue3 = numberValue3 + 1
        numberValue2 = numberValue2 / numberValue3
        numberValue2 = rageUiCall * numberValue2
        numberValue = numberValue + numberValue2
        numberValue2 = arg4.WidthOffset
        numberValue = numberValue + numberValue2
        numberValue2 = RageUI
        numberValue2 = numberValue2.StatisticPanelCount
        numberValue2 = numberValue2 * 40
        numberValue3 = arg4.Y
        numberValue2 = numberValue2 + numberValue3
        numberValue3 = dataTable.Divider
        numberValue3 = numberValue3[rageUiCall]
        numberValue3 = numberValue3.Y
        numberValue2 = numberValue2 + numberValue3
        numberValue3 = arg4.SubtitleHeight
        numberValue2 = numberValue2 + numberValue3
        numberValue3 = RageUI
        numberValue3 = numberValue3.ItemOffset
        numberValue2 = numberValue2 + numberValue3
        numberValue3 = dataTable.Divider
        numberValue3 = numberValue3[rageUiCall]
        numberValue3 = numberValue3.Width
        numberValue4 = dataTable.Divider
        numberValue4 = numberValue4[rageUiCall]
        numberValue4 = numberValue4.Height
        numberValue5 = 0
        numberValue6 = 0
        numberValue7 = 0
        numberValue8 = 255
        workValue2(numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8)
      end
      arg6 = RageUI
      arg7 = RageUI
      arg7 = arg7.StatisticPanelCount
      arg7 = arg7 + 1
      arg6.StatisticPanelCount = arg7
    end
  end
  ::flow_label_262::
end
dataTable2.StatisticPanel = dataTable3
dataTable2 = RageUI
function dataTable3(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local workValue, rageUiCall, workValue2, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12
  workValue = RageUI
  workValue = workValue.CurrentMenu
  if nil ~= workValue then
    rageUiCall = workValue
    rageUiCall = rageUiCall()
    if rageUiCall then
      if nil ~= arg7 then
        rageUiCall = workValue.Index
        if rageUiCall ~= arg7 then
          goto flow_label_403
        end
      end
      if not arg3 then
        rageUiCall = {}
        workValue2 = 255
        numberValue = 255
        numberValue2 = 255
        numberValue3 = 255
        rageUiCall[1] = workValue2
        rageUiCall[2] = numberValue
        rageUiCall[3] = numberValue2
        rageUiCall[4] = numberValue3
        arg3 = rageUiCall
      end
      rageUiCall = dataTable.Bar
      rageUiCall = rageUiCall.Width
      workValue2 = workValue.WidthOffset
      numberValue = dataTable.Bar
      numberValue = numberValue.OffsetRatio
      workValue2 = workValue2 * numberValue
      rageUiCall = rageUiCall + workValue2
      workValue2 = RenderRectangle
      numberValue = workValue.X
      numberValue2 = workValue.Y
      numberValue3 = dataTable.Background
      numberValue3 = numberValue3.Y
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = workValue.SubtitleHeight
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = RageUI
      numberValue3 = numberValue3.ItemOffset
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = RageUI
      numberValue3 = numberValue3.StatisticPanelCount
      numberValue3 = numberValue3 * 42
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = dataTable.Background
      numberValue3 = numberValue3.Width
      numberValue4 = workValue.WidthOffset
      numberValue3 = numberValue3 + numberValue4
      numberValue4 = dataTable.Background
      numberValue4 = numberValue4.Height
      numberValue5 = 0
      numberValue6 = 0
      numberValue7 = 0
      numberValue8 = 170
      workValue2(numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8)
      workValue2 = RenderText
      numberValue = arg1 or numberValue
      if not arg1 then
        numberValue = ""
      end
      numberValue2 = workValue.X
      numberValue2 = numberValue2 + 8.0
      numberValue3 = RageUI
      numberValue3 = numberValue3.StatisticPanelCount
      numberValue3 = numberValue3 * 40
      numberValue4 = workValue.Y
      numberValue3 = numberValue3 + numberValue4
      numberValue4 = dataTable.Text
      numberValue4 = numberValue4.Left
      numberValue4 = numberValue4.Y
      numberValue3 = numberValue3 + numberValue4
      numberValue4 = workValue.SubtitleHeight
      numberValue3 = numberValue3 + numberValue4
      numberValue4 = RageUI
      numberValue4 = numberValue4.ItemOffset
      numberValue3 = numberValue3 + numberValue4
      numberValue4 = 0
      numberValue5 = dataTable.Text
      numberValue5 = numberValue5.Left
      numberValue5 = numberValue5.Scale
      numberValue6 = 245
      numberValue7 = 245
      numberValue8 = 245
      numberValue9 = 255
      numberValue10 = 0
      workValue2(numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10)
      workValue2 = RenderRectangle
      numberValue = workValue.X
      numberValue2 = RageUI
      numberValue2 = numberValue2.Settings
      numberValue2 = numberValue2.Items
      numberValue2 = numberValue2.Title
      numberValue2 = numberValue2.Background
      numberValue2 = numberValue2.Width
      numberValue = numberValue + numberValue2
      numberValue = numberValue - rageUiCall
      numberValue2 = dataTable.Bar
      numberValue2 = numberValue2.Right
      numberValue = numberValue - numberValue2
      numberValue2 = workValue.WidthOffset
      numberValue = numberValue + numberValue2
      numberValue2 = RageUI
      numberValue2 = numberValue2.StatisticPanelCount
      numberValue2 = numberValue2 * 40
      numberValue3 = workValue.Y
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = dataTable.Bar
      numberValue3 = numberValue3.Y
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = workValue.SubtitleHeight
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = RageUI
      numberValue3 = numberValue3.ItemOffset
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = rageUiCall
      numberValue4 = dataTable.Bar
      numberValue4 = numberValue4.Height
      numberValue5 = 87
      numberValue6 = 87
      numberValue7 = 87
      numberValue8 = 255
      workValue2(numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8)
      workValue2 = RenderRectangle
      numberValue = workValue.X
      numberValue2 = RageUI
      numberValue2 = numberValue2.Settings
      numberValue2 = numberValue2.Items
      numberValue2 = numberValue2.Title
      numberValue2 = numberValue2.Background
      numberValue2 = numberValue2.Width
      numberValue = numberValue + numberValue2
      numberValue = numberValue - rageUiCall
      numberValue2 = dataTable.Bar
      numberValue2 = numberValue2.Right
      numberValue = numberValue - numberValue2
      numberValue2 = workValue.WidthOffset
      numberValue = numberValue + numberValue2
      numberValue2 = RageUI
      numberValue2 = numberValue2.StatisticPanelCount
      numberValue2 = numberValue2 * 40
      numberValue3 = workValue.Y
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = dataTable.Bar
      numberValue3 = numberValue3.Y
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = workValue.SubtitleHeight
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = RageUI
      numberValue3 = numberValue3.ItemOffset
      numberValue2 = numberValue2 + numberValue3
      numberValue3 = arg2 * rageUiCall
      numberValue4 = dataTable.Bar
      numberValue4 = numberValue4.Height
      numberValue5 = arg3[1]
      numberValue6 = arg3[2]
      numberValue7 = arg3[3]
      numberValue8 = arg3[4]
      workValue2(numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8)
      if not arg5 then
        workValue2 = {}
        numberValue = 0
        numberValue2 = 153
        numberValue3 = 204
        numberValue4 = 255
        workValue2[1] = numberValue
        workValue2[2] = numberValue2
        workValue2[3] = numberValue3
        workValue2[4] = numberValue4
        arg5 = workValue2
      end
      if not arg6 then
        workValue2 = {}
        numberValue = 185
        numberValue2 = 0
        numberValue3 = 0
        numberValue4 = 255
        workValue2[1] = numberValue
        workValue2[2] = numberValue2
        workValue2[3] = numberValue3
        workValue2[4] = numberValue4
        arg6 = workValue2
      end
      if arg4 and arg4 > 0 then
        workValue2 = workValue.X
        numberValue = RageUI
        numberValue = numberValue.Settings
        numberValue = numberValue.Items
        numberValue = numberValue.Title
        numberValue = numberValue.Background
        numberValue = numberValue.Width
        workValue2 = workValue2 + numberValue
        workValue2 = workValue2 - rageUiCall
        numberValue = dataTable.Bar
        numberValue = numberValue.Right
        workValue2 = workValue2 - numberValue
        numberValue = workValue.WidthOffset
        workValue2 = workValue2 + numberValue
        numberValue = arg2 * rageUiCall
        workValue2 = workValue2 + numberValue
        numberValue = RenderRectangle
        numberValue2 = workValue2
        numberValue3 = RageUI
        numberValue3 = numberValue3.StatisticPanelCount
        numberValue3 = numberValue3 * 40
        numberValue4 = workValue.Y
        numberValue3 = numberValue3 + numberValue4
        numberValue4 = dataTable.Bar
        numberValue4 = numberValue4.Y
        numberValue3 = numberValue3 + numberValue4
        numberValue4 = workValue.SubtitleHeight
        numberValue3 = numberValue3 + numberValue4
        numberValue4 = RageUI
        numberValue4 = numberValue4.ItemOffset
        numberValue3 = numberValue3 + numberValue4
        numberValue4 = arg4 * rageUiCall
        numberValue5 = dataTable.Bar
        numberValue5 = numberValue5.Height
        numberValue6 = arg5[1]
        numberValue7 = arg5[2]
        numberValue8 = arg5[3]
        numberValue9 = arg5[4]
        numberValue(numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9)
      elseif arg4 and arg4 < 0 then
        workValue2 = workValue.X
        numberValue = RageUI
        numberValue = numberValue.Settings
        numberValue = numberValue.Items
        numberValue = numberValue.Title
        numberValue = numberValue.Background
        numberValue = numberValue.Width
        workValue2 = workValue2 + numberValue
        workValue2 = workValue2 - rageUiCall
        numberValue = dataTable.Bar
        numberValue = numberValue.Right
        workValue2 = workValue2 - numberValue
        numberValue = workValue.WidthOffset
        workValue2 = workValue2 + numberValue
        numberValue = arg2 * rageUiCall
        workValue2 = workValue2 + numberValue
        numberValue = RenderRectangle
        numberValue2 = workValue2
        numberValue3 = RageUI
        numberValue3 = numberValue3.StatisticPanelCount
        numberValue3 = numberValue3 * 40
        numberValue4 = workValue.Y
        numberValue3 = numberValue3 + numberValue4
        numberValue4 = dataTable.Bar
        numberValue4 = numberValue4.Y
        numberValue3 = numberValue3 + numberValue4
        numberValue4 = workValue.SubtitleHeight
        numberValue3 = numberValue3 + numberValue4
        numberValue4 = RageUI
        numberValue4 = numberValue4.ItemOffset
        numberValue3 = numberValue3 + numberValue4
        numberValue4 = arg4 * rageUiCall
        numberValue5 = dataTable.Bar
        numberValue5 = numberValue5.Height
        numberValue6 = arg6[1]
        numberValue7 = arg6[2]
        numberValue8 = arg6[3]
        numberValue9 = arg6[4]
        numberValue(numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9)
      end
      workValue2 = 1
      numberValue = dataTable.Divider
      numberValue = #numberValue
      numberValue2 = 1
      for numberValue3 = workValue2, numberValue, numberValue2 do
        numberValue4 = RenderRectangle
        numberValue5 = workValue.X
        numberValue6 = RageUI
        numberValue6 = numberValue6.Settings
        numberValue6 = numberValue6.Items
        numberValue6 = numberValue6.Title
        numberValue6 = numberValue6.Background
        numberValue6 = numberValue6.Width
        numberValue5 = numberValue5 + numberValue6
        numberValue5 = numberValue5 - rageUiCall
        numberValue6 = dataTable.Bar
        numberValue6 = numberValue6.Right
        numberValue5 = numberValue5 - numberValue6
        numberValue6 = dataTable.Divider
        numberValue6 = #numberValue6
        numberValue7 = dataTable.Divider
        numberValue7 = numberValue7[numberValue3]
        numberValue7 = numberValue7.Width
        numberValue6 = numberValue6 / numberValue7
        numberValue6 = rageUiCall - numberValue6
        numberValue7 = dataTable.Divider
        numberValue7 = #numberValue7
        numberValue7 = numberValue7 + 1
        numberValue6 = numberValue6 / numberValue7
        numberValue6 = numberValue3 * numberValue6
        numberValue5 = numberValue5 + numberValue6
        numberValue6 = workValue.WidthOffset
        numberValue5 = numberValue5 + numberValue6
        numberValue6 = RageUI
        numberValue6 = numberValue6.StatisticPanelCount
        numberValue6 = numberValue6 * 40
        numberValue7 = workValue.Y
        numberValue6 = numberValue6 + numberValue7
        numberValue7 = dataTable.Divider
        numberValue7 = numberValue7[numberValue3]
        numberValue7 = numberValue7.Y
        numberValue6 = numberValue6 + numberValue7
        numberValue7 = workValue.SubtitleHeight
        numberValue6 = numberValue6 + numberValue7
        numberValue7 = RageUI
        numberValue7 = numberValue7.ItemOffset
        numberValue6 = numberValue6 + numberValue7
        numberValue7 = dataTable.Divider
        numberValue7 = numberValue7[numberValue3]
        numberValue7 = numberValue7.Width
        numberValue8 = dataTable.Divider
        numberValue8 = numberValue8[numberValue3]
        numberValue8 = numberValue8.Height
        numberValue9 = 0
        numberValue10 = 0
        numberValue11 = 0
        numberValue12 = 255
        numberValue4(numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12)
      end
      workValue2 = RageUI
      numberValue = RageUI
      numberValue = numberValue.StatisticPanelCount
      numberValue = numberValue + 1
      workValue2.StatisticPanelCount = numberValue
    end
  end
  ::flow_label_403::
end
dataTable2.StatisticPanelAdvanced = dataTable3