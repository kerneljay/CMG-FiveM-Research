-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1
SHX0_1 = RegisterNetEvent
SHX1_1 = "e3a2b4bde0"
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if "Trainee Paramedic" == SHX0_2 then
    SHX1_2 = PlaySound
    SHX2_2 = -1
    SHX3_2 = "CHECKPOINT_BEHIND"
    SHX4_2 = "HUD_MINI_GAME_SOUNDSET"
    SHX5_2 = false
    SHX6_2 = 0
    SHX7_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.initializeInstructionalJobScaleform
    SHX2_2 = "Trainee Paramedic"
    SHX3_2 = "Press F6 to get started"
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RegisterNetEvent
SHX1_1 = "87318b22f0"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getModelGender
  SHX0_2 = SHX0_2()
  if "male" == SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.loadCustomisationPreset
    SHX1_2 = "ParamedicMale"
    SHX0_2(SHX1_2)
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.loadCustomisationPreset
    SHX1_2 = "ParamedicFemale"
    SHX0_2(SHX1_2)
  end
end
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = CMG
SHX0_1 = SHX0_1.uiRegisterCallback
SHX1_1 = "getHealthServiceLeaderboard"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "a1ab9a3b49"
  SHX0_2(SHX1_2)
end
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RegisterNetEvent
SHX1_1 = "985c4252d0"
function SHX2_1(SHX0_2)
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
  SHX2_2.type = "HEALTHSERVICE_LEADERBOARD"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.paramedics = SHX4_2
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = CMG
SHX0_1 = SHX0_1.uiRegisterCallback
SHX1_1 = "getHealthServiceLevelState"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "f61531fec4"
  SHX0_2(SHX1_2)
end
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RegisterNetEvent
SHX1_1 = "4b7dbba9c0"
function SHX2_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSendMessage
  SHX4_2 = {}
  SHX4_2.type = "HEALTHSERVICE_LEVELS"
  SHX5_2 = {}
  SHX6_2 = SHX0_2 or SHX6_2
  if not SHX0_2 then
    SHX6_2 = 0
  end
  SHX5_2.level = SHX6_2
  SHX6_2 = SHX1_2 or SHX6_2
  if not SHX1_2 then
    SHX6_2 = 0
  end
  SHX5_2.xp = SHX6_2
  SHX6_2 = SHX2_2 or SHX6_2
  if not SHX2_2 then
    SHX6_2 = 0
  end
  SHX5_2.xpMax = SHX6_2
  SHX4_2.payload = SHX5_2
  SHX3_2(SHX4_2)
end
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = CMG
SHX0_1 = SHX0_1.uiRegisterCallback
SHX1_1 = "getHealthServiceLevels"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "db119884cb"
  SHX0_2(SHX1_2)
end
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RegisterNetEvent
SHX1_1 = "291d3f328b"
function SHX2_1(SHX0_2)
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
  SHX2_2.type = "HEALTHSERVICE_LEVEL_LIST"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.levels = SHX4_2
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = false
SHX1_1 = 0
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
  SHX1_2 = IsPedInAnyVehicle
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = IsPedSwimming
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = IsPedShooting
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = IsPedClimbing
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = IsPedDiving
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = IsPedFalling
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = IsPedJumping
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = IsPedOnFoot
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = IsPedRunning
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX1_2 = IsPedUsingAnyScenario
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX1_2 = IsPedInParachuteFreeFall
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isPlayerNearPrison
    SHX1_2 = SHX1_2()
    SHX1_2 = not SHX1_2 and SHX1_2
  end
  return SHX1_2
end
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = BeginTextCommandDisplayHelp
  SHX1_2 = "STRING"
  SHX0_2(SHX1_2)
  SHX0_2 = AddTextEntry
  SHX1_2 = "NHS_DRAG_HELP"
  SHX2_2 = "~INPUT_CELLPHONE_CANCEL~ Cancel dragging"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = AddTextComponentSubstringTextLabel
  SHX1_2 = "NHS_DRAG_HELP"
  SHX0_2(SHX1_2)
  SHX0_2 = EndTextCommandDisplayHelp
  SHX1_2 = 0
  SHX2_2 = false
  SHX3_2 = false
  SHX4_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX1_1
  if SHX0_2 > 0 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "1126c6bae9"
    SHX2_2 = SHX1_1
    SHX0_2(SHX1_2, SHX2_2)
  end
  SHX0_2 = ClearPedSecondaryTask
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2, SHX2_2 = SHX1_2()
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = false
  SHX0_1 = SHX0_2
  SHX0_2 = 0
  SHX1_1 = SHX0_2
