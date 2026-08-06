-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1
function SHX0_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetEntityHealth
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 > 102 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.getNearestOwnedVehicle
    SHX2_2 = 8
    SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
    SHX3_2 = false
    if nil ~= SHX2_2 then
      if SHX1_2 then
        SHX4_2 = tCMG
        SHX4_2 = SHX4_2.vc_toggleLock
        SHX5_2 = SHX2_2
        SHX4_2(SHX5_2)
        SHX3_2 = true
      else
        SHX4_2 = Citizen
        SHX4_2 = SHX4_2.Wait
        SHX5_2 = 1000
        SHX4_2(SHX5_2)
      end
    else
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.tryToggleGarbageJobTruckLock
      SHX5_2 = 8
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        SHX3_2 = true
      end
    end
    if SHX3_2 then
      SHX4_2 = tCMG
      SHX4_2 = SHX4_2.playSound
      SHX5_2 = "HUD_MINI_GAME_SOUNDSET"
      SHX6_2 = "5_SEC_WARNING"
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.loadAnimDict
      SHX5_2 = "anim@mp_player_intmenu@key_fob@"
      SHX4_2(SHX5_2)
      SHX4_2 = TaskPlayAnim
      SHX5_2 = PlayerPedId
      SHX5_2 = SHX5_2()
      SHX6_2 = "anim@mp_player_intmenu@key_fob@"
      SHX7_2 = "fob_click"
      SHX8_2 = 8.0
      SHX9_2 = -8
      SHX10_2 = -1
      SHX11_2 = 48
      SHX12_2 = 0
      SHX13_2 = false
      SHX14_2 = false
      SHX15_2 = false
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX4_2 = RemoveAnimDict
      SHX5_2 = "anim@mp_player_intmenu@key_fob@"
      SHX4_2(SHX5_2)
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.isNewPlayer
      SHX4_2 = SHX4_2()
      if SHX4_2 then
        SHX4_2 = drawNativeNotification
        SHX5_2 = "Press ~INPUT_27781958~ when nearby to toggle the lock on the vehicle again."
        SHX4_2(SHX5_2)
      end
      SHX4_2 = Citizen
      SHX4_2 = SHX4_2.Wait
      SHX5_2 = 1000
      SHX4_2(SHX5_2)
    elseif nil == SHX2_2 then
      SHX4_2 = tCMG
      SHX4_2 = SHX4_2.notify
      SHX5_2 = "~r~No owned vehicle found nearby to lock/unlock"
      SHX4_2(SHX5_2)
    end
  else
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.notify
    SHX2_2 = "~r~You may not lock/unlock your vehicle whilst dead."
    SHX1_2(SHX2_2)
  end
end
SHX1_1 = RegisterCommand
SHX2_1 = "lockvehicle"
SHX3_1 = SHX0_1
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterKeyMapping
SHX2_1 = "lockvehicle"
SHX3_1 = "Lock Vehicle"
SHX4_1 = "KEYBOARD"
SHX5_1 = "COMMA"
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1)
SHX1_1 = AddEventHandler
SHX2_1 = "d5c231fe44"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  SHX0_2()
end
SHX1_1(SHX2_1, SHX3_1)
