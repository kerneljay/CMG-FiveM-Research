-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = nil
SHX4_1 = nil
SHX5_1 = 0
SHX6_1 = 0
SHX7_1 = false
SHX8_1 = nil
SHX9_1 = nil
SHX10_1 = false
SHX11_1 = CMG
SHX11_1 = SHX11_1.loadModule
SHX12_1 = "cfg/cfg_simeons"
SHX11_1 = SHX11_1(SHX12_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "c4761cc0c0"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX0_1 = SHX0_2
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "c873778784"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_1 = SHX0_2
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "15907965ab"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = DeleteVehicle
  SHX1_2 = SHX5_1
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX5_1 = SHX0_2
  SHX0_2 = 0
  SHX6_1 = SHX0_2
  SHX0_2 = false
  SHX7_1 = SHX0_2
  SHX1_2 = SHX3_1
  SHX0_2 = SHX0_1
  SHX0_2 = SHX0_2[SHX1_2]
  SHX0_2 = SHX0_2.posVector
  SHX1_2 = SetEntityCoords
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX12_1(SHX13_1, SHX14_1)
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if nil ~= SHX0_2 then
    SHX3_1 = SHX0_2
  end
  if "Simeons" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerBucket
    SHX1_2 = SHX1_2()
    if 0 == SHX1_2 then
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "ba41f4a575"
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cardealer"
  SHX5_2 = "mainmenu"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "2d4f7f8a9f"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cardealer"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = nil
  SHX3_1 = SHX0_2
end
function SHX14_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX4_2 = DeleteVehicle
  SHX5_2 = GetVehiclePedIsIn
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerPed
  SHX6_2 = SHX6_2()
  SHX7_2 = false
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX4_2 = GetHashKey
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = RequestModel
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = 0
  while true do
    SHX6_2 = HasModelLoaded
    SHX7_2 = SHX4_2
    SHX6_2 = SHX6_2(SHX7_2)
    if not (not SHX6_2 and SHX5_2 < 100) then
      break
    end
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 10
    SHX6_2(SHX7_2)
    SHX5_2 = SHX5_2 + 1
  end
  SHX6_2 = HasModelLoaded
  SHX7_2 = SHX4_2
  SHX6_2 = SHX6_2(SHX7_2)
  if SHX6_2 then
    SHX6_2 = CreateVehicle
    SHX7_2 = SHX4_2
    SHX8_2 = SHX1_2
    SHX9_2 = SHX2_2
    SHX10_2 = SHX3_2
    SHX11_2 = GetEntityHeading
    SHX12_2 = CMG
    SHX12_2 = SHX12_2.getPlayerPed
    SHX12_2, SHX13_2, SHX14_2 = SHX12_2()
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    SHX12_2 = false
    SHX13_2 = false
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.initLocalVehicle
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
    SHX7_2 = SetEntityAsMissionEntity
    SHX8_2 = SHX6_2
    SHX9_2 = false
    SHX10_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = FreezeEntityPosition
    SHX8_2 = SHX6_2
    SHX9_2 = true
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetEntityInvincible
    SHX8_2 = SHX6_2
    SHX9_2 = true
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetVehicleDoorsLocked
    SHX8_2 = SHX6_2
    SHX9_2 = 4
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetModelAsNoLongerNeeded
    SHX8_2 = SHX4_2
    SHX7_2(SHX8_2)
    SHX7_2 = TaskWarpPedIntoVehicle
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.getPlayerPed
    SHX8_2 = SHX8_2()
    SHX9_2 = SHX6_2
    SHX10_2 = -1
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = IsThisModelAHeli
    SHX8_2 = SHX4_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = Citizen
      SHX7_2 = SHX7_2.Wait
      SHX8_2 = 0
      SHX7_2(SHX8_2)
      SHX7_2 = SetEntityCoordsNoOffset
      SHX8_2 = SHX6_2
      SHX9_2 = SHX1_2
      SHX10_2 = SHX2_2
      SHX11_2 = SHX3_2
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = false
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX7_2 = FreezeEntityPosition
      SHX8_2 = SHX6_2
      SHX9_2 = true
      SHX7_2(SHX8_2, SHX9_2)
    end
    SHX7_2 = Citizen
    SHX7_2 = SHX7_2.CreateThread
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      while true do
        SHX0_3 = DoesEntityExist
        SHX1_3 = SHX6_2
        SHX0_3 = SHX0_3(SHX1_3)
        if not SHX0_3 then
          break
        end
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.Wait
        SHX1_3 = 25
        SHX0_3(SHX1_3)
        SHX0_3 = SetEntityHeading
        SHX1_3 = SHX6_2
        SHX2_3 = GetEntityHeading
        SHX3_3 = SHX6_2
        SHX2_3 = SHX2_3(SHX3_3)
        SHX2_3 = SHX2_3 + 1
        SHX0_3(SHX1_3, SHX2_3)
      end
    end
    SHX7_2(SHX8_2)
    SHX7_2 = true
    SHX7_1 = SHX7_2
    return SHX6_2
  else
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.notify
    SHX7_2 = "~r~Could not load vehicle"
    SHX6_2(SHX7_2)
    SHX6_2 = -1
    return SHX6_2
  end
end
SHX15_1 = CMG
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  if not SHX0_2 then
    SHX0_2 = SHX10_1
  end
  return SHX0_2
end
SHX15_1.isSimeonsVehiclePreviewActive = SHX16_1
SHX15_1 = CreateThread
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = pairs
  SHX1_2 = SHX11_1.simeonsInstances
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.posVector
    SHX7_2 = SHX5_2.blipId
    SHX8_2 = SHX5_2.blipColour
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addBlip
    SHX10_2 = SHX6_2.x
    SHX11_2 = SHX6_2.y
    SHX12_2 = SHX6_2.z
    SHX13_2 = SHX7_2
    SHX14_2 = SHX8_2
    SHX15_2 = "Simeons"
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addPropMarker
    SHX10_2 = "bzzz_marker_shop_blue_anim"
    SHX11_2 = SHX6_2.x
    SHX12_2 = SHX6_2.y
    SHX13_2 = SHX6_2.z
    SHX14_2 = 50.0
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
end
SHX15_1(SHX16_1)
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetEntityCoords
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = SHX1_2 - SHX0_2
  SHX1_2 = #SHX1_2
  if SHX1_2 < 5.0 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = false
  return SHX1_2
end
SHX16_1 = false
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = SHX0_1
  if nil ~= SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX0_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = SHX5_2.previewVector
      SHX7_2 = SHX2_1
      SHX7_2 = SHX7_2[SHX4_2]
      if nil ~= SHX7_2 then
        SHX7_2 = SHX2_1
        SHX7_2 = SHX7_2[SHX4_2]
        if SHX7_2 < 2.0 then
          SHX7_2 = SHX16_1
          if not SHX7_2 then
            SHX7_2 = TriggerServerEvent
            SHX8_2 = "ce1e6df4e8"
            SHX7_2(SHX8_2)
            SHX7_2 = SHX12_1
            SHX8_2 = SHX4_2
            SHX7_2(SHX8_2)
            SHX7_2 = true
            SHX16_1 = SHX7_2
            SHX7_2 = Citizen
            SHX7_2 = SHX7_2.CreateThread
            function SHX8_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3
              while true do
                SHX1_3 = SHX4_2
                SHX0_3 = SHX2_1
                SHX0_3 = SHX0_3[SHX1_3]
                if not (SHX0_3 < 2.0) then
                  SHX0_3 = SHX7_1
                  if not SHX0_3 then
                    SHX0_3 = SHX15_1
                    SHX1_3 = SHX6_2
                    SHX0_3 = SHX0_3(SHX1_3)
                    if not SHX0_3 then
                      SHX0_3 = SHX10_1
                      if not SHX0_3 then
                        break
                      end
                    end
                  end
                end
                SHX0_3 = Wait
                SHX1_3 = 0
                SHX0_3(SHX1_3)
              end
              SHX0_3 = SHX13_1
              SHX0_3()
              SHX0_3 = false
              SHX16_1 = SHX0_3
            end
            SHX7_2(SHX8_2)
          end
        end
      end
    end
  end
end
SHX18_1 = CMG
SHX18_1 = SHX18_1.createThreadOnTick
SHX19_1 = SHX17_1
SHX20_1 = "Simeons"
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = Citizen
SHX18_1 = SHX18_1.CreateThread
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  while true do
    SHX0_2 = SHX0_1
    if nil ~= SHX0_2 then
      SHX0_2 = pairs
      SHX1_2 = SHX0_1
      SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
      for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
        SHX6_2 = SHX5_2.posVector
        SHX7_2 = SHX2_1
        SHX8_2 = GetEntityCoords
        SHX9_2 = CMG
        SHX9_2 = SHX9_2.getPlayerPed
        SHX9_2 = SHX9_2()
        SHX8_2 = SHX8_2(SHX9_2)
        SHX8_2 = SHX8_2 - SHX6_2
        SHX8_2 = #SHX8_2
        SHX7_2[SHX4_2] = SHX8_2
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 250
    SHX0_2(SHX1_2)
  end
end
SHX18_1(SHX19_1)
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    if "_config" ~= SHX6_2 then
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX1_2
      SHX10_2 = {}
      SHX11_2 = SHX6_2
      SHX12_2 = SHX7_2
      SHX10_2[1] = SHX11_2
      SHX10_2[2] = SHX12_2
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.sort
  SHX3_2 = SHX1_2
  function SHX4_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX2_3 = SHX0_3[2]
    SHX2_3 = SHX2_3[2]
    if not SHX2_3 then
      SHX2_3 = 0
    end
    SHX3_3 = SHX1_3[2]
    SHX3_3 = SHX3_3[2]
    if not SHX3_3 then
      SHX3_3 = 0
    end
    if SHX2_3 ~= SHX3_3 then
      SHX4_3 = SHX2_3 < SHX3_3
      return SHX4_3
    end
    SHX4_3 = tonumber
    SHX5_3 = SHX0_3[2]
    SHX5_3 = SHX5_3.levelRequired
    SHX4_3 = SHX4_3(SHX5_3)
    if not SHX4_3 then
      SHX4_3 = 0
    end
    SHX5_3 = tonumber
    SHX6_3 = SHX1_3[2]
    SHX6_3 = SHX6_3.levelRequired
    SHX5_3 = SHX5_3(SHX6_3)
    if not SHX5_3 then
      SHX5_3 = 0
    end
    if SHX4_3 ~= SHX5_3 then
      SHX6_3 = SHX4_3 < SHX5_3
      return SHX6_3
    end
    SHX6_3 = tostring
    SHX7_3 = SHX0_3[1]
    SHX6_3 = SHX6_3(SHX7_3)
    SHX7_3 = tostring
    SHX8_3 = SHX1_3[1]
    SHX7_3 = SHX7_3(SHX8_3)
    SHX6_3 = SHX6_3 < SHX7_3
    return SHX6_3
  end
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = 0
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX2_2
    SHX0_3 = SHX0_3 + 1
    SHX2_2 = SHX0_3
    SHX1_3 = SHX2_2
    SHX0_3 = SHX1_2
    SHX0_3 = SHX0_3[SHX1_3]
    if SHX0_3 then
      SHX1_3 = SHX2_2
      SHX0_3 = SHX1_2
      SHX0_3 = SHX0_3[SHX1_3]
      SHX0_3 = SHX0_3[1]
      SHX2_3 = SHX2_2
      SHX1_3 = SHX1_2
      SHX1_3 = SHX1_3[SHX2_3]
      SHX1_3 = SHX1_3[2]
      return SHX0_3, SHX1_3
    else
      SHX0_3 = nil
      SHX1_3 = nil
      return SHX0_3, SHX1_3
    end
  end
  return SHX3_2
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" ~= SHX1_2 or "" == SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = SHX11_1.simeonsLevelNameToType
  if not SHX1_2 then
    SHX1_2 = {}
  end
  SHX2_2 = SHX1_2[SHX0_2]
  if not SHX2_2 then
    SHX2_2 = SHX0_2
  end
  return SHX2_2
end
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if "cmg_mechanic" == SHX0_2 then
    SHX1_2 = "Mechanic job"
    return SHX1_2
  end
  if "cmg_health_service" == SHX0_2 then
    SHX1_2 = "Health Service"
    return SHX1_2
  end
  SHX1_2 = nil
  return SHX1_2
end
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = tonumber
    SHX2_2 = SHX0_2.levelRequired
    SHX1_2 = SHX1_2(SHX2_2)
  end
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = SHX19_1
    SHX3_2 = SHX0_2.levelName
    SHX2_2 = SHX2_2(SHX3_2)
  end
  if not SHX1_2 or SHX1_2 <= 0 then
    SHX3_2 = true
    return SHX3_2
  end
  if not SHX2_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getClientJobLevel
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX1_2 <= SHX3_2
  return SHX3_2
end
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.skillRequired
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" ~= SHX2_2 or "" == SHX1_2 then
    SHX2_2 = true
    return SHX2_2
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hasClientSkill
  SHX3_2 = SHX1_2
  return SHX2_2(SHX3_2)
end
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX21_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = SHX22_1
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
  end
  return SHX1_2
end
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2[3]
  end
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = tonumber
    SHX3_2 = SHX0_2.levelRequired
    SHX2_2 = SHX2_2(SHX3_2)
  end
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX19_1
    SHX4_2 = SHX0_2.levelName
    SHX3_2 = SHX3_2(SHX4_2)
  end
  SHX4_2 = {}
  SHX5_2 = "Boot size (%skg)"
  SHX6_2 = SHX5_2
  SHX5_2 = SHX5_2.format
  SHX7_2 = tostring
  SHX8_2 = SHX1_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX7_2(SHX8_2)
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX4_2[6] = SHX10_2
  SHX4_2[7] = SHX11_2
  SHX4_2[8] = SHX12_2
  if SHX2_2 and SHX2_2 > 0 then
    if not SHX3_2 then
      SHX5_2 = #SHX4_2
      SHX5_2 = SHX5_2 + 1
      SHX4_2[SHX5_2] = "~r~Listing misconfigured (levelName / level type)"
    else
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getClientJobLevel
      SHX6_2 = SHX3_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = SHX20_1
      SHX7_2 = SHX3_2
      SHX6_2 = SHX6_2(SHX7_2)
      if not SHX6_2 then
        SHX6_2 = tostring
        SHX7_2 = SHX0_2.levelName
        SHX6_2 = SHX6_2(SHX7_2)
      end
      if SHX2_2 <= SHX5_2 then
        SHX7_2 = #SHX4_2
        SHX7_2 = SHX7_2 + 1
        SHX8_2 = "~g~%s Level %d / %d"
        SHX9_2 = SHX8_2
        SHX8_2 = SHX8_2.format
        SHX10_2 = SHX6_2
        SHX11_2 = SHX5_2
        SHX12_2 = SHX2_2
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX4_2[SHX7_2] = SHX8_2
      else
        SHX7_2 = #SHX4_2
        SHX7_2 = SHX7_2 + 1
        SHX8_2 = "~r~%s Level %d required (Your Level: %d)"
        SHX9_2 = SHX8_2
        SHX8_2 = SHX8_2.format
        SHX10_2 = SHX6_2
        SHX11_2 = SHX2_2
        SHX12_2 = SHX5_2
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX4_2[SHX7_2] = SHX8_2
      end
    end
  end
  SHX5_2 = SHX0_2 or SHX5_2
  if SHX0_2 then
    SHX5_2 = SHX0_2.skillRequired
  end
  SHX6_2 = type
  SHX7_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2)
  if "string" == SHX6_2 and "" ~= SHX5_2 then
    SHX6_2 = SHX0_2.skillHint
    if not SHX6_2 then
      SHX6_2 = "skill tree perk"
    end
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.hasClientSkill
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = #SHX4_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = "~g~%s unlocked"
      SHX9_2 = SHX8_2
      SHX8_2 = SHX8_2.format
      SHX10_2 = SHX6_2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX4_2[SHX7_2] = SHX8_2
    else
      SHX7_2 = #SHX4_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = "~r~Requires %s skill unlocked"
      SHX9_2 = SHX8_2
      SHX8_2 = SHX8_2.format
      SHX10_2 = SHX6_2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX4_2[SHX7_2] = SHX8_2
    end
  end
  SHX6_2 = table
  SHX6_2 = SHX6_2.concat
  SHX7_2 = SHX4_2
  SHX8_2 = "\n"
  return SHX6_2(SHX7_2, SHX8_2)
