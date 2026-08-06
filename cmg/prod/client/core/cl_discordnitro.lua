-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1
SHX0_1 = GetGameTimer
SHX0_1 = SHX0_1()
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = IsEntityInWater
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  return SHX0_2(SHX1_2)
end
SHX2_1 = RegisterNetEvent
SHX3_1 = "739ff0bbbe"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.isInComa
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isHandcuffed
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isInsideDiamondCasino
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.isPlayerNearPrison
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          SHX0_2 = GetTimeDifference
          SHX1_2 = GetGameTimer
          SHX1_2 = SHX1_2()
          SHX2_2 = SHX0_1
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          SHX1_2 = 10000
          if SHX0_2 > SHX1_2 then
            SHX0_2 = SHX1_1
            SHX0_2 = SHX0_2()
            if SHX0_2 then
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~r~You cannot craft a BMX while in the water."
              SHX0_2(SHX1_2)
              return
            end
            SHX0_2 = IsPedInAnyVehicle
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.getPlayerPed
            SHX1_2 = SHX1_2()
            SHX2_2 = false
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
            if SHX0_2 then
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~r~You cannot craft a BMX while in a vehicle."
              SHX0_2(SHX1_2)
              return
            end
            SHX0_2 = GetGameTimer
            SHX0_2 = SHX0_2()
            SHX0_1 = SHX0_2
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~g~Crafting a BMX"
            SHX0_2(SHX1_2)
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.getPlayerPed
            SHX0_2 = SHX0_2()
            SHX1_2 = TaskStartScenarioInPlace
            SHX2_2 = SHX0_2
            SHX3_2 = "WORLD_HUMAN_HAMMERING"
            SHX4_2 = 0
            SHX5_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
            SHX1_2 = Wait
            SHX2_2 = 5000
            SHX1_2(SHX2_2)
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.inOrganHesit
            SHX1_2 = SHX1_2()
            if not SHX1_2 then
              SHX1_2 = SHX1_1
              SHX1_2 = SHX1_2()
              if SHX1_2 then
                SHX1_2 = ClearPedTasksImmediately
                SHX2_2 = SHX0_2
                SHX1_2(SHX2_2)
                SHX1_2 = tCMG
                SHX1_2 = SHX1_2.notify
                SHX2_2 = "~r~You cannot craft a BMX while in the water."
                SHX1_2(SHX2_2)
                return
              end
              SHX1_2 = IsPedInAnyVehicle
              SHX2_2 = SHX0_2
              SHX3_2 = false
              SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
              if SHX1_2 then
                SHX1_2 = ClearPedTasksImmediately
                SHX2_2 = SHX0_2
                SHX1_2(SHX2_2)
                SHX1_2 = tCMG
                SHX1_2 = SHX1_2.notify
                SHX2_2 = "~r~You cannot craft a BMX while in a vehicle."
                SHX1_2(SHX2_2)
                return
              end
              SHX1_2 = ClearPedTasksImmediately
              SHX2_2 = SHX0_2
              SHX1_2(SHX2_2)
              SHX1_2 = GetEntityCoords
              SHX2_2 = SHX0_2
              SHX1_2 = SHX1_2(SHX2_2)
              SHX2_2 = CMG
              SHX2_2 = SHX2_2.requestEntitySpawn
              SHX3_2 = "bmx"
              SHX2_2(SHX3_2)
              SHX2_2 = CMG
              SHX2_2 = SHX2_2.spawnVehicle
              SHX3_2 = 1131912276
              SHX4_2 = SHX1_2.x
              SHX5_2 = SHX1_2.y
              SHX6_2 = SHX1_2.z
              SHX7_2 = GetEntityHeading
              SHX8_2 = SHX0_2
              SHX7_2 = SHX7_2(SHX8_2)
              SHX8_2 = true
              SHX9_2 = true
              SHX10_2 = true
              SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
            end
          else
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~Nitro BMX cooldown, please wait."
            SHX0_2(SHX1_2)
          end
      end
    end
  end
  else
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "~r~Cannot craft a BMX right now."
    SHX0_2(SHX1_2)
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "c185d91d8b"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.isInComa
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isHandcuffed
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isInsideDiamondCasino
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.isPlayerNearPrison
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          SHX0_2 = GetTimeDifference
          SHX1_2 = GetGameTimer
          SHX1_2 = SHX1_2()
          SHX2_2 = SHX0_1
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          SHX1_2 = 10000
          if SHX0_2 > SHX1_2 then
            SHX0_2 = SHX1_1
            SHX0_2 = SHX0_2()
            if SHX0_2 then
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~r~You cannot craft a moped while in the water."
              SHX0_2(SHX1_2)
              return
            end
            SHX0_2 = IsPedInAnyVehicle
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.getPlayerPed
            SHX1_2 = SHX1_2()
            SHX2_2 = false
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
            if SHX0_2 then
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~r~You cannot craft a moped while in a vehicle."
              SHX0_2(SHX1_2)
              return
            end
            SHX0_2 = GetGameTimer
            SHX0_2 = SHX0_2()
            SHX0_1 = SHX0_2
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~g~Crafting a Moped"
            SHX0_2(SHX1_2)
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.getPlayerPed
            SHX0_2 = SHX0_2()
            SHX1_2 = TaskStartScenarioInPlace
            SHX2_2 = SHX0_2
            SHX3_2 = "WORLD_HUMAN_HAMMERING"
            SHX4_2 = 0
            SHX5_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
            SHX1_2 = Wait
            SHX2_2 = 5000
            SHX1_2(SHX2_2)
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.inOrganHesit
            SHX1_2 = SHX1_2()
            if not SHX1_2 then
              SHX1_2 = SHX1_1
              SHX1_2 = SHX1_2()
              if SHX1_2 then
                SHX1_2 = ClearPedTasksImmediately
                SHX2_2 = SHX0_2
                SHX1_2(SHX2_2)
                SHX1_2 = tCMG
                SHX1_2 = SHX1_2.notify
                SHX2_2 = "~r~You cannot craft a moped while in the water."
                SHX1_2(SHX2_2)
                return
              end
              SHX1_2 = IsPedInAnyVehicle
              SHX2_2 = SHX0_2
              SHX3_2 = false
              SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
              if SHX1_2 then
                SHX1_2 = ClearPedTasksImmediately
                SHX2_2 = SHX0_2
                SHX1_2(SHX2_2)
                SHX1_2 = tCMG
                SHX1_2 = SHX1_2.notify
                SHX2_2 = "~r~You cannot craft a moped while in a vehicle."
                SHX1_2(SHX2_2)
                return
              end
              SHX1_2 = ClearPedTasksImmediately
              SHX2_2 = SHX0_2
              SHX1_2(SHX2_2)
              SHX1_2 = GetEntityCoords
              SHX2_2 = SHX0_2
              SHX1_2 = SHX1_2(SHX2_2)
              SHX2_2 = CMG
              SHX2_2 = SHX2_2.requestEntitySpawn
              SHX3_2 = "moped"
              SHX2_2(SHX3_2)
              SHX2_2 = CMG
              SHX2_2 = SHX2_2.spawnVehicle
              SHX3_2 = -1842748181
              SHX4_2 = SHX1_2.x
              SHX5_2 = SHX1_2.y
              SHX6_2 = SHX1_2.z
              SHX7_2 = GetEntityHeading
              SHX8_2 = SHX0_2
              SHX7_2 = SHX7_2(SHX8_2)
              SHX8_2 = true
              SHX9_2 = true
              SHX10_2 = true
              SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
            end
          else
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~Nitro BMX cooldown, please wait."
            SHX0_2(SHX1_2)
          end
      end
    end
  end
  else
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "~r~Cannot craft a BMX right now."
    SHX0_2(SHX1_2)
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterCommand
SHX3_1 = "unicycle"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "unicycle.whitelisted"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.isInComa
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isHandcuffed
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.isInsideDiamondCasino
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.isPlayerNearPrison
          SHX0_2 = SHX0_2()
          if not SHX0_2 then
            SHX0_2 = GetTimeDifference
            SHX1_2 = GetGameTimer
            SHX1_2 = SHX1_2()
            SHX2_2 = SHX0_1
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
            SHX1_2 = 10000
            if SHX0_2 > SHX1_2 then
              SHX0_2 = GetGameTimer
              SHX0_2 = SHX0_2()
              SHX0_1 = SHX0_2
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~g~Crafting a Unicycle"
              SHX0_2(SHX1_2)
              SHX0_2 = CMG
              SHX0_2 = SHX0_2.getPlayerPed
              SHX0_2 = SHX0_2()
              SHX1_2 = TaskStartScenarioInPlace
              SHX2_2 = SHX0_2
              SHX3_2 = "WORLD_HUMAN_HAMMERING"
              SHX4_2 = 0
              SHX5_2 = true
              SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
              SHX1_2 = Wait
              SHX2_2 = 5000
              SHX1_2(SHX2_2)
              SHX1_2 = ClearPedTasksImmediately
              SHX2_2 = SHX0_2
              SHX1_2(SHX2_2)
              SHX1_2 = GetEntityCoords
              SHX2_2 = SHX0_2
              SHX1_2 = SHX1_2(SHX2_2)
              SHX2_2 = CMG
              SHX2_2 = SHX2_2.loadModel
              SHX3_2 = 769320387
              SHX2_2 = SHX2_2(SHX3_2)
              if SHX2_2 then
                SHX3_2 = CMG
                SHX3_2 = SHX3_2.requestEntitySpawn
                SHX4_2 = "unicycle"
                SHX3_2(SHX4_2)
                SHX3_2 = CreateVehicle
                SHX4_2 = SHX2_2
                SHX5_2 = SHX1_2.x
                SHX6_2 = SHX1_2.y
                SHX7_2 = SHX1_2.z
                SHX8_2 = GetEntityHeading
                SHX9_2 = SHX0_2
                SHX8_2 = SHX8_2(SHX9_2)
                SHX9_2 = true
                SHX10_2 = false
                SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
                SHX4_2 = CMG
                SHX4_2 = SHX4_2.initLocalVehicle
                SHX5_2 = SHX3_2
                SHX4_2(SHX5_2)
                SHX4_2 = SetVehicleOnGroundProperly
                SHX5_2 = SHX3_2
                SHX4_2(SHX5_2)
                SHX4_2 = SetEntityInvincible
                SHX5_2 = SHX3_2
                SHX6_2 = false
                SHX4_2(SHX5_2, SHX6_2)
                SHX4_2 = SetPedIntoVehicle
                SHX5_2 = SHX0_2
                SHX6_2 = SHX3_2
                SHX7_2 = -1
                SHX4_2(SHX5_2, SHX6_2, SHX7_2)
                SHX4_2 = SetModelAsNoLongerNeeded
                SHX5_2 = SHX2_2
                SHX4_2(SHX5_2)
              end
            else
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~r~Unicycle cooldown, please wait."
              SHX0_2(SHX1_2)
            end
        end
      end
    end
    else
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.notify
      SHX1_2 = "~r~Cannot craft a Unicycle right now."
      SHX0_2(SHX1_2)
    end
  end
