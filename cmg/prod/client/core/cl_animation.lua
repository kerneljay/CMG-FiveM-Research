-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1
SHX0_1 = false
SHX1_1 = RegisterCommand
SHX2_1 = "salute"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = "anim@mp_player_intuppersalute"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.loadAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = IsEntityPlayingAnim
      SHX3_2 = SHX1_2
      SHX4_2 = SHX0_2
      SHX5_2 = "idle_a"
      SHX6_2 = 3
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if SHX2_2 then
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 600
        SHX2_2(SHX3_2)
        SHX2_2 = ClearPedSecondaryTask
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.getPlayerPed
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2()
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      else
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "idle_a"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 500
        SHX2_2(SHX3_2)
      end
      SHX2_2 = RemoveAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterCommand
SHX2_1 = "finger"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = "anim@mp_player_intselfiethe_bird"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.loadAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = IsEntityPlayingAnim
      SHX3_2 = SHX1_2
      SHX4_2 = SHX0_2
      SHX5_2 = "idle_a"
      SHX6_2 = 3
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if SHX2_2 then
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 100
        SHX2_2(SHX3_2)
        SHX2_2 = ClearPedSecondaryTask
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.getPlayerPed
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2()
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      else
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "idle_a"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 5000
        SHX2_2(SHX3_2)
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 100
        SHX2_2(SHX3_2)
        SHX2_2 = ClearPedSecondaryTask
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.getPlayerPed
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2()
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      end
      SHX2_2 = RemoveAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterCommand
SHX2_1 = "finger2"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = "anim@mp_player_intupperfinger"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.loadAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = IsEntityPlayingAnim
      SHX3_2 = SHX1_2
      SHX4_2 = SHX0_2
      SHX5_2 = "idle_a"
      SHX6_2 = 3
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if SHX2_2 then
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 100
        SHX2_2(SHX3_2)
        SHX2_2 = ClearPedSecondaryTask
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.getPlayerPed
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2()
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      else
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "idle_a"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 5000
        SHX2_2(SHX3_2)
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 100
        SHX2_2(SHX3_2)
        SHX2_2 = ClearPedSecondaryTask
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.getPlayerPed
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2()
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      end
      SHX2_2 = RemoveAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterCommand
SHX2_1 = "facepalm"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = "anim@mp_player_intupperface_palm"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.loadAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = IsEntityPlayingAnim
      SHX3_2 = SHX1_2
      SHX4_2 = SHX0_2
      SHX5_2 = "idle_a"
      SHX6_2 = 3
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if SHX2_2 then
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 100
        SHX2_2(SHX3_2)
        SHX2_2 = ClearPedSecondaryTask
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.getPlayerPed
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2()
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      else
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "idle_a"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 5000
        SHX2_2(SHX3_2)
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 100
        SHX2_2(SHX3_2)
        SHX2_2 = ClearPedSecondaryTask
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.getPlayerPed
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2()
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      end
      SHX2_2 = RemoveAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterCommand
SHX2_1 = "damn"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = "gestures@m@standing@casual"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.loadAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = IsEntityPlayingAnim
      SHX3_2 = SHX1_2
      SHX4_2 = SHX0_2
      SHX5_2 = "gesture_damn"
      SHX6_2 = 3
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if SHX2_2 then
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 100
        SHX2_2(SHX3_2)
      else
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "gesture_damn"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 500
        SHX2_2(SHX3_2)
      end
      SHX2_2 = RemoveAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterCommand
SHX2_1 = "fail"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = "random@car_thief@agitated@idle_a"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.loadAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = IsEntityPlayingAnim
      SHX3_2 = SHX1_2
      SHX4_2 = SHX0_2
      SHX5_2 = "agitated_idle_a"
      SHX6_2 = 3
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if SHX2_2 then
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 100
        SHX2_2(SHX3_2)
      else
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "agitated_idle_a"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 500
        SHX2_2(SHX3_2)
      end
      SHX2_2 = RemoveAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterCommand
SHX2_1 = "sign1"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = "mp_player_int_uppergang_sign_a"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.loadAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = IsEntityPlayingAnim
      SHX3_2 = SHX1_2
      SHX4_2 = SHX0_2
      SHX5_2 = "mp_player_int_gang_sign_a"
      SHX6_2 = 3
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if SHX2_2 then
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 100
        SHX2_2(SHX3_2)
      else
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "mp_player_int_gang_sign_a"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 500
        SHX2_2(SHX3_2)
      end
      SHX2_2 = RemoveAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterCommand
SHX2_1 = "sign2"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = "mp_player_int_uppergang_sign_b"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.loadAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = IsEntityPlayingAnim
      SHX3_2 = SHX1_2
      SHX4_2 = SHX0_2
      SHX5_2 = "mp_player_int_gang_sign_b"
      SHX6_2 = 3
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if SHX2_2 then
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 100
        SHX2_2(SHX3_2)
      else
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "mp_player_int_gang_sign_b"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 500
        SHX2_2(SHX3_2)
      end
      SHX2_2 = RemoveAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterCommand
