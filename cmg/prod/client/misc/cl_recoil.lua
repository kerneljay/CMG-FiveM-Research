-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/weapons"
SHX0_1 = SHX0_1(SHX1_1)
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_1.weaponHashToModels
  SHX2_2 = GetSelectedPedWeapon
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX1_2[SHX2_2]
  if not SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = SHX0_1.weapons
  SHX2_2 = SHX2_2[SHX1_2]
  if not SHX2_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = SHX2_2.subType
  SHX3_2 = "combatmg" == SHX3_2
  return SHX3_2
end
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = IsPedArmed
  SHX2_2 = SHX0_2.playerPed
  SHX3_2 = 6
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
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
  end
  SHX1_2 = DisplayAmmoThisFrame
  SHX2_2 = false
  SHX1_2(SHX2_2)
end
SHX3_1 = CMG
SHX3_1 = SHX3_1.createThreadOnTick
SHX4_1 = SHX2_1
SHX5_1 = "Recoil Control Disabling"
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = Citizen
SHX3_1 = SHX3_1.CreateThread
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  while true do
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 100
    SHX0_2(SHX1_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = IsPedShooting
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = SHX1_1
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = GetVehiclePedIsIn
        SHX2_2 = SHX0_2
        SHX3_2 = false
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if 0 == SHX1_2 then
          SHX1_2 = 0
          repeat
            SHX2_2 = Wait
            SHX3_2 = 0
            SHX2_2(SHX3_2)
            SHX2_2 = GetGameplayCamRelativePitch
            SHX2_2 = SHX2_2()
            SHX3_2 = SetGameplayCamRelativePitch
            SHX4_2 = SHX2_2 + 0.1
            SHX5_2 = 0.2
            SHX3_2(SHX4_2, SHX5_2)
            SHX1_2 = SHX1_2 + 0.1
            SHX3_2 = 0.15
          until SHX1_2 >= SHX3_2
        end
      end
    end
  end
end
SHX3_1(SHX4_1)
