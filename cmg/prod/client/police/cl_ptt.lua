-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_business"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = false
SHX2_1 = AddEventHandler
SHX3_1 = "pma-voice:radioActive"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isEmergencyService
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.canAnim
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  if SHX0_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if not SHX3_2 then
      goto SHX_LABEL_91
    end
    SHX3_2 = IsPedReloading
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_91
    end
    SHX3_2 = exports
    SHX3_2 = SHX3_2["pma-voice"]
    SHX4_2 = SHX3_2
    SHX3_2 = SHX3_2.getRadioVolume
    SHX3_2 = SHX3_2(SHX4_2)
    if not (SHX3_2 > 0.0) then
      goto SHX_LABEL_91
    end
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.isInRadioChannel
    SHX3_2 = SHX3_2()
    if not SHX3_2 then
      goto SHX_LABEL_91
    end
    SHX3_2 = SHX1_1
    if SHX3_2 then
      goto SHX_LABEL_91
    end
    SHX3_2 = SendNUIMessage
    SHX4_2 = {}
    SHX4_2.transactionType = "playRadioOn"
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadAnimDict
    SHX4_2 = "random@arrests"
    SHX3_2(SHX4_2)
    SHX3_2 = TaskPlayAnim
    SHX4_2 = SHX2_2
    SHX5_2 = "random@arrests"
    SHX6_2 = IsPlayerFreeAiming
    SHX7_2 = SHX1_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = "radio_chatter"
      if SHX6_2 then
        goto SHX_LABEL_63
      end
    end
    SHX6_2 = "generic_radio_enter"
    -- [FIX IF ERROR] Move ::SHX_LABEL_63:: outside nested blocks until all 'goto SHX_LABEL_63' can see it
    ::SHX_LABEL_63::
    SHX7_2 = 8.0
    SHX8_2 = 2.0
    SHX9_2 = -1
    SHX10_2 = 50
    SHX11_2 = 2.0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX3_2 = RemoveAnimDict
    SHX4_2 = "random@arrests"
    SHX3_2(SHX4_2)
    SHX3_2 = true
    SHX1_1 = SHX3_2
  else
    SHX3_2 = SHX1_1
    if SHX3_2 then
      SHX3_2 = SendNUIMessage
      SHX4_2 = {}
      SHX4_2.transactionType = "playRadioOff"
      SHX3_2(SHX4_2)
      SHX3_2 = ClearPedTasks
      SHX4_2 = SHX2_2
      SHX3_2(SHX4_2)
      SHX3_2 = false
      SHX1_1 = SHX3_2
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_91:: outside nested blocks until all 'goto SHX_LABEL_91' can see it
  ::SHX_LABEL_91::
end
SHX2_1(SHX3_1, SHX4_1)
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.canAnim
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerPed
      SHX0_2 = SHX0_2()
      SHX1_2 = SHX1_1
      if SHX1_2 then
        SHX1_2 = IsEntityPlayingAnim
        SHX2_2 = SHX0_2
        SHX3_2 = "random@arrests"
        SHX4_2 = "generic_radio_enter"
        SHX5_2 = 3
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        if SHX1_2 then
          SHX1_2 = DisableActions
          SHX2_2 = SHX0_2
          SHX1_2(SHX2_2)
        else
          SHX1_2 = IsEntityPlayingAnim
          SHX2_2 = SHX0_2
          SHX3_2 = "random@arrests"
          SHX4_2 = "radio_chatter"
          SHX5_2 = 3
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
          if SHX1_2 then
            SHX1_2 = DisableActions
            SHX2_2 = SHX0_2
            SHX1_2(SHX2_2)
          end
        end
      end
    end
  end
end
SHX3_1 = CMG
SHX3_1 = SHX3_1.createThreadOnTick
SHX4_1 = SHX2_1
SHX5_1 = "Police Push To Talk"
SHX3_1(SHX4_1, SHX5_1)
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = DisableControlAction
  SHX2_2 = 1
  SHX3_2 = 140
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 1
  SHX3_2 = 141
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 1
  SHX3_2 = 142
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 1
  SHX3_2 = 37
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisablePlayerFiring
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
DisableActions = SHX3_1
SHX3_1 = {}
SHX4_1 = 137473
SHX3_1[SHX4_1] = 2
SHX4_1 = 121346
SHX3_1[SHX4_1] = 2
SHX4_1 = 120834
SHX3_1[SHX4_1] = 2
SHX4_1 = 127234
SHX3_1[SHX4_1] = 2
SHX4_1 = {}
SHX5_1 = 120834
SHX6_1 = {}
SHX7_1 = -1174491112
SHX6_1[SHX7_1] = 1
SHX4_1[SHX5_1] = SHX6_1
SHX5_1 = pairs
SHX6_1 = SHX0_1.locations
SHX5_1, SHX6_1, SHX7_1, SHX8_1 = SHX5_1(SHX6_1)
for SHX9_1, SHX10_1 in SHX5_1, SHX6_1, SHX7_1, SHX8_1 do
  SHX11_1 = SHX10_1.interiorHash
  if SHX11_1 then
    SHX11_1 = SHX10_1.interiorHash
    SHX3_1[SHX11_1] = 2
  end
end
SHX5_1 = nil
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetInteriorFromEntity
  SHX2_2 = SHX0_2.playerPed
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX1_2]
  if SHX2_2 then
    SHX3_2 = SHX4_1
    SHX3_2 = SHX3_2[SHX1_2]
    if SHX3_2 then
      SHX4_2 = GetRoomKeyFromEntity
      SHX5_2 = SHX0_2.playerPed
      SHX4_2 = SHX4_2(SHX5_2)
      SHX5_2 = SHX3_2[SHX4_2]
      if SHX5_2 then
        SHX2_2 = SHX3_2[SHX4_2]
      end
    end
  end
  if SHX2_2 then
    SHX3_2 = SHX5_1
    if SHX3_2 then
      SHX3_2 = SHX5_1
      if SHX3_2 == SHX2_2 then
        goto SHX_LABEL_34
      end
    end
    SHX3_2 = exports
    SHX3_2 = SHX3_2["pma-voice"]
    SHX4_2 = SHX3_2
    SHX3_2 = SHX3_2.setMaxProximityMode
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
    SHX5_1 = SHX2_2
  else
    -- [FIX IF ERROR] Move ::SHX_LABEL_34:: outside nested blocks until all 'goto SHX_LABEL_34' can see it
    ::SHX_LABEL_34::
    if not SHX2_2 then
      SHX3_2 = SHX5_1
      if SHX3_2 then
        SHX3_2 = exports
        SHX3_2 = SHX3_2["pma-voice"]
        SHX4_2 = SHX3_2
        SHX3_2 = SHX3_2.clearMaxProximityMode
        SHX3_2(SHX4_2)
        SHX3_2 = nil
        SHX5_1 = SHX3_2
      end
    end
  end
end
SHX7_1 = CMG
SHX7_1 = SHX7_1.createThreadOnTick
SHX8_1 = SHX6_1
SHX9_1 = "Interior Voices"
SHX7_1(SHX8_1, SHX9_1)
