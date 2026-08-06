-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_forcedequipment"
SHX0_1 = SHX0_1(SHX1_1)
SHX0_1 = SHX0_1.types
SHX0_1 = SHX0_1.crutches
SHX0_1 = SHX0_1.defaultDurationSeconds
SHX1_1 = {}
SHX1_1.disableSprint = true
SHX1_1.disableWeapons = true
SHX1_1.crutchModel = 1702952751
SHX1_1.clipSet = "move_lester_CaneUp"
SHX2_1 = false
SHX3_1 = nil
SHX4_1 = -1569615261
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX3_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      goto SHX_LABEL_10
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX0_2 = NetworkGetNetworkIdFromEntity
  SHX1_2 = SHX3_1
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "ce24d993d8"
    SHX3_2 = "crutch"
    SHX4_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  else
    SHX1_2 = CreateThread
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      SHX0_3 = Wait
      SHX1_3 = 100
      SHX0_3(SHX1_3)
      SHX0_3 = SHX3_1
      if SHX0_3 then
        SHX0_3 = DoesEntityExist
        SHX1_3 = SHX3_1
        SHX0_3 = SHX0_3(SHX1_3)
        if SHX0_3 then
          SHX0_3 = NetworkGetNetworkIdFromEntity
          SHX1_3 = SHX3_1
          SHX0_3 = SHX0_3(SHX1_3)
          SHX0_2 = SHX0_3
          SHX0_3 = SHX0_2
          if SHX0_3 then
            SHX0_3 = SHX0_2
            if 0 ~= SHX0_3 then
              SHX0_3 = TriggerServerEvent
              SHX1_3 = "ce24d993d8"
              SHX2_3 = "crutch"
              SHX3_3 = SHX0_2
              SHX0_3(SHX1_3, SHX2_3, SHX3_3)
            end
          end
        end
      end
    end
    SHX1_2(SHX2_2)
  end
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.requestEntitySpawn
  SHX3_2 = "crutch"
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = SHX1_1.crutchModel
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX3_2 = CreateObject
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_1 = SHX3_2
  SHX3_2 = AttachEntityToEntity
  SHX4_2 = SHX3_1
  SHX5_2 = SHX0_2
  SHX6_2 = 70
  SHX7_2 = 1.18
  SHX8_2 = -0.36
  SHX9_2 = -0.2
  SHX10_2 = -20.0
  SHX11_2 = -87.0
  SHX12_2 = -20.0
  SHX13_2 = true
  SHX14_2 = true
  SHX15_2 = false
  SHX16_2 = true
  SHX17_2 = 1
  SHX18_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX3_2 = SetModelAsNoLongerNeeded
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = SHX5_1
  SHX3_2()
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetCurrentPedWeapon
  SHX2_2 = SHX0_2
  SHX3_2 = 0
  SHX4_2 = false
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  if SHX1_2 then
    SHX3_2 = false
    SHX4_2 = "You can't use a crutch while having a weapon out!"
    return SHX3_2, SHX4_2
  else
    SHX3_2 = IsPedInAnyVehicle
    SHX4_2 = SHX0_2
    SHX5_2 = false
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX3_2 = false
      SHX4_2 = "You can't use a crutch while in a vehicle!"
      return SHX3_2, SHX4_2
    else
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX3_2 = false
        SHX4_2 = "You can't use a crutch while dead!"
        return SHX3_2, SHX4_2
      else
        SHX3_2 = IsPedInMeleeCombat
        SHX4_2 = SHX0_2
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 then
          SHX3_2 = false
          SHX4_2 = "You can't use a crutch while in combat!"
          return SHX3_2, SHX4_2
        else
          SHX3_2 = IsPedFalling
          SHX4_2 = SHX0_2
          SHX3_2 = SHX3_2(SHX4_2)
          if SHX3_2 then
            SHX3_2 = false
            SHX4_2 = "You can't use a crutch while falling!"
            return SHX3_2, SHX4_2
          else
            SHX3_2 = IsPedRagdoll
            SHX4_2 = SHX0_2
            SHX3_2 = SHX3_2(SHX4_2)
            if SHX3_2 then
              SHX3_2 = false
              SHX4_2 = "You can't use a crutch while in ragdoll!"
              return SHX3_2, SHX4_2
            end
          end
        end
      end
    end
  end
  SHX3_2 = true
  return SHX3_2
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX3_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = DeleteEntity
      SHX1_2 = SHX3_1
      SHX0_2(SHX1_2)
      SHX0_2 = nil
      SHX3_1 = SHX0_2
    end
  end
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "607b2e0073"
  SHX2_2 = "crutch"
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX8_1
  SHX0_2()
  SHX0_2 = false
  SHX2_1 = SHX0_2
  SHX0_2 = SHX1_1.disableSprint
  if SHX0_2 then
    SHX0_2 = SetPlayerSprint
    SHX1_2 = PlayerId
    SHX1_2 = SHX1_2()
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
  end
  SHX0_2 = ResetPedMovementClipset
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = 1.0
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX2_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = IsEntityDead
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = IsPedInAnyVehicle
      SHX2_2 = SHX0_2
      SHX3_2 = false
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if not SHX1_2 then
        goto SHX_LABEL_22
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  SHX1_2 = HasClipSetLoaded
  SHX2_2 = SHX1_1.clipSet
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = RequestClipSet
    SHX2_2 = SHX1_1.clipSet
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = SetPedMovementClipset
  SHX2_2 = SHX0_2
  SHX3_2 = SHX1_1.clipSet
  SHX4_2 = 1.0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX10_1
  SHX0_2()
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX2_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX10_1
      SHX0_3()
      SHX0_3 = Wait
      SHX1_3 = 100
      SHX0_3(SHX1_3)
    end
  end
  SHX0_2(SHX1_2)
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    while true do
      SHX0_3 = SHX2_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.getPlayerPed
      SHX0_3 = SHX0_3()
      SHX1_3 = SetPedCanPlayAmbientAnims
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
      if 0 ~= SHX0_3 then
        SHX1_3 = IsPedInAnyVehicle
        SHX2_3 = SHX0_3
        SHX3_3 = false
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if not SHX1_3 then
          SHX1_3 = DisableControlAction
          SHX2_3 = 0
          SHX3_3 = 22
          SHX4_3 = true
          SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        end
      end
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
  end
  SHX0_2(SHX1_2)
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = nil
    SHX1_3 = 0
    while true do
      SHX2_3 = Wait
      SHX3_3 = 250
      SHX2_3(SHX3_3)
      SHX2_3 = SHX2_1
      if not SHX2_3 then
        break
      end
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.getPlayerPed
      SHX2_3 = SHX2_3()
      SHX0_3 = SHX2_3
      SHX2_3 = false
      SHX3_3 = GetCurrentPedWeapon
      SHX4_3 = SHX0_3
      SHX5_3 = 0
      SHX6_3 = false
      SHX3_3, SHX4_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      if SHX3_3 then
        SHX5_3 = SHX1_1.disableWeapons
        if SHX5_3 then
          SHX5_3 = SetCurrentPedWeapon
          SHX6_3 = SHX0_3
          SHX7_3 = SHX4_1
          SHX8_3 = true
          SHX5_3(SHX6_3, SHX7_3, SHX8_3)
        elseif not SHX2_3 then
          SHX2_3 = true
          SHX5_3 = SHX8_1
          SHX5_3()
        end
      else
        SHX5_3 = IsPedInAnyVehicle
        SHX6_3 = SHX0_3
        SHX7_3 = true
        SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
        if SHX5_3 then
          if not SHX2_3 then
            SHX2_3 = true
            SHX5_3 = SHX8_1
            SHX5_3()
          end
        else
          SHX5_3 = SHX3_1
          if SHX5_3 then
            SHX5_3 = DoesEntityExist
            SHX6_3 = SHX3_1
            SHX5_3 = SHX5_3(SHX6_3)
            if SHX5_3 then
              goto SHX_LABEL_63
            end
          end
          SHX5_3 = Wait
          SHX6_3 = 750
          SHX5_3(SHX6_3)
          SHX5_3 = SHX6_1
          SHX5_3()
          SHX2_3 = false
          goto SHX_LABEL_122
          -- [FIX IF ERROR] Move ::SHX_LABEL_63:: outside nested blocks until all 'goto SHX_LABEL_63' can see it
          ::SHX_LABEL_63::
          SHX5_3 = IsEntityAttachedToEntity
          SHX6_3 = SHX3_1
          SHX7_3 = SHX0_3
          SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
          if not SHX5_3 then
            SHX5_3 = SHX8_1
            SHX5_3()
          else
            SHX5_3 = IsPedRagdoll
            SHX6_3 = SHX0_3
            SHX5_3 = SHX5_3(SHX6_3)
            if not SHX5_3 then
              SHX5_3 = IsEntityDead
              SHX6_3 = SHX0_3
              SHX5_3 = SHX5_3(SHX6_3)
              if not SHX5_3 then
                goto SHX_LABEL_88
              end
            end
            SHX5_3 = DetachEntity
            SHX6_3 = SHX3_1
            SHX7_3 = true
            SHX8_3 = true
            SHX5_3(SHX6_3, SHX7_3, SHX8_3)
            goto SHX_LABEL_122
            -- [FIX IF ERROR] Move ::SHX_LABEL_88:: outside nested blocks until all 'goto SHX_LABEL_88' can see it
            ::SHX_LABEL_88::
            SHX5_3 = IsPedInMeleeCombat
            SHX6_3 = SHX0_3
            SHX5_3 = SHX5_3(SHX6_3)
            if SHX5_3 then
              SHX5_3 = Wait
              SHX6_3 = 500
              SHX5_3(SHX6_3)
              SHX5_3 = DetachEntity
              SHX6_3 = SHX3_1
              SHX7_3 = true
              SHX8_3 = true
              SHX5_3(SHX6_3, SHX7_3, SHX8_3)
            else
              SHX5_3 = IsPedFalling
              SHX6_3 = SHX0_3
              SHX5_3 = SHX5_3(SHX6_3)
              if SHX5_3 then
                SHX1_3 = SHX1_3 + 1
                if SHX1_3 > 3 then
                  SHX5_3 = DetachEntity
                  SHX6_3 = SHX3_1
                  SHX7_3 = true
                  SHX8_3 = true
                  SHX5_3(SHX6_3, SHX7_3, SHX8_3)
                  SHX1_3 = 0
                end
              elseif SHX1_3 > 0 then
                SHX1_3 = SHX1_3 - 1
              end
            end
          end
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_122:: outside nested blocks until all 'goto SHX_LABEL_122' can see it
      ::SHX_LABEL_122::
    end
  end
  SHX0_2(SHX1_2)
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX7_1
  SHX1_2, SHX2_2 = SHX1_2()
  if not SHX1_2 then
    SHX3_2 = notify
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = RequestClipSet
  SHX4_2 = SHX1_1.clipSet
  SHX3_2(SHX4_2)
  while true do
    SHX3_2 = HasClipSetLoaded
    SHX4_2 = SHX1_1.clipSet
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 10
    SHX3_2(SHX4_2)
  end
  SHX3_2 = SetPedMovementClipset
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_1.clipSet
  SHX6_2 = 1.0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = RemoveClipSet
  SHX4_2 = SHX1_1.clipSet
  SHX3_2(SHX4_2)
  SHX3_2 = SHX6_1
  SHX3_2()
  SHX3_2 = true
  SHX2_1 = SHX3_2
  SHX3_2 = SHX1_1.disableSprint
  if SHX3_2 then
    SHX3_2 = SetPlayerSprint
    SHX4_2 = PlayerId
    SHX4_2 = SHX4_2()
    SHX5_2 = false
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SHX13_1
  SHX3_2()
  SHX3_2 = SHX14_1
  SHX3_2()
  SHX3_2 = SHX12_1
  SHX3_2()
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = SHX9_1
    SHX0_2()
  end
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "895f60bda9"
  SHX2_2 = "crutches"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX17_1 = CMG
