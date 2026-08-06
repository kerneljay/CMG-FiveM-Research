-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1
SHX0_1 = true
SHX1_1 = true
SHX2_1 = false
function SHX3_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.sendHudNuiMessage
  SHX3_2 = "SET_MICROPHONE_SETTINGS"
  SHX4_2 = {}
  SHX4_2.type = SHX0_2
  SHX4_2.value = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX4_1 = AddEventHandler
SHX5_1 = "pma-voice:setTalkingMode"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX3_1
  SHX2_2 = "mic_level"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = CreateThread
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = NetworkIsPlayerTalking
    SHX1_2 = PlayerId
    SHX1_2, SHX2_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX2_1
      if not SHX0_2 then
        SHX0_2 = true
        SHX2_1 = SHX0_2
        SHX0_2 = SHX3_1
        SHX1_2 = "isTalking"
        SHX2_2 = true
        SHX0_2(SHX1_2, SHX2_2)
      end
    else
      SHX0_2 = SHX2_1
      if SHX0_2 then
        SHX0_2 = false
        SHX2_1 = SHX0_2
        SHX0_2 = SHX3_1
        SHX1_2 = "isTalking"
        SHX2_2 = false
        SHX0_2(SHX1_2, SHX2_2)
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX4_1(SHX5_1)
SHX4_1 = CreateThread
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = MumbleIsConnected
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = SHX0_1
      if not SHX0_2 then
        SHX0_2 = SHX1_1
      end
      if SHX0_2 then
        SHX0_2 = false
        SHX0_1 = SHX0_2
        SHX0_2 = false
        SHX1_1 = SHX0_2
        SHX0_2 = SHX3_1
        SHX1_2 = "isMuted"
        SHX2_2 = true
        SHX0_2(SHX1_2, SHX2_2)
      end
    else
      SHX0_2 = SHX0_1
      if SHX0_2 then
        SHX0_2 = SHX1_1
        if not SHX0_2 then
          goto SHX_LABEL_34
        end
      end
      SHX0_2 = true
      SHX0_1 = SHX0_2
      SHX0_2 = false
      SHX1_1 = SHX0_2
      SHX0_2 = SHX3_1
      SHX1_2 = "isMuted"
      SHX2_2 = false
      SHX0_2(SHX1_2, SHX2_2)
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_34:: outside nested blocks until all 'goto SHX_LABEL_34' can see it
    ::SHX_LABEL_34::
    SHX0_2 = Wait
    SHX1_2 = 2000
    SHX0_2(SHX1_2)
  end
end
SHX4_1(SHX5_1)
