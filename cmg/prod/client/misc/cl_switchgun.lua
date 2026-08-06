-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1
SHX0_1 = false
SHX1_1 = false
SHX2_1 = false
SHX3_1 = nil
SHX4_1 = 0
SHX5_1 = -1569615261
SHX6_1 = true
SHX7_1 = false
SHX8_1 = 0
SHX9_1 = {}
SHX10_1 = -273849285
SHX11_1 = 911657153
SHX12_1 = 1843015545
SHX13_1 = 1593441988
SHX14_1 = 1737195953
SHX15_1 = -1206412243
SHX16_1 = 1093864856
SHX17_1 = 782720368
SHX18_1 = -976419591
SHX19_1 = 1838304326
SHX20_1 = 1313457450
SHX9_1[1] = SHX10_1
SHX9_1[2] = SHX11_1
SHX9_1[3] = SHX12_1
SHX9_1[4] = SHX13_1
SHX9_1[5] = SHX14_1
SHX9_1[6] = SHX15_1
SHX9_1[7] = SHX16_1
SHX9_1[8] = SHX17_1
SHX9_1[9] = SHX18_1
SHX9_1[10] = SHX19_1
SHX9_1[11] = SHX20_1
SHX10_1 = {}
SHX11_1 = -499989876
SHX10_1[SHX11_1] = true
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX2_1
  if not SHX2_2 then
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.CreateThread
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = true
      SHX2_1 = SHX0_3
      SHX0_3 = SHX0_2
      SHX4_1 = SHX0_3
      while true do
        SHX0_3 = SHX4_1
        if not (SHX0_3 > 0) then
          break
        end
        SHX0_3 = Wait
        SHX1_3 = 1000
        SHX0_3(SHX1_3)
        SHX0_3 = notify
        SHX1_3 = SHX1_2
        SHX0_3(SHX1_3)
        SHX0_3 = SHX4_1
        SHX0_3 = SHX0_3 - 1000
        SHX4_1 = SHX0_3
        SHX0_3 = true
        SHX0_1 = SHX0_3
        SHX0_3 = nil
        SHX3_1 = SHX0_3
      end
      SHX0_3 = notify
      SHX1_3 = "~g~Your timeout has finished, do not try to do that again"
      SHX0_3(SHX1_3)
      SHX0_3 = false
      SHX0_1 = SHX0_3
      SHX0_3 = false
      SHX2_1 = SHX0_3
    end
    SHX2_2(SHX3_2)
  end
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  SHX2_2 = GetSelectedPedWeapon
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX7_1
  if SHX3_2 and -1569615261 == SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setCanOpenPhone
    SHX4_2 = true
    SHX3_2(SHX4_2)
    SHX3_2 = false
    SHX7_1 = SHX3_2
  end
  SHX3_2 = SHX8_1
  if SHX3_2 ~= SHX1_2 then
    if 0 ~= SHX1_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.setWeapon
      SHX4_2 = SHX0_2
      SHX5_2 = -1569615261
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = -1569615261
      SHX5_1 = SHX3_2
    end
    SHX8_1 = SHX1_2
  end
  SHX3_2 = SHX2_1
  if SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setWeapon
    SHX4_2 = SHX0_2
    SHX5_2 = -1569615261
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX3_2 = SHX0_1
  if SHX3_2 then
    SHX3_2 = DisablePlayerFiring
    SHX4_2 = PlayerId
    SHX4_2 = SHX4_2()
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SHX1_1
  if SHX3_2 then
    SHX3_2 = IsControlJustPressed
    SHX4_2 = 0
    SHX5_2 = 73
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX3_2 = 3500
      SHX4_2 = false
      SHX1_1 = SHX4_2
      SHX4_2 = SHX4_1
      if not (SHX3_2 < SHX4_2) then
        SHX4_1 = SHX3_2
      end
      SHX4_2 = SHX11_1
      SHX5_2 = SHX3_2
      SHX6_2 = string
      SHX6_2 = SHX6_2.format
      SHX7_2 = "~r~Do not press X to cancel the animation! Your weapons have been holstered for %ss"
      SHX8_2 = SHX3_2 / 1000
      SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
  end
  SHX3_2 = GetIsTaskActive
  SHX4_2 = SHX0_2
  SHX5_2 = 2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    if -1569615261 ~= SHX2_2 then
      SHX3_2 = SHX1_1
      if not SHX3_2 then
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.setWeapon
        SHX4_2 = SHX0_2
        SHX5_2 = -1569615261
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = -1569615261
        SHX5_1 = SHX3_2
      end
    end
    SHX3_2 = HudWeaponWheelIgnoreSelection
    SHX3_2()
    SHX3_2 = HudWeaponWheelIgnoreControlInput
    SHX4_2 = true
    SHX3_2(SHX4_2)
  else
    SHX3_2 = HudWeaponWheelIgnoreControlInput
    SHX4_2 = false
    SHX3_2(SHX4_2)
  end
