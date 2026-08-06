-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1
SHX0_1 = nil
SHX1_1 = {}
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = pairs
  SHX1_2 = SHX1_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = RemoveBlip
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = table
  SHX0_2 = SHX0_2.clear
  SHX1_2 = SHX1_1
  SHX0_2(SHX1_2)
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX0_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = AddBlipForCoord
      SHX7_2 = SHX5_2.x
      SHX8_2 = SHX5_2.y
      SHX9_2 = SHX5_2.z
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
      SHX7_2 = table
      SHX7_2 = SHX7_2.insert
      SHX8_2 = SHX1_1
      SHX9_2 = SHX6_2
      SHX7_2(SHX8_2, SHX9_2)
    end
  end
end
function SHX3_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX2_2 = string
  SHX2_2 = SHX2_2.gsub
  SHX3_2 = SHX0_2
  SHX4_2 = "vector4%("
  SHX5_2 = ""
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = string
  SHX3_2 = SHX3_2.gsub
  SHX4_2 = SHX2_2
  SHX5_2 = "vector3%("
  SHX6_2 = ""
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX3_2
  SHX3_2 = string
  SHX3_2 = SHX3_2.gsub
  SHX4_2 = SHX2_2
  SHX5_2 = "%)"
  SHX6_2 = ""
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX3_2
  SHX3_2 = string
  SHX3_2 = SHX3_2.gsub
  SHX4_2 = SHX2_2
  SHX5_2 = " "
  SHX6_2 = ""
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX3_2
  SHX3_2 = {}
  SHX4_2 = string
  SHX4_2 = SHX4_2.gmatch
  SHX5_2 = SHX2_2
  SHX6_2 = [[
([^
]*)
?]]
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2)
  for SHX8_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = stringsplit
    SHX10_2 = SHX8_2
    SHX11_2 = ","
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    if 3 == SHX1_2 then
      SHX10_2 = table
      SHX10_2 = SHX10_2.insert
      SHX11_2 = SHX3_2
      SHX12_2 = vector3
      SHX13_2 = tonumber
      SHX14_2 = SHX9_2[1]
      SHX13_2 = SHX13_2(SHX14_2)
      if not SHX13_2 then
        SHX13_2 = 0.0
      end
      SHX14_2 = tonumber
      SHX15_2 = SHX9_2[2]
      SHX14_2 = SHX14_2(SHX15_2)
      if not SHX14_2 then
        SHX14_2 = 0.0
      end
      SHX15_2 = tonumber
      SHX16_2 = SHX9_2[3]
      SHX15_2 = SHX15_2(SHX16_2)
      if not SHX15_2 then
        SHX15_2 = 0.0
      end
      SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    elseif 4 == SHX1_2 then
      SHX10_2 = table
      SHX10_2 = SHX10_2.insert
      SHX11_2 = SHX3_2
      SHX12_2 = vector4
      SHX13_2 = tonumber
      SHX14_2 = SHX9_2[1]
      SHX13_2 = SHX13_2(SHX14_2)
      if not SHX13_2 then
        SHX13_2 = 0.0
      end
      SHX14_2 = tonumber
      SHX15_2 = SHX9_2[2]
      SHX14_2 = SHX14_2(SHX15_2)
      if not SHX14_2 then
        SHX14_2 = 0.0
      end
      SHX15_2 = tonumber
      SHX16_2 = SHX9_2[3]
      SHX15_2 = SHX15_2(SHX16_2)
      if not SHX15_2 then
        SHX15_2 = 0.0
      end
      SHX16_2 = tonumber
      SHX17_2 = SHX9_2[4]
      SHX16_2 = SHX16_2(SHX17_2)
      if not SHX16_2 then
        SHX16_2 = 0.0
      end
      SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    end
  end
  SHX4_2 = #SHX3_2
  if SHX4_2 > 0 then
    SHX0_1 = SHX3_2
  else
    SHX4_2 = nil
    SHX0_1 = SHX4_2
  end
  SHX4_2 = SHX2_1
  SHX4_2()
end
SHX4_1 = CMG
function SHX5_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.notify
  SHX4_2 = "pick 1st coord, press Y when done"
  SHX3_2(SHX4_2)
  while true do
    SHX3_2 = IsControlJustPressed
    SHX4_2 = 0
    SHX5_2 = 246
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = GetEntityCoords
  SHX4_2 = PlayerPedId
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2 = SHX4_2()
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
  SHX4_2 = GetEntityHeading
  SHX5_2 = PlayerPedId
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2 = SHX5_2()
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
  SHX5_2 = Wait
  SHX6_2 = 250
  SHX5_2(SHX6_2)
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.notify
  SHX6_2 = "pick 2nd coord, press Y when done"
  SHX5_2(SHX6_2)
  while true do
    SHX5_2 = IsControlJustPressed
    SHX6_2 = 0
    SHX7_2 = 246
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = GetEntityCoords
  SHX6_2 = PlayerPedId
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2 = SHX6_2()
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
  SHX6_2 = Wait
  SHX7_2 = 250
  SHX6_2(SHX7_2)
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.notify
  SHX7_2 = "pick 3rd coord, press Y when done"
  SHX6_2(SHX7_2)
  while true do
    SHX6_2 = IsControlJustPressed
    SHX7_2 = 0
    SHX8_2 = 246
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if SHX6_2 then
      break
    end
    SHX6_2 = Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX6_2 = GetEntityCoords
  SHX7_2 = PlayerPedId
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2 = SHX7_2()
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
  SHX7_2 = {}
  SHX8_2 = 0
  SHX9_2 = SHX2_2 - 1
  SHX10_2 = 1
  for SHX11_2 = SHX8_2, SHX9_2, SHX10_2 do
    SHX12_2 = 0
    SHX13_2 = SHX1_2 - 1
    SHX14_2 = 1
    for SHX15_2 = SHX12_2, SHX13_2, SHX14_2 do
      SHX16_2 = SHX5_2 - SHX3_2
      SHX17_2 = SHX6_2 - SHX3_2
      SHX18_2 = vector3
      SHX19_2 = SHX17_2.x
      SHX19_2 = SHX19_2 / SHX1_2
      SHX19_2 = SHX19_2 * SHX15_2
      SHX20_2 = SHX17_2.y
      SHX20_2 = SHX20_2 / SHX1_2
      SHX20_2 = SHX20_2 * SHX15_2
      SHX21_2 = SHX17_2.z
      SHX21_2 = SHX21_2 / SHX1_2
      SHX21_2 = SHX21_2 * SHX15_2
      SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2)
      SHX18_2 = SHX3_2 + SHX18_2
      SHX19_2 = vector3
      SHX20_2 = SHX16_2.x
      SHX20_2 = SHX20_2 / SHX2_2
      SHX20_2 = SHX20_2 * SHX11_2
      SHX21_2 = SHX16_2.y
      SHX21_2 = SHX21_2 / SHX2_2
      SHX21_2 = SHX21_2 * SHX11_2
      SHX22_2 = SHX16_2.z
      SHX22_2 = SHX22_2 / SHX2_2
      SHX22_2 = SHX22_2 * SHX11_2
      SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2)
      SHX18_2 = SHX18_2 + SHX19_2
      SHX19_2 = CMG
      SHX19_2 = SHX19_2.loadModel
      SHX20_2 = 1641152947
      SHX19_2(SHX20_2)
      SHX19_2 = CMG
      SHX19_2 = SHX19_2.spawnVehicle
      SHX20_2 = SHX0_2
      SHX21_2 = SHX18_2.x
      SHX22_2 = SHX18_2.y
      SHX23_2 = SHX18_2.z
      SHX24_2 = SHX4_2
      SHX25_2 = false
      SHX26_2 = false
      SHX27_2 = false
      SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
      SHX20_2 = CreatePedInsideVehicle
      SHX21_2 = SHX19_2
      SHX22_2 = 0
      SHX23_2 = 1641152947
      SHX24_2 = -1
      SHX25_2 = false
      SHX26_2 = false
      SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
      SHX20_2 = SetModelAsNoLongerNeeded
      SHX21_2 = 1641152947
      SHX20_2(SHX21_2)
      SHX20_2 = table
      SHX20_2 = SHX20_2.insert
      SHX21_2 = SHX7_2
      SHX22_2 = SHX18_2
      SHX20_2(SHX21_2, SHX22_2)
    end
  end
  SHX8_2 = 1
  SHX9_2 = #SHX7_2
  SHX10_2 = 1
  for SHX11_2 = SHX8_2, SHX9_2, SHX10_2 do
    SHX12_2 = print
    SHX13_2 = "vector4("
    SHX14_2 = SHX7_2[SHX11_2]
    SHX14_2 = SHX14_2.x
    SHX15_2 = ","
    SHX16_2 = SHX7_2[SHX11_2]
    SHX16_2 = SHX16_2.y
    SHX17_2 = ","
    SHX18_2 = SHX7_2[SHX11_2]
    SHX18_2 = SHX18_2.z
    SHX19_2 = ","
    SHX20_2 = SHX4_2
    SHX21_2 = "),"
    SHX13_2 = SHX13_2 .. SHX14_2 .. SHX15_2 .. SHX16_2 .. SHX17_2 .. SHX18_2 .. SHX19_2 .. SHX20_2 .. SHX21_2
    SHX12_2(SHX13_2)
  end
