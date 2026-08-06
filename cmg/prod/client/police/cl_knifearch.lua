-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/setuparch"
SHX3_1 = "Setup a knife arch"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/removearch"
SHX3_1 = "Remove a knife arch"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = {}
SHX1_1 = false
SHX2_1 = RegisterNetEvent
SHX3_1 = "3167b12587"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = 1548832211
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "knife_arch"
  SHX3_2(SHX4_2)
  SHX3_2 = CreateObject
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX7_2 = SHX7_2 - 1.0
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = PlaceObjectOnGroundProperly
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetEntityHeading
  SHX5_2 = SHX3_2
  SHX6_2 = GetEntityHeading
  SHX7_2 = SHX1_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX6_2(SHX7_2)
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX0_2
  SHX4_2(SHX5_2)
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  while true do
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX4_2
    SHX6_2 = 5000
    if SHX5_2 > SHX6_2 then
      SHX5_2 = DeleteEntity
      SHX6_2 = SHX3_2
      SHX5_2(SHX6_2)
      return
    else
      SHX5_2 = NetworkGetEntityIsNetworked
      SHX6_2 = SHX3_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = NetworkGetNetworkIdFromEntity
        SHX6_2 = SHX3_2
        SHX5_2 = SHX5_2(SHX6_2)
        if 0 ~= SHX5_2 then
          break
        end
      end
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 200
    SHX5_2(SHX6_2)
  end
  SHX5_2 = NetworkGetNetworkIdFromEntity
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.notify
  SHX7_2 = "~g~Success! ~w~Knife Arch setup."
  SHX6_2(SHX7_2)
  SHX6_2 = TriggerServerEvent
  SHX7_2 = "409cde8b69"
  SHX8_2 = SHX2_2
  SHX9_2 = SHX5_2
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "f1a982d264"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2[1]
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getPlayerCoords
    SHX7_2 = SHX7_2()
    SHX6_2 = SHX6_2 - SHX7_2
    SHX6_2 = #SHX6_2
    if SHX6_2 <= 5.0 then
      SHX6_2 = SHX5_2[2]
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.getObjectId
      SHX8_2 = SHX5_2[2]
      SHX9_2 = "deleteArch"
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      if SHX7_2 then
        SHX8_2 = TriggerServerEvent
        SHX9_2 = "0817bcb014"
        SHX10_2 = SHX6_2
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = SetEntityVisible
        SHX9_2 = SHX7_2
        SHX10_2 = false
        SHX11_2 = false
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = DeleteEntity
        SHX9_2 = SHX7_2
        SHX8_2(SHX9_2)
        SHX8_2 = tCMG
        SHX8_2 = SHX8_2.notify
        SHX9_2 = "~g~Success! ~w~Knife Arch removed."
        SHX8_2(SHX9_2)
      end
      break
    end
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "e4b1cfaa9e"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX1_2 - SHX0_2
  SHX2_2 = #SHX2_2
  if SHX2_2 <= 20.0 then
    SHX2_2 = SendNUIMessage
    SHX3_2 = {}
    SHX3_2.transactionType = "knifeArch"
    SHX2_2(SHX3_2)
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "84acbce207"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX0_1 = SHX0_2
  SHX1_2 = true
  SHX1_1 = SHX1_2
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "59118ecc97"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX0_1
  SHX3_2 = {}
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX2_2[SHX1_2] = SHX3_2
  SHX2_2 = table
  SHX2_2 = SHX2_2.count
  SHX3_2 = SHX0_1
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = true
    SHX1_1 = SHX3_2
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "3eb79decde"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_1
  SHX1_2[SHX0_2] = nil
  SHX1_2 = table
  SHX1_2 = SHX1_2.count
  SHX2_2 = SHX0_1
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 < 1 then
    SHX1_2 = false
    SHX1_1 = SHX1_2
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = 0
SHX3_1 = Citizen
SHX3_1 = SHX3_1.CreateThread
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  while true do
    SHX0_2 = SHX1_1
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerCoords
      SHX0_2 = SHX0_2()
      SHX1_2 = pairs
      SHX2_2 = SHX0_1
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = SHX6_2[1]
        SHX8_2 = SHX7_2 - SHX0_2
        SHX8_2 = #SHX8_2
        SHX9_2 = 1.6
        if SHX8_2 <= SHX9_2 then
          SHX8_2 = 0
          SHX9_2 = HasPedGotWeapon
          SHX10_2 = PlayerPedId
          SHX10_2 = SHX10_2()
          SHX11_2 = -72657034
          SHX12_2 = false
          SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
          if SHX9_2 then
            SHX8_2 = 1
          end
          SHX9_2 = table
          SHX9_2 = SHX9_2.count
          SHX10_2 = CMG
          SHX10_2 = SHX10_2.getWeapons
          SHX10_2, SHX11_2, SHX12_2 = SHX10_2()
          SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
          if SHX8_2 < SHX9_2 then
            SHX9_2 = TriggerServerEvent
            SHX10_2 = "e8ecf4fc28"
            SHX11_2 = SHX0_2
            SHX9_2(SHX10_2, SHX11_2)
            SHX9_2 = Wait
            SHX10_2 = 3000
            SHX9_2(SHX10_2)
            break
          end
          SHX9_2 = GetGameTimer
          SHX9_2 = SHX9_2()
          SHX10_2 = SHX2_1
          SHX10_2 = SHX9_2 - SHX10_2
          SHX11_2 = 5000
          if SHX10_2 > SHX11_2 then
            SHX10_2 = TriggerServerEvent
            SHX11_2 = "20711efe1d"
            SHX12_2 = SHX0_2
            SHX10_2(SHX11_2, SHX12_2)
            SHX2_1 = SHX9_2
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 350
    SHX0_2(SHX1_2)
  end
end
SHX3_1(SHX4_1)
SHX3_1 = TriggerServerEvent
SHX4_1 = "b6d9f40b37"
SHX5_1 = SHX0_1
SHX3_1(SHX4_1, SHX5_1)