end
SHX13_1 = CMG
SHX13_1 = SHX13_1.createThreadOnTick
SHX14_1 = SHX12_1
SHX15_1 = "Gun Holster"
SHX13_1(SHX14_1, SHX15_1)
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = GetPedConfigFlag
  SHX2_2 = SHX0_2
  SHX3_2 = 354
  SHX4_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  if SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = GetSelectedPedWeapon
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = SHX5_1
    if SHX1_2 ~= SHX2_2 then
      if 966099553 == SHX1_2 then
        SHX2_2 = -1569615261
        SHX5_1 = SHX2_2
        SHX2_2 = false
        return SHX2_2
      else
        SHX2_2 = print
        SHX3_2 = string
        SHX3_2 = SHX3_2.format
        SHX4_2 = "[CMG] Switching from weapon %s to %s."
        SHX5_2 = select
        SHX6_2 = 2
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.resolveHash
        SHX8_2 = SHX5_1
        SHX7_2, SHX8_2, SHX9_2 = SHX7_2(SHX8_2)
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = select
        SHX7_2 = 2
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.resolveHash
        SHX9_2 = SHX1_2
        SHX8_2, SHX9_2 = SHX8_2(SHX9_2)
        SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX5_1 = SHX1_2
        SHX2_2 = true
        return SHX2_2
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.cancelEmote
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCanAnim
  SHX1_2 = false
  SHX0_2(SHX1_2)
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCanAnim
  SHX1_2 = true
  SHX0_2(SHX1_2)
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX2_1
  if not SHX1_2 then
    SHX1_2 = false
    SHX0_1 = SHX1_2
    SHX1_2 = false
    SHX1_1 = SHX1_2
    SHX1_2 = GetSelectedPedWeapon
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX3_1 = SHX1_2
    SHX1_2 = SHX3_1
    if -1569615261 ~= SHX1_2 then
      SHX1_2 = SHX3_1
      SHX5_1 = SHX1_2
    end
  end
