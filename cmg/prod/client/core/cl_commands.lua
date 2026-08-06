-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1
SHX0_1 = Citizen
SHX0_1 = SHX0_1.CreateThread
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = AddTextEntry
  SHX1_2 = "FE_THDR_GTAO"
  SHX2_2 = "CMG British RP - discord.gg/CMG"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = AddTextEntry
  SHX1_2 = "PM_PANE_CFX"
  SHX2_2 = "CMG"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = AddTextEntry
  SHX1_2 = "MO_GFX_DX10"
  SHX2_2 = "DirectX 10 (Broken, use DirectX 11 instead)"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = AddTextEntry
  SHX1_2 = "MO_GFX_DX101"
  SHX2_2 = "DirectX 10.1 (Broken, use DirectX 11 instead)"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX0_1(SHX1_1)
SHX0_1 = RegisterCommand
SHX1_1 = "discord"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "chatMessage"
  SHX2_2 = "^1https://discord.gg/CMG"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "rp"
function SHX2_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = nil
  if SHX2_2 and "" ~= SHX2_2 then
    SHX5_2 = SHX2_2
    SHX4_2 = SHX2_2.gsub
    SHX6_2 = "^%s*rp%s*"
    SHX7_2 = ""
    SHX8_2 = 1
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX3_2 = SHX4_2
  end
  if not SHX3_2 or "" == SHX3_2 then
    SHX4_2 = type
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    if "table" == SHX4_2 then
      SHX4_2 = table
      SHX4_2 = SHX4_2.concat
      SHX5_2 = SHX1_2
      SHX6_2 = " "
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        goto SHX_LABEL_29
        SHX3_2 = SHX4_2 or SHX3_2
      end
    end
    SHX3_2 = ""
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
  ::SHX_LABEL_29::
  if "" ~= SHX3_2 then
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "cmg:sendRpMessage"
    SHX6_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2)
  end
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "ts"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "chatMessage"
  SHX2_2 = "^1ts.cmgstudios.net"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "website"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "chatMessage"
  SHX2_2 = "^1www.cmgstudios.net"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "register"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "chatMessage"
  SHX2_2 = "^1There is no need to /register on this server, to change your appearance go to a clothes store!"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "interiorlights"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = GetVehiclePedIsIn
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = IsVehicleInteriorLightOn
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = SetVehicleInteriorlight
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
  else
    SHX1_2 = SetVehicleInteriorlight
    SHX2_2 = SHX0_2
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