end
SHX4_1.gridPositionSaver = SHX5_1
SHX4_1 = {}
SHX4_1.moveSpeed = 50.0
SHX4_1.mouseSpeed = 500.0
SHX4_1.camera = nil
SHX4_1.min = nil
SHX4_1.max = nil
SHX4_1.selectedType = "NONE"
SHX4_1.selectedDistance = 0.0
SHX4_1.onClose = nil
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX2_2 = 0.001
  SHX3_2 = {}
  SHX4_2 = vector3
  SHX5_2 = SHX0_2.x
  SHX5_2 = SHX5_2 - SHX2_2
  SHX6_2 = SHX0_2.y
  SHX6_2 = SHX6_2 - SHX2_2
  SHX7_2 = SHX0_2.z
  SHX7_2 = SHX7_2 - SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = vector3
  SHX6_2 = SHX1_2.x
  SHX6_2 = SHX6_2 + SHX2_2
  SHX7_2 = SHX0_2.y
  SHX7_2 = SHX7_2 - SHX2_2
  SHX8_2 = SHX0_2.z
  SHX8_2 = SHX8_2 - SHX2_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = vector3
  SHX7_2 = SHX1_2.x
  SHX7_2 = SHX7_2 + SHX2_2
  SHX8_2 = SHX1_2.y
  SHX8_2 = SHX8_2 + SHX2_2
  SHX9_2 = SHX0_2.z
  SHX9_2 = SHX9_2 - SHX2_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = vector3
  SHX8_2 = SHX0_2.x
  SHX8_2 = SHX8_2 - SHX2_2
  SHX9_2 = SHX1_2.y
  SHX9_2 = SHX9_2 + SHX2_2
  SHX10_2 = SHX0_2.z
  SHX10_2 = SHX10_2 - SHX2_2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX8_2 = vector3
  SHX9_2 = SHX0_2.x
  SHX9_2 = SHX9_2 - SHX2_2
  SHX10_2 = SHX0_2.y
  SHX10_2 = SHX10_2 - SHX2_2
  SHX11_2 = SHX1_2.z
  SHX11_2 = SHX11_2 + SHX2_2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX9_2 = vector3
  SHX10_2 = SHX1_2.x
  SHX10_2 = SHX10_2 + SHX2_2
  SHX11_2 = SHX0_2.y
  SHX11_2 = SHX11_2 - SHX2_2
  SHX12_2 = SHX1_2.z
  SHX12_2 = SHX12_2 + SHX2_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX10_2 = vector3
  SHX11_2 = SHX1_2.x
  SHX11_2 = SHX11_2 + SHX2_2
  SHX12_2 = SHX1_2.y
  SHX12_2 = SHX12_2 + SHX2_2
  SHX13_2 = SHX1_2.z
  SHX13_2 = SHX13_2 + SHX2_2
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX11_2 = vector3
  SHX12_2 = SHX0_2.x
  SHX12_2 = SHX12_2 - SHX2_2
  SHX13_2 = SHX1_2.y
  SHX13_2 = SHX13_2 + SHX2_2
  SHX14_2 = SHX1_2.z
  SHX14_2 = SHX14_2 + SHX2_2
  SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX3_2[3] = SHX6_2
  SHX3_2[4] = SHX7_2
  SHX3_2[5] = SHX8_2
  SHX3_2[6] = SHX9_2
  SHX3_2[7] = SHX10_2
  SHX3_2[8] = SHX11_2
  SHX3_2[9] = SHX12_2
  SHX3_2[10] = SHX13_2
  SHX3_2[11] = SHX14_2
  return SHX3_2
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = {}
  SHX2_2 = {}
  SHX3_2 = SHX0_2[3]
  SHX4_2 = SHX0_2[2]
  SHX5_2 = SHX0_2[1]
  SHX2_2[1] = SHX3_2
  SHX2_2[2] = SHX4_2
  SHX2_2[3] = SHX5_2
  SHX3_2 = {}
  SHX4_2 = SHX0_2[4]
  SHX5_2 = SHX0_2[3]
  SHX6_2 = SHX0_2[1]
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX3_2[3] = SHX6_2
  SHX4_2 = {}
  SHX5_2 = SHX0_2[5]
  SHX6_2 = SHX0_2[6]
  SHX7_2 = SHX0_2[7]
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = {}
  SHX6_2 = SHX0_2[5]
  SHX7_2 = SHX0_2[7]
  SHX8_2 = SHX0_2[8]
  SHX5_2[1] = SHX6_2
  SHX5_2[2] = SHX7_2
  SHX5_2[3] = SHX8_2
  SHX6_2 = {}
  SHX7_2 = SHX0_2[3]
  SHX8_2 = SHX0_2[4]
  SHX9_2 = SHX0_2[7]
  SHX6_2[1] = SHX7_2
  SHX6_2[2] = SHX8_2
  SHX6_2[3] = SHX9_2
  SHX7_2 = {}
  SHX8_2 = SHX0_2[8]
  SHX9_2 = SHX0_2[7]
  SHX10_2 = SHX0_2[4]
  SHX7_2[1] = SHX8_2
  SHX7_2[2] = SHX9_2
  SHX7_2[3] = SHX10_2
  SHX8_2 = {}
  SHX9_2 = SHX0_2[1]
  SHX10_2 = SHX0_2[2]
  SHX11_2 = SHX0_2[5]
  SHX8_2[1] = SHX9_2
  SHX8_2[2] = SHX10_2
  SHX8_2[3] = SHX11_2
  SHX9_2 = {}
  SHX10_2 = SHX0_2[6]
  SHX11_2 = SHX0_2[5]
  SHX12_2 = SHX0_2[2]
  SHX9_2[1] = SHX10_2
  SHX9_2[2] = SHX11_2
  SHX9_2[3] = SHX12_2
  SHX10_2 = {}
  SHX11_2 = SHX0_2[2]
  SHX12_2 = SHX0_2[3]
  SHX13_2 = SHX0_2[6]
  SHX10_2[1] = SHX11_2
  SHX10_2[2] = SHX12_2
  SHX10_2[3] = SHX13_2
  SHX11_2 = {}
  SHX12_2 = SHX0_2[3]
  SHX13_2 = SHX0_2[7]
  SHX14_2 = SHX0_2[6]
  SHX11_2[1] = SHX12_2
  SHX11_2[2] = SHX13_2
  SHX11_2[3] = SHX14_2
  SHX12_2 = {}
  SHX13_2 = SHX0_2[5]
  SHX14_2 = SHX0_2[8]
  SHX15_2 = SHX0_2[4]
  SHX12_2[1] = SHX13_2
  SHX12_2[2] = SHX14_2
  SHX12_2[3] = SHX15_2
  SHX13_2 = {}
  SHX14_2 = SHX0_2[5]
  SHX15_2 = SHX0_2[4]
  SHX16_2 = SHX0_2[1]
  SHX13_2[1] = SHX14_2
  SHX13_2[2] = SHX15_2
  SHX13_2[3] = SHX16_2
  SHX1_2[1] = SHX2_2
  SHX1_2[2] = SHX3_2
  SHX1_2[3] = SHX4_2
  SHX1_2[4] = SHX5_2
  SHX1_2[5] = SHX6_2
  SHX1_2[6] = SHX7_2
  SHX1_2[7] = SHX8_2
  SHX1_2[8] = SHX9_2
  SHX1_2[9] = SHX10_2
  SHX1_2[10] = SHX11_2
  SHX1_2[11] = SHX12_2
  SHX1_2[12] = SHX13_2
  return SHX1_2
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  SHX1_2 = ipairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2[1]
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX6_2[1]
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX6_2[1]
    SHX9_2 = SHX9_2.z
    SHX10_2 = SHX6_2[2]
    SHX10_2 = SHX10_2.x
    SHX11_2 = SHX6_2[2]
    SHX11_2 = SHX11_2.y
    SHX12_2 = SHX6_2[2]
    SHX12_2 = SHX12_2.z
    SHX13_2 = SHX6_2[3]
    SHX13_2 = SHX13_2.x
    SHX14_2 = SHX6_2[3]
    SHX14_2 = SHX14_2.y
    SHX15_2 = SHX6_2[3]
    SHX15_2 = SHX15_2.z
    SHX16_2 = DrawPoly
    SHX17_2 = SHX7_2
    SHX18_2 = SHX8_2
    SHX19_2 = SHX9_2
    SHX20_2 = SHX10_2
    SHX21_2 = SHX11_2
    SHX22_2 = SHX12_2
    SHX23_2 = SHX13_2
    SHX24_2 = SHX14_2
    SHX25_2 = SHX15_2
    SHX26_2 = SHX5_2 * 19
    SHX27_2 = SHX5_2 * 19
    SHX28_2 = 255
    SHX27_2 = SHX28_2 - SHX27_2
    SHX28_2 = 0
    SHX29_2 = 200
    SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
  end