SHX2_1 = "fingerbum"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = "mp_player_int_upperarse_pick"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.loadAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = IsEntityPlayingAnim
      SHX3_2 = SHX1_2
      SHX4_2 = SHX0_2
      SHX5_2 = "mp_player_int_arse_pick"
      SHX6_2 = 3
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if SHX2_2 then
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 100
        SHX2_2(SHX3_2)
        SHX2_2 = false
        SHX0_1 = SHX2_2
      else
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "mp_player_int_arse_pick"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 500
        SHX2_2(SHX3_2)
        SHX2_2 = true
        SHX0_1 = SHX2_2
      end
      SHX2_2 = RemoveAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterCommand
SHX2_1 = "touchself"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = "mp_player_int_uppergrab_crotch"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.loadAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = IsEntityPlayingAnim
      SHX3_2 = SHX1_2
      SHX4_2 = SHX0_2
      SHX5_2 = "mp_player_int_grab_crotch"
      SHX6_2 = 3
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if SHX2_2 then
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 100
        SHX2_2(SHX3_2)
      else
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "mp_player_int_grab_crotch"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 500
        SHX2_2(SHX3_2)
      end
      SHX2_2 = RemoveAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterCommand
SHX2_1 = "wanker"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = "mp_player_intwank"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.loadAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = IsEntityPlayingAnim
      SHX3_2 = SHX1_2
      SHX4_2 = SHX0_2
      SHX5_2 = "mp_player_int_wank"
      SHX6_2 = 3
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if SHX2_2 then
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "exit"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 100
        SHX2_2(SHX3_2)
      else
        SHX2_2 = TaskPlayAnim
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = "mp_player_int_wank"
        SHX6_2 = 8.0
        SHX7_2 = 1.0
        SHX8_2 = -1
        SHX9_2 = 49
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = Wait
        SHX3_2 = 500
        SHX2_2(SHX3_2)
      end
      SHX2_2 = RemoveAnimDict
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = 0
SHX2_1 = RegisterCommand
SHX3_1 = "cigar"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX0_2 = "prop_cigar_02"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = "mp_player_int_uppersmoke"
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadAnimDict
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
  SHX4_2 = DoesEntityExist
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 then
    SHX4_2 = IsEntityDead
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      SHX4_2 = IsCigar
      if SHX4_2 then
        SHX4_2 = Wait
        SHX5_2 = 500
        SHX4_2(SHX5_2)
        SHX4_2 = DeleteObject
        SHX5_2 = SHX1_1
        SHX4_2(SHX5_2)
        IsCigar = false
      else
        IsCigar = true
        SHX4_2 = Wait
        SHX5_2 = 500
        SHX4_2(SHX5_2)
        SHX4_2 = table
        SHX4_2 = SHX4_2.unpack
        SHX5_2 = GetEntityCoords
        SHX6_2 = SHX1_2
        SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX5_2(SHX6_2)
        SHX4_2, SHX5_2, SHX6_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.requestEntitySpawn
        SHX8_2 = "animation_cigar_object"
        SHX7_2(SHX8_2)
        SHX7_2 = CreateObject
        SHX8_2 = GetHashKey
        SHX9_2 = SHX0_2
        SHX8_2 = SHX8_2(SHX9_2)
        SHX9_2 = SHX4_2
        SHX10_2 = SHX5_2
        SHX11_2 = SHX6_2 + 0.2
        SHX12_2 = true
        SHX13_2 = true
        SHX14_2 = true
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        SHX1_1 = SHX7_2
        SHX7_2 = AttachEntityToEntity
        SHX8_2 = SHX1_1
        SHX9_2 = SHX1_2
        SHX10_2 = GetPedBoneIndex
        SHX11_2 = SHX1_2
        SHX12_2 = 47419
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX11_2 = 0.015
        SHX12_2 = -1.0E-4
        SHX13_2 = 0.003
        SHX14_2 = 55.0
        SHX15_2 = 0.0
        SHX16_2 = -85.0
        SHX17_2 = true
        SHX18_2 = true
        SHX19_2 = false
        SHX20_2 = true
        SHX21_2 = 1
        SHX22_2 = true
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX7_2 = TaskPlayAnim
        SHX8_2 = SHX3_2
        SHX9_2 = SHX2_2
        SHX10_2 = "mp_player_int_smoke"
        SHX11_2 = 8.0
        SHX12_2 = 1.0
        SHX13_2 = -1
        SHX14_2 = 49
        SHX15_2 = 0
        SHX16_2 = false
        SHX17_2 = false
        SHX18_2 = false
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      end
    end
  end
  SHX4_2 = RemoveAnimDict
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
end
SHX5_1 = false
SHX2_1(SHX3_1, SHX4_1, SHX5_1)
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = DisablePlayerFiring
    SHX1_2 = PlayerId
    SHX1_2 = SHX1_2()
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX3_1 = CMG
SHX3_1 = SHX3_1.createThreadOnTick
SHX4_1 = SHX2_1
SHX5_1 = "Anim Check Tick"
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = exports
SHX4_1 = "canAnim"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.canAnim
  return SHX0_2()
end
SHX3_1(SHX4_1, SHX5_1)
