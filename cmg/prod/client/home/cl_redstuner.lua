-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = vector4
SHX3_1 = -671.491
SHX4_1 = -2418.048
SHX5_1 = 14.259
SHX6_1 = 90.0
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1)
SHX1_1.coords = SHX2_1
SHX1_1.label = "Teleport Zone A"
SHX2_1 = vector4
SHX3_1 = -2220.138
SHX4_1 = 1157.367
SHX5_1 = -23.26
SHX6_1 = 223.75
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1)
SHX1_1.target = SHX2_1
SHX2_1 = {}
SHX3_1 = vector4
SHX4_1 = -2220.138
SHX5_1 = 1157.367
SHX6_1 = -23.26
SHX7_1 = 223.75
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1)
SHX2_1.coords = SHX3_1
SHX2_1.label = "Teleport Zone B"
SHX3_1 = vector4
SHX4_1 = -671.491
SHX5_1 = -2418.048
SHX6_1 = 14.259
SHX7_1 = 150.0
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1)
SHX2_1.target = SHX3_1
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX1_1 = 3.0
SHX2_1 = 5.0
SHX3_1 = {}
SHX4_1 = nil
SHX5_1 = CreateThread
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  while true do
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = GetEntityCoords
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = math
    SHX2_2 = SHX2_2.huge
    SHX3_2 = nil
    SHX4_2 = ipairs
    SHX5_2 = SHX0_1
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = vector3
      SHX11_2 = SHX9_2.coords
      SHX11_2 = SHX11_2.x
      SHX12_2 = SHX9_2.coords
      SHX12_2 = SHX12_2.y
      SHX13_2 = SHX9_2.coords
      SHX13_2 = SHX13_2.z
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
      SHX10_2 = SHX1_2 - SHX10_2
      SHX10_2 = #SHX10_2
      SHX11_2 = SHX2_1
      if SHX10_2 < SHX11_2 then
        SHX11_2 = SHX3_1
        SHX11_2 = SHX11_2[SHX8_2]
        if not SHX11_2 then
          SHX11_2 = SHX3_1
          SHX12_2 = CreateCheckpoint
          SHX13_2 = 47
          SHX14_2 = SHX9_2.coords
          SHX14_2 = SHX14_2.x
          SHX15_2 = SHX9_2.coords
          SHX15_2 = SHX15_2.y
          SHX16_2 = SHX9_2.coords
          SHX16_2 = SHX16_2.z
          SHX16_2 = SHX16_2 - 1.0
          SHX17_2 = SHX9_2.coords
          SHX17_2 = SHX17_2.x
          SHX18_2 = SHX9_2.coords
          SHX18_2 = SHX18_2.y
          SHX19_2 = SHX9_2.coords
          SHX19_2 = SHX19_2.z
          SHX20_2 = 4.0
          SHX21_2 = 255
          SHX22_2 = 0
          SHX23_2 = 0
          SHX24_2 = 100
          SHX25_2 = 0
          SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
          SHX11_2[SHX8_2] = SHX12_2
          SHX11_2 = SetCheckpointCylinderHeight
          SHX12_2 = SHX3_1
          SHX12_2 = SHX12_2[SHX8_2]
          SHX13_2 = 1.5
          SHX14_2 = 1.5
          SHX15_2 = 1.0
          SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        end
      else
        SHX11_2 = SHX3_1
        SHX11_2 = SHX11_2[SHX8_2]
        if SHX11_2 then
          SHX11_2 = DeleteCheckpoint
          SHX12_2 = SHX3_1
          SHX12_2 = SHX12_2[SHX8_2]
          SHX11_2(SHX12_2)
          SHX11_2 = SHX3_1
          SHX11_2[SHX8_2] = nil
        end
      end
      if SHX2_2 > SHX10_2 then
        SHX2_2 = SHX10_2
        SHX3_2 = SHX8_2
      end
    end
    SHX4_2 = SHX1_1
    if SHX2_2 < SHX4_2 then
      SHX4_1 = SHX3_2
    else
      SHX4_2 = nil
      SHX4_1 = SHX4_2
    end
    SHX4_2 = Wait
    SHX5_2 = 100
    SHX4_2(SHX5_2)
  end
end
SHX5_1(SHX6_1)
SHX5_1 = CreateThread
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  while true do
    SHX0_2 = SHX4_1
    if SHX0_2 then
      SHX0_2 = drawNativeNotification
      SHX1_2 = "Press ~INPUT_CONTEXT~ to teleport."
      SHX0_2(SHX1_2)
      SHX0_2 = IsControlJustReleased
      SHX1_2 = 0
      SHX2_2 = 38
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = PlayerPedId
        SHX0_2 = SHX0_2()
        SHX2_2 = SHX4_1
        SHX1_2 = SHX0_1
        SHX1_2 = SHX1_2[SHX2_2]
        SHX2_2 = SHX1_2.target
        SHX3_2 = IsPedInAnyVehicle
        SHX4_2 = SHX0_2
        SHX5_2 = false
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if SHX3_2 then
          SHX3_2 = GetVehiclePedIsIn
          SHX4_2 = SHX0_2
          SHX5_2 = false
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
          SHX4_2 = SetEntityCoords
          SHX5_2 = SHX3_2
          SHX6_2 = SHX2_2.x
          SHX7_2 = SHX2_2.y
          SHX8_2 = SHX2_2.z
          SHX9_2 = false
          SHX10_2 = false
          SHX11_2 = false
          SHX12_2 = true
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          SHX4_2 = SetEntityHeading
          SHX5_2 = SHX3_2
          SHX6_2 = SHX2_2.w
          SHX4_2(SHX5_2, SHX6_2)
        else
          SHX3_2 = SetEntityCoords
          SHX4_2 = SHX0_2
          SHX5_2 = SHX2_2.x
          SHX6_2 = SHX2_2.y
          SHX7_2 = SHX2_2.z
          SHX8_2 = false
          SHX9_2 = false
          SHX10_2 = false
          SHX11_2 = true
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          SHX3_2 = SetEntityHeading
          SHX4_2 = SHX0_2
          SHX5_2 = SHX2_2.w
          SHX3_2(SHX4_2, SHX5_2)
        end
        SHX3_2 = PlaySoundFrontend
        SHX4_2 = -1
        SHX5_2 = "CONFIRM_BEEP"
        SHX6_2 = "HUD_MINI_GAME_SOUNDSET"
        SHX7_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        SHX3_2 = Wait
        SHX4_2 = 5000
        SHX3_2(SHX4_2)
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX5_1(SHX6_1)