end
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX5_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX6_1
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX7_1
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = GetFrameTime
  SHX0_2 = SHX0_2()
  SHX1_2 = GetCamMatrix
  SHX2_2 = SHX4_1.camera
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  SHX5_2 = GetCamRot
  SHX6_2 = SHX4_1.camera
  SHX7_2 = 2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = DisableControlAction
  SHX7_2 = 0
  SHX8_2 = 32
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = IsDisabledControlPressed
  SHX7_2 = 0
  SHX8_2 = 32
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if SHX6_2 then
    SHX6_2 = SHX4_1.moveSpeed
    SHX6_2 = SHX2_2 * SHX6_2
    SHX6_2 = SHX6_2 * SHX0_2
    SHX4_2 = SHX4_2 + SHX6_2
  end
  SHX6_2 = DisableControlAction
  SHX7_2 = 0
  SHX8_2 = 34
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = IsDisabledControlPressed
  SHX7_2 = 0
  SHX8_2 = 34
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if SHX6_2 then
    SHX6_2 = SHX4_1.moveSpeed
    SHX6_2 = SHX1_2 * SHX6_2
    SHX6_2 = SHX6_2 * SHX0_2
    SHX4_2 = SHX4_2 - SHX6_2
  end
  SHX6_2 = DisableControlAction
  SHX7_2 = 0
  SHX8_2 = 33
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = IsDisabledControlPressed
  SHX7_2 = 0
  SHX8_2 = 33
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if SHX6_2 then
    SHX6_2 = SHX4_1.moveSpeed
    SHX6_2 = SHX2_2 * SHX6_2
    SHX6_2 = SHX6_2 * SHX0_2
    SHX4_2 = SHX4_2 - SHX6_2
  end
  SHX6_2 = DisableControlAction
  SHX7_2 = 0
  SHX8_2 = 35
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = IsDisabledControlPressed
  SHX7_2 = 0
  SHX8_2 = 35
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if SHX6_2 then
    SHX6_2 = SHX4_1.moveSpeed
    SHX6_2 = SHX1_2 * SHX6_2
    SHX6_2 = SHX6_2 * SHX0_2
    SHX4_2 = SHX4_2 + SHX6_2
  end
  SHX6_2 = DisableControlAction
  SHX7_2 = 0
  SHX8_2 = 22
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = IsDisabledControlPressed
  SHX7_2 = 0
  SHX8_2 = 22
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if SHX6_2 then
    SHX6_2 = SHX4_1.moveSpeed
    SHX6_2 = SHX3_2 * SHX6_2
    SHX6_2 = SHX6_2 * SHX0_2
    SHX4_2 = SHX4_2 + SHX6_2
  end
  SHX6_2 = DisableControlAction
  SHX7_2 = 0
  SHX8_2 = 21
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = IsDisabledControlPressed
  SHX7_2 = 0
  SHX8_2 = 21
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if SHX6_2 then
    SHX6_2 = SHX4_1.moveSpeed
    SHX6_2 = SHX3_2 * SHX6_2
    SHX6_2 = SHX6_2 * SHX0_2
    SHX4_2 = SHX4_2 - SHX6_2
  end
  SHX6_2 = DisableControlAction
  SHX7_2 = 0
  SHX8_2 = 1
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = GetDisabledControlNormal
  SHX7_2 = 0
  SHX8_2 = 1
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = -SHX6_2
  SHX7_2 = SHX4_1.mouseSpeed
  SHX6_2 = SHX6_2 * SHX7_2
  SHX6_2 = SHX6_2 * SHX0_2
  SHX7_2 = vector3
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = SHX6_2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = SHX5_2 + SHX7_2
  SHX7_2 = DisableControlAction
  SHX8_2 = 0
  SHX9_2 = 2
  SHX10_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = GetDisabledControlNormal
  SHX8_2 = 0
  SHX9_2 = 2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = -SHX7_2
  SHX8_2 = SHX4_1.mouseSpeed
  SHX7_2 = SHX7_2 * SHX8_2
  SHX7_2 = SHX7_2 * SHX0_2
  SHX8_2 = math
  SHX8_2 = SHX8_2.abs
  SHX9_2 = SHX5_2.x
  SHX9_2 = SHX9_2 + SHX7_2
  SHX8_2 = SHX8_2(SHX9_2)
  if SHX8_2 < 70.0 then
    SHX8_2 = vector3
    SHX9_2 = SHX7_2
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = SHX5_2 + SHX8_2
  end
  SHX8_2 = SetCamCoord
  SHX9_2 = SHX4_1.camera
  SHX10_2 = SHX4_2.x
  SHX11_2 = SHX4_2.y
  SHX12_2 = SHX4_2.z
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = SetCamRot
  SHX9_2 = SHX4_1.camera
  SHX10_2 = SHX5_2.x
  SHX11_2 = SHX5_2.y
  SHX12_2 = SHX5_2.z
  SHX13_2 = 2
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 24
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = IsDisabledControlPressed
  SHX1_2 = 0
  SHX2_2 = 24
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = SHX4_1.selectedType
    if "NONE" == SHX0_2 then
      SHX0_2 = GetScreenCoordFromWorldCoord
      SHX1_2 = SHX4_1.min
      SHX1_2 = SHX1_2.x
      SHX2_2 = SHX4_1.min
      SHX2_2 = SHX2_2.y
      SHX3_2 = SHX4_1.min
      SHX3_2 = SHX3_2.z
      SHX0_2, SHX1_2, SHX2_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      if SHX0_2 then
        SHX3_2 = math
        SHX3_2 = SHX3_2.abs
        SHX4_2 = SHX1_2 - 0.5
        SHX3_2 = SHX3_2(SHX4_2)
        SHX4_2 = 0.02
        if SHX3_2 < SHX4_2 then
          SHX3_2 = math
          SHX3_2 = SHX3_2.abs
          SHX4_2 = SHX2_2 - 0.5
          SHX3_2 = SHX3_2(SHX4_2)
          SHX4_2 = 0.05
          if SHX3_2 < SHX4_2 then
            SHX4_1.selectedType = "MIN"
            SHX3_2 = GetCamCoord
            SHX4_2 = SHX4_1.camera
            SHX3_2 = SHX3_2(SHX4_2)
            SHX4_2 = SHX4_1.min
            SHX3_2 = SHX3_2 - SHX4_2
            SHX3_2 = #SHX3_2
            SHX4_1.selectedDistance = SHX3_2
            return
          end
        end
      end
      SHX3_2 = GetScreenCoordFromWorldCoord
      SHX4_2 = SHX4_1.max
      SHX4_2 = SHX4_2.x
      SHX5_2 = SHX4_1.max
      SHX5_2 = SHX5_2.y
      SHX6_2 = SHX4_1.max
      SHX6_2 = SHX6_2.z
      SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = SHX5_2
      SHX1_2 = SHX4_2
      SHX0_2 = SHX3_2
      if SHX0_2 then
        SHX3_2 = math
        SHX3_2 = SHX3_2.abs
        SHX4_2 = SHX1_2 - 0.5
        SHX3_2 = SHX3_2(SHX4_2)
        SHX4_2 = 0.02
        if SHX3_2 < SHX4_2 then
          SHX3_2 = math
          SHX3_2 = SHX3_2.abs
          SHX4_2 = SHX2_2 - 0.5
          SHX3_2 = SHX3_2(SHX4_2)
          SHX4_2 = 0.05
          if SHX3_2 < SHX4_2 then
            SHX4_1.selectedType = "MAX"
            SHX3_2 = GetCamCoord
            SHX4_2 = SHX4_1.camera
            SHX3_2 = SHX3_2(SHX4_2)
            SHX4_2 = SHX4_1.max
            SHX3_2 = SHX3_2 - SHX4_2
            SHX3_2 = #SHX3_2
            SHX4_1.selectedDistance = SHX3_2
            return
          end
        end
      end
    else
      SHX0_2 = GetCamMatrix
      SHX1_2 = SHX4_1.camera
      SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
      SHX4_2 = SHX4_1.selectedType
      if "MIN" == SHX4_2 then
        SHX4_2 = SHX4_1.selectedDistance
        SHX4_2 = SHX1_2 * SHX4_2
        SHX4_2 = SHX3_2 + SHX4_2
        SHX4_1.min = SHX4_2
      else
        SHX4_2 = SHX4_1.selectedDistance
        SHX4_2 = SHX1_2 * SHX4_2
        SHX4_2 = SHX3_2 + SHX4_2
        SHX4_1.max = SHX4_2
      end
    end
  else
    SHX4_1.selectedType = "NONE"
  end
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 177
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = IsDisabledControlPressed
  SHX1_2 = 0
  SHX2_2 = 177
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.toggleBoundsEditor
    SHX0_2()
  end
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX0_2 = DrawMarker
  SHX1_2 = 28
  SHX2_2 = SHX4_1.min
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX4_1.min
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX4_1.min
  SHX4_2 = SHX4_2.z
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 3.0
  SHX12_2 = 3.0
  SHX13_2 = 3.0
  SHX14_2 = 0
  SHX15_2 = 0
  SHX16_2 = 255
  SHX17_2 = 255
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = 2
  SHX21_2 = false
  SHX22_2 = nil
  SHX23_2 = nil
  SHX24_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX0_2 = DrawMarker
  SHX1_2 = 28
  SHX2_2 = SHX4_1.max
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX4_1.max
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX4_1.max
  SHX4_2 = SHX4_2.z
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 3.0
  SHX12_2 = 3.0
  SHX13_2 = 3.0
  SHX14_2 = 0
  SHX15_2 = 0
  SHX16_2 = 255
  SHX17_2 = 255
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = 2
  SHX21_2 = false
  SHX22_2 = nil
  SHX23_2 = nil
  SHX24_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX0_2 = SHX8_1
  SHX1_2 = SHX4_1.min
  SHX2_2 = SHX4_1.max
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX9_1
  SHX0_2()
  SHX0_2 = SHX10_1
  SHX0_2()
  SHX0_2 = SHX11_1
  SHX0_2()
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = SetPlayerControl
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX3_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = RenderScriptCams
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = 0
  SHX4_2 = false
  SHX5_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = SetCamActive
  SHX1_2 = SHX4_1.camera
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = DestroyCam
  SHX1_2 = SHX4_1.camera
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX4_1.camera = nil
  SHX0_2 = SHX4_1.min
  SHX1_2 = SHX4_1.max
  SHX2_2 = SHX4_1.onClose
  SHX4_1.onClose = nil
  SHX4_1.selectedType = "NONE"
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX3_2(SHX4_2, SHX5_2)
  else
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.clientPrompt
    SHX4_2 = "Bounds"
    SHX5_2 = tostring
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = ", "
    SHX7_2 = tostring
    SHX8_2 = SHX1_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.Visible
  SHX4_2 = RMenu
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.Get
  SHX6_2 = "devmenu"
  SHX7_2 = "main"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
