-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1
SHX0_1 = {}
SHX1_1 = {}
SHX1_1.type = "bartender"
SHX1_1.model = 2014052797
SHX2_1 = vector4
SHX3_1 = 128.9
SHX4_1 = -1283.211
SHX5_1 = 29.273
SHX6_1 = 123.98
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1)
SHX1_1.position = SHX2_1
SHX2_1 = {}
SHX2_1.type = "stripper"
SHX2_1.model = 695248020
SHX3_1 = vector4
SHX4_1 = 112.159
SHX5_1 = -1287.326
SHX6_1 = 28.459
SHX7_1 = 265.902
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1)
SHX2_1.position = SHX3_1
SHX3_1 = {}
SHX3_1.type = "stripper"
SHX3_1.model = 695248020
SHX4_1 = vector4
SHX5_1 = 108.44
SHX6_1 = -1289.298
SHX7_1 = 28.859
SHX8_1 = 338.7
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1)
SHX3_1.position = SHX4_1
SHX4_1 = {}
SHX4_1.type = "stripper"
SHX4_1.model = 695248020
SHX5_1 = vector4
SHX6_1 = 108.181
SHX7_1 = -1304.807
SHX8_1 = 28.769
SHX9_1 = 186.893
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX4_1.position = SHX5_1
SHX5_1 = {}
SHX5_1.type = "stripper"
SHX5_1.model = 695248020
SHX6_1 = vector4
SHX7_1 = 118.125
SHX8_1 = -1283.357
SHX9_1 = 28.277
SHX10_1 = 124.466
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX5_1.position = SHX6_1
SHX6_1 = {}
SHX6_1.type = "boucer"
SHX6_1.model = -1613485779
SHX7_1 = vector4
SHX8_1 = 130.328
SHX9_1 = -1298.409
SHX10_1 = 29.233
SHX11_1 = 211.486
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX6_1.position = SHX7_1
SHX7_1 = {}
SHX7_1.type = "boucer"
SHX7_1.model = -1613485779
SHX8_1 = vector4
SHX9_1 = 127.404
SHX10_1 = -1300.126
SHX11_1 = 29.23
SHX12_1 = 211.587
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX7_1.position = SHX8_1
SHX8_1 = {}
SHX8_1.type = "boucer"
SHX8_1.model = -1613485779
SHX9_1 = vector4
SHX10_1 = 111.088
SHX11_1 = -1304.371
SHX12_1 = 29.02
SHX13_1 = 296.699
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1)
SHX8_1.position = SHX9_1
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX0_1[3] = SHX3_1
SHX0_1[4] = SHX4_1
SHX0_1[5] = SHX5_1
SHX0_1[6] = SHX6_1
SHX0_1[7] = SHX7_1
SHX0_1[8] = SHX8_1
SHX1_1 = {}
SHX2_1 = {}
SHX2_1.dict = "mini@strip_club@private_dance@part2"
SHX2_1.name = "priv_dance_p2"
SHX1_1.stripper = SHX2_1
SHX2_1 = {}
SHX2_1.dict = "mini@strip_club@idles@bouncer@base"
SHX2_1.name = "base"
SHX1_1.bouncer = SHX2_1
SHX2_1 = nil
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = {}
  SHX2_1 = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.loadModel
    SHX7_2 = SHX5_2.model
    SHX6_2(SHX7_2)
    SHX6_2 = SHX5_2.position
    SHX7_2 = CreatePed
    SHX8_2 = 5
    SHX9_2 = SHX5_2.model
    SHX10_2 = SHX6_2.x
    SHX11_2 = SHX6_2.y
    SHX12_2 = SHX6_2.z
    SHX13_2 = SHX6_2.w
    SHX14_2 = false
    SHX15_2 = true
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX8_2 = SetModelAsNoLongerNeeded
    SHX9_2 = SHX5_2.model
    SHX8_2(SHX9_2)
    SHX8_2 = SetBlockingOfNonTemporaryEvents
    SHX9_2 = SHX7_2
    SHX10_2 = true
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetPedDiesWhenInjured
    SHX9_2 = SHX7_2
    SHX10_2 = false
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetPedRelationshipGroupHash
    SHX9_2 = SHX7_2
    SHX10_2 = 45677184
    SHX8_2(SHX9_2, SHX10_2)
    SHX9_2 = SHX5_2.type
    SHX8_2 = SHX1_1
    SHX8_2 = SHX8_2[SHX9_2]
    if SHX8_2 then
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.loadAnimDict
      SHX10_2 = SHX8_2.dict
      SHX9_2(SHX10_2)
      SHX9_2 = TaskPlayAnim
      SHX10_2 = SHX7_2
      SHX11_2 = SHX8_2.dict
      SHX12_2 = SHX8_2.name
      SHX13_2 = 8.0
      SHX14_2 = 0.0
      SHX15_2 = -1
      SHX16_2 = 1
      SHX17_2 = 0
      SHX18_2 = false
      SHX19_2 = false
      SHX20_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX9_2 = RemoveAnimDict
      SHX10_2 = SHX8_2.dict
      SHX9_2(SHX10_2)
    end
    SHX9_2 = table
    SHX9_2 = SHX9_2.insert
    SHX10_2 = SHX2_1
    SHX11_2 = SHX7_2
    SHX9_2(SHX10_2, SHX11_2)
  end
end
SHX4_1 = vector3
SHX5_1 = 123.43956756592
SHX6_1 = -1288.5036621094
SHX7_1 = 29.674297332764
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = AddEventHandler
SHX6_1 = "CMG:onClientSpawn"
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX2_1
      if not SHX0_3 then
        SHX0_3 = SHX3_1
        SHX0_3()
      end
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        SHX0_3 = pairs
        SHX1_3 = SHX2_1
        SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
        for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
          SHX6_3 = DeleteEntity
          SHX7_3 = SHX5_3
          SHX6_3(SHX7_3)
        end
        SHX0_3 = nil
        SHX2_1 = SHX0_3
      end
    end
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.createArea
    SHX5_2 = "stripclub"
    SHX6_2 = SHX4_1
    SHX7_2 = 100.0
    SHX8_2 = 6
    SHX9_2 = SHX2_2
    SHX10_2 = SHX3_2
    SHX11_2 = nil
    SHX12_2 = {}
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
SHX5_1(SHX6_1, SHX7_1)
