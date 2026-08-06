-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
SHX0_1 = false
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = -1746576111
  SHX2_2(SHX3_2)
  SHX2_2 = CreateVehicle
  SHX3_2 = -1746576111
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX7_2 = SHX1_2
  SHX8_2 = false
  SHX9_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.initLocalVehicle
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = SetVehicleEngineOn
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SetHeliBladesFullSpeed
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetEntityCollision
  SHX4_2 = SHX2_2
  SHX5_2 = false
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetModelAsNoLongerNeeded
  SHX4_2 = -1746576111
  SHX3_2(SHX4_2)
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  while true do
    SHX4_2 = GetGameTimer
    SHX4_2 = SHX4_2()
    SHX4_2 = SHX4_2 - SHX3_2
    SHX5_2 = 30000
    if not (SHX4_2 < SHX5_2) then
      break
    end
    SHX4_2 = GetEntityCoords
    SHX5_2 = SHX2_2
    SHX6_2 = true
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX5_2 = GetEntityForwardVector
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = GetFrameTime
    SHX6_2 = SHX6_2()
    SHX5_2 = SHX5_2 * SHX6_2
    SHX5_2 = SHX5_2 * 60.0
    SHX4_2 = SHX4_2 + SHX5_2
    SHX5_2 = SetEntityCoordsNoOffset
    SHX6_2 = SHX2_2
    SHX7_2 = SHX4_2.x
    SHX8_2 = SHX4_2.y
    SHX9_2 = SHX4_2.z
    SHX10_2 = true
    SHX11_2 = false
    SHX12_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX4_2 = DeleteEntity
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
end
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    SHX0_2 = true
    SHX0_1 = SHX0_2
    SHX0_2 = CreateThread
    function SHX1_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
      SHX0_3 = GiveWeaponToPed
      SHX1_3 = PlayerPedId
      SHX1_3 = SHX1_3()
      SHX2_3 = -72657034
      SHX3_3 = 0
      SHX4_3 = false
      SHX5_3 = false
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX0_3 = DoScreenFadeOut
      SHX1_3 = 3000
      SHX0_3(SHX1_3)
      while true do
        SHX0_3 = IsScreenFadedOut
        SHX0_3 = SHX0_3()
        if SHX0_3 then
          break
        end
        SHX0_3 = Wait
        SHX1_3 = 0
        SHX0_3(SHX1_3)
      end
      SHX0_3 = GetEntityCoords
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.getPlayerPed
      SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX1_3()
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      SHX1_3 = SetEntityCoords
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.getPlayerPed
      SHX2_3 = SHX2_3()
      SHX3_3 = SHX0_3.x
      SHX4_3 = SHX0_3.y
      SHX5_3 = SHX0_3.z
      SHX5_3 = SHX5_3 + 1000.0
      SHX6_3 = false
      SHX7_3 = false
      SHX8_3 = false
      SHX9_3 = false
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.CreateThread
      function SHX2_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4
        SHX0_4 = SHX1_1
        SHX1_4 = SHX0_3
        SHX2_4 = vector3
        SHX3_4 = 0.0
        SHX4_4 = 0.0
        SHX5_4 = 1002.5
        SHX2_4 = SHX2_4(SHX3_4, SHX4_4, SHX5_4)
        SHX1_4 = SHX1_4 + SHX2_4
        SHX2_4 = GetEntityHeading
        SHX3_4 = PlayerPedId
        SHX3_4, SHX4_4, SHX5_4 = SHX3_4()
        SHX2_4, SHX3_4, SHX4_4, SHX5_4 = SHX2_4(SHX3_4, SHX4_4, SHX5_4)
        SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4)
      end
      SHX1_3(SHX2_3)
      SHX1_3 = DoScreenFadeIn
      SHX2_3 = 2000
      SHX1_3(SHX2_3)
      SHX1_3 = Wait
      SHX2_3 = 2000
      SHX1_3(SHX2_3)
      SHX1_3 = SetEntityProofs
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.getPlayerPed
      SHX2_3 = SHX2_3()
      SHX3_3 = true
      SHX4_3 = true
      SHX5_3 = true
      SHX6_3 = true
      SHX7_3 = true
      SHX8_3 = false
      SHX9_3 = false
      SHX10_3 = false
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
      while true do
        SHX1_3 = SHX0_1
        if SHX1_3 then
          SHX1_3 = IsPedInParachuteFreeFall
          SHX2_3 = CMG
          SHX2_3 = SHX2_3.getPlayerPed
          SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX2_3()
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
          if SHX1_3 then
            SHX1_3 = HasEntityCollidedWithAnything
            SHX2_3 = CMG
            SHX2_3 = SHX2_3.getPlayerPed
            SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX2_3()
            SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
            if not SHX1_3 then
              SHX1_3 = ApplyForceToEntity
              SHX2_3 = CMG
              SHX2_3 = SHX2_3.getPlayerPed
              SHX2_3 = SHX2_3()
              SHX3_3 = 1
              SHX4_3 = 0.0
              SHX5_3 = 200.0
              SHX6_3 = 2.5
              SHX7_3 = 0.0
              SHX8_3 = 0.0
              SHX9_3 = 0.0
              SHX10_3 = 0
              SHX11_3 = true
              SHX12_3 = false
              SHX13_3 = false
              SHX14_3 = false
              SHX15_3 = true
              SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
          end
          else
            SHX1_3 = false
            SHX0_1 = SHX1_3
          end
        else
          break
        end
        SHX1_3 = Wait
        SHX2_3 = 0
        SHX1_3(SHX2_3)
      end
      SHX1_3 = Wait
      SHX2_3 = 3000
      SHX1_3(SHX2_3)
      SHX1_3 = SetEntityProofs
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.getPlayerPed
      SHX2_3 = SHX2_3()
      SHX3_3 = false
      SHX4_3 = false
      SHX5_3 = false
      SHX6_3 = false
      SHX7_3 = false
      SHX8_3 = false
      SHX9_3 = false
      SHX10_3 = false
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
    end
    SHX0_2(SHX1_2)
  end