end
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  if not SHX0_2 then
    SHX1_2 = {}
    SHX0_2 = SHX1_2
  end
  SHX1_2 = SetPlayerControl
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX4_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = CreateCamWithParams
  SHX4_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 70.0
  SHX12_2 = false
  SHX13_2 = 0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX4_1.camera = SHX3_2
  SHX3_2 = SetCamActive
  SHX4_2 = SHX4_1.camera
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RenderScriptCams
  SHX4_2 = true
  SHX5_2 = false
  SHX6_2 = 0
  SHX7_2 = false
  SHX8_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = SHX0_2.min
  if SHX3_2 then
    SHX3_2 = SHX0_2.max
    if SHX3_2 then
      SHX3_2 = SHX0_2.min
      SHX4_1.min = SHX3_2
      SHX3_2 = SHX0_2.max
      SHX4_1.max = SHX3_2
  end
  else
    SHX3_2 = GetOffsetFromEntityInWorldCoords
    SHX4_2 = SHX1_2
    SHX5_2 = -10.0
    SHX6_2 = -10.0
    SHX7_2 = 0.0
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX4_1.min = SHX3_2
    SHX3_2 = GetOffsetFromEntityInWorldCoords
    SHX4_2 = SHX1_2
    SHX5_2 = 10.0
    SHX6_2 = 10.0
    SHX7_2 = 20.0
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX4_1.max = SHX3_2
  end
  SHX4_1.selectedType = "NONE"
  SHX3_2 = SHX0_2.onClose
  SHX4_1.onClose = SHX3_2
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX4_1.camera
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX12_1
      SHX0_3()
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX3_2(SHX4_2)
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.Visible
  SHX4_2 = RMenu
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.Get
  SHX6_2 = "devmenu"
  SHX7_2 = "main"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
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
  SHX0_2 = SHX4_1.camera
  SHX0_2 = nil ~= SHX0_2
  return SHX0_2
