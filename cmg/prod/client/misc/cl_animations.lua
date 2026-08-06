-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1
function SHX0_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = ClearPrints
  SHX2_2()
  SHX2_2 = BeginTextCommandPrint
  SHX3_2 = "STRING"
  SHX2_2(SHX3_2)
  SHX2_2 = AddTextComponentSubstringPlayerName
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = EndTextCommandPrint
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
end
DrawMissionText2 = SHX0_1
function SHX0_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = IsPedInAnyVehicle
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if not SHX2_2 then
    SHX2_2 = IsPedSwimming
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = IsPedShooting
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = IsPedClimbing
        SHX3_2 = SHX1_2
        SHX2_2 = SHX2_2(SHX3_2)
        if not SHX2_2 then
          if not SHX0_2 then
            SHX2_2 = IsPedCuffed
            SHX3_2 = SHX1_2
            SHX2_2 = SHX2_2(SHX3_2)
            if SHX2_2 then
              goto SHX_LABEL_82
            end
          end
          SHX2_2 = IsPedDiving
          SHX3_2 = SHX1_2
          SHX2_2 = SHX2_2(SHX3_2)
          if not SHX2_2 then
            SHX2_2 = IsPedFalling
            SHX3_2 = SHX1_2
            SHX2_2 = SHX2_2(SHX3_2)
            if not SHX2_2 then
              SHX2_2 = IsPedJumping
              SHX3_2 = SHX1_2
              SHX2_2 = SHX2_2(SHX3_2)
              if not SHX2_2 then
                SHX2_2 = IsPedJumpingOutOfVehicle
                SHX3_2 = SHX1_2
                SHX2_2 = SHX2_2(SHX3_2)
                if not SHX2_2 then
                  SHX2_2 = IsPedOnFoot
                  SHX3_2 = SHX1_2
                  SHX2_2 = SHX2_2(SHX3_2)
                  if SHX2_2 then
                    SHX2_2 = IsPedRunning
                    SHX3_2 = SHX1_2
                    SHX2_2 = SHX2_2(SHX3_2)
                    if not SHX2_2 then
                      SHX2_2 = IsPedUsingAnyScenario
                      SHX3_2 = SHX1_2
                      SHX2_2 = SHX2_2(SHX3_2)
                      if not SHX2_2 then
                        SHX2_2 = IsPedInParachuteFreeFall
                        SHX3_2 = SHX1_2
                        SHX2_2 = SHX2_2(SHX3_2)
                        if not SHX2_2 then
                          SHX2_2 = CMG
                          SHX2_2 = SHX2_2.isPlayerNearPrison
                          SHX2_2 = SHX2_2()
                          if not SHX2_2 or SHX0_2 then
                            SHX2_2 = true
                            return SHX2_2
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  else
    -- [FIX IF ERROR] Move ::SHX_LABEL_82:: outside nested blocks until all 'goto SHX_LABEL_82' can see it
    ::SHX_LABEL_82::
    SHX2_2 = false
    return SHX2_2
  end
end
SHX1_1 = RegisterCommand
SHX2_1 = "anim"
function SHX3_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientUserId
  SHX2_2 = SHX2_2()
  if 1 ~= SHX2_2 then
    return
  end
  SHX2_2 = SHX1_2[1]
  SHX3_2 = SHX1_2[2]
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadAnimDict
  SHX6_2 = SHX2_2
  SHX5_2(SHX6_2)
  SHX5_2 = TaskPlayAnim
  SHX6_2 = SHX4_2
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2
  SHX9_2 = 3.0
  SHX10_2 = 1.0
  SHX11_2 = -1
  SHX12_2 = 1
  SHX13_2 = 0
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterCommand
SHX2_1 = "bag3"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.canAnim
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = IsEntityDead
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = SHX0_1
        SHX1_2 = SHX1_2()
        if SHX1_2 then
          SHX1_2 = GiveWeaponToPed
          SHX2_2 = SHX0_2
          SHX3_2 = 2294779575
          SHX4_2 = 1
          SHX5_2 = false
          SHX6_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        end
      end
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterCommand
SHX2_1 = "bag2"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.canAnim
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = IsEntityDead
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = SHX0_1
        SHX1_2 = SHX1_2()
        if SHX1_2 then
          SHX1_2 = GiveWeaponToPed
          SHX2_2 = SHX0_2
          SHX3_2 = 28811031
          SHX4_2 = 1
          SHX5_2 = false
          SHX6_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        end
      end
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = false
SHX2_1 = true
SHX3_1 = false
SHX4_1 = false
SHX5_1 = false
SHX6_1 = CMG
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  return SHX0_2
end
SHX6_1.isSurrendering = SHX7_1
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = GetPlayerPed
  SHX1_2 = -1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.canAnim
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = SHX3_1
      if not SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.isPlayerNearPrison
        SHX1_2 = SHX1_2()
        if not SHX1_2 then
          goto SHX_LABEL_223
        end
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.isHandcuffed
        SHX1_2 = SHX1_2()
        if SHX1_2 then
          goto SHX_LABEL_223
        end
      end
    end
    SHX1_2 = IsEntityDead
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = SHX0_1
      SHX2_2 = true
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.loadAnimDict
        SHX2_2 = "random@arrests"
        SHX1_2(SHX2_2)
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.loadAnimDict
        SHX2_2 = "random@arrests@busted"
        SHX1_2(SHX2_2)
        SHX1_2 = IsEntityPlayingAnim
        SHX2_2 = SHX0_2
        SHX3_2 = "random@arrests@busted"
        SHX4_2 = "idle_a"
        SHX5_2 = 3
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        if SHX1_2 then
          SHX1_2 = true
          SHX5_1 = SHX1_2
          SHX1_2 = false
          SHX1_1 = SHX1_2
          SHX1_2 = TaskPlayAnim
          SHX2_2 = SHX0_2
          SHX3_2 = "random@arrests@busted"
          SHX4_2 = "exit"
          SHX5_2 = 8.0
          SHX6_2 = 1.0
          SHX7_2 = -1
          SHX8_2 = 2
          SHX9_2 = 0
          SHX10_2 = false
          SHX11_2 = false
          SHX12_2 = false
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          SHX1_2 = Wait
          SHX2_2 = 3000
          SHX1_2(SHX2_2)
          SHX1_2 = TaskPlayAnim
          SHX2_2 = SHX0_2
          SHX3_2 = "random@arrests"
          SHX4_2 = "kneeling_arrest_get_up"
          SHX5_2 = 8.0
          SHX6_2 = 1.0
          SHX7_2 = -1
          SHX8_2 = 128
          SHX9_2 = 0
          SHX10_2 = false
          SHX11_2 = false
          SHX12_2 = false
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          SHX1_2 = Wait
          SHX2_2 = 2000
          SHX1_2(SHX2_2)
          SHX1_2 = false
          SHX3_1 = SHX1_2
          SHX1_2 = false
          SHX5_1 = SHX1_2
          SHX1_2 = SHX4_1
          if SHX1_2 then
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.setCanAnim
            SHX2_2 = true
            SHX1_2(SHX2_2)
            SHX1_2 = false
            SHX4_1 = SHX1_2
          end
        else
          SHX1_2 = SHX4_1
          if not SHX1_2 then
            SHX1_2 = true
            SHX4_1 = SHX1_2
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.setCanAnim
            SHX2_2 = false
            SHX1_2(SHX2_2)
          end
          SHX1_2 = true
          SHX1_1 = SHX1_2
          SHX1_2 = TaskPlayAnim
          SHX2_2 = SHX0_2
          SHX3_2 = "random@arrests"
          SHX4_2 = "idle_2_hands_up"
          SHX5_2 = 8.0
          SHX6_2 = 1.0
          SHX7_2 = -1
          SHX8_2 = 2
          SHX9_2 = 0
          SHX10_2 = false
          SHX11_2 = false
          SHX12_2 = false
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          SHX1_2 = Wait
          SHX2_2 = 4000
          SHX1_2(SHX2_2)
          SHX1_2 = TaskPlayAnim
          SHX2_2 = SHX0_2
          SHX3_2 = "random@arrests"
          SHX4_2 = "kneeling_arrest_idle"
          SHX5_2 = 8.0
          SHX6_2 = 1.0
          SHX7_2 = -1
          SHX8_2 = 2
          SHX9_2 = 0
          SHX10_2 = false
          SHX11_2 = false
          SHX12_2 = false
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          SHX1_2 = Wait
          SHX2_2 = 500
          SHX1_2(SHX2_2)
          SHX1_2 = TaskPlayAnim
          SHX2_2 = SHX0_2
          SHX3_2 = "random@arrests@busted"
          SHX4_2 = "enter"
          SHX5_2 = 8.0
          SHX6_2 = 1.0
          SHX7_2 = -1
          SHX8_2 = 2
          SHX9_2 = 0
          SHX10_2 = false
          SHX11_2 = false
          SHX12_2 = false
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          SHX1_2 = true
          SHX3_1 = SHX1_2
          SHX1_2 = Wait
          SHX2_2 = 1000
          SHX1_2(SHX2_2)
          SHX1_2 = TaskPlayAnim
          SHX2_2 = SHX0_2
          SHX3_2 = "random@arrests@busted"
          SHX4_2 = "idle_a"
          SHX5_2 = 8.0
          SHX6_2 = 1.0
          SHX7_2 = -1
          SHX8_2 = 9
          SHX9_2 = 0
          SHX10_2 = false
          SHX11_2 = false
          SHX12_2 = false
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          SHX1_2 = Wait
          SHX2_2 = 0
          SHX1_2(SHX2_2)
          while true do
            SHX1_2 = IsEntityPlayingAnim
            SHX2_2 = SHX0_2
            SHX3_2 = "random@arrests@busted"
            SHX4_2 = "idle_a"
            SHX5_2 = 3
            SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
            if not SHX1_2 then
              break
            end
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.isNewPlayer
            SHX1_2 = SHX1_2()
            if SHX1_2 then
              SHX1_2 = drawNativeNotification
              SHX2_2 = "Run /k to exit from knees."
              SHX1_2(SHX2_2)
            end
            SHX1_2 = Citizen
            SHX1_2 = SHX1_2.Wait
            SHX2_2 = 0
            SHX1_2(SHX2_2)
          end
          SHX1_2 = false
          SHX1_1 = SHX1_2
          SHX1_2 = false
          SHX3_1 = SHX1_2
          SHX1_2 = SHX4_1
          if SHX1_2 then
            SHX1_2 = SHX5_1
            if not SHX1_2 then
              SHX1_2 = tCMG
              SHX1_2 = SHX1_2.setCanAnim
              SHX2_2 = true
              SHX1_2(SHX2_2)
              SHX1_2 = false
              SHX4_1 = SHX1_2
            end
          end
        end
        SHX1_2 = RemoveAnimDict
        SHX2_2 = "random@arrests"
        SHX1_2(SHX2_2)
        SHX1_2 = RemoveAnimDict
        SHX2_2 = "random@arrests@busted"
        SHX1_2(SHX2_2)
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_223:: outside nested blocks until all 'goto SHX_LABEL_223' can see it
  ::SHX_LABEL_223::
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX3_1
  if not SHX1_2 then
    SHX1_2 = IsEntityPlayingAnim
    SHX2_2 = SHX0_2
    SHX3_2 = "missminuteman_1ig_2"
    SHX4_2 = "handsup_enter"
    SHX5_2 = 3
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    if not SHX1_2 then
      SHX1_2 = IsEntityPlayingAnim
      SHX2_2 = SHX0_2
      SHX3_2 = "random@arrests"
      SHX4_2 = "idle_2_hands_up"
      SHX5_2 = 3
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if not SHX1_2 then
        SHX1_2 = IsEntityPlayingAnim
        SHX2_2 = SHX0_2
        SHX3_2 = "random@arrests@busted"
        SHX4_2 = "idle_a"
        SHX5_2 = 3
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        if not SHX1_2 then
          goto SHX_LABEL_33
        end
      end
    end
  end
  SHX1_2 = true
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_33:: outside nested blocks until all 'goto SHX_LABEL_33' can see it
  ::SHX_LABEL_33::
  SHX1_2 = false
  return SHX1_2
