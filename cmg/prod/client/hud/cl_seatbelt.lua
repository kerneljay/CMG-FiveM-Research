-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_hud"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = true
SHX2_1 = 0
SHX3_1 = vector3
SHX4_1 = 0
SHX5_1 = 0
SHX6_1 = 0
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isClientClockedOnOrganisation
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isEmergencyService
    SHX0_2 = SHX0_2()
  end
  return SHX0_2
end
SHX5_1 = false
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.sendHudNuiMessage
  SHX1_2 = "SET_SEATBELT"
  SHX2_2 = SHX1_1
  SHX0_2(SHX1_2, SHX2_2)
end
SHX7_1 = AddEventHandler
SHX8_1 = "f7b3a54a8f"
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = false
  SHX1_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.sendHudNuiMessage
  SHX1_2 = "SET_SEATBELT"
  SHX2_2 = SHX1_1
  SHX0_2(SHX1_2, SHX2_2)
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = AddEventHandler
SHX8_1 = "e892eba4b7"
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isEmergencyService
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = false
    SHX1_1 = SHX0_2
  else
    SHX0_2 = true
    SHX1_1 = SHX0_2
  end
  SHX0_2 = SHX6_1
  SHX0_2()
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = AddEventHandler
SHX8_1 = "b51e08118b"
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isEmergencyService
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = SHX5_1
    if not SHX1_2 then
      SHX1_2 = false
      SHX1_1 = SHX1_2
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.sendHudNuiMessage
      SHX2_2 = "SET_SEATBELT"
      SHX3_2 = SHX1_1
      SHX1_2(SHX2_2, SHX3_2)
  end
  else
    SHX1_2 = SHX5_1
    if SHX1_2 and not SHX0_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.isClientClockedOnOrganisation
      SHX1_2 = SHX1_2()
      if SHX1_2 then
        SHX1_2 = false
        SHX1_1 = SHX1_2
      else
        SHX1_2 = true
        SHX1_1 = SHX1_2
      end
      SHX1_2 = SHX6_1
      SHX1_2()
    end
  end
  SHX5_1 = SHX0_2
  SHX1_2 = SHX4_1
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = true
    SHX1_1 = SHX1_2
    SHX1_2 = SHX6_1
    SHX1_2()
  end
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = {}
SHX7_1[0] = true
SHX7_1[1] = true
SHX7_1[2] = true
SHX7_1[3] = true
SHX7_1[4] = true
SHX7_1[5] = true
SHX7_1[6] = true
SHX7_1[7] = true
SHX7_1[9] = true
SHX7_1[12] = true
SHX7_1[20] = true
SHX7_1[22] = true
SHX7_1[17] = true
SHX7_1[18] = true
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetVehicleClass
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX7_1
  SHX2_2 = SHX2_2[SHX1_2]
  if not SHX2_2 then
    SHX2_2 = false
  end
  return SHX2_2
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = SHX8_1
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = SHX1_1
      SHX1_2 = not SHX1_2
      SHX1_1 = SHX1_2
      SHX1_2 = SHX1_1
      if SHX1_2 then
        SHX1_2 = SHX0_1.Notification
        SHX2_2 = SHX0_1.Notifications
        SHX2_2 = SHX2_2.TOOK_SEATBELT
        SHX2_2 = SHX2_2.message
        SHX3_2 = SHX0_1.Notifications
        SHX3_2 = SHX3_2.TOOK_SEATBELT
        SHX3_2 = SHX3_2.type
        SHX1_2(SHX2_2, SHX3_2)
      else
        SHX1_2 = SHX0_1.Notification
        SHX2_2 = SHX0_1.Notifications
        SHX2_2 = SHX2_2.TOOK_OFF_SEATBELT
        SHX2_2 = SHX2_2.message
        SHX3_2 = SHX0_1.Notifications
        SHX3_2 = SHX3_2.TOOK_OFF_SEATBELT
        SHX3_2 = SHX3_2.type
        SHX1_2(SHX2_2, SHX3_2)
      end
      SHX1_2 = SHX6_1
      SHX1_2()
    end
  end