end
SHX5_1 = 30000
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX1_2 = "combat@drag_ped@"
  SHX2_2 = "injured_drag_plyr"
  SHX3_2 = "injured_drag_ped"
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "ce85753545"
  SHX6_2 = 0
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX9_2 = SHX3_2
  SHX10_2 = 0.48
  SHX11_2 = 4103
  SHX12_2 = 0.0
  SHX13_2 = SHX0_2
  SHX14_2 = SHX5_1
  SHX15_2 = 0.0
  SHX16_2 = 33
  SHX17_2 = 33
  SHX18_2 = 1
  SHX19_2 = 1
  SHX20_2 = 11816
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX4_2 = true
  SHX0_1 = SHX4_2
  SHX1_1 = SHX0_2
  SHX4_2 = SetTimeout
  SHX5_2 = SHX5_1
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX0_1
    if SHX0_3 then
      SHX0_3 = SHX4_1
      SHX0_3()
    end
  end
  SHX4_2(SHX5_2, SHX6_2)
end
SHX7_1 = CMG
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "nhs.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 and SHX0_2 > 0 then
    SHX1_2 = SHX6_1
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
SHX7_1.startNhsDragFromRadial = SHX8_1
SHX7_1 = Citizen
SHX7_1 = SHX7_1.CreateThread
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  while true do
    SHX0_2 = IsDisabledControlPressed
    SHX1_2 = 1
    SHX2_2 = 19
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = IsDisabledControlPressed
      SHX1_2 = 1
      SHX2_2 = 63
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = SHX2_1
        SHX0_2 = SHX0_2()
        if SHX0_2 then
          SHX0_2 = SHX0_1
          if not SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.hasClientPermission
            SHX1_2 = "nhs.onduty.permission"
            SHX0_2 = SHX0_2(SHX1_2)
            if SHX0_2 then
              SHX0_2 = GetClosestPlayer
              SHX1_2 = 3
              SHX0_2 = SHX0_2(SHX1_2)
              if SHX0_2 then
                SHX1_2 = GetPlayerServerId
                SHX2_2 = SHX0_2
                SHX1_2 = SHX1_2(SHX2_2)
                if -1 ~= SHX1_2 and SHX1_2 > 0 then
                  SHX2_2 = SHX6_1
                  SHX3_2 = SHX1_2
                  SHX2_2(SHX3_2)
                end
              end
            end
          end
          SHX0_2 = Wait
          SHX1_2 = 250
          SHX0_2(SHX1_2)
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX7_1(SHX8_1)
SHX7_1 = CMG
SHX7_1 = SHX7_1.createThreadOnTick
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = SHX3_1
    SHX0_2()
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 202
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = IsDisabledControlJustPressed
      SHX1_2 = 0
      SHX2_2 = 177
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        goto SHX_LABEL_20
      end
    end
    SHX0_2 = SHX4_1
    SHX0_2()
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
end
SHX9_1 = "NHS Drag Prompt"
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = {}
SHX8_1 = {}
SHX8_1.model = "bandage2"
SHX8_1.bone = 28252
SHX9_1 = vector3
SHX10_1 = -0.23
SHX11_1 = -0.12
SHX12_1 = 0.09
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.pos = SHX9_1
SHX9_1 = vector3
SHX10_1 = 137.97
SHX11_1 = -34.49
SHX12_1 = 88.56
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.rot = SHX9_1
SHX8_1.propDelay = 500
SHX8_1.duration = 300000
SHX8_1.animDuration = 5000
SHX8_1.animFlag = 0
SHX7_1.barm = SHX8_1
SHX8_1 = {}
SHX8_1.model = "bandage"
SHX8_1.bone = 51826
SHX9_1 = vector3
SHX10_1 = 0.3
SHX11_1 = 0.01
SHX12_1 = 0.02
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.pos = SHX9_1
SHX9_1 = vector3
SHX10_1 = 2.96
SHX11_1 = -78.18
SHX12_1 = -136.04
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.rot = SHX9_1
SHX8_1.propDelay = 500
SHX8_1.duration = 300000
SHX8_1.animDuration = 5000
SHX8_1.animFlag = 0
SHX7_1.bleg = SHX8_1
SHX8_1 = {}
SHX8_1.model = "prop_cs_pills"
SHX8_1.bone = 4089
SHX9_1 = vector3
SHX10_1 = 0.02
SHX11_1 = -0.02
SHX12_1 = -0.02
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.pos = SHX9_1
SHX9_1 = vector3
SHX10_1 = -137.09
SHX11_1 = 13.69
SHX12_1 = -25.04
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.rot = SHX9_1
SHX8_1.propDelay = 100
SHX8_1.duration = 5000
SHX8_1.animFlag = 0
SHX7_1.pills = SHX8_1
SHX8_1 = {}
SHX8_1.model = "p_syringe_01_s"
SHX8_1.bone = 36029
SHX9_1 = vector3
SHX10_1 = 0.04
SHX11_1 = 0.04
SHX12_1 = 0.0
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.pos = SHX9_1
SHX9_1 = vector3
SHX10_1 = -90.44
SHX11_1 = 35.47
SHX12_1 = -16.02
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.rot = SHX9_1
SHX8_1.propDelay = 100
SHX8_1.duration = 5000
SHX8_1.animFlag = 0
SHX7_1.psyringe = SHX8_1
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX3_2 = GetHashKey
  SHX4_2 = SHX1_2.model
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadModel
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = HasModelLoaded
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = RequestModel
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
    SHX4_2 = 0
    while true do
      SHX5_2 = HasModelLoaded
      SHX6_2 = SHX3_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        break
      end
      SHX5_2 = 150
      if not (SHX4_2 < SHX5_2) then
        break
      end
      SHX5_2 = Wait
      SHX6_2 = 10
      SHX5_2(SHX6_2)
      SHX4_2 = SHX4_2 + 1
    end
  end
  SHX4_2 = HasModelLoaded
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = nil
    return SHX4_2
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerCoords
  SHX4_2 = SHX4_2()
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.requestEntitySpawn
  SHX6_2 = "emergency_pack_prop"
  SHX7_2 = SHX2_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = CreateObject
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX4_2.z
  SHX10_2 = true
  SHX11_2 = true
  SHX12_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  if SHX5_2 then
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      goto SHX_LABEL_64
    end
  end
  SHX6_2 = nil
  return SHX6_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
  ::SHX_LABEL_64::
  SHX6_2 = GetPedBoneIndex
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2.bone
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = AttachEntityToEntity
  SHX8_2 = SHX5_2
  SHX9_2 = SHX0_2
  SHX10_2 = SHX6_2
  SHX11_2 = SHX1_2.pos
  SHX11_2 = SHX11_2.x
  SHX12_2 = SHX1_2.pos
  SHX12_2 = SHX12_2.y
  SHX13_2 = SHX1_2.pos
  SHX13_2 = SHX13_2.z
  SHX14_2 = SHX1_2.rot
  SHX14_2 = SHX14_2.x
  SHX15_2 = SHX1_2.rot
  SHX15_2 = SHX15_2.y
  SHX16_2 = SHX1_2.rot
  SHX16_2 = SHX16_2.z
  SHX17_2 = true
  SHX18_2 = true
  SHX19_2 = false
  SHX20_2 = true
  SHX21_2 = 1
  SHX22_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX7_2 = SetEntityCollision
  SHX8_2 = SHX5_2
  SHX9_2 = false
  SHX10_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SetModelAsNoLongerNeeded
  SHX8_2 = SHX3_2
  SHX7_2(SHX8_2)
  return SHX5_2
