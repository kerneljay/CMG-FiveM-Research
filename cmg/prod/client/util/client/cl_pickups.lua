-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = -599692201
SHX3_1 = {}
SHX3_1.blipId = 153
SHX3_1.blipColour = 2
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -512277925
SHX3_1 = {}
SHX3_1.blipId = 175
SHX3_1.blipColour = 3
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 1709896882
SHX3_1 = {}
SHX3_1.blipId = 354
SHX3_1.blipColour = 5
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = {}
SHX3_1 = -512277925
SHX2_1[SHX3_1] = "armour"
SHX3_1 = -599692201
SHX2_1[SHX3_1] = "health"
SHX3_1 = CMG
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = "pickup_"
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.generateUUID
  SHX4_2 = "pickups"
  SHX5_2 = 7
  SHX6_2 = "alphanumeric"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX3_2 = SHX0_1
  SHX4_2 = {}
  SHX5_2 = CreatePickupRotate
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2.x
  SHX8_2 = SHX1_2.y
  SHX9_2 = SHX1_2.z
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 512
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX4_2.pickupId = SHX5_2
  SHX5_2 = SHX2_1
  SHX5_2 = SHX5_2[SHX0_2]
  if not SHX5_2 then
    SHX5_2 = ""
  end
  SHX4_2.type = SHX5_2
  SHX3_2[SHX2_2] = SHX4_2
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    SHX3_2 = SHX0_1
    SHX3_2 = SHX3_2[SHX2_2]
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.addBlip
    SHX5_2 = SHX1_2.x
    SHX6_2 = SHX1_2.y
    SHX7_2 = SHX1_2.z
    SHX8_2 = SHX1_1
    SHX8_2 = SHX8_2[SHX0_2]
    SHX8_2 = SHX8_2.blipId
    SHX9_2 = SHX1_1
    SHX9_2 = SHX9_2[SHX0_2]
    SHX9_2 = SHX9_2.blipColour
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX3_2.blip = SHX4_2
  end
  return SHX2_2
end
SHX3_1.createPickup = SHX4_1
SHX3_1 = CMG
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.pickupId
  if SHX1_2 then
    SHX2_2 = DoesPickupExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = RemovePickup
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
    end
    SHX2_2 = SHX0_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2.blip
    if SHX2_2 then
      SHX2_2 = DoesBlipExist
      SHX3_2 = SHX0_1
      SHX3_2 = SHX3_2[SHX0_2]
      SHX3_2 = SHX3_2.blip
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = tCMG
        SHX2_2 = SHX2_2.removeBlip
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2[SHX0_2]
        SHX3_2 = SHX3_2.blip
        SHX2_2(SHX3_2)
      end
    end
  end
end
SHX3_1.deletePickup = SHX4_1
SHX3_1 = CMG
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.deletePickup
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
  end
end
SHX3_1.clearAllPickups = SHX4_1
SHX3_1 = CreateThread
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  while true do
    SHX0_2 = pairs
    SHX1_2 = SHX0_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = HasPickupBeenCollected
      SHX7_2 = SHX5_2.pickupId
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.deletePickup
        SHX7_2 = SHX4_2
        SHX6_2(SHX7_2)
        SHX6_2 = SHX5_2.type
        if "vehicle_boost" == SHX6_2 then
          SHX6_2 = CMG
          SHX6_2 = SHX6_2.getPlayerVehicle
          SHX6_2 = SHX6_2()
          SHX7_2 = SetVehicleBoostActive
          SHX8_2 = SHX6_2
          SHX9_2 = true
          SHX7_2(SHX8_2, SHX9_2)
          SHX7_2 = GetEntitySpeed
          SHX8_2 = SHX6_2
          SHX7_2 = SHX7_2(SHX8_2)
          SHX8_2 = SetVehicleForwardSpeed
          SHX9_2 = SHX6_2
          SHX10_2 = SHX7_2 + 30.0
          SHX8_2(SHX9_2, SHX10_2)
          SHX8_2 = AnimpostfxPlay
          SHX9_2 = "RaceTurbo"
          SHX10_2 = 0
          SHX11_2 = false
          SHX8_2(SHX9_2, SHX10_2, SHX11_2)
          SHX8_2 = SetTimeout
          SHX9_2 = 5000
          function SHX10_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3, SHX2_3
            SHX0_3 = AnimpostfxStop
            SHX1_3 = "RaceTurbo"
            SHX0_3(SHX1_3)
            SHX0_3 = SetVehicleBoostActive
            SHX1_3 = SHX6_2
            SHX2_3 = false
            SHX0_3(SHX1_3, SHX2_3)
          end
          SHX8_2(SHX9_2, SHX10_2)
        else
          SHX6_2 = SHX5_2.type
          if "armour" == SHX6_2 then
            SHX6_2 = TriggerServerEvent
            SHX7_2 = "da2ac49b6a"
            SHX6_2(SHX7_2)
          else
            SHX6_2 = SHX5_2.type
            if "health" == SHX6_2 then
              SHX6_2 = TriggerServerEvent
              SHX7_2 = "ec08c37d63"
              SHX6_2(SHX7_2)
            end
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX3_1(SHX4_1)