end
SHX15_1.isBoundsEditorActive = SHX16_1
SHX15_1 = CMG
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX4_1.camera
  if not SHX0_2 then
    return
  end
  SHX0_2 = SetPlayerControl
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX3_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = RenderScriptCams
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = 0
  SHX4_2 = false
  SHX5_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = SetCamActive
  SHX1_2 = SHX4_1.camera
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = DestroyCam
  SHX1_2 = SHX4_1.camera
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX4_1.camera = nil
  SHX4_1.selectedType = "NONE"
  SHX0_2 = SHX4_1.onClose
  SHX4_1.onClose = nil
  if SHX0_2 then
    SHX1_2 = SHX0_2
    SHX2_2 = nil
    SHX3_2 = nil
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX15_1.cancelBoundsEditor = SHX16_1
SHX15_1 = CMG
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX4_1.camera
  if SHX2_2 then
    SHX2_2 = nil
    SHX3_2 = nil
    return SHX2_2, SHX3_2
  end
  SHX2_2 = false
  SHX3_2 = nil
  SHX4_2 = nil
  SHX5_2 = SHX14_1
  SHX6_2 = {}
  SHX6_2.min = SHX0_2
  SHX6_2.max = SHX1_2
  function SHX7_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3
    SHX3_2 = SHX0_3
    SHX4_2 = SHX1_3
    SHX2_3 = true
    SHX2_2 = SHX2_3
  end
  SHX6_2.onClose = SHX7_2
  SHX5_2(SHX6_2)
  while true do
    SHX5_2 = SHX4_1.camera
    if not SHX5_2 then
      break
    end
    SHX5_2 = Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  if not SHX2_2 then
    SHX5_2 = nil
    SHX6_2 = nil
    return SHX5_2, SHX6_2
  end
  SHX5_2 = SHX3_2
  SHX6_2 = SHX4_2
  return SHX5_2, SHX6_2
end
SHX15_1.runBoundsEditor = SHX16_1
SHX15_1 = CMG
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1.camera
  if SHX0_2 then
    SHX0_2 = SHX13_1
    SHX0_2()
  else
    SHX0_2 = SHX14_1
    SHX0_2()
  end