end
function SHX9_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX7_1
  SHX5_2 = SHX5_2[SHX0_2]
  if SHX5_2 then
    SHX6_2 = SHX5_2.animFlag
    if SHX6_2 then
      goto SHX_LABEL_12
    end
  end
  SHX6_2 = 48
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.loadAnimDict
  SHX8_2 = SHX1_2
  SHX7_2(SHX8_2)
  SHX7_2 = TaskPlayAnim
  SHX8_2 = SHX4_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX11_2 = 2.0
  SHX12_2 = 2.0
  SHX13_2 = -1
  SHX14_2 = SHX6_2
  SHX15_2 = 1
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  if SHX3_2 then
    SHX7_2 = SendNUIMessage
    SHX8_2 = {}
    SHX8_2.transactionType = SHX3_2
    SHX7_2(SHX8_2)
  end
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.CreateThread
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = nil
    SHX1_3 = SHX5_2
    if SHX1_3 then
      SHX1_3 = Wait
      SHX2_3 = SHX5_2.propDelay
      SHX1_3(SHX2_3)
      SHX1_3 = SHX8_1
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.getPlayerPed
      SHX2_3 = SHX2_3()
      SHX3_3 = SHX5_2
      SHX4_3 = SHX0_2
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = SHX1_3
    end
    SHX1_3 = SHX5_2
    if SHX1_3 then
      SHX1_3 = SHX5_2.animDuration
      if SHX1_3 then
        goto SHX_LABEL_29
      end
    end
    SHX1_3 = SHX5_2
    if SHX1_3 then
      SHX1_3 = SHX5_2.duration
      if SHX1_3 then
        goto SHX_LABEL_29
      end
    end
    SHX1_3 = 2500
    -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
    ::SHX_LABEL_29::
    SHX2_3 = SHX5_2
    if SHX2_3 then
      SHX2_3 = SHX5_2.duration
      if SHX2_3 then
        goto SHX_LABEL_36
      end
    end
    SHX2_3 = 2500
    -- [FIX IF ERROR] Move ::SHX_LABEL_36:: outside nested blocks until all 'goto SHX_LABEL_36' can see it
    ::SHX_LABEL_36::
    SHX3_3 = Wait
    SHX4_3 = math
    SHX4_3 = SHX4_3.max
    SHX5_3 = 0
    SHX6_3 = SHX5_2
    if SHX6_3 then
      SHX6_3 = SHX5_2.propDelay
      if SHX6_3 then
        goto SHX_LABEL_47
      end
    end
    SHX6_3 = 0
    -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
    ::SHX_LABEL_47::
    SHX6_3 = SHX1_3 - SHX6_3
    SHX4_3, SHX5_3, SHX6_3 = SHX4_3(SHX5_3, SHX6_3)
    SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    SHX3_3 = ClearPedTasks
    SHX4_3 = CMG
    SHX4_3 = SHX4_3.getPlayerPed
    SHX4_3, SHX5_3, SHX6_3 = SHX4_3()
    SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    if SHX0_3 then
      SHX3_3 = DoesEntityExist
      SHX4_3 = SHX0_3
      SHX3_3 = SHX3_3(SHX4_3)
      if SHX3_3 and SHX1_3 < SHX2_3 then
        SHX3_3 = Citizen
        SHX3_3 = SHX3_3.CreateThread
        function SHX4_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4, SHX2_4, SHX3_4
          SHX0_4 = Wait
          SHX1_4 = SHX2_3
          SHX2_4 = SHX1_3
          SHX1_4 = SHX1_4 - SHX2_4
          SHX0_4(SHX1_4)
          SHX0_4 = SHX0_3
          if SHX0_4 then
            SHX0_4 = DoesEntityExist
            SHX1_4 = SHX0_3
            SHX0_4 = SHX0_4(SHX1_4)
            if SHX0_4 then
              SHX0_4 = DetachEntity
              SHX1_4 = SHX0_3
              SHX2_4 = false
              SHX3_4 = false
              SHX0_4(SHX1_4, SHX2_4, SHX3_4)
              SHX0_4 = DeleteEntity
              SHX1_4 = SHX0_3
              SHX0_4(SHX1_4)
            end
          end
        end
        SHX3_3(SHX4_3)
    end
    elseif SHX0_3 then
      SHX3_3 = DoesEntityExist
      SHX4_3 = SHX0_3
      SHX3_3 = SHX3_3(SHX4_3)
      if SHX3_3 then
        SHX3_3 = DetachEntity
        SHX4_3 = SHX0_3
        SHX5_3 = false
        SHX6_3 = false
        SHX3_3(SHX4_3, SHX5_3, SHX6_3)
        SHX3_3 = DeleteEntity
        SHX4_3 = SHX0_3
        SHX3_3(SHX4_3)
      end
    end
  end
  SHX7_2(SHX8_2)
