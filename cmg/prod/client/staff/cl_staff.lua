-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1
SHX0_1 = false
SHX1_1 = false
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = {}
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX2_2 = SHX2_2 / 200
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = math
  SHX4_2 = SHX4_2.sin
  SHX5_2 = SHX2_2 * SHX0_2
  SHX5_2 = SHX5_2 + 0
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2 * 127
  SHX4_2 = SHX4_2 + 128
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.r = SHX3_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = math
  SHX4_2 = SHX4_2.sin
  SHX5_2 = SHX2_2 * SHX0_2
  SHX5_2 = SHX5_2 + 2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2 * 127
  SHX4_2 = SHX4_2 + 128
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.g = SHX3_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = math
  SHX4_2 = SHX4_2.sin
  SHX5_2 = SHX2_2 * SHX0_2
  SHX5_2 = SHX5_2 + 4
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2 * 127
  SHX4_2 = SHX4_2 + 128
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.b = SHX3_2
  return SHX1_2
end
SHX3_1 = CMG
SHX3_1 = SHX3_1.registerDevMenuState
SHX4_1 = "delgun"
SHX5_1 = {}
SHX5_1.captureEntity = false
SHX3_1 = SHX3_1(SHX4_1, SHX5_1)
SHX4_1 = RegisterCommand
SHX5_1 = "delgun"
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "admin.tickets"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = SHX0_1
    SHX0_2 = not SHX0_2
    SHX0_1 = SHX0_2
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = 1953687840
    SHX2_2 = SHX0_1
    if SHX2_2 then
      SHX2_2 = HasPedGotWeapon
      SHX3_2 = SHX0_2
      SHX4_2 = SHX1_2
      SHX5_2 = false
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_1 = SHX2_2
      SHX2_2 = GiveWeaponToPed
      SHX3_2 = SHX0_2
      SHX4_2 = SHX1_2
      SHX5_2 = 0
      SHX6_2 = false
      SHX7_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX2_2 = drawNativeText
      SHX3_2 = "~b~Aim ~w~at an object and press ~b~Enter ~w~to delete it. ~r~Have fun!"
      SHX2_2(SHX3_2)
      SHX2_2 = drawNativeNotification
      SHX3_2 = "Don't forget to use ~b~/delgun ~w~to disable the delete gun!"
      SHX2_2(SHX3_2)
    else
      SHX2_2 = SHX1_1
      if not SHX2_2 then
        SHX2_2 = RemoveWeaponFromPed
        SHX3_2 = SHX0_2
        SHX4_2 = SHX1_2
        SHX2_2(SHX3_2, SHX4_2)
      end
      SHX2_2 = false
      SHX1_1 = SHX2_2
    end
  end
