-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
SHX0_1 = true
SHX1_1 = false
SHX2_1 = false
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = BeginTextCommandDisplayHelp
  SHX1_2 = "STRING"
  SHX0_2(SHX1_2)
  SHX0_2 = AddTextComponentSubstringPlayerName
  SHX1_2 = "Press ~INPUT_VEH_FLY_VERTICAL_FLIGHT_MODE~ while on foot, to pickup 2 snowballs!"
  SHX0_2(SHX1_2)
  SHX0_2 = EndTextCommandDisplayHelp
  SHX1_2 = 0
  SHX2_2 = false
  SHX3_2 = true
  SHX4_2 = -1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getCurrentWeather
  SHX0_2 = SHX0_2()
  if "XMAS" == SHX0_2 then
    SHX0_2 = WaterOverrideSetStrength
    SHX1_2 = 3.0
    SHX0_2(SHX1_2)
    SHX0_2 = SetForceVehicleTrails
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX0_2 = SetForcePedFootstepsTracks
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX0_2 = SHX1_1
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.loadPtfx
      SHX1_2 = "core_snow"
      SHX0_2(SHX1_2)
      SHX0_2 = UseParticleFxAsset
      SHX1_2 = "core_snow"
      SHX0_2(SHX1_2)
      SHX0_2 = true
      SHX1_1 = SHX0_2
    end
    SHX0_2 = IsControlJustReleased
    SHX1_2 = 0
    SHX2_2 = 119
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = IsPedInAnyVehicle
      SHX1_2 = GetPlayerPed
      SHX2_2 = -1
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = true
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsPlayerFreeAiming
        SHX1_2 = PlayerId
        SHX1_2, SHX2_2 = SHX1_2()
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsPedSwimming
          SHX1_2 = PlayerPedId
          SHX1_2, SHX2_2 = SHX1_2()
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          if not SHX0_2 then
            SHX0_2 = IsPedSwimmingUnderWater
            SHX1_2 = PlayerPedId
            SHX1_2, SHX2_2 = SHX1_2()
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
            if not SHX0_2 then
              SHX0_2 = IsPedRagdoll
              SHX1_2 = PlayerPedId
              SHX1_2, SHX2_2 = SHX1_2()
              SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
              if not SHX0_2 then
                SHX0_2 = IsPedFalling
                SHX1_2 = PlayerPedId
                SHX1_2, SHX2_2 = SHX1_2()
                SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
                if not SHX0_2 then
                  SHX0_2 = IsPedRunning
                  SHX1_2 = PlayerPedId
                  SHX1_2, SHX2_2 = SHX1_2()
                  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
                  if not SHX0_2 then
                    SHX0_2 = IsPedSprinting
                    SHX1_2 = PlayerPedId
                    SHX1_2, SHX2_2 = SHX1_2()
                    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
                    if not SHX0_2 then
                      SHX0_2 = GetInteriorFromEntity
                      SHX1_2 = PlayerPedId
                      SHX1_2, SHX2_2 = SHX1_2()
                      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
                      if 0 == SHX0_2 then
                        SHX0_2 = IsPedShooting
                        SHX1_2 = PlayerPedId
                        SHX1_2, SHX2_2 = SHX1_2()
                        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
                        if not SHX0_2 then
                          SHX0_2 = IsPedUsingAnyScenario
                          SHX1_2 = PlayerPedId
                          SHX1_2, SHX2_2 = SHX1_2()
                          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
                          if not SHX0_2 then
                            SHX0_2 = IsPedInCover
                            SHX1_2 = PlayerPedId
                            SHX1_2 = SHX1_2()
                            SHX2_2 = false
                            SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
                            if not SHX0_2 then
                              SHX0_2 = IsPedOnVehicle
                              SHX1_2 = PlayerPedId
                              SHX1_2, SHX2_2 = SHX1_2()
                              SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
                              if not SHX0_2 then
                                SHX0_2 = RageUI
                                SHX0_2 = SHX0_2.IsAnyMenuVisible
                                SHX0_2 = SHX0_2()
                                if not SHX0_2 then
                                  SHX0_2 = SHX2_1
                                  if not SHX0_2 then
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
                                      
                                      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
                                      SHX0_3 = Citizen
                                      SHX0_3 = SHX0_3.Wait
                                      SHX1_3 = 0
                                      SHX0_3(SHX1_3)
                                      SHX0_3 = RageUI
                                      SHX0_3 = SHX0_3.IsAnyMenuVisible
                                      SHX0_3 = SHX0_3()
                                      if not SHX0_3 then
                                        SHX0_3 = CMG
                                        SHX0_3 = SHX0_3.getCurrentWeather
                                        SHX0_3 = SHX0_3()
                                        if "XMAS" == SHX0_3 then
                                          SHX0_3 = CMG
                                          SHX0_3 = SHX0_3.loadAnimDict
                                          SHX1_3 = "anim@mp_snowball"
                                          SHX0_3(SHX1_3)
                                          SHX0_3 = TaskPlayAnim
                                          SHX1_3 = PlayerPedId
                                          SHX1_3 = SHX1_3()
                                          SHX2_3 = "anim@mp_snowball"
                                          SHX3_3 = "pickup_snowball"
                                          SHX4_3 = 8.0
                                          SHX5_3 = -1
                                          SHX6_3 = -1
                                          SHX7_3 = 0
                                          SHX8_3 = 1
                                          SHX9_3 = false
                                          SHX10_3 = false
                                          SHX11_3 = false
                                          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
                                          SHX0_3 = RemoveAnimDict
                                          SHX1_3 = "anim@mp_snowball"
                                          SHX0_3(SHX1_3)
                                          SHX0_3 = Citizen
                                          SHX0_3 = SHX0_3.Wait
                                          SHX1_3 = 1950
                                          SHX0_3(SHX1_3)
                                          SHX0_3 = CMG
                                          SHX0_3 = SHX0_3.getCurrentWeather
                                          SHX0_3 = SHX0_3()
                                          if "XMAS" == SHX0_3 then
                                            SHX0_3 = GiveWeaponToPed
                                            SHX1_3 = PlayerPedId
                                            SHX1_3 = SHX1_3()
                                            SHX2_3 = 126349499
                                            SHX3_3 = 2
                                            SHX4_3 = false
                                            SHX5_3 = false
                                            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
                                          end
                                        end
                                      end
                                      SHX0_3 = false
                                      SHX2_1 = SHX0_3
                                    end
                                    SHX0_2(SHX1_2)
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
          end
        end
      end
    end
    SHX0_2 = IsPedInAnyVehicle
    SHX1_2 = GetPlayerPed
    SHX2_2 = -1
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = true
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = SHX0_1
      if SHX0_2 then
        SHX0_2 = SHX3_1
        SHX0_2()
      end
      SHX0_2 = false
      SHX0_1 = SHX0_2
    else
      SHX0_2 = true
      SHX0_1 = SHX0_2
    end
  else
    SHX0_2 = SHX1_1
    if SHX0_2 then
      SHX0_2 = WaterOverrideSetStrength
      SHX1_2 = 0.0
      SHX0_2(SHX1_2)
      SHX0_2 = false
      SHX1_1 = SHX0_2
      SHX0_2 = RemoveNamedPtfxAsset
      SHX1_2 = "core_snow"
      SHX0_2(SHX1_2)
      SHX0_2 = SetForceVehicleTrails
      SHX1_2 = false
      SHX0_2(SHX1_2)
      SHX0_2 = SetForcePedFootstepsTracks
      SHX1_2 = false
      SHX0_2(SHX1_2)
    end
  end
end
SHX5_1 = CMG
SHX5_1 = SHX5_1.createThreadOnTick
SHX6_1 = SHX4_1
SHX7_1 = "Snowballs"
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterCommand
SHX6_1 = "snowballs"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  SHX0_2()
end
SHX8_1 = false
SHX5_1(SHX6_1, SHX7_1, SHX8_1)