end
SHX17_1 = Citizen
SHX17_1 = SHX17_1.CreateThread
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isInModShop
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = SHX6_1
      if SHX1_2 then
        SHX1_2 = IsPedInAnyVehicle
        SHX2_2 = SHX0_2
        SHX3_2 = true
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = GetIsTaskActive
          SHX2_2 = SHX0_2
          SHX3_2 = 50
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          if SHX1_2 then
            while true do
              SHX1_2 = GetIsTaskActive
              SHX2_2 = SHX0_2
              SHX3_2 = 50
              SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
              if not SHX1_2 then
                break
              end
              SHX1_2 = Wait
              SHX2_2 = 0
              SHX1_2(SHX2_2)
            end
            SHX1_2 = Wait
            SHX2_2 = 500
            SHX1_2(SHX2_2)
          end
          SHX1_2 = GetIsTaskActive
          SHX2_2 = SHX0_2
          SHX3_2 = 1
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          if SHX1_2 then
            while true do
              SHX1_2 = GetIsTaskActive
              SHX2_2 = SHX0_2
              SHX3_2 = 1
              SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
              if not SHX1_2 then
                break
              end
              SHX1_2 = Wait
              SHX2_2 = 0
              SHX1_2(SHX2_2)
            end
            SHX1_2 = Wait
            SHX2_2 = 500
            SHX1_2(SHX2_2)
          end
          SHX1_2 = SHX13_1
          SHX2_2 = SHX0_2
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX1_2 then
            SHX1_2 = SHX14_1
            SHX1_2()
            SHX1_2 = GetSelectedPedWeapon
            SHX2_2 = SHX0_2
            SHX1_2 = SHX1_2(SHX2_2)
            if -1569615261 ~= SHX1_2 then
              SHX2_2 = SHX10_1
              SHX2_2 = SHX2_2[SHX1_2]
              if SHX2_2 then
                SHX2_2 = SHX16_1
                SHX3_2 = SHX0_2
                SHX2_2(SHX3_2)
              else
                SHX2_2 = table
                SHX2_2 = SHX2_2.has
                SHX3_2 = SHX9_1
                SHX4_2 = SHX1_2
                SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
                if SHX2_2 then
                  SHX2_2 = CMG
                  SHX2_2 = SHX2_2.loadAnimDict
                  SHX3_2 = "rcmjosh4"
                  SHX2_2(SHX3_2)
                  SHX2_2 = CMG
                  SHX2_2 = SHX2_2.loadAnimDict
                  SHX3_2 = "reaction@intimidation@cop@unarmed"
                  SHX2_2(SHX3_2)
                  SHX2_2 = true
                  SHX1_1 = SHX2_2
                  SHX2_2 = SetPedCurrentWeaponVisible
                  SHX3_2 = SHX0_2
                  SHX4_2 = false
                  SHX5_2 = true
                  SHX6_2 = true
                  SHX7_2 = true
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
                  SHX2_2 = TaskPlayAnim
                  SHX3_2 = SHX0_2
                  SHX4_2 = "reaction@intimidation@cop@unarmed"
                  SHX5_2 = "intro"
                  SHX6_2 = 8.0
                  SHX7_2 = 2.0
                  SHX8_2 = -1
                  SHX9_2 = 50
                  SHX10_2 = 2.0
                  SHX11_2 = false
                  SHX12_2 = false
                  SHX13_2 = false
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
                  SHX2_2 = RemoveAnimDict
                  SHX3_2 = "reaction@intimidation@cop@unarmed"
                  SHX2_2(SHX3_2)
                  SHX2_2 = SetPedCurrentWeaponVisible
                  SHX3_2 = SHX0_2
                  SHX4_2 = true
                  SHX5_2 = true
                  SHX6_2 = true
                  SHX7_2 = true
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
                  SHX2_2 = Citizen
                  SHX2_2 = SHX2_2.Wait
                  SHX3_2 = 250
                  SHX2_2(SHX3_2)
                  SHX2_2 = TaskPlayAnim
                  SHX3_2 = SHX0_2
                  SHX4_2 = "rcmjosh4"
                  SHX5_2 = "josh_leadout_cop2"
                  SHX6_2 = 8.0
                  SHX7_2 = 2.0
                  SHX8_2 = -1
                  SHX9_2 = 48
                  SHX10_2 = 10
                  SHX11_2 = false
                  SHX12_2 = false
                  SHX13_2 = false
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
                  SHX2_2 = RemoveAnimDict
                  SHX3_2 = "rcmjosh4"
                  SHX2_2(SHX3_2)
                  SHX2_2 = Citizen
                  SHX2_2 = SHX2_2.Wait
                  SHX3_2 = 400
                  SHX2_2(SHX3_2)
                  SHX2_2 = StopAnimTask
                  SHX3_2 = SHX0_2
                  SHX4_2 = "rcmjosh4"
                  SHX5_2 = "josh_leadout_cop2"
                  SHX6_2 = 1.0
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
                  SHX2_2 = GetSelectedPedWeapon
                  SHX3_2 = SHX0_2
                  SHX2_2 = SHX2_2(SHX3_2)
                  if -1569615261 ~= SHX2_2 then
                    SHX3_2 = table
                    SHX3_2 = SHX3_2.has
                    SHX4_2 = SHX9_1
                    SHX5_2 = SHX2_2
                    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
                    if not SHX3_2 then
                      SHX3_2 = SHX11_1
                      SHX4_2 = 3500
                      SHX5_2 = "~r~Do not change weapons to equip quicker! Your weapons have been holstered for 3.5s"
                      SHX3_2(SHX4_2, SHX5_2)
                  end
                  else
                    SHX3_2 = SHX16_1
                    SHX4_2 = SHX0_2
                    SHX3_2(SHX4_2)
                  end
                else
                  SHX2_2 = true
                  SHX1_1 = SHX2_2
                  SHX2_2 = CMG
                  SHX2_2 = SHX2_2.loadAnimDict
                  SHX3_2 = "reaction@intimidation@1h"
                  SHX2_2(SHX3_2)
                  SHX2_2 = TaskPlayAnim
                  SHX3_2 = SHX0_2
                  SHX4_2 = "reaction@intimidation@1h"
                  SHX5_2 = "intro"
                  SHX6_2 = 8.0
                  SHX7_2 = 2.0
                  SHX8_2 = 1700
                  SHX9_2 = 48
                  SHX10_2 = 10
                  SHX11_2 = false
                  SHX12_2 = false
                  SHX13_2 = false
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
                  SHX2_2 = RemoveAnimDict
                  SHX3_2 = "reaction@intimidation@1h"
                  SHX2_2(SHX3_2)
                  SHX2_2 = SetPedCurrentWeaponVisible
                  SHX3_2 = SHX0_2
                  SHX4_2 = false
                  SHX5_2 = true
                  SHX6_2 = true
                  SHX7_2 = true
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
                  SHX2_2 = true
                  SHX0_1 = SHX2_2
                  SHX2_2 = Citizen
                  SHX2_2 = SHX2_2.Wait
                  SHX3_2 = 1300
                  SHX2_2(SHX3_2)
                  SHX2_2 = SetPedCurrentWeaponVisible
                  SHX3_2 = SHX0_2
                  SHX4_2 = true
                  SHX5_2 = true
                  SHX6_2 = true
                  SHX7_2 = true
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
                  SHX2_2 = Citizen
                  SHX2_2 = SHX2_2.Wait
                  SHX3_2 = 700
                  SHX2_2(SHX3_2)
                  SHX2_2 = StopAnimTask
                  SHX3_2 = SHX0_2
                  SHX4_2 = "reaction@intimidation@1h"
                  SHX5_2 = "intro"
                  SHX6_2 = 1.0
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
                  SHX2_2 = EnableControlAction
                  SHX3_2 = 0
                  SHX4_2 = 25
                  SHX5_2 = true
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
                  SHX2_2 = SHX16_1
                  SHX3_2 = SHX0_2
                  SHX2_2(SHX3_2)
                end
              end
              SHX2_2 = SHX7_1
              if not SHX2_2 then
                SHX2_2 = CMG
                SHX2_2 = SHX2_2.setCanOpenPhone
                SHX3_2 = false
                SHX2_2(SHX3_2)
                SHX2_2 = true
                SHX7_1 = SHX2_2
              end
            else
              SHX2_2 = SHX3_1
              if SHX2_2 then
                SHX3_2 = SHX3_1
                SHX2_2 = SHX10_1
                SHX2_2 = SHX2_2[SHX3_2]
                if SHX2_2 then
                  SHX2_2 = false
                  SHX0_1 = SHX2_2
                  SHX2_2 = false
                  SHX1_1 = SHX2_2
                  SHX2_2 = nil
                  SHX3_1 = SHX2_2
                  SHX2_2 = -1569615261
                  SHX5_1 = SHX2_2
              end
              else
                SHX2_2 = table
                SHX2_2 = SHX2_2.has
                SHX3_2 = SHX9_1
                SHX4_2 = SHX3_1
                SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
                if SHX2_2 then
                  SHX2_2 = CMG
                  SHX2_2 = SHX2_2.loadAnimDict
                  SHX3_2 = "rcmjosh4"
                  SHX2_2(SHX3_2)
                  SHX2_2 = CMG
                  SHX2_2 = SHX2_2.loadAnimDict
                  SHX3_2 = "reaction@intimidation@cop@unarmed"
                  SHX2_2(SHX3_2)
                  SHX2_2 = TaskPlayAnim
                  SHX3_2 = SHX0_2
                  SHX4_2 = "rcmjosh4"
                  SHX5_2 = "josh_leadout_cop2"
                  SHX6_2 = 8.0
                  SHX7_2 = 2.0
                  SHX8_2 = -1
                  SHX9_2 = 48
                  SHX10_2 = 10
                  SHX11_2 = false
                  SHX12_2 = false
                  SHX13_2 = false
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
                  SHX2_2 = RemoveAnimDict
                  SHX3_2 = "rcmjosh4"
                  SHX2_2(SHX3_2)
                  SHX2_2 = Citizen
                  SHX2_2 = SHX2_2.Wait
                  SHX3_2 = 500
                  SHX2_2(SHX3_2)
                  SHX2_2 = TaskPlayAnim
                  SHX3_2 = SHX0_2
                  SHX4_2 = "reaction@intimidation@cop@unarmed"
                  SHX5_2 = "outro"
                  SHX6_2 = 8.0
                  SHX7_2 = 2.0
                  SHX8_2 = -1
                  SHX9_2 = 50
                  SHX10_2 = 2.0
                  SHX11_2 = false
                  SHX12_2 = false
                  SHX13_2 = false
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
                  SHX2_2 = RemoveAnimDict
                  SHX3_2 = "reaction@intimidation@cop@unarmed"
                  SHX2_2(SHX3_2)
                  SHX2_2 = Citizen
                  SHX2_2 = SHX2_2.Wait
                  SHX3_2 = 60
                  SHX2_2(SHX3_2)
                  SHX2_2 = StopAnimTask
                  SHX3_2 = SHX0_2
                  SHX4_2 = "reaction@intimidation@cop@unarmed"
                  SHX5_2 = "outro"
                  SHX6_2 = 1.0
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
                  SHX2_2 = GetSelectedPedWeapon
                  SHX3_2 = SHX0_2
                  SHX2_2 = SHX2_2(SHX3_2)
                  if -1569615261 ~= SHX2_2 then
                    SHX3_2 = table
                    SHX3_2 = SHX3_2.has
                    SHX4_2 = SHX9_1
                    SHX5_2 = SHX2_2
                    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
                    if not SHX3_2 then
                      SHX3_2 = SHX11_1
                      SHX4_2 = 3500
                      SHX5_2 = "~r~Do not change weapons to equip quicker! Your weapons have been holstered for 3.5s"
                      SHX3_2(SHX4_2, SHX5_2)
                    end
                  end
                else
                  SHX2_2 = CMG
                  SHX2_2 = SHX2_2.loadAnimDict
                  SHX3_2 = "reaction@intimidation@1h"
                  SHX2_2(SHX3_2)
                  SHX2_2 = TaskPlayAnim
                  SHX3_2 = SHX0_2
                  SHX4_2 = "reaction@intimidation@1h"
                  SHX5_2 = "outro"
                  SHX6_2 = 8.0
                  SHX7_2 = 2.0
                  SHX8_2 = 1700
                  SHX9_2 = 48
                  SHX10_2 = 10
                  SHX11_2 = false
                  SHX12_2 = false
                  SHX13_2 = false
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
                  SHX2_2 = RemoveAnimDict
                  SHX3_2 = "reaction@intimidation@1h"
                  SHX2_2(SHX3_2)
                  SHX2_2 = true
                  SHX0_1 = SHX2_2
                  SHX2_2 = CMG
                  SHX2_2 = SHX2_2.setWeapon
                  SHX3_2 = SHX0_2
                  SHX4_2 = GetHashKey
                  SHX5_2 = SHX3_1
                  SHX4_2 = SHX4_2(SHX5_2)
                  SHX5_2 = true
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
                  SHX2_2 = Citizen
                  SHX2_2 = SHX2_2.Wait
                  SHX3_2 = 1300
                  SHX2_2(SHX3_2)
                  SHX2_2 = CMG
                  SHX2_2 = SHX2_2.setWeapon
                  SHX3_2 = SHX0_2
                  SHX4_2 = -1569615261
                  SHX5_2 = true
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
                  SHX2_2 = Citizen
                  SHX2_2 = SHX2_2.Wait
                  SHX3_2 = 700
                  SHX2_2(SHX3_2)
                  SHX2_2 = StopAnimTask
                  SHX3_2 = SHX0_2
                  SHX4_2 = "reaction@intimidation@1h"
                  SHX5_2 = "outro"
                  SHX6_2 = 1.0
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
                  SHX2_2 = false
                  SHX0_1 = SHX2_2
                  SHX2_2 = nil
                  SHX3_1 = SHX2_2
                end
              end
            end
            SHX2_2 = SHX15_1
            SHX2_2()
          end
        end
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX17_1(SHX18_1)
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "d6e12cd653"
  SHX0_2(SHX1_2)
