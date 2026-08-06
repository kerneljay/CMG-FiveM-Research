-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
SHX0_1 = false
SHX1_1 = CMG
SHX1_1 = SHX1_1.uiRegisterCallback
SHX2_1 = "respawnButtonClicked"
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_1
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX0_2.location
  SHX1_2 = SHX1_2.name
  SHX2_2 = tonumber
  SHX3_2 = SHX0_2.location
  SHX3_2 = SHX3_2.price
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = TriggerEvent
  SHX4_2 = "600fad7b06"
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSendMessage
  SHX4_2 = {}
  SHX4_2.app = ""
  SHX4_2.type = "APP_TOGGLE"
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSetFocus
  SHX4_2 = false
  SHX5_2 = false
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = false
  SHX0_1 = SHX3_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.showHud
  SHX3_2()
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = AddEventHandler
SHX2_1 = "CMGUI:openSpawnMenu"
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.type = "SET_SPAWN_LOCATIONS"
  SHX3_2 = {}
  SHX3_2.locations = SHX0_2
  SHX2_2.info = SHX3_2
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.app = "spawn"
  SHX2_2.type = "APP_TOGGLE"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSetFocus
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = true
  SHX0_1 = SHX1_2
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = 0
SHX2_1 = RegisterNetEvent
SHX3_1 = "0cee493655"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = ClearTimecycleModifier
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.app = ""
  SHX1_2.type = "APP_TOGGLE"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = 0
  SHX1_1 = SHX0_2
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "2f40f9b5e7"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.page = "deathscreen"
  SHX1_2.type = "RESPAWN_KEY_PRESSED"
  SHX0_2(SHX1_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = AddEventHandler
SHX3_1 = "fdf12e0408"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SetTimecycleModifier
  SHX2_2 = "damage"
  SHX1_2(SHX2_2)
  SHX1_2 = SetTimecycleModifierStrength
  SHX2_2 = 1.0
  SHX1_2(SHX2_2)
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2.timer
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = 0
  end
  SHX0_2.timer = SHX1_2
  SHX1_2 = SHX0_2.killer
  if not SHX1_2 then
    SHX1_2 = "N/A"
  end
  SHX0_2.killer = SHX1_2
  SHX1_2 = SHX0_2.killerPermId
  if not SHX1_2 then
    SHX1_2 = 0
  end
  SHX0_2.killerPermId = SHX1_2
  SHX1_2 = SHX0_2.killedByWeapon
  if not SHX1_2 then
    SHX1_2 = "N/A"
  end
  SHX0_2.killedByWeapon = SHX1_2
  SHX1_2 = SHX0_2.suicide
  SHX1_2 = true == SHX1_2
  SHX0_2.suicide = SHX1_2
  SHX1_2 = SHX0_2.ignoreCallingNhs
  SHX1_2 = true == SHX1_2
  SHX0_2.ignoreCallingNhs = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.page = "deathscreen"
  SHX2_2.type = "SHOW_DEATH_SCREEN"
  SHX2_2.info = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSetFocus
  SHX2_2 = false
  SHX3_2 = false
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2.timer
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_1 = SHX1_2
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = AddEventHandler
SHX3_1 = "0d3f9227c2"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.page = "deathscreen"
  SHX1_2.type = "DEATH_SCREEN_NHS_CALLED"
  SHX0_2(SHX1_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = AddEventHandler
SHX3_1 = "5d1f7b4ba9"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.page = "deathscreen"
  SHX1_2.type = "DEATH_SCREEN_RDM_REPORTED"
  SHX0_2(SHX1_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = AddEventHandler
SHX3_1 = "d374144aa8"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.page = "deathscreen"
  SHX1_2.type = "DEATH_SCREEN_RDM_REPORT_RESET"
  SHX0_2(SHX1_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = AddEventHandler
SHX3_1 = "10e19c3bc2"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.page = "deathscreen"
  SHX2_2.type = "DEATH_SCREEN_NHS_CALL_BLOCKED"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = "You cannot call the health service in this area."
  end
  SHX3_2.message = SHX4_2
  SHX2_2.info = SHX3_2
  SHX1_2(SHX2_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = AddEventHandler
SHX3_1 = "6b772be49e"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.page = "deathscreen"
  SHX3_2.type = "DEATHSCREEN_SET_NEARBY_AMBULANCE"
  SHX4_2 = {}
  SHX4_2.nearestMedics = SHX0_2
  SHX4_2.medicCallStatus = SHX1_2
  SHX3_2.info = SHX4_2
  SHX2_2(SHX3_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = AddEventHandler
SHX3_1 = "543db28eb0"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX0_2 = SHX1_2 or SHX0_2
  if not SHX1_2 then
    SHX0_2 = 0
  end
  if SHX0_2 <= 0 then
    return
  end
  SHX1_2 = SHX1_1
  if not (SHX1_2 <= 0) then
    SHX1_2 = SHX1_1
    if not (SHX0_2 >= SHX1_2) then
      goto SHX_LABEL_17
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.page = "deathscreen"
  SHX2_2.type = "UPDATE_DEATH_SCREEN_TIMER"
  SHX3_2 = {}
  SHX4_2 = SHX1_1
  SHX3_2.timer = SHX4_2
  SHX2_2.info = SHX3_2
  SHX1_2(SHX2_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = Citizen
SHX2_1 = SHX2_1.CreateThread
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = SHX1_1
    if SHX0_2 > 0 then
      SHX0_2 = SHX1_1
      SHX0_2 = SHX0_2 - 1
      SHX1_1 = SHX0_2
      SHX0_2 = SHX1_1
      if 0 == SHX0_2 then
        SHX0_2 = TriggerEvent
        SHX1_2 = "5e8a71b65d"
        SHX0_2(SHX1_2)
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX2_1(SHX3_1)
SHX2_1 = CMG
SHX2_1 = SHX2_1.uiRegisterCallback
SHX3_1 = "countdownEnded"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX2_1(SHX3_1, SHX4_1)
