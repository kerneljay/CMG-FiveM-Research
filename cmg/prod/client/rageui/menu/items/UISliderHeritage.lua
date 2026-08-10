--[[
    Beginner Guide: UISliderHeritage.lua
    ====================================

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
    BEGINNER GUIDE — Uislider Heritage
    ==================================

    File: cmg/prod/client/rageui/menu/items/UISliderHeritage.lua
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
local dataTable, dataTable2, dataTable3, rageUiCall4, numberValue7, numberValue8, workValue6, tableHelper, workValue7, workValue9
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
dataTable2.Dictionary = "commonmenu"
dataTable2.Texture = "gradient_nav"
dataTable2.Y = 0
dataTable2.Width = 431
dataTable2.Height = 38
dataTable.SelectedSprite = dataTable2
dataTable2 = {}
dataTable3 = {}
dataTable3.X = 250
dataTable3.Y = 14.5
dataTable3.Width = 150
dataTable3.Height = 9
dataTable2.Background = dataTable3
dataTable3 = {}
dataTable3.X = 250
dataTable3.Y = 14.5
dataTable3.Width = 75
dataTable3.Height = 9
dataTable2.Slider = dataTable3
dataTable3 = {}
dataTable3.X = 323.5
dataTable3.Y = 9
dataTable3.Width = 2.5
dataTable3.Height = 20
dataTable2.Divider = dataTable3
dataTable3 = {}
dataTable3.Dictionary = "mpleaderboard"
dataTable3.Texture = "leaderboard_female_icon"
dataTable3.X = 215
dataTable3.Y = 0
dataTable3.Width = 40
dataTable3.Height = 40
dataTable2.LeftArrow = dataTable3
dataTable3 = {}
dataTable3.Dictionary = "mpleaderboard"
dataTable3.Texture = "leaderboard_male_icon"
dataTable3.X = 395
dataTable3.Y = 0
dataTable3.Width = 40
dataTable3.Height = 40
dataTable2.RightArrow = dataTable3
dataTable3 = {}
rageUiCall4 = 1
numberValue7 = 10
numberValue8 = 1
for workValue6 = rageUiCall4, numberValue7, numberValue8 do
  tableHelper = table
  tableHelper = tableHelper.insert
  workValue7 = dataTable3
  workValue9 = workValue6
  tableHelper(workValue7, workValue9)
end
rageUiCall4 = RageUI
function numberValue7(arg1, arg2, arg3, arg4, arg5)
  local rageUiCall5, rageUiCall6, rageUiCall7, workValue8, rageUiCall8, flag, flag2, rageUiCall, numberValue, rageUiCall2, workValue, workValue2, workValue3, workValue4, rageUiCall3, workValue5, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6
  rageUiCall5 = RageUI
  rageUiCall5 = rageUiCall5.CurrentMenu
  rageUiCall6 = RageUI
  rageUiCall6 = rageUiCall6.Settings
  rageUiCall6 = rageUiCall6.Audio
  if nil ~= rageUiCall5 then
    rageUiCall7 = rageUiCall5
    rageUiCall7 = rageUiCall7()
    if rageUiCall7 then
      rageUiCall7 = RageUI
      rageUiCall7 = rageUiCall7.Options
      rageUiCall7 = rageUiCall7 + 1
      workValue8 = rageUiCall5.Pagination
      workValue8 = workValue8.Minimum
      if rageUiCall7 >= workValue8 then
        workValue8 = rageUiCall5.Pagination
        workValue8 = workValue8.Maximum
        if rageUiCall7 <= workValue8 then
          workValue8 = arg5 or workValue8
          if not arg5 then
            workValue8 = 0.1
          end
          rageUiCall8 = rageUiCall5.Index
          rageUiCall8 = rageUiCall8 == rageUiCall7
          flag = false
          flag2 = false
          rageUiCall = RageUI
          rageUiCall = rageUiCall.ItemsSafeZone
          numberValue = rageUiCall5
          rageUiCall(numberValue)
          rageUiCall = false
          numberValue = 0
          rageUiCall2 = rageUiCall5.EnableMouse
          if true == rageUiCall2 then
            rageUiCall2 = rageUiCall5.CursorStyle
            if 0 == rageUiCall2 then
              goto flow_label_49
            end
          end
          rageUiCall2 = rageUiCall5.CursorStyle
          ::flow_label_49::
          if 1 == rageUiCall2 then
            rageUiCall2 = RageUI
            rageUiCall2 = rageUiCall2.ItemsMouseBounds
            workValue = rageUiCall5
            workValue2 = rageUiCall8
            workValue3 = rageUiCall7
            workValue4 = dataTable
            rageUiCall2 = rageUiCall2(workValue, workValue2, workValue3, workValue4)
            rageUiCall = rageUiCall2
          end
          if rageUiCall8 then
            rageUiCall2 = RenderSprite
            workValue = dataTable.SelectedSprite
            workValue = workValue.Dictionary
            workValue2 = dataTable.SelectedSprite
            workValue2 = workValue2.Texture
            workValue3 = rageUiCall5.X
            workValue4 = rageUiCall5.Y
            rageUiCall3 = dataTable.SelectedSprite
            rageUiCall3 = rageUiCall3.Y
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = rageUiCall5.SubtitleHeight
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = RageUI
            rageUiCall3 = rageUiCall3.ItemOffset
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = dataTable.SelectedSprite
            rageUiCall3 = rageUiCall3.Width
            workValue5 = rageUiCall5.WidthOffset
            rageUiCall3 = rageUiCall3 + workValue5
            workValue5 = dataTable.SelectedSprite
            workValue5 = workValue5.Height
            rageUiCall2(workValue, workValue2, workValue3, workValue4, rageUiCall3, workValue5)
            rageUiCall2 = RageUI
            rageUiCall2 = rageUiCall2.IsMouseInBounds
            workValue = rageUiCall5.X
            workValue2 = dataTable2.LeftArrow
            workValue2 = workValue2.X
            workValue = workValue + workValue2
            workValue2 = rageUiCall5.SafeZoneSize
            workValue2 = workValue2.X
            workValue = workValue + workValue2
            workValue2 = rageUiCall5.WidthOffset
            workValue = workValue + workValue2
            workValue2 = rageUiCall5.Y
            workValue3 = dataTable2.LeftArrow
            workValue3 = workValue3.Y
            workValue2 = workValue2 + workValue3
            workValue3 = rageUiCall5.SafeZoneSize
            workValue3 = workValue3.Y
            workValue2 = workValue2 + workValue3
            workValue3 = rageUiCall5.SubtitleHeight
            workValue2 = workValue2 + workValue3
            workValue3 = RageUI
            workValue3 = workValue3.ItemOffset
            workValue2 = workValue2 + workValue3
            workValue3 = dataTable2.LeftArrow
            workValue3 = workValue3.Width
            workValue4 = dataTable2.LeftArrow
            workValue4 = workValue4.Height
            rageUiCall2 = rageUiCall2(workValue, workValue2, workValue3, workValue4)
            flag = rageUiCall2
            rageUiCall2 = RageUI
            rageUiCall2 = rageUiCall2.IsMouseInBounds
            workValue = rageUiCall5.X
            workValue2 = dataTable2.RightArrow
            workValue2 = workValue2.X
            workValue = workValue + workValue2
            workValue2 = rageUiCall5.SafeZoneSize
            workValue2 = workValue2.X
            workValue = workValue + workValue2
            workValue2 = rageUiCall5.WidthOffset
            workValue = workValue + workValue2
            workValue2 = rageUiCall5.Y
            workValue3 = dataTable2.RightArrow
            workValue3 = workValue3.Y
            workValue2 = workValue2 + workValue3
            workValue3 = rageUiCall5.SafeZoneSize
            workValue3 = workValue3.Y
            workValue2 = workValue2 + workValue3
            workValue3 = rageUiCall5.SubtitleHeight
            workValue2 = workValue2 + workValue3
            workValue3 = RageUI
            workValue3 = workValue3.ItemOffset
            workValue2 = workValue2 + workValue3
            workValue3 = dataTable2.RightArrow
            workValue3 = workValue3.Width
            workValue4 = dataTable2.RightArrow
            workValue4 = workValue4.Height
            rageUiCall2 = rageUiCall2(workValue, workValue2, workValue3, workValue4)
            flag2 = rageUiCall2
          end
          if rageUiCall8 then
            rageUiCall2 = RenderText
            workValue = arg1
            workValue2 = rageUiCall5.X
            workValue3 = dataTable.Text
            workValue3 = workValue3.X
            workValue2 = workValue2 + workValue3
            workValue3 = rageUiCall5.Y
            workValue4 = dataTable.Text
            workValue4 = workValue4.Y
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall5.SubtitleHeight
            workValue3 = workValue3 + workValue4
            workValue4 = RageUI
            workValue4 = workValue4.ItemOffset
            workValue3 = workValue3 + workValue4
            workValue4 = 0
            rageUiCall3 = dataTable.Text
            rageUiCall3 = rageUiCall3.Scale
            workValue5 = 0
            numberValue2 = 0
            numberValue3 = 0
            numberValue4 = 255
            rageUiCall2(workValue, workValue2, workValue3, workValue4, rageUiCall3, workValue5, numberValue2, numberValue3, numberValue4)
            rageUiCall2 = RenderSprite
            workValue = dataTable2.LeftArrow
            workValue = workValue.Dictionary
            workValue2 = dataTable2.LeftArrow
            workValue2 = workValue2.Texture
            workValue3 = rageUiCall5.X
            workValue4 = dataTable2.LeftArrow
            workValue4 = workValue4.X
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall5.WidthOffset
            workValue3 = workValue3 + workValue4
            workValue3 = workValue3 - numberValue
            workValue4 = rageUiCall5.Y
            rageUiCall3 = dataTable2.LeftArrow
            rageUiCall3 = rageUiCall3.Y
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = rageUiCall5.SubtitleHeight
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = RageUI
            rageUiCall3 = rageUiCall3.ItemOffset
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = dataTable2.LeftArrow
            rageUiCall3 = rageUiCall3.Width
            workValue5 = dataTable2.LeftArrow
            workValue5 = workValue5.Height
            numberValue2 = 0
            numberValue3 = 0
            numberValue4 = 0
            numberValue5 = 0
            numberValue6 = 255
            rageUiCall2(workValue, workValue2, workValue3, workValue4, rageUiCall3, workValue5, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6)
            rageUiCall2 = RenderSprite
            workValue = dataTable2.RightArrow
            workValue = workValue.Dictionary
            workValue2 = dataTable2.RightArrow
            workValue2 = workValue2.Texture
            workValue3 = rageUiCall5.X
            workValue4 = dataTable2.RightArrow
            workValue4 = workValue4.X
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall5.WidthOffset
            workValue3 = workValue3 + workValue4
            workValue3 = workValue3 - numberValue
            workValue4 = rageUiCall5.Y
            rageUiCall3 = dataTable2.RightArrow
            rageUiCall3 = rageUiCall3.Y
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = rageUiCall5.SubtitleHeight
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = RageUI
            rageUiCall3 = rageUiCall3.ItemOffset
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = dataTable2.RightArrow
            rageUiCall3 = rageUiCall3.Width
            workValue5 = dataTable2.RightArrow
            workValue5 = workValue5.Height
            numberValue2 = 0
            numberValue3 = 0
            numberValue4 = 0
            numberValue5 = 0
            numberValue6 = 255
            rageUiCall2(workValue, workValue2, workValue3, workValue4, rageUiCall3, workValue5, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6)
          else
            rageUiCall2 = RenderText
            workValue = arg1
            workValue2 = rageUiCall5.X
            workValue3 = dataTable.Text
            workValue3 = workValue3.X
            workValue2 = workValue2 + workValue3
            workValue3 = rageUiCall5.Y
            workValue4 = dataTable.Text
            workValue4 = workValue4.Y
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall5.SubtitleHeight
            workValue3 = workValue3 + workValue4
            workValue4 = RageUI
            workValue4 = workValue4.ItemOffset
            workValue3 = workValue3 + workValue4
            workValue4 = 0
            rageUiCall3 = dataTable.Text
            rageUiCall3 = rageUiCall3.Scale
            workValue5 = 245
            numberValue2 = 245
            numberValue3 = 245
            numberValue4 = 255
            rageUiCall2(workValue, workValue2, workValue3, workValue4, rageUiCall3, workValue5, numberValue2, numberValue3, numberValue4)
            rageUiCall2 = RenderSprite
            workValue = dataTable2.LeftArrow
            workValue = workValue.Dictionary
            workValue2 = dataTable2.LeftArrow
            workValue2 = workValue2.Texture
            workValue3 = rageUiCall5.X
            workValue4 = dataTable2.LeftArrow
            workValue4 = workValue4.X
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall5.WidthOffset
            workValue3 = workValue3 + workValue4
            workValue3 = workValue3 - numberValue
            workValue4 = rageUiCall5.Y
            rageUiCall3 = dataTable2.LeftArrow
            rageUiCall3 = rageUiCall3.Y
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = rageUiCall5.SubtitleHeight
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = RageUI
            rageUiCall3 = rageUiCall3.ItemOffset
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = dataTable2.LeftArrow
            rageUiCall3 = rageUiCall3.Width
            workValue5 = dataTable2.LeftArrow
            workValue5 = workValue5.Height
            numberValue2 = 0
            numberValue3 = 255
            numberValue4 = 255
            numberValue5 = 255
            numberValue6 = 255
            rageUiCall2(workValue, workValue2, workValue3, workValue4, rageUiCall3, workValue5, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6)
            rageUiCall2 = RenderSprite
            workValue = dataTable2.RightArrow
            workValue = workValue.Dictionary
            workValue2 = dataTable2.RightArrow
            workValue2 = workValue2.Texture
            workValue3 = rageUiCall5.X
            workValue4 = dataTable2.RightArrow
            workValue4 = workValue4.X
            workValue3 = workValue3 + workValue4
            workValue4 = rageUiCall5.WidthOffset
            workValue3 = workValue3 + workValue4
            workValue3 = workValue3 - numberValue
            workValue4 = rageUiCall5.Y
            rageUiCall3 = dataTable2.RightArrow
            rageUiCall3 = rageUiCall3.Y
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = rageUiCall5.SubtitleHeight
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = RageUI
            rageUiCall3 = rageUiCall3.ItemOffset
            workValue4 = workValue4 + rageUiCall3
            rageUiCall3 = dataTable2.RightArrow
            rageUiCall3 = rageUiCall3.Width
            workValue5 = dataTable2.RightArrow
            workValue5 = workValue5.Height
            numberValue2 = 0
            numberValue3 = 255
            numberValue4 = 255
            numberValue5 = 255
            numberValue6 = 255
            rageUiCall2(workValue, workValue2, workValue3, workValue4, rageUiCall3, workValue5, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6)
          end
          rageUiCall2 = RenderRectangle
          workValue = rageUiCall5.X
          workValue2 = dataTable2.Background
          workValue2 = workValue2.X
          workValue = workValue + workValue2
          workValue2 = rageUiCall5.WidthOffset
          workValue = workValue + workValue2
          workValue = workValue - numberValue
          workValue2 = rageUiCall5.Y
          workValue3 = dataTable2.Background
          workValue3 = workValue3.Y
          workValue2 = workValue2 + workValue3
          workValue3 = rageUiCall5.SubtitleHeight
          workValue2 = workValue2 + workValue3
          workValue3 = RageUI
          workValue3 = workValue3.ItemOffset
          workValue2 = workValue2 + workValue3
          workValue3 = dataTable2.Background
          workValue3 = workValue3.Width
          workValue4 = dataTable2.Background
          workValue4 = workValue4.Height
          rageUiCall3 = 4
          workValue5 = 32
          numberValue2 = 57
          numberValue3 = 255
          rageUiCall2(workValue, workValue2, workValue3, workValue4, rageUiCall3, workValue5, numberValue2, numberValue3)
          rageUiCall2 = RenderRectangle
          workValue = rageUiCall5.X
          workValue2 = dataTable2.Slider
          workValue2 = workValue2.X
          workValue = workValue + workValue2
          workValue2 = dataTable2.Background
          workValue2 = workValue2.Width
          workValue3 = dataTable2.Slider
          workValue3 = workValue3.Width
          workValue2 = workValue2 - workValue3
          workValue3 = dataTable3
          workValue3 = #workValue3
          workValue2 = workValue2 / workValue3
          workValue2 = workValue2 * arg2
          workValue = workValue + workValue2
          workValue2 = rageUiCall5.WidthOffset
          workValue = workValue + workValue2
          workValue = workValue - numberValue
          workValue2 = rageUiCall5.Y
          workValue3 = dataTable2.Slider
          workValue3 = workValue3.Y
          workValue2 = workValue2 + workValue3
          workValue3 = rageUiCall5.SubtitleHeight
          workValue2 = workValue2 + workValue3
          workValue3 = RageUI
          workValue3 = workValue3.ItemOffset
          workValue2 = workValue2 + workValue3
          workValue3 = dataTable2.Slider
          workValue3 = workValue3.Width
          workValue4 = dataTable2.Slider
          workValue4 = workValue4.Height
          rageUiCall3 = 57
          workValue5 = 116
          numberValue2 = 200
          numberValue3 = 255
          rageUiCall2(workValue, workValue2, workValue3, workValue4, rageUiCall3, workValue5, numberValue2, numberValue3)
          rageUiCall2 = RenderRectangle
          workValue = rageUiCall5.X
          workValue2 = dataTable2.Divider
          workValue2 = workValue2.X
          workValue = workValue + workValue2
          workValue2 = rageUiCall5.WidthOffset
          workValue = workValue + workValue2
          workValue2 = rageUiCall5.Y
          workValue3 = dataTable2.Divider
          workValue3 = workValue3.Y
          workValue2 = workValue2 + workValue3
          workValue3 = rageUiCall5.SubtitleHeight
          workValue2 = workValue2 + workValue3
          workValue3 = RageUI
          workValue3 = workValue3.ItemOffset
          workValue2 = workValue2 + workValue3
          workValue3 = dataTable2.Divider
          workValue3 = workValue3.Width
          workValue4 = dataTable2.Divider
          workValue4 = workValue4.Height
          rageUiCall3 = 245
          workValue5 = 245
          numberValue2 = 245
          numberValue3 = 255
          rageUiCall2(workValue, workValue2, workValue3, workValue4, rageUiCall3, workValue5, numberValue2, numberValue3)
          rageUiCall2 = RageUI
          workValue = RageUI
          workValue = workValue.ItemOffset
          workValue2 = dataTable.Rectangle
          workValue2 = workValue2.Height
          workValue = workValue + workValue2
          rageUiCall2.ItemOffset = workValue
          rageUiCall2 = RageUI
          rageUiCall2 = rageUiCall2.ItemsDescription
          workValue = rageUiCall5
          workValue2 = arg3
          workValue3 = rageUiCall8
          rageUiCall2(workValue, workValue2, workValue3)
          if rageUiCall8 then
            rageUiCall2 = rageUiCall5.Controls
            rageUiCall2 = rageUiCall2.SliderLeft
            rageUiCall2 = rageUiCall2.Active
            if not rageUiCall2 then
              rageUiCall2 = rageUiCall5.Controls
              rageUiCall2 = rageUiCall2.Click
              rageUiCall2 = rageUiCall2.Active
              if not (rageUiCall2 and flag) then
                goto flow_label_530
              end
            end
            rageUiCall2 = rageUiCall5.Controls
            rageUiCall2 = rageUiCall2.SliderRight
            rageUiCall2 = rageUiCall2.Active
            if not rageUiCall2 then
              rageUiCall2 = rageUiCall5.Controls
              rageUiCall2 = rageUiCall2.Click
              rageUiCall2 = rageUiCall2.Active
              if not rageUiCall2 or not flag2 then
                arg2 = arg2 - workValue8
                rageUiCall2 = 0.1
                if arg2 < rageUiCall2 then
                  arg2 = 0.0
                else
                  rageUiCall2 = RageUI
                  rageUiCall2 = rageUiCall2.PlaySound
                  workValue = rageUiCall6.Use
                  workValue = rageUiCall6[workValue]
                  workValue = workValue.Slider
                  workValue = workValue.audioName
                  workValue2 = rageUiCall6.Use
                  workValue2 = rageUiCall6[workValue2]
                  workValue2 = workValue2.Slider
                  workValue2 = workValue2.audioRef
                  workValue3 = true
                  rageUiCall2(workValue, workValue2, workValue3)
                end
            end
          end
          else
            ::flow_label_530::
            if rageUiCall8 then
              rageUiCall2 = rageUiCall5.Controls
              rageUiCall2 = rageUiCall2.SliderRight
              rageUiCall2 = rageUiCall2.Active
              if not rageUiCall2 then
                rageUiCall2 = rageUiCall5.Controls
                rageUiCall2 = rageUiCall2.Click
                rageUiCall2 = rageUiCall2.Active
                if not (rageUiCall2 and flag2) then
                  goto flow_label_576
                end
              end
              rageUiCall2 = rageUiCall5.Controls
              rageUiCall2 = rageUiCall2.SliderLeft
              rageUiCall2 = rageUiCall2.Active
              if not rageUiCall2 then
                rageUiCall2 = rageUiCall5.Controls
                rageUiCall2 = rageUiCall2.Click
                rageUiCall2 = rageUiCall2.Active
                if not rageUiCall2 or not flag then
                  arg2 = arg2 + workValue8
                  rageUiCall2 = dataTable3
                  rageUiCall2 = #rageUiCall2
                  if arg2 > rageUiCall2 then
                    arg2 = 10
                  else
                    rageUiCall2 = RageUI
                    rageUiCall2 = rageUiCall2.PlaySound
                    workValue = rageUiCall6.Use
                    workValue = rageUiCall6[workValue]
                    workValue = workValue.Slider
                    workValue = workValue.audioName
                    workValue2 = rageUiCall6.Use
                    workValue2 = rageUiCall6[workValue2]
                    workValue2 = workValue2.Slider
                    workValue2 = workValue2.audioRef
                    workValue3 = true
                    rageUiCall2(workValue, workValue2, workValue3)
                  end
                end
              end
            end
          end
          ::flow_label_576::
          if rageUiCall8 then
            rageUiCall2 = rageUiCall5.Controls
            rageUiCall2 = rageUiCall2.Select
            rageUiCall2 = rageUiCall2.Active
            if not rageUiCall2 then
              if not rageUiCall then
                goto flow_label_606
              end
              rageUiCall2 = rageUiCall5.Controls
              rageUiCall2 = rageUiCall2.Click
              rageUiCall2 = rageUiCall2.Active
              if not rageUiCall2 or flag or flag2 then
                goto flow_label_606
              end
            end
            rageUiCall2 = RageUI
            rageUiCall2 = rageUiCall2.PlaySound
            workValue = rageUiCall6.Use
            workValue = rageUiCall6[workValue]
            workValue = workValue.Select
            workValue = workValue.audioName
            workValue2 = rageUiCall6.Use
            workValue2 = rageUiCall6[workValue2]
            workValue2 = workValue2.Select
            workValue2 = workValue2.audioRef
            workValue3 = false
            rageUiCall2(workValue, workValue2, workValue3)
          end
          ::flow_label_606::
          rageUiCall2 = arg4
          workValue = rageUiCall
          workValue2 = rageUiCall8
          workValue3 = rageUiCall5.Controls
          workValue3 = workValue3.Select
          workValue3 = workValue3.Active
          if not workValue3 then
            if not rageUiCall then
              goto flow_label_629
              workValue3 = rageUiCall or workValue3
            end
            workValue3 = rageUiCall5.Controls
            workValue3 = workValue3.Click
            workValue3 = workValue3.Active
          end
          workValue3 = workValue3 and not flag and not flag2 and workValue3
          ::flow_label_629::
          workValue4 = arg2 / 10
          rageUiCall3 = arg2
          rageUiCall2(workValue, workValue2, workValue3, workValue4, rageUiCall3)
        end
      end
      workValue8 = RageUI
      rageUiCall8 = RageUI
      rageUiCall8 = rageUiCall8.Options
      rageUiCall8 = rageUiCall8 + 1
      workValue8.Options = rageUiCall8
    end
  end
end
rageUiCall4.UISliderHeritage = numberValue7