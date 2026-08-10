--[[
    Beginner Guide: UIColourPanel.lua
    =================================

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
    BEGINNER GUIDE — Uicolour Panel
    ===============================

    File: cmg/prod/client/rageui/menu/panels/UIColourPanel.lua
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
local dataTable, dataTable2, workValue10
dataTable = {}
dataTable2 = {}
dataTable2.Dictionary = "commonmenu"
dataTable2.Texture = "gradient_bgd"
dataTable2.Y = 4
dataTable2.Width = 431
dataTable2.Height = 112
dataTable.Background = dataTable2
dataTable2 = {}
dataTable2.Dictionary = "commonmenu"
dataTable2.Texture = "arrowleft"
dataTable2.X = 7.5
dataTable2.Y = 15
dataTable2.Width = 30
dataTable2.Height = 30
dataTable.LeftArrow = dataTable2
dataTable2 = {}
dataTable2.Dictionary = "commonmenu"
dataTable2.Texture = "arrowright"
dataTable2.X = 393.5
dataTable2.Y = 15
dataTable2.Width = 30
dataTable2.Height = 30
dataTable.RightArrow = dataTable2
dataTable2 = {}
dataTable2.X = 215.5
dataTable2.Y = 15
dataTable2.Scale = 0.35
dataTable.Header = dataTable2
dataTable2 = {}
dataTable2.X = 15
dataTable2.Y = 55
dataTable2.Width = 44.5
dataTable2.Height = 44.5
dataTable.Box = dataTable2
dataTable2 = {}
dataTable2.X = 15
dataTable2.Y = 47
dataTable2.Width = 44.5
dataTable2.Height = 8
dataTable.SelectedRectangle = dataTable2
dataTable2 = RageUI
function workValue10(arg1, arg2, arg3, arg4, arg5, arg6)
  local rageUiCall2, workValue11, rageUiCall3, workValue12, workValue, workValue2, workValue3, workValue4, workValue5, workValue6, workValue7, rageUiCall, workValue8, numberValue, numberValue2, tableHelper, workValue9
  rageUiCall2 = RageUI
  rageUiCall2 = rageUiCall2.CurrentMenu
  if nil ~= rageUiCall2 then
    workValue11 = rageUiCall2
    workValue11 = workValue11()
    if workValue11 then
      if nil ~= arg6 then
        workValue11 = rageUiCall2.Index
        if workValue11 ~= arg6 then
          goto flow_label_530
        end
      end
      workValue11 = #arg2
      if workValue11 > 9 then
        workValue11 = 9
        if workValue11 then
          goto flow_label_21
        end
      end
      workValue11 = #arg2
      ::flow_label_21::
      rageUiCall3 = RageUI
      rageUiCall3 = rageUiCall3.IsMouseInBounds
      workValue12 = rageUiCall2.X
      workValue = dataTable.Box
      workValue = workValue.X
      workValue12 = workValue12 + workValue
      workValue = rageUiCall2.SafeZoneSize
      workValue = workValue.X
      workValue12 = workValue12 + workValue
      workValue = rageUiCall2.WidthOffset
      workValue = workValue / 2
      workValue12 = workValue12 + workValue
      workValue = rageUiCall2.Y
      workValue2 = dataTable.Box
      workValue2 = workValue2.Y
      workValue = workValue + workValue2
      workValue2 = rageUiCall2.SafeZoneSize
      workValue2 = workValue2.Y
      workValue = workValue + workValue2
      workValue2 = rageUiCall2.SubtitleHeight
      workValue = workValue + workValue2
      workValue2 = RageUI
      workValue2 = workValue2.ItemOffset
      workValue = workValue + workValue2
      workValue2 = dataTable.Box
      workValue2 = workValue2.Width
      workValue2 = workValue2 * workValue11
      workValue3 = dataTable.Box
      workValue3 = workValue3.Height
      rageUiCall3 = rageUiCall3(workValue12, workValue, workValue2, workValue3)
      workValue12 = RageUI
      workValue12 = workValue12.IsMouseInBounds
      workValue = rageUiCall2.X
      workValue2 = dataTable.LeftArrow
      workValue2 = workValue2.X
      workValue = workValue + workValue2
      workValue2 = rageUiCall2.SafeZoneSize
      workValue2 = workValue2.X
      workValue = workValue + workValue2
      workValue2 = rageUiCall2.WidthOffset
      workValue2 = workValue2 / 2
      workValue = workValue + workValue2
      workValue2 = rageUiCall2.Y
      workValue3 = dataTable.LeftArrow
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
      workValue3 = dataTable.LeftArrow
      workValue3 = workValue3.Width
      workValue4 = dataTable.LeftArrow
      workValue4 = workValue4.Height
      workValue12 = workValue12(workValue, workValue2, workValue3, workValue4)
      workValue = RageUI
      workValue = workValue.IsMouseInBounds
      workValue2 = rageUiCall2.X
      workValue3 = dataTable.RightArrow
      workValue3 = workValue3.X
      workValue2 = workValue2 + workValue3
      workValue3 = rageUiCall2.SafeZoneSize
      workValue3 = workValue3.X
      workValue2 = workValue2 + workValue3
      workValue3 = rageUiCall2.WidthOffset
      workValue3 = workValue3 / 2
      workValue2 = workValue2 + workValue3
      workValue3 = rageUiCall2.Y
      workValue4 = dataTable.RightArrow
      workValue4 = workValue4.Y
      workValue3 = workValue3 + workValue4
      workValue4 = rageUiCall2.SafeZoneSize
      workValue4 = workValue4.Y
      workValue3 = workValue3 + workValue4
      workValue4 = rageUiCall2.SubtitleHeight
      workValue3 = workValue3 + workValue4
      workValue4 = RageUI
      workValue4 = workValue4.ItemOffset
      workValue3 = workValue3 + workValue4
      workValue4 = dataTable.RightArrow
      workValue4 = workValue4.Width
      workValue5 = dataTable.RightArrow
      workValue5 = workValue5.Height
      workValue = workValue(workValue2, workValue3, workValue4, workValue5)
      workValue2 = false
      workValue3 = RenderSprite
      workValue4 = dataTable.Background
      workValue4 = workValue4.Dictionary
      workValue5 = dataTable.Background
      workValue5 = workValue5.Texture
      workValue6 = rageUiCall2.X
      workValue7 = rageUiCall2.Y
      rageUiCall = dataTable.Background
      rageUiCall = rageUiCall.Y
      workValue7 = workValue7 + rageUiCall
      rageUiCall = rageUiCall2.SubtitleHeight
      workValue7 = workValue7 + rageUiCall
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ItemOffset
      workValue7 = workValue7 + rageUiCall
      rageUiCall = dataTable.Background
      rageUiCall = rageUiCall.Width
      workValue8 = rageUiCall2.WidthOffset
      rageUiCall = rageUiCall + workValue8
      workValue8 = dataTable.Background
      workValue8 = workValue8.Height
      workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall, workValue8)
      workValue3 = RenderSprite
      workValue4 = dataTable.LeftArrow
      workValue4 = workValue4.Dictionary
      workValue5 = dataTable.LeftArrow
      workValue5 = workValue5.Texture
      workValue6 = rageUiCall2.X
      workValue7 = dataTable.LeftArrow
      workValue7 = workValue7.X
      workValue6 = workValue6 + workValue7
      workValue7 = rageUiCall2.WidthOffset
      workValue7 = workValue7 / 2
      workValue6 = workValue6 + workValue7
      workValue7 = rageUiCall2.Y
      rageUiCall = dataTable.LeftArrow
      rageUiCall = rageUiCall.Y
      workValue7 = workValue7 + rageUiCall
      rageUiCall = rageUiCall2.SubtitleHeight
      workValue7 = workValue7 + rageUiCall
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ItemOffset
      workValue7 = workValue7 + rageUiCall
      rageUiCall = dataTable.LeftArrow
      rageUiCall = rageUiCall.Width
      workValue8 = dataTable.LeftArrow
      workValue8 = workValue8.Height
      workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall, workValue8)
      workValue3 = RenderSprite
      workValue4 = dataTable.RightArrow
      workValue4 = workValue4.Dictionary
      workValue5 = dataTable.RightArrow
      workValue5 = workValue5.Texture
      workValue6 = rageUiCall2.X
      workValue7 = dataTable.RightArrow
      workValue7 = workValue7.X
      workValue6 = workValue6 + workValue7
      workValue7 = rageUiCall2.WidthOffset
      workValue7 = workValue7 / 2
      workValue6 = workValue6 + workValue7
      workValue7 = rageUiCall2.Y
      rageUiCall = dataTable.RightArrow
      rageUiCall = rageUiCall.Y
      workValue7 = workValue7 + rageUiCall
      rageUiCall = rageUiCall2.SubtitleHeight
      workValue7 = workValue7 + rageUiCall
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ItemOffset
      workValue7 = workValue7 + rageUiCall
      rageUiCall = dataTable.RightArrow
      rageUiCall = rageUiCall.Width
      workValue8 = dataTable.RightArrow
      workValue8 = workValue8.Height
      workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall, workValue8)
      workValue3 = RenderRectangle
      workValue4 = rageUiCall2.X
      workValue5 = dataTable.SelectedRectangle
      workValue5 = workValue5.X
      workValue4 = workValue4 + workValue5
      workValue5 = dataTable.Box
      workValue5 = workValue5.Width
      workValue6 = arg4 - arg3
      workValue5 = workValue5 * workValue6
      workValue4 = workValue4 + workValue5
      workValue5 = rageUiCall2.WidthOffset
      workValue5 = workValue5 / 2
      workValue4 = workValue4 + workValue5
      workValue5 = rageUiCall2.Y
      workValue6 = dataTable.SelectedRectangle
      workValue6 = workValue6.Y
      workValue5 = workValue5 + workValue6
      workValue6 = rageUiCall2.SubtitleHeight
      workValue5 = workValue5 + workValue6
      workValue6 = RageUI
      workValue6 = workValue6.ItemOffset
      workValue5 = workValue5 + workValue6
      workValue6 = dataTable.SelectedRectangle
      workValue6 = workValue6.Width
      workValue7 = dataTable.SelectedRectangle
      workValue7 = workValue7.Height
      rageUiCall = 245
      workValue8 = 245
      numberValue = 245
      numberValue2 = 255
      workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall, workValue8, numberValue, numberValue2)
      workValue3 = 1
      workValue4 = workValue11
      workValue5 = 1
      for workValue6 = workValue3, workValue4, workValue5 do
        workValue7 = RenderRectangle
        rageUiCall = rageUiCall2.X
        workValue8 = dataTable.Box
        workValue8 = workValue8.X
        rageUiCall = rageUiCall + workValue8
        workValue8 = dataTable.Box
        workValue8 = workValue8.Width
        numberValue = workValue6 - 1
        workValue8 = workValue8 * numberValue
        rageUiCall = rageUiCall + workValue8
        workValue8 = rageUiCall2.WidthOffset
        workValue8 = workValue8 / 2
        rageUiCall = rageUiCall + workValue8
        workValue8 = rageUiCall2.Y
        numberValue = dataTable.Box
        numberValue = numberValue.Y
        workValue8 = workValue8 + numberValue
        numberValue = rageUiCall2.SubtitleHeight
        workValue8 = workValue8 + numberValue
        numberValue = RageUI
        numberValue = numberValue.ItemOffset
        workValue8 = workValue8 + numberValue
        numberValue = dataTable.Box
        numberValue = numberValue.Width
        numberValue2 = dataTable.Box
        numberValue2 = numberValue2.Height
        tableHelper = table
        tableHelper = tableHelper.unpack
        workValue9 = arg3 + workValue6
        workValue9 = workValue9 - 1
        workValue9 = arg2[workValue9]
        tableHelper, workValue9 = tableHelper(workValue9)
        workValue7(rageUiCall, workValue8, numberValue, numberValue2, tableHelper, workValue9)
      end
      workValue3 = RenderText
      workValue4 = arg1 or workValue4
      if not arg1 or not arg1 then
        workValue4 = ""
      end
      workValue5 = " ("
      workValue6 = arg4
      workValue7 = " of "
      rageUiCall = #arg2
      workValue8 = ")"
      workValue4 = workValue4 .. workValue5 .. workValue6 .. workValue7 .. rageUiCall .. workValue8
      workValue5 = rageUiCall2.X
      workValue6 = RageUI
      workValue6 = workValue6.Settings
      workValue6 = workValue6.Panels
      workValue6 = workValue6.Grid
      workValue6 = workValue6.Text
      workValue6 = workValue6.Top
      workValue6 = workValue6.X
      workValue5 = workValue5 + workValue6
      workValue6 = rageUiCall2.WidthOffset
      workValue6 = workValue6 / 2
      workValue5 = workValue5 + workValue6
      workValue6 = rageUiCall2.Y
      workValue7 = RageUI
      workValue7 = workValue7.Settings
      workValue7 = workValue7.Panels
      workValue7 = workValue7.Grid
      workValue7 = workValue7.Text
      workValue7 = workValue7.Top
      workValue7 = workValue7.Y
      workValue6 = workValue6 + workValue7
      workValue7 = rageUiCall2.SubtitleHeight
      workValue6 = workValue6 + workValue7
      workValue7 = RageUI
      workValue7 = workValue7.ItemOffset
      workValue6 = workValue6 + workValue7
      workValue7 = 0
      rageUiCall = RageUI
      rageUiCall = rageUiCall.Settings
      rageUiCall = rageUiCall.Panels
      rageUiCall = rageUiCall.Grid
      rageUiCall = rageUiCall.Text
      rageUiCall = rageUiCall.Top
      rageUiCall = rageUiCall.Scale
      workValue8 = 245
      numberValue = 245
      numberValue2 = 245
      tableHelper = 255
      workValue9 = 1
      workValue3(workValue4, workValue5, workValue6, workValue7, rageUiCall, workValue8, numberValue, numberValue2, tableHelper, workValue9)
      if rageUiCall3 or workValue12 or workValue then
        workValue3 = RageUI
        workValue3 = workValue3.Settings
        workValue3 = workValue3.Controls
        workValue3 = workValue3.Click
        workValue3 = workValue3.Active
        if workValue3 then
          workValue2 = true
          if workValue12 then
            arg4 = arg4 - 1
            if arg4 < 1 then
              arg4 = #arg2
              workValue3 = #arg2
              workValue3 = workValue3 - workValue11
              arg3 = workValue3 + 1
            elseif arg4 < arg3 then
              arg3 = arg3 - 1
            end
          elseif workValue then
            arg4 = arg4 + 1
            workValue3 = #arg2
            if arg4 > workValue3 then
              arg4 = 1
              arg3 = 1
            else
              workValue3 = arg3 + workValue11
              workValue3 = workValue3 - 1
              if arg4 > workValue3 then
                arg3 = arg3 + 1
              end
            end
          elseif rageUiCall3 then
            workValue3 = 1
            workValue4 = workValue11
            workValue5 = 1
            for workValue6 = workValue3, workValue4, workValue5 do
              workValue7 = RageUI
              workValue7 = workValue7.IsMouseInBounds
              rageUiCall = rageUiCall2.X
              workValue8 = dataTable.Box
              workValue8 = workValue8.X
              rageUiCall = rageUiCall + workValue8
              workValue8 = dataTable.Box
              workValue8 = workValue8.Width
              numberValue = workValue6 - 1
              workValue8 = workValue8 * numberValue
              rageUiCall = rageUiCall + workValue8
              workValue8 = rageUiCall2.SafeZoneSize
              workValue8 = workValue8.X
              rageUiCall = rageUiCall + workValue8
              workValue8 = rageUiCall2.WidthOffset
              workValue8 = workValue8 / 2
              rageUiCall = rageUiCall + workValue8
              workValue8 = rageUiCall2.Y
              numberValue = dataTable.Box
              numberValue = numberValue.Y
              workValue8 = workValue8 + numberValue
              numberValue = rageUiCall2.SafeZoneSize
              numberValue = numberValue.Y
              workValue8 = workValue8 + numberValue
              numberValue = rageUiCall2.SubtitleHeight
              workValue8 = workValue8 + numberValue
              numberValue = RageUI
              numberValue = numberValue.ItemOffset
              workValue8 = workValue8 + numberValue
              numberValue = dataTable.Box
              numberValue = numberValue.Width
              numberValue2 = dataTable.Box
              numberValue2 = numberValue2.Height
              workValue7 = workValue7(rageUiCall, workValue8, numberValue, numberValue2)
              if workValue7 then
                workValue7 = arg3 + workValue6
                arg4 = workValue7 - 1
              end
            end
          end
        end
      end
      workValue3 = RageUI
      workValue4 = RageUI
      workValue4 = workValue4.ItemOffset
      workValue5 = dataTable.Background
      workValue5 = workValue5.Height
      workValue4 = workValue4 + workValue5
      workValue5 = dataTable.Background
      workValue5 = workValue5.Y
      workValue4 = workValue4 + workValue5
      workValue3.ItemOffset = workValue4
      if rageUiCall3 or workValue12 or workValue then
        workValue3 = RageUI
        workValue3 = workValue3.Settings
        workValue3 = workValue3.Controls
        workValue3 = workValue3.Click
        workValue3 = workValue3.Active
        if workValue3 then
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
        end
      end
      workValue3 = arg5
      workValue4 = rageUiCall3 or workValue4
      workValue4 = workValue12 or workValue4
      if not rageUiCall3 and not workValue12 then
        workValue4 = workValue
      end
      workValue5 = workValue2
      workValue6 = arg3
      workValue7 = arg4
      workValue3(workValue4, workValue5, workValue6, workValue7)
    end
  end
  ::flow_label_530::
end
dataTable2.ColourPanel = workValue10