end
SHX10_1 = RegisterNetEvent
SHX11_1 = "b14b321665"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if SHX0_2 then
    SHX2_2 = "barm"
    if SHX2_2 then
      goto SHX_LABEL_7
    end
  end
  SHX2_2 = "bleg"
  -- [FIX IF ERROR] Move ::SHX_LABEL_7:: outside nested blocks until all 'goto SHX_LABEL_7' can see it
  ::SHX_LABEL_7::
  if SHX0_2 then
    SHX3_2 = "emergency1@bandagearm@clip"
    if SHX3_2 then
      goto SHX_LABEL_13
    end
  end
  SHX3_2 = "emergency1@bandageleg@clip"
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  if SHX0_2 then
    SHX4_2 = "bandagearm_clip"
    if SHX4_2 then
      goto SHX_LABEL_19
    end
  end
  SHX4_2 = "bandageleg_clip"
  -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
  ::SHX_LABEL_19::
  SHX5_2 = SHX9_1
  SHX6_2 = SHX2_2
  SHX7_2 = SHX3_2
  SHX8_2 = SHX4_2
  SHX9_2 = "bandage"
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.CreateThread
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = Wait
    SHX1_3 = 5000
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.stopBleeding
    if SHX0_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.stopBleeding
      SHX0_3()
    end
  end
  SHX5_2(SHX6_2)
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "62acadffbf"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX9_1
  SHX1_2 = "psyringe"
  SHX2_2 = "emergency1@syringe@clip"
  SHX3_2 = "syringe_clip"
  SHX4_2 = "syringe"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "00393cdccd"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.type = "HEALTHSERVICE_LOBBY"
  SHX3_2 = SHX0_2 or SHX3_2
  if not SHX0_2 then
    SHX3_2 = {}
  end
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "f286a73897"
function SHX12_1(SHX0_2)
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
  SHX2_2.type = "HEALTHSERVICE_SEARCH_RESULT"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.players = SHX4_2
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "33567d9509"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" ~= SHX2_2 or "" == SHX1_2 then
    return
  end
  if SHX0_2 then
    SHX2_2 = "~g~"
    if SHX2_2 then
      goto SHX_LABEL_15
    end
  end
  SHX2_2 = "~r~"
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.notify
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX3_2(SHX4_2)
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = AddEventHandler
SHX11_1 = "a68d3374be"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientFaction
  SHX1_2 = SHX1_2()
  if "Health Service" == SHX1_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "38dbf567b8"
    SHX1_2(SHX2_2)
  end
