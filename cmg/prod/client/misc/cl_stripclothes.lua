-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/takeoffmask"
SHX3_1 = "Take off your mask"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/takeoffhat"
SHX3_1 = "Take off your hat"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/takeoffjacket"
SHX3_1 = "Take off your jacket"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/takeofftie"
SHX3_1 = "Take off your tie"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/takeoffbracelet"
SHX3_1 = "Take off your bracelet"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/takeoffglasses"
SHX3_1 = "Take off your glasses"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/takeofftrousers"
SHX3_1 = "Take off your trousers"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/takeoffshoes"
SHX3_1 = "Take off your shoes"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "takeoffmask"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "veh@bike@common@front@base"
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = "veh@bike@common@front@base"
  SHX4_2 = "take_off_helmet_walk"
  SHX5_2 = 5.0
  SHX6_2 = 5.0
  SHX7_2 = -1
  SHX8_2 = 48
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "veh@bike@common@front@base"
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 700
  SHX1_2(SHX2_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 1
  SHX4_2 = 0
  SHX5_2 = 0
  SHX6_2 = 1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = IsPedWearingHelmet
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = RemovePedHelmet
    SHX2_2 = SHX0_2
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "takeoffhat"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "veh@bike@common@front@base"
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = "veh@bike@common@front@base"
  SHX4_2 = "take_off_helmet_walk"
  SHX5_2 = 5.0
  SHX6_2 = 5.0
  SHX7_2 = -1
  SHX8_2 = 48
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "veh@bike@common@front@base"
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 700
  SHX1_2(SHX2_2)
  SHX1_2 = ClearPedProp
  SHX2_2 = SHX0_2
  SHX3_2 = 0
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = IsPedWearingHelmet
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = RemovePedHelmet
    SHX2_2 = SHX0_2
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "takeoffjacket"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "clothingtie"
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = "clothingtie"
  SHX4_2 = "try_tie_positive_a"
  SHX5_2 = 5.0
  SHX6_2 = 5.0
  SHX7_2 = -1
  SHX8_2 = 48
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "clothingtie"
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 3000
  SHX1_2(SHX2_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 3
  SHX4_2 = 15
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 8
  SHX4_2 = 0
  SHX5_2 = 240
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1667301416 == SHX1_2 then
    SHX1_2 = SetPedComponentVariation
    SHX2_2 = SHX0_2
    SHX3_2 = 11
    SHX4_2 = 18
    SHX5_2 = 0
    SHX6_2 = 0
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  else
    SHX1_2 = SetPedComponentVariation
    SHX2_2 = SHX0_2
    SHX3_2 = 11
    SHX4_2 = 0
    SHX5_2 = 240
    SHX6_2 = 0
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "takeofftie"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "clothingtie"
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = "clothingtie"
  SHX4_2 = "try_tie_neutral_b"
  SHX5_2 = 5.0
  SHX6_2 = 5.0
  SHX7_2 = -1
  SHX8_2 = 48
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "clothingtie"
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1200
  SHX1_2(SHX2_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 7
  SHX4_2 = 0
  SHX5_2 = 240
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "takeoffbracelet"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = ClearPedProp
  SHX2_2 = SHX0_2
  SHX3_2 = 6
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ClearPedProp
  SHX2_2 = SHX0_2
  SHX3_2 = 7
  SHX1_2(SHX2_2, SHX3_2)
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "takeoffglasses"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "clothingspecs"
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = "clothingspecs"
  SHX4_2 = "try_glasses_positive_a"
  SHX5_2 = 5.0
  SHX6_2 = 5.0
  SHX7_2 = -1
  SHX8_2 = 48
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "clothingspecs"
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1800
  SHX1_2(SHX2_2)
  SHX1_2 = ClearPedProp
  SHX2_2 = SHX0_2
  SHX3_2 = 1
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 800
  SHX1_2(SHX2_2)
  SHX1_2 = ClearPedSecondaryTask
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "takeofftrousers"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "clothingshoes"
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = "clothingshoes"
  SHX4_2 = "try_shoes_positive_d"
  SHX5_2 = 5.0
  SHX6_2 = 5.0
  SHX7_2 = -1
  SHX8_2 = 48
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "clothingshoes"
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1800
  SHX1_2(SHX2_2)
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1667301416 == SHX1_2 then
    SHX1_2 = SetPedComponentVariation
    SHX2_2 = SHX0_2
    SHX3_2 = 4
    SHX4_2 = 14
    SHX5_2 = 0
    SHX6_2 = 2
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  else
    SHX1_2 = SetPedComponentVariation
    SHX2_2 = SHX0_2
    SHX3_2 = 4
    SHX4_2 = 14
    SHX5_2 = 0
    SHX6_2 = 2
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 800
  SHX1_2(SHX2_2)
  SHX1_2 = ClearPedSecondaryTask
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "takeoffshoes"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "clothingshoes"
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = "clothingshoes"
  SHX4_2 = "try_shoes_positive_d"
  SHX5_2 = 5.0
  SHX6_2 = 5.0
  SHX7_2 = -1
  SHX8_2 = 48
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "clothingshoes"
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1800
  SHX1_2(SHX2_2)
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1667301416 == SHX1_2 then
    SHX1_2 = SetPedComponentVariation
    SHX2_2 = SHX0_2
    SHX3_2 = 6
    SHX4_2 = 35
    SHX5_2 = 0
    SHX6_2 = 2
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  else
    SHX1_2 = SetPedComponentVariation
    SHX2_2 = SHX0_2
    SHX3_2 = 6
    SHX4_2 = 34
    SHX5_2 = 0
    SHX6_2 = 2
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 800
  SHX1_2(SHX2_2)
  SHX1_2 = ClearPedSecondaryTask
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
