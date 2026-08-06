-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1
SHX0_1 = RegisterNetEvent
SHX1_1 = "63a81df20f"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SwitchTrainTrack
  SHX1_2 = 0
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SwitchTrainTrack
  SHX1_2 = 3
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetTrainTrackSpawnFrequency
  SHX1_2 = 0
  SHX2_2 = 600000
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetRandomTrains
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = print
  SHX1_2 = "Starting trains"
  SHX0_2(SHX1_2)
end
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RegisterNetEvent
SHX1_1 = "cb633fe9c7"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SwitchTrainTrack
  SHX1_2 = 0
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SwitchTrainTrack
  SHX1_2 = 3
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetTrainTrackSpawnFrequency
  SHX1_2 = 0
  SHX2_2 = 120000
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = print
  SHX1_2 = "Disabling trains"
  SHX0_2(SHX1_2)
end
SHX0_1(SHX1_1, SHX2_1)