end
function SHX8_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX6_2 = SHX5_2 / 100
  SHX6_2 = SHX2_2 * SHX6_2
  SHX7_2 = SHX5_2 / 100
  SHX7_2 = SHX2_2 * SHX7_2
  SHX7_2 = SHX7_2 / 2
  SHX7_2 = SHX0_2 - SHX7_2
  SHX8_2 = SHX2_2 / 2
  SHX7_2 = SHX7_2 - SHX8_2
  SHX8_2 = DrawRect
  SHX9_2 = SHX7_2 + SHX6_2
  SHX10_2 = SHX1_2
  SHX11_2 = SHX6_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2[1]
  SHX14_2 = SHX4_2[2]
  SHX15_2 = SHX4_2[3]
  SHX16_2 = SHX4_2[4]
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
end
SHX9_1 = tCMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  while true do
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2 - SHX0_2
    SHX2_2 = 5000
    if not (SHX1_2 <= SHX2_2) then
      break
    end
    SHX1_2 = SHX7_1
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      break
    end
    SHX1_2 = SHX8_1
    SHX2_2 = 0.475
    SHX3_2 = 0.8
    SHX4_2 = 0.138
    SHX5_2 = 0.012750000000000001
    SHX6_2 = {}
    SHX7_2 = 255
    SHX8_2 = 47
    SHX9_2 = 27
    SHX10_2 = 255
    SHX6_2[1] = SHX7_2
    SHX6_2[2] = SHX8_2
    SHX6_2[3] = SHX9_2
    SHX6_2[4] = SHX10_2
    SHX7_2 = GetGameTimer
    SHX7_2 = SHX7_2()
    SHX7_2 = SHX7_2 - SHX0_2
    SHX7_2 = SHX7_2 / 5000
    SHX7_2 = SHX7_2 * 100
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2 - SHX0_2
  SHX2_2 = 5000
  if SHX1_2 > SHX2_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = false
  return SHX1_2
end
SHX9_1.isPlayerSurrendered = SHX10_1
SHX9_1 = tCMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  return SHX0_2()
end
SHX9_1.isPlayerSurrenderedNoProgressBar = SHX10_1
SHX9_1 = RegisterNetEvent
SHX10_1 = "617311deed"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadAnimDict
  SHX1_2 = "combat@aim_variations@arrest"
  SHX0_2(SHX1_2)
  SHX0_2 = TaskPlayAnim
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = "combat@aim_variations@arrest"
  SHX3_2 = "cop_med_arrest_01"
  SHX4_2 = 8.0
  SHX5_2 = -8
  SHX6_2 = 5000
  SHX7_2 = 2
  SHX8_2 = 0
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_2 = RemoveAnimDict
  SHX1_2 = "combat@aim_variations@arrest"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.startCircularProgressBar
  SHX1_2 = ""
  SHX2_2 = 5000
  SHX3_2 = nil
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "750744bff8"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = StopAnimTask
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = "combat@aim_variations@arrest"
  SHX3_2 = "cop_med_arrest_01"
  SHX4_2 = 1.0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.stopCircularProgressBar
  SHX0_2()
