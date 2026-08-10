--[[
    Beginner Guide: UIProgress.lua
    ==============================

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
    BEGINNER GUIDE — Uiprogress
    ===========================

    File: cmg/prod/client/rageui/menu/items/UIProgress.lua
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

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

]]
local dataTable, dataTable2, rageUiCall4, workValue6
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
rageUiCall4 = {}
rageUiCall4.X = 8
rageUiCall4.Y = 33
rageUiCall4.Width = 415
rageUiCall4.Height = 20
dataTable2.Background = rageUiCall4
rageUiCall4 = {}
rageUiCall4.X = 11.75
rageUiCall4.Y = 36.75
rageUiCall4.Width = 407.5
rageUiCall4.Height = 12.5
dataTable2.Bar = rageUiCall4
dataTable2.Height = 60
rageUiCall4 = RageUI
function workValue6(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local rageUiCall5, dataTable3, rageUiCall6, workValue, rageUiCall, rageUiCall2, tableHelper, textValue, workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue, numberValue2, numberValue3, numberValue4, numberValue5
  rageUiCall5 = RageUI
  rageUiCall5 = rageUiCall5.CurrentMenu
  if nil ~= rageUiCall5 then
    dataTable3 = rageUiCall5
    dataTable3 = dataTable3()
    if dataTable3 then
      dataTable3 = {}
      rageUiCall6 = 1
      workValue = arg3
      rageUiCall = 1
      for rageUiCall2 = rageUiCall6, workValue, rageUiCall do
        tableHelper = table
        tableHelper = tableHelper.insert
        textValue = dataTable3
        workValue2 = rageUiCall2
        tableHelper(textValue, workValue2)
      end
      rageUiCall6 = RageUI
      rageUiCall6 = rageUiCall6.Options
      rageUiCall6 = rageUiCall6 + 1
      workValue = rageUiCall5.Pagination
      workValue = workValue.Minimum
      if rageUiCall6 >= workValue then
        workValue = rageUiCall5.Pagination
        workValue = workValue.Maximum
        if rageUiCall6 <= workValue then
          workValue = rageUiCall5.Index
          workValue = workValue == rageUiCall6
          rageUiCall = false
          rageUiCall2 = RageUI
          rageUiCall2 = rageUiCall2.ItemsSafeZone
          tableHelper = rageUiCall5
          rageUiCall2(tableHelper)
          rageUiCall2 = false
          tableHelper = rageUiCall5.EnableMouse
          if true == tableHelper then
            tableHelper = rageUiCall5.CursorStyle
            if 0 == tableHelper then
              goto flow_label_53
            end
          end
          tableHelper = rageUiCall5.CursorStyle
          ::flow_label_53::
          if 1 == tableHelper then
            tableHelper = RageUI
            tableHelper = tableHelper.ItemsMouseBounds
            textValue = rageUiCall5
            workValue2 = workValue
            workValue3 = rageUiCall6
            workValue4 = dataTable
            tableHelper = tableHelper(textValue, workValue2, workValue3, workValue4)
            rageUiCall2 = tableHelper
          end
          if arg5 then
            tableHelper = arg2
            textValue = "/"
            workValue2 = #dataTable3
            tableHelper = tableHelper .. textValue .. workValue2
            if tableHelper then
              goto flow_label_83
            end
          end
          tableHelper = type
          textValue = dataTable3[arg2]
          tableHelper = tableHelper(textValue)
          if "table" == tableHelper then
            tableHelper = tostring
            textValue = dataTable3[arg2]
            textValue = textValue.Name
            tableHelper = tableHelper(textValue)
            if tableHelper then
              goto flow_label_83
            end
          end
          tableHelper = tostring
          textValue = dataTable3[arg2]
          tableHelper = tableHelper(textValue)
          ::flow_label_83::
          if workValue then
            textValue = RenderSprite
            workValue2 = dataTable.SelectedSprite
            workValue2 = workValue2.Dictionary
            workValue3 = dataTable.SelectedSprite
            workValue3 = workValue3.Texture
            workValue4 = rageUiCall5.X
            workValue5 = rageUiCall5.Y
            rageUiCall3 = dataTable.SelectedSprite
            rageUiCall3 = rageUiCall3.Y
            workValue5 = workValue5 + rageUiCall3
            rageUiCall3 = rageUiCall5.SubtitleHeight
            workValue5 = workValue5 + rageUiCall3
            rageUiCall3 = RageUI
            rageUiCall3 = rageUiCall3.ItemOffset
            workValue5 = workValue5 + rageUiCall3
            rageUiCall3 = dataTable.SelectedSprite
            rageUiCall3 = rageUiCall3.Width
            numberValue = rageUiCall5.WidthOffset
            rageUiCall3 = rageUiCall3 + numberValue
            numberValue = dataTable2.Height
            textValue(workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue)
            textValue = RageUI
            textValue = textValue.IsMouseInBounds
            workValue2 = rageUiCall5.X
            workValue3 = dataTable2.Bar
            workValue3 = workValue3.X
            workValue2 = workValue2 + workValue3
            workValue3 = rageUiCall5.SafeZoneSize
            workValue3 = workValue3.X
            workValue2 = workValue2 + workValue3
            workValue3 = rageUiCall5.Y
            workValue4 = dataTable2.Bar
            workValue4 = workValue4.Y
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall5.SafeZoneSize
            workValue4 = workValue4.Y
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall5.SubtitleHeight
            workValue3 = workValue3 + workValue4
            workValue4 = RageUI
            workValue4 = workValue4.ItemOffset
            workValue3 = workValue3 + workValue4
            workValue3 = workValue3 - 12
            workValue4 = dataTable2.Bar
            workValue4 = workValue4.Width
            workValue5 = rageUiCall5.WidthOffset
            workValue4 = workValue4 + workValue5
            workValue5 = dataTable2.Bar
            workValue5 = workValue5.Height
            workValue5 = workValue5 + 24
            textValue = textValue(workValue2, workValue3, workValue4, workValue5)
            rageUiCall = textValue
          end
          if true == arg6 or nil == arg6 then
            if workValue then
              textValue = RenderText
              workValue2 = tableHelper
              workValue3 = rageUiCall5.X
              workValue4 = dataTable.RightText
              workValue4 = workValue4.X
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall5.WidthOffset
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall5.Y
              workValue5 = dataTable.RightText
              workValue5 = workValue5.Y
              workValue4 = workValue4 + workValue5
              workValue5 = rageUiCall5.SubtitleHeight
              workValue4 = workValue4 + workValue5
              workValue5 = RageUI
              workValue5 = workValue5.ItemOffset
              workValue4 = workValue4 + workValue5
              workValue5 = 0
              rageUiCall3 = dataTable.RightText
              rageUiCall3 = rageUiCall3.Scale
              numberValue = 0
              numberValue2 = 0
              numberValue3 = 0
              numberValue4 = 255
              numberValue5 = 2
              textValue(workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue, numberValue2, numberValue3, numberValue4, numberValue5)
              textValue = RenderText
              workValue2 = arg1
              workValue3 = rageUiCall5.X
              workValue4 = dataTable.Text
              workValue4 = workValue4.X
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall5.Y
              workValue5 = dataTable.Text
              workValue5 = workValue5.Y
              workValue4 = workValue4 + workValue5
              workValue5 = rageUiCall5.SubtitleHeight
              workValue4 = workValue4 + workValue5
              workValue5 = RageUI
              workValue5 = workValue5.ItemOffset
              workValue4 = workValue4 + workValue5
              workValue5 = 0
              rageUiCall3 = dataTable.Text
              rageUiCall3 = rageUiCall3.Scale
              numberValue = 0
              numberValue2 = 0
              numberValue3 = 0
              numberValue4 = 255
              textValue(workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue, numberValue2, numberValue3, numberValue4)
              textValue = RenderRectangle
              workValue2 = rageUiCall5.X
              workValue3 = dataTable2.Background
              workValue3 = workValue3.X
              workValue2 = workValue2 + workValue3
              workValue3 = rageUiCall5.Y
              workValue4 = dataTable2.Background
              workValue4 = workValue4.Y
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall5.SubtitleHeight
              workValue3 = workValue3 + workValue4
              workValue4 = RageUI
              workValue4 = workValue4.ItemOffset
              workValue3 = workValue3 + workValue4
              workValue4 = dataTable2.Background
              workValue4 = workValue4.Width
              workValue5 = rageUiCall5.WidthOffset
              workValue4 = workValue4 + workValue5
              workValue5 = dataTable2.Background
              workValue5 = workValue5.Height
              rageUiCall3 = 0
              numberValue = 0
              numberValue2 = 0
              numberValue3 = 255
              textValue(workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue, numberValue2, numberValue3)
              textValue = RenderRectangle
              workValue2 = rageUiCall5.X
              workValue3 = dataTable2.Bar
              workValue3 = workValue3.X
              workValue2 = workValue2 + workValue3
              workValue3 = rageUiCall5.Y
              workValue4 = dataTable2.Bar
              workValue4 = workValue4.Y
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall5.SubtitleHeight
              workValue3 = workValue3 + workValue4
              workValue4 = RageUI
              workValue4 = workValue4.ItemOffset
              workValue3 = workValue3 + workValue4
              workValue4 = #dataTable3
              workValue4 = arg2 / workValue4
              workValue5 = dataTable2.Bar
              workValue5 = workValue5.Width
              rageUiCall3 = rageUiCall5.WidthOffset
              workValue5 = workValue5 + rageUiCall3
              workValue4 = workValue4 * workValue5
              workValue5 = dataTable2.Bar
              workValue5 = workValue5.Height
              rageUiCall3 = 240
              numberValue = 240
              numberValue2 = 240
              numberValue3 = 255
              textValue(workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue, numberValue2, numberValue3)
            else
              textValue = RenderText
              workValue2 = tableHelper
              workValue3 = rageUiCall5.X
              workValue4 = dataTable.RightText
              workValue4 = workValue4.X
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall5.WidthOffset
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall5.Y
              workValue5 = dataTable.RightText
              workValue5 = workValue5.Y
              workValue4 = workValue4 + workValue5
              workValue5 = rageUiCall5.SubtitleHeight
              workValue4 = workValue4 + workValue5
              workValue5 = RageUI
              workValue5 = workValue5.ItemOffset
              workValue4 = workValue4 + workValue5
              workValue5 = 0
              rageUiCall3 = dataTable.RightText
              rageUiCall3 = rageUiCall3.Scale
              numberValue = 245
              numberValue2 = 245
              numberValue3 = 245
              numberValue4 = 255
              numberValue5 = 2
              textValue(workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue, numberValue2, numberValue3, numberValue4, numberValue5)
              textValue = RenderText
              workValue2 = arg1
              workValue3 = rageUiCall5.X
              workValue4 = dataTable.Text
              workValue4 = workValue4.X
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall5.Y
              workValue5 = dataTable.Text
              workValue5 = workValue5.Y
              workValue4 = workValue4 + workValue5
              workValue5 = rageUiCall5.SubtitleHeight
              workValue4 = workValue4 + workValue5
              workValue5 = RageUI
              workValue5 = workValue5.ItemOffset
              workValue4 = workValue4 + workValue5
              workValue5 = 0
              rageUiCall3 = dataTable.Text
              rageUiCall3 = rageUiCall3.Scale
              numberValue = 245
              numberValue2 = 245
              numberValue3 = 245
              numberValue4 = 255
              textValue(workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue, numberValue2, numberValue3, numberValue4)
              textValue = RenderRectangle
              workValue2 = rageUiCall5.X
              workValue3 = dataTable2.Background
              workValue3 = workValue3.X
              workValue2 = workValue2 + workValue3
              workValue3 = rageUiCall5.Y
              workValue4 = dataTable2.Background
              workValue4 = workValue4.Y
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall5.SubtitleHeight
              workValue3 = workValue3 + workValue4
              workValue4 = RageUI
              workValue4 = workValue4.ItemOffset
              workValue3 = workValue3 + workValue4
              workValue4 = dataTable2.Background
              workValue4 = workValue4.Width
              workValue5 = rageUiCall5.WidthOffset
              workValue4 = workValue4 + workValue5
              workValue5 = dataTable2.Background
              workValue5 = workValue5.Height
              rageUiCall3 = 240
              numberValue = 240
              numberValue2 = 240
              numberValue3 = 255
              textValue(workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue, numberValue2, numberValue3)
              textValue = RenderRectangle
              workValue2 = rageUiCall5.X
              workValue3 = dataTable2.Bar
              workValue3 = workValue3.X
              workValue2 = workValue2 + workValue3
              workValue3 = rageUiCall5.Y
              workValue4 = dataTable2.Bar
              workValue4 = workValue4.Y
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall5.SubtitleHeight
              workValue3 = workValue3 + workValue4
              workValue4 = RageUI
              workValue4 = workValue4.ItemOffset
              workValue3 = workValue3 + workValue4
              workValue4 = #dataTable3
              workValue4 = arg2 / workValue4
              workValue5 = dataTable2.Bar
              workValue5 = workValue5.Width
              rageUiCall3 = rageUiCall5.WidthOffset
              workValue5 = workValue5 + rageUiCall3
              workValue4 = workValue4 * workValue5
              workValue5 = dataTable2.Bar
              workValue5 = workValue5.Height
              rageUiCall3 = 0
              numberValue = 0
              numberValue2 = 0
              numberValue3 = 255
              textValue(workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue, numberValue2, numberValue3)
            end
          else
            textValue = RenderText
            workValue2 = tableHelper
            workValue3 = rageUiCall5.X
            workValue4 = dataTable.RightText
            workValue4 = workValue4.X
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall5.WidthOffset
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall5.Y
            workValue5 = dataTable.RightText
            workValue5 = workValue5.Y
            workValue4 = workValue4 + workValue5
            workValue5 = rageUiCall5.SubtitleHeight
            workValue4 = workValue4 + workValue5
            workValue5 = RageUI
            workValue5 = workValue5.ItemOffset
            workValue4 = workValue4 + workValue5
            workValue5 = 0
            rageUiCall3 = dataTable.RightText
            rageUiCall3 = rageUiCall3.Scale
            numberValue = 163
            numberValue2 = 159
            numberValue3 = 148
            numberValue4 = 255
            numberValue5 = 2
            textValue(workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue, numberValue2, numberValue3, numberValue4, numberValue5)
            textValue = RenderText
            workValue2 = arg1
            workValue3 = rageUiCall5.X
            workValue4 = dataTable.Text
            workValue4 = workValue4.X
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall5.Y
            workValue5 = dataTable.Text
            workValue5 = workValue5.Y
            workValue4 = workValue4 + workValue5
            workValue5 = rageUiCall5.SubtitleHeight
            workValue4 = workValue4 + workValue5
            workValue5 = RageUI
            workValue5 = workValue5.ItemOffset
            workValue4 = workValue4 + workValue5
            workValue5 = 0
            rageUiCall3 = dataTable.Text
            rageUiCall3 = rageUiCall3.Scale
            numberValue = 163
            numberValue2 = 159
            numberValue3 = 148
            numberValue4 = 255
            textValue(workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue, numberValue2, numberValue3, numberValue4)
            if workValue then
              textValue = RenderRectangle
              workValue2 = rageUiCall5.X
              workValue3 = dataTable2.Background
              workValue3 = workValue3.X
              workValue2 = workValue2 + workValue3
              workValue3 = rageUiCall5.Y
              workValue4 = dataTable2.Background
              workValue4 = workValue4.Y
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall5.SubtitleHeight
              workValue3 = workValue3 + workValue4
              workValue4 = RageUI
              workValue4 = workValue4.ItemOffset
              workValue3 = workValue3 + workValue4
              workValue4 = dataTable2.Background
              workValue4 = workValue4.Width
              workValue5 = rageUiCall5.WidthOffset
              workValue4 = workValue4 + workValue5
              workValue5 = dataTable2.Background
              workValue5 = workValue5.Height
              rageUiCall3 = 0
              numberValue = 0
              numberValue2 = 0
              numberValue3 = 255
              textValue(workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue, numberValue2, numberValue3)
            else
              textValue = RenderRectangle
              workValue2 = rageUiCall5.X
              workValue3 = dataTable2.Background
              workValue3 = workValue3.X
              workValue2 = workValue2 + workValue3
              workValue3 = rageUiCall5.Y
              workValue4 = dataTable2.Background
              workValue4 = workValue4.Y
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall5.SubtitleHeight
              workValue3 = workValue3 + workValue4
              workValue4 = RageUI
              workValue4 = workValue4.ItemOffset
              workValue3 = workValue3 + workValue4
              workValue4 = dataTable2.Background
              workValue4 = workValue4.Width
              workValue5 = rageUiCall5.WidthOffset
              workValue4 = workValue4 + workValue5
              workValue5 = dataTable2.Background
              workValue5 = workValue5.Height
              rageUiCall3 = 240
              numberValue = 240
              numberValue2 = 240
              numberValue3 = 255
              textValue(workValue2, workValue3, workValue4, workValue5, rageUiCall3, numberValue, numberValue2, numberValue3)
            end
          end
          textValue = RageUI
          workValue2 = RageUI
          workValue2 = workValue2.ItemOffset
          workValue3 = dataTable2.Height
          workValue2 = workValue2 + workValue3
          textValue.ItemOffset = workValue2
          textValue = RageUI
          textValue = textValue.ItemsDescription
          workValue2 = rageUiCall5
          workValue3 = arg4
          workValue4 = workValue
          textValue(workValue2, workValue3, workValue4)
          if workValue then
            textValue = rageUiCall5.Controls
            textValue = textValue.Left
            textValue = textValue.Active
            if textValue then
              textValue = rageUiCall5.Controls
              textValue = textValue.Right
              textValue = textValue.Active
              if not textValue then
                arg2 = arg2 - 1
                if arg2 < 0 then
                  arg2 = #dataTable3
                end
                textValue = RageUI
                textValue = textValue.Settings
                textValue = textValue.Audio
                workValue2 = RageUI
                workValue2 = workValue2.PlaySound
                workValue3 = textValue.Use
                workValue3 = textValue[workValue3]
                workValue3 = workValue3.LeftRight
                workValue3 = workValue3.audioName
                workValue4 = textValue.Use
                workValue4 = textValue[workValue4]
                workValue4 = workValue4.LeftRight
                workValue4 = workValue4.audioRef
                workValue2(workValue3, workValue4)
            end
          end
          elseif workValue then
            textValue = rageUiCall5.Controls
            textValue = textValue.Right
            textValue = textValue.Active
            if textValue then
              textValue = rageUiCall5.Controls
              textValue = textValue.Left
              textValue = textValue.Active
              if not textValue then
                arg2 = arg2 + 1
                textValue = #dataTable3
                if arg2 > textValue then
                  arg2 = 0
                end
                textValue = RageUI
                textValue = textValue.Settings
                textValue = textValue.Audio
                workValue2 = RageUI
                workValue2 = workValue2.PlaySound
                workValue3 = textValue.Use
                workValue3 = textValue[workValue3]
                workValue3 = workValue3.LeftRight
                workValue3 = workValue3.audioName
                workValue4 = textValue.Use
                workValue4 = textValue[workValue4]
                workValue4 = workValue4.LeftRight
                workValue4 = workValue4.audioRef
                workValue2(workValue3, workValue4)
              end
            end
          end
          if workValue then
            textValue = rageUiCall5.Controls
            textValue = textValue.Select
            textValue = textValue.Active
            if not textValue then
              if not rageUiCall2 then
                goto flow_label_633
              end
              textValue = rageUiCall5.Controls
              textValue = textValue.Click
              textValue = textValue.Active
              if not textValue or rageUiCall then
                goto flow_label_633
              end
            end
            textValue = RageUI
            textValue = textValue.Settings
            textValue = textValue.Audio
            workValue2 = RageUI
            workValue2 = workValue2.PlaySound
            workValue3 = textValue.Use
            workValue3 = textValue[workValue3]
            workValue3 = workValue3.Select
            workValue3 = workValue3.audioName
            workValue4 = textValue.Use
            workValue4 = textValue[workValue4]
            workValue4 = workValue4.Select
            workValue4 = workValue4.audioRef
            workValue2(workValue3, workValue4)
          else
            ::flow_label_633::
            if workValue and rageUiCall2 then
              textValue = rageUiCall5.Controls
              textValue = textValue.Click
              textValue = textValue.Active
              if textValue and rageUiCall then
                textValue = RageUI
                textValue = textValue.round
                workValue2 = GetControlNormal
                workValue3 = 2
                workValue4 = 239
                workValue2 = workValue2(workValue3, workValue4)
                workValue2 = workValue2 * 1920
                textValue = textValue(workValue2)
                workValue2 = rageUiCall5.SafeZoneSize
                workValue2 = workValue2.X
                textValue = textValue - workValue2
                workValue2 = dataTable2.Bar
                workValue2 = workValue2.X
                textValue = textValue - workValue2
                workValue2 = dataTable2.Bar
                workValue2 = workValue2.Width
                workValue3 = rageUiCall5.WidthOffset
                workValue2 = workValue2 + workValue3
                if textValue > workValue2 then
                  textValue = workValue2
                elseif textValue < 0 then
                  textValue = 0
                end
                workValue3 = RageUI
                workValue3 = workValue3.round
                workValue4 = #dataTable3
                workValue5 = textValue / workValue2
                workValue4 = workValue4 * workValue5
                workValue3 = workValue3(workValue4)
                arg2 = workValue3
                workValue3 = #dataTable3
                if arg2 > workValue3 or arg2 < 0 then
                  arg2 = 0
                end
              end
            end
          end
          if arg6 then
            textValue = arg7
            workValue2 = rageUiCall2
            workValue3 = workValue
            workValue4 = rageUiCall5.Controls
            workValue4 = workValue4.Select
            workValue4 = workValue4.Active
            if not workValue4 then
              if not rageUiCall2 then
                goto flow_label_711
                workValue4 = rageUiCall2 or workValue4
              end
              workValue4 = rageUiCall5.Controls
              workValue4 = workValue4.Click
              workValue4 = workValue4.Active
            end
            workValue4 = workValue4 and not rageUiCall and workValue4
            ::flow_label_711::
            workValue5 = arg2
            textValue(workValue2, workValue3, workValue4, workValue5)
          end
        end
      end
      workValue = RageUI
      rageUiCall = RageUI
      rageUiCall = rageUiCall.Options
      rageUiCall = rageUiCall + 1
      workValue.Options = rageUiCall
      dataTable3 = nil
    end
  end
end
rageUiCall4.Progress = workValue6