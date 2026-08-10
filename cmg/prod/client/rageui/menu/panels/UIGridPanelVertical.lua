--[[
    Beginner Guide: UIGridPanelVertical.lua
    =======================================

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
    BEGINNER GUIDE — Uigrid Panel Vertical
    ======================================

    File: cmg/prod/client/rageui/menu/panels/UIGridPanelVertical.lua
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
dataTable2.Height = 275
dataTable.Background = dataTable2
dataTable2 = {}
dataTable2.Dictionary = "RageUI"
dataTable2.Texture = "vertical_grid"
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
dataTable.Text = dataTable2
dataTable2 = RageUI
function dataTable3(arg1, arg2, arg3, arg4, arg5)
  local rageUiCall2, rageUiCall3, workValue8, workValue9, workValue10, workValue, workValue2, workValue3, workValue4, workValue5, workValue6, rageUiCall, workValue7, numberValue, numberValue2, numberValue3, numberValue4
  rageUiCall2 = RageUI
  rageUiCall2 = rageUiCall2.CurrentMenu
  if nil ~= rageUiCall2 then
    rageUiCall3 = rageUiCall2
    rageUiCall3 = rageUiCall3()
    if rageUiCall3 then
      if nil ~= arg5 then
        rageUiCall3 = rageUiCall2.Index
        if rageUiCall3 ~= arg5 then
          goto flow_label_497
        end
      end
      rageUiCall3 = RageUI
      rageUiCall3 = rageUiCall3.IsMouseInBounds
      workValue8 = rageUiCall2.X
      workValue9 = dataTable.Grid
      workValue9 = workValue9.X
      workValue8 = workValue8 + workValue9
      workValue9 = rageUiCall2.SafeZoneSize
      workValue9 = workValue9.X
      workValue8 = workValue8 + workValue9
      workValue8 = workValue8 + 20
      workValue9 = rageUiCall2.Y
      workValue10 = dataTable.Grid
      workValue10 = workValue10.Y
      workValue9 = workValue9 + workValue10
      workValue10 = rageUiCall2.SafeZoneSize
      workValue10 = workValue10.Y
      workValue9 = workValue9 + workValue10
      workValue10 = rageUiCall2.SubtitleHeight
      workValue9 = workValue9 + workValue10
      workValue10 = RageUI
      workValue10 = workValue10.ItemOffset
      workValue9 = workValue9 + workValue10
      workValue9 = workValue9 + 20
      workValue10 = dataTable.Grid
      workValue10 = workValue10.Width
      workValue = rageUiCall2.WidthOffset
      workValue10 = workValue10 + workValue
      workValue10 = workValue10 - 40
      workValue = dataTable.Grid
      workValue = workValue.Height
      workValue = workValue - 40
      rageUiCall3 = rageUiCall3(workValue8, workValue9, workValue10, workValue)
      workValue8 = false
      workValue9 = rageUiCall2.X
      workValue10 = dataTable.Grid
      workValue10 = workValue10.X
      workValue9 = workValue9 + workValue10
      workValue10 = rageUiCall2.WidthOffset
      workValue10 = workValue10 / 2
      workValue9 = workValue9 + workValue10
      workValue9 = workValue9 + 20
      workValue10 = rageUiCall2.Y
      workValue = dataTable.Grid
      workValue = workValue.Y
      workValue10 = workValue10 + workValue
      workValue = rageUiCall2.SubtitleHeight
      workValue10 = workValue10 + workValue
      workValue = RageUI
      workValue = workValue.ItemOffset
      workValue10 = workValue10 + workValue
      workValue10 = workValue10 + 20
      workValue = 0.5
      if arg1 < 0.0 or arg1 > 1.0 then
        arg1 = 0.0
      end
      workValue2 = dataTable.Grid
      workValue2 = workValue2.Width
      workValue2 = workValue2 - 40
      workValue2 = workValue2 * workValue
      workValue2 = workValue9 + workValue2
      workValue3 = dataTable.Circle
      workValue3 = workValue3.Width
      workValue3 = workValue3 / 2
      workValue9 = workValue2 - workValue3
      workValue2 = dataTable.Grid
      workValue2 = workValue2.Height
      workValue2 = workValue2 - 40
      workValue2 = workValue2 * arg1
      workValue2 = workValue10 + workValue2
      workValue3 = dataTable.Circle
      workValue3 = workValue3.Height
      workValue3 = workValue3 / 2
      workValue10 = workValue2 - workValue3
      workValue2 = RenderSprite
      workValue3 = dataTable.Background
      workValue3 = workValue3.Dictionary
      workValue4 = dataTable.Background
      workValue4 = workValue4.Texture
      workValue5 = rageUiCall2.X
      workValue6 = rageUiCall2.Y
      rageUiCall = dataTable.Background
      rageUiCall = rageUiCall.Y
      workValue6 = workValue6 + rageUiCall
      rageUiCall = rageUiCall2.SubtitleHeight
      workValue6 = workValue6 + rageUiCall
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ItemOffset
      workValue6 = workValue6 + rageUiCall
      rageUiCall = dataTable.Background
      rageUiCall = rageUiCall.Width
      workValue7 = rageUiCall2.WidthOffset
      rageUiCall = rageUiCall + workValue7
      workValue7 = dataTable.Background
      workValue7 = workValue7.Height
      workValue2(workValue3, workValue4, workValue5, workValue6, rageUiCall, workValue7)
      workValue2 = RenderSprite
      workValue3 = dataTable.Grid
      workValue3 = workValue3.Dictionary
      workValue4 = dataTable.Grid
      workValue4 = workValue4.Texture
      workValue5 = rageUiCall2.X
      workValue6 = dataTable.Grid
      workValue6 = workValue6.X
      workValue5 = workValue5 + workValue6
      workValue6 = rageUiCall2.WidthOffset
      workValue6 = workValue6 / 2
      workValue5 = workValue5 + workValue6
      workValue6 = rageUiCall2.Y
      rageUiCall = dataTable.Grid
      rageUiCall = rageUiCall.Y
      workValue6 = workValue6 + rageUiCall
      rageUiCall = rageUiCall2.SubtitleHeight
      workValue6 = workValue6 + rageUiCall
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ItemOffset
      workValue6 = workValue6 + rageUiCall
      rageUiCall = dataTable.Grid
      rageUiCall = rageUiCall.Width
      workValue7 = dataTable.Grid
      workValue7 = workValue7.Height
      workValue2(workValue3, workValue4, workValue5, workValue6, rageUiCall, workValue7)
      workValue2 = RenderSprite
      workValue3 = dataTable.Circle
      workValue3 = workValue3.Dictionary
      workValue4 = dataTable.Circle
      workValue4 = workValue4.Texture
      workValue5 = workValue9
      workValue6 = workValue10
      rageUiCall = dataTable.Circle
      rageUiCall = rageUiCall.Width
      workValue7 = dataTable.Circle
      workValue7 = workValue7.Height
      workValue2(workValue3, workValue4, workValue5, workValue6, rageUiCall, workValue7)
      workValue2 = RenderText
      workValue3 = arg2 or workValue3
      if not arg2 then
        workValue3 = ""
      end
      workValue4 = rageUiCall2.X
      workValue5 = dataTable.Text
      workValue5 = workValue5.Top
      workValue5 = workValue5.X
      workValue4 = workValue4 + workValue5
      workValue5 = rageUiCall2.WidthOffset
      workValue5 = workValue5 / 2
      workValue4 = workValue4 + workValue5
      workValue5 = rageUiCall2.Y
      workValue6 = dataTable.Text
      workValue6 = workValue6.Top
      workValue6 = workValue6.Y
      workValue5 = workValue5 + workValue6
      workValue6 = rageUiCall2.SubtitleHeight
      workValue5 = workValue5 + workValue6
      workValue6 = RageUI
      workValue6 = workValue6.ItemOffset
      workValue5 = workValue5 + workValue6
      workValue6 = 0
      rageUiCall = dataTable.Text
      rageUiCall = rageUiCall.Top
      rageUiCall = rageUiCall.Scale
      workValue7 = 245
      numberValue = 245
      numberValue2 = 245
      numberValue3 = 255
      numberValue4 = 1
      workValue2(workValue3, workValue4, workValue5, workValue6, rageUiCall, workValue7, numberValue, numberValue2, numberValue3, numberValue4)
      workValue2 = RenderText
      workValue3 = arg3 or workValue3
      if not arg3 then
        workValue3 = ""
      end
      workValue4 = rageUiCall2.X
      workValue5 = dataTable.Text
      workValue5 = workValue5.Bottom
      workValue5 = workValue5.X
      workValue4 = workValue4 + workValue5
      workValue5 = rageUiCall2.WidthOffset
      workValue5 = workValue5 / 2
      workValue4 = workValue4 + workValue5
      workValue5 = rageUiCall2.Y
      workValue6 = dataTable.Text
      workValue6 = workValue6.Bottom
      workValue6 = workValue6.Y
      workValue5 = workValue5 + workValue6
      workValue6 = rageUiCall2.SubtitleHeight
      workValue5 = workValue5 + workValue6
      workValue6 = RageUI
      workValue6 = workValue6.ItemOffset
      workValue5 = workValue5 + workValue6
      workValue6 = 0
      rageUiCall = dataTable.Text
      rageUiCall = rageUiCall.Bottom
      rageUiCall = rageUiCall.Scale
      workValue7 = 245
      numberValue = 245
      numberValue2 = 245
      numberValue3 = 255
      numberValue4 = 1
      workValue2(workValue3, workValue4, workValue5, workValue6, rageUiCall, workValue7, numberValue, numberValue2, numberValue3, numberValue4)
      if rageUiCall3 then
        workValue2 = IsDisabledControlPressed
        workValue3 = 0
        workValue4 = 24
        workValue2 = workValue2(workValue3, workValue4)
        if workValue2 then
          workValue8 = true
          workValue2 = RageUI
          workValue2 = workValue2.round
          workValue3 = GetControlNormal
          workValue4 = 2
          workValue5 = 240
          workValue3 = workValue3(workValue4, workValue5)
          workValue3 = workValue3 * 1080
          workValue2 = workValue2(workValue3)
          workValue3 = rageUiCall2.SafeZoneSize
          workValue3 = workValue3.Y
          workValue2 = workValue2 - workValue3
          workValue3 = RageUI
          workValue3 = workValue3.Settings
          workValue3 = workValue3.Panels
          workValue3 = workValue3.Grid
          workValue3 = workValue3.Circle
          workValue3 = workValue3.Height
          workValue3 = workValue3 / 2
          workValue10 = workValue2 - workValue3
          workValue2 = rageUiCall2.Y
          workValue3 = RageUI
          workValue3 = workValue3.Settings
          workValue3 = workValue3.Panels
          workValue3 = workValue3.Grid
          workValue3 = workValue3.Grid
          workValue3 = workValue3.Y
          workValue2 = workValue2 + workValue3
          workValue3 = rageUiCall2.SubtitleHeight
          workValue2 = workValue2 + workValue3
          workValue3 = RageUI
          workValue3 = workValue3.ItemOffset
          workValue2 = workValue2 + workValue3
          workValue2 = workValue2 + 20
          workValue3 = RageUI
          workValue3 = workValue3.Settings
          workValue3 = workValue3.Panels
          workValue3 = workValue3.Grid
          workValue3 = workValue3.Grid
          workValue3 = workValue3.Height
          workValue2 = workValue2 + workValue3
          workValue2 = workValue2 - 40
          if workValue10 > workValue2 then
            workValue2 = rageUiCall2.Y
            workValue3 = RageUI
            workValue3 = workValue3.Settings
            workValue3 = workValue3.Panels
            workValue3 = workValue3.Grid
            workValue3 = workValue3.Grid
            workValue3 = workValue3.Y
            workValue2 = workValue2 + workValue3
            workValue3 = rageUiCall2.SubtitleHeight
            workValue2 = workValue2 + workValue3
            workValue3 = RageUI
            workValue3 = workValue3.ItemOffset
            workValue2 = workValue2 + workValue3
            workValue2 = workValue2 + 20
            workValue3 = RageUI
            workValue3 = workValue3.Settings
            workValue3 = workValue3.Panels
            workValue3 = workValue3.Grid
            workValue3 = workValue3.Grid
            workValue3 = workValue3.Height
            workValue2 = workValue2 + workValue3
            workValue10 = workValue2 - 40
          else
            workValue2 = rageUiCall2.Y
            workValue3 = RageUI
            workValue3 = workValue3.Settings
            workValue3 = workValue3.Panels
            workValue3 = workValue3.Grid
            workValue3 = workValue3.Grid
            workValue3 = workValue3.Y
            workValue2 = workValue2 + workValue3
            workValue3 = rageUiCall2.SubtitleHeight
            workValue2 = workValue2 + workValue3
            workValue3 = RageUI
            workValue3 = workValue3.ItemOffset
            workValue2 = workValue2 + workValue3
            workValue2 = workValue2 + 20
            workValue3 = RageUI
            workValue3 = workValue3.Settings
            workValue3 = workValue3.Panels
            workValue3 = workValue3.Grid
            workValue3 = workValue3.Circle
            workValue3 = workValue3.Height
            workValue3 = workValue3 / 2
            workValue2 = workValue2 - workValue3
            if workValue10 < workValue2 then
              workValue2 = rageUiCall2.Y
              workValue3 = RageUI
              workValue3 = workValue3.Settings
              workValue3 = workValue3.Panels
              workValue3 = workValue3.Grid
              workValue3 = workValue3.Grid
              workValue3 = workValue3.Y
              workValue2 = workValue2 + workValue3
              workValue3 = rageUiCall2.SubtitleHeight
              workValue2 = workValue2 + workValue3
              workValue3 = RageUI
              workValue3 = workValue3.ItemOffset
              workValue2 = workValue2 + workValue3
              workValue2 = workValue2 + 20
              workValue3 = RageUI
              workValue3 = workValue3.Settings
              workValue3 = workValue3.Panels
              workValue3 = workValue3.Grid
              workValue3 = workValue3.Circle
              workValue3 = workValue3.Height
              workValue3 = workValue3 / 2
              workValue10 = workValue2 - workValue3
            end
          end
          workValue2 = RageUI
          workValue2 = workValue2.round
          workValue3 = rageUiCall2.Y
          workValue4 = RageUI
          workValue4 = workValue4.Settings
          workValue4 = workValue4.Panels
          workValue4 = workValue4.Grid
          workValue4 = workValue4.Grid
          workValue4 = workValue4.Y
          workValue3 = workValue3 + workValue4
          workValue4 = rageUiCall2.SubtitleHeight
          workValue3 = workValue3 + workValue4
          workValue4 = RageUI
          workValue4 = workValue4.ItemOffset
          workValue3 = workValue3 + workValue4
          workValue3 = workValue3 + 20
          workValue3 = workValue10 - workValue3
          workValue4 = RageUI
          workValue4 = workValue4.Settings
          workValue4 = workValue4.Panels
          workValue4 = workValue4.Grid
          workValue4 = workValue4.Circle
          workValue4 = workValue4.Height
          workValue4 = workValue4 / 2
          workValue3 = workValue3 + workValue4
          workValue4 = RageUI
          workValue4 = workValue4.Settings
          workValue4 = workValue4.Panels
          workValue4 = workValue4.Grid
          workValue4 = workValue4.Grid
          workValue4 = workValue4.Height
          workValue4 = workValue4 - 40
          workValue3 = workValue3 / workValue4
          workValue4 = 2
          workValue2 = workValue2(workValue3, workValue4)
          arg1 = workValue2
          if arg1 > 1.0 then
            arg1 = 1.0
          end
        end
      end
      workValue2 = RageUI
      workValue3 = RageUI
      workValue3 = workValue3.ItemOffset
      workValue4 = dataTable.Background
      workValue4 = workValue4.Height
      workValue3 = workValue3 + workValue4
      workValue4 = dataTable.Background
      workValue4 = workValue4.Y
      workValue3 = workValue3 + workValue4
      workValue2.ItemOffset = workValue3
      if rageUiCall3 and workValue8 then
        workValue2 = RageUI
        workValue2 = workValue2.Settings
        workValue2 = workValue2.Audio
        workValue3 = RageUI
        workValue3 = workValue3.PlaySound
        workValue4 = workValue2.Use
        workValue4 = workValue2[workValue4]
        workValue4 = workValue4.Slider
        workValue4 = workValue4.audioName
        workValue5 = workValue2.Use
        workValue5 = workValue2[workValue5]
        workValue5 = workValue5.Slider
        workValue5 = workValue5.audioRef
        workValue6 = true
        workValue3(workValue4, workValue5, workValue6)
      end
      workValue2 = arg4
      workValue3 = rageUiCall3
      workValue4 = workValue8
      workValue5 = arg1
      workValue2(workValue3, workValue4, workValue5)
    end
  end
  ::flow_label_497::
end
dataTable2.GridPanelVertical = dataTable3