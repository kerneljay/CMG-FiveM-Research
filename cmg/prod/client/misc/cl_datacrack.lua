-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
SHX0_1 = false
SHX1_1 = {}
SHX2_1 = {}
SHX2_1.val1 = 0.4
SHX1_1[1] = SHX2_1
SHX2_1 = {}
SHX2_1.val1 = 0.4
SHX1_1[2] = SHX2_1
SHX2_1 = {}
SHX2_1.val1 = 0.4
SHX1_1[3] = SHX2_1
SHX2_1 = {}
SHX2_1.val1 = 0.4
SHX1_1[4] = SHX2_1
SHX2_1 = {}
SHX2_1.val1 = 0.4
SHX1_1[5] = SHX2_1
SHX2_1 = {}
SHX2_1.val1 = 0.4
SHX1_1[6] = SHX2_1
SHX2_1 = {}
SHX2_1.val1 = 0.4
SHX1_1[7] = SHX2_1
SHX2_1 = {}
SHX3_1 = {}
SHX3_1.val0 = 1
SHX3_1.val1 = 0.011000000000000001
SHX3_1.val2 = 0
SHX3_1.val3 = 1
SHX3_1.val4 = true
SHX2_1[1] = SHX3_1
SHX3_1 = {}
SHX3_1.val0 = 1
SHX3_1.val1 = 0.013750000000000002
SHX3_1.val2 = 0
SHX3_1.val3 = 1
SHX3_1.val4 = true
SHX2_1[2] = SHX3_1
SHX3_1 = {}
SHX3_1.val0 = 1
SHX3_1.val1 = 0.0165
SHX3_1.val2 = 0
SHX3_1.val3 = 1
SHX3_1.val4 = true
SHX2_1[3] = SHX3_1
SHX3_1 = {}
SHX3_1.val0 = 1
SHX3_1.val1 = 0.019250000000000003
SHX3_1.val2 = 0
SHX3_1.val3 = 1
SHX3_1.val4 = true
SHX2_1[4] = SHX3_1
SHX3_1 = {}
SHX3_1.val0 = 1
SHX3_1.val1 = 0.022000000000000002
SHX3_1.val2 = 0
SHX3_1.val3 = 1
SHX3_1.val4 = true
SHX2_1[5] = SHX3_1
SHX3_1 = {}
SHX3_1.val0 = 1
SHX3_1.val1 = 0.02475
SHX3_1.val2 = 0
SHX3_1.val3 = 1
SHX3_1.val4 = true
SHX2_1[6] = SHX3_1
SHX3_1 = {}
SHX3_1.val0 = 1
SHX3_1.val1 = 0.027500000000000004
SHX3_1.val2 = 0
SHX3_1.val3 = 1
SHX3_1.val4 = true
SHX2_1[7] = SHX3_1
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = BeginTextCommandDisplayHelp
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringPlayerName
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandDisplayHelp
  SHX2_2 = 0
  SHX3_2 = false
  SHX4_2 = true
  SHX5_2 = -1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
F_02536 = SHX3_1
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 73
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 24
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 257
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 25
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 263
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 32
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 34
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 31
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 30
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 45
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 22
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 44
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 37
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 23
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 288
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 289
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 170
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 167
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 73
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 2
  SHX2_2 = 199
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 47
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
end
F_02539 = SHX3_1
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.val1
  SHX2_2 = 0.51
  if SHX1_2 >= SHX2_2 then
    SHX1_2 = SHX1_1
    SHX1_2 = SHX1_2[SHX0_2]
    SHX1_2 = SHX1_2.val1
    SHX2_2 = 0.62
    if SHX1_2 <= SHX2_2 then
      SHX1_2 = true
      return SHX1_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
F_02540 = SHX3_1
function SHX3_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = nil
  SHX4_2 = Cos
  SHX5_2 = F_02542
  SHX6_2 = SHX2_2 * 3.141593
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = 1.0
  SHX4_2 = SHX5_2 - SHX4_2
  SHX3_2 = SHX4_2 * 0.5
  SHX4_2 = 1
  SHX4_2 = SHX4_2 - SHX3_2
  SHX4_2 = SHX0_2 * SHX4_2
  SHX5_2 = SHX1_2 * SHX3_2
  SHX4_2 = SHX4_2 + SHX5_2
  return SHX4_2