end
SHX10_1 = RegisterCommand
SHX11_1 = "seatbelt"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX4_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  SHX2_2 = IsPedInAnyVehicle
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = SHX8_1
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = SHX9_1
      SHX2_2()
    end
  end
end
SHX13_1 = false
SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX10_1 = RegisterKeyMapping
SHX11_1 = "seatbelt"
SHX12_1 = "Toggle Seatbelt"
SHX13_1 = "keyboard"
SHX14_1 = SHX0_1.SeatbeltKey
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1)
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetEntityHeading
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = SHX1_2 + 90.0
  if SHX1_2 < 0.0 then
    SHX1_2 = 360.0 + SHX1_2
  end
  SHX1_2 = SHX1_2 * 0.0174533
  SHX2_2 = {}
  SHX3_2 = math
  SHX3_2 = SHX3_2.cos
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2 * 2.0
  SHX2_2.x = SHX3_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.sin
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2 * 2.0
  SHX2_2.y = SHX3_2
  return SHX2_2
end
function SHX11_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX3_2 = SHX4_1
  SHX3_2 = SHX3_2()
  if not SHX3_2 then
    return
  end
  SHX3_2 = SHX1_1
  if SHX3_2 then
    return
  end
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = GetVehiclePedIsIn
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if 0 == SHX4_2 then
    SHX5_2 = GetVehiclePedIsIn
    SHX6_2 = SHX3_2
    SHX7_2 = true
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX4_2 = SHX5_2
  end
  SHX5_2 = type
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  if "number" == SHX5_2 then
    SHX5_2 = type
    SHX6_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2)
    if "number" == SHX5_2 then
      SHX5_2 = type
      SHX6_2 = SHX2_2
      SHX5_2 = SHX5_2(SHX6_2)
      if "number" == SHX5_2 then
        goto SHX_LABEL_54
      end
    end
  end
  if 0 ~= SHX4_2 then
    SHX5_2 = GetEntityVelocity
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = SHX5_2.x
    SHX7_2 = SHX5_2.y
    SHX2_2 = SHX5_2.z
    SHX1_2 = SHX7_2
    SHX0_2 = SHX6_2
  else
    SHX5_2 = 0.0
    SHX6_2 = 0.0
    SHX2_2 = 0.0
    SHX1_2 = SHX6_2
    SHX0_2 = SHX5_2
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_54:: outside nested blocks until all 'goto SHX_LABEL_54' can see it
  ::SHX_LABEL_54::
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SHX10_1
  SHX7_2 = SHX3_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SetEntityCoords
  SHX8_2 = SHX3_2
  SHX9_2 = SHX5_2.x
  SHX10_2 = SHX6_2.x
  SHX9_2 = SHX9_2 + SHX10_2
  SHX10_2 = SHX5_2.y
  SHX11_2 = SHX6_2.y
  SHX10_2 = SHX10_2 + SHX11_2
  SHX11_2 = SHX5_2.z
  SHX11_2 = SHX11_2 - 0.47
  SHX12_2 = true
  SHX13_2 = true
  SHX14_2 = true
  SHX15_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2 = SHX0_1.seatbeltEjectVelocityScale
  SHX8_2 = SHX0_1.seatbeltEjectUpwardImpulse
  SHX9_2 = SHX0_2 * SHX7_2
  SHX10_2 = SHX1_2 * SHX7_2
  SHX11_2 = SHX2_2 * SHX7_2
  SHX11_2 = SHX11_2 + SHX8_2
  SHX12_2 = SetEntityVelocity
  SHX13_2 = SHX3_2
  SHX14_2 = SHX9_2
  SHX15_2 = SHX10_2
  SHX16_2 = SHX11_2
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX12_2 = Wait
  SHX13_2 = 0
  SHX12_2(SHX13_2)
  SHX12_2 = SetEntityVelocity
  SHX13_2 = SHX3_2
  SHX14_2 = SHX9_2
  SHX15_2 = SHX10_2
  SHX16_2 = SHX11_2
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX12_2 = ApplyDamageToPed
  SHX13_2 = SHX3_2
  SHX14_2 = math
  SHX14_2 = SHX14_2.random
  SHX15_2 = 10
  SHX16_2 = 30
  SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
  SHX15_2 = false
  SHX12_2(SHX13_2, SHX14_2, SHX15_2)
  SHX12_2 = SetPedToRagdoll
  SHX13_2 = SHX3_2
  SHX14_2 = 1000
  SHX15_2 = 1000
  SHX16_2 = 0
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = false
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX12_2 = CreateThread
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = SHX3_2
    SHX1_3 = 1
    SHX2_3 = 15
    SHX3_3 = 1
    for SHX4_3 = SHX1_3, SHX2_3, SHX3_3 do
      SHX5_3 = Wait
      SHX6_3 = 0
      SHX5_3(SHX6_3)
      SHX5_3 = DoesEntityExist
      SHX6_3 = SHX0_3
      SHX5_3 = SHX5_3(SHX6_3)
      if SHX5_3 then
        SHX5_3 = SetEntityVelocity
        SHX6_3 = SHX0_3
        SHX7_3 = SHX9_2
        SHX8_3 = SHX10_2
        SHX9_3 = SHX11_2
        SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      end
    end
  end
  SHX12_2(SHX13_2)