end
SHX5_1 = false
SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX2_1 = RegisterCommand
SHX3_1 = "skate"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "skate.whitelisted"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.isInComa
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isHandcuffed
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.isInsideDiamondCasino
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.isPlayerNearPrison
          SHX0_2 = SHX0_2()
          if not SHX0_2 then
            SHX0_2 = GetTimeDifference
            SHX1_2 = GetGameTimer
            SHX1_2 = SHX1_2()
            SHX2_2 = SHX0_1
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
            SHX1_2 = 10000
            if SHX0_2 > SHX1_2 then
              SHX0_2 = GetGameTimer
              SHX0_2 = SHX0_2()
              SHX0_1 = SHX0_2
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~g~Crafting a Skateboard"
              SHX0_2(SHX1_2)
              SHX0_2 = CMG
              SHX0_2 = SHX0_2.getPlayerPed
              SHX0_2 = SHX0_2()
              SHX1_2 = TaskStartScenarioInPlace
              SHX2_2 = SHX0_2
              SHX3_2 = "WORLD_HUMAN_HAMMERING"
              SHX4_2 = 0
              SHX5_2 = true
              SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
              SHX1_2 = Wait
              SHX2_2 = 5000
              SHX1_2(SHX2_2)
              SHX1_2 = ClearPedTasksImmediately
              SHX2_2 = SHX0_2
              SHX1_2(SHX2_2)
              SHX1_2 = GetEntityCoords
              SHX2_2 = SHX0_2
              SHX1_2 = SHX1_2(SHX2_2)
              SHX2_2 = CMG
              SHX2_2 = SHX2_2.loadModel
              SHX3_2 = 1958479196
              SHX2_2 = SHX2_2(SHX3_2)
              if SHX2_2 then
                SHX3_2 = CMG
                SHX3_2 = SHX3_2.requestEntitySpawn
                SHX4_2 = "skate"
                SHX3_2(SHX4_2)
                SHX3_2 = CreateVehicle
                SHX4_2 = SHX2_2
                SHX5_2 = SHX1_2.x
                SHX6_2 = SHX1_2.y
                SHX7_2 = SHX1_2.z
                SHX8_2 = GetEntityHeading
                SHX9_2 = SHX0_2
                SHX8_2 = SHX8_2(SHX9_2)
                SHX9_2 = true
                SHX10_2 = false
                SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
                SHX4_2 = CMG
                SHX4_2 = SHX4_2.initLocalVehicle
                SHX5_2 = SHX3_2
                SHX4_2(SHX5_2)
                SHX4_2 = SetVehicleOnGroundProperly
                SHX5_2 = SHX3_2
                SHX4_2(SHX5_2)
                SHX4_2 = SetEntityInvincible
                SHX5_2 = SHX3_2
                SHX6_2 = false
                SHX4_2(SHX5_2, SHX6_2)
                SHX4_2 = SetPedIntoVehicle
                SHX5_2 = SHX0_2
                SHX6_2 = SHX3_2
                SHX7_2 = -1
                SHX4_2(SHX5_2, SHX6_2, SHX7_2)
                SHX4_2 = SetModelAsNoLongerNeeded
                SHX5_2 = SHX2_2
                SHX4_2(SHX5_2)
              end
            else
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~r~Skateboard cooldown, please wait."
              SHX0_2(SHX1_2)
            end
        end
      end
    end
    else
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.notify
      SHX1_2 = "~r~Cannot craft a Skateboard right now."
      SHX0_2(SHX1_2)
    end
  end
end
SHX5_1 = false
SHX2_1(SHX3_1, SHX4_1, SHX5_1)