end
GetPurgeWeapons = SHX17_1
SHX17_1 = false
SHX18_1 = CMG
SHX18_1 = SHX18_1.registerCommand
SHX19_1 = "debugweapons"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX17_1
  SHX0_2 = not SHX0_2
  SHX17_1 = SHX0_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.notify
  SHX1_2 = "~g~Debug weapons now:"
  SHX2_2 = tostring
  SHX3_2 = SHX17_1
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX1_2 .. SHX2_2
  SHX0_2(SHX1_2)
end
SHX21_1 = false
SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX18_1 = CMG
function SHX19_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX3_2 = SetCurrentPedWeapon
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2 or SHX6_2
  if not SHX2_2 then
    SHX6_2 = false
  end
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX17_1
  if SHX3_2 then
    SHX3_2 = print
    SHX4_2 = "SetCurrentPedWeapon"
    SHX5_2 = SHX0_2
    SHX6_2 = SHX1_2
    SHX7_2 = SHX2_2
    SHX8_2 = "debug"
    SHX9_2 = dump
    SHX10_2 = debug
    SHX10_2 = SHX10_2.getinfo
    SHX11_2 = 2
    SHX10_2, SHX11_2 = SHX10_2(SHX11_2)
    SHX9_2, SHX10_2, SHX11_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  end
end
SHX18_1.setWeapon = SHX19_1
SHX18_1 = CMG
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX6_1 = SHX0_2
end
SHX18_1.setSwitchGunEnabled = SHX19_1