end
F_02541 = SHX3_1
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_2 * 57.29578
  return SHX1_2
end
F_02542 = SHX3_1
SHX3_1 = CMG
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = nil
  if nil == SHX0_2 then
    SHX2_2 = 25
  elseif SHX0_2 < 2 then
    SHX2_2 = 25
  elseif SHX0_2 > 5 then
    SHX2_2 = 25
  else
    SHX2_2 = SHX0_2 * 10
  end
  SHX3_2 = {}
  SHX4_2 = {}
  SHX4_2.val1 = 0.4
  SHX3_2[1] = SHX4_2
  SHX4_2 = {}
  SHX4_2.val1 = 0.4
  SHX3_2[2] = SHX4_2
  SHX4_2 = {}
  SHX4_2.val1 = 0.4
  SHX3_2[3] = SHX4_2
  SHX4_2 = {}
  SHX4_2.val1 = 0.4
  SHX3_2[4] = SHX4_2
  SHX4_2 = {}
  SHX4_2.val1 = 0.4
  SHX3_2[5] = SHX4_2
  SHX4_2 = {}
  SHX4_2.val1 = 0.4
  SHX3_2[6] = SHX4_2
  SHX4_2 = {}
  SHX4_2.val1 = 0.4
  SHX3_2[7] = SHX4_2
  SHX1_1 = SHX3_2
  SHX3_2 = {}
  SHX4_2 = {}
  SHX4_2.val0 = 1
  SHX4_2.val1 = 0.011000000000000001
  SHX4_2.val2 = 0
  SHX4_2.val3 = 1
  SHX4_2.val4 = true
  SHX3_2[1] = SHX4_2
  SHX4_2 = {}
  SHX4_2.val0 = 1
  SHX4_2.val1 = 0.013750000000000002
  SHX4_2.val2 = 0
  SHX4_2.val3 = 1
  SHX4_2.val4 = true
  SHX3_2[2] = SHX4_2
  SHX4_2 = {}
  SHX4_2.val0 = 1
  SHX4_2.val1 = 0.0165
  SHX4_2.val2 = 0
  SHX4_2.val3 = 1
  SHX4_2.val4 = true
  SHX3_2[3] = SHX4_2
  SHX4_2 = {}
  SHX4_2.val0 = 1
  SHX4_2.val1 = 0.019250000000000003
  SHX4_2.val2 = 0
  SHX4_2.val3 = 1
  SHX4_2.val4 = true
  SHX3_2[4] = SHX4_2
  SHX4_2 = {}
  SHX4_2.val0 = 1
  SHX4_2.val1 = 0.022000000000000002
  SHX4_2.val2 = 0
  SHX4_2.val3 = 1
  SHX4_2.val4 = true
  SHX3_2[5] = SHX4_2
  SHX4_2 = {}
  SHX4_2.val0 = 1
  SHX4_2.val1 = 0.02475
  SHX4_2.val2 = 0
  SHX4_2.val3 = 1
  SHX4_2.val4 = true
  SHX3_2[6] = SHX4_2
  SHX4_2 = {}
  SHX4_2.val0 = 1
  SHX4_2.val1 = 0.027500000000000004
  SHX4_2.val2 = 0
  SHX4_2.val3 = 1
  SHX4_2.val4 = true
  SHX3_2[7] = SHX4_2
  SHX2_1 = SHX3_2
  SHX3_2 = false
  SHX0_1 = SHX3_2
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = 1
    SHX1_3 = SHX2_1
    SHX1_3 = SHX1_3[SHX0_3]
    SHX1_3.val0 = 0
    while true do
      SHX1_3 = F_02539
      SHX1_3()
      SHX1_3 = F_02536
      SHX2_3 = "Press ~INPUT_FRONTEND_CANCEL~ to abort hack"
      SHX1_3(SHX2_3)
      SHX1_3 = IsControlJustReleased
      SHX2_3 = 2
      SHX3_3 = 237
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if not SHX1_3 then
        SHX1_3 = IsControlJustReleased
        SHX2_3 = 2
        SHX3_3 = 176
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if not SHX1_3 then
          SHX1_3 = IsControlJustReleased
          SHX2_3 = 2
          SHX3_3 = 179
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
          if not SHX1_3 then
            goto SHX_LABEL_96
          end
        end
      end
      SHX1_3 = F_02540
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        SHX1_3 = PlaySoundFrontend
        SHX2_3 = -1
        SHX3_3 = "Pin_Good"
        SHX4_3 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
        SHX5_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        SHX1_3 = SHX2_1
        SHX1_3 = SHX1_3[SHX0_3]
        SHX1_3.val0 = 1
        SHX1_3 = SHX2_1
        SHX1_3 = SHX1_3[SHX0_3]
        SHX1_3.val4 = false
        SHX1_3 = SHX1_1
        SHX1_3 = SHX1_3[SHX0_3]
        SHX1_3.val1 = 0.572
        if SHX0_3 < 7 then
          SHX2_3 = SHX0_3 + 1
          SHX1_3 = SHX2_1
          SHX1_3 = SHX1_3[SHX2_3]
          SHX1_3.val0 = 0
        end
        SHX0_3 = SHX0_3 + 1
        if SHX0_3 > 7 then
          return
        end
      else
        SHX1_3 = PlaySoundFrontend
        SHX2_3 = -1
        SHX3_3 = "Pin_Bad"
        SHX4_3 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
        SHX5_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        if SHX0_3 > 1 then
          SHX1_3 = SHX2_1
          SHX1_3 = SHX1_3[SHX0_3]
          SHX1_3.val0 = 1
          SHX0_3 = SHX0_3 - 1
          SHX1_3 = SHX2_1
          SHX1_3 = SHX1_3[SHX0_3]
          SHX1_3.val0 = 0
          SHX1_3 = SHX1_1
          SHX1_3 = SHX1_3[SHX0_3]
          SHX1_3.val1 = 0.572
          SHX1_3 = SHX2_1
          SHX1_3 = SHX1_3[SHX0_3]
          SHX1_3.val4 = true
        elseif 1 == SHX0_3 then
          SHX1_3 = true
          SHX0_1 = SHX1_3
          SHX1_3 = SHX1_2
          SHX2_3 = false
          SHX1_3(SHX2_3)
        end
        SHX1_3 = SHX0_1
        if SHX1_3 then
          return
          goto SHX_LABEL_107
          -- [FIX IF ERROR] Move ::SHX_LABEL_96:: outside nested blocks until all 'goto SHX_LABEL_96' can see it
          ::SHX_LABEL_96::
          SHX1_3 = IsControlJustReleased
          SHX2_3 = 2
          SHX3_3 = 202
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
          if SHX1_3 then
            SHX1_3 = true
            SHX0_1 = SHX1_3
            SHX1_3 = SHX1_2
            SHX2_3 = false
            SHX1_3(SHX2_3)
          end
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_107:: outside nested blocks until all 'goto SHX_LABEL_107' can see it
      ::SHX_LABEL_107::
      SHX1_3 = SHX0_1
      if SHX1_3 then
        return
      end
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 1
      SHX1_3(SHX2_3)
    end
  end
  SHX3_2(SHX4_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    while true do
      SHX0_3 = 1
      SHX1_3 = SHX2_1
      SHX1_3 = #SHX1_3
      SHX2_3 = 1
      for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
        SHX4_3 = SHX2_1
        SHX4_3 = SHX4_3[SHX3_3]
        SHX4_3 = SHX4_3.val3
        if 1 == SHX4_3 then
          SHX4_3 = SHX2_1
          SHX4_3 = SHX4_3[SHX3_3]
          SHX4_3 = SHX4_3.val2
          if SHX4_3 < 1.0 then
            SHX4_3 = SHX2_1
            SHX4_3 = SHX4_3[SHX3_3]
            SHX5_3 = SHX2_1
            SHX5_3 = SHX5_3[SHX3_3]
            SHX5_3 = SHX5_3.val2
            SHX6_3 = SHX2_1
            SHX6_3 = SHX6_3[SHX3_3]
            SHX6_3 = SHX6_3.val1
            SHX7_3 = Timestep
            SHX7_3 = SHX7_3()
            SHX6_3 = SHX6_3 * SHX7_3
            SHX7_3 = SHX2_2
            SHX7_3 = SHX7_3 * 1.0
            SHX6_3 = SHX6_3 * SHX7_3
            SHX5_3 = SHX5_3 + SHX6_3
            SHX4_3.val2 = SHX5_3
          else
            SHX4_3 = SHX2_1
            SHX4_3 = SHX4_3[SHX3_3]
            SHX4_3.val3 = 0
          end
        else
          SHX4_3 = SHX2_1
          SHX4_3 = SHX4_3[SHX3_3]
          SHX4_3 = SHX4_3.val2
          if SHX4_3 > 0.0 then
            SHX4_3 = SHX2_1
            SHX4_3 = SHX4_3[SHX3_3]
            SHX5_3 = SHX2_1
            SHX5_3 = SHX5_3[SHX3_3]
            SHX5_3 = SHX5_3.val2
            SHX6_3 = SHX2_1
            SHX6_3 = SHX6_3[SHX3_3]
            SHX6_3 = SHX6_3.val1
            SHX7_3 = Timestep
            SHX7_3 = SHX7_3()
            SHX6_3 = SHX6_3 * SHX7_3
            SHX7_3 = SHX2_2
            SHX7_3 = SHX7_3 * 1.0
            SHX6_3 = SHX6_3 * SHX7_3
            SHX5_3 = SHX5_3 - SHX6_3
            SHX4_3.val2 = SHX5_3
          else
            SHX4_3 = SHX2_1
            SHX4_3 = SHX4_3[SHX3_3]
            SHX4_3.val3 = 1
          end
        end
        SHX4_3 = SHX2_1
        SHX4_3 = SHX4_3[SHX3_3]
        SHX4_3 = SHX4_3.val0
        if 0 ~= SHX4_3 then
          SHX4_3 = SHX2_1
          SHX4_3 = SHX4_3[SHX3_3]
          SHX4_3 = SHX4_3.val4
          if not SHX4_3 then
            goto SHX_LABEL_90
          end
        end
        SHX4_3 = SHX1_1
        SHX4_3 = SHX4_3[SHX3_3]
        SHX5_3 = F_02541
        SHX6_3 = 0.744
        SHX7_3 = 0.4
        SHX8_3 = SHX2_1
        SHX8_3 = SHX8_3[SHX3_3]
        SHX8_3 = SHX8_3.val2
        SHX5_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
        SHX4_3.val1 = SHX5_3
        -- [FIX IF ERROR] Move ::SHX_LABEL_90:: outside nested blocks until all 'goto SHX_LABEL_90' can see it
        ::SHX_LABEL_90::
        SHX4_3 = SHX0_1
        if SHX4_3 then
          return
        end
      end
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 1
      SHX0_3(SHX1_3)
    end
  end
  SHX3_2(SHX4_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = RequestStreamedTextureDict
    SHX1_3 = "HACKING_PC_desktop_0"
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = RequestStreamedTextureDict
    SHX1_3 = "hackingNG"
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = RequestScaleformMovieInteractive
    SHX1_3 = "HACKING_PC"
    SHX0_3 = SHX0_3(SHX1_3)
    while true do
      SHX1_3 = HasScaleformMovieLoaded
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        break
      end
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
    SHX1_3 = BeginScaleformMovieMethod
    SHX2_3 = SHX0_3
    SHX3_3 = "ADD_PROGRAM"
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = ScaleformMovieMethodAddParamFloat
    SHX2_3 = 1.0
    SHX1_3(SHX2_3)
    SHX1_3 = ScaleformMovieMethodAddParamFloat
    SHX2_3 = 4.0
    SHX1_3(SHX2_3)
    SHX1_3 = _ENV
    SHX2_3 = "ScaleformMovieMethodAddParamTextureNameString"
    SHX1_3 = SHX1_3[SHX2_3]
    SHX2_3 = "My Computer"
    SHX1_3(SHX2_3)
    SHX1_3 = EndScaleformMovieMethod
    SHX1_3()
    SHX1_3 = BeginScaleformMovieMethod
    SHX2_3 = SHX0_3
    SHX3_3 = "ADD_PROGRAM"
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = ScaleformMovieMethodAddParamFloat
    SHX2_3 = 6.0
    SHX1_3(SHX2_3)
    SHX1_3 = ScaleformMovieMethodAddParamFloat
    SHX2_3 = 6.0
    SHX1_3(SHX2_3)
    SHX1_3 = _ENV
    SHX2_3 = "ScaleformMovieMethodAddParamTextureNameString"
    SHX1_3 = SHX1_3[SHX2_3]
    SHX2_3 = "Power Off"
    SHX1_3(SHX2_3)
    SHX1_3 = EndScaleformMovieMethod
    SHX1_3()
    SHX1_3 = BeginScaleformMovieMethod
    SHX2_3 = SHX0_3
    SHX3_3 = "SET_BACKGROUND"
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = ScaleformMovieMethodAddParamInt
    SHX2_3 = 1
    SHX1_3(SHX2_3)
    SHX1_3 = EndScaleformMovieMethod
    SHX1_3()
    while true do
      SHX1_3 = HasStreamedTextureDictLoaded
      SHX2_3 = "hackingNG"
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        break
      end
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 1
      SHX1_3(SHX2_3)
    end
    while true do
      SHX1_3 = DrawScaleformMovieFullscreen
      SHX2_3 = SHX0_3
      SHX3_3 = 255
      SHX4_3 = 255
      SHX5_3 = 255
      SHX6_3 = 255
      SHX7_3 = 0
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX1_3 = DrawSprite
      SHX2_3 = "hackingNG"
      SHX3_3 = "DHMain"
      SHX4_3 = 0.5
      SHX5_3 = 0.5
      SHX6_3 = 0.731
      SHX7_3 = 1.306
      SHX8_3 = 0
      SHX9_3 = 255
      SHX10_3 = 255
      SHX11_3 = 255
      SHX12_3 = 255
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX1_3 = SHX2_1
      SHX1_3 = SHX1_3[1]
      SHX1_3 = SHX1_3.val0
      if 1 == SHX1_3 then
        SHX1_3 = DrawSprite
        SHX2_3 = "hackingNG"
        SHX3_3 = "DHComp"
        SHX4_3 = 0.35
        SHX5_3 = SHX1_1
        SHX5_3 = SHX5_3[1]
        SHX5_3 = SHX5_3.val1
        SHX6_3 = 0.4
        SHX7_3 = 0.4
        SHX8_3 = 0
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      else
        SHX1_3 = SHX2_1
        SHX1_3 = SHX1_3[1]
        SHX1_3 = SHX1_3.val0
        if 0 == SHX1_3 then
          SHX1_3 = DrawSprite
          SHX2_3 = "hackingNG"
          SHX3_3 = "DHCompHi"
          SHX4_3 = 0.35
          SHX5_3 = SHX1_1
          SHX5_3 = SHX5_3[1]
          SHX5_3 = SHX5_3.val1
          SHX6_3 = 0.4
          SHX7_3 = 0.4
          SHX8_3 = 0
          SHX9_3 = 255
          SHX10_3 = 255
          SHX11_3 = 255
          SHX12_3 = 255
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        end
      end
      SHX1_3 = SHX2_1
      SHX1_3 = SHX1_3[2]
      SHX1_3 = SHX1_3.val0
      if 1 == SHX1_3 then
        SHX1_3 = DrawSprite
        SHX2_3 = "hackingNG"
        SHX3_3 = "DHComp"
        SHX4_3 = 0.4
        SHX5_3 = SHX1_1
        SHX5_3 = SHX5_3[2]
        SHX5_3 = SHX5_3.val1
        SHX6_3 = 0.4
        SHX7_3 = 0.4
        SHX8_3 = 0
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      else
        SHX1_3 = SHX2_1
        SHX1_3 = SHX1_3[2]
        SHX1_3 = SHX1_3.val0
        if 0 == SHX1_3 then
          SHX1_3 = DrawSprite
          SHX2_3 = "hackingNG"
          SHX3_3 = "DHCompHi"
          SHX4_3 = 0.4
          SHX5_3 = SHX1_1
          SHX5_3 = SHX5_3[2]
          SHX5_3 = SHX5_3.val1
          SHX6_3 = 0.4
          SHX7_3 = 0.4
          SHX8_3 = 0
          SHX9_3 = 255
          SHX10_3 = 255
          SHX11_3 = 255
          SHX12_3 = 255
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        end
      end
      SHX1_3 = SHX2_1
      SHX1_3 = SHX1_3[3]
      SHX1_3 = SHX1_3.val0
      if 1 == SHX1_3 then
        SHX1_3 = DrawSprite
        SHX2_3 = "hackingNG"
        SHX3_3 = "DHComp"
        SHX4_3 = 0.45
        SHX5_3 = SHX1_1
        SHX5_3 = SHX5_3[3]
        SHX5_3 = SHX5_3.val1
        SHX6_3 = 0.4
        SHX7_3 = 0.4
        SHX8_3 = 0
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      else
        SHX1_3 = SHX2_1
        SHX1_3 = SHX1_3[3]
        SHX1_3 = SHX1_3.val0
        if 0 == SHX1_3 then
          SHX1_3 = DrawSprite
          SHX2_3 = "hackingNG"
          SHX3_3 = "DHCompHi"
          SHX4_3 = 0.45
          SHX5_3 = SHX1_1
          SHX5_3 = SHX5_3[3]
          SHX5_3 = SHX5_3.val1
          SHX6_3 = 0.4
          SHX7_3 = 0.4
          SHX8_3 = 0
          SHX9_3 = 255
          SHX10_3 = 255
          SHX11_3 = 255
          SHX12_3 = 255
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        end
      end
      SHX1_3 = SHX2_1
      SHX1_3 = SHX1_3[4]
      SHX1_3 = SHX1_3.val0
      if 1 == SHX1_3 then
        SHX1_3 = DrawSprite
        SHX2_3 = "hackingNG"
        SHX3_3 = "DHComp"
        SHX4_3 = 0.5
        SHX5_3 = SHX1_1
        SHX5_3 = SHX5_3[4]
        SHX5_3 = SHX5_3.val1
        SHX6_3 = 0.4
        SHX7_3 = 0.4
        SHX8_3 = 0
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      else
        SHX1_3 = SHX2_1
        SHX1_3 = SHX1_3[4]
        SHX1_3 = SHX1_3.val0
        if 0 == SHX1_3 then
          SHX1_3 = DrawSprite
          SHX2_3 = "hackingNG"
          SHX3_3 = "DHCompHi"
          SHX4_3 = 0.5
          SHX5_3 = SHX1_1
          SHX5_3 = SHX5_3[4]
          SHX5_3 = SHX5_3.val1
          SHX6_3 = 0.4
          SHX7_3 = 0.4
          SHX8_3 = 0
          SHX9_3 = 255
          SHX10_3 = 255
          SHX11_3 = 255
          SHX12_3 = 255
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        end
      end
      SHX1_3 = SHX2_1
      SHX1_3 = SHX1_3[5]
      SHX1_3 = SHX1_3.val0
      if 1 == SHX1_3 then
        SHX1_3 = DrawSprite
        SHX2_3 = "hackingNG"
        SHX3_3 = "DHComp"
        SHX4_3 = 0.55
        SHX5_3 = SHX1_1
        SHX5_3 = SHX5_3[5]
        SHX5_3 = SHX5_3.val1
        SHX6_3 = 0.4
        SHX7_3 = 0.4
        SHX8_3 = 0
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      else
        SHX1_3 = SHX2_1
        SHX1_3 = SHX1_3[5]
        SHX1_3 = SHX1_3.val0
        if 0 == SHX1_3 then
          SHX1_3 = DrawSprite
          SHX2_3 = "hackingNG"
          SHX3_3 = "DHCompHi"
          SHX4_3 = 0.55
          SHX5_3 = SHX1_1
          SHX5_3 = SHX5_3[5]
          SHX5_3 = SHX5_3.val1
          SHX6_3 = 0.4
          SHX7_3 = 0.4
          SHX8_3 = 0
          SHX9_3 = 255
          SHX10_3 = 255
          SHX11_3 = 255
          SHX12_3 = 255
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        end
      end
      SHX1_3 = SHX2_1
      SHX1_3 = SHX1_3[6]
      SHX1_3 = SHX1_3.val0
      if 1 == SHX1_3 then
        SHX1_3 = DrawSprite
        SHX2_3 = "hackingNG"
        SHX3_3 = "DHComp"
        SHX4_3 = 0.6
        SHX5_3 = SHX1_1
        SHX5_3 = SHX5_3[6]
        SHX5_3 = SHX5_3.val1
        SHX6_3 = 0.4
        SHX7_3 = 0.4
        SHX8_3 = 0
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      else
        SHX1_3 = SHX2_1
        SHX1_3 = SHX1_3[6]
        SHX1_3 = SHX1_3.val0
        if 0 == SHX1_3 then
          SHX1_3 = DrawSprite
          SHX2_3 = "hackingNG"
          SHX3_3 = "DHCompHi"
          SHX4_3 = 0.6
          SHX5_3 = SHX1_1
          SHX5_3 = SHX5_3[6]
          SHX5_3 = SHX5_3.val1
          SHX6_3 = 0.4
          SHX7_3 = 0.4
          SHX8_3 = 0
          SHX9_3 = 255
          SHX10_3 = 255
          SHX11_3 = 255
          SHX12_3 = 255
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        end
      end
      SHX1_3 = SHX2_1
      SHX1_3 = SHX1_3[7]
      SHX1_3 = SHX1_3.val0
      if 1 == SHX1_3 then
        SHX1_3 = DrawSprite
        SHX2_3 = "hackingNG"
        SHX3_3 = "DHComp"
        SHX4_3 = 0.65
        SHX5_3 = SHX1_1
        SHX5_3 = SHX5_3[7]
        SHX5_3 = SHX5_3.val1
        SHX6_3 = 0.4
        SHX7_3 = 0.4
        SHX8_3 = 0
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      else
        SHX1_3 = SHX2_1
        SHX1_3 = SHX1_3[7]
        SHX1_3 = SHX1_3.val0
        if 0 == SHX1_3 then
          SHX1_3 = DrawSprite
          SHX2_3 = "hackingNG"
          SHX3_3 = "DHCompHi"
          SHX4_3 = 0.65
          SHX5_3 = SHX1_1
          SHX5_3 = SHX5_3[7]
          SHX5_3 = SHX5_3.val1
          SHX6_3 = 0.4
          SHX7_3 = 0.4
          SHX8_3 = 0
          SHX9_3 = 255
          SHX10_3 = 255
          SHX11_3 = 255
          SHX12_3 = 255
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        end
      end
      SHX1_3 = SHX0_1
      if true == SHX1_3 then
        return
      end
      SHX1_3 = SHX2_1
      SHX1_3 = SHX1_3[1]
      SHX1_3 = SHX1_3.val4
      if false == SHX1_3 then
        SHX1_3 = SHX2_1
        SHX1_3 = SHX1_3[2]
        SHX1_3 = SHX1_3.val4
        if false == SHX1_3 then
          SHX1_3 = SHX2_1
          SHX1_3 = SHX1_3[3]
          SHX1_3 = SHX1_3.val4
          if false == SHX1_3 then
            SHX1_3 = SHX2_1
            SHX1_3 = SHX1_3[4]
            SHX1_3 = SHX1_3.val4
            if false == SHX1_3 then
              SHX1_3 = SHX2_1
              SHX1_3 = SHX1_3[5]
              SHX1_3 = SHX1_3.val4
              if false == SHX1_3 then
                SHX1_3 = SHX2_1
                SHX1_3 = SHX1_3[6]
                SHX1_3 = SHX1_3.val4
                if false == SHX1_3 then
                  SHX1_3 = SHX2_1
                  SHX1_3 = SHX1_3[7]
                  SHX1_3 = SHX1_3.val4
                  if false == SHX1_3 then
                    SHX1_3 = PlaySoundFrontend
                    SHX2_3 = -1
                    SHX3_3 = "HACKING_SUCCESS"
                    SHX4_3 = ""
                    SHX5_3 = true
                    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
                    SHX1_3 = Citizen
                    SHX1_3 = SHX1_3.Wait
                    SHX2_3 = 2500
                    SHX1_3(SHX2_3)
                    SHX1_3 = true
                    SHX0_1 = SHX1_3
                    SHX1_3 = TriggerEvent
                    SHX2_3 = "datacrack"
                    SHX3_3 = true
                    SHX1_3(SHX2_3, SHX3_3)
                    SHX1_3 = SHX1_2
                    SHX2_3 = true
                    SHX1_3(SHX2_3)
                    return
                  end
                end
              end
            end
          end
        end
      end
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 1
      SHX1_3(SHX2_3)
    end
  end
  SHX3_2(SHX4_2)
end
SHX3_1.startDataCrackMinigame = SHX4_1
