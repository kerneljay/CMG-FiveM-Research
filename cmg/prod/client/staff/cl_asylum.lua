-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1
SHX0_1 = false
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = 4032.2041015625
SHX4_1 = 4931.5092773438
SHX5_1 = 28.732015609741
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.radius = 240.0
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setCanOpenPhone
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "b2bd09d434"
    SHX0_2(SHX1_2)
  end
end
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setCanOpenPhone
  SHX1_2 = true
  SHX0_2(SHX1_2)
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SetCurrentPedWeapon
  SHX2_2 = SHX0_2
  SHX3_2 = -1569615261
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX5_1 = CMG
function SHX6_1()
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
SHX5_1.isInAsylum = SHX6_1
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 6
  SHX4_2 = 7
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 4
  SHX4_2 = 20
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 8
  SHX4_2 = 15
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 3
  SHX4_2 = 0
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 11
  SHX4_2 = 22
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedPropIndex
  SHX2_2 = SHX0_2
  SHX3_2 = 1
  SHX4_2 = 1
  SHX5_2 = 0
  SHX6_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX6_1 = RegisterNetEvent
SHX7_1 = "283cbfc6f3"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX0_1 = SHX0_2
  SHX0_2 = SHX5_1
  SHX0_2()
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.createArea
SHX7_1 = "asylum"
SHX8_1 = SHX1_1.coords
SHX9_1 = SHX1_1.radius
SHX10_1 = 20.0
SHX11_1 = SHX2_1
SHX12_1 = SHX3_1
SHX13_1 = SHX4_1
SHX14_1 = {}
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX1_1.coords
    SHX1_2 = SHX1_2 - SHX0_2
    SHX1_2 = #SHX1_2
    SHX2_2 = SHX1_1.radius
    if SHX1_2 > SHX2_2 then
      SHX1_2 = DetachEntity
      SHX2_2 = PlayerPedId
      SHX2_2 = SHX2_2()
      SHX3_2 = true
      SHX4_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = SetEntityCoords
      SHX2_2 = PlayerPedId
      SHX2_2 = SHX2_2()
      SHX3_2 = 3959.9475097656
      SHX4_2 = 4899.6313476562
      SHX5_2 = 6.5490188598633
      SHX6_2 = false
      SHX7_2 = false
      SHX8_2 = false
      SHX9_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.announceMpBigMsg
      SHX2_2 = "~r~YOU CANNOT ESCAPE..."
      SHX3_2 = ""
      SHX4_2 = 3000
      SHX5_2 = true
      SHX6_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX1_2 = SHX5_1
      SHX1_2()
    end
  end
end
SHX7_1 = CMG
SHX7_1 = SHX7_1.createThreadOnTick
SHX8_1 = SHX6_1
SHX9_1 = "asylum"
SHX7_1(SHX8_1, SHX9_1)