end
SHX12_1 = RegisterNetEvent
SHX13_1 = "86e5b246ad"
SHX12_1(SHX13_1)
SHX12_1 = AddEventHandler
SHX13_1 = "86e5b246ad"
function SHX14_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX11_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX12_1(SHX13_1, SHX14_1)
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = false
  SHX1_1 = SHX0_2
  SHX0_2 = SHX6_1
  SHX0_2()
  SHX0_2 = 0
  SHX2_1 = SHX0_2
end
SHX13_1 = CreateThread
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = SHX4_1
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = SHX1_1
      if SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.getPlayerVehicle
        SHX0_2 = SHX0_2()
        if 0 ~= SHX0_2 then
          SHX1_2 = SHX8_1
          SHX2_2 = SHX0_2
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX1_2 then
            SHX1_2 = DisableControlAction
            SHX2_2 = 0
            SHX3_2 = 75
            SHX4_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            SHX1_2 = IsDisabledControlJustPressed
            SHX2_2 = 0
            SHX3_2 = 75
            SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
            if SHX1_2 then
              SHX1_2 = SHX12_1
              SHX1_2()
            end
            SHX1_2 = Wait
            SHX2_2 = 0
            SHX1_2(SHX2_2)
        end
        else
          SHX1_2 = Wait
          SHX2_2 = 150
          SHX1_2(SHX2_2)
        end
    end
    else
      SHX0_2 = Wait
      SHX1_2 = 500
      SHX0_2(SHX1_2)
    end
  end