end
SHX15_1.toggleBoundsEditor = SHX16_1
SHX15_1 = CMG
SHX15_1 = SHX15_1.registerDevMenuItems
SHX16_1 = "Editors"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Vector3 Coords Editor"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Enter Vector3 List"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4
        SHX1_4 = SHX3_1
        SHX2_4 = SHX0_4
        SHX3_4 = 3
        SHX1_4(SHX2_4, SHX3_4)
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Vector4 Coords Editor"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Enter Vector4 List"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4
        SHX1_4 = SHX3_1
        SHX2_4 = SHX0_4
        SHX3_4 = 4
        SHX1_4(SHX2_4, SHX3_4)
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Grid Position Saver"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Vehicle Name"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4
        SHX1_4 = Wait
        SHX2_4 = 100
        SHX1_4(SHX2_4)
        SHX1_4 = CMG
        SHX1_4 = SHX1_4.clientPrompt
        SHX2_4 = "Number of Rows"
        SHX3_4 = ""
        function SHX4_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5, SHX4_5
          SHX1_5 = Wait
          SHX2_5 = 100
          SHX1_5(SHX2_5)
          SHX1_5 = CMG
          SHX1_5 = SHX1_5.clientPrompt
          SHX2_5 = "Number of Columns"
          SHX3_5 = ""
          function SHX4_5(SHX0_6)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX1_6, SHX2_6, SHX3_6, SHX4_6
            SHX1_6 = Wait
            SHX2_6 = 100
            SHX1_6(SHX2_6)
            SHX1_6 = CMG
            SHX1_6 = SHX1_6.gridPositionSaver
            SHX2_6 = SHX0_4
            SHX3_6 = SHX0_5
            SHX4_6 = SHX0_6
            SHX1_6(SHX2_6, SHX3_6, SHX4_6)
          end
          SHX1_5(SHX2_5, SHX3_5, SHX4_5)
        end
        SHX1_4(SHX2_4, SHX3_4, SHX4_4)
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Bounds Editor"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.toggleBoundsEditor
      SHX3_3()
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Object Placement"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Prop Name"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4
        SHX1_4 = CMG
        SHX1_4 = SHX1_4.createDebugObject
        SHX2_4 = SHX0_4
        SHX1_4(SHX2_4)
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = CMG
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetEntityCoords
  SHX3_2 = PlayerPedId
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = CreateObject
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX7_2 = SHX7_2 - 1
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = SetEntityInvincible
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetEntityAlpha
  SHX5_2 = SHX3_2
  SHX6_2 = 100
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX1_2
  SHX4_2(SHX5_2)
  SHX4_2 = true
  while SHX4_2 do
    SHX5_2 = GetEntityCoords
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = GetEntityHeading
    SHX7_2 = SHX3_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = IsControlPressed
    SHX8_2 = 0
    SHX9_2 = 121
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = SetEntityCoordsNoOffset
      SHX8_2 = SHX3_2
      SHX9_2 = SHX5_2.x
      SHX10_2 = SHX5_2.y
      SHX11_2 = SHX5_2.z
      SHX11_2 = SHX11_2 + 0.01
      SHX12_2 = true
      SHX13_2 = false
      SHX14_2 = false
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    end
    SHX7_2 = IsControlPressed
    SHX8_2 = 0
    SHX9_2 = 178
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = SetEntityCoordsNoOffset
      SHX8_2 = SHX3_2
      SHX9_2 = SHX5_2.x
      SHX10_2 = SHX5_2.y
      SHX11_2 = SHX5_2.z
      SHX11_2 = SHX11_2 - 0.01
      SHX12_2 = true
      SHX13_2 = false
      SHX14_2 = false
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    end
    SHX7_2 = IsControlPressed
    SHX8_2 = 0
    SHX9_2 = 111
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = SetEntityCoordsNoOffset
      SHX8_2 = SHX3_2
      SHX9_2 = SHX5_2.x
      SHX10_2 = SHX5_2.y
      SHX10_2 = SHX10_2 + 0.01
      SHX11_2 = SHX5_2.z
      SHX12_2 = true
      SHX13_2 = false
      SHX14_2 = false
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    end
    SHX7_2 = IsControlPressed
    SHX8_2 = 0
    SHX9_2 = 110
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = SetEntityCoordsNoOffset
      SHX8_2 = SHX3_2
      SHX9_2 = SHX5_2.x
      SHX10_2 = SHX5_2.y
      SHX10_2 = SHX10_2 - 0.01
      SHX11_2 = SHX5_2.z
      SHX12_2 = true
      SHX13_2 = false
      SHX14_2 = false
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    end
    SHX7_2 = IsControlPressed
    SHX8_2 = 0
    SHX9_2 = 108
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = SetEntityCoordsNoOffset
      SHX8_2 = SHX3_2
      SHX9_2 = SHX5_2.x
      SHX9_2 = SHX9_2 - 0.01
      SHX10_2 = SHX5_2.y
      SHX11_2 = SHX5_2.z
      SHX12_2 = true
      SHX13_2 = false
      SHX14_2 = false
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    end
    SHX7_2 = IsControlPressed
    SHX8_2 = 0
    SHX9_2 = 107
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = SetEntityCoordsNoOffset
      SHX8_2 = SHX3_2
      SHX9_2 = SHX5_2.x
      SHX9_2 = SHX9_2 + 0.01
      SHX10_2 = SHX5_2.y
      SHX11_2 = SHX5_2.z
      SHX12_2 = true
      SHX13_2 = false
      SHX14_2 = false
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    end
    SHX7_2 = IsControlPressed
    SHX8_2 = 0
    SHX9_2 = 117
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = SetEntityHeading
      SHX8_2 = SHX3_2
      SHX9_2 = SHX6_2 + 0.1
      SHX7_2(SHX8_2, SHX9_2)
    end
    SHX7_2 = IsControlPressed
    SHX8_2 = 0
    SHX9_2 = 118
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = SetEntityHeading
      SHX8_2 = SHX3_2
      SHX9_2 = SHX6_2 - 0.1
      SHX7_2(SHX8_2, SHX9_2)
    end
    SHX7_2 = IsControlJustPressed
    SHX8_2 = 0
    SHX9_2 = 177
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = print
      SHX8_2 = SHX5_2
      SHX9_2 = SHX6_2
      SHX7_2(SHX8_2, SHX9_2)
      SHX7_2 = SetEntityAlpha
      SHX8_2 = SHX3_2
      SHX9_2 = 255
      SHX10_2 = false
      SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX4_2 = false
    end
    SHX7_2 = Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
  end
end
SHX15_1.createDebugObject = SHX16_1
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = table
  SHX2_2 = SHX2_2.sort
  SHX3_2 = SHX0_2
  function SHX4_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3
    SHX2_3 = SHX1_2
    SHX3_3 = SHX0_3.xyz
    SHX2_3 = SHX2_3 - SHX3_3
    SHX2_3 = #SHX2_3
    SHX3_3 = SHX1_2
    SHX4_3 = SHX1_3.xyz
    SHX3_3 = SHX3_3 - SHX4_3
    SHX3_3 = #SHX3_3
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX2_2(SHX3_2, SHX4_2)
  return SHX0_2
