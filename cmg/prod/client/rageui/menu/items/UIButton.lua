--[[
    Beginner Guide: UIButton.lua
    ============================

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
    BEGINNER GUIDE — Uibutton
    =========================

    File: cmg/prod/client/rageui/menu/items/UIButton.lua
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
local dataTable, dataTable2, workValue12
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
dataTable2 = RageUI
function workValue12(arg1, arg2, arg3, arg4, arg5)
  local arg6, rageUiCall2, workValue13, rageUiCall3, workValue14, numberValue, numberValue2, workValue, rageUiCall, workValue2, workValue3, workValue4, workValue5, numberValue3
  arg6 = RageUI
  arg6 = arg6.CurrentMenu
  if nil ~= arg6 then
    rageUiCall2 = arg6
    rageUiCall2 = rageUiCall2()
    if rageUiCall2 then
      rageUiCall2 = RageUI
      rageUiCall2 = rageUiCall2.Options
      rageUiCall2 = rageUiCall2 + 1
      workValue13 = arg6.Pagination
      workValue13 = workValue13.Minimum
      if rageUiCall2 >= workValue13 then
        workValue13 = arg6.Pagination
        workValue13 = workValue13.Maximum
        if rageUiCall2 <= workValue13 then
          workValue13 = arg6.Index
          workValue13 = workValue13 == rageUiCall2
          rageUiCall3 = RageUI
          rageUiCall3 = rageUiCall3.ItemsSafeZone
          workValue14 = arg6
          rageUiCall3(workValue14)
          if workValue13 then
            rageUiCall3 = RenderSprite
            workValue14 = dataTable.SelectedSprite
            workValue14 = workValue14.Dictionary
            numberValue = dataTable.SelectedSprite
            numberValue = numberValue.Texture
            numberValue2 = arg6.X
            workValue = arg6.Y
            rageUiCall = dataTable.SelectedSprite
            rageUiCall = rageUiCall.Y
            workValue = workValue + rageUiCall
            rageUiCall = arg6.SubtitleHeight
            workValue = workValue + rageUiCall
            rageUiCall = RageUI
            rageUiCall = rageUiCall.ItemOffset
            workValue = workValue + rageUiCall
            rageUiCall = dataTable.SelectedSprite
            rageUiCall = rageUiCall.Width
            workValue2 = arg6.WidthOffset
            rageUiCall = rageUiCall + workValue2
            workValue2 = dataTable.SelectedSprite
            workValue2 = workValue2.Height
            rageUiCall3(workValue14, numberValue, numberValue2, workValue, rageUiCall, workValue2)
          end
          if arg3 then
            if workValue13 then
              rageUiCall3 = {}
              workValue14 = 0
              numberValue = 0
              numberValue2 = 0
              rageUiCall3[1] = workValue14
              rageUiCall3[2] = numberValue
              rageUiCall3[3] = numberValue2
              if rageUiCall3 then
                goto flow_label_84
              end
            end
            rageUiCall3 = {}
            workValue14 = 255
            numberValue = 255
            numberValue2 = 255
            rageUiCall3[1] = workValue14
            rageUiCall3[2] = numberValue
            rageUiCall3[3] = numberValue2
            if rageUiCall3 then
              goto flow_label_84
            end
          end
          rageUiCall3 = {}
          workValue14 = 163
          numberValue = 159
          numberValue2 = 148
          rageUiCall3[1] = workValue14
          rageUiCall3[2] = numberValue
          rageUiCall3[3] = numberValue2
          ::flow_label_84::
          workValue14 = RenderText
          numberValue = arg1
          numberValue2 = arg6.X
          workValue = dataTable.Text
          workValue = workValue.X
          numberValue2 = numberValue2 + workValue
          workValue = arg6.Y
          rageUiCall = dataTable.Text
          rageUiCall = rageUiCall.Y
          workValue = workValue + rageUiCall
          rageUiCall = arg6.SubtitleHeight
          workValue = workValue + rageUiCall
          rageUiCall = RageUI
          rageUiCall = rageUiCall.ItemOffset
          workValue = workValue + rageUiCall
          rageUiCall = 0
          workValue2 = dataTable.Text
          workValue2 = workValue2.Scale
          workValue3 = rageUiCall3[1]
          workValue4 = rageUiCall3[2]
          workValue5 = rageUiCall3[3]
          numberValue3 = 255
          workValue14(numberValue, numberValue2, workValue, rageUiCall, workValue2, workValue3, workValue4, workValue5, numberValue3)
          workValue14 = RageUI
          numberValue = RageUI
          numberValue = numberValue.ItemOffset
          numberValue2 = dataTable.Rectangle
          numberValue2 = numberValue2.Height
          numberValue = numberValue + numberValue2
          workValue14.ItemOffset = numberValue
          workValue14 = RageUI
          workValue14 = workValue14.ItemsDescription
          numberValue = arg6
          numberValue2 = arg2
          workValue = workValue13
          workValue14(numberValue, numberValue2, workValue)
          if arg3 then
            workValue14 = arg6.EnableMouse
            if workValue14 then
              workValue14 = arg6.CursorStyle
              if 0 ~= workValue14 then
                workValue14 = arg6.CursorStyle
              end
              workValue14 = RageUI
              workValue14 = workValue14.ItemsMouseBounds
              numberValue = arg6
              numberValue2 = workValue13
              workValue = rageUiCall2 + 1
              rageUiCall = dataTable
              workValue14 = 1 == workValue14 and workValue14
            end
            numberValue = arg6.Controls
            numberValue = numberValue.Select
            numberValue = numberValue.Active
            if not numberValue then
              if not workValue14 then
                goto flow_label_160
                numberValue = workValue14 or numberValue
              end
              numberValue = arg6.Controls
              numberValue = numberValue.Click
              numberValue = numberValue.Active
              if not numberValue then
                goto flow_label_160
              end
            end
            numberValue = workValue13
            ::flow_label_160::
            if arg4 then
              numberValue2 = arg4
              workValue = workValue14
              rageUiCall = workValue13
              workValue2 = numberValue
              numberValue2(workValue, rageUiCall, workValue2)
            end
            if numberValue then
              numberValue2 = RageUI
              numberValue2 = numberValue2.Settings
              numberValue2 = numberValue2.Audio
              workValue = RageUI
              workValue = workValue.PlaySound
              rageUiCall = numberValue2.Use
              rageUiCall = numberValue2[rageUiCall]
              rageUiCall = rageUiCall.Select
              rageUiCall = rageUiCall.audioName
              workValue2 = numberValue2.Use
              workValue2 = numberValue2[workValue2]
              workValue2 = workValue2.Select
              workValue2 = workValue2.audioRef
              workValue(rageUiCall, workValue2)
              if arg5 then
                workValue = RageUI
                workValue = workValue.IsAnyMenuVisible
                workValue = workValue()
                if workValue then
                  workValue = arg5
                  workValue = workValue()
                  if workValue then
                    workValue = RageUI
                    workValue.NextMenu = arg5
                  end
                end
              end
            end
          end
        end
      end
      workValue13 = RageUI
      rageUiCall3 = RageUI
      rageUiCall3 = rageUiCall3.Options
      rageUiCall3 = rageUiCall3 + 1
      workValue13.Options = rageUiCall3
    end
  end
end
dataTable2.Button = workValue12
dataTable2 = RageUI
function workValue12(arg1, arg2, arg3, arg4, arg5, arg6)
  local rageUiCall2, workValue13, rageUiCall3, workValue14, numberValue, numberValue2, workValue, rageUiCall, workValue2, workValue3, workValue4, workValue5, numberValue3, workValue6, workValue7, numberValue4, workValue8, workValue9, workValue10, workValue11
  rageUiCall2 = RageUI
  rageUiCall2 = rageUiCall2.CurrentMenu
  if nil ~= rageUiCall2 then
    workValue13 = rageUiCall2
    workValue13 = workValue13()
    if workValue13 then
      workValue13 = RageUI
      workValue13 = workValue13.Options
      workValue13 = workValue13 + 1
      rageUiCall3 = rageUiCall2.Pagination
      rageUiCall3 = rageUiCall3.Minimum
      if workValue13 >= rageUiCall3 then
        rageUiCall3 = rageUiCall2.Pagination
        rageUiCall3 = rageUiCall3.Maximum
        if workValue13 <= rageUiCall3 then
          rageUiCall3 = rageUiCall2.Index
          rageUiCall3 = rageUiCall3 == workValue13
          workValue14 = RageUI
          workValue14 = workValue14.ItemsSafeZone
          numberValue = rageUiCall2
          workValue14(numberValue)
          workValue14 = arg3.LeftBadge
          if workValue14 then
            workValue14 = arg3.LeftBadge
            numberValue = RageUI
            numberValue = numberValue.BadgeStyle
            numberValue = numberValue.None
            workValue14 = workValue14 ~= numberValue
          end
          numberValue = arg3.RightBadge
          if numberValue then
            numberValue = arg3.RightBadge
            numberValue2 = RageUI
            numberValue2 = numberValue2.BadgeStyle
            numberValue2 = numberValue2.None
          end
          numberValue = numberValue ~= numberValue2
          if workValue14 then
            numberValue2 = 27
            if numberValue2 then
              goto flow_label_66
            end
          end
          numberValue2 = 0
          ::flow_label_66::
          if numberValue then
            workValue = 32
            if workValue then
              goto flow_label_72
            end
          end
          workValue = 0
          ::flow_label_72::
          rageUiCall = arg3.Color
          if rageUiCall then
            rageUiCall = arg3.Color
            rageUiCall = rageUiCall.BackgroundColor
            if rageUiCall then
              rageUiCall = RenderRectangle
              workValue2 = rageUiCall2.X
              workValue3 = rageUiCall2.Y
              workValue4 = dataTable.SelectedSprite
              workValue4 = workValue4.Y
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall2.SubtitleHeight
              workValue3 = workValue3 + workValue4
              workValue4 = RageUI
              workValue4 = workValue4.ItemOffset
              workValue3 = workValue3 + workValue4
              workValue4 = dataTable.SelectedSprite
              workValue4 = workValue4.Width
              workValue5 = rageUiCall2.WidthOffset
              workValue4 = workValue4 + workValue5
              workValue5 = dataTable.SelectedSprite
              workValue5 = workValue5.Height
              numberValue3 = arg3.Color
              numberValue3 = numberValue3.BackgroundColor
              numberValue3 = numberValue3[1]
              workValue6 = arg3.Color
              workValue6 = workValue6.BackgroundColor
              workValue6 = workValue6[2]
              workValue7 = arg3.Color
              workValue7 = workValue7.BackgroundColor
              workValue7 = workValue7[3]
              rageUiCall(workValue2, workValue3, workValue4, workValue5, numberValue3, workValue6, workValue7)
            end
          end
          if rageUiCall3 then
            rageUiCall = arg3.Color
            if rageUiCall then
              rageUiCall = arg3.Color
              rageUiCall = rageUiCall.HightLightColor
              if rageUiCall then
                rageUiCall = RenderRectangle
                workValue2 = rageUiCall2.X
                workValue3 = rageUiCall2.Y
                workValue4 = dataTable.SelectedSprite
                workValue4 = workValue4.Y
                workValue3 = workValue3 + workValue4
                workValue4 = rageUiCall2.SubtitleHeight
                workValue3 = workValue3 + workValue4
                workValue4 = RageUI
                workValue4 = workValue4.ItemOffset
                workValue3 = workValue3 + workValue4
                workValue4 = dataTable.SelectedSprite
                workValue4 = workValue4.Width
                workValue5 = rageUiCall2.WidthOffset
                workValue4 = workValue4 + workValue5
                workValue5 = dataTable.SelectedSprite
                workValue5 = workValue5.Height
                numberValue3 = arg3.Color
                numberValue3 = numberValue3.HightLightColor
                numberValue3 = numberValue3[1]
                workValue6 = arg3.Color
                workValue6 = workValue6.HightLightColor
                workValue6 = workValue6[2]
                workValue7 = arg3.Color
                workValue7 = workValue7.HightLightColor
                workValue7 = workValue7[3]
                rageUiCall(workValue2, workValue3, workValue4, workValue5, numberValue3, workValue6, workValue7)
            end
            else
              rageUiCall = RenderSprite
              workValue2 = dataTable.SelectedSprite
              workValue2 = workValue2.Dictionary
              workValue3 = dataTable.SelectedSprite
              workValue3 = workValue3.Texture
              workValue4 = rageUiCall2.X
              workValue5 = rageUiCall2.Y
              numberValue3 = dataTable.SelectedSprite
              numberValue3 = numberValue3.Y
              workValue5 = workValue5 + numberValue3
              numberValue3 = rageUiCall2.SubtitleHeight
              workValue5 = workValue5 + numberValue3
              numberValue3 = RageUI
              numberValue3 = numberValue3.ItemOffset
              workValue5 = workValue5 + numberValue3
              numberValue3 = dataTable.SelectedSprite
              numberValue3 = numberValue3.Width
              workValue6 = rageUiCall2.WidthOffset
              numberValue3 = numberValue3 + workValue6
              workValue6 = dataTable.SelectedSprite
              workValue6 = workValue6.Height
              rageUiCall(workValue2, workValue3, workValue4, workValue5, numberValue3, workValue6)
            end
          end
          if arg4 then
            if workValue14 then
              rageUiCall = arg3.LeftBadge
              workValue2 = rageUiCall3
              rageUiCall = rageUiCall(workValue2)
              workValue2 = RenderSprite
              workValue3 = rageUiCall.BadgeDictionary
              if not workValue3 then
                workValue3 = "commonmenu"
              end
              workValue4 = rageUiCall.BadgeTexture
              if not workValue4 then
                workValue4 = ""
              end
              workValue5 = rageUiCall2.X
              numberValue3 = rageUiCall2.Y
              workValue6 = dataTable.LeftBadge
              workValue6 = workValue6.Y
              numberValue3 = numberValue3 + workValue6
              workValue6 = rageUiCall2.SubtitleHeight
              numberValue3 = numberValue3 + workValue6
              workValue6 = RageUI
              workValue6 = workValue6.ItemOffset
              numberValue3 = numberValue3 + workValue6
              workValue6 = dataTable.LeftBadge
              workValue6 = workValue6.Width
              workValue7 = dataTable.LeftBadge
              workValue7 = workValue7.Height
              numberValue4 = 0
              workValue8 = rageUiCall.BadgeColour
              if workValue8 then
                workValue8 = rageUiCall.BadgeColour
                workValue8 = workValue8.R
                if workValue8 then
                  goto flow_label_219
                end
              end
              workValue8 = 255
              ::flow_label_219::
              workValue9 = rageUiCall.BadgeColour
              if workValue9 then
                workValue9 = rageUiCall.BadgeColour
                workValue9 = workValue9.G
                if workValue9 then
                  goto flow_label_227
                end
              end
              workValue9 = 255
              ::flow_label_227::
              workValue10 = rageUiCall.BadgeColour
              if workValue10 then
                workValue10 = rageUiCall.BadgeColour
                workValue10 = workValue10.B
                if workValue10 then
                  goto flow_label_235
                end
              end
              workValue10 = 255
              ::flow_label_235::
              workValue11 = rageUiCall.BadgeColour
              if workValue11 then
                workValue11 = rageUiCall.BadgeColour
                workValue11 = workValue11.A
                if workValue11 then
                  goto flow_label_243
                end
              end
              workValue11 = 255
              ::flow_label_243::
              workValue2(workValue3, workValue4, workValue5, numberValue3, workValue6, workValue7, numberValue4, workValue8, workValue9, workValue10, workValue11)
            end
            if numberValue then
              rageUiCall = arg3.RightBadge
              workValue2 = rageUiCall3
              rageUiCall = rageUiCall(workValue2)
              workValue2 = RenderSprite
              workValue3 = rageUiCall.BadgeDictionary
              if not workValue3 then
                workValue3 = "commonmenu"
              end
              workValue4 = rageUiCall.BadgeTexture
              if not workValue4 then
                workValue4 = ""
              end
              workValue5 = rageUiCall2.X
              numberValue3 = dataTable.RightBadge
              numberValue3 = numberValue3.X
              workValue5 = workValue5 + numberValue3
              numberValue3 = rageUiCall2.WidthOffset
              workValue5 = workValue5 + numberValue3
              numberValue3 = rageUiCall2.Y
              workValue6 = dataTable.RightBadge
              workValue6 = workValue6.Y
              numberValue3 = numberValue3 + workValue6
              workValue6 = rageUiCall2.SubtitleHeight
              numberValue3 = numberValue3 + workValue6
              workValue6 = RageUI
              workValue6 = workValue6.ItemOffset
              numberValue3 = numberValue3 + workValue6
              workValue6 = dataTable.RightBadge
              workValue6 = workValue6.Width
              workValue7 = dataTable.RightBadge
              workValue7 = workValue7.Height
              numberValue4 = 0
              workValue8 = rageUiCall.BadgeColour
              if workValue8 then
                workValue8 = rageUiCall.BadgeColour
                workValue8 = workValue8.R
                if workValue8 then
                  goto flow_label_291
                end
              end
              workValue8 = 255
              ::flow_label_291::
              workValue9 = rageUiCall.BadgeColour
              if workValue9 then
                workValue9 = rageUiCall.BadgeColour
                workValue9 = workValue9.G
                if workValue9 then
                  goto flow_label_299
                end
              end
              workValue9 = 255
              ::flow_label_299::
              workValue10 = rageUiCall.BadgeColour
              if workValue10 then
                workValue10 = rageUiCall.BadgeColour
                workValue10 = workValue10.B
                if workValue10 then
                  goto flow_label_307
                end
              end
              workValue10 = 255
              ::flow_label_307::
              workValue11 = rageUiCall.BadgeColour
              if workValue11 then
                workValue11 = rageUiCall.BadgeColour
                workValue11 = workValue11.A
                if workValue11 then
                  goto flow_label_315
                end
              end
              workValue11 = 255
              ::flow_label_315::
              workValue2(workValue3, workValue4, workValue5, numberValue3, workValue6, workValue7, numberValue4, workValue8, workValue9, workValue10, workValue11)
            end
            rageUiCall = arg3.RightLabel
            if rageUiCall then
              rageUiCall = RenderText
              workValue2 = arg3.RightLabel
              workValue3 = rageUiCall2.X
              workValue4 = dataTable.RightText
              workValue4 = workValue4.X
              workValue3 = workValue3 + workValue4
              workValue3 = workValue3 - workValue
              workValue4 = rageUiCall2.WidthOffset
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall2.Y
              workValue5 = dataTable.RightText
              workValue5 = workValue5.Y
              workValue4 = workValue4 + workValue5
              workValue5 = rageUiCall2.SubtitleHeight
              workValue4 = workValue4 + workValue5
              workValue5 = RageUI
              workValue5 = workValue5.ItemOffset
              workValue4 = workValue4 + workValue5
              workValue5 = 0
              numberValue3 = dataTable.RightText
              numberValue3 = numberValue3.Scale
              if rageUiCall3 then
                workValue6 = 0
                if workValue6 then
                  goto flow_label_352
                end
              end
              workValue6 = 245
              ::flow_label_352::
              if rageUiCall3 then
                workValue7 = 0
                if workValue7 then
                  goto flow_label_358
                end
              end
              workValue7 = 245
              ::flow_label_358::
              if rageUiCall3 then
                numberValue4 = 0
                if numberValue4 then
                  goto flow_label_364
                end
              end
              numberValue4 = 245
              ::flow_label_364::
              workValue8 = 255
              workValue9 = 2
              rageUiCall(workValue2, workValue3, workValue4, workValue5, numberValue3, workValue6, workValue7, numberValue4, workValue8, workValue9)
            end
            rageUiCall = RenderText
            workValue2 = arg1
            workValue3 = rageUiCall2.X
            workValue4 = dataTable.Text
            workValue4 = workValue4.X
            workValue3 = workValue3 + workValue4
            workValue3 = workValue3 + numberValue2
            workValue4 = rageUiCall2.Y
            workValue5 = dataTable.Text
            workValue5 = workValue5.Y
            workValue4 = workValue4 + workValue5
            workValue5 = rageUiCall2.SubtitleHeight
            workValue4 = workValue4 + workValue5
            workValue5 = RageUI
            workValue5 = workValue5.ItemOffset
            workValue4 = workValue4 + workValue5
            workValue5 = 0
            numberValue3 = dataTable.Text
            numberValue3 = numberValue3.Scale
            if rageUiCall3 then
              workValue6 = 0
              if workValue6 then
                goto flow_label_397
              end
            end
            workValue6 = 245
            ::flow_label_397::
            if rageUiCall3 then
              workValue7 = 0
              if workValue7 then
                goto flow_label_403
              end
            end
            workValue7 = 245
            ::flow_label_403::
            if rageUiCall3 then
              numberValue4 = 0
              if numberValue4 then
                goto flow_label_409
              end
            end
            numberValue4 = 245
            ::flow_label_409::
            workValue8 = 255
            rageUiCall(workValue2, workValue3, workValue4, workValue5, numberValue3, workValue6, workValue7, numberValue4, workValue8)
          else
            if numberValue then
              rageUiCall = RageUI
              rageUiCall = rageUiCall.BadgeStyle
              rageUiCall = rageUiCall.Lock
              workValue2 = rageUiCall3
              rageUiCall = rageUiCall(workValue2)
              workValue2 = RenderSprite
              workValue3 = rageUiCall.BadgeDictionary
              if not workValue3 then
                workValue3 = "commonmenu"
              end
              workValue4 = rageUiCall.BadgeTexture
              if not workValue4 then
                workValue4 = ""
              end
              workValue5 = rageUiCall2.X
              numberValue3 = dataTable.RightBadge
              numberValue3 = numberValue3.X
              workValue5 = workValue5 + numberValue3
              numberValue3 = rageUiCall2.WidthOffset
              workValue5 = workValue5 + numberValue3
              numberValue3 = rageUiCall2.Y
              workValue6 = dataTable.RightBadge
              workValue6 = workValue6.Y
              numberValue3 = numberValue3 + workValue6
              workValue6 = rageUiCall2.SubtitleHeight
              numberValue3 = numberValue3 + workValue6
              workValue6 = RageUI
              workValue6 = workValue6.ItemOffset
              numberValue3 = numberValue3 + workValue6
              workValue6 = dataTable.RightBadge
              workValue6 = workValue6.Width
              workValue7 = dataTable.RightBadge
              workValue7 = workValue7.Height
              numberValue4 = 0
              workValue8 = rageUiCall.BadgeColour
              if workValue8 then
                workValue8 = rageUiCall.BadgeColour
                workValue8 = workValue8.R
                if workValue8 then
                  goto flow_label_461
                end
              end
              workValue8 = 255
              ::flow_label_461::
              workValue9 = rageUiCall.BadgeColour
              if workValue9 then
                workValue9 = rageUiCall.BadgeColour
                workValue9 = workValue9.G
                if workValue9 then
                  goto flow_label_469
                end
              end
              workValue9 = 255
              ::flow_label_469::
              workValue10 = rageUiCall.BadgeColour
              if workValue10 then
                workValue10 = rageUiCall.BadgeColour
                workValue10 = workValue10.B
                if workValue10 then
                  goto flow_label_477
                end
              end
              workValue10 = 255
              ::flow_label_477::
              workValue11 = rageUiCall.BadgeColour
              if workValue11 then
                workValue11 = rageUiCall.BadgeColour
                workValue11 = workValue11.A
                if workValue11 then
                  goto flow_label_485
                end
              end
              workValue11 = 255
              ::flow_label_485::
              workValue2(workValue3, workValue4, workValue5, numberValue3, workValue6, workValue7, numberValue4, workValue8, workValue9, workValue10, workValue11)
            end
            rageUiCall = arg3.RightLabel
            if rageUiCall then
              rageUiCall = RenderText
              workValue2 = arg3.RightLabel
              workValue3 = rageUiCall2.X
              workValue4 = dataTable.RightText
              workValue4 = workValue4.X
              workValue3 = workValue3 + workValue4
              workValue3 = workValue3 - workValue
              workValue4 = rageUiCall2.WidthOffset
              workValue3 = workValue3 + workValue4
              workValue4 = rageUiCall2.Y
              workValue5 = dataTable.RightText
              workValue5 = workValue5.Y
              workValue4 = workValue4 + workValue5
              workValue5 = rageUiCall2.SubtitleHeight
              workValue4 = workValue4 + workValue5
              workValue5 = RageUI
              workValue5 = workValue5.ItemOffset
              workValue4 = workValue4 + workValue5
              workValue5 = 0
              numberValue3 = dataTable.RightText
              numberValue3 = numberValue3.Scale
              workValue6 = 163
              workValue7 = 159
              numberValue4 = 148
              workValue8 = 255
              workValue9 = 2
              rageUiCall(workValue2, workValue3, workValue4, workValue5, numberValue3, workValue6, workValue7, numberValue4, workValue8, workValue9)
            end
            rageUiCall = RenderText
            workValue2 = arg1
            workValue3 = rageUiCall2.X
            workValue4 = dataTable.Text
            workValue4 = workValue4.X
            workValue3 = workValue3 + workValue4
            workValue3 = workValue3 + numberValue2
            workValue4 = rageUiCall2.Y
            workValue5 = dataTable.Text
            workValue5 = workValue5.Y
            workValue4 = workValue4 + workValue5
            workValue5 = rageUiCall2.SubtitleHeight
            workValue4 = workValue4 + workValue5
            workValue5 = RageUI
            workValue5 = workValue5.ItemOffset
            workValue4 = workValue4 + workValue5
            workValue5 = 0
            numberValue3 = dataTable.Text
            numberValue3 = numberValue3.Scale
            workValue6 = 163
            workValue7 = 159
            numberValue4 = 148
            workValue8 = 255
            rageUiCall(workValue2, workValue3, workValue4, workValue5, numberValue3, workValue6, workValue7, numberValue4, workValue8)
          end
          rageUiCall = RageUI
          workValue2 = RageUI
          workValue2 = workValue2.ItemOffset
          workValue3 = dataTable.Rectangle
          workValue3 = workValue3.Height
          workValue2 = workValue2 + workValue3
          rageUiCall.ItemOffset = workValue2
          rageUiCall = RageUI
          rageUiCall = rageUiCall.ItemsDescription
          workValue2 = rageUiCall2
          workValue3 = arg2
          workValue4 = rageUiCall3
          rageUiCall(workValue2, workValue3, workValue4)
          rageUiCall = rageUiCall2.EnableMouse
          if rageUiCall then
            rageUiCall = rageUiCall2.CursorStyle
            if 0 ~= rageUiCall then
              rageUiCall = rageUiCall2.CursorStyle
            end
            rageUiCall = RageUI
            rageUiCall = rageUiCall.ItemsMouseBounds
            workValue2 = rageUiCall2
            workValue3 = rageUiCall3
            workValue4 = workValue13 + 1
            workValue5 = dataTable
            rageUiCall = 1 == rageUiCall and rageUiCall
          end
          workValue2 = rageUiCall2.Controls
          workValue2 = workValue2.Select
          workValue2 = workValue2.Active
          if not workValue2 then
            if not rageUiCall then
              goto flow_label_598
              workValue2 = rageUiCall or workValue2
            end
            workValue2 = rageUiCall2.Controls
            workValue2 = workValue2.Click
            workValue2 = workValue2.Active
            if not workValue2 then
              goto flow_label_598
            end
          end
          workValue2 = rageUiCall3
          ::flow_label_598::
          if arg4 then
            if arg5 then
              workValue3 = arg5
              workValue4 = rageUiCall
              workValue5 = rageUiCall3
              numberValue3 = workValue2
              workValue3(workValue4, workValue5, numberValue3)
            end
            if workValue2 then
              workValue3 = RageUI
              workValue3 = workValue3.Settings
              workValue3 = workValue3.Audio
              workValue4 = RageUI
              workValue4 = workValue4.PlaySound
              workValue5 = workValue3.Use
              workValue5 = workValue3[workValue5]
              workValue5 = workValue5.Select
              workValue5 = workValue5.audioName
              numberValue3 = workValue3.Use
              numberValue3 = workValue3[numberValue3]
              numberValue3 = numberValue3.Select
              numberValue3 = numberValue3.audioRef
              workValue4(workValue5, numberValue3)
              if arg6 then
                workValue4 = RageUI
                workValue4 = workValue4.IsAnyMenuVisible
                workValue4 = workValue4()
                if workValue4 then
                  workValue4 = arg6
                  workValue4 = workValue4()
                  if workValue4 then
                    workValue4 = RageUI
                    workValue4.NextMenu = arg6
                  end
                end
              end
            end
          elseif arg5 then
            workValue3 = arg5
            workValue4 = rageUiCall
            workValue5 = rageUiCall3
            numberValue3 = false
            workValue3(workValue4, workValue5, numberValue3)
          end
        end
      end
      rageUiCall3 = RageUI
      workValue14 = RageUI
      workValue14 = workValue14.Options
      workValue14 = workValue14 + 1
      rageUiCall3.Options = workValue14
    end
  end
end
dataTable2.ButtonWithStyle = workValue12
dataTable2 = RageUI
function workValue12(arg1, arg2, arg3, arg4, arg5, arg6)
  local rageUiCall2, workValue13, rageUiCall3, workValue14, numberValue, numberValue2, workValue, rageUiCall, workValue2
  rageUiCall2 = RageUI
  rageUiCall2 = rageUiCall2.CurrentMenu
  if nil ~= rageUiCall2 then
    workValue13 = rageUiCall2
    workValue13 = workValue13()
    if workValue13 then
      workValue13 = RageUI
      workValue13 = workValue13.Options
      workValue13 = workValue13 + 1
      rageUiCall3 = rageUiCall2.Pagination
      rageUiCall3 = rageUiCall3.Minimum
      if workValue13 >= rageUiCall3 then
        rageUiCall3 = rageUiCall2.Pagination
        rageUiCall3 = rageUiCall3.Maximum
        if workValue13 <= rageUiCall3 then
          rageUiCall3 = rageUiCall2.Index
          rageUiCall3 = rageUiCall3 == workValue13
          workValue14 = RageUI
          workValue14 = workValue14.ItemsSafeZone
          numberValue = rageUiCall2
          workValue14(numberValue)
          workValue14 = RageUI
          numberValue = RageUI
          numberValue = numberValue.ItemOffset
          workValue14.ItemOffset = numberValue
          workValue14 = RageUI
          workValue14 = workValue14.LongerItemDescription
          numberValue = rageUiCall2
          numberValue2 = arg2
          workValue = rageUiCall3
          workValue14(numberValue, numberValue2, workValue)
          if arg4 then
            workValue14 = rageUiCall2.EnableMouse
            if workValue14 then
              workValue14 = rageUiCall2.CursorStyle
              if 0 ~= workValue14 then
                workValue14 = rageUiCall2.CursorStyle
              end
              workValue14 = RageUI
              workValue14 = workValue14.ItemsMouseBounds
              numberValue = rageUiCall2
              numberValue2 = rageUiCall3
              workValue = workValue13 + 1
              rageUiCall = dataTable
              workValue14 = 1 == workValue14 and workValue14
            end
            numberValue = rageUiCall2.Controls
            numberValue = numberValue.Select
            numberValue = numberValue.Active
            if not numberValue then
              if not workValue14 then
                goto flow_label_75
                numberValue = workValue14 or numberValue
              end
              numberValue = rageUiCall2.Controls
              numberValue = numberValue.Click
              numberValue = numberValue.Active
              if not numberValue then
                goto flow_label_75
              end
            end
            numberValue = rageUiCall3
            ::flow_label_75::
            if arg5 then
              numberValue2 = arg5
              workValue = workValue14
              rageUiCall = rageUiCall3
              workValue2 = numberValue
              numberValue2(workValue, rageUiCall, workValue2)
            end
            if numberValue then
              numberValue2 = RageUI
              numberValue2 = numberValue2.Settings
              numberValue2 = numberValue2.Audio
              workValue = RageUI
              workValue = workValue.PlaySound
              rageUiCall = numberValue2.Use
              rageUiCall = numberValue2[rageUiCall]
              rageUiCall = rageUiCall.Select
              rageUiCall = rageUiCall.audioName
              workValue2 = numberValue2.Use
              workValue2 = numberValue2[workValue2]
              workValue2 = workValue2.Select
              workValue2 = workValue2.audioRef
              workValue(rageUiCall, workValue2)
              if arg6 then
                workValue = RageUI
                workValue = workValue.IsAnyMenuVisible
                workValue = workValue()
                if workValue then
                  workValue = arg6
                  workValue = workValue()
                  if workValue then
                    workValue = RageUI
                    workValue.NextMenu = arg6
                  end
                end
              end
            end
          end
        end
      end
      rageUiCall3 = RageUI
      workValue14 = RageUI
      workValue14 = workValue14.Options
      workValue14 = workValue14 + 1
      rageUiCall3.Options = workValue14
    end
  end
end
dataTable2.FakeButtonWithStyle = workValue12
dataTable2 = RageUI
function workValue12(arg1)
  local arg2
  arg2 = RageUI
  arg2.ParentCallback = arg1
end
dataTable2.BackspaceMenuCallback = workValue12