end
SHX13_1(SHX14_1)
SHX13_1 = CreateThread
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  while true do
    SHX0_2 = SHX4_1
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerVehicle
      SHX0_2, SHX1_2 = SHX0_2()
      if 0 ~= SHX0_2 then
        SHX2_2 = SHX8_1
        SHX3_2 = SHX0_2
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 then
          if SHX1_2 then
            SHX2_2 = GetEntitySpeed
            SHX3_2 = SHX0_2
            SHX2_2 = SHX2_2(SHX3_2)
            SHX2_2 = SHX2_2 * 3.6
            SHX3_2 = SHX2_1
            SHX3_2 = SHX3_2 - SHX2_2
            SHX4_2 = SHX2_2 * 1.7
            SHX3_2 = SHX3_2 > SHX4_2
            SHX4_2 = SHX2_1
            SHX5_2 = SHX0_1.SeatbeltEjectSpeed
            SHX4_2 = SHX4_2 > SHX5_2
            if SHX4_2 and SHX3_2 then
              SHX5_2 = {}
              SHX6_2 = 1
              SHX7_2 = GetVehicleModelNumberOfSeats
              SHX8_2 = GetEntityModel
              SHX9_2 = SHX0_2
              SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX8_2(SHX9_2)
              SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
              SHX8_2 = 1
              for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
                SHX10_2 = IsVehicleSeatFree
                SHX11_2 = SHX0_2
                SHX12_2 = SHX9_2 - 2
                SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
                if not SHX10_2 then
                  SHX10_2 = GetPedInVehicleSeat
                  SHX11_2 = SHX0_2
                  SHX12_2 = SHX9_2 - 2
                  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
                  SHX11_2 = NetworkGetPlayerIndexFromPed
                  SHX12_2 = SHX10_2
                  SHX11_2 = SHX11_2(SHX12_2)
                  SHX12_2 = GetPlayerServerId
                  SHX13_2 = SHX11_2
                  SHX12_2 = SHX12_2(SHX13_2)
                  SHX13_2 = table
                  SHX13_2 = SHX13_2.insert
                  SHX14_2 = SHX5_2
                  SHX15_2 = SHX12_2
                  SHX13_2(SHX14_2, SHX15_2)
                end
              end
              SHX6_2 = GetEntityVelocity
              SHX7_2 = SHX0_2
              SHX6_2 = SHX6_2(SHX7_2)
              SHX7_2 = SHX6_2.x
              SHX8_2 = SHX6_2.y
              SHX9_2 = SHX6_2.z
              SHX10_2 = SHX7_2 * SHX7_2
              SHX11_2 = SHX8_2 * SHX8_2
              SHX10_2 = SHX10_2 + SHX11_2
              SHX11_2 = SHX9_2 * SHX9_2
              SHX10_2 = SHX10_2 + SHX11_2
              if SHX10_2 < 1.0 then
                SHX7_2 = SHX3_1.x
                SHX8_2 = SHX3_1.y
                SHX9_2 = SHX3_1.z
              end
              SHX11_2 = SHX1_1
              if not SHX11_2 then
                SHX11_2 = SHX11_1
                SHX12_2 = SHX7_2
                SHX13_2 = SHX8_2
                SHX14_2 = SHX9_2
                SHX11_2(SHX12_2, SHX13_2, SHX14_2)
              end
              SHX11_2 = GetPlayerServerId
              SHX12_2 = PlayerId
              SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX12_2()
              SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
              SHX12_2 = {}
              SHX13_2 = ipairs
              SHX14_2 = SHX5_2
              SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX13_2(SHX14_2)
              for SHX17_2, SHX18_2 in SHX13_2, SHX14_2, SHX15_2, SHX16_2 do
                SHX19_2 = tonumber
                SHX20_2 = SHX18_2
                SHX19_2 = SHX19_2(SHX20_2)
                if 0 ~= SHX19_2 and SHX18_2 ~= SHX11_2 then
                  SHX19_2 = #SHX12_2
                  SHX19_2 = SHX19_2 + 1
                  SHX12_2[SHX19_2] = SHX18_2
                end
              end
              SHX13_2 = #SHX12_2
              if SHX13_2 > 0 then
                SHX13_2 = TriggerServerEvent
                SHX14_2 = "86e5b246ad"
                SHX15_2 = SHX12_2
                SHX16_2 = SHX7_2
                SHX17_2 = SHX8_2
                SHX18_2 = SHX9_2
                SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
              end
            end
            SHX2_1 = SHX2_2
            SHX5_2 = GetEntityVelocity
            SHX6_2 = SHX0_2
            SHX5_2 = SHX5_2(SHX6_2)
            SHX3_1 = SHX5_2
          end
      end
      else
        SHX2_2 = SHX1_1
        if SHX2_2 then
          SHX2_2 = SHX12_1
          SHX2_2()
        end
        SHX2_2 = Wait
        SHX3_2 = 2000
        SHX2_2(SHX3_2)
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 150
    SHX0_2(SHX1_2)
  end
end
SHX13_1(SHX14_1)
SHX13_1 = AddEventHandler
SHX14_1 = "onClientResourceStart"
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 ~= SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "SEATBELT_RESET_SOUND_STATE"
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = Wait
    SHX1_3 = 250
    SHX0_3(SHX1_3)
    SHX0_3 = SHX4_1
    SHX0_3 = SHX0_3()
    if not SHX0_3 then
      SHX0_3 = true
      SHX1_1 = SHX0_3
      SHX0_3 = SHX6_1
      SHX0_3()
    end
  end
  SHX1_2(SHX2_2)
end
SHX13_1(SHX14_1, SHX15_1)
