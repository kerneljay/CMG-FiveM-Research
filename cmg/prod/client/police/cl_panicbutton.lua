-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
SHX0_1 = {}
SHX0_1.Cooldown = 15
SHX0_1.DisableAllMessages = false
SHX0_1.ChatSuggestions = true
SHX0_1.Reminder = true
SHX0_1.Message = "Attention all units, MET officer in distress!"
SHX1_1 = {}
SHX1_1.Cooling = 0
SHX1_1.Tuned = true
SHX2_1 = false
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.Cooldown
  SHX1_1.Cooling = SHX0_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX2_1 = SHX0_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX1_1.Cooling
      if not (SHX0_3 > 0) then
        break
      end
      SHX0_3 = SHX1_1.Cooling
      SHX0_3 = SHX0_3 - 1
      SHX1_1.Cooling = SHX0_3
      SHX0_3 = Wait
      SHX1_3 = 1000
      SHX0_3(SHX1_3)
    end
    SHX0_3 = false
    SHX2_1 = SHX0_3
  end
  SHX0_2(SHX1_2)
end
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = RegisterPedheadshot
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = IsPedheadshotValid
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = "CHAR_BLOCKED"
    return SHX2_2
  end
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = IsPedheadshotReady
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX4_2 = 2500
    if SHX3_2 > SHX4_2 then
      SHX3_2 = UnregisterPedheadshot
      SHX4_2 = SHX1_2
      SHX3_2(SHX4_2)
      SHX3_2 = "CHAR_BLOCKED"
      return SHX3_2
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = GetPedheadshotTxdString
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX3_2
  SHX5_2 = SHX1_2
  return SHX4_2, SHX5_2