end
function SHX25_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "number" ~= SHX2_2 or SHX1_2 <= 0 then
    return SHX1_2
  end
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = SHX2_2 or SHX3_2
  if SHX2_2 then
    SHX3_2 = SHX2_2._config
  end
  if SHX3_2 then
    SHX4_2 = SHX3_2.gangVehicleStore
    if true == SHX4_2 then
      goto SHX_LABEL_20
    end
  end
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getClientGangRpWlVehiclesDiscountPercent
  SHX4_2 = SHX4_2()
  if SHX4_2 <= 0 then
    return SHX1_2
  end
  SHX5_2 = math
  SHX5_2 = SHX5_2.floor
  SHX6_2 = SHX4_2 / 100
  SHX7_2 = 1
  SHX6_2 = SHX7_2 - SHX6_2
  SHX6_2 = SHX1_2 * SHX6_2
  return SHX5_2(SHX6_2)
end
SHX26_1 = RMenu
SHX26_1 = SHX26_1.Add
SHX27_1 = "cardealer"
SHX28_1 = "mainmenu"
SHX29_1 = RageUI
SHX29_1 = SHX29_1.CreateMenu
SHX30_1 = ""
SHX31_1 = ""
SHX32_1 = CMG
SHX32_1 = SHX32_1.getRageUIMenuWidth
SHX32_1 = SHX32_1()
SHX33_1 = CMG
SHX33_1 = SHX33_1.getRageUIMenuHeight
SHX33_1 = SHX33_1()
SHX34_1 = "cmg_simeonsui"
SHX35_1 = "cmg_simeonsui"
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX26_1 = RMenu
SHX27_1 = SHX26_1
SHX26_1 = SHX26_1.Get
SHX28_1 = "cardealer"
SHX29_1 = "mainmenu"
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX27_1 = SHX26_1
SHX26_1 = SHX26_1.SetSubtitle
SHX28_1 = "~b~Categories"
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = RMenu
SHX26_1 = SHX26_1.Add
SHX27_1 = "cardealer"
SHX28_1 = "categories"
SHX29_1 = RageUI
SHX29_1 = SHX29_1.CreateSubMenu
SHX30_1 = RMenu
SHX31_1 = SHX30_1
SHX30_1 = SHX30_1.Get
SHX32_1 = "cardealer"
SHX33_1 = "mainmenu"
SHX30_1 = SHX30_1(SHX31_1, SHX32_1, SHX33_1)
SHX31_1 = ""
SHX32_1 = "~b~Vehicles"
SHX33_1 = CMG
SHX33_1 = SHX33_1.getRageUIMenuWidth
SHX33_1 = SHX33_1()
SHX34_1 = CMG
SHX34_1 = SHX34_1.getRageUIMenuHeight
SHX34_1, SHX35_1 = SHX34_1()
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX26_1 = RMenu
SHX26_1 = SHX26_1.Add
SHX27_1 = "cardealer"
SHX28_1 = "vehicle"
SHX29_1 = RageUI
SHX29_1 = SHX29_1.CreateSubMenu
SHX30_1 = RMenu
SHX31_1 = SHX30_1
SHX30_1 = SHX30_1.Get
SHX32_1 = "cardealer"
SHX33_1 = "categories"
SHX30_1 = SHX30_1(SHX31_1, SHX32_1, SHX33_1)
SHX31_1 = ""
SHX32_1 = "~b~Options"
SHX33_1 = CMG
SHX33_1 = SHX33_1.getRageUIMenuWidth
SHX33_1 = SHX33_1()
SHX34_1 = CMG
SHX34_1 = SHX34_1.getRageUIMenuHeight
SHX34_1, SHX35_1 = SHX34_1()
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX26_1 = RMenu
SHX26_1 = SHX26_1.Add
SHX27_1 = "cardealer"
SHX28_1 = "confirm"
SHX29_1 = RageUI
SHX29_1 = SHX29_1.CreateSubMenu
SHX30_1 = RMenu
SHX31_1 = SHX30_1
SHX30_1 = SHX30_1.Get
SHX32_1 = "cardealer"
SHX33_1 = "vehicle"
SHX30_1 = SHX30_1(SHX31_1, SHX32_1, SHX33_1)
SHX31_1 = ""
SHX32_1 = "~b~Are you sure?"
SHX33_1 = CMG
SHX33_1 = SHX33_1.getRageUIMenuWidth
SHX33_1 = SHX33_1()
SHX34_1 = CMG
SHX34_1 = SHX34_1.getRageUIMenuHeight
SHX34_1, SHX35_1 = SHX34_1()
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX26_1 = RageUI
SHX26_1 = SHX26_1.CreateWhile
SHX27_1 = 1.0
SHX28_1 = RMenu
SHX29_1 = SHX28_1
SHX28_1 = SHX28_1.Get
SHX30_1 = "cardealer"
SHX31_1 = "mainmenu"
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX29_1 = nil
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cardealer"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3
    SHX0_3 = SHX3_1
    if nil ~= SHX0_3 then
      SHX0_3 = pairs
      SHX1_3 = SHX0_1
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = SHX3_1
        if SHX6_3 == SHX4_3 then
          SHX6_3 = SHX5_3.categorys
          SHX7_3 = pairs
          SHX8_3 = SHX6_3
          SHX7_3, SHX8_3, SHX9_3, SHX10_3 = SHX7_3(SHX8_3)
          for SHX11_3, SHX12_3 in SHX7_3, SHX8_3, SHX9_3, SHX10_3 do
            SHX13_3 = SHX1_1
            SHX13_3 = SHX13_3[SHX12_3]
            if SHX13_3 then
              SHX13_3 = RageUI
              SHX13_3 = SHX13_3.ButtonWithStyle
              SHX14_3 = SHX12_3
              SHX15_3 = ""
              SHX16_3 = {}
              SHX16_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
              SHX17_3 = true
              function SHX18_3(SHX0_4, SHX1_4, SHX2_4)
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX3_4
                if SHX2_4 then
                  SHX3_4 = SHX12_3
                  SHX4_1 = SHX3_4
                end
              end
              SHX19_3 = RMenu
              SHX20_3 = SHX19_3
              SHX19_3 = SHX19_3.Get
              SHX21_3 = "cardealer"
              SHX22_3 = "categories"
              SHX19_3, SHX20_3, SHX21_3, SHX22_3 = SHX19_3(SHX20_3, SHX21_3, SHX22_3)
              SHX13_3(SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3)
            end
          end
        end
      end
    end
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cardealer"
  SHX4_2 = "categories"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3
    SHX0_3 = SHX3_1
    if nil ~= SHX0_3 then
      SHX0_3 = pairs
      SHX1_3 = SHX0_1
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = SHX3_1
        if SHX6_3 == SHX4_3 then
          SHX6_3 = SHX5_3.previewVector
          SHX7_3 = SHX5_3.categorys
          SHX8_3 = pairs
          SHX9_3 = SHX7_3
          SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX8_3(SHX9_3)
          for SHX12_3, SHX13_3 in SHX8_3, SHX9_3, SHX10_3, SHX11_3 do
            SHX14_3 = SHX4_1
            if SHX14_3 == SHX13_3 then
              SHX14_3 = SHX1_1
              SHX14_3 = SHX14_3[SHX13_3]
              if nil ~= SHX14_3 then
                SHX14_3 = SHX18_1
                SHX15_3 = SHX1_1
                SHX15_3 = SHX15_3[SHX13_3]
                SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX14_3(SHX15_3)
                for SHX18_3, SHX19_3 in SHX14_3, SHX15_3, SHX16_3, SHX17_3 do
                  if "_config" ~= SHX18_3 then
                    SHX20_3 = SHX25_1
                    SHX21_3 = SHX13_3
                    SHX22_3 = SHX19_3[2]
                    SHX20_3 = SHX20_3(SHX21_3, SHX22_3)
                    SHX21_3 = "\194\163"
                    SHX22_3 = getMoneyStringFormatted
                    SHX23_3 = SHX20_3
                    SHX22_3 = SHX22_3(SHX23_3)
                    SHX21_3 = SHX21_3 .. SHX22_3
                    SHX22_3 = SHX23_1
                    SHX23_3 = SHX19_3
                    SHX22_3 = SHX22_3(SHX23_3)
                    SHX23_3 = RageUI
                    SHX23_3 = SHX23_3.ButtonWithStyle
                    SHX24_3 = SHX19_3[1]
                    SHX25_3 = SHX24_1
                    SHX26_3 = SHX19_3
                    SHX25_3 = SHX25_3(SHX26_3)
                    SHX26_3 = {}
                    SHX26_3.RightLabel = SHX21_3
                    SHX27_3 = SHX22_3
                    function SHX28_3(SHX0_4, SHX1_4, SHX2_4)
                      -- [AI CLEANUP] Decompiled Lua - Fix these:
                      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                      -- 3. Replace goto/label with while/repeat-until where possible
                      -- 4. Remove decompiler comments, add meaningful ones
                      -- 5. Fix indentation and formatting
                      
                      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
                      if SHX1_4 then
                        SHX3_4 = SHX5_1
                        if 0 ~= SHX3_4 then
                          SHX3_4 = SHX6_1
                          SHX4_4 = SHX18_3
                          if SHX3_4 == SHX4_4 then
                            goto SHX_LABEL_22
                          end
                        end
                        SHX3_4 = DeleteVehicle
                        SHX4_4 = SHX5_1
                        SHX3_4(SHX4_4)
                        SHX3_4 = SHX14_1
                        SHX4_4 = SHX18_3
                        SHX5_4 = SHX6_3.x
                        SHX6_4 = SHX6_3.y
                        SHX7_4 = SHX6_3.z
                        SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
                        SHX5_1 = SHX3_4
                        SHX3_4 = SHX18_3
                        SHX6_1 = SHX3_4
                      end
                      -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
                      ::SHX_LABEL_22::
                      if SHX2_4 then
                        SHX3_4 = SHX18_3
                        SHX9_1 = SHX3_4
                        SHX3_4 = SHX19_3
                        SHX8_1 = SHX3_4
                      end
                    end
                    SHX29_3 = RMenu
                    SHX30_3 = SHX29_3
                    SHX29_3 = SHX29_3.Get
                    SHX31_3 = "cardealer"
                    SHX32_3 = "vehicle"
                    SHX29_3, SHX30_3, SHX31_3, SHX32_3 = SHX29_3(SHX30_3, SHX31_3, SHX32_3)
                    SHX23_3(SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3)
                  end
                end
              else
                SHX14_3 = RageUI
                SHX14_3 = SHX14_3.ButtonWithStyle
                SHX15_3 = "~r~No permission"
                SHX16_3 = ""
                SHX17_3 = {}
                SHX17_3.RightLabel = ""
                SHX18_3 = true
                function SHX19_3(SHX0_4, SHX1_4, SHX2_4)
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                end
                SHX20_3 = RMenu
                SHX21_3 = SHX20_3
                SHX20_3 = SHX20_3.Get
                SHX22_3 = "cardealer"
                SHX23_3 = "categories"
                SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3 = SHX20_3(SHX21_3, SHX22_3, SHX23_3)
                SHX14_3(SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3)
              end
            end
          end
        end
      end
    end
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cardealer"
  SHX4_2 = "vehicle"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = false
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    SHX0_3 = SHX3_1
    if nil ~= SHX0_3 then
      SHX0_3 = SHX8_1
      if SHX0_3 then
        SHX0_3 = SHX23_1
        SHX1_3 = SHX8_1
        SHX0_3 = SHX0_3(SHX1_3)
        SHX1_3 = RageUI
        SHX1_3 = SHX1_3.ButtonWithStyle
        SHX2_3 = "Purchase "
        SHX3_3 = SHX8_1
        SHX3_3 = SHX3_3[1]
        SHX2_3 = SHX2_3 .. SHX3_3
        SHX3_3 = ""
        SHX4_3 = {}
        SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX5_3 = SHX0_3
        function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
        end
        SHX7_3 = RMenu
        SHX8_3 = SHX7_3
        SHX7_3 = SHX7_3.Get
        SHX9_3 = "cardealer"
        SHX10_3 = "confirm"
        SHX7_3, SHX8_3, SHX9_3, SHX10_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        SHX1_3 = RageUI
        SHX1_3 = SHX1_3.ButtonWithStyle
        SHX2_3 = "Test Drive "
        SHX3_3 = SHX8_1
        SHX3_3 = SHX3_3[1]
        SHX2_3 = SHX2_3 .. SHX3_3
        SHX3_3 = ""
        SHX4_3 = {}
        SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX5_3 = SHX0_3
        function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4
          if SHX2_4 then
            SHX3_4 = DeleteVehicle
            SHX4_4 = GetVehiclePedIsIn
            SHX5_4 = CMG
            SHX5_4 = SHX5_4.getPlayerPed
            SHX5_4 = SHX5_4()
            SHX6_4 = false
            SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4 = SHX4_4(SHX5_4, SHX6_4)
            SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4)
            SHX3_4 = SHX10_1
            if not SHX3_4 then
              SHX3_4 = RageUI
              SHX3_4 = SHX3_4.CloseAll
              SHX3_4()
              SHX3_4 = GetHashKey
              SHX4_4 = SHX9_1
              SHX3_4 = SHX3_4(SHX4_4)
              while true do
                SHX4_4 = HasModelLoaded
                SHX5_4 = SHX3_4
                SHX4_4 = SHX4_4(SHX5_4)
                if SHX4_4 then
                  break
                end
                SHX4_4 = RequestModel
                SHX5_4 = SHX3_4
                SHX4_4(SHX5_4)
                SHX4_4 = Citizen
                SHX4_4 = SHX4_4.Wait
                SHX5_4 = 10
                SHX4_4(SHX5_4)
              end
              SHX4_4 = HasModelLoaded
              SHX5_4 = SHX3_4
              SHX4_4 = SHX4_4(SHX5_4)
              if SHX4_4 then
                SHX4_4 = true
                SHX10_1 = SHX4_4
                SHX4_4 = DeleteEntity
                SHX5_4 = SHX5_1
                SHX4_4(SHX5_4)
                SHX4_4 = vector3
                SHX5_4 = -914.83026123046
                SHX6_4 = -3287.1538085938
                SHX7_4 = 13.521618843078
                SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
                SHX5_4 = IsThisModelABoat
                SHX6_4 = SHX3_4
                SHX5_4 = SHX5_4(SHX6_4)
                if SHX5_4 then
                  SHX5_4 = vector3
                  SHX6_4 = -330.306
                  SHX7_4 = -3366.949
                  SHX8_4 = 0.953
                  SHX5_4 = SHX5_4(SHX6_4, SHX7_4, SHX8_4)
                  SHX4_4 = SHX5_4
                end
                SHX5_4 = CreateVehicle
                SHX6_4 = SHX3_4
                SHX7_4 = SHX4_4.x
                SHX8_4 = SHX4_4.y
                SHX9_4 = SHX4_4.z
                SHX10_4 = 60.962993621826
                SHX11_4 = false
                SHX12_4 = false
                SHX5_4 = SHX5_4(SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4)
                SHX6_4 = 60
                SHX7_4 = GetEntityCoords
                SHX8_4 = CMG
                SHX8_4 = SHX8_4.getPlayerPed
                SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4 = SHX8_4()
                SHX7_4 = SHX7_4(SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4)
                SHX8_4 = CMG
                SHX8_4 = SHX8_4.initLocalVehicle
                SHX9_4 = SHX5_4
                SHX8_4(SHX9_4)
                SHX8_4 = SetModelAsNoLongerNeeded
                SHX9_4 = SHX3_4
                SHX8_4(SHX9_4)
                SHX8_4 = TaskWarpPedIntoVehicle
                SHX9_4 = CMG
                SHX9_4 = SHX9_4.getPlayerPed
                SHX9_4 = SHX9_4()
                SHX10_4 = SHX5_4
                SHX11_4 = -1
                SHX8_4(SHX9_4, SHX10_4, SHX11_4)
                SHX8_4 = CMG
                SHX8_4 = SHX8_4.setVehicleFuel
                SHX9_4 = SHX5_4
                SHX10_4 = 100
                SHX8_4(SHX9_4, SHX10_4)
                SHX8_4 = tCMG
                SHX8_4 = SHX8_4.notify
                SHX9_4 = "~g~You have 1 minute to test drive this vehicle!"
                SHX8_4(SHX9_4)
                SHX8_4 = 0
                SHX9_4 = 24
                SHX10_4 = 1
                for SHX11_4 = SHX8_4, SHX9_4, SHX10_4 do
                  SHX12_4 = SetVehicleModKit
                  SHX13_4 = SHX5_4
                  SHX14_4 = 0
                  SHX12_4(SHX13_4, SHX14_4)
                  SHX12_4 = RemoveVehicleMod
                  SHX13_4 = SHX5_4
                  SHX14_4 = SHX11_4
                  SHX12_4(SHX13_4, SHX14_4)
                end
                SHX8_4 = SetTimeout
                SHX9_4 = 60000
                function SHX10_4()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_5, SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5, SHX7_5, SHX8_5
                  SHX0_5 = SHX10_1
                  if SHX0_5 then
                    SHX0_5 = DeleteVehicle
                    SHX1_5 = GetVehiclePedIsIn
                    SHX2_5 = CMG
                    SHX2_5 = SHX2_5.getPlayerPed
                    SHX2_5 = SHX2_5()
                    SHX3_5 = false
                    SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5, SHX7_5, SHX8_5 = SHX1_5(SHX2_5, SHX3_5)
                    SHX0_5(SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5, SHX7_5, SHX8_5)
                    SHX0_5 = DeleteVehicle
                    SHX1_5 = SHX5_4
                    SHX0_5(SHX1_5)
                    SHX0_5 = SetEntityCoords
                    SHX1_5 = CMG
                    SHX1_5 = SHX1_5.getPlayerPed
                    SHX1_5 = SHX1_5()
                    SHX2_5 = SHX7_4.x
                    SHX3_5 = SHX7_4.y
                    SHX4_5 = SHX7_4.z
                    SHX5_5 = false
                    SHX6_5 = false
                    SHX7_5 = false
                    SHX8_5 = false
                    SHX0_5(SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5, SHX7_5, SHX8_5)
                    SHX0_5 = TriggerServerEvent
                    SHX1_5 = "2d4f7f8a9f"
                    SHX0_5(SHX1_5)
                    SHX0_5 = false
                    SHX10_1 = SHX0_5
                    SHX0_5 = tCMG
                    SHX0_5 = SHX0_5.notify
                    SHX1_5 = "~b~Test drive over!"
                    SHX0_5(SHX1_5)
                    SHX0_5 = SHX12_1
                    SHX0_5()
                  end
                end
                SHX8_4(SHX9_4, SHX10_4)
                SHX8_4 = Citizen
                SHX8_4 = SHX8_4.CreateThread
                function SHX9_4()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_5, SHX1_5
                  while true do
                    SHX0_5 = SHX10_1
                    if not SHX0_5 then
                      break
                    end
                    SHX0_5 = SHX6_4
                    SHX0_5 = SHX0_5 - 1
                    SHX6_4 = SHX0_5
                    SHX0_5 = Wait
                    SHX1_5 = 1000
                    SHX0_5(SHX1_5)
                  end
                end
                SHX8_4(SHX9_4)
                SHX8_4 = Citizen
                SHX8_4 = SHX8_4.CreateThread
                function SHX9_4()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_5, SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5
                  while true do
                    SHX0_5 = SHX10_1
                    if not SHX0_5 then
                      break
                    end
                    SHX0_5 = SHX6_4
                    if SHX0_5 < 60 then
                      SHX0_5 = CMG
                      SHX0_5 = SHX0_5.DrawText
                      SHX1_5 = 0.8
                      SHX2_5 = 0.9049999999999999
                      SHX3_5 = "~y~"
                      SHX4_5 = SHX6_4
                      SHX5_5 = " seconds left."
                      SHX3_5 = SHX3_5 .. SHX4_5 .. SHX5_5
                      SHX4_5 = 0.35
                      SHX0_5(SHX1_5, SHX2_5, SHX3_5, SHX4_5)
                    end
                    SHX0_5 = Wait
                    SHX1_5 = 0
                    SHX0_5(SHX1_5)
                  end
                end
                SHX8_4(SHX9_4)
                SHX8_4 = Citizen
                SHX8_4 = SHX8_4.CreateThread
                function SHX9_4()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_5, SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5, SHX7_5, SHX8_5, SHX9_5
                  while true do
                    SHX0_5 = SHX10_1
                    if not SHX0_5 then
                      break
                    end
                    SHX0_5 = GetVehiclePedIsIn
                    SHX1_5 = CMG
                    SHX1_5 = SHX1_5.getPlayerPed
                    SHX1_5 = SHX1_5()
                    SHX2_5 = false
                    SHX0_5 = SHX0_5(SHX1_5, SHX2_5)
                    if nil ~= SHX0_5 then
                      SHX1_5 = SHX5_4
                      if SHX1_5 ~= SHX0_5 then
                        SHX1_5 = DeleteVehicle
                        SHX2_5 = GetVehiclePedIsIn
                        SHX3_5 = CMG
                        SHX3_5 = SHX3_5.getPlayerPed
                        SHX3_5 = SHX3_5()
                        SHX4_5 = false
                        SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5, SHX7_5, SHX8_5, SHX9_5 = SHX2_5(SHX3_5, SHX4_5)
                        SHX1_5(SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5, SHX7_5, SHX8_5, SHX9_5)
                        SHX1_5 = DeleteVehicle
                        SHX2_5 = SHX5_4
                        SHX1_5(SHX2_5)
                        SHX1_5 = SetEntityCoords
                        SHX2_5 = CMG
                        SHX2_5 = SHX2_5.getPlayerPed
                        SHX2_5 = SHX2_5()
                        SHX3_5 = SHX7_4.x
                        SHX4_5 = SHX7_4.y
                        SHX5_5 = SHX7_4.z
                        SHX6_5 = false
                        SHX7_5 = false
                        SHX8_5 = false
                        SHX9_5 = false
                        SHX1_5(SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5, SHX7_5, SHX8_5, SHX9_5)
                        SHX1_5 = TriggerServerEvent
                        SHX2_5 = "2d4f7f8a9f"
                        SHX1_5(SHX2_5)
                        SHX1_5 = tCMG
                        SHX1_5 = SHX1_5.notify
                        SHX2_5 = "~b~Test drive over!"
                        SHX1_5(SHX2_5)
                        SHX1_5 = false
                        SHX10_1 = SHX1_5
                        SHX1_5 = SHX12_1
                        SHX1_5()
                      end
                    end
                    SHX1_5 = Wait
                    SHX2_5 = 0
                    SHX1_5(SHX2_5)
                  end
                end
                SHX8_4(SHX9_4)
              end
            end
          end
        end
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      end
    end
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cardealer"
  SHX4_2 = "confirm"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = false
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    SHX0_3 = SHX8_1
    if SHX0_3 then
      SHX0_3 = SHX23_1
      SHX1_3 = SHX8_1
      SHX0_3 = SHX0_3(SHX1_3)
      if SHX0_3 then
        goto SHX_LABEL_10
      end
    end
    SHX0_3 = false
    -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
    ::SHX_LABEL_10::
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Yes"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX5_3 = SHX0_3
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "0f93bb7bac"
        SHX5_4 = SHX4_1
        SHX6_4 = SHX9_1
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX7_3 = RMenu
    SHX8_3 = SHX7_3
    SHX7_3 = SHX7_3.Get
    SHX9_3 = "cardealer"
    SHX10_3 = "mainmenu"
    SHX7_3, SHX8_3, SHX9_3, SHX10_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "No"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX5_3 = true
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = tCMG
        SHX3_4 = SHX3_4.notify
        SHX4_4 = "~y~Cancelled!"
        SHX3_4(SHX4_4)
      end
    end
    SHX7_3 = RMenu
    SHX8_3 = SHX7_3
    SHX7_3 = SHX7_3.Get
    SHX9_3 = "cardealer"
    SHX10_3 = "mainmenu"
    SHX7_3, SHX8_3, SHX9_3, SHX10_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1)
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX7_1
  if SHX0_2 then
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 177
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      while true do
        SHX0_2 = DoesEntityExist
        SHX1_2 = SHX5_1
        SHX0_2 = SHX0_2(SHX1_2)
        if not SHX0_2 then
          break
        end
        SHX0_2 = DeleteVehicle
        SHX1_2 = SHX5_1
        SHX0_2(SHX1_2)
        SHX0_2 = Wait
        SHX1_2 = 50
        SHX0_2(SHX1_2)
      end
      SHX0_2 = 0
      SHX5_1 = SHX0_2
      SHX0_2 = 0
      SHX6_1 = SHX0_2
      SHX0_2 = false
      SHX7_1 = SHX0_2
    end
  end
end
SHX27_1 = CMG
SHX27_1 = SHX27_1.createThreadOnTick
SHX28_1 = SHX26_1
SHX29_1 = "Simeons Preview"
SHX27_1(SHX28_1, SHX29_1)
