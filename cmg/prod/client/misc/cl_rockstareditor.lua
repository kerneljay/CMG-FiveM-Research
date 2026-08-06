-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1
SHX0_1 = {}
SHX1_1 = {}
SHX1_1.start_record_replay = 288
SHX1_1.start_record = 57
SHX1_1.stop_save_record = 57
SHX1_1.stop_discard_record = 289
SHX1_1.open_editor = 178
SHX0_1.binding = SHX1_1
SHX1_1 = false
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = IsRecording
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = SHX0_1.binding
      SHX2_2 = SHX2_2.stop_save_record
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = StopRecordingAndSaveClip
        SHX0_2()
      end
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = SHX0_1.binding
      SHX2_2 = SHX2_2.stop_discard_record
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = StopRecordingAndDiscardClip
        SHX0_2()
      end
    else
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = SHX0_1.binding
      SHX2_2 = SHX2_2.start_record_replay
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = StartRecording
        SHX1_2 = 0
        SHX0_2(SHX1_2)
      end
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = SHX0_1.binding
      SHX2_2 = SHX2_2.start_record
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = StartRecording
        SHX1_2 = 1
        SHX0_2(SHX1_2)
      end
    end
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 1
    SHX2_2 = SHX0_1.binding
    SHX2_2 = SHX2_2.open_editor
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = NetworkSessionLeaveSinglePlayer
      SHX0_2()
      SHX0_2 = ActivateRockstarEditor
      SHX0_2()
    end
  end
end
SHX3_1 = CMG
SHX3_1 = SHX3_1.createThreadOnTick
SHX4_1 = SHX2_1
SHX5_1 = "Recording"
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterCommand
SHX4_1 = "rockstareditor"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  SHX0_2 = not SHX0_2
  SHX1_1 = SHX0_2
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "~r~Recording mode is now off"
    SHX0_2(SHX1_2)
  else
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "~g~Recording mode is now on (F10 to record)"
    SHX0_2(SHX1_2)
  end
end
SHX6_1 = false
SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX3_1 = CMG
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  return SHX0_2
end
SHX3_1.isInRecordingMode = SHX4_1