end
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = -753.74310302734
SHX6_1 = -1510.6815185547
SHX7_1 = 5.0141487121582
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = vector3
SHX6_1 = -2164.2592773438
SHX7_1 = 5140.615234375
SHX8_1 = 2.82568359375
SHX5_1, SHX6_1, SHX7_1, SHX8_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX3_1[4] = SHX7_1
SHX3_1[5] = SHX8_1
SHX4_1 = AddEventHandler
SHX5_1 = "CMG:onClientSpawn"
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_PICKUP~ to go parachuting! (\194\1635,000)"
      SHX0_3(SHX1_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 1
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.canAnim
        SHX0_3 = SHX0_3()
        if SHX0_3 then
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.getPlayerCombatTimer
          SHX0_3 = SHX0_3()
          if 0 == SHX0_3 then
            SHX0_3 = CMG
            SHX0_3 = SHX0_3.TriggerServerCallback
            SHX1_3 = "49e51ddb66"
            SHX2_3 = 5000
            SHX3_3 = "parachuting"
            SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
            if SHX0_3 then
              SHX1_3 = SHX2_1
              SHX1_3()
            end
          end
        end
      end
    end
    SHX5_2 = pairs
    SHX6_2 = SHX3_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "parachute_"
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2
      SHX14_2 = 1.5
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.addMarker
      SHX12_2 = SHX10_2.x
      SHX13_2 = SHX10_2.y
      SHX14_2 = SHX10_2.z
      SHX15_2 = 1.0
      SHX16_2 = 1.0
      SHX17_2 = 1.0
      SHX18_2 = 255
      SHX19_2 = 0
      SHX20_2 = 0
      SHX21_2 = 170
      SHX22_2 = 50
      SHX23_2 = 40
      SHX24_2 = false
      SHX25_2 = false
      SHX26_2 = true
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    end
  end
end
SHX4_1(SHX5_1, SHX6_1)