end
SHX10_1(SHX11_1, SHX12_1)
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    return SHX0_2
  end
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" == SHX1_2 and "" ~= SHX0_2 then
    SHX1_2 = pcall
    SHX2_2 = json
    SHX2_2 = SHX2_2.decode
    SHX3_2 = SHX0_2
    SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX3_2 = type
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if "table" == SHX3_2 then
        return SHX2_2
      end
    end
  end
  SHX1_2 = nil
  return SHX1_2
end
SHX11_1 = CMG
SHX11_1 = SHX11_1.uiRegisterCallback
SHX12_1 = "healthServiceRequestLobbySync"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "38dbf567b8"
  SHX0_2(SHX1_2)
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = CMG
SHX11_1 = SHX11_1.uiRegisterCallback
SHX12_1 = "healthServiceSearchPlayers"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX10_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.query
  end
  SHX3_2 = type
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "string" == SHX3_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "744baa038a"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = CMG
SHX11_1 = SHX11_1.uiRegisterCallback
SHX12_1 = "healthServiceInvitePlayer"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX10_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.userId
    if not SHX2_2 then
      SHX2_2 = SHX1_2.user_id
    end
  end
  if nil ~= SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "ca8c92d54d"
    SHX5_2 = tonumber
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = SHX2_2
    end
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = CMG
SHX11_1 = SHX11_1.uiRegisterCallback
SHX12_1 = "healthServiceCancelInvite"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX10_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.userId
    if not SHX2_2 then
      SHX2_2 = SHX1_2.user_id
    end
  end
  if nil ~= SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "75bddd9d94"
    SHX5_2 = tonumber
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = SHX2_2
    end
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = CMG
SHX11_1 = SHX11_1.uiRegisterCallback
SHX12_1 = "healthServiceAcceptInvite"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX10_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.leaderUserId
  end
  if nil ~= SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "8145d623f2"
    SHX5_2 = tonumber
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = SHX2_2
    end
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = CMG
SHX11_1 = SHX11_1.uiRegisterCallback
SHX12_1 = "healthServiceDeclineInvite"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX10_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.leaderUserId
  end
  if nil ~= SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "784b3c6e6d"
    SHX5_2 = tonumber
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = SHX2_2
    end
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = CMG
SHX11_1 = SHX11_1.uiRegisterCallback
SHX12_1 = "healthServiceKickMember"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX10_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.userId
    if not SHX2_2 then
      SHX2_2 = SHX1_2.user_id
    end
  end
  if nil ~= SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "ebd55de808"
    SHX5_2 = tonumber
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = SHX2_2
    end
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = CMG
SHX11_1 = SHX11_1.uiRegisterCallback
SHX12_1 = "healthServiceLeaveLobby"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "1e38696858"
  SHX0_2(SHX1_2)
end
SHX11_1(SHX12_1, SHX13_1)