end
SHX16_1 = CMG
SHX16_1 = SHX16_1.registerDevMenuThread
SHX17_1 = "Coords Editor"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = pairs
  SHX1_2 = SHX15_1
  SHX2_2 = SHX0_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2 = SHX1_2(SHX2_2)
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    if SHX4_2 <= 50 then
      SHX6_2 = DrawMarker
      SHX7_2 = 28
      SHX8_2 = SHX5_2.x
      SHX9_2 = SHX5_2.y
      SHX10_2 = SHX5_2.z
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = 0.0
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 0.5
      SHX18_2 = 0.5
      SHX19_2 = 0.5
      SHX20_2 = 255
      SHX21_2 = 0
      SHX22_2 = 0
      SHX23_2 = 100
      SHX24_2 = false
      SHX25_2 = false
      SHX26_2 = 2
      SHX27_2 = false
      SHX28_2 = nil
      SHX29_2 = nil
      SHX30_2 = false
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
    end
  end
  SHX0_2 = drawNativeText
  SHX1_2 = "Num Vectors: "
  SHX2_2 = tostring
  SHX3_2 = SHX0_1
  SHX3_2 = #SHX3_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX1_2 .. SHX2_2
  SHX0_2(SHX1_2)
  SHX0_2 = drawNativeNotification
  SHX1_2 = [[
Press ~INPUT_CONTEXT~ to place
Press ~INPUT_RELOAD~ to delete
Press ~INPUT_DETONATE~ to save file]]
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 51
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = type
    SHX2_2 = SHX0_1
    SHX2_2 = SHX2_2[1]
    SHX1_2 = SHX1_2(SHX2_2)
    if "vector3" == SHX1_2 then
      SHX1_2 = table
      SHX1_2 = SHX1_2.insert
      SHX2_2 = SHX0_1
      SHX3_2 = SHX0_2
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = SHX2_1
      SHX1_2()
    else
      SHX1_2 = table
      SHX1_2 = SHX1_2.insert
      SHX2_2 = SHX0_1
      SHX3_2 = vector4
      SHX4_2 = SHX0_2.x
      SHX5_2 = SHX0_2.y
      SHX6_2 = SHX0_2.z
      SHX7_2 = GetEntityHeading
      SHX8_2 = PlayerPedId
      SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2 = SHX8_2()
      SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
      SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
      SHX1_2 = SHX2_1
      SHX1_2()
    end
  end
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 45
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = table
    SHX0_2 = SHX0_2.remove
    SHX1_2 = SHX0_1
    SHX2_2 = SHX0_1
    SHX2_2 = #SHX2_2
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = SHX2_1
    SHX0_2()
  end
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 47
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "2b9c7299fb"
    SHX2_2 = SHX0_1
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = nil
    SHX0_1 = SHX0_2
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = {}
SHX17_1 = -5
SHX18_1 = 5
SHX19_1 = 0.01
for SHX20_1 = SHX17_1, SHX18_1, SHX19_1 do
  SHX21_1 = table
  SHX21_1 = SHX21_1.insert
  SHX22_1 = SHX16_1
  SHX23_1 = math
  SHX23_1 = SHX23_1.floor
  SHX24_1 = SHX20_1 * 1000
  SHX23_1 = SHX23_1(SHX24_1)
  SHX23_1 = SHX23_1 / 1000
  SHX21_1(SHX22_1, SHX23_1)
end
SHX17_1 = {}
SHX18_1 = -360
SHX19_1 = 360
SHX20_1 = 1.0000001
for SHX21_1 = SHX18_1, SHX19_1, SHX20_1 do
  SHX22_1 = table
  SHX22_1 = SHX22_1.insert
  SHX23_1 = SHX17_1
  SHX24_1 = math
  SHX24_1 = SHX24_1.floor
  SHX25_1 = SHX21_1 * 1000
  SHX24_1 = SHX24_1(SHX25_1)
  SHX24_1 = SHX24_1 / 1000
  SHX22_1(SHX23_1, SHX24_1)
end
SHX18_1 = ""
SHX19_1 = 0
SHX20_1 = 500
SHX21_1 = 500
SHX22_1 = 500
SHX23_1 = 360
SHX24_1 = 360
SHX25_1 = 360
function SHX26_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX8_2 = PlayerPedId
  SHX8_2 = SHX8_2()
  SHX9_2 = table
  SHX9_2 = SHX9_2.unpack
  SHX10_2 = GetEntityCoords
  SHX11_2 = SHX8_2
  SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX10_2(SHX11_2)
  SHX9_2, SHX10_2, SHX11_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.loadModel
  SHX13_2 = SHX0_2
  SHX12_2(SHX13_2)
  SHX12_2 = CreateObject
  SHX13_2 = GetHashKey
  SHX14_2 = SHX0_2
  SHX13_2 = SHX13_2(SHX14_2)
  SHX14_2 = SHX9_2
  SHX15_2 = SHX10_2
  SHX16_2 = SHX11_2 + 0.2
  SHX17_2 = false
  SHX18_2 = true
  SHX19_2 = true
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX13_2 = AttachEntityToEntity
  SHX14_2 = SHX12_2
  SHX15_2 = SHX8_2
  SHX16_2 = GetPedBoneIndex
  SHX17_2 = SHX8_2
  SHX18_2 = SHX1_2
  SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
  SHX17_2 = SHX2_2
  SHX18_2 = SHX3_2
  SHX19_2 = SHX4_2
  SHX20_2 = SHX5_2
  SHX21_2 = SHX6_2
  SHX22_2 = SHX7_2
  SHX23_2 = true
  SHX24_2 = true
  SHX25_2 = false
  SHX26_2 = true
  SHX27_2 = 1
  SHX28_2 = true
  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
  SHX13_2 = SetModelAsNoLongerNeeded
  SHX14_2 = SHX0_2
  SHX13_2(SHX14_2)
  return SHX12_2
