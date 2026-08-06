-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1
SHX0_1 = vector3
SHX1_1 = -1033.1064453125
SHX2_1 = -2730.1145019531
SHX3_1 = 13.756633758545
SHX0_1 = SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX1_1 = vector3
SHX2_1 = -1036.5452880859
SHX3_1 = -2735.7922363281
SHX4_1 = 13.756631851196
SHX1_1 = SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX2_1 = vector3
SHX3_1 = -1056.6693115234
SHX4_1 = -2695.5822753906
SHX5_1 = -8.2877798080444
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX3_1 = vector3
SHX4_1 = 103.13236236572
SHX5_1 = -1710.0469970703
SHX6_1 = 29.128242492676
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX4_1 = {}
SHX5_1 = {}
SHX6_1 = vector3
SHX7_1 = 95.41603088379
SHX8_1 = -1727.3582763672
SHX9_1 = 28.85818862915
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX7_1 = vector3
SHX8_1 = 95.41603088379
SHX9_1 = -1727.3582763672
SHX10_1 = 28.85818862915
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX8_1 = 50.0
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX5_1[3] = SHX8_1
SHX6_1 = {}
SHX7_1 = vector3
SHX8_1 = 94.067138671875
SHX9_1 = -1740.6694335938
SHX10_1 = 29.305875778198
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX8_1 = vector3
SHX9_1 = 94.067138671875
SHX10_1 = -1740.6694335938
SHX11_1 = 28.305875778198
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = 320.0
SHX6_1[1] = SHX7_1
SHX6_1[2] = SHX8_1
SHX6_1[3] = SHX9_1
SHX7_1 = {}
SHX8_1 = vector3
SHX9_1 = 96.752075195312
SHX10_1 = -1745.4302978516
SHX11_1 = 29.315612792968
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = vector3
SHX10_1 = 96.752075195312
SHX11_1 = -1745.4302978516
SHX12_1 = 28.315612792968
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = 320.0
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX7_1[3] = SHX10_1
SHX8_1 = {}
SHX9_1 = vector3
SHX10_1 = 103.90421295166
SHX11_1 = -1751.818359375
SHX12_1 = 29.321237564086
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = vector3
SHX11_1 = 103.90421295166
SHX12_1 = -1751.818359375
SHX13_1 = 28.321237564086
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = 320.0
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX8_1[3] = SHX11_1
SHX9_1 = {}
SHX10_1 = vector3
SHX11_1 = 108.07794952392
SHX12_1 = -1756.5098876954
SHX13_1 = 29.360332489014
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = vector3
SHX12_1 = 108.07794952392
SHX13_1 = -1756.5098876954
SHX14_1 = 28.360332489014
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = 320.0
SHX9_1[1] = SHX10_1
SHX9_1[2] = SHX11_1
SHX9_1[3] = SHX12_1
SHX10_1 = {}
SHX11_1 = vector3
SHX12_1 = 111.3772354126
SHX13_1 = -1740.8269042968
SHX14_1 = 28.854513168334
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = vector3
SHX13_1 = 111.3772354126
SHX14_1 = -1740.8269042968
SHX15_1 = 28.854513168334
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = 50.0
SHX10_1[1] = SHX11_1
SHX10_1[2] = SHX12_1
SHX10_1[3] = SHX13_1
SHX11_1 = {}
SHX12_1 = vector3
SHX13_1 = 97.749137878418
SHX14_1 = -1728.8994140625
SHX15_1 = 28.873386383056
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = vector3
SHX14_1 = 97.749137878418
SHX15_1 = -1728.8994140625
SHX16_1 = 28.873386383056
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = 50.0
SHX11_1[1] = SHX12_1
SHX11_1[2] = SHX13_1
SHX11_1[3] = SHX14_1
SHX4_1[1] = SHX5_1
SHX4_1[2] = SHX6_1
SHX4_1[3] = SHX7_1
SHX4_1[4] = SHX8_1
SHX4_1[5] = SHX9_1
SHX4_1[6] = SHX10_1
SHX4_1[7] = SHX11_1
SHX5_1 = false
SHX6_1 = false
SHX7_1 = nil
SHX8_1 = nil
SHX9_1 = nil
SHX10_1 = "INVALID"
SHX11_1 = 0
SHX12_1 = 0
SHX13_1 = false
SHX14_1 = nil
SHX15_1 = DecorRegister
SHX16_1 = "91dff835ca"
SHX17_1 = 1
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "CMG:initMoney"
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX12_1 = SHX1_2
end
SHX15_1(SHX16_1, SHX17_1)
function SHX15_1(SHX0_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = print
  SHX2_2 = "[Tutorial] "
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX3_2 = ...
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.transactionType = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = CreateCheckpoint
  SHX3_2 = 1
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX7_2 = SHX1_2.x
  SHX8_2 = SHX1_2.y
  SHX9_2 = SHX1_2.z
  SHX10_2 = 2.0
  SHX11_2 = 204
  SHX12_2 = 204
  SHX13_2 = 1
  SHX14_2 = 100
  SHX15_2 = 0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = AddBlipForCoord
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  while true do
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerCoords
    SHX4_2 = SHX4_2()
    SHX4_2 = SHX4_2 - SHX0_2
    SHX4_2 = #SHX4_2
    if not (SHX4_2 > 4.0) then
      break
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = RemoveBlip
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = DeleteCheckpoint
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
end
function SHX18_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = "metrotrain"
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = "s_m_m_lsmetro_01"
  SHX3_2(SHX4_2)
  SHX3_2 = 0
  while true do
    SHX4_2 = CreateMissionTrain
    SHX5_2 = 27
    SHX6_2 = SHX0_2
    SHX7_2 = SHX1_2
    SHX8_2 = SHX2_2
    SHX9_2 = true
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 1000
    SHX5_2(SHX6_2)
    SHX5_2 = DoesEntityExist
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = NetworkGetEntityIsNetworked
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = NetworkGetNetworkIdFromEntity
        SHX6_2 = SHX4_2
        SHX5_2 = SHX5_2(SHX6_2)
        if 0 ~= SHX5_2 then
          SHX9_1 = SHX4_2
          break
      end
    end
    else
      SHX5_2 = print
      SHX6_2 = "[Tutorial] Failed to create train, retrying."
      SHX5_2(SHX6_2)
      SHX5_2 = DeleteMissionTrain
      SHX6_2 = SHX4_2
      SHX5_2(SHX6_2)
      SHX5_2 = pairs
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.getAllVehicles
      SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX6_2()
      SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
        SHX11_2 = IsThisModelATrain
        SHX12_2 = GetEntityModel
        SHX13_2 = SHX10_2
        SHX12_2, SHX13_2 = SHX12_2(SHX13_2)
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
        if SHX11_2 then
          SHX11_2 = DeleteEntity
          SHX12_2 = SHX10_2
          SHX11_2(SHX12_2)
        end
      end
      SHX3_2 = SHX3_2 + 1
      if SHX3_2 > 5 then
        return
      end
    end
  end
  SHX4_2 = CreatePedInsideVehicle
  SHX5_2 = SHX9_1
  SHX6_2 = 0
  SHX7_2 = 1985653476
  SHX8_2 = -1
  SHX9_2 = false
  SHX10_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = SetCanClimbOnEntity
  SHX5_2 = SHX9_1
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = AddBlipForEntity
  SHX5_2 = SHX9_1
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SetBlipSprite
  SHX6_2 = SHX4_2
  SHX7_2 = 795
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetBlipColour
  SHX6_2 = SHX4_2
  SHX7_2 = 3
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = 868868440
  SHX5_2(SHX6_2)
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = 1985653476
  SHX5_2(SHX6_2)
end
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SetEntityCoords
  SHX2_2 = SHX0_2
  SHX3_2 = 146.50889587402
  SHX4_2 = -1752.2452392578
  SHX5_2 = 29.243356704712
  SHX6_2 = true
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 2000
  SHX1_2(SHX2_2)
  SHX1_2 = SHX18_1
  SHX2_2 = 177.9623260498
  SHX3_2 = -1774.7336425781
  SHX4_2 = 29.108749389648
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetEntityHeading
  SHX2_2 = SHX0_2
  SHX3_2 = GetEntityHeading
  SHX4_2 = SHX9_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX3_2(SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX1_2 = AttachEntityToEntity
  SHX2_2 = SHX0_2
  SHX3_2 = SHX9_1
  SHX4_2 = -1
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 1.83
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = 0
  SHX16_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX1_2 = CreateCamWithParams
  SHX2_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX3_2 = 116.66564178467
  SHX4_2 = -1724.0200195312
  SHX5_2 = 31.544952392578
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = GetGameplayCamFov
  SHX9_2 = SHX9_2()
  SHX10_2 = true
  SHX11_2 = 2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX2_2 = PointCamAtEntity
  SHX3_2 = SHX1_2
  SHX4_2 = SHX9_1
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = SetCamActive
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = RenderScriptCams
  SHX3_2 = true
  SHX4_2 = true
  SHX5_2 = 0
  SHX6_2 = true
  SHX7_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = "ARRIVE_TAXI"
  SHX10_1 = SHX2_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 1000
  SHX2_2(SHX3_2)
  SHX2_2 = SHX16_1
  SHX3_2 = "tubearriving"
  SHX2_2(SHX3_2)
  SHX2_2 = DoScreenFadeIn
  SHX3_2 = 1000
  SHX2_2(SHX3_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 1000
  SHX2_2(SHX3_2)
  while true do
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX9_1
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      break
    end
    SHX2_2 = GetTrainDoorOpenRatio
    SHX3_2 = SHX9_1
    SHX4_2 = 0
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = 0.95
    if not (SHX2_2 < SHX3_2) then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = RenderScriptCams
  SHX3_2 = false
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = false
  SHX7_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = SetCamActive
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = DestroyCam
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.showAllDisplays
  SHX3_2 = "tutorial"
  SHX2_2(SHX3_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX9_1
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = RemoveBlip
  SHX3_2 = GetBlipFromEntity
  SHX4_2 = SHX9_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX3_2(SHX4_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX2_2 = DetachEntity
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetPlayerControl
  SHX3_2 = PlayerId
  SHX3_2 = SHX3_2()
  SHX4_2 = true
  SHX5_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SetEntityCoordsNoOffset
  SHX3_2 = SHX0_2
  SHX4_2 = 101.46366882324
  SHX5_2 = -1711.6800537109
  SHX6_2 = 30.114803314209
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX2_2 = SetEntityHeading
  SHX3_2 = SHX0_2
  SHX4_2 = 142.655
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetEntityInvincible
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  while true do
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX9_1
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      break
    end
    SHX0_2 = GetTrainDoorOpenRatio
    SHX1_2 = SHX9_1
    SHX2_2 = 0
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX1_2 = 0.05
    if not (SHX0_2 > SHX1_2) then
      break
    end
    SHX0_2 = SetCanClimbOnEntity
    SHX1_2 = SHX9_1
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = _ENV
    SHX2_2 = "StartExpensiveSynchronousShapeTestLosProbe"
    SHX1_2 = SHX1_2[SHX2_2]
    SHX2_2 = SHX0_2.x
    SHX3_2 = SHX0_2.y
    SHX4_2 = SHX0_2.z
    SHX5_2 = SHX0_2.x
    SHX6_2 = SHX0_2.y
    SHX7_2 = SHX0_2.z
    SHX7_2 = SHX7_2 - 5.0
    SHX8_2 = -1
    SHX9_2 = PlayerPedId
    SHX9_2 = SHX9_2()
    SHX10_2 = 4
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX2_2 = GetShapeTestResult
    SHX3_2 = SHX1_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2)
    SHX7_2 = GetFrameTime
    SHX7_2 = SHX7_2()
    if SHX3_2 then
      SHX8_2 = SHX9_1
      if SHX6_2 == SHX8_2 then
        SHX8_2 = DisableControlAction
        SHX9_2 = 0
        SHX10_2 = 22
        SHX11_2 = true
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = SetTrainDoorOpenRatio
        SHX9_2 = SHX9_1
        SHX10_2 = 0
        SHX11_2 = GetTrainDoorOpenRatio
        SHX12_2 = SHX9_1
        SHX13_2 = 0
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
        SHX12_2 = 0.25 * SHX7_2
        SHX11_2 = SHX11_2 - SHX12_2
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = SetTrainDoorOpenRatio
        SHX9_2 = SHX9_1
        SHX10_2 = 2
        SHX11_2 = GetTrainDoorOpenRatio
        SHX12_2 = SHX9_1
        SHX13_2 = 2
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
        SHX12_2 = 0.25 * SHX7_2
        SHX11_2 = SHX11_2 - SHX12_2
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = "PREPARE_DEPART_INTRO"
        SHX10_1 = SHX8_2
    end
    else
      SHX8_2 = "ARRIVE_INTRO"
      SHX10_1 = SHX8_2
    end
    SHX8_2 = subtitleText
    SHX9_2 = "Enter the ~b~train~w~"
    SHX8_2(SHX9_2)
    SHX8_2 = Citizen
    SHX8_2 = SHX8_2.Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hideAllDisplays
  SHX1_2 = "tutorial"
  SHX0_2(SHX1_2)
  SHX0_2 = SetPlayerControl
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX3_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = CreateCamWithParams
  SHX1_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX2_2 = -1071.7298583984
  SHX3_2 = -2706.7395019531
  SHX4_2 = -5.5527291297913
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = GetGameplayCamFov
  SHX8_2 = SHX8_2()
  SHX9_2 = true
  SHX10_2 = 2
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX1_2 = PointCamAtEntity
  SHX2_2 = SHX0_2
  SHX3_2 = SHX9_1
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2 = SetCamActive
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = RenderScriptCams
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = 0
  SHX5_2 = true
  SHX6_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = "DEPART_INTRO"
  SHX10_1 = SHX1_2
  SHX1_2 = SHX16_1
  SHX2_2 = "tubeleaving"
  SHX1_2(SHX2_2)
  SHX1_2 = SetEntityInvincible
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 6000
  SHX1_2(SHX2_2)
  SHX1_2 = DoScreenFadeOut
  SHX2_2 = 1000
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1000
  SHX1_2(SHX2_2)
  SHX1_2 = RenderScriptCams
  SHX2_2 = false
  SHX3_2 = false
  SHX4_2 = 0
  SHX5_2 = false
  SHX6_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetCamActive
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = DestroyCam
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = GetPedInVehicleSeat
  SHX2_2 = SHX9_1
  SHX3_2 = -1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = DeleteEntity
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = DeleteMissionTrain
  SHX3_2 = SHX9_1
  SHX2_2(SHX3_2)
  SHX2_2 = DeleteEntity
  SHX3_2 = SHX9_1
  SHX2_2(SHX3_2)
  SHX2_2 = nil
  SHX9_1 = SHX2_2
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "3d47766955"
  SHX2_2 = "FOLLOW THE YELLOW MARKERS!"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX0_2 = SHX0_2.z
  if SHX0_2 > 8.0 then
    SHX0_2 = "Yo welcome brother Im CJ and Im gonna help you settle in"
    SHX7_1 = SHX0_2
    SHX0_2 = SHX17_1
    SHX1_2 = vector3
    SHX2_2 = -1040.8200683594
    SHX3_2 = -2742.2243652344
    SHX4_2 = 12.5
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = vector3
    SHX3_2 = -1054.2639160156
    SHX4_2 = -2766.0249023438
    SHX5_2 = 3.0
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  end
  SHX0_2 = "You are at Heathrow Airport make your way to the tube station and get on the damn tube"
  SHX7_1 = SHX0_2
  SHX0_2 = SHX17_1
  SHX1_2 = vector3
  SHX2_2 = -1054.2639160156
  SHX3_2 = -2766.0249023438
  SHX4_2 = 3.0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = vector3
  SHX3_2 = -1032.3704833984
  SHX4_2 = -2773.8217773438
  SHX5_2 = 3.0
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = "You can get your phone up by pressing ~y~[K]~w~ and close it with ~y~[K]~w~"
  SHX7_1 = SHX0_2
  SHX0_2 = SHX17_1
  SHX1_2 = vector3
  SHX2_2 = -1032.3704833984
  SHX3_2 = -2773.8217773438
  SHX4_2 = 3.0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = vector3
  SHX3_2 = -1014.4043579102
  SHX4_2 = -2752.3588867188
  SHX5_2 = -0.5
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = "You can open your Inventory with ~y~[L]~w~ and close it with ~y~[L]~w~"
  SHX7_1 = SHX0_2
  SHX0_2 = SHX17_1
  SHX1_2 = vector3
  SHX2_2 = -1014.4043579102
  SHX3_2 = -2752.3588867188
  SHX4_2 = -0.5
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = vector3
  SHX3_2 = -1061.8685302734
  SHX4_2 = -2717.7609863282
  SHX5_2 = -0.5
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = "Follow the markers to get on the damn tube!"
  SHX7_1 = SHX0_2
  SHX0_2 = SHX17_1
  SHX1_2 = vector3
  SHX2_2 = -1061.8685302734
  SHX3_2 = -2717.7609863282
  SHX4_2 = -0.5
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = vector3
  SHX3_2 = -1075.8397216796
  SHX4_2 = -2728.1538085938
  SHX5_2 = -0.5
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = nil
  SHX7_1 = SHX0_2
  SHX0_2 = SHX16_1
  SHX1_2 = "tubearriving"
  SHX0_2(SHX1_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThreadNow
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX18_1
    SHX1_3 = -1135.8150634766
    SHX2_3 = -2806.2873535156
    SHX3_3 = -8.3283023834229
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = "ARRIVE_INTRO"
    SHX10_1 = SHX0_3
  end
  SHX0_2(SHX1_2)
  SHX0_2 = SHX17_1
  SHX1_2 = vector3
  SHX2_2 = -1075.8397216796
  SHX3_2 = -2728.1538085938
  SHX4_2 = -0.5
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = vector3
  SHX3_2 = -1080.8995361328
  SHX4_2 = -2715.8703613282
  SHX5_2 = -0.5
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = "Hurry up fool!"
  SHX7_1 = SHX0_2
  SHX0_2 = SHX17_1
  SHX1_2 = vector3
  SHX2_2 = -1080.8995361328
  SHX3_2 = -2715.8703613282
  SHX4_2 = -0.5
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = vector3
  SHX3_2 = -1063.7435302734
  SHX4_2 = -2699.1303710938
  SHX5_2 = -9.4100732803344
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = nil
  SHX7_1 = SHX0_2
  SHX0_2 = SHX17_1
  SHX1_2 = vector3
  SHX2_2 = -1063.7435302734
  SHX3_2 = -2699.1303710938
  SHX4_2 = -8.4100732803344
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = vector3
  SHX3_2 = -1063.7435302734
  SHX4_2 = -2699.1303710938
  SHX5_2 = -8.4100732803344
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  while true do
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX9_1
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      break
    end
    SHX0_2 = GetTrainDoorOpenRatio
    SHX1_2 = SHX9_1
    SHX2_2 = 0
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX1_2 = 0.95
    if not (SHX0_2 < SHX1_2) then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    if not (SHX0_2 > SHX2_2) then
      break
    end
    SHX2_2 = DisableAllControlActions
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = 1
    SHX3_2 = 6
    SHX4_2 = 1
    for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
      SHX6_2 = EnableControlAction
      SHX7_2 = 0
      SHX8_2 = SHX5_2
      SHX9_2 = true
      SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = SetEntityCoords
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_1.x
  SHX3_2 = SHX0_1.y
  SHX4_2 = SHX0_1.z
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = Wait
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX1_1
  SHX1_2 = SHX1_2 - SHX2_2
  SHX1_2 = #SHX1_2
  if SHX1_2 > 10.0 then
    SHX2_2 = SetEntityCoordsNoOffset
    SHX3_2 = SHX0_2
    SHX4_2 = SHX0_1.x
    SHX5_2 = SHX0_1.y
    SHX6_2 = SHX0_1.z
    SHX7_2 = true
    SHX8_2 = false
    SHX9_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadAnimDict
  SHX3_2 = "cellphone@"
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = "prop_amb_phone"
  SHX2_2(SHX3_2)
  SHX2_2 = SHX16_1
  SHX3_2 = "ring"
  SHX2_2(SHX3_2)
  SHX2_2 = SHX22_1
  SHX3_2 = 2000
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "tutorial_phone_obj"
  SHX3_2(SHX4_2)
  SHX3_2 = CreateObject
  SHX4_2 = 974883178
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = AttachEntityToEntity
  SHX5_2 = SHX3_2
  SHX6_2 = SHX0_2
  SHX7_2 = GetPedBoneIndex
  SHX8_2 = SHX0_2
  SHX9_2 = 28422
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = true
  SHX15_2 = true
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = 0
  SHX19_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = 974883178
  SHX4_2(SHX5_2)
  SHX4_2 = TaskPlayAnim
  SHX5_2 = SHX0_2
  SHX6_2 = "cellphone@"
  SHX7_2 = "cellphone_text_in"
  SHX8_2 = 3.0
  SHX9_2 = -1
  SHX10_2 = -1
  SHX11_2 = 50
  SHX12_2 = 0
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2 = SHX22_1
  SHX5_2 = 1000
  SHX4_2(SHX5_2)
  SHX4_2 = TaskPlayAnim
  SHX5_2 = SHX0_2
  SHX6_2 = "cellphone@"
  SHX7_2 = "cellphone_text_to_call"
  SHX8_2 = 3.0
  SHX9_2 = -1
  SHX10_2 = -1
  SHX11_2 = 50
  SHX12_2 = 0
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2 = SHX16_1
  SHX5_2 = "herewegoagain"
  SHX4_2(SHX5_2)
  SHX4_2 = SHX22_1
  SHX5_2 = 3000
  SHX4_2(SHX5_2)
  SHX4_2 = TaskPlayAnim
  SHX5_2 = SHX0_2
  SHX6_2 = "cellphone@"
  SHX7_2 = "cellphone_call_out"
  SHX8_2 = 3.0
  SHX9_2 = -1
  SHX10_2 = -1
  SHX11_2 = 50
  SHX12_2 = 0
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2 = SHX22_1
  SHX5_2 = 1000
  SHX4_2(SHX5_2)
  SHX4_2 = DeleteEntity
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = ClearPedTasks
  SHX5_2 = SHX0_2
  SHX4_2(SHX5_2)
  SHX4_2 = RemoveAnimDict
  SHX5_2 = "cellphone@"
  SHX4_2(SHX5_2)
end
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SetPlayerControl
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX3_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = TriggerScreenblurFadeIn
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hideAllDisplays
  SHX1_2 = "tutorialgender"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "APP_TOGGLE"
  SHX1_2.app = "tutorial"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = true
  SHX2_2 = true
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = nil
  SHX14_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiRegisterCallback
  SHX1_2 = "onMaleTutorialClick"
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = "male"
    SHX14_1 = SHX0_3
  end
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiRegisterCallback
  SHX1_2 = "onFemaleTutorialClick"
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = "female"
    SHX14_1 = SHX0_3
  end
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = SHX14_1
    if nil ~= SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "APP_TOGGLE"
  SHX1_2.app = ""
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCustomization
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getDefaultCustomization
  SHX2_2 = SHX14_1
  SHX2_2 = "female" == SHX2_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = TriggerScreenblurFadeOut
  SHX1_2 = 1000
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showAllDisplays
  SHX1_2 = "tutorialgender"
  SHX0_2(SHX1_2)
  SHX0_2 = SetPlayerControl
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX3_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "69df7aca22"
  SHX0_2(SHX1_2)
end
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = DoScreenFadeOut
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  SHX0_2 = SHX15_1
  SHX1_2 = "Setting player position"
  SHX0_2(SHX1_2)
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SetEntityVisible
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityCoordsNoOffset
  SHX2_2 = SHX0_2
  SHX3_2 = SHX0_1.x
  SHX4_2 = SHX0_1.y
  SHX5_2 = SHX0_1.z
  SHX6_2 = true
  SHX7_2 = false
  SHX8_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX1_2 = SetEntityHeading
  SHX2_2 = SHX0_2
  SHX3_2 = 146.0
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX15_1
  SHX2_2 = "Waiting for streaming requests to complete"
  SHX1_2(SHX2_2)
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = GetNumberOfStreamingRequests
    SHX2_2 = SHX2_2()
    if not (SHX2_2 > 0) then
      break
    end
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    SHX3_2 = 10000
    if not (SHX2_2 < SHX3_2) then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX15_1
  SHX3_2 = "Setting player as visible"
  SHX2_2(SHX3_2)
  SHX2_2 = SetEntityVisible
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = DoScreenFadeIn
  SHX3_2 = 500
  SHX2_2(SHX3_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 500
  SHX2_2(SHX3_2)
end
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = "I called a taxi for you"
  SHX7_1 = SHX0_2
  SHX0_2 = math
  SHX0_2 = SHX0_2.random
  SHX1_2 = 1
  SHX2_2 = SHX4_1
  SHX2_2 = #SHX2_2
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = SHX4_1
  SHX0_2 = SHX1_2[SHX0_2]
  SHX1_2 = TaskGoStraightToCoord
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2[1]
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2[1]
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2[1]
  SHX5_2 = SHX5_2.z
  SHX6_2 = 1.5
  SHX7_2 = -1
  SHX8_2 = 0.0
  SHX9_2 = 1.0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = "taxi"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.requestEntitySpawn
  SHX2_2 = "tutorial"
  SHX3_2 = SHX0_2[1]
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CreateVehicle
  SHX2_2 = -956048545
  SHX3_2 = SHX0_2[1]
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2[1]
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2[1]
  SHX5_2 = SHX5_2.z
  SHX6_2 = SHX0_2[3]
  SHX7_2 = true
  SHX8_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX11_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.initLocalVehicle
  SHX2_2 = SHX11_1
  SHX1_2(SHX2_2)
  SHX1_2 = SetEntityInvincible
  SHX2_2 = SHX11_1
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetModelAsNoLongerNeeded
  SHX2_2 = -956048545
  SHX1_2(SHX2_2)
  SHX1_2 = CreateCheckpoint
  SHX2_2 = 1
  SHX3_2 = SHX0_2[2]
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2[2]
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2[2]
  SHX5_2 = SHX5_2.z
  SHX6_2 = -515.47406005859
  SHX7_2 = -264.78549194336
  SHX8_2 = 34.403575897217
  SHX9_2 = 2.0
  SHX10_2 = 204
  SHX11_2 = 204
  SHX12_2 = 1
  SHX13_2 = 100
  SHX14_2 = 0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX2_2 = AddBlipForCoord
  SHX3_2 = SHX0_2[1]
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2[1]
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2[1]
  SHX5_2 = SHX5_2.z
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = SetBlipFlashes
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 2000
  SHX3_2(SHX4_2)
  SHX3_2 = "Oh shit looks like he had to run! It should be parked pretty close"
  SHX7_1 = SHX3_2
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 1000
  SHX3_2(SHX4_2)
  SHX3_2 = ClearPedTasks
  SHX4_2 = PlayerPedId
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX4_2()
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 5000
  SHX3_2(SHX4_2)
  SHX3_2 = "Get in the ~b~taxi~w~"
  SHX7_1 = SHX3_2
  while true do
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerVehicle
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX11_1
    if SHX3_2 == SHX4_2 then
      break
    end
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerCoords
    SHX3_2 = SHX3_2()
    SHX4_2 = GetEntityCoords
    SHX5_2 = SHX11_1
    SHX6_2 = true
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX3_2 = SHX3_2 - SHX4_2
    SHX3_2 = #SHX3_2
    if SHX3_2 < 5.0 then
      SHX3_2 = "Press ~INPUT_ENTER~ to enter the vehicle"
      SHX8_1 = SHX3_2
    else
      SHX3_2 = nil
      SHX8_1 = SHX3_2
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = GetPedInVehicleSeat
  SHX5_2 = SHX11_1
  SHX6_2 = -1
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if SHX4_2 ~= SHX3_2 then
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 1500
    SHX4_2(SHX5_2)
    SHX4_2 = GetPedInVehicleSeat
    SHX5_2 = SHX11_1
    SHX6_2 = -1
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 ~= SHX3_2 then
      SHX4_2 = GetPedInVehicleSeat
      SHX5_2 = SHX11_1
      SHX6_2 = 0
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 == SHX3_2 then
        SHX4_2 = ExecuteCommand
        SHX5_2 = "shuff"
        SHX4_2(SHX5_2)
      else
        SHX4_2 = SetPedIntoVehicle
        SHX5_2 = SHX3_2
        SHX6_2 = SHX11_1
        SHX7_2 = -1
        SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      end
    end
  end
  SHX4_2 = nil
  SHX7_1 = SHX4_2
  SHX4_2 = nil
  SHX8_1 = SHX4_2
  SHX4_2 = DeleteCheckpoint
  SHX5_2 = SHX1_2
  SHX4_2(SHX5_2)
  SHX4_2 = RemoveBlip
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
end
function SHX28_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX3_2 = AddBlipForCoord
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = SetBlipRoute
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CreateCheckpoint
  SHX5_2 = 1
  SHX6_2 = SHX0_2.x
  SHX7_2 = SHX0_2.y
  SHX8_2 = SHX0_2.z
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 2.0
  SHX13_2 = 204
  SHX14_2 = 204
  SHX15_2 = 1
  SHX16_2 = 100
  SHX17_2 = 0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  if SHX1_2 then
    SHX5_2 = 10.0
    if SHX5_2 then
      goto SHX_LABEL_31
    end
  end
  SHX5_2 = 5.0
  -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
  ::SHX_LABEL_31::
  while true do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.getPlayerCoords
    SHX6_2 = SHX6_2()
    SHX6_2 = SHX6_2 - SHX0_2
    SHX6_2 = #SHX6_2
    if not (SHX5_2 < SHX6_2) then
      break
    end
    if SHX2_2 then
      SHX6_2 = SHX2_2
      SHX6_2()
    end
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX6_2 = RemoveBlip
  SHX7_2 = SHX3_2
  SHX6_2(SHX7_2)
  SHX6_2 = DeleteCheckpoint
  SHX7_2 = SHX4_2
  SHX6_2(SHX7_2)
end
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX1_2 = DrawMarker
  SHX2_2 = 1
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 1.5
  SHX13_2 = 1.5
  SHX14_2 = 0.6
  SHX15_2 = 255
  SHX16_2 = 255
  SHX17_2 = 0
  SHX18_2 = 100
  SHX19_2 = false
  SHX20_2 = false
  SHX21_2 = 2
  SHX22_2 = false
  SHX23_2 = nil
  SHX24_2 = nil
  SHX25_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
end
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = "Drive to ~y~Simeons~w~ to purchase your first vehicle"
  SHX7_1 = SHX0_2
  SHX0_2 = SHX28_1
  SHX1_2 = vector3
  SHX2_2 = -47.785835266113
  SHX3_2 = -1117.1357421875
  SHX4_2 = 25.435224533081
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = DeleteEntity
  SHX1_2 = GetPedInVehicleSeat
  SHX2_2 = SHX9_1
  SHX3_2 = -1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = DeleteMissionTrain
  SHX1_2 = SHX9_1
  SHX0_2(SHX1_2)
  SHX0_2 = "Exit your ~b~vehicle~w~"
  SHX7_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  while true do
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerVehicle
    SHX1_2 = SHX1_2()
    if 0 == SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SetVehicleDoorsLocked
  SHX2_2 = SHX0_2
  SHX3_2 = 2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetVehicleDoorsLockedForAllPlayers
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = "Locate the ~y~store selector~w~"
  SHX7_1 = SHX1_2
  SHX1_2 = SHX28_1
  SHX2_2 = vector3
  SHX3_2 = -34.113563537598
  SHX4_2 = -1101.7242431641
  SHX5_2 = 25.422456741333
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  while true do
    SHX1_2 = table
    SHX1_2 = SHX1_2.count
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getVehicleInfoLookup
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2()
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    if 0 ~= SHX1_2 then
      break
    end
    SHX1_2 = RageUI
    SHX1_2 = SHX1_2.Visible
    SHX2_2 = RMenu
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.Get
    SHX4_2 = "cardealer"
    SHX5_2 = "mainmenu"
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    if SHX1_2 then
      SHX1_2 = "The category can determine the cars handling, power and price. Pick a category in your price range."
      SHX8_1 = SHX1_2
      SHX1_2 = "Select a vehicle category"
      SHX7_1 = SHX1_2
    else
      SHX1_2 = RageUI
      SHX1_2 = SHX1_2.Visible
      SHX2_2 = RMenu
      SHX3_2 = SHX2_2
      SHX2_2 = SHX2_2.Get
      SHX4_2 = "cardealer"
      SHX5_2 = "categories"
      SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if SHX1_2 then
        SHX1_2 = "Each category has an arrangement of stock and custom vehicles to pick from."
        SHX8_1 = SHX1_2
        SHX1_2 = "Select a vehicle to purchase or preview"
        SHX7_1 = SHX1_2
      else
        SHX1_2 = RageUI
        SHX1_2 = SHX1_2.Visible
        SHX2_2 = RMenu
        SHX3_2 = SHX2_2
        SHX2_2 = SHX2_2.Get
        SHX4_2 = "cardealer"
        SHX5_2 = "vehicle"
        SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        if SHX1_2 then
          SHX1_2 = "Previewing a vehicle gives you a minute to test how the vehicle drives without upgrades."
          SHX8_1 = SHX1_2
          SHX1_2 = "Purchase or preview this vehicle"
          SHX7_1 = SHX1_2
        else
          SHX1_2 = RageUI
          SHX1_2 = SHX1_2.Visible
          SHX2_2 = RMenu
          SHX3_2 = SHX2_2
          SHX2_2 = SHX2_2.Get
          SHX4_2 = "cardealer"
          SHX5_2 = "confirm"
          SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          if SHX1_2 then
            SHX1_2 = "Money will be taken from your bank account for this vehicle and it will be delivered to your garage."
            SHX8_1 = SHX1_2
            SHX1_2 = "Purchase this vehicle"
            SHX7_1 = SHX1_2
          else
            SHX1_2 = DoesEntityExist
            SHX2_2 = SHX0_2
            SHX1_2 = SHX1_2(SHX2_2)
            if SHX1_2 then
              SHX1_2 = "Previewing with no modifications. This will have improved performance if upgraded in LS Customs."
              SHX8_1 = SHX1_2
              SHX1_2 = "Experiment with the top speed, acceleration and cornering"
              SHX7_1 = SHX1_2
            else
              SHX1_2 = vector3
              SHX2_2 = -34.113563537598
              SHX3_2 = -1101.7242431641
              SHX4_2 = 25.422456741333
              SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
              SHX2_2 = CMG
              SHX2_2 = SHX2_2.getPlayerCoords
              SHX2_2 = SHX2_2()
              SHX1_2 = SHX1_2 - SHX2_2
              SHX1_2 = #SHX1_2
              SHX2_2 = 2.5
              SHX1_2 = SHX1_2 <= SHX2_2
              if SHX1_2 then
                SHX2_2 = "To enter the store selector walk away from the marker and back into it."
                SHX8_1 = SHX2_2
              else
                SHX2_2 = "To enter the store selector walk into the marker."
                SHX8_1 = SHX2_2
                SHX2_2 = SHX29_1
                SHX3_2 = vector3
                SHX4_2 = -34.113563537598
                SHX5_2 = -1101.7242431641
                SHX6_2 = 25.422456741333
                SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
                SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
              end
              SHX2_2 = "Enter the ~y~store selector~w~"
              SHX7_1 = SHX2_2
            end
          end
        end
      end
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = nil
  SHX8_1 = SHX1_2
  SHX1_2 = "Head outside of Simeons to get in your new vehicle"
  SHX7_1 = SHX1_2
  SHX1_2 = DeleteEntity
  SHX2_2 = SHX11_1
  SHX1_2(SHX2_2)
end
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = "Garages can be located anywhere on the map, indicated by a green shutter icon."
  SHX8_1 = SHX0_2
  SHX0_2 = SHX28_1
  SHX1_2 = vector3
  SHX2_2 = -51.893981933594
  SHX3_2 = -1112.7712402344
  SHX4_2 = 25.438014984131
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2 = SHX0_2()
    if 0 ~= SHX0_2 then
      break
    end
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "garages"
    SHX4_2 = "mainmenu"
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    if SHX0_2 then
      SHX0_2 = "This is the main UI for any garage. From here you can get out or store a vehicle, view rented vehicles and configure custom folders."
      SHX8_1 = SHX0_2
      SHX0_2 = "Select Garages"
      SHX7_1 = SHX0_2
    else
      SHX0_2 = RageUI
      SHX0_2 = SHX0_2.Visible
      SHX1_2 = RMenu
      SHX2_2 = SHX1_2
      SHX1_2 = SHX1_2.Get
      SHX3_2 = "garages"
      SHX4_2 = "listgarages"
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX0_2 then
        SHX0_2 = "This lists all your garage types. For now you will only have the Standard Garage."
        SHX8_1 = SHX0_2
        SHX0_2 = "Select Standard Garage"
        SHX7_1 = SHX0_2
      else
        SHX0_2 = RageUI
        SHX0_2 = SHX0_2.Visible
        SHX1_2 = RMenu
        SHX2_2 = SHX1_2
        SHX1_2 = SHX1_2.Get
        SHX3_2 = "garages"
        SHX4_2 = "vehiclemenu"
        SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        if SHX0_2 then
          SHX0_2 = "This lists all the vehicles you have bought for this garage type."
          SHX8_1 = SHX0_2
          SHX0_2 = "Select your newly purchased vehicle"
          SHX7_1 = SHX0_2
        else
          SHX0_2 = RageUI
          SHX0_2 = SHX0_2.Visible
          SHX1_2 = RMenu
          SHX2_2 = SHX1_2
          SHX1_2 = SHX1_2.Get
          SHX3_2 = "garages"
          SHX4_2 = "spawnmenu"
          SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
          if SHX0_2 then
            SHX0_2 = "You can spawn your vehicle, or choose to sell and rent it to another player here."
            SHX8_1 = SHX0_2
            SHX0_2 = "Press Spawn Vehicle"
            SHX7_1 = SHX0_2
          else
            SHX0_2 = RageUI
            SHX0_2 = SHX0_2.Visible
            SHX1_2 = RMenu
            SHX2_2 = SHX1_2
            SHX1_2 = SHX1_2.Get
            SHX3_2 = "garages"
            SHX4_2 = "settings"
            SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
            if SHX0_2 then
              SHX0_2 = nil
              SHX8_1 = SHX0_2
              SHX0_2 = "Go back to the main menu"
              SHX7_1 = SHX0_2
            else
              SHX0_2 = RageUI
              SHX0_2 = SHX0_2.Visible
              SHX1_2 = RMenu
              SHX2_2 = SHX1_2
              SHX1_2 = SHX1_2.Get
              SHX3_2 = "garages"
              SHX4_2 = "rentmanager"
              SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
              SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
              if not SHX0_2 then
                SHX0_2 = RageUI
                SHX0_2 = SHX0_2.Visible
                SHX1_2 = RMenu
                SHX2_2 = SHX1_2
                SHX1_2 = SHX1_2.Get
                SHX3_2 = "garages"
                SHX4_2 = "customfolders"
                SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
                SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
                if not SHX0_2 then
                  goto SHX_LABEL_124
                end
              end
              SHX0_2 = RageUI
              SHX0_2 = SHX0_2.Visible
              SHX1_2 = RMenu
              SHX2_2 = SHX1_2
              SHX1_2 = SHX1_2.Get
              SHX3_2 = "garages"
              SHX4_2 = "mainmenu"
              SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
              SHX2_2 = true
              SHX0_2(SHX1_2, SHX2_2)
              SHX0_2 = notify
              SHX1_2 = "~r~This section is not avaliable during the tutorial"
              SHX0_2(SHX1_2)
              goto SHX_LABEL_154
              -- [FIX IF ERROR] Move ::SHX_LABEL_124:: outside nested blocks until all 'goto SHX_LABEL_124' can see it
              ::SHX_LABEL_124::
              SHX0_2 = vector3
              SHX1_2 = -51.893981933594
              SHX2_2 = -1112.7712402344
              SHX3_2 = 25.438014984131
              SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
              SHX1_2 = CMG
              SHX1_2 = SHX1_2.getPlayerCoords
              SHX1_2 = SHX1_2()
              SHX0_2 = SHX0_2 - SHX1_2
              SHX0_2 = #SHX0_2
              SHX1_2 = 2.5
              SHX0_2 = SHX0_2 < SHX1_2
              if SHX0_2 then
                SHX1_2 = "To enter the garage walk away from the marker and back into it."
                SHX8_1 = SHX1_2
              else
                SHX1_2 = "To enter the garage walk into the marker."
                SHX8_1 = SHX1_2
                SHX1_2 = SHX29_1
                SHX2_2 = vector3
                SHX3_2 = -51.893981933594
                SHX4_2 = -1112.7712402344
                SHX5_2 = 25.438014984131
                SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
                SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
              end
            end
          end
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_154:: outside nested blocks until all 'goto SHX_LABEL_154' can see it
    ::SHX_LABEL_154::
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 1000
  SHX0_2(SHX1_2)
  SHX0_2 = SetEntityInvincible
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = nil
  SHX8_1 = SHX0_2
  SHX0_2 = nil
  SHX7_1 = SHX0_2
end
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = "Rules and controls can be found by pressing ~INPUT_FRONTEND_PAUSE_ALTERNATE~."
  SHX8_1 = SHX0_2
  SHX0_2 = "Open the ~b~rules and controls~w~ by pressing ~y~[ESC]~w~"
  SHX7_1 = SHX0_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = false
  while true do
    if SHX1_2 then
      SHX2_2 = GetGameTimer
      SHX2_2 = SHX2_2()
      SHX2_2 = SHX2_2 - SHX0_2
      SHX3_2 = 10000
      if SHX2_2 > SHX3_2 then
        break
      end
    end
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isPauseMenuOpen
    SHX2_2 = SHX2_2()
    if SHX2_2 then
      SHX1_2 = true
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = nil
  SHX8_1 = SHX2_2
  SHX2_2 = nil
  SHX7_1 = SHX2_2
end
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = "Drive to the ~y~City Hall~w~"
  SHX7_1 = SHX0_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX28_1
  SHX2_2 = vector3
  SHX3_2 = -511.79125976562
  SHX4_2 = -262.69219970703
  SHX5_2 = 34.451602935791
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = GetGameTimer
    SHX0_3 = SHX0_3()
    SHX1_3 = SHX0_2
    SHX1_3 = SHX0_3 - SHX1_3
    SHX2_3 = 10000
    if SHX1_3 < SHX2_3 then
      SHX1_3 = "To start your career drive to the City Hall."
      SHX8_1 = SHX1_3
    else
      SHX1_3 = SHX0_2
      SHX1_3 = SHX0_3 - SHX1_3
      SHX2_3 = 20000
      if SHX1_3 < SHX2_3 then
        SHX1_3 = "You can apply to become a Police Officer, Medic, Prison Officer or Firefighter at a later date."
        SHX8_1 = SHX1_3
      else
        SHX1_3 = SHX0_2
        SHX1_3 = SHX0_3 - SHX1_3
        SHX2_3 = 30000
        if SHX1_3 < SHX2_3 then
          SHX1_3 = "Some jobs require a minimum amount of in-game hours in order to apply."
          SHX8_1 = SHX1_3
        else
          SHX1_3 = SHX0_2
          SHX1_3 = SHX0_3 - SHX1_3
          SHX2_3 = 40000
          if SHX1_3 < SHX2_3 then
            SHX1_3 = "Continue driving to the City Hall."
            SHX8_1 = SHX1_3
          end
        end
      end
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = nil
  SHX8_1 = SHX1_2
  SHX1_2 = nil
  SHX7_1 = SHX1_2
end
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = "The City Hall is used to get a job, change your identity and to purchase licenses."
  SHX8_1 = SHX0_2
  SHX0_2 = "Head inside of the ~y~City Hall~w~"
  SHX7_1 = SHX0_2
  SHX0_2 = SHX28_1
  SHX1_2 = vector3
  SHX2_2 = -551.80096435547
  SHX3_2 = -193.8653717041
  SHX4_2 = 37.219680786133
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = "Locate the ~y~Job Center Office~w~"
  SHX7_1 = SHX0_2
  SHX0_2 = SHX28_1
  SHX1_2 = vector3
  SHX2_2 = -561.52203369141
  SHX3_2 = -197.43280029297
  SHX4_2 = 37.219356536865
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = "Head to the job selector"
  SHX7_1 = SHX0_2
  SHX0_2 = SHX28_1
  SHX1_2 = vector3
  SHX2_2 = -566.19732666016
  SHX3_2 = -193.69425964355
  SHX4_2 = 37.219661712646
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = "Press ~INPUT_CONTEXT~ to open the job selector and pick your first job."
  SHX8_1 = SHX0_2
  SHX0_2 = "Start your first job by pressing ~y~[E]~w~"
  SHX7_1 = SHX0_2
  while true do
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "main"
    SHX4_2 = "groupselector"
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = nil
  SHX8_1 = SHX0_2
  SHX0_2 = nil
  SHX7_1 = SHX0_2
end
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = RequestScaleformMovie
  SHX1_2 = "mp_mission_name_freemode"
  SHX0_2 = SHX0_2(SHX1_2)
  while true do
    SHX1_2 = HasScaleformMovieLoaded
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX0_2
  SHX3_2 = "SET_MISSION_INFO"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "Press ESC for a quick starter guide and the rules to our server!"
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "~g~Tutorial Complete"
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "0"
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = ""
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = ""
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = ""
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = ""
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "0"
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "0"
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = ""
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = SHX16_1
  SHX2_2 = "questcomplete"
  SHX1_2(SHX2_2)
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "6932434e21"
  SHX1_2(SHX2_2)
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    SHX3_2 = 7000
    if not (SHX2_2 < SHX3_2) then
      break
    end
    SHX2_2 = DrawScaleformMovie
    SHX3_2 = SHX0_2
    SHX4_2 = 0.5
    SHX5_2 = 0.35
    SHX6_2 = 0.3
    SHX7_2 = 0.4615
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SetScaleformMovieAsNoLongerNeeded
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
end
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX15_1
  SHX1_2 = "Starting the sequence"
  SHX2_2 = SHX13_1
  SHX3_2 = SHX6_1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "Start Tutorial Sequence"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = true
  SHX13_1 = SHX0_2
  SHX0_2 = SHX6_1
  if SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX6_1 = SHX0_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCanAnim
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = SHX15_1
  SHX1_2 = "Starting spawn stage"
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "Spawn Stage"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX26_1
  SHX0_2()
  SHX0_2 = SHX15_1
  SHX1_2 = "Starting gender stage"
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "Gender Stage"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX24_1
  SHX0_2()
  SHX0_2 = SHX15_1
  SHX1_2 = "Starting name stage"
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "Name Stage"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX25_1
  SHX0_2()
  SHX0_2 = SHX15_1
  SHX1_2 = "Starting intro stage"
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "Intro Stage"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX23_1
  SHX0_2()
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "Phone Call"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX21_1
  SHX0_2()
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "Follow Markers"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX20_1
  SHX0_2()
  SHX0_2 = SHX19_1
  SHX0_2()
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "Train Transition"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX27_1
  SHX0_2()
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "Enter Taxi"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = table
  SHX0_2 = SHX0_2.count
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getVehicleInfoLookup
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  if 0 ~= SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isDevMode
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      goto SHX_LABEL_102
    end
  end
  SHX0_2 = SHX12_1
  SHX1_2 = 20000
  if SHX0_2 > SHX1_2 then
    SHX0_2 = SHX30_1
    SHX0_2()
    goto SHX_LABEL_104
    -- [FIX IF ERROR] Move ::SHX_LABEL_102:: outside nested blocks until all 'goto SHX_LABEL_102' can see it
    ::SHX_LABEL_102::
    SHX0_2 = "Head to the marked garage to get a vehicle out"
    SHX7_1 = SHX0_2
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_104:: outside nested blocks until all 'goto SHX_LABEL_104' can see it
  ::SHX_LABEL_104::
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "Buy Simeons"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = table
  SHX0_2 = SHX0_2.count
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getVehicleInfoLookup
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  if SHX0_2 > 0 then
    SHX0_2 = SHX31_1
    SHX0_2()
  end
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "Pull Out Garage"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX32_1
  SHX0_2()
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "View Rules"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX33_1
  SHX0_2()
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "Drive City Hall"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX34_1
  SHX0_2()
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "813acdb9f7"
  SHX2_2 = "Enter City Hall"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCanAnim
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = false
  SHX6_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showWarningMessageAdvanced
  SHX1_2 = "Player Introduction"
  SHX2_2 = "Are you new to the city and want to learn more? Would you like additional help before playing? Press ~INPUT_FRONTEND_CANCEL~ to continue or ~INPUT_FRONTEND_ENDSCREEN_ACCEPT~ to request a staff member to assist."
  SHX3_2 = 9
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = IsDisabledControlJustPressed
    SHX1_3 = 2
    SHX2_3 = 202
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = true
      return SHX0_3
    else
      SHX0_3 = IsDisabledControlJustPressed
      SHX1_3 = 2
      SHX2_3 = 215
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "97a59f5031"
        SHX0_3(SHX1_3)
        SHX0_3 = true
        return SHX0_3
      end
    end
    SHX0_3 = false
    return SHX0_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX35_1
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.tryShowNewPlayerProtectionIntroUi
  SHX0_2()
end
SHX37_1 = RegisterNetEvent
SHX38_1 = "a146e2cd0b"
SHX39_1 = SHX36_1
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = AddEventHandler
SHX38_1 = "CMG:onClientSpawn"
function SHX39_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX1_2 then
    while true do
      SHX2_2 = SHX13_1
      if SHX2_2 then
        break
      end
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.Wait
      SHX3_2 = 2000
      SHX2_2(SHX3_2)
      SHX2_2 = SHX15_1
      SHX3_2 = "Checking completed state"
      SHX2_2(SHX3_2)
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "42036878bb"
      SHX2_2(SHX3_2)
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.Wait
      SHX3_2 = 5000
      SHX2_2(SHX3_2)
    end
  end
end
SHX37_1(SHX38_1, SHX39_1)
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX6_1
  if SHX0_2 then
    SHX0_2 = SHX7_1
    if SHX0_2 then
      SHX0_2 = drawNativeText
      SHX1_2 = SHX7_1
      SHX0_2(SHX1_2)
    end
    SHX0_2 = SHX8_1
    if SHX0_2 then
      SHX0_2 = drawNativeNotification
      SHX1_2 = SHX8_1
      SHX0_2(SHX1_2)
    end
    SHX0_2 = SHX9_1
    if SHX0_2 then
      SHX0_2 = SHX10_1
      if "ARRIVE_INTRO" ~= SHX0_2 then
        SHX0_2 = SHX10_1
        if "ARRIVE_TAXI" ~= SHX0_2 then
          SHX0_2 = SHX10_1
          if "PREPARE_DEPART_INTRO" ~= SHX0_2 then
            goto SHX_LABEL_105
          end
        end
      end
      SHX0_2 = nil
      SHX1_2 = SHX10_1
      if "ARRIVE_INTRO" ~= SHX1_2 then
        SHX1_2 = SHX10_1
        if "PREPARE_DEPART_INTRO" ~= SHX1_2 then
          goto SHX_LABEL_37
        end
      end
      SHX0_2 = SHX2_1
      goto SHX_LABEL_38
      -- [FIX IF ERROR] Move ::SHX_LABEL_37:: outside nested blocks until all 'goto SHX_LABEL_37' can see it
      ::SHX_LABEL_37::
      SHX0_2 = SHX3_1
      -- [FIX IF ERROR] Move ::SHX_LABEL_38:: outside nested blocks until all 'goto SHX_LABEL_38' can see it
      ::SHX_LABEL_38::
      SHX1_2 = GetEntityCoords
      SHX2_2 = SHX9_1
      SHX3_2 = true
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = SHX1_2 - SHX0_2
      SHX1_2 = #SHX1_2
      SHX2_2 = SHX1_2 / 5.0
      SHX3_2 = false
      if SHX2_2 > 10.0 then
        SHX2_2 = 10.0
      elseif SHX2_2 < 1.0 then
        SHX2_2 = 0.0
        SHX4_2 = FreezeEntityPosition
        SHX5_2 = SHX9_1
        SHX6_2 = true
        SHX4_2(SHX5_2, SHX6_2)
        SHX3_2 = true
      end
      SHX4_2 = pcall
      function SHX5_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3
        SHX0_3 = SetTrainSpeed
        SHX1_3 = SHX9_1
        SHX2_3 = SHX2_2
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = SetTrainCruiseSpeed
        SHX1_3 = SHX9_1
        SHX2_3 = SHX2_2
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX4_2(SHX5_2)
      SHX4_2 = SetTrainsForceDoorsOpen
      SHX5_2 = false
      SHX4_2(SHX5_2)
      if SHX3_2 then
        SHX4_2 = GetTrainDoorOpenRatio
        SHX5_2 = SHX9_1
        SHX6_2 = 0
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
        if SHX4_2 < 1.0 then
          SHX4_2 = SHX10_1
          if "PREPARE_DEPART_INTRO" ~= SHX4_2 then
            SHX4_2 = GetFrameTime
            SHX4_2 = SHX4_2()
            SHX5_2 = SetTrainDoorOpenRatio
            SHX6_2 = SHX9_1
            SHX7_2 = 0
            SHX8_2 = GetTrainDoorOpenRatio
            SHX9_2 = SHX9_1
            SHX10_2 = 0
            SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
            SHX9_2 = 0.25 * SHX4_2
            SHX8_2 = SHX8_2 + SHX9_2
            SHX5_2(SHX6_2, SHX7_2, SHX8_2)
            SHX5_2 = SetTrainDoorOpenRatio
            SHX6_2 = SHX9_1
            SHX7_2 = 2
            SHX8_2 = GetTrainDoorOpenRatio
            SHX9_2 = SHX9_1
            SHX10_2 = 2
            SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
            SHX9_2 = 0.25 * SHX4_2
            SHX8_2 = SHX8_2 + SHX9_2
            SHX5_2(SHX6_2, SHX7_2, SHX8_2)
          end
        end
      end
      goto SHX_LABEL_130
      -- [FIX IF ERROR] Move ::SHX_LABEL_105:: outside nested blocks until all 'goto SHX_LABEL_105' can see it
      ::SHX_LABEL_105::
      SHX0_2 = GetFrameTime
      SHX0_2 = SHX0_2()
      SHX1_2 = DecorGetFloat
      SHX2_2 = SHX9_1
      SHX3_2 = "91dff835ca"
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if SHX1_2 < 0.0 then
        SHX1_2 = 0.0
      end
      SHX2_2 = 3.0 * SHX0_2
      SHX2_2 = SHX1_2 + SHX2_2
      if SHX2_2 > 15.0 then
        SHX2_2 = 15.0
      end
      SHX3_2 = DecorSetFloat
      SHX4_2 = SHX9_1
      SHX5_2 = "91dff835ca"
      SHX6_2 = SHX2_2
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = pcall
      function SHX4_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3
        SHX0_3 = FreezeEntityPosition
        SHX1_3 = SHX9_1
        SHX2_3 = false
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = SetTrainSpeed
        SHX1_3 = SHX9_1
        SHX2_3 = SHX2_2
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = SetTrainCruiseSpeed
        SHX1_3 = SHX9_1
        SHX2_3 = SHX2_2
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX3_2(SHX4_2)
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_130:: outside nested blocks until all 'goto SHX_LABEL_130' can see it
    ::SHX_LABEL_130::
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = GetSelectedPedWeapon
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if -1569615261 ~= SHX1_2 then
      SHX1_2 = drawNativeNotification
      SHX2_2 = "Your weapon has been stored. You must complete the tutorial first."
      SHX1_2(SHX2_2)
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setWeapon
    SHX2_2 = SHX0_2
    SHX3_2 = -1569615261
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX38_1 = CMG
SHX38_1 = SHX38_1.createThreadOnTick
SHX39_1 = SHX37_1
SHX40_1 = "Tutorial Checks"
SHX38_1(SHX39_1, SHX40_1)
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetResourceState
  SHX1_2 = "lb-phone"
  SHX0_2 = SHX0_2(SHX1_2)
  if "started" == SHX0_2 then
    SHX0_2 = exports
    SHX0_2 = SHX0_2["lb-phone"]
    SHX1_2 = SHX0_2
    SHX0_2 = SHX0_2.IsOpen
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = drawNativeNotification
      SHX1_2 = "Press ~INPUT_64637822~ to toggle the phone."
      SHX0_2(SHX1_2)
    end
  end
end
SHX39_1 = RegisterNetEvent
SHX40_1 = "c2edd7984f"
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = true
  SHX5_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createThreadOnTick
  SHX1_2 = SHX38_1
  SHX2_2 = "New Player Checks"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = CMG
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  return SHX0_2
end
SHX39_1.isNewPlayer = SHX40_1
SHX39_1 = CMG
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX6_1
  return SHX0_2
end
SHX39_1.isInTutorial = SHX40_1
SHX39_1 = RegisterNetEvent
SHX40_1 = "6932434e21"
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX13_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.tryShowNewPlayerProtectionIntroUi
  SHX0_2()
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "47324dc7c8"
function SHX41_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  if SHX0_2 < 30 then
    return
  end
  if not SHX2_2 then
    SHX3_2 = Wait
    SHX4_2 = 10000
    SHX3_2(SHX4_2)
  end
  if SHX1_2 > 20 then
    return
  end
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  while true do
    SHX4_2 = GetGameTimer
    SHX4_2 = SHX4_2()
    SHX4_2 = SHX4_2 - SHX3_2
    SHX5_2 = 20000
    if not (SHX4_2 < SHX5_2) then
      break
    end
    SHX4_2 = drawNativeNotification
    SHX5_2 = [[
We've noticed you're a new player and haven't connected in a while.

If you would like to retry the tutorial press ~INPUT_REPLAY_START_STOP_RECORDING~.]]
    SHX4_2(SHX5_2)
    SHX4_2 = IsControlJustPressed
    SHX5_2 = 0
    SHX6_2 = 288
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 then
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "d8da13a755"
      SHX4_2(SHX5_2)
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = CMG
SHX39_1 = SHX39_1.registerDevMenuItems
SHX40_1 = "Miscellaneous"
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Prompt Full Tutorial Replay"
  SHX2_2 = ""
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    if SHX2_3 then
      SHX3_3 = TriggerEvent
      SHX4_3 = "47324dc7c8"
      SHX5_3 = 120
      SHX6_3 = 10
      SHX7_3 = true
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = CMG
SHX39_1 = SHX39_1.loadModule
SHX40_1 = "cfg/weapons"
SHX39_1 = SHX39_1(SHX40_1)
SHX40_1 = false
SHX41_1 = 0
SHX42_1 = 0
SHX43_1 = false
SHX44_1 = false
SHX45_1 = {}
SHX45_1.Pistol = true
SHX45_1.AR = true
SHX45_1.SMG = true
SHX45_1.Shotgun = true
SHX45_1.Heavy = true
SHX45_1.Melee = true
SHX46_1 = CMG
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX40_1
  return SHX0_2
end
SHX46_1.hasNewPlayerProtection = SHX47_1
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if 0 == SHX0_2 or -1569615261 == SHX0_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = SHX39_1.weaponHashToModels
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX39_1.weapons
    SHX2_2 = SHX2_2[SHX1_2]
    if SHX2_2 then
      SHX4_2 = SHX2_2.class
      SHX3_2 = SHX45_1
      SHX3_2 = SHX3_2[SHX4_2]
      if SHX3_2 then
        SHX3_2 = true
        return SHX3_2
      end
    end
    SHX3_2 = false
    return SHX3_2
  end
  SHX2_2 = GetWeapontypeGroup
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = {}
  SHX4_2 = 416676503
  SHX3_2[SHX4_2] = true
  SHX4_2 = -957766203
  SHX3_2[SHX4_2] = true
  SHX4_2 = 970310034
  SHX3_2[SHX4_2] = true
  SHX4_2 = 1159398588
  SHX3_2[SHX4_2] = true
  SHX4_2 = 860033945
  SHX3_2[SHX4_2] = true
  SHX4_2 = -1212426201
  SHX3_2[SHX4_2] = true
  SHX4_2 = -1569042529
  SHX3_2[SHX4_2] = true
  SHX4_2 = -728555052
  SHX3_2[SHX4_2] = true
  SHX4_2 = SHX3_2[SHX2_2]
  SHX4_2 = true == SHX4_2
  return SHX4_2
end
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 140
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 141
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 142
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 143
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 263
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 264
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 257
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 24
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 25
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
function SHX48_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX40_1
  if not SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isStaffedOnClient
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.inEvent
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.isInComa
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = true
  return SHX0_2
end
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = notify
  SHX1_2 = {}
  SHX1_2.title = "New Player Protection"
  SHX1_2.message = "You can't be killed during your first 2 hours. Equipping a weapon or typing /protectionoff ends protection early."
  SHX1_2.type = "info"
  SHX1_2.duration = 15000
  SHX1_2.sound = "notification"
  SHX0_2(SHX1_2)
end
SHX50_1 = CMG
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX44_1
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX43_1
  if SHX0_2 then
    SHX0_2 = SHX40_1
    if SHX0_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX0_2 = SHX6_1
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX13_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX44_1 = SHX0_2
  SHX0_2 = false
  SHX43_1 = SHX0_2
  SHX0_2 = SHX49_1
  SHX0_2()
end
SHX50_1.tryShowNewPlayerProtectionIntroUi = SHX51_1
function SHX50_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setHudTimerBarProviderActive
  SHX2_2 = "newPlayerProtection"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX40_1 = SHX0_2
  SHX0_2 = 0
  SHX41_1 = SHX0_2
  SHX0_2 = SHX50_1
  SHX1_2 = false
  SHX0_2(SHX1_2)
end
function SHX52_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SetEntityInvincible
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPlayerInvincible
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityProofs
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX4_2 = true
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX1_2 = SetEntityCanBeDamaged
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPedCanRagdoll
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPedCanRagdollFromPlayerImpact
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ClearPedBloodDamage
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = ResetPedVisibleDamage
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = ClearPedLastWeaponDamage
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX53_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2 / 60
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX0_2 % 60
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "%d:%02d"
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  return SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX54_1 = CMG
SHX54_1 = SHX54_1.registerHudTimerBarProvider
SHX55_1 = "newPlayerProtection"
function SHX56_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX40_1
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX41_1
  SHX2_2 = GetCloudTimeAsInt
  SHX2_2 = SHX2_2()
  SHX1_2 = SHX1_2 - SHX2_2
  if SHX1_2 <= 0 then
    return
  end
  SHX2_2 = SHX0_2.push
  SHX3_2 = "~g~PROTECTION~w~"
  SHX4_2 = SHX53_1
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = RegisterNetEvent
SHX55_1 = "d227939ac3"
function SHX56_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.active
    if SHX1_2 then
      goto SHX_LABEL_11
    end
  end
  SHX1_2 = SHX51_1
  SHX1_2()
  SHX1_2 = false
  SHX43_1 = SHX1_2
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX1_2 = true
  SHX40_1 = SHX1_2
  SHX1_2 = SHX0_2.protectionEndsAtUnix
  if not SHX1_2 then
    SHX1_2 = 0
  end
  SHX41_1 = SHX1_2
  SHX1_2 = SHX50_1
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = true
  SHX43_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.tryShowNewPlayerProtectionIntroUi
  SHX1_2()
end
SHX54_1(SHX55_1, SHX56_1)
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX48_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX52_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = SetPlayerMeleeWeaponDamageModifier
  SHX3_2 = SHX1_2
  SHX4_2 = 0.0
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetPlayerWeaponDamageModifier
  SHX3_2 = SHX1_2
  SHX4_2 = 0.0
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX47_1
  SHX2_2()
  SHX2_2 = GetSelectedPedWeapon
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX46_1
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX42_1
    SHX4_2 = SHX3_2 - SHX4_2
    SHX5_2 = 2000
    if SHX4_2 >= SHX5_2 then
      SHX42_1 = SHX3_2
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "c50703eeb9"
      SHX4_2(SHX5_2)
    end
  end
  SHX3_2 = SHX41_1
  if SHX3_2 > 0 then
    SHX3_2 = GetCloudTimeAsInt
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX41_1
    if SHX3_2 >= SHX4_2 then
      SHX3_2 = SHX51_1
      SHX3_2()
    end
  end
end
SHX55_1 = CMG
SHX55_1 = SHX55_1.createThreadOnTick
SHX56_1 = SHX54_1
SHX57_1 = "New Player Protection Tick"
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = TriggerEvent
SHX56_1 = "chat:addSuggestion"
SHX57_1 = "/protectionoff"
SHX58_1 = "Turn off new player protection early"
SHX55_1(SHX56_1, SHX57_1, SHX58_1)