end
SHX9_1(SHX10_1, SHX11_1)
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = DisableControlAction
    SHX1_2 = 1
    SHX2_2 = 140
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 1
    SHX2_2 = 141
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 1
    SHX2_2 = 142
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 21
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
  SHX0_2 = DisableControlAction
  SHX1_2 = 2
  SHX2_2 = 36
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX10_1 = CMG
SHX10_1 = SHX10_1.createThreadOnTick
SHX11_1 = SHX9_1
SHX12_1 = "Surrendering"
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterCommand
SHX11_1 = "k"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = SHX6_1
    SHX0_2()
  end
end
SHX13_1 = false
SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX10_1 = RegisterCommand
SHX11_1 = "surrender"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = SHX6_1
    SHX0_2()
  end
end
SHX13_1 = false
SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX10_1 = false
SHX11_1 = "prop_parking_wand_01"
SHX12_1 = false
SHX13_1 = "hei_heist_sh_bong_01"
SHX14_1 = false
SHX15_1 = "prop_amb_phone"
SHX16_1 = RegisterCommand
SHX17_1 = "picture"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetHashKey
  SHX2_2 = SHX15_1
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = RequestModel
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = GetOffsetFromEntityInWorldCoords
  SHX3_2 = GetPlayerPed
  SHX4_2 = PlayerId
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX4_2()
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX6_2 = -5.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "picture_object"
  SHX3_2(SHX4_2)
  SHX3_2 = CreateObject
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = "amb@world_human_mobile_film_shocking@male@enter"
  SHX5_2 = "amb@world_human_mobile_film_shocking@male@base"
  SHX6_2 = "amb@world_human_mobile_film_shocking@male@exit"
  SHX7_2 = "core"
  SHX8_2 = "ent_anim_paparazzi_flash"
  SHX9_2 = DoesEntityExist
  SHX10_2 = SHX0_2
  SHX9_2 = SHX9_2(SHX10_2)
  if SHX9_2 then
    SHX9_2 = IsEntityDead
    SHX10_2 = SHX0_2
    SHX9_2 = SHX9_2(SHX10_2)
    if not SHX9_2 then
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.loadAnimDict
      SHX10_2 = SHX4_2
      SHX9_2(SHX10_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.loadAnimDict
      SHX10_2 = SHX5_2
      SHX9_2(SHX10_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.loadAnimDict
      SHX10_2 = SHX6_2
      SHX9_2(SHX10_2)
      SHX9_2 = RequestNamedPtfxAsset
      SHX10_2 = SHX7_2
      SHX9_2(SHX10_2)
      SHX9_2 = SHX14_1
      if SHX9_2 then
        SHX9_2 = TaskPlayAnim
        SHX10_2 = SHX0_2
        SHX11_2 = SHX6_2
        SHX12_2 = "exit"
        SHX13_2 = 8.0
        SHX14_2 = 1.0
        SHX15_2 = -1
        SHX16_2 = 50
        SHX17_2 = 0
        SHX18_2 = false
        SHX19_2 = false
        SHX20_2 = false
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
        SHX9_2 = Wait
        SHX10_2 = 1840
        SHX9_2(SHX10_2)
        SHX9_2 = DetachEntity
        SHX10_2 = SHX3_2
        SHX11_2 = false
        SHX12_2 = false
        SHX9_2(SHX10_2, SHX11_2, SHX12_2)
        SHX9_2 = DeleteEntity
        SHX10_2 = SHX3_2
        SHX9_2(SHX10_2)
        SHX9_2 = Wait
        SHX10_2 = 750
        SHX9_2(SHX10_2)
        SHX9_2 = ClearPedSecondaryTask
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.getPlayerPed
        SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX10_2()
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
        SHX9_2 = false
        SHX14_1 = SHX9_2
      else
        SHX9_2 = Wait
        SHX10_2 = 500
        SHX9_2(SHX10_2)
        SHX9_2 = SetNetworkIdExistsOnAllMachines
        SHX10_2 = SHX3_2
        SHX11_2 = true
        SHX9_2(SHX10_2, SHX11_2)
        SHX9_2 = NetworkUseHighPrecisionBlending
        SHX10_2 = SHX3_2
        SHX11_2 = true
        SHX9_2(SHX10_2, SHX11_2)
        SHX9_2 = SetNetworkIdCanMigrate
        SHX10_2 = SHX3_2
        SHX11_2 = false
        SHX9_2(SHX10_2, SHX11_2)
        SHX9_2 = TaskPlayAnim
        SHX10_2 = SHX0_2
        SHX11_2 = SHX4_2
        SHX12_2 = "enter"
        SHX13_2 = 8.0
        SHX14_2 = 1.0
        SHX15_2 = -1
        SHX16_2 = 50
        SHX17_2 = 0
        SHX18_2 = false
        SHX19_2 = false
        SHX20_2 = false
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
        SHX9_2 = Wait
        SHX10_2 = 1260
        SHX9_2(SHX10_2)
        SHX9_2 = AttachEntityToEntity
        SHX10_2 = SHX3_2
        SHX11_2 = GetPlayerPed
        SHX12_2 = PlayerId
        SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX12_2()
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
        SHX12_2 = GetPedBoneIndex
        SHX13_2 = GetPlayerPed
        SHX14_2 = PlayerId
        SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX14_2()
        SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
        SHX14_2 = 28422
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
        SHX13_2 = -0.005
        SHX14_2 = 0.0
        SHX15_2 = 0.0
        SHX16_2 = 360.0
        SHX17_2 = 360.0
        SHX18_2 = 0.0
        SHX19_2 = true
        SHX20_2 = true
        SHX21_2 = false
        SHX22_2 = true
        SHX23_2 = 0
        SHX24_2 = true
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
        SHX9_2 = tCMG
        SHX9_2 = SHX9_2.notify
        SHX10_2 = "Press ~r~[E]~w~ to take a picture!"
        SHX9_2(SHX10_2)
        SHX9_2 = true
        SHX14_1 = SHX9_2
      end
    end
  end
  SHX9_2 = SetModelAsNoLongerNeeded
  SHX10_2 = SHX1_2
  SHX9_2(SHX10_2)
  while true do
    SHX9_2 = SHX14_1
    if not SHX9_2 then
      break
    end
    SHX9_2 = Wait
    SHX10_2 = 0
    SHX9_2(SHX10_2)
    SHX9_2 = IsControlJustPressed
    SHX10_2 = 0
    SHX11_2 = 38
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    if SHX9_2 then
      SHX9_2 = tCMG
      SHX9_2 = SHX9_2.notify
      SHX10_2 = "Click Click"
      SHX9_2(SHX10_2)
      SHX9_2 = Wait
      SHX10_2 = 500
      SHX9_2(SHX10_2)
      SHX9_2 = UseParticleFxAsset
      SHX10_2 = SHX7_2
      SHX9_2(SHX10_2)
      SHX9_2 = StartParticleFxNonLoopedOnEntity
      SHX10_2 = SHX8_2
      SHX11_2 = SHX3_2
      SHX12_2 = 0.0
      SHX13_2 = 0.1
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 0.0
      SHX18_2 = 2.0
      SHX19_2 = false
      SHX20_2 = false
      SHX21_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    end
  end
  SHX9_2 = RemoveNamedPtfxAsset
  SHX10_2 = SHX7_2
  SHX9_2(SHX10_2)
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "bong"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX0_2 = "anim@safehouse@bong"
  SHX1_2 = "bong_stage1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = GetHashKey
  SHX4_2 = SHX13_1
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = RequestModel
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = GetOffsetFromEntityInWorldCoords
  SHX5_2 = GetPlayerPed
  SHX6_2 = PlayerId
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX6_2()
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = -5.0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.requestEntitySpawn
  SHX6_2 = "bong_object"
  SHX5_2(SHX6_2)
  SHX5_2 = CreateObject
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX4_2.z
  SHX10_2 = true
  SHX11_2 = true
  SHX12_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = SetModelAsNoLongerNeeded
  SHX7_2 = SHX3_2
  SHX6_2(SHX7_2)
  SHX6_2 = DoesEntityExist
  SHX7_2 = SHX2_2
  SHX6_2 = SHX6_2(SHX7_2)
  if SHX6_2 then
    SHX6_2 = IsEntityDead
    SHX7_2 = SHX2_2
    SHX6_2 = SHX6_2(SHX7_2)
    if not SHX6_2 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.loadAnimDict
      SHX7_2 = SHX0_2
      SHX6_2(SHX7_2)
      SHX6_2 = SHX12_1
      if SHX6_2 then
        SHX6_2 = Wait
        SHX7_2 = 100
        SHX6_2(SHX7_2)
        SHX6_2 = ClearPedSecondaryTask
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.getPlayerPed
        SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX7_2()
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
        SHX6_2 = DetachEntity
        SHX7_2 = SHX5_2
        SHX8_2 = false
        SHX9_2 = false
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DeleteEntity
        SHX7_2 = SHX5_2
        SHX6_2(SHX7_2)
        SHX6_2 = false
        SHX12_1 = SHX6_2
      else
        SHX6_2 = Wait
        SHX7_2 = 500
        SHX6_2(SHX7_2)
        SHX6_2 = SetNetworkIdExistsOnAllMachines
        SHX7_2 = SHX5_2
        SHX8_2 = true
        SHX6_2(SHX7_2, SHX8_2)
        SHX6_2 = NetworkUseHighPrecisionBlending
        SHX7_2 = SHX5_2
        SHX8_2 = true
        SHX6_2(SHX7_2, SHX8_2)
        SHX6_2 = SetNetworkIdCanMigrate
        SHX7_2 = SHX5_2
        SHX8_2 = false
        SHX6_2(SHX7_2, SHX8_2)
        SHX6_2 = AttachEntityToEntity
        SHX7_2 = SHX5_2
        SHX8_2 = GetPlayerPed
        SHX9_2 = PlayerId
        SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX9_2()
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
        SHX9_2 = GetPedBoneIndex
        SHX10_2 = GetPlayerPed
        SHX11_2 = PlayerId
        SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX11_2()
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
        SHX11_2 = 18905
        SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
        SHX10_2 = 0.1
        SHX11_2 = -0.25
        SHX12_2 = 0.0
        SHX13_2 = 95.0
        SHX14_2 = 190.0
        SHX15_2 = 180.0
        SHX16_2 = true
        SHX17_2 = true
        SHX18_2 = false
        SHX19_2 = true
        SHX20_2 = 0
        SHX21_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
        SHX6_2 = Wait
        SHX7_2 = 120
        SHX6_2(SHX7_2)
        SHX6_2 = tCMG
        SHX6_2 = SHX6_2.notify
        SHX7_2 = "Press ~r~[E]~w~ to take a toke!"
        SHX6_2(SHX7_2)
        SHX6_2 = true
        SHX12_1 = SHX6_2
      end
    end
  end
  while true do
    SHX6_2 = SHX12_1
    if not SHX6_2 then
      break
    end
    SHX6_2 = Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
    SHX6_2 = GetEntityCoords
    SHX7_2 = SHX2_2
    SHX8_2 = true
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = GetEntityHeading
    SHX8_2 = SHX2_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = IsControlJustPressed
    SHX9_2 = 0
    SHX10_2 = 38
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX8_2 then
      SHX8_2 = TaskPlayAnimAdvanced
      SHX9_2 = SHX2_2
      SHX10_2 = SHX0_2
      SHX11_2 = SHX1_2
      SHX12_2 = SHX6_2.x
      SHX13_2 = SHX6_2.y
      SHX14_2 = SHX6_2.z
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = SHX7_2
      SHX18_2 = 8.0
      SHX19_2 = 1.0
      SHX20_2 = 4000
      SHX21_2 = 49
      SHX22_2 = 0.25
      SHX23_2 = 0
      SHX24_2 = 0
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      SHX8_2 = Wait
      SHX9_2 = 100
      SHX8_2(SHX9_2)
      SHX8_2 = tCMG
      SHX8_2 = SHX8_2.notify
      SHX9_2 = "You take a huge rip!"
      SHX8_2(SHX9_2)
      SHX8_2 = Wait
      SHX9_2 = 7250
      SHX8_2(SHX9_2)
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "ma"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX0_2 = "amb@world_human_car_park_attendant@male@base"
  SHX1_2 = "base"
  SHX2_2 = "amb@world_human_drinking@beer@male@exit"
  SHX3_2 = GetHashKey
  SHX4_2 = SHX11_1
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = RequestModel
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = GetOffsetFromEntityInWorldCoords
  SHX6_2 = GetPlayerPed
  SHX7_2 = PlayerId
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX7_2()
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = -5.0
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.requestEntitySpawn
  SHX7_2 = "ma_wand_object"
  SHX6_2(SHX7_2)
  SHX6_2 = CreateObject
  SHX7_2 = SHX3_2
  SHX8_2 = SHX5_2.x
  SHX9_2 = SHX5_2.y
  SHX10_2 = SHX5_2.z
  SHX11_2 = true
  SHX12_2 = true
  SHX13_2 = true
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX7_2 = DoesEntityExist
  SHX8_2 = SHX4_2
  SHX7_2 = SHX7_2(SHX8_2)
  if SHX7_2 then
    SHX7_2 = IsEntityDead
    SHX8_2 = SHX4_2
    SHX7_2 = SHX7_2(SHX8_2)
    if not SHX7_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.loadAnimDict
      SHX8_2 = SHX0_2
      SHX7_2(SHX8_2)
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.loadAnimDict
      SHX8_2 = SHX2_2
      SHX7_2(SHX8_2)
      SHX7_2 = SHX10_1
      if SHX7_2 then
        SHX7_2 = Wait
        SHX8_2 = 100
        SHX7_2(SHX8_2)
        SHX7_2 = ClearPedSecondaryTask
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.getPlayerPed
        SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX8_2()
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX7_2 = DetachEntity
        SHX8_2 = SHX6_2
        SHX9_2 = false
        SHX10_2 = false
        SHX7_2(SHX8_2, SHX9_2, SHX10_2)
        SHX7_2 = DeleteEntity
        SHX8_2 = SHX6_2
        SHX7_2(SHX8_2)
        SHX7_2 = false
        SHX10_1 = SHX7_2
      else
        SHX7_2 = Wait
        SHX8_2 = 500
        SHX7_2(SHX8_2)
        SHX7_2 = AttachEntityToEntity
        SHX8_2 = SHX6_2
        SHX9_2 = GetPlayerPed
        SHX10_2 = PlayerId
        SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX10_2()
        SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX10_2 = GetPedBoneIndex
        SHX11_2 = GetPlayerPed
        SHX12_2 = PlayerId
        SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX12_2()
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX12_2 = 28422
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX11_2 = -0.005
        SHX12_2 = 0.0
        SHX13_2 = 0.0
        SHX14_2 = 360.0
        SHX15_2 = 360.0
        SHX16_2 = 0.0
        SHX17_2 = true
        SHX18_2 = true
        SHX19_2 = false
        SHX20_2 = true
        SHX21_2 = 0
        SHX22_2 = true
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX7_2 = Wait
        SHX8_2 = 120
        SHX7_2(SHX8_2)
        SHX7_2 = tCMG
        SHX7_2 = SHX7_2.notify
        SHX8_2 = "Press ~r~[E]~w~ to wave the wand."
        SHX7_2(SHX8_2)
        SHX7_2 = true
        SHX10_1 = SHX7_2
      end
    end
  end
  SHX7_2 = SetModelAsNoLongerNeeded
  SHX8_2 = SHX3_2
  SHX7_2(SHX8_2)
  while true do
    SHX7_2 = SHX10_1
    if not SHX7_2 then
      break
    end
    SHX7_2 = Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
    SHX7_2 = {}
    SHX8_2 = "Nothing to see here, lets move along."
    SHX9_2 = "Keep it moving!"
    SHX10_2 = "Ugh, why did I pick traffic control.."
    SHX11_2 = "Lets go already!"
    SHX12_2 = "Will yinz hurry up!!"
    SHX7_2[1] = SHX8_2
    SHX7_2[2] = SHX9_2
    SHX7_2[3] = SHX10_2
    SHX7_2[4] = SHX11_2
    SHX7_2[5] = SHX12_2
    SHX8_2 = math
    SHX8_2 = SHX8_2.random
    SHX9_2 = 1
    SHX10_2 = 5
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX9_2 = IsControlJustPressed
    SHX10_2 = 0
    SHX11_2 = 38
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    if SHX9_2 then
      SHX9_2 = TaskPlayAnim
      SHX10_2 = SHX4_2
      SHX11_2 = SHX0_2
      SHX12_2 = SHX1_2
      SHX13_2 = 8.0
      SHX14_2 = 1.0
      SHX15_2 = 5000
      SHX16_2 = 49
      SHX17_2 = 0
      SHX18_2 = false
      SHX19_2 = false
      SHX20_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX9_2 = Wait
      SHX10_2 = 100
      SHX9_2(SHX10_2)
      SHX9_2 = tCMG
      SHX9_2 = SHX9_2.notify
      SHX10_2 = SHX7_2[SHX8_2]
      SHX9_2(SHX10_2)
    end
    SHX9_2 = IsEntityPlayingAnim
    SHX10_2 = PlayerPedId
    SHX10_2 = SHX10_2()
    SHX11_2 = "missminuteman_1ig_2"
    SHX12_2 = "handsup_enter"
    SHX13_2 = 3
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    if SHX9_2 then
      SHX9_2 = DeleteEntity
      SHX10_2 = SHX6_2
      SHX9_2(SHX10_2)
      break
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance1"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@black_madonna_entourage@"
  SHX1_2 = "li_dance_facedj_11_v1_male^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance2"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@black_madonna_entourage@"
  SHX1_2 = "hi_dance_facedj_09_v2_male^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance3"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@black_madonna_entourage@"
  SHX1_2 = "li_dance_facedj_15_v2_male^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance4"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  SHX1_2 = "mi_dance_prop_15_v1_male^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance5"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@djs@dixon@"
  SHX1_2 = "dixn_dance_a_dixon"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance6"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@djs@solomun@"
  SHX1_2 = "sol_trans_out_to_rt_a_sol"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance7"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v1_female^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance8"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v1_female^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance9"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v1_female^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance10"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v1_female^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance11"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v1_female^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance12"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v1_female^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance13"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v1_male^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance14"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v1_male^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance15"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v1_male^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance16"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v1_male^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance17"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v1_male^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance18"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v1_male^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance19"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v2_female^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance20"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v2_female^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance21"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v2_female^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance22"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v2_female^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance23"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v2_female^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance24"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v2_female^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance25"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v2_male^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance26"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v2_male^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance27"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v2_male^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance28"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v2_male^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance29"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v2_male^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance30"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_09_v2_male^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance31"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v1_female^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance32"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v1_female^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance33"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v1_female^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance34"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v1_female^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance35"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v1_female^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance36"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v1_female^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance37"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v1_male^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance38"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v1_male^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance39"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v1_male^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance40"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v1_male^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance41"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v1_male^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance42"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v1_male^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance43"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v2_female^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance44"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v2_female^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance45"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v2_female^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance46"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v2_female^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance47"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v2_female^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance48"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v2_female^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance49"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v2_male^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance50"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v2_male^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance51"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v2_male^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance52"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v2_male^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance53"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v2_male^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance54"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "hi_dance_facedj_11_v2_male^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance55"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v1_female^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance56"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v1_female^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance57"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v1_female^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance58"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v1_female^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance59"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v1_female^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance60"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v1_female^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance61"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v1_male^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance62"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v1_male^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance63"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v1_male^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance64"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v1_male^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance65"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v1_male^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance66"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v1_male^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance67"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v2_female^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance68"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v2_female^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance69"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v2_female^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance70"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v2_female^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance71"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v2_female^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance72"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  SHX1_2 = "mi_dance_facedj_09_v2_female^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance73"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  SHX1_2 = "hi_dance_facedj_09_v1_female^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance74"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  SHX1_2 = "hi_dance_facedj_09_v1_female^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance75"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  SHX1_2 = "hi_dance_facedj_09_v1_female^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance74"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  SHX1_2 = "hi_dance_facedj_09_v1_female^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance75"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  SHX1_2 = "hi_dance_facedj_09_v1_female^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance76"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  SHX1_2 = "hi_dance_facedj_09_v1_female^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance77"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  SHX1_2 = "trans_dance_crowd_li_to_hi_09_v1_male^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance78"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  SHX1_2 = "trans_dance_crowd_li_to_hi_09_v1_male^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance79"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  SHX1_2 = "trans_dance_crowd_li_to_hi_09_v1_male^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance80"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  SHX1_2 = "trans_dance_crowd_li_to_hi_09_v1_male^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance81"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  SHX1_2 = "trans_dance_crowd_li_to_hi_09_v1_male^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance82"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  SHX1_2 = "trans_dance_crowd_li_to_hi_09_v1_male^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance83"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  SHX1_2 = "trans_dance_crowd_mi_to_hi_09_v1_male^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance84"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  SHX1_2 = "trans_dance_crowd_mi_to_hi_09_v1_male^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance85"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  SHX1_2 = "trans_dance_crowd_mi_to_hi_09_v1_male^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance86"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  SHX1_2 = "trans_dance_crowd_mi_to_hi_09_v1_male^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance87"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  SHX1_2 = "trans_dance_crowd_mi_to_hi_09_v1_male^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance88"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  SHX1_2 = "trans_dance_crowd_mi_to_hi_09_v1_male^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance89"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  SHX1_2 = "hi_dance_prop_09_v1_female^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance90"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  SHX1_2 = "hi_dance_prop_09_v1_female^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance91"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  SHX1_2 = "hi_dance_prop_09_v1_female^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance92"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  SHX1_2 = "hi_dance_prop_09_v1_female^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance93"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  SHX1_2 = "hi_dance_prop_09_v1_female^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance94"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  SHX1_2 = "hi_dance_prop_09_v1_female^6"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance95"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  SHX1_2 = "hi_dance_prop_09_v1_male^1"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance96"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  SHX1_2 = "hi_dance_prop_09_v1_male^2"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance97"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  SHX1_2 = "hi_dance_prop_09_v1_male^3"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance98"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  SHX1_2 = "hi_dance_prop_09_v1_male^4"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance99"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  SHX1_2 = "hi_dance_prop_09_v1_male^5"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterCommand
SHX17_1 = "dance100"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = ""
  SHX1_2 = ""
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = false
SHX17_1 = CMG
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX16_1
  return SHX0_2
end
SHX17_1.isBeingNhsDragged = SHX18_1
SHX17_1 = RegisterNetEvent
SHX18_1 = "d8597e7d17"
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = false
  SHX16_1 = SHX0_2
  SHX0_2 = ClearPedSecondaryTask
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2, SHX2_2, SHX3_2 = SHX1_2()
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DetachEntity
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = RegisterNetEvent
SHX18_1 = "bad02f5164"
function SHX19_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  SHX12_2 = "combat@drag_ped@" == SHX1_2
  SHX16_1 = SHX12_2
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.getPlayerPed
  SHX12_2 = SHX12_2()
  SHX13_2 = GetPlayerPed
  SHX14_2 = GetPlayerFromServerId
  SHX15_2 = SHX0_2
  SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX14_2(SHX15_2)
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
  SHX14_2 = RequestAnimDict
  SHX15_2 = SHX1_2
  SHX14_2(SHX15_2)
  while true do
    SHX14_2 = HasAnimDictLoaded
    SHX15_2 = SHX1_2
    SHX14_2 = SHX14_2(SHX15_2)
    if SHX14_2 then
      break
    end
    SHX14_2 = Citizen
    SHX14_2 = SHX14_2.Wait
    SHX15_2 = 10
    SHX14_2(SHX15_2)
  end
  if nil == SHX7_2 then
    SHX7_2 = 180.0
  end
  SHX14_2 = AttachEntityToEntity
  SHX15_2 = CMG
  SHX15_2 = SHX15_2.getPlayerPed
  SHX15_2 = SHX15_2()
  SHX16_2 = SHX13_2
  SHX17_2 = SHX11_2 or SHX17_2
  if not SHX11_2 then
    SHX17_2 = 0
  end
  SHX18_2 = SHX4_2
  SHX19_2 = SHX3_2
  SHX20_2 = SHX5_2
  SHX21_2 = 0.5
  SHX22_2 = 0.5
  SHX23_2 = SHX7_2
  SHX24_2 = false
  SHX25_2 = false
  SHX26_2 = false
  SHX27_2 = false
  SHX28_2 = 2
  SHX29_2 = false
  SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
  SHX14_2 = Wait
  SHX15_2 = 500
  SHX14_2(SHX15_2)
  if nil == SHX10_2 then
    SHX10_2 = 0
  end
  if 0 == SHX10_2 then
    SHX14_2 = DetachEntity
    SHX15_2 = CMG
    SHX15_2 = SHX15_2.getPlayerPed
    SHX15_2 = SHX15_2()
    SHX16_2 = true
    SHX17_2 = false
    SHX14_2(SHX15_2, SHX16_2, SHX17_2)
  end
  if nil == SHX8_2 then
    SHX8_2 = 0
  end
  SHX14_2 = TaskPlayAnim
  SHX15_2 = SHX12_2
  SHX16_2 = SHX1_2
  SHX17_2 = SHX2_2
  SHX18_2 = 8.0
  SHX19_2 = -8.0
  SHX20_2 = SHX6_2
  SHX21_2 = SHX8_2
  SHX22_2 = 0
  SHX23_2 = false
  SHX24_2 = false
  SHX25_2 = false
  SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
  SHX14_2 = RemoveAnimDict
  SHX15_2 = SHX1_2
  SHX14_2(SHX15_2)
  SHX14_2 = Citizen
  SHX14_2 = SHX14_2.Wait
  SHX15_2 = SHX6_2
  SHX14_2(SHX15_2)
  if "combat@drag_ped@" == SHX1_2 then
    SHX14_2 = false
    SHX16_1 = SHX14_2
  end
  SHX14_2 = DetachEntity
  SHX15_2 = CMG
  SHX15_2 = SHX15_2.getPlayerPed
  SHX15_2 = SHX15_2()
  SHX16_2 = true
  SHX17_2 = false
  SHX14_2(SHX15_2, SHX16_2, SHX17_2)
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = RegisterNetEvent
SHX18_1 = "72c704cb58"
function SHX19_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = RequestAnimDict
  SHX6_2 = SHX0_2
  SHX5_2(SHX6_2)
  while true do
    SHX5_2 = HasAnimDictLoaded
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 10
    SHX5_2(SHX6_2)
  end
  SHX5_2 = Wait
  SHX6_2 = 500
  SHX5_2(SHX6_2)
  if nil == SHX3_2 then
    SHX3_2 = 0
  end
  SHX5_2 = TaskPlayAnim
  SHX6_2 = SHX4_2
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = 8.0
  SHX10_2 = -8.0
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = 0
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX5_2 = RemoveAnimDict
  SHX6_2 = SHX0_2
  SHX5_2(SHX6_2)
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = RegisterCommand
SHX18_1 = "rope"
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "random@burial"
  SHX1_2 = "untie_ped"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.canAnim
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 then
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = "exit"
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = -1
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = ClearPedSecondaryTask
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
          else
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX3_2 = Wait
            SHX4_2 = 2000
            SHX3_2(SHX4_2)
            SHX3_2 = TaskPlayAnim
            SHX4_2 = SHX2_2
            SHX5_2 = SHX0_2
            SHX6_2 = SHX1_2
            SHX7_2 = 3.0
            SHX8_2 = 1.0
            SHX9_2 = 2000
            SHX10_2 = 1
            SHX11_2 = 0
            SHX12_2 = false
            SHX13_2 = false
            SHX14_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX3_2 = RemoveAnimDict
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 5000
  SHX3_2(SHX4_2)
end
SHX20_1 = false
SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX17_1 = RegisterNetEvent
SHX18_1 = "a72f22e19a"
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX0_2 = "mp_safehousebeer@"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = "p_whiskey_bottle_s"
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = table
  SHX3_2 = SHX3_2.unpack
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX4_2(SHX5_2)
  SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX6_2 = TaskPlayAnim
  SHX7_2 = SHX1_2
  SHX8_2 = SHX0_2
  SHX9_2 = "drink_2"
  SHX10_2 = 800.0
  SHX11_2 = 8.0
  SHX12_2 = -1
  SHX13_2 = 49
  SHX14_2 = 0
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX6_2 = Wait
  SHX7_2 = 1000
  SHX6_2(SHX7_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.requestEntitySpawn
  SHX7_2 = "drink_gin_object"
  SHX6_2(SHX7_2)
  SHX6_2 = CreateObject
  SHX7_2 = GetHashKey
  SHX8_2 = SHX2_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = SHX3_2
  SHX9_2 = SHX4_2
  SHX10_2 = SHX5_2 + 0.2
  SHX11_2 = true
  SHX12_2 = true
  SHX13_2 = true
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX7_2 = AttachEntityToEntity
  SHX8_2 = SHX6_2
  SHX9_2 = SHX1_2
  SHX10_2 = GetPedBoneIndex
  SHX11_2 = SHX1_2
  SHX12_2 = 28422
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 0.0
  SHX16_2 = 180.0
  SHX17_2 = true
  SHX18_2 = true
  SHX19_2 = false
  SHX20_2 = true
  SHX21_2 = 1
  SHX22_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX7_2 = Wait
  SHX8_2 = 5000
  SHX7_2(SHX8_2)
  SHX7_2 = TaskPlayAnim
  SHX8_2 = SHX1_2
  SHX9_2 = SHX0_2
  SHX10_2 = "exit"
  SHX11_2 = 8.0
  SHX12_2 = 1.0
  SHX13_2 = -1
  SHX14_2 = 49
  SHX15_2 = 0
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX7_2 = Wait
  SHX8_2 = 100
  SHX7_2(SHX8_2)
  SHX7_2 = RequestAnimSet
  SHX8_2 = "move_m@drunk@verydrunk"
  SHX7_2(SHX8_2)
  while true do
    SHX7_2 = HasAnimSetLoaded
    SHX8_2 = "move_m@drunk@verydrunk"
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      break
    end
    SHX7_2 = Citizen
    SHX7_2 = SHX7_2.Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
  end
  SHX7_2 = DoScreenFadeOut
  SHX8_2 = 1000
  SHX7_2(SHX8_2)
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.Wait
  SHX8_2 = 1000
  SHX7_2(SHX8_2)
  SHX7_2 = ClearPedTasksImmediately
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerPed
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX8_2()
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX7_2 = SetTimecycleModifier
  SHX8_2 = "spectator5"
  SHX7_2(SHX8_2)
  SHX7_2 = SetPedMotionBlur
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerPed
  SHX8_2 = SHX8_2()
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SetPedMovementClipset
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerPed
  SHX8_2 = SHX8_2()
  SHX9_2 = "move_m@drunk@verydrunk"
  SHX10_2 = 1.0
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = RemoveAnimSet
  SHX8_2 = "move_m@drunk@verydrunk"
  SHX7_2(SHX8_2)
  SHX7_2 = SetPedIsDrunk
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerPed
  SHX8_2 = SHX8_2()
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = DoScreenFadeIn
  SHX8_2 = 1000
  SHX7_2(SHX8_2)
  SHX7_2 = ClearPedSecondaryTask
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerPed
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX8_2()
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX7_2 = DeleteObject
  SHX8_2 = SHX6_2
  SHX7_2(SHX8_2)
  SHX7_2 = Wait
  SHX8_2 = 60000
  SHX7_2(SHX8_2)
  SHX7_2 = DoScreenFadeOut
  SHX8_2 = 1000
  SHX7_2(SHX8_2)
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.Wait
  SHX8_2 = 1000
  SHX7_2(SHX8_2)
  SHX7_2 = DoScreenFadeIn
  SHX8_2 = 1000
  SHX7_2(SHX8_2)
  SHX7_2 = ClearTimecycleModifier
  SHX7_2()
  SHX7_2 = ResetScenarioTypesEnabled
  SHX7_2()
  SHX7_2 = ResetPedMovementClipset
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerPed
  SHX8_2 = SHX8_2()
  SHX9_2 = 0
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SetPedIsDrunk
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerPed
  SHX8_2 = SHX8_2()
  SHX9_2 = false
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SetPedMotionBlur
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerPed
  SHX8_2 = SHX8_2()
  SHX9_2 = false
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = RemoveAnimDict
  SHX8_2 = SHX0_2
  SHX7_2(SHX8_2)
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = RegisterNetEvent
SHX18_1 = "6c304cd42b"
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX1_2 = "mp_safehousebeer@"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadAnimDict
  SHX5_2 = SHX1_2
  SHX4_2(SHX5_2)
  SHX4_2 = table
  SHX4_2 = SHX4_2.unpack
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX2_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX5_2(SHX6_2)
  SHX4_2, SHX5_2, SHX6_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX7_2 = TaskPlayAnim
  SHX8_2 = SHX2_2
  SHX9_2 = SHX1_2
  SHX10_2 = "drink_2"
  SHX11_2 = 800.0
  SHX12_2 = 8.0
  SHX13_2 = -1
  SHX14_2 = 49
  SHX15_2 = 0
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX7_2 = Wait
  SHX8_2 = 1000
  SHX7_2(SHX8_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.requestEntitySpawn
  SHX8_2 = "drink_can_object"
  SHX9_2 = GetHashKey
  SHX10_2 = SHX0_2
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX9_2(SHX10_2)
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX7_2 = CreateObject
  SHX8_2 = GetHashKey
  SHX9_2 = SHX3_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = SHX4_2
  SHX10_2 = SHX5_2
  SHX11_2 = SHX6_2 + 0.2
  SHX12_2 = true
  SHX13_2 = true
  SHX14_2 = true
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX8_2 = AttachEntityToEntity
  SHX9_2 = SHX7_2
  SHX10_2 = SHX2_2
  SHX11_2 = GetPedBoneIndex
  SHX12_2 = SHX2_2
  SHX13_2 = 28422
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 0.0
  SHX16_2 = 0.0
  SHX17_2 = 180.0
  SHX18_2 = true
  SHX19_2 = true
  SHX20_2 = false
  SHX21_2 = true
  SHX22_2 = 1
  SHX23_2 = true
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX8_2 = Wait
  SHX9_2 = 5000
  SHX8_2(SHX9_2)
  SHX8_2 = TaskPlayAnim
  SHX9_2 = SHX2_2
  SHX10_2 = SHX1_2
  SHX11_2 = "exit"
  SHX12_2 = 8.0
  SHX13_2 = 1.0
  SHX14_2 = -1
  SHX15_2 = 49
  SHX16_2 = 0
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX8_2 = Wait
  SHX9_2 = 100
  SHX8_2(SHX9_2)
  SHX8_2 = RequestAnimSet
  SHX9_2 = "move_m@drunk@verydrunk"
  SHX8_2(SHX9_2)
  while true do
    SHX8_2 = HasAnimSetLoaded
    SHX9_2 = "move_m@drunk@verydrunk"
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      break
    end
    SHX8_2 = Citizen
    SHX8_2 = SHX8_2.Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
  SHX8_2 = DoScreenFadeOut
  SHX9_2 = 1000
  SHX8_2(SHX9_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.Wait
  SHX9_2 = 1000
  SHX8_2(SHX9_2)
  SHX8_2 = ClearPedTasksImmediately
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX9_2()
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX8_2 = SetTimecycleModifier
  SHX9_2 = "spectator5"
  SHX8_2(SHX9_2)
  SHX8_2 = SetPedMotionBlur
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2 = SHX9_2()
  SHX10_2 = true
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetPedMovementClipset
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2 = SHX9_2()
  SHX10_2 = "move_m@drunk@verydrunk"
  SHX11_2 = 1.0
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = RemoveAnimSet
  SHX9_2 = "move_m@drunk@verydrunk"
  SHX8_2(SHX9_2)
  SHX8_2 = SetPedIsDrunk
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2 = SHX9_2()
  SHX10_2 = true
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = DoScreenFadeIn
  SHX9_2 = 1000
  SHX8_2(SHX9_2)
  SHX8_2 = ClearPedSecondaryTask
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX9_2()
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX8_2 = DeleteObject
  SHX9_2 = SHX7_2
  SHX8_2(SHX9_2)
  SHX8_2 = Wait
  SHX9_2 = 60000
  SHX8_2(SHX9_2)
  SHX8_2 = DoScreenFadeOut
  SHX9_2 = 1000
  SHX8_2(SHX9_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.Wait
  SHX9_2 = 1000
  SHX8_2(SHX9_2)
  SHX8_2 = DoScreenFadeIn
  SHX9_2 = 1000
  SHX8_2(SHX9_2)
  SHX8_2 = ClearTimecycleModifier
  SHX8_2()
  SHX8_2 = ResetScenarioTypesEnabled
  SHX8_2()
  SHX8_2 = ResetPedMovementClipset
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2 = SHX9_2()
  SHX10_2 = 0
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetPedIsDrunk
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2 = SHX9_2()
  SHX10_2 = false
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetPedMotionBlur
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2 = SHX9_2()
  SHX10_2 = false
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = RemoveAnimDict
  SHX9_2 = SHX1_2
  SHX8_2(SHX9_2)
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = tCMG
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = IsEntityPlayingAnim
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = "random@arrests@busted"
  SHX3_2 = "idle_a"
  SHX4_2 = 3
  return SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX17_1.isPlayerKneeling = SHX18_1
SHX17_1 = false
SHX18_1 = RegisterNetEvent
SHX19_1 = "e4bcfd6526"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = "misshair_shop@hair_dressers"
  SHX3_2(SHX4_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.setCanAnim
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = GetOffsetFromEntityInWorldCoords
  SHX5_2 = SHX2_2
  SHX6_2 = -0.3
  SHX7_2 = -0.2
  SHX8_2 = 0.0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = GetEntityHeading
  SHX6_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SetEntityCoords
  SHX7_2 = SHX3_2
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX10_2 = SHX10_2 - 1.0
  SHX11_2 = true
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX6_2 = SetEntityHeading
  SHX7_2 = SHX3_2
  SHX8_2 = SHX5_2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetEntityNoCollisionEntity
  SHX7_2 = SHX3_2
  SHX8_2 = SHX2_2
  SHX9_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SetEntityNoCollisionEntity
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2
  SHX9_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.loadModel
  SHX7_2 = 1633371511
  SHX6_2(SHX7_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.requestEntitySpawn
  SHX7_2 = "shaving_clippers_object"
  SHX8_2 = SHX4_2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = CreateObject
  SHX7_2 = 1633371511
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX10_2 = SHX10_2 + 2.0
  SHX11_2 = true
  SHX12_2 = true
  SHX13_2 = false
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX7_2 = AttachEntityToEntity
  SHX8_2 = SHX6_2
  SHX9_2 = SHX3_2
  SHX10_2 = GetPedBoneIndex
  SHX11_2 = SHX3_2
  SHX12_2 = 6286
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX11_2 = 0.08
  SHX12_2 = 0.0
  SHX13_2 = -0.025
  SHX14_2 = 0.0
  SHX15_2 = 180.0
  SHX16_2 = -90.0
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = false
  SHX21_2 = 0
  SHX22_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX7_2 = TaskPlayAnim
  SHX8_2 = SHX3_2
  SHX9_2 = "misshair_shop@hair_dressers"
  SHX10_2 = "keeper_hair_cut_a"
  SHX11_2 = 8.0
  SHX12_2 = 8.0
  SHX13_2 = -1
  SHX14_2 = 1
  SHX15_2 = 1.0
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX7_2 = math
  SHX7_2 = SHX7_2.floor
  SHX8_2 = GetAnimDuration
  SHX9_2 = "misshair_shop@hair_dressers"
  SHX10_2 = "keeper_hair_cut_a"
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SHX8_2 * 1000
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.Wait
  SHX9_2 = SHX7_2
  SHX8_2(SHX9_2)
  SHX8_2 = TaskPlayAnim
  SHX9_2 = SHX3_2
  SHX10_2 = "misshair_shop@hair_dressers"
  SHX11_2 = "keeper_hair_cut_b"
  SHX12_2 = 8.0
  SHX13_2 = 8.0
  SHX14_2 = -1
  SHX15_2 = 1
  SHX16_2 = 1.0
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX8_2 = math
  SHX8_2 = SHX8_2.floor
  SHX9_2 = GetAnimDuration
  SHX10_2 = "misshair_shop@hair_dressers"
  SHX11_2 = "keeper_hair_cut_b"
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = SHX9_2 * 1000
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = Citizen
  SHX9_2 = SHX9_2.Wait
  SHX10_2 = SHX8_2
  SHX9_2(SHX10_2)
  SHX9_2 = ClearPedTasks
  SHX10_2 = SHX3_2
  SHX9_2(SHX10_2)
  SHX9_2 = SetEntityNoCollisionEntity
  SHX10_2 = SHX3_2
  SHX11_2 = SHX2_2
  SHX12_2 = true
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = SetEntityNoCollisionEntity
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  SHX12_2 = true
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = DeleteEntity
  SHX10_2 = SHX6_2
  SHX9_2(SHX10_2)
  SHX9_2 = tCMG
  SHX9_2 = SHX9_2.setCanAnim
  SHX10_2 = true
  SHX9_2(SHX10_2)
  SHX9_2 = RemoveAnimDict
  SHX10_2 = "misshair_shop@hair_dressers"
  SHX9_2(SHX10_2)
  SHX9_2 = SetModelAsNoLongerNeeded
  SHX10_2 = 1633371511
  SHX9_2(SHX10_2)
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "05f833428d"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.setCanAnim
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = false
  SHX2_1 = SHX3_2
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  while true do
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX4_2
    SHX6_2 = 15500
    if not (SHX5_2 < SHX6_2) then
      break
    end
    SHX5_2 = IsEntityPlayingAnim
    SHX6_2 = SHX3_2
    SHX7_2 = "random@arrests@busted"
    SHX8_2 = "idle_a"
    SHX9_2 = 3
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    if not SHX5_2 then
      SHX5_2 = TaskPlayAnim
      SHX6_2 = SHX3_2
      SHX7_2 = "random@arrests@busted"
      SHX8_2 = "idle_a"
      SHX9_2 = 8.0
      SHX10_2 = 1.0
      SHX11_2 = -1
      SHX12_2 = 9
      SHX13_2 = 0
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = false
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = SetPedComponentVariation
  SHX6_2 = SHX3_2
  SHX7_2 = 2
  SHX8_2 = 0
  SHX9_2 = 0
  SHX10_2 = 0
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = FreezeEntityPosition
  SHX6_2 = SHX3_2
  SHX7_2 = false
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = true
  SHX2_1 = SHX5_2
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.setCanAnim
  SHX6_2 = true
  SHX5_2(SHX6_2)
  SHX5_2 = true
  SHX17_1 = SHX5_2
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.Wait
  SHX6_2 = 1800000
  SHX5_2(SHX6_2)
  SHX5_2 = false
  SHX17_1 = SHX5_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "c38ea56445"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX2_2
  SHX6_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = SHX3_2 - SHX4_2
  SHX5_2 = #SHX5_2
  if SHX5_2 < 15.0 then
    SHX5_2 = SendNUIMessage
    SHX6_2 = {}
    SHX6_2.transactionType = "shave"
    SHX5_2(SHX6_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "aecf5d3044"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = true
  SHX17_1 = SHX1_2
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = false
  SHX17_1 = SHX1_2
end
SHX18_1(SHX19_1, SHX20_1)
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX17_1
  if SHX1_2 then
    SHX1_2 = GetPedDrawableVariation
    SHX2_2 = SHX0_2.playerPed
    SHX3_2 = 2
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if 0 ~= SHX1_2 then
      SHX1_2 = SetPedHeadOverlay
      SHX2_2 = SHX0_2.playerPed
      SHX3_2 = 1
      SHX4_2 = 0
      SHX5_2 = 0.0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SetPedComponentVariation
      SHX2_2 = SHX0_2.playerPed
      SHX3_2 = 2
      SHX4_2 = 0
      SHX5_2 = 0
      SHX6_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    end
  end
end
SHX19_1 = CMG
SHX19_1 = SHX19_1.createThreadOnTick
SHX20_1 = SHX18_1
SHX21_1 = "Shaver"
SHX19_1(SHX20_1, SHX21_1)
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = GetSoundId
  SHX0_2 = SHX0_2()
  SHX1_2 = PlaySoundFrontend
  SHX2_2 = SHX0_2
  SHX3_2 = "Armour_On"
  SHX4_2 = "DLC_GR_Steal_Miniguns_Sounds"
  SHX5_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = ReleaseSoundId
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX20_1 = RegisterNetEvent
SHX21_1 = "b44d4efa87"
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadAnimDict
  SHX1_2 = "clothingtie"
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCanAnim
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = SHX19_1
  SHX0_2()
  SHX0_2 = TaskPlayAnim
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = "clothingtie"
  SHX3_2 = "try_tie_negative_a"
  SHX4_2 = 3.0
  SHX5_2 = 3.0
  SHX6_2 = 5000
  SHX7_2 = 51
  SHX8_2 = 0
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_2 = RemoveAnimDict
  SHX1_2 = "clothingtie"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.startCircularProgressBar
  SHX1_2 = ""
  SHX2_2 = 5000
  SHX3_2 = nil
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCanAnim
  SHX1_2 = true
  SHX0_2(SHX1_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = tCMG
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetEntitySpeed
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  return SHX0_2(SHX1_2)
end
SHX20_1.getPlayerSpeed = SHX21_1