SHX17_1 = SHX17_1.RegisterClientCallback
SHX18_1 = "e6ffab8f7e"
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  return SHX0_2
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = RegisterNetEvent
SHX18_1 = "4dc930f97a"
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = SHX9_1
    SHX0_2()
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.removeForcedEquipment
  SHX1_2 = "Crutches"
  SHX0_2(SHX1_2)
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = RegisterNetEvent
SHX18_1 = "0e124fc408"
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX2_1
  if not SHX1_2 then
    SHX1_2 = SHX15_1
    SHX1_2()
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.addForcedEquipment
  SHX2_2 = "Crutches"
  SHX3_2 = SHX0_2 or SHX3_2
  if nil == SHX0_2 or not SHX0_2 then
    SHX3_2 = SHX0_1
  end
  SHX4_2 = SHX16_1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = AddEventHandler
SHX18_1 = "865ab191af"
SHX19_1 = SHX11_1
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = AddEventHandler
SHX18_1 = "cd58811ed9"
SHX19_1 = SHX11_1
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = AddEventHandler
SHX18_1 = "onResourceStop"
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 ~= SHX1_2 then
    return
  end
  SHX1_2 = SHX2_1
  if SHX1_2 then
    SHX1_2 = SHX9_1
    SHX1_2()
  end
end
SHX17_1(SHX18_1, SHX19_1)