end
SHX7_1 = false
SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX4_1 = RegisterNetEvent
SHX5_1 = "cff9725e37"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = drawNativeNotification
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = 0
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2
  SHX1_2 = SHX0_1
  if SHX1_2 then
    SHX1_2 = SHX4_1
    SHX1_2 = SHX1_2 + 1
    SHX4_1 = SHX1_2
    SHX1_2 = SHX4_1
    SHX2_2 = 1000
    if SHX1_2 > SHX2_2 then
      SHX1_2 = 0
      SHX4_1 = SHX1_2
    end
    SHX1_2 = DisableControlAction
    SHX2_2 = 1
    SHX3_2 = 18
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisablePlayerFiring
    SHX2_2 = PlayerId
    SHX2_2 = SHX2_2()
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = IsPlayerFreeAiming
    SHX2_2 = SHX0_2.playerId
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = GetGameplayCamCoord
      SHX1_2 = SHX1_2()
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.rotationToDirection
      SHX3_2 = GetGameplayCamRot
      SHX4_2 = 2
      SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2 = SHX3_2(SHX4_2)
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
      SHX2_2 = SHX2_2 * 1000.0
      SHX2_2 = SHX1_2 + SHX2_2
      SHX3_2 = _ENV
      SHX4_2 = "StartExpensiveSynchronousShapeTestLosProbe"
      SHX3_2 = SHX3_2[SHX4_2]
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX7_2 = SHX2_2.x
      SHX8_2 = SHX2_2.y
      SHX9_2 = SHX2_2.z
      SHX10_2 = 18
      SHX11_2 = 0
      SHX12_2 = 7
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX4_2 = GetShapeTestResult
      SHX5_2 = SHX3_2
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2)
      SHX9_2 = DoesEntityExist
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if SHX9_2 then
        SHX9_2 = SHX3_1.captureEntity
        if SHX9_2 then
          SHX9_2 = IsDisabledControlJustPressed
          SHX10_2 = 0
          SHX11_2 = 18
          SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
          if SHX9_2 then
            SHX9_2 = print
            SHX10_2 = string
            SHX10_2 = SHX10_2.format
            SHX11_2 = "{handle = %s, coords = %s, rotation = %s, heading = %s, modelHash = %s, modelName = \"%s\"}"
            SHX12_2 = SHX8_2
            SHX13_2 = GetEntityCoords
            SHX14_2 = SHX8_2
            SHX13_2 = SHX13_2(SHX14_2)
            SHX14_2 = GetEntityRotation
            SHX15_2 = SHX8_2
            SHX16_2 = 2
            SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
            SHX15_2 = GetEntityHeading
            SHX16_2 = SHX8_2
            SHX15_2 = SHX15_2(SHX16_2)
            SHX16_2 = GetEntityModel
            SHX17_2 = SHX8_2
            SHX16_2 = SHX16_2(SHX17_2)
            SHX17_2 = GetEntityArchetypeName
            SHX18_2 = SHX8_2
            SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2 = SHX17_2(SHX18_2)
            SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
            SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
          end
        end
        SHX9_2 = NetworkGetEntityIsNetworked
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        if SHX9_2 then
          SHX9_2 = GetEntityCoords
          SHX10_2 = SHX8_2
          SHX9_2 = SHX9_2(SHX10_2)
          SHX10_2 = SHX2_1
          SHX11_2 = 0.5
          SHX10_2 = SHX10_2(SHX11_2)
          SHX11_2 = DrawMarker
          SHX12_2 = 1
          SHX13_2 = SHX9_2.x
          SHX14_2 = SHX9_2.y
          SHX15_2 = SHX9_2.z
          SHX15_2 = SHX15_2 - 1.02
          SHX16_2 = 0
          SHX17_2 = 0
          SHX18_2 = 0
          SHX19_2 = 0
          SHX20_2 = 0
          SHX21_2 = 0
          SHX22_2 = 0.7
          SHX23_2 = 0.7
          SHX24_2 = 1.5
          SHX25_2 = SHX10_2.r
          SHX26_2 = SHX10_2.g
          SHX27_2 = SHX10_2.b
          SHX28_2 = 200
          SHX29_2 = false
          SHX30_2 = false
          SHX31_2 = 2
          SHX32_2 = false
          SHX33_2 = nil
          SHX34_2 = nil
          SHX35_2 = false
          SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
          SHX11_2 = GetEntityModel
          SHX12_2 = SHX8_2
          SHX11_2 = SHX11_2(SHX12_2)
          SHX12_2 = CMG
          SHX12_2 = SHX12_2.getVehicleIdFromModel
          SHX13_2 = SHX11_2
          SHX12_2 = SHX12_2(SHX13_2)
          if SHX12_2 then
            SHX13_2 = CMG
            SHX13_2 = SHX13_2.DrawText
            SHX14_2 = 0.02
            SHX15_2 = 0.5
            SHX16_2 = "~y~Vehicle: "
            SHX17_2 = SHX12_2
            SHX16_2 = SHX16_2 .. SHX17_2
            SHX17_2 = 0.5
            SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
          end
          SHX13_2 = true
          SHX14_2 = GetEntityType
          SHX15_2 = SHX8_2
          SHX14_2 = SHX14_2(SHX15_2)
          if 2 == SHX14_2 then
            SHX14_2 = -1
            SHX15_2 = GetVehicleModelNumberOfSeats
            SHX16_2 = GetEntityModel
            SHX17_2 = SHX8_2
            SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2 = SHX16_2(SHX17_2)
            SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
            SHX15_2 = SHX15_2 - 2
            SHX16_2 = 1
            for SHX17_2 = SHX14_2, SHX15_2, SHX16_2 do
              SHX18_2 = GetPedInVehicleSeat
              SHX19_2 = SHX8_2
              SHX20_2 = SHX17_2
              SHX18_2 = SHX18_2(SHX19_2, SHX20_2)
              if 0 ~= SHX18_2 then
                SHX13_2 = false
              end
            end
          end
          SHX14_2 = IsDisabledControlJustPressed
          SHX15_2 = 1
          SHX16_2 = 18
          SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
          if SHX14_2 and SHX13_2 then
            SHX14_2 = NetworkGetNetworkIdFromEntity
            SHX15_2 = SHX8_2
            SHX14_2 = SHX14_2(SHX15_2)
            SHX15_2 = TriggerServerEvent
            SHX16_2 = "1a4befe5c3"
            SHX17_2 = SHX14_2
            SHX15_2(SHX16_2, SHX17_2)
            SHX15_2 = GetEntityType
            SHX16_2 = SHX8_2
            SHX15_2 = SHX15_2(SHX16_2)
            if 2 == SHX15_2 then
              SHX15_2 = SetEntityAsMissionEntity
              SHX16_2 = SHX8_2
              SHX17_2 = false
              SHX18_2 = true
              SHX15_2(SHX16_2, SHX17_2, SHX18_2)
              SHX15_2 = DeleteVehicle
              SHX16_2 = SHX8_2
              SHX15_2(SHX16_2)
            end
          end
        end
      end
    end
  end
end
SHX6_1 = RegisterNetEvent
SHX7_1 = "b452e1f215"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getObjectId
  SHX2_2 = SHX0_2
  SHX3_2 = "deletePropClient"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = DeleteEntity
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.createThreadOnTick
SHX7_1 = SHX5_1
SHX8_1 = "Staff Delgun"
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = {}
SHX7_1 = CMG
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX6_1
  SHX0_2 = SHX1_2[SHX0_2]
  if SHX0_2 then
    SHX0_2 = true
    return SHX0_2
  else
    SHX0_2 = false
    return SHX0_2
  end
end
SHX7_1.isLocalPlayerHidden = SHX8_1
SHX7_1 = CMG
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientUserId
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX2_2 = SHX6_1
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.isDeveloper
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.getClientUserId
        SHX2_2 = SHX2_2()
        if SHX2_2 ~= SHX0_2 then
          SHX2_2 = true
          return SHX2_2
      end
    end
  end
  else
    SHX2_2 = false
    return SHX2_2
  end
end
SHX7_1.isUserHidden = SHX8_1
SHX7_1 = RegisterNetEvent
SHX8_1 = "77c81e8d86"
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX6_1 = SHX0_2
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = CMG
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  return SHX0_2
end
SHX7_1.isUsingDelGun = SHX8_1
SHX7_1 = CMG
SHX7_1 = SHX7_1.registerDevMenuItems
SHX8_1 = "Editors"
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Capture Entities In Delgun"
  SHX2_2 = "Output entities captured by the delgun to the console."
  SHX3_2 = SHX3_1.captureEntity
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX3_1.captureEntity = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX7_1(SHX8_1, SHX9_1)