end
SHX5_1 = RegisterCommand
SHX6_1 = "panic"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasRadioItem
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = IsEntityDead
  SHX1_2 = PlayerPedId
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "nhs.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasClientPermission
      SHX1_2 = "prisonguard.onduty.permission"
      SHX0_2 = SHX0_2(SHX1_2)
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasClientPermission
        SHX1_2 = "lfb.onduty.permission"
        SHX0_2 = SHX0_2(SHX1_2)
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.isSelectedGangAdvanced
          SHX0_2 = SHX0_2()
          if not SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.hasClientPermission
            SHX1_2 = "borderforce.onduty.permission"
            SHX0_2 = SHX0_2(SHX1_2)
            if not SHX0_2 then
              goto SHX_LABEL_190
            end
          end
        end
      end
    end
  end
  SHX0_2 = SHX1_1.Cooling
  if 0 == SHX0_2 then
    SHX0_2 = {}
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerId
    SHX1_2 = SHX1_2()
    SHX0_2.Player = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX0_2.Ped = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerName
    SHX2_2 = SHX0_2.Player
    SHX1_2 = SHX1_2(SHX2_2)
    SHX0_2.Name = SHX1_2
    SHX1_2 = GetEntityCoords
    SHX2_2 = SHX0_2.Ped
    SHX1_2 = SHX1_2(SHX2_2)
    SHX0_2.Coords = SHX1_2
    SHX1_2 = {}
    SHX0_2.Location = SHX1_2
    SHX1_2 = SHX0_2.Location
    SHX2_2 = SHX0_2.Location
    SHX3_2 = GetStreetNameAtCoord
    SHX4_2 = SHX0_2.Coords
    SHX4_2 = SHX4_2.x
    SHX5_2 = SHX0_2.Coords
    SHX5_2 = SHX5_2.y
    SHX6_2 = SHX0_2.Coords
    SHX6_2 = SHX6_2.z
    SHX3_2, SHX4_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX2_2.CrossStreetHash = SHX4_2
    SHX1_2.StreetHash = SHX3_2
    SHX1_2 = SHX0_2.Location
    SHX2_2 = GetStreetNameFromHashKey
    SHX3_2 = SHX0_2.Location
    SHX3_2 = SHX3_2.StreetHash
    SHX2_2 = SHX2_2(SHX3_2)
    SHX1_2.Street = SHX2_2
    SHX1_2 = SHX0_2.Location
    SHX1_2 = SHX1_2.CrossStreet
    if 0 ~= SHX1_2 then
      SHX1_2 = SHX0_2.Location
      SHX2_2 = GetStreetNameFromHashKey
      SHX3_2 = SHX0_2.Location
      SHX3_2 = SHX3_2.CrossStreetHash
      SHX2_2 = SHX2_2(SHX3_2)
      SHX1_2.CrossStreet = SHX2_2
      SHX1_2 = SHX0_2.Location
      SHX1_2 = SHX1_2.Street
      SHX2_2 = " X "
      SHX3_2 = SHX0_2.Location
      SHX3_2 = SHX3_2.CrossStreet
      SHX1_2 = SHX1_2 .. SHX2_2 .. SHX3_2
      SHX0_2.Location = SHX1_2
    else
      SHX1_2 = SHX0_2.Location
      SHX1_2 = SHX1_2.Street
      SHX0_2.Location = SHX1_2
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "police.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "9baa82cbda"
      SHX3_2 = SHX0_2
      SHX4_2 = 3
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    else
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasClientPermission
      SHX2_2 = "nhs.onduty.permission"
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = TriggerServerEvent
        SHX2_2 = "9baa82cbda"
        SHX3_2 = SHX0_2
        SHX4_2 = 2
        SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      else
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.hasClientPermission
        SHX2_2 = "prisonguard.onduty.permission"
        SHX1_2 = SHX1_2(SHX2_2)
        if SHX1_2 then
          SHX1_2 = TriggerServerEvent
          SHX2_2 = "9baa82cbda"
          SHX3_2 = SHX0_2
          SHX4_2 = 4
          SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        else
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.hasClientPermission
          SHX2_2 = "lfb.onduty.permission"
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX1_2 then
            SHX1_2 = TriggerServerEvent
            SHX2_2 = "9baa82cbda"
            SHX3_2 = SHX0_2
            SHX4_2 = 5
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          else
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.hasClientPermission
            SHX2_2 = "borderforce.onduty.permission"
            SHX1_2 = SHX1_2(SHX2_2)
            if SHX1_2 then
              SHX1_2 = TriggerServerEvent
              SHX2_2 = "9baa82cbda"
              SHX3_2 = SHX0_2
              SHX4_2 = 7
              SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            else
              SHX1_2 = CMG
              SHX1_2 = SHX1_2.isSelectedGangAdvanced
              SHX1_2 = SHX1_2()
              if SHX1_2 then
                SHX1_2 = TriggerServerEvent
                SHX2_2 = "2d588b850f"
                SHX3_2 = SHX0_2
                SHX4_2 = false
                SHX1_2(SHX2_2, SHX3_2, SHX4_2)
              end
            end
          end
        end
      end
    end
    SHX1_2 = SHX3_1
    SHX1_2()
  else
    SHX0_2 = notify
    SHX1_2 = "~r~Panic Button still cooling down."
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_190:: outside nested blocks until all 'goto SHX_LABEL_190' can see it
  ::SHX_LABEL_190::