end
SHX27_1 = CMG
SHX27_1 = SHX27_1.registerDevMenuItems
SHX28_1 = "Editors/Prop Placement"
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "Prop Name: "
  SHX2_2 = SHX18_1
  SHX1_2 = SHX1_2 .. SHX2_2
  SHX2_2 = ""
  SHX3_2 = {}
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Prop Name: "
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4
        SHX18_1 = SHX0_4
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.List
  SHX1_2 = "Pos X"
  SHX2_2 = SHX16_1
  SHX3_2 = SHX20_1
  SHX4_2 = nil
  SHX5_2 = {}
  SHX6_2 = true
  function SHX7_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX20_1 = SHX3_3
    if SHX1_3 then
      SHX4_3 = DeleteEntity
      SHX5_3 = SHX19_1
      SHX4_3(SHX5_3)
      SHX4_3 = SHX26_1
      SHX5_3 = SHX18_1
      SHX6_3 = 60309
      SHX8_3 = SHX20_1
      SHX7_3 = SHX16_1
      SHX7_3 = SHX7_3[SHX8_3]
      SHX9_3 = SHX21_1
      SHX8_3 = SHX16_1
      SHX8_3 = SHX8_3[SHX9_3]
      SHX10_3 = SHX22_1
      SHX9_3 = SHX16_1
      SHX9_3 = SHX9_3[SHX10_3]
      SHX11_3 = SHX23_1
      SHX10_3 = SHX17_1
      SHX10_3 = SHX10_3[SHX11_3]
      SHX12_3 = SHX24_1
      SHX11_3 = SHX17_1
      SHX11_3 = SHX11_3[SHX12_3]
      SHX13_3 = SHX25_1
      SHX12_3 = SHX17_1
      SHX12_3 = SHX12_3[SHX13_3]
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX19_1 = SHX4_3
    end
  end
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.List
  SHX1_2 = "Pos Y"
  SHX2_2 = SHX16_1
  SHX3_2 = SHX21_1
  SHX4_2 = nil
  SHX5_2 = {}
  SHX6_2 = true
  function SHX7_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX21_1 = SHX3_3
    if SHX1_3 then
      SHX4_3 = DeleteEntity
      SHX5_3 = SHX19_1
      SHX4_3(SHX5_3)
      SHX4_3 = SHX26_1
      SHX5_3 = SHX18_1
      SHX6_3 = 60309
      SHX8_3 = SHX20_1
      SHX7_3 = SHX16_1
      SHX7_3 = SHX7_3[SHX8_3]
      SHX9_3 = SHX21_1
      SHX8_3 = SHX16_1
      SHX8_3 = SHX8_3[SHX9_3]
      SHX10_3 = SHX22_1
      SHX9_3 = SHX16_1
      SHX9_3 = SHX9_3[SHX10_3]
      SHX11_3 = SHX23_1
      SHX10_3 = SHX17_1
      SHX10_3 = SHX10_3[SHX11_3]
      SHX12_3 = SHX24_1
      SHX11_3 = SHX17_1
      SHX11_3 = SHX11_3[SHX12_3]
      SHX13_3 = SHX25_1
      SHX12_3 = SHX17_1
      SHX12_3 = SHX12_3[SHX13_3]
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX19_1 = SHX4_3
    end
  end
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.List
  SHX1_2 = "Pos Z"
  SHX2_2 = SHX16_1
  SHX3_2 = SHX22_1
  SHX4_2 = nil
  SHX5_2 = {}
  SHX6_2 = true
  function SHX7_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX22_1 = SHX3_3
    if SHX1_3 then
      SHX4_3 = DeleteEntity
      SHX5_3 = SHX19_1
      SHX4_3(SHX5_3)
      SHX4_3 = SHX26_1
      SHX5_3 = SHX18_1
      SHX6_3 = 60309
      SHX8_3 = SHX20_1
      SHX7_3 = SHX16_1
      SHX7_3 = SHX7_3[SHX8_3]
      SHX9_3 = SHX21_1
      SHX8_3 = SHX16_1
      SHX8_3 = SHX8_3[SHX9_3]
      SHX10_3 = SHX22_1
      SHX9_3 = SHX16_1
      SHX9_3 = SHX9_3[SHX10_3]
      SHX11_3 = SHX23_1
      SHX10_3 = SHX17_1
      SHX10_3 = SHX10_3[SHX11_3]
      SHX12_3 = SHX24_1
      SHX11_3 = SHX17_1
      SHX11_3 = SHX11_3[SHX12_3]
      SHX13_3 = SHX25_1
      SHX12_3 = SHX17_1
      SHX12_3 = SHX12_3[SHX13_3]
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX19_1 = SHX4_3
    end
  end
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.List
  SHX1_2 = "Rot X"
  SHX2_2 = SHX17_1
  SHX3_2 = SHX23_1
  SHX4_2 = nil
  SHX5_2 = {}
  SHX6_2 = true
  function SHX7_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX23_1 = SHX3_3
    if SHX1_3 then
      SHX4_3 = DeleteEntity
      SHX5_3 = SHX19_1
      SHX4_3(SHX5_3)
      SHX4_3 = SHX26_1
      SHX5_3 = SHX18_1
      SHX6_3 = 60309
      SHX8_3 = SHX20_1
      SHX7_3 = SHX16_1
      SHX7_3 = SHX7_3[SHX8_3]
      SHX9_3 = SHX21_1
      SHX8_3 = SHX16_1
      SHX8_3 = SHX8_3[SHX9_3]
      SHX10_3 = SHX22_1
      SHX9_3 = SHX16_1
      SHX9_3 = SHX9_3[SHX10_3]
      SHX11_3 = SHX23_1
      SHX10_3 = SHX17_1
      SHX10_3 = SHX10_3[SHX11_3]
      SHX12_3 = SHX24_1
      SHX11_3 = SHX17_1
      SHX11_3 = SHX11_3[SHX12_3]
      SHX13_3 = SHX25_1
      SHX12_3 = SHX17_1
      SHX12_3 = SHX12_3[SHX13_3]
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX19_1 = SHX4_3
    end
  end
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.List
  SHX1_2 = "Rot Y"
  SHX2_2 = SHX17_1
  SHX3_2 = SHX24_1
  SHX4_2 = nil
  SHX5_2 = {}
  SHX6_2 = true
  function SHX7_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX24_1 = SHX3_3
    if SHX1_3 then
      SHX4_3 = DeleteEntity
      SHX5_3 = SHX19_1
      SHX4_3(SHX5_3)
      SHX4_3 = SHX26_1
      SHX5_3 = SHX18_1
      SHX6_3 = 60309
      SHX8_3 = SHX20_1
      SHX7_3 = SHX16_1
      SHX7_3 = SHX7_3[SHX8_3]
      SHX9_3 = SHX21_1
      SHX8_3 = SHX16_1
      SHX8_3 = SHX8_3[SHX9_3]
      SHX10_3 = SHX22_1
      SHX9_3 = SHX16_1
      SHX9_3 = SHX9_3[SHX10_3]
      SHX11_3 = SHX23_1
      SHX10_3 = SHX17_1
      SHX10_3 = SHX10_3[SHX11_3]
      SHX12_3 = SHX24_1
      SHX11_3 = SHX17_1
      SHX11_3 = SHX11_3[SHX12_3]
      SHX13_3 = SHX25_1
      SHX12_3 = SHX17_1
      SHX12_3 = SHX12_3[SHX13_3]
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX19_1 = SHX4_3
    end
  end
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.List
  SHX1_2 = "Rot Z"
  SHX2_2 = SHX17_1
  SHX3_2 = SHX25_1
  SHX4_2 = nil
  SHX5_2 = {}
  SHX6_2 = true
  function SHX7_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX25_1 = SHX3_3
    if SHX1_3 then
      SHX4_3 = DeleteEntity
      SHX5_3 = SHX19_1
      SHX4_3(SHX5_3)
      SHX4_3 = SHX26_1
      SHX5_3 = SHX18_1
      SHX6_3 = 60309
      SHX8_3 = SHX20_1
      SHX7_3 = SHX16_1
      SHX7_3 = SHX7_3[SHX8_3]
      SHX9_3 = SHX21_1
      SHX8_3 = SHX16_1
      SHX8_3 = SHX8_3[SHX9_3]
      SHX10_3 = SHX22_1
      SHX9_3 = SHX16_1
      SHX9_3 = SHX9_3[SHX10_3]
      SHX11_3 = SHX23_1
      SHX10_3 = SHX17_1
      SHX10_3 = SHX10_3[SHX11_3]
      SHX12_3 = SHX24_1
      SHX11_3 = SHX17_1
      SHX11_3 = SHX11_3[SHX12_3]
      SHX13_3 = SHX25_1
      SHX12_3 = SHX17_1
      SHX12_3 = SHX12_3[SHX13_3]
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX19_1 = SHX4_3
    end
  end
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX27_1(SHX28_1, SHX29_1)