end
SHX8_1 = false
SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "9d185ee4de"
function SHX7_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.hasRadioItem
  SHX3_2 = SHX3_2()
  if not SHX3_2 then
    return
  end
  if 6 == SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.isGangPanicsPinnedOnly
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.isPlayerPinnedInGang
      SHX4_2 = SHX1_2.user_id
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX1_2.user_id
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.getClientUserId
        SHX4_2 = SHX4_2()
        if SHX3_2 ~= SHX4_2 then
          return
        end
      end
    end
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getClientUserId
  SHX3_2 = SHX3_2()
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.hasClientPermission
  SHX5_2 = "police.onduty.permission"
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.hasClientPermission
    SHX5_2 = "nhs.onduty.permission"
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 or 1 == SHX3_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.hasClientPermission
      SHX5_2 = "prisonguard.onduty.permission"
      SHX4_2 = SHX4_2(SHX5_2)
      if not SHX4_2 or 4 ~= SHX2_2 and 7 ~= SHX2_2 then
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.hasClientPermission
        SHX5_2 = "lfb.onduty.permission"
        SHX4_2 = SHX4_2(SHX5_2)
        if not SHX4_2 or 5 ~= SHX2_2 then
          if 6 == SHX2_2 then
            SHX4_2 = CMG
            SHX4_2 = SHX4_2.isEmergencyService
            SHX4_2 = SHX4_2()
            if not SHX4_2 then
              goto SHX_LABEL_75
            end
          end
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.hasClientPermission
          SHX5_2 = "borderforce.onduty.permission"
          SHX4_2 = SHX4_2(SHX5_2)
          if not SHX4_2 then
            goto SHX_LABEL_223
          end
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_75:: outside nested blocks until all 'goto SHX_LABEL_75' can see it
  ::SHX_LABEL_75::
  SHX4_2 = SendNUIMessage
  SHX5_2 = {}
  SHX5_2.PayloadType = "Panic"
  SHX5_2.Payload = SHX0_2
  SHX4_2(SHX5_2)
  SHX4_2 = SHX4_1
  SHX5_2 = GetPlayerPed
  SHX6_2 = GetPlayerFromServerId
  SHX7_2 = SHX1_2.Source
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX6_2(SHX7_2)
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX1_2.Headshot = SHX4_2
  if 2 == SHX2_2 then
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.notifyPicture
    SHX7_2 = SHX1_2.Headshot
    SHX8_2 = 2
    SHX9_2 = string
    SHX9_2 = SHX9_2.format
    SHX10_2 = "NHS - %s"
    SHX11_2 = SHX1_2.Name
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX10_2 = nil
    SHX11_2 = "~r~NHS Paramedic in distress! - "
    SHX12_2 = SHX1_2.Location
    SHX11_2 = SHX11_2 .. SHX12_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  elseif 3 == SHX2_2 then
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.notifyPicture
    SHX7_2 = SHX1_2.Headshot
    SHX8_2 = 2
    SHX9_2 = string
    SHX9_2 = SHX9_2.format
    SHX10_2 = "MET Police - %s"
    SHX11_2 = SHX1_2.Name
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX10_2 = nil
    SHX11_2 = "~r~Officer in distress! - "
    SHX12_2 = SHX1_2.Location
    SHX11_2 = SHX11_2 .. SHX12_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  elseif 4 == SHX2_2 then
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.notifyPicture
    SHX7_2 = SHX1_2.Headshot
    SHX8_2 = 2
    SHX9_2 = string
    SHX9_2 = SHX9_2.format
    SHX10_2 = "HM Prison - %s"
    SHX11_2 = SHX1_2.Name
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX10_2 = nil
    SHX11_2 = "~r~Prison Guard in distress! - "
    SHX12_2 = SHX1_2.Location
    SHX11_2 = SHX11_2 .. SHX12_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  elseif 5 == SHX2_2 then
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.notifyPicture
    SHX7_2 = SHX1_2.Headshot
    SHX8_2 = 2
    SHX9_2 = string
    SHX9_2 = SHX9_2.format
    SHX10_2 = "LFB - %s"
    SHX11_2 = SHX1_2.Name
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX10_2 = nil
    SHX11_2 = "~r~LFB Panic Alarm Activated! - "
    SHX12_2 = SHX1_2.Location
    SHX11_2 = SHX11_2 .. SHX12_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  elseif 6 == SHX2_2 then
    SHX6_2 = SHX1_2.Name
    if SHX6_2 then
      SHX6_2 = SHX1_2.Name
      if "" ~= SHX6_2 then
        SHX6_2 = SHX1_2.Name
        if SHX6_2 then
          goto SHX_LABEL_169
        end
      end
    end
    SHX6_2 = "Unknown"
    -- [FIX IF ERROR] Move ::SHX_LABEL_169:: outside nested blocks until all 'goto SHX_LABEL_169' can see it
    ::SHX_LABEL_169::
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.notifyPicture
    SHX8_2 = SHX1_2.Headshot
    SHX9_2 = 2
    SHX10_2 = string
    SHX10_2 = SHX10_2.format
    SHX11_2 = "Gang Panic - %s"
    SHX12_2 = SHX6_2
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    SHX11_2 = nil
    SHX12_2 = string
    SHX12_2 = SHX12_2.format
    SHX13_2 = "~r~%s triggered a gang panic - %s"
    SHX14_2 = SHX6_2
    SHX15_2 = SHX1_2.Location
    SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  elseif 7 == SHX2_2 then
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.notifyPicture
    SHX7_2 = SHX1_2.Headshot
    SHX8_2 = 2
    SHX9_2 = string
    SHX9_2 = SHX9_2.format
    SHX10_2 = "Border Force - %s"
    SHX11_2 = SHX1_2.Name
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX10_2 = nil
    SHX11_2 = "~r~Border Force Panic Alarm Activated! - "
    SHX12_2 = SHX1_2.Location
    SHX11_2 = SHX11_2 .. SHX12_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  end
  if nil ~= SHX5_2 then
    SHX6_2 = UnregisterPedheadshot
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.CreateThread
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.isDoingTruckRoute
    SHX0_3 = SHX0_3()
    if SHX0_3 then
      return
    end
    SHX0_3 = AddBlipForRadius
    SHX1_3 = SHX1_2.Coords
    SHX1_3 = SHX1_3.x
    SHX2_3 = SHX1_2.Coords
    SHX2_3 = SHX2_3.y
    SHX3_3 = SHX1_2.Coords
    SHX3_3 = SHX3_3.z
    SHX4_3 = 100.0
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX1_3 = SetBlipRoute
    SHX2_3 = SHX0_3
    SHX3_3 = true
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = Citizen
    SHX1_3 = SHX1_3.CreateThread
    function SHX2_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4
      while true do
        SHX0_4 = SHX0_3
        if not SHX0_4 then
          break
        end
        SHX0_4 = SetBlipRouteColour
        SHX1_4 = SHX0_3
        SHX2_4 = 1
        SHX0_4(SHX1_4, SHX2_4)
        SHX0_4 = Citizen
        SHX0_4 = SHX0_4.Wait
        SHX1_4 = 150
        SHX0_4(SHX1_4)
        SHX0_4 = SetBlipRouteColour
        SHX1_4 = SHX0_3
        SHX2_4 = 6
        SHX0_4(SHX1_4, SHX2_4)
        SHX0_4 = Citizen
        SHX0_4 = SHX0_4.Wait
        SHX1_4 = 150
        SHX0_4(SHX1_4)
        SHX0_4 = SetBlipRouteColour
        SHX1_4 = SHX0_3
        SHX2_4 = 35
        SHX0_4(SHX1_4, SHX2_4)
        SHX0_4 = Citizen
        SHX0_4 = SHX0_4.Wait
        SHX1_4 = 150
        SHX0_4(SHX1_4)
        SHX0_4 = SetBlipRouteColour
        SHX1_4 = SHX0_3
        SHX2_4 = 6
        SHX0_4(SHX1_4, SHX2_4)
      end
    end
    SHX1_3(SHX2_3)
    SHX1_3 = SetBlipColour
    SHX2_3 = SHX0_3
    SHX3_3 = SHX2_2
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = SetBlipAlpha
    SHX2_3 = SHX0_3
    SHX3_3 = 60
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = SetBlipFlashes
    SHX2_3 = SHX0_3
    SHX3_3 = true
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = SetBlipFlashInterval
    SHX2_3 = SHX0_3
    SHX3_3 = 200
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = Citizen
    SHX1_3 = SHX1_3.Wait
    SHX2_3 = 90000
    SHX1_3(SHX2_3)
    SHX1_3 = RemoveBlip
    SHX2_3 = SHX0_3
    SHX1_3(SHX2_3)
  end
  SHX6_2(SHX7_2)
  SHX6_2 = GetSoundId
  SHX6_2 = SHX6_2()
  SHX7_2 = PlaySoundFrontend
  SHX8_2 = SHX6_2
  SHX9_2 = "police_notification"
  SHX10_2 = "DLC_AS_VNT_Sounds"
  SHX11_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX7_2 = ReleaseSoundId
  SHX8_2 = SHX6_2
  SHX7_2(SHX8_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_223:: outside nested blocks until all 'goto SHX_LABEL_223' can see it
  ::SHX_LABEL_223::
end
SHX5_1(SHX6_1, SHX7_1)
