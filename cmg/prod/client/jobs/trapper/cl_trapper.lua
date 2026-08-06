-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1, SHX113_1, SHX114_1, SHX115_1, SHX116_1, SHX117_1, SHX118_1, SHX119_1, SHX120_1, SHX121_1, SHX122_1, SHX123_1, SHX124_1, SHX125_1, SHX126_1, SHX127_1, SHX128_1, SHX129_1, SHX130_1, SHX131_1, SHX132_1, SHX133_1, SHX134_1, SHX135_1, SHX136_1, SHX137_1, SHX138_1, SHX139_1, SHX140_1, SHX141_1, SHX142_1, SHX143_1, SHX144_1, SHX145_1, SHX146_1, SHX147_1, SHX148_1, SHX149_1, SHX150_1, SHX151_1, SHX152_1, SHX153_1, SHX154_1, SHX155_1, SHX156_1, SHX157_1, SHX158_1, SHX159_1, SHX160_1, SHX161_1, SHX162_1, SHX163_1, SHX164_1, SHX165_1, SHX166_1, SHX167_1, SHX168_1, SHX169_1, SHX170_1, SHX171_1, SHX172_1, SHX173_1, SHX174_1, SHX175_1, SHX176_1, SHX177_1, SHX178_1, SHX179_1, SHX180_1, SHX181_1, SHX182_1, SHX183_1, SHX184_1, SHX185_1, SHX186_1, SHX187_1, SHX188_1, SHX189_1, SHX190_1, SHX191_1, SHX192_1, SHX193_1, SHX194_1, SHX195_1, SHX196_1, SHX197_1, SHX198_1, SHX199_1, SHX200_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_trapper"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.getTrapperCore
SHX1_1 = SHX1_1()
SHX1_1.cfg = SHX0_1
SHX2_1 = {}
SHX3_1 = {}
SHX3_1.active = false
SHX3_1.sessionMode = "trim"
SHX3_1.chair = nil
SHX3_1.plantId = nil
SHX3_1.warehouseId = nil
SHX3_1.phase = "idle"
SHX3_1.cam = nil
SHX3_1.unprocessedTray = nil
SHX3_1.processedTray = nil
SHX4_1 = {}
SHX3_1.remainingPurities = SHX4_1
SHX4_1 = {}
SHX3_1.slots = SHX4_1
SHX4_1 = {}
SHX3_1.leaves = SHX4_1
SHX4_1 = {}
SHX3_1.leavesFallen = SHX4_1
SHX3_1.activeBudEnt = nil
SHX4_1 = {}
SHX3_1.processedEntities = SHX4_1
SHX3_1.shouldExit = false
SHX3_1.tableBudPurity = nil
SHX4_1 = {}
SHX3_1.bagRemainingPurities = SHX4_1
SHX4_1 = {}
SHX3_1.bagBudSlots = SHX4_1
SHX3_1.emptyBagsRemaining = 0
SHX4_1 = {}
SHX3_1.emptyBagEnts = SHX4_1
SHX3_1.pendingBagBudEnt = nil
SHX3_1.pendingBagBudPurity = nil
SHX3_1.pendingEmptyBagEnt = nil
SHX1_1.weedFp = SHX3_1
SHX4_1 = false
SHX5_1 = {}
SHX6_1 = {}
SHX5_1.warehousesOwned = SHX6_1
SHX6_1 = {}
SHX5_1.warehouseKeys = SHX6_1
SHX6_1 = false
SHX7_1 = 200.0
SHX8_1 = "trapper_warehouse_exit_area"
SHX9_1 = "trapper_warehouse_exit_prop"
SHX10_1 = {}
SHX11_1 = {}
SHX10_1.entranceMarkers = SHX11_1
SHX11_1 = {}
SHX10_1.entranceAreas = SHX11_1
SHX11_1 = {}
SHX10_1.entranceBlips = SHX11_1
SHX11_1 = {}
SHX10_1.areas = SHX11_1
SHX10_1.shellObject = nil
SHX10_1.lastUsedWarehouseId = nil
SHX11_1 = {}
SHX10_1.objects = SHX11_1
SHX10_1.warehouseLoadInProgress = false
SHX10_1.warehouseShellAnchor = nil
SHX11_1 = RegisterNetEvent
SHX12_1 = "e3a2b4bde0"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_1.jobName
  if SHX0_2 == SHX1_2 then
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
    SHX2_2 = SHX0_1.jobName
    SHX3_2 = "Press F6 to get started"
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SetNewWaypoint
    SHX2_2 = SHX0_1.jobStart
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX0_1.jobStart
    SHX3_2 = SHX3_2.y
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.inTrappingWarehouse
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = SHX10_1.warehouseLoadInProgress
    if not SHX1_2 then
      goto SHX_LABEL_13
    end
  end
  SHX1_2 = notify
  SHX2_2 = "~r~You are already inside a warehouse."
  SHX1_2(SHX2_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCombatTimer
  SHX1_2 = SHX1_2()
  if SHX1_2 > 0 then
    SHX2_2 = notify
    SHX3_2 = "~r~You can not enter a warehouse with a combat timer."
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "ae47027072"
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX0_1.warehouses
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = SHX0_1.warehouseLocations
  SHX4_2 = SHX2_2.locationSize
  SHX3_2 = SHX3_2[SHX4_2]
  SHX3_2 = SHX3_2[SHX1_2]
  SHX4_2 = SHX3_2
  SHX5_2 = SHX3_2
  SHX6_2 = SHX4_2
  return SHX5_2, SHX6_2
end
function SHX13_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = SHX0_1.warehouses
  SHX4_2 = SHX1_2.warehouseName
  SHX3_2 = SHX3_2[SHX4_2]
  if SHX3_2 then
    SHX4_2 = SHX3_2.name
    if SHX4_2 then
      goto SHX_LABEL_10
    end
  end
  SHX4_2 = SHX1_2.warehouseName
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  if SHX2_2 then
    SHX5_2 = SHX4_2
    SHX6_2 = " (Mine)"
    SHX5_2 = SHX5_2 .. SHX6_2
    return SHX5_2
  end
  SHX5_2 = SHX1_2.ownerName
  if SHX5_2 then
    SHX5_2 = SHX1_2.ownerName
    if "" ~= SHX5_2 then
      SHX5_2 = SHX1_2.ownerName
      if SHX5_2 then
        goto SHX_LABEL_30
      end
    end
  end
  SHX5_2 = "PermID:"
  SHX6_2 = tostring
  SHX7_2 = SHX1_2.ownerId
  SHX6_2 = SHX6_2(SHX7_2)
  SHX5_2 = SHX5_2 .. SHX6_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
  ::SHX_LABEL_30::
  SHX6_2 = SHX4_2
  SHX7_2 = " Owner: "
  SHX8_2 = SHX5_2
  SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
  return SHX6_2
end
function SHX14_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.isPurge
    SHX0_3 = SHX0_3()
    if not SHX0_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.isPlayerInPrison
      SHX0_3 = SHX0_3()
      if not SHX0_3 then
        SHX0_3 = IsControlJustPressed
        SHX1_3 = 1
        SHX2_3 = 23
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = SHX2_2
          SHX0_3 = #SHX0_3
          if 1 == SHX0_3 then
            SHX0_3 = SHX11_1
            SHX1_3 = SHX2_2
            SHX1_3 = SHX1_3[1]
            SHX1_3 = SHX1_3.warehouseId
            SHX0_3(SHX1_3)
          else
            SHX0_3 = CMG
            SHX0_3 = SHX0_3.uiSetFocus
            SHX1_3 = true
            SHX2_3 = true
            SHX3_3 = false
            SHX0_3(SHX1_3, SHX2_3, SHX3_3)
            SHX0_3 = CMG
            SHX0_3 = SHX0_3.uiSendMessage
            SHX1_3 = {}
            SHX1_3.type = "TRAPPER_SHOW_WAREHOUSE_PICKER"
            SHX2_3 = {}
            SHX3_3 = SHX2_2
            SHX2_3.warehouses = SHX3_3
            SHX1_3.payload = SHX2_3
            SHX0_3(SHX1_3)
            SHX0_3 = CMG
            SHX0_3 = SHX0_3.uiSendMessage
            SHX1_3 = {}
            SHX1_3.type = "APP_TOGGLE"
            SHX1_3.app = "TrapperWarehousePicker"
            SHX0_3(SHX1_3)
          end
        end
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.DrawText3D
        SHX1_3 = SHX1_2
        SHX2_3 = "Press [F] to enter warehouse"
        SHX3_3 = 0.3
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      end
    end
  end
  SHX6_2 = "warehouse_entrance_"
  SHX7_2 = SHX0_2
  SHX6_2 = SHX6_2 .. SHX7_2
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.createArea
  SHX8_2 = SHX6_2
  SHX9_2 = SHX1_2
  SHX10_2 = 1.5
  SHX11_2 = 6
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = {}
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2 = table
  SHX7_2 = SHX7_2.insert
  SHX8_2 = SHX10_1.entranceAreas
  SHX9_2 = SHX6_2
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.addPropMarker
  SHX8_2 = "bzzz_marker_home_red_anim"
  SHX9_2 = SHX1_2.x
  SHX10_2 = SHX1_2.y
  SHX11_2 = SHX1_2.z
  SHX12_2 = 20.0
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = table
  SHX8_2 = SHX8_2.insert
  SHX9_2 = SHX10_1.entranceMarkers
  SHX10_2 = SHX7_2
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = tCMG
  SHX8_2 = SHX8_2.addBlip
  SHX9_2 = SHX1_2.x
  SHX10_2 = SHX1_2.y
  SHX11_2 = SHX1_2.z
  SHX12_2 = 474
  SHX13_2 = SHX0_1.blipColour
  SHX14_2 = "Drug Den Warehouse"
  SHX15_2 = 0.8
  SHX16_2 = false
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX9_2 = table
  SHX9_2 = SHX9_2.insert
  SHX10_2 = SHX10_1.entranceBlips
  SHX11_2 = SHX8_2
  SHX9_2(SHX10_2, SHX11_2)
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = pairs
  SHX1_2 = SHX10_1.entranceMarkers
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.removeMarker
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX10_1.entranceMarkers = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX10_1.entranceAreas
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.removeArea
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX10_1.entranceAreas = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX10_1.entranceBlips
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.removeBlip
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX10_1.entranceBlips = SHX0_2
  SHX0_2 = {}
  function SHX1_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    SHX3_3 = SHX12_1
    SHX4_3 = SHX1_3.warehouseName
    SHX5_3 = SHX1_3.locationIndex
    SHX3_3, SHX4_3 = SHX3_3(SHX4_3, SHX5_3)
    SHX5_3 = SHX0_1.warehouses
    SHX6_3 = SHX1_3.warehouseName
    SHX5_3 = SHX5_3[SHX6_3]
    SHX6_3 = SHX5_3.locationSize
    SHX7_3 = SHX6_3
    SHX8_3 = "_"
    SHX9_3 = tostring
    SHX10_3 = SHX1_3.locationIndex
    SHX9_3 = SHX9_3(SHX10_3)
    SHX7_3 = SHX7_3 .. SHX8_3 .. SHX9_3
    SHX8_3 = SHX13_1
    SHX9_3 = SHX0_3
    SHX10_3 = SHX1_3
    SHX11_3 = SHX2_3
    SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
    SHX9_3 = SHX0_2
    SHX9_3 = SHX9_3[SHX7_3]
    if not SHX9_3 then
      SHX9_3 = SHX0_2
      SHX10_3 = {}
      SHX10_3.coords = SHX4_3
      SHX11_3 = {}
      SHX10_3.options = SHX11_3
      SHX9_3[SHX7_3] = SHX10_3
    end
    SHX9_3 = table
    SHX9_3 = SHX9_3.insert
    SHX10_3 = SHX0_2
    SHX10_3 = SHX10_3[SHX7_3]
    SHX10_3 = SHX10_3.options
    SHX11_3 = {}
    SHX11_3.warehouseId = SHX0_3
    SHX11_3.label = SHX8_3
    SHX9_3(SHX10_3, SHX11_3)
  end
  SHX2_2 = pairs
  SHX3_2 = SHX5_1.warehousesOwned
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX1_2
    SHX9_2 = SHX6_2
    SHX10_2 = SHX7_2
    SHX11_2 = true
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  end
  SHX2_2 = pairs
  SHX3_2 = SHX5_1.warehouseKeys
  if not SHX3_2 then
    SHX3_2 = {}
  end
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX1_2
    SHX9_2 = SHX6_2
    SHX10_2 = SHX7_2
    SHX11_2 = false
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  end
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX14_1
    SHX9_2 = SHX6_2
    SHX10_2 = SHX7_2.coords
    SHX11_2 = SHX7_2.options
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  end
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.warehouses
  if not SHX2_2 then
    SHX2_2 = {}
  end
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = #SHX0_2
    SHX7_2 = SHX7_2 + 1
    SHX0_2[SHX7_2] = SHX5_2
  end
  SHX1_2 = table
  SHX1_2 = SHX1_2.sort
  SHX2_2 = SHX0_2
  function SHX3_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX2_3 = SHX0_1.warehouses
    SHX2_3 = SHX2_3[SHX0_3]
    SHX3_3 = SHX0_1.warehouses
    SHX3_3 = SHX3_3[SHX1_3]
    if SHX2_3 then
      SHX4_3 = SHX2_3.minLevel
      if SHX4_3 then
        goto SHX_LABEL_11
      end
    end
    SHX4_3 = 1
    -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
    ::SHX_LABEL_11::
    if SHX3_3 then
      SHX5_3 = SHX3_3.minLevel
      if SHX5_3 then
        goto SHX_LABEL_17
      end
    end
    SHX5_3 = 1
    -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
    ::SHX_LABEL_17::
    SHX4_3 = SHX4_3 < SHX5_3
    return SHX4_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = {}
  SHX2_2 = ipairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX0_1.warehouses
    SHX8_2 = SHX8_2[SHX7_2]
    SHX9_2 = false
    SHX10_2 = nil
    SHX11_2 = pairs
    SHX12_2 = SHX5_1.warehousesOwned
    if not SHX12_2 then
      SHX12_2 = {}
    end
    SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
    for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
      SHX17_2 = SHX16_2.warehouseName
      if SHX17_2 == SHX7_2 then
        SHX9_2 = true
        SHX10_2 = SHX15_2
        break
      end
    end
    SHX11_2 = #SHX1_2
    SHX11_2 = SHX11_2 + 1
    SHX12_2 = {}
    SHX12_2.id = SHX7_2
    SHX12_2.warehouseDbId = SHX10_2
    SHX13_2 = SHX8_2.name
    if not SHX13_2 then
      SHX13_2 = SHX7_2
    end
    SHX12_2.name = SHX13_2
    SHX13_2 = SHX8_2.minLevel
    if not SHX13_2 then
      SHX13_2 = 1
    end
    SHX12_2.minLevel = SHX13_2
    SHX13_2 = SHX8_2.price
    if not SHX13_2 then
      SHX13_2 = 0
    end
    SHX12_2.price = SHX13_2
    SHX13_2 = SHX8_2.image
    if not SHX13_2 then
      SHX13_2 = SHX7_2
    end
    SHX12_2.image = SHX13_2
    SHX12_2.owned = SHX9_2
    SHX1_2[SHX11_2] = SHX12_2
  end
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX5_1.warehouseKeys
  if not SHX4_2 then
    SHX4_2 = {}
  end
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX0_1.warehouses
    SHX10_2 = SHX8_2.warehouseName
    SHX9_2 = SHX9_2[SHX10_2]
    if SHX9_2 then
      SHX9_2 = SHX0_1.warehouses
      SHX10_2 = SHX8_2.warehouseName
      SHX9_2 = SHX9_2[SHX10_2]
      SHX9_2 = SHX9_2.name
      if SHX9_2 then
        goto SHX_LABEL_104
      end
    end
    SHX9_2 = SHX8_2.warehouseName
    -- [FIX IF ERROR] Move ::SHX_LABEL_104:: outside nested blocks until all 'goto SHX_LABEL_104' can see it
    ::SHX_LABEL_104::
    SHX10_2 = #SHX2_2
    SHX10_2 = SHX10_2 + 1
    SHX11_2 = {}
    SHX11_2.warehouseDbId = SHX7_2
    SHX12_2 = SHX8_2.warehouseName
    SHX11_2.warehouseName = SHX12_2
    SHX11_2.name = SHX9_2
    SHX12_2 = SHX8_2.ownerId
    SHX11_2.ownerId = SHX12_2
    SHX12_2 = SHX8_2.ownerName
    if not SHX12_2 then
      SHX12_2 = "PermID:"
      SHX13_2 = tostring
      SHX14_2 = SHX8_2.ownerId
      SHX13_2 = SHX13_2(SHX14_2)
      SHX12_2 = SHX12_2 .. SHX13_2
    end
    SHX11_2.ownerName = SHX12_2
    SHX2_2[SHX10_2] = SHX11_2
  end
  SHX3_2 = {}
  SHX3_2.warehouses = SHX1_2
  SHX3_2.keyedWarehouses = SHX2_2
  return SHX3_2
end
SHX17_1 = RegisterNetEvent
SHX18_1 = "1676313871"
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2 or nil
  if not SHX0_2 then
    SHX1_2 = SHX5_1
  end
  SHX5_1 = SHX1_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.keyInvitesPending
    if not SHX1_2 then
      SHX1_2 = {}
    end
    SHX5_1.keyInvitesPending = SHX1_2
  end
  SHX1_2 = SHX15_1
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.type = "TRAPPER_DATA_UPDATED"
  SHX3_2 = {}
  if SHX0_2 then
    SHX4_2 = SHX0_2.keyInvitesPending
    if SHX4_2 then
      goto SHX_LABEL_29
    end
  end
  SHX4_2 = {}
  -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
  ::SHX_LABEL_29::
  SHX3_2.keyInvitesPending = SHX4_2
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX17_1(SHX18_1, SHX19_1)
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  function SHX0_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.isPurge
    SHX0_3 = SHX0_3()
    if not SHX0_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.isPlayerInPrison
      SHX0_3 = SHX0_3()
      if not SHX0_3 then
        SHX0_3 = IsControlJustPressed
        SHX1_3 = 1
        SHX2_3 = 38
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.getClientJob
          SHX0_3 = SHX0_3()
          SHX1_3 = SHX0_1.jobName
          if SHX0_3 ~= SHX1_3 then
            SHX0_3 = notify
            SHX1_3 = "~r~You must be on the Trapper job to use the warehouse seller."
            SHX0_3(SHX1_3)
          else
            SHX0_3 = CMG
            SHX0_3 = SHX0_3.openJobTerminal
            SHX1_3 = true
            SHX0_3(SHX1_3)
            SHX0_3 = SetTimeout
            SHX1_3 = 50
            function SHX2_3()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_4, SHX1_4, SHX2_4
              SHX0_4 = CMG
              SHX0_4 = SHX0_4.uiSendMessage
              SHX1_4 = {}
              SHX1_4.type = "TRAPPER_SET_TAB"
              SHX2_4 = {}
              SHX2_4.tabId = "warehouses"
              SHX1_4.info = SHX2_4
              SHX0_4(SHX1_4)
            end
            SHX0_3(SHX1_3, SHX2_3)
          end
        end
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.DrawText3D
        SHX1_3 = SHX0_1.purchaseWarehouse
        SHX2_3 = "Press [E] to open warehouse seller"
        SHX3_3 = 0.3
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      end
    end
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createArea
  SHX4_2 = "warehouse_seller_"
  SHX5_2 = SHX0_1.jobName
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX5_2 = SHX0_1.purchaseWarehouse
  SHX6_2 = 1.5
  SHX7_2 = 6
  SHX8_2 = SHX0_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX11_2 = {}
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.addPropMarker
  SHX4_2 = "bzzz_marker_home_red_anim"
  SHX5_2 = SHX0_1.purchaseWarehouse
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX0_1.purchaseWarehouse
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX0_1.purchaseWarehouse
  SHX7_2 = SHX7_2.z
  SHX8_2 = 10.0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.addBlip
  SHX4_2 = SHX0_1.purchaseWarehouse
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX0_1.purchaseWarehouse
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX0_1.purchaseWarehouse
  SHX6_2 = SHX6_2.z
  SHX7_2 = 474
  SHX8_2 = SHX0_1.blipColour
  SHX9_2 = SHX0_1.jobName
  SHX10_2 = 0.8
  SHX11_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.addBlip
  SHX4_2 = SHX0_1.paletoSupermarket
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX0_1.paletoSupermarket
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX0_1.paletoSupermarket
  SHX6_2 = SHX6_2.z
  SHX7_2 = 52
  SHX8_2 = 27
  SHX9_2 = "Paleto Supermarket"
  SHX10_2 = 0.8
  SHX11_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
SHX18_1 = RegisterNetEvent
SHX19_1 = "a6fef311cd"
function SHX20_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = SHX5_1.warehousesOwned
  SHX4_2 = {}
  SHX5_2 = {}
  SHX4_2.keys = SHX5_2
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getClientUserId
  SHX5_2 = SHX5_2()
  SHX4_2.ownerId = SHX5_2
  SHX4_2.warehouseName = SHX1_2
  SHX4_2.locationIndex = SHX2_2
  SHX3_2[SHX0_2] = SHX4_2
  SHX3_2 = SHX15_1
  SHX3_2()
  SHX3_2 = SHX12_1
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX4_2 then
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.setNextStepLocationMarker
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.addJobTutorialProgress
  SHX6_2 = "buy_drug_den"
  SHX7_2 = 1
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.uiSendMessage
  SHX6_2 = {}
  SHX6_2.type = "TRAPPER_WAREHOUSES"
  SHX7_2 = SHX16_1
  SHX7_2 = SHX7_2()
  SHX6_2.payload = SHX7_2
  SHX5_2(SHX6_2)
end
SHX18_1(SHX19_1, SHX20_1)
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX10_1.lastUsedWarehouseId
  if not SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = SHX5_1.warehousesOwned
  if SHX1_2 then
    SHX1_2 = SHX5_1.warehousesOwned
    SHX1_2 = SHX1_2[SHX0_2]
  end
  if SHX1_2 then
    SHX2_2 = SHX1_2.warehouseName
    if SHX2_2 then
      SHX2_2 = SHX1_2.warehouseName
      return SHX2_2
    end
  end
  SHX2_2 = SHX5_1.warehouseKeys
  if SHX2_2 then
    SHX2_2 = SHX5_1.warehouseKeys
    SHX2_2 = SHX2_2[SHX0_2]
  end
  if SHX2_2 then
    SHX3_2 = SHX2_2.warehouseName
    if SHX3_2 then
      SHX3_2 = SHX2_2.warehouseName
      return SHX3_2
    end
  end
  SHX3_2 = nil
  return SHX3_2
end
SHX19_1 = AddEventHandler
SHX20_1 = "a68d3374be"
function SHX21_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  if "Trapper" == SHX0_2 then
    SHX2_2 = true == SHX1_2
    SHX6_1 = SHX2_2
  end
  if "Trapper" ~= SHX0_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isJobTutorialRunning
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getCurrentQuestStepId
    SHX2_2 = SHX2_2()
    if "go_to_drug_den" == SHX2_2 or "go_back_to_drug_den" == SHX2_2 then
      SHX3_2 = SHX10_1.lastUsedWarehouseId
      SHX4_2 = SHX18_1
      SHX4_2 = SHX4_2()
      if not SHX4_2 then
        SHX5_2 = SHX5_1.warehousesOwned
        if SHX5_2 then
          SHX5_2 = pairs
          SHX6_2 = SHX5_1.warehousesOwned
          SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
          for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
            SHX3_2 = SHX9_2
            SHX4_2 = SHX10_2.warehouseName
            break
          end
        end
      end
      if SHX4_2 then
        SHX5_2 = SHX5_1.warehousesOwned
        if SHX5_2 then
          SHX5_2 = SHX5_1.warehousesOwned
          SHX5_2 = SHX5_2[SHX3_2]
          if SHX5_2 then
            goto SHX_LABEL_55
          end
        end
        SHX5_2 = SHX5_1.warehouseKeys
        if SHX5_2 then
          SHX5_2 = SHX5_1.warehouseKeys
          SHX5_2 = SHX5_2[SHX3_2]
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_55:: outside nested blocks until all 'goto SHX_LABEL_55' can see it
        ::SHX_LABEL_55::
        if SHX5_2 then
          SHX6_2 = tonumber
          SHX7_2 = SHX5_2.locationIndex
          SHX6_2 = SHX6_2(SHX7_2)
          if SHX6_2 then
            goto SHX_LABEL_66
          end
          SHX6_2 = 1
          if SHX6_2 then
            goto SHX_LABEL_66
          end
        end
        SHX6_2 = 1
        -- [FIX IF ERROR] Move ::SHX_LABEL_66:: outside nested blocks until all 'goto SHX_LABEL_66' can see it
        ::SHX_LABEL_66::
        SHX7_2 = SHX12_1
        SHX8_2 = SHX4_2
        SHX9_2 = SHX6_2
        SHX7_2, SHX8_2 = SHX7_2(SHX8_2, SHX9_2)
        if SHX8_2 then
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.setCurrentStepLocationMarker
          SHX10_2 = SHX8_2
          SHX9_2(SHX10_2)
        end
      end
    end
  end
  SHX2_2 = SetTimeout
  SHX3_2 = 150
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.uiSendMessage
    SHX1_3 = {}
    SHX1_3.type = "TRAPPER_WAREHOUSES"
    SHX2_3 = SHX16_1
    SHX2_3 = SHX2_3()
    SHX1_3.payload = SHX2_3
    SHX0_3(SHX1_3)
  end
  SHX2_2(SHX3_2, SHX4_2)
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = CMG
SHX19_1 = SHX19_1.uiRegisterCallback
SHX20_1 = "getTrapperWarehouses"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX16_1
  return SHX0_2()
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = CMG
SHX19_1 = SHX19_1.uiRegisterCallback
SHX20_1 = "getTrapperWeedNpcPrices"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = {}
  SHX1_2 = SHX0_1.sellableItems
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" == SHX2_2 then
    SHX2_2 = 1
    SHX3_2 = #SHX1_2
    SHX4_2 = 1
    for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
      SHX6_2 = SHX1_2[SHX5_2]
      SHX7_2 = type
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if "table" == SHX7_2 then
        SHX7_2 = type
        SHX8_2 = SHX6_2.id
        SHX7_2 = SHX7_2(SHX8_2)
        if "string" == SHX7_2 then
          SHX7_2 = type
          SHX8_2 = SHX6_2.price
          SHX7_2 = SHX7_2(SHX8_2)
          if "number" == SHX7_2 then
            SHX7_2 = string
            SHX7_2 = SHX7_2.match
            SHX8_2 = SHX6_2.id
            SHX9_2 = "^weed_bag_(%d+)$"
            SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
            if SHX7_2 then
              SHX8_2 = tonumber
              SHX9_2 = SHX7_2
              SHX8_2 = SHX8_2(SHX9_2)
              if SHX8_2 then
                SHX9_2 = #SHX0_2
                SHX9_2 = SHX9_2 + 1
                SHX10_2 = {}
                SHX10_2.purity = SHX8_2
                SHX11_2 = SHX6_2.price
                SHX10_2.price = SHX11_2
                SHX11_2 = SHX6_2.id
                SHX10_2.itemId = SHX11_2
                SHX0_2[SHX9_2] = SHX10_2
              end
            end
          end
        end
      end
    end
  end
  SHX2_2 = {}
  SHX2_2.rows = SHX0_2
  return SHX2_2
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = CMG
SHX19_1 = SHX19_1.uiRegisterCallback
SHX20_1 = "buyDrugDenWarehouse"
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX6_1
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.uiSendMessage
    SHX2_2 = {}
    SHX2_2.type = "TRAPPER_ERROR"
    SHX3_2 = {}
    SHX3_2.message = "You must be at the warehouse seller to purchase a warehouse."
    SHX2_2.payload = SHX3_2
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = SHX0_2 or SHX1_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.id
  end
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.locationIndex
  end
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "acaf15912f"
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = CMG
SHX19_1 = SHX19_1.uiRegisterCallback
SHX20_1 = "getTrapperWarehouseLocations"
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = SHX6_1
  if not SHX1_2 then
    SHX1_2 = {}
    SHX2_2 = {}
    SHX1_2.locations = SHX2_2
    SHX1_2.error = "You must be at the warehouse seller to purchase a warehouse."
    return SHX1_2
  end
  SHX1_2 = SHX0_2 or SHX1_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.warehouseId
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" ~= SHX2_2 or "" == SHX1_2 then
    SHX2_2 = {}
    SHX3_2 = {}
    SHX2_2.locations = SHX3_2
    return SHX2_2
  end
  SHX2_2 = SHX0_1.warehouses
  SHX2_2 = SHX2_2[SHX1_2]
  if SHX2_2 then
    SHX3_2 = SHX2_2.locationSize
    if SHX3_2 then
      goto SHX_LABEL_40
    end
  end
  SHX3_2 = {}
  SHX4_2 = {}
  SHX3_2.locations = SHX4_2
  return SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
  ::SHX_LABEL_40::
  SHX3_2 = SHX2_2.locationSize
  SHX4_2 = SHX0_1.warehouseLocations
  if SHX4_2 then
    SHX4_2 = SHX0_1.warehouseLocations
    SHX4_2 = SHX4_2[SHX3_2]
  end
  if not SHX4_2 then
    SHX5_2 = {}
    SHX6_2 = {}
    SHX5_2.locations = SHX6_2
    return SHX5_2
  end
  SHX5_2 = {}
  SHX6_2 = 1
  SHX7_2 = #SHX4_2
  SHX8_2 = 1
  for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2 = SHX4_2[SHX9_2]
    SHX11_2 = {}
    SHX12_2 = SHX10_2.x
    SHX11_2.x = SHX12_2
    SHX12_2 = SHX10_2.y
    SHX11_2.y = SHX12_2
    SHX12_2 = SHX10_2.z
    SHX11_2.z = SHX12_2
    SHX5_2[SHX9_2] = SHX11_2
  end
  SHX6_2 = {}
  SHX6_2.locations = SHX5_2
  return SHX6_2
end
SHX19_1(SHX20_1, SHX21_1)
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX1_2 = SHX0_1.warehouses
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX12_1
  SHX3_2 = SHX0_2
  SHX4_2 = 1
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2)
  if not SHX2_2 or not SHX3_2 then
    SHX4_2 = notify
    SHX5_2 = "~r~No locations available for preview."
    SHX4_2(SHX5_2)
    return
  end
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = GetEntityHeading
  SHX7_2 = SHX4_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.loadModel
  SHX8_2 = SHX0_2
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    SHX8_2 = notify
    SHX9_2 = "~r~Failed to load preview."
    SHX8_2(SHX9_2)
    return
  end
  SHX8_2 = SHX3_2.z
  SHX8_2 = SHX8_2 - 100.0
  SHX9_2 = CreateObject
  SHX10_2 = SHX7_2
  SHX11_2 = SHX3_2.x
  SHX12_2 = SHX3_2.y
  SHX13_2 = SHX8_2
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX10_2 = FreezeEntityPosition
  SHX11_2 = SHX9_2
  SHX12_2 = true
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetEntityHeading
  SHX11_2 = SHX9_2
  SHX12_2 = 0.0
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = GetEntityCoords
  SHX11_2 = SHX9_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = SHX1_2.doorOffset
  SHX10_2 = SHX10_2 + SHX11_2
  SHX11_2 = vector3
  SHX12_2 = SHX10_2.x
  SHX13_2 = SHX10_2.y
  SHX14_2 = SHX10_2.z
  SHX14_2 = SHX14_2 + 1.0
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX10_2 = SHX11_2
  SHX11_2 = tCMG
  SHX11_2 = SHX11_2.addPropMarker
  SHX12_2 = "bzzz_marker_home_red_anim"
  SHX13_2 = SHX10_2.x
  SHX14_2 = SHX10_2.y
  SHX15_2 = SHX10_2.z
  SHX16_2 = 20.0
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX12_2 = DoScreenFadeOut
  SHX13_2 = 500
  SHX12_2(SHX13_2)
  while true do
    SHX12_2 = IsScreenFadedOut
    SHX12_2 = SHX12_2()
    if SHX12_2 then
      break
    end
    SHX12_2 = Wait
    SHX13_2 = 0
    SHX12_2(SHX13_2)
  end
  SHX12_2 = GetEntityCoords
  SHX13_2 = SHX9_2
  SHX12_2 = SHX12_2(SHX13_2)
  SHX13_2 = SHX1_2.doorOffset
  SHX12_2 = SHX12_2 + SHX13_2
  SHX13_2 = vector3
  SHX14_2 = SHX12_2.x
  SHX15_2 = SHX12_2.y
  SHX16_2 = SHX12_2.z
  SHX16_2 = SHX16_2 + 1.0
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
  SHX12_2 = SHX13_2
  SHX13_2 = SetEntityCoordsNoOffset
  SHX14_2 = SHX4_2
  SHX15_2 = SHX12_2.x
  SHX16_2 = SHX12_2.y
  SHX17_2 = SHX12_2.z
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = false
  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX13_2 = SetEntityHeading
  SHX14_2 = SHX4_2
  SHX15_2 = SHX1_2.doorHeading
  if not SHX15_2 then
    SHX15_2 = 0.0
  end
  SHX13_2(SHX14_2, SHX15_2)
  SHX13_2 = DoScreenFadeIn
  SHX14_2 = 500
  SHX13_2(SHX14_2)
  SHX13_2 = notify
  SHX14_2 = "~b~Warehouse preview. Press [E] to exit."
  SHX13_2(SHX14_2)
  SHX13_2 = CreateThread
  function SHX14_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    while true do
      SHX0_3 = SHX9_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = DoesEntityExist
      SHX1_3 = SHX9_2
      SHX0_3 = SHX0_3(SHX1_3)
      if not SHX0_3 then
        break
      end
      SHX0_3 = BeginTextCommandDisplayHelp
      SHX1_3 = "STRING"
      SHX0_3(SHX1_3)
      SHX0_3 = AddTextComponentSubstringPlayerName
      SHX1_3 = "Press ~INPUT_PICKUP~ to exit warehouse preview."
      SHX0_3(SHX1_3)
      SHX0_3 = EndTextCommandDisplayHelp
      SHX1_3 = 0
      SHX2_3 = false
      SHX3_3 = true
      SHX4_3 = -1
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 1
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = DoScreenFadeOut
        SHX1_3 = 500
        SHX0_3(SHX1_3)
        while true do
          SHX0_3 = IsScreenFadedOut
          SHX0_3 = SHX0_3()
          if SHX0_3 then
            break
          end
          SHX0_3 = Wait
          SHX1_3 = 0
          SHX0_3(SHX1_3)
        end
        SHX0_3 = PlayerPedId
        SHX0_3 = SHX0_3()
        SHX1_3 = SetEntityCoordsNoOffset
        SHX2_3 = SHX0_3
        SHX3_3 = SHX5_2.x
        SHX4_3 = SHX5_2.y
        SHX5_3 = SHX5_2.z
        SHX6_3 = false
        SHX7_3 = false
        SHX8_3 = false
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
        SHX1_3 = SetEntityHeading
        SHX2_3 = SHX0_3
        SHX3_3 = SHX6_2
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = SHX9_2
        if SHX1_3 then
          SHX1_3 = DoesEntityExist
          SHX2_3 = SHX9_2
          SHX1_3 = SHX1_3(SHX2_3)
          if SHX1_3 then
            SHX1_3 = DeleteEntity
            SHX2_3 = SHX9_2
            SHX1_3(SHX2_3)
          end
        end
        SHX1_3 = SHX11_2
        if SHX1_3 then
          SHX1_3 = tCMG
          SHX1_3 = SHX1_3.removeMarker
          SHX2_3 = SHX11_2
          SHX1_3(SHX2_3)
        end
        SHX1_3 = DoScreenFadeIn
        SHX2_3 = 500
        SHX1_3(SHX2_3)
        SHX1_3 = notify
        SHX2_3 = "~b~Preview ended."
        SHX1_3(SHX2_3)
        return
      end
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX13_2(SHX14_2)
end
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "previewDrugDenWarehouse"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.id
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" == SHX2_2 and "" ~= SHX1_2 then
    SHX2_2 = SHX0_1.warehouses
    SHX2_2 = SHX2_2[SHX1_2]
    if SHX2_2 then
      goto SHX_LABEL_16
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
  ::SHX_LABEL_16::
  SHX2_2 = SHX6_1
  if not SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.uiSendMessage
    SHX3_2 = {}
    SHX3_2.type = "TRAPPER_ERROR"
    SHX4_2 = {}
    SHX4_2.message = "You must be at the warehouse seller to preview."
    SHX3_2.payload = SHX4_2
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = TriggerEvent
  SHX3_2 = "b4fcca60d5"
  SHX2_2(SHX3_2)
  SHX2_2 = CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = Wait
    SHX1_3 = 400
    SHX0_3(SHX1_3)
    SHX0_3 = SHX19_1
    SHX1_3 = SHX1_2
    SHX0_3(SHX1_3)
  end
  SHX2_2(SHX3_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "getTrapperKeyHolders"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.warehouseId
  end
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "41f962037a"
    SHX4_2 = tonumber
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      SHX4_2 = SHX1_2
    end
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "getTrapperLeaderboard"
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "dde748984e"
  SHX0_2(SHX1_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "trapperGiveKey"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.warehouseId
  end
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.targetUserId
  end
  if SHX1_2 and SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "594f42c861"
    SHX5_2 = tonumber
    SHX6_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = SHX1_2
    end
    SHX6_2 = tonumber
    SHX7_2 = SHX2_2
    SHX6_2 = SHX6_2(SHX7_2)
    if not SHX6_2 then
      SHX6_2 = SHX2_2
    end
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "trapperRevokeKey"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.warehouseId
  end
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.targetUserId
  end
  if SHX1_2 and SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "418b3444c3"
    SHX5_2 = tonumber
    SHX6_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = SHX1_2
    end
    SHX6_2 = tonumber
    SHX7_2 = SHX2_2
    SHX6_2 = SHX6_2(SHX7_2)
    if not SHX6_2 then
      SHX6_2 = SHX2_2
    end
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "getTrapperKeyInvites"
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX1_2 = SHX5_1.keyInvitesPending
  if not SHX1_2 then
    SHX1_2 = {}
  end
  SHX0_2.keyInvitesPending = SHX1_2
  SHX1_2 = SHX0_1.keyInviteAcceptFee
  SHX0_2.keyInviteAcceptFee = SHX1_2
  return SHX0_2
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "trapperAcceptKeyInvite"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.warehouseId
  end
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "05d6ac829e"
    SHX4_2 = tonumber
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      SHX4_2 = SHX1_2
    end
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "trapperDeclineKeyInvite"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.warehouseId
  end
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "67f1b2900e"
    SHX4_2 = tonumber
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      SHX4_2 = SHX1_2
    end
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "selectTrapperWarehouse"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.warehouseId
  end
  if SHX1_2 then
    SHX2_2 = SHX11_1
    SHX3_2 = tonumber
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 then
      SHX3_2 = SHX1_2
    end
    SHX2_2(SHX3_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.type = "TRAPPER_WAREHOUSE_PICKER_CLOSE"
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSetFocus
  SHX3_2 = false
  SHX4_2 = false
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "trapperWarehousePickerCancel"
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "TRAPPER_WAREHOUSE_PICKER_CLOSE"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "trapperCancelKeyInvite"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.warehouseId
  end
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.targetUserId
  end
  if SHX1_2 and SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "032d2841c9"
    SHX5_2 = tonumber
    SHX6_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = SHX1_2
    end
    SHX6_2 = tonumber
    SHX7_2 = SHX2_2
    SHX6_2 = SHX6_2(SHX7_2)
    if not SHX6_2 then
      SHX6_2 = SHX2_2
    end
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "trapperSearchPlayers"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.query
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" == SHX2_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "913d8fa769"
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "c839fcfb63"
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if not SHX1_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.type = "TRAPPER_KEY_HOLDERS"
  SHX4_2 = {}
  SHX4_2.warehouseId = SHX0_2
  SHX5_2 = SHX1_2.ownerId
  SHX4_2.ownerId = SHX5_2
  SHX5_2 = SHX1_2.ownerName
  SHX4_2.ownerName = SHX5_2
  SHX5_2 = SHX1_2.keyHolders
  if not SHX5_2 then
    SHX5_2 = {}
  end
  SHX4_2.keyHolders = SHX5_2
  SHX5_2 = SHX1_2.pendingInvites
  if not SHX5_2 then
    SHX5_2 = {}
  end
  SHX4_2.pendingInvites = SHX5_2
  SHX5_2 = SHX1_2.isOwner
  SHX4_2.isOwner = SHX5_2
  SHX3_2.payload = SHX4_2
  SHX2_2(SHX3_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "f23412f497"
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.type = "TRAPPER_LEADERBOARD"
  SHX4_2 = {}
  SHX5_2 = SHX0_2 or SHX5_2
  if not SHX0_2 then
    SHX5_2 = {}
  end
  SHX4_2.runner = SHX5_2
  SHX5_2 = SHX1_2 or SHX5_2
  if not SHX1_2 then
    SHX5_2 = {}
  end
  SHX4_2.cook = SHX5_2
  SHX3_2.payload = SHX4_2
  SHX2_2(SHX3_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "15f134927d"
function SHX22_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.uiSendMessage
  SHX7_2 = {}
  SHX7_2.type = "TRAPPER_LEVELS"
  SHX8_2 = {}
  SHX9_2 = SHX0_2 or SHX9_2
  if not SHX0_2 then
    SHX9_2 = 0
  end
  SHX8_2.cookLevel = SHX9_2
  SHX9_2 = SHX1_2 or SHX9_2
  if not SHX1_2 then
    SHX9_2 = 0
  end
  SHX8_2.cookXp = SHX9_2
  SHX9_2 = SHX2_2 or SHX9_2
  if not SHX2_2 then
    SHX9_2 = 0
  end
  SHX8_2.cookXpMax = SHX9_2
  SHX9_2 = SHX3_2 or SHX9_2
  if not SHX3_2 then
    SHX9_2 = 0
  end
  SHX8_2.runnerLevel = SHX9_2
  SHX9_2 = SHX4_2 or SHX9_2
  if not SHX4_2 then
    SHX9_2 = 0
  end
  SHX8_2.runnerXp = SHX9_2
  SHX9_2 = SHX5_2 or SHX9_2
  if not SHX5_2 then
    SHX9_2 = 0
  end
  SHX8_2.runnerXpMax = SHX9_2
  SHX7_2.payload = SHX8_2
  SHX6_2(SHX7_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "CMG:trapNetWaypointAllowed"
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.addJobTutorialProgress
  SHX1_2 = "find_a_buyer"
  SHX2_2 = 1
  SHX0_2(SHX1_2, SHX2_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "79fec18bda"
function SHX22_1(SHX0_2)
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
  SHX2_2.type = "TRAPPER_SEARCH_RESULT"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.players = SHX4_2
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = AddEventHandler
SHX21_1 = "CMG:trapNetOpened"
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.addJobTutorialProgress
  SHX1_2 = "download_trapnet_app"
  SHX2_2 = 1
  SHX0_2(SHX1_2, SHX2_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = AddEventHandler
SHX21_1 = "CMG:trapNetOrder"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX10_1.lastUsedWarehouseId
  if not SHX1_2 then
    SHX1_2 = notify
    SHX2_2 = "~r~ You must be in a drug den to order trapnet ingredients"
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = SHX10_1.lastUsedWarehouseId
  SHX0_2.warehouseId = SHX1_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "363afc9c3e"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = AddEventHandler
SHX21_1 = "CMG:trapNetOrderLegalSupply"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX10_1.lastUsedWarehouseId
  if not SHX1_2 then
    SHX1_2 = notify
    SHX2_2 = "~r~ You must be in a drug den to order supplies"
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = SHX10_1.lastUsedWarehouseId
  SHX0_2.warehouseId = SHX1_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "3581e949d7"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "fc57db5df9"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = ipairs
  SHX2_2 = SHX0_2.items
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.addJobTutorialProgress
    SHX8_2 = "order_"
    SHX9_2 = SHX6_2.itemId
    SHX8_2 = SHX8_2 .. SHX9_2
    SHX9_2 = SHX6_2.amount
    SHX7_2(SHX8_2, SHX9_2)
  end
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = "trapnetDelivery"
SHX21_1 = RegisterNetEvent
SHX22_1 = "6fa96e9091"
function SHX23_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  if not SHX1_2 or SHX1_2 <= 0 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.removeHudTimer
  SHX3_2 = SHX20_1
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.addHudDurationTimer
  SHX3_2 = SHX20_1
  SHX4_2 = "DELIVERY"
  SHX5_2 = SHX1_2 / 1000
  SHX6_2 = nil
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = GetGameTimer
    SHX0_3 = SHX0_3()
    while true do
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX1_3 = SHX1_3 - SHX0_3
      SHX2_3 = SHX1_2
      if not (SHX1_3 < SHX2_3) then
        break
      end
      SHX1_3 = SHX10_1.lastUsedWarehouseId
      SHX2_3 = SHX0_2
      if SHX1_3 ~= SHX2_3 then
        break
      end
      SHX1_3 = Wait
      SHX2_3 = 200
      SHX1_3(SHX2_3)
    end
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.removeHudTimer
    SHX2_3 = SHX20_1
    SHX1_3(SHX2_3)
  end
  SHX2_2(SHX3_2)
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = nil
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX2_2 = SHX10_1.lastUsedWarehouseId
  if SHX2_2 == SHX0_2 then
    SHX2_2 = SHX10_1.shellObject
    if SHX2_2 then
      SHX2_2 = DoesEntityExist
      SHX3_2 = SHX10_1.shellObject
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        goto SHX_LABEL_13
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX2_2 = SHX18_1
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_1.warehouses
  SHX3_2 = SHX3_2[SHX2_2]
  if not SHX3_2 then
    return
  end
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX10_1.shellObject
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX3_2.doorOffset
  SHX4_2 = SHX4_2 + SHX5_2
  SHX5_2 = vector3
  SHX6_2 = SHX4_2.x
  SHX7_2 = SHX4_2.y
  SHX8_2 = SHX4_2.z
  SHX8_2 = SHX8_2 + 1.0
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SHX5_2
  SHX5_2 = SHX1_2 or SHX5_2
  if not SHX1_2 then
    SHX5_2 = -459818001
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.requestEntitySpawn
  SHX7_2 = "trapper_delivery_ped"
  SHX8_2 = SHX5_2
  SHX9_2 = SHX4_2
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.requestEntitySpawn
  SHX7_2 = "trapper_delivery_box"
  SHX8_2 = SHX4_2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.loadModel
  SHX7_2 = SHX5_2
  SHX6_2(SHX7_2)
  SHX6_2 = CreatePed
  SHX7_2 = 0
  SHX8_2 = SHX5_2
  SHX9_2 = SHX4_2.x
  SHX10_2 = SHX4_2.y
  SHX11_2 = SHX4_2.z
  SHX12_2 = 0.0
  SHX13_2 = true
  SHX14_2 = true
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX7_2 = SetBlockingOfNonTemporaryEvents
  SHX8_2 = SHX6_2
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.loadAnimDict
  SHX8_2 = "anim@heists@box_carry@"
  SHX7_2(SHX8_2)
  SHX7_2 = TaskPlayAnim
  SHX8_2 = SHX6_2
  SHX9_2 = "anim@heists@box_carry@"
  SHX10_2 = "idle"
  SHX11_2 = 8.0
  SHX12_2 = -8.0
  SHX13_2 = -1
  SHX14_2 = 49
  SHX15_2 = 0
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX7_2 = 1302435108
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.loadModel
  SHX9_2 = SHX7_2
  SHX8_2(SHX9_2)
  while true do
    SHX8_2 = DoesEntityExist
    SHX9_2 = SHX6_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      break
    end
    SHX8_2 = Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
  SHX8_2 = NetworkGetNetworkIdFromEntity
  SHX9_2 = SHX6_2
  SHX8_2 = SHX8_2(SHX9_2)
  if SHX0_2 and SHX8_2 then
    SHX9_2 = TriggerServerEvent
    SHX10_2 = "b0ea7d31cf"
    SHX11_2 = SHX0_2
    SHX12_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  end
  SHX9_2 = GetEntityCoords
  SHX10_2 = SHX6_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = CreateObject
  SHX11_2 = SHX7_2
  SHX12_2 = SHX9_2.x
  SHX13_2 = SHX9_2.y
  SHX14_2 = SHX9_2.z
  SHX15_2 = true
  SHX16_2 = true
  SHX17_2 = false
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX11_2 = SetEntityAsMissionEntity
  SHX12_2 = SHX10_2
  SHX13_2 = true
  SHX14_2 = true
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = GetPedBoneIndex
  SHX12_2 = SHX6_2
  SHX13_2 = 28422
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX12_2 = AttachEntityToEntity
  SHX13_2 = SHX10_2
  SHX14_2 = SHX6_2
  SHX15_2 = SHX11_2
  SHX16_2 = 0.0
  SHX17_2 = 0.02
  SHX18_2 = -0.02
  SHX19_2 = 0.0
  SHX20_2 = 0.0
  SHX21_2 = 0.0
  SHX22_2 = true
  SHX23_2 = true
  SHX24_2 = false
  SHX25_2 = true
  SHX26_2 = 1
  SHX27_2 = true
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
  SHX12_2 = CreateThread
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3
    SHX0_3 = PlayerPedId
    SHX0_3 = SHX0_3()
    SHX1_3 = false
    while true do
      SHX2_3 = DoesEntityExist
      SHX3_3 = SHX6_2
      SHX2_3 = SHX2_3(SHX3_3)
      if not SHX2_3 then
        break
      end
      SHX2_3 = GetEntityCoords
      SHX3_3 = SHX6_2
      SHX2_3 = SHX2_3(SHX3_3)
      if SHX1_3 then
        SHX3_3 = SHX4_2
        if SHX3_3 then
          goto SHX_LABEL_20
        end
      end
      SHX3_3 = GetEntityCoords
      SHX4_3 = SHX0_3
      SHX3_3 = SHX3_3(SHX4_3)
      -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
      ::SHX_LABEL_20::
      SHX4_3 = nil
      if SHX1_3 then
        SHX5_3 = SHX4_2
        SHX5_3 = SHX2_3 - SHX5_3
        SHX4_3 = #SHX5_3
      else
        SHX5_3 = GetEntityCoords
        SHX6_3 = SHX0_3
        SHX5_3 = SHX5_3(SHX6_3)
        SHX5_3 = SHX2_3 - SHX5_3
        SHX4_3 = #SHX5_3
      end
      if not SHX1_3 then
        SHX5_3 = 1.5
        if SHX4_3 > SHX5_3 then
          SHX5_3 = TaskGoStraightToCoord
          SHX6_3 = SHX6_2
          SHX7_3 = SHX3_3.x
          SHX8_3 = SHX3_3.y
          SHX9_3 = SHX3_3.z
          SHX10_3 = 1.0
          SHX11_3 = -1
          SHX12_3 = 0.0
          SHX13_3 = 0.0
          SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
        else
          SHX1_3 = true
          SHX5_3 = CMG
          SHX5_3 = SHX5_3.loadAnimDict
          SHX6_3 = "anim@heists@load_box"
          SHX5_3(SHX6_3)
          SHX5_3 = StopAnimTask
          SHX6_3 = SHX6_2
          SHX7_3 = "anim@heists@box_carry@"
          SHX8_3 = "idle"
          SHX9_3 = 1.0
          SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3)
          SHX5_3 = TaskPlayAnim
          SHX6_3 = SHX6_2
          SHX7_3 = "anim@heists@load_box"
          SHX8_3 = "lift_box"
          SHX9_3 = 8.0
          SHX10_3 = -8.0
          SHX11_3 = 1500
          SHX12_3 = 0
          SHX13_3 = 0
          SHX14_3 = false
          SHX15_3 = false
          SHX16_3 = false
          SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
          SHX5_3 = Wait
          SHX6_3 = 1500
          SHX5_3(SHX6_3)
          SHX5_3 = DoesEntityExist
          SHX6_3 = SHX10_2
          SHX5_3 = SHX5_3(SHX6_3)
          if SHX5_3 then
            SHX5_3 = DetachEntity
            SHX6_3 = SHX10_2
            SHX7_3 = true
            SHX8_3 = true
            SHX5_3(SHX6_3, SHX7_3, SHX8_3)
            SHX5_3 = GetEntityCoords
            SHX6_3 = SHX6_2
            SHX5_3 = SHX5_3(SHX6_3)
            SHX2_3 = SHX5_3
            SHX5_3 = GetEntityForwardVector
            SHX6_3 = SHX6_2
            SHX5_3 = SHX5_3(SHX6_3)
            SHX6_3 = GetEntityHeading
            SHX7_3 = SHX6_2
            SHX6_3 = SHX6_3(SHX7_3)
            SHX7_3 = SetEntityCoordsNoOffset
            SHX8_3 = SHX10_2
            SHX9_3 = SHX2_3.x
            SHX10_3 = SHX5_3.x
            SHX10_3 = SHX10_3 * 0.45
            SHX9_3 = SHX9_3 + SHX10_3
            SHX10_3 = SHX2_3.y
            SHX11_3 = SHX5_3.y
            SHX11_3 = SHX11_3 * 0.45
            SHX10_3 = SHX10_3 + SHX11_3
            SHX11_3 = SHX2_3.z
            SHX11_3 = SHX11_3 - 0.05
            SHX12_3 = true
            SHX13_3 = true
            SHX14_3 = true
            SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
            SHX7_3 = SetEntityHeading
            SHX8_3 = SHX10_2
            SHX9_3 = SHX6_3
            SHX7_3(SHX8_3, SHX9_3)
            SHX7_3 = PlaceObjectOnGroundProperly
            SHX8_3 = SHX10_2
            SHX7_3(SHX8_3)
            SHX7_3 = FreezeEntityPosition
            SHX8_3 = SHX10_2
            SHX9_3 = true
            SHX7_3(SHX8_3, SHX9_3)
            SHX7_3 = SetEntityCollision
            SHX8_3 = SHX10_2
            SHX9_3 = true
            SHX10_3 = true
            SHX7_3(SHX8_3, SHX9_3, SHX10_3)
            SHX7_3 = SHX10_2
            SHX21_1 = SHX7_3
            SHX7_3 = GetEntityCoords
            SHX8_3 = SHX10_2
            SHX7_3 = SHX7_3(SHX8_3)
            SHX8_3 = TriggerServerEvent
            SHX9_3 = "d39ece9727"
            SHX10_3 = SHX0_2
            SHX11_3 = SHX7_3.x
            SHX12_3 = SHX7_3.y
            SHX13_3 = SHX7_3.z
            SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
          end
          SHX5_3 = notify
          SHX6_3 = "~g~Your delivery has arrived"
          SHX5_3(SHX6_3)
          SHX5_3 = TaskGoStraightToCoord
          SHX6_3 = SHX6_2
          SHX7_3 = SHX4_2.x
          SHX8_3 = SHX4_2.y
          SHX9_3 = SHX4_2.z
          SHX10_3 = 1.0
          SHX11_3 = -1
          SHX12_3 = 0.0
          SHX13_3 = 0.0
          SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
        end
      else
        SHX5_3 = 1.5
        if SHX4_3 <= SHX5_3 then
          break
        end
      end
      SHX5_3 = Wait
      SHX6_3 = 250
      SHX5_3(SHX6_3)
    end
    SHX2_3 = Wait
    SHX3_3 = 1000
    SHX2_3(SHX3_3)
    SHX2_3 = DeleteEntity
    SHX3_3 = SHX6_2
    SHX2_3(SHX3_3)
  end
  SHX12_2(SHX13_2)
end
SHX23_1 = RegisterNetEvent
SHX24_1 = "850a241f8b"
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX22_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "76bdb27e56"
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX22_1
  SHX2_2 = SHX0_2
  SHX3_2 = 416176080
  SHX1_2(SHX2_2, SHX3_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "b9819e9635"
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if not SHX0_2 then
    return
  end
  SHX1_2 = CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3
    SHX0_3 = 1
    SHX1_3 = 30
    SHX2_3 = 1
    for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
      SHX4_3 = NetworkDoesNetworkIdExist
      SHX5_3 = SHX0_2
      SHX4_3 = SHX4_3(SHX5_3)
      if SHX4_3 then
        SHX4_3 = NetworkGetEntityFromNetworkId
        SHX5_3 = SHX0_2
        SHX4_3 = SHX4_3(SHX5_3)
        if SHX4_3 and 0 ~= SHX4_3 then
          SHX5_3 = DoesEntityExist
          SHX6_3 = SHX4_3
          SHX5_3 = SHX5_3(SHX6_3)
          if SHX5_3 then
            SHX5_3 = CMG
            SHX5_3 = SHX5_3.loadAnimDict
            SHX6_3 = "anim@heists@box_carry@"
            SHX5_3(SHX6_3)
            SHX5_3 = TaskPlayAnim
            SHX6_3 = SHX4_3
            SHX7_3 = "anim@heists@box_carry@"
            SHX8_3 = "idle"
            SHX9_3 = 8.0
            SHX10_3 = -8.0
            SHX11_3 = -1
            SHX12_3 = 49
            SHX13_3 = 0
            SHX14_3 = false
            SHX15_3 = false
            SHX16_3 = false
            SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
            return
          end
        end
      end
      SHX4_3 = Wait
      SHX5_3 = 100
      SHX4_3(SHX5_3)
    end
  end
  SHX1_2(SHX2_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "08289204ce"
function SHX25_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX3_2 = vector3
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.removeArea
  SHX5_2 = "trapnet_delivery_box_pickup"
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.createArea
  SHX5_2 = "trapnet_delivery_box_pickup"
  SHX6_2 = SHX3_2
  SHX7_2 = 1.5
  SHX8_2 = 6
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX10_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX11_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = IsControlJustPressed
    SHX1_3 = 1
    SHX2_3 = 38
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.addJobTutorialProgress
      SHX1_3 = "pickup_supplies"
      SHX2_3 = 1
      SHX0_3(SHX1_3, SHX2_3)
      SHX0_3 = TriggerServerEvent
      SHX1_3 = "eab1b30be7"
      SHX0_3(SHX1_3)
    end
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.DrawText3D
    SHX1_3 = SHX3_2
    SHX2_3 = "Press [E] to pick up TrapNet delivery"
    SHX3_3 = 0.3
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
  end
  SHX12_2 = {}
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "6f073b577d"
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX10_1.lastUsedWarehouseId
  if SHX1_2 ~= SHX0_2 then
    return
  end
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.removeArea
  SHX2_2 = "trapnet_delivery_box_pickup"
  SHX1_2(SHX2_2)
  SHX1_2 = SHX21_1
  if SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX21_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX21_1
      SHX1_2(SHX2_2)
      SHX1_2 = nil
      SHX21_1 = SHX1_2
    end
  end
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = AddEventHandler
SHX24_1 = "CMG:requestTrapperConfig"
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "CMG:trapNetGotConfig"
  SHX2_2 = SHX0_1
  SHX0_2(SHX1_2, SHX2_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "e4aa647477"
function SHX25_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if "shears" == SHX0_2 or "weed_bag_empty" == SHX0_2 then
    SHX2_2 = SHX10_1.lastUsedWarehouseId
    SHX3_2 = SHX18_1
    SHX3_2 = SHX3_2()
    if SHX2_2 and SHX3_2 then
      SHX4_2 = SHX5_1.warehousesOwned
      if SHX4_2 then
        SHX4_2 = SHX5_1.warehousesOwned
        SHX4_2 = SHX4_2[SHX2_2]
        if SHX4_2 then
          goto SHX_LABEL_24
        end
      end
      SHX4_2 = SHX5_1.warehouseKeys
      if SHX4_2 then
        SHX4_2 = SHX5_1.warehouseKeys
        SHX4_2 = SHX4_2[SHX2_2]
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_24:: outside nested blocks until all 'goto SHX_LABEL_24' can see it
      ::SHX_LABEL_24::
      if SHX4_2 then
        SHX5_2 = tonumber
        SHX6_2 = SHX4_2.locationIndex
        SHX5_2 = SHX5_2(SHX6_2)
        if SHX5_2 then
          goto SHX_LABEL_35
        end
        SHX5_2 = 0
        if SHX5_2 then
          goto SHX_LABEL_35
        end
      end
      SHX5_2 = 0
      -- [FIX IF ERROR] Move ::SHX_LABEL_35:: outside nested blocks until all 'goto SHX_LABEL_35' can see it
      ::SHX_LABEL_35::
      SHX6_2 = SHX12_1
      SHX7_2 = SHX3_2
      SHX8_2 = SHX5_2
      SHX6_2, SHX7_2 = SHX6_2(SHX7_2, SHX8_2)
      if SHX7_2 then
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.setNextStepLocationMarker
        SHX9_2 = SHX7_2
        SHX8_2(SHX9_2)
      end
    end
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.addJobTutorialProgress
  SHX3_2 = "order_"
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = {}
function SHX24_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if SHX0_2 and SHX1_2 and 0 ~= SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_14
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX2_2 = Entity
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2.state
  SHX2_2 = SHX2_2.type
  if "SETUP_SECURITY" == SHX2_2 or "SETUP_STAFF" == SHX2_2 or "SETUP_PILOT" == SHX2_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = SHX0_2.model
  if SHX3_2 then
    SHX3_2 = GetEntityModel
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SHX0_2.model
    if SHX3_2 ~= SHX4_2 then
      SHX3_2 = false
      return SHX3_2
    end
  end
  SHX3_2 = SHX0_2.location
  if SHX3_2 then
    SHX3_2 = GetEntityCoords
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SHX0_2.location
    SHX5_2 = vector3
    SHX6_2 = SHX3_2.x
    SHX7_2 = SHX3_2.y
    SHX8_2 = SHX3_2.z
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX6_2 = vector3
    SHX7_2 = SHX4_2.x
    SHX8_2 = SHX4_2.y
    SHX9_2 = SHX4_2.z
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX5_2 = SHX5_2 - SHX6_2
    SHX5_2 = #SHX5_2
    if SHX5_2 > 12.0 then
      SHX5_2 = false
      return SHX5_2
    end
  end
  SHX3_2 = true
  return SHX3_2
end
SHX25_1 = {}
SHX26_1 = {}
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX25_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = DoesBlipExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = RemoveBlip
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
    end
  end
  SHX2_2 = SHX25_1
  SHX2_2[SHX0_2] = nil
end
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX27_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX26_1
  SHX1_2[SHX0_2] = nil
end
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX25_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX28_1
    SHX7_2 = SHX4_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = pairs
  SHX1_2 = SHX26_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX28_1
    SHX7_2 = SHX4_2
    SHX6_2(SHX7_2)
  end
end
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = SHX4_1
  if not SHX0_2 then
    SHX0_2 = SHX29_1
    SHX0_2()
    return
  end
  SHX0_2 = pairs
  SHX1_2 = SHX23_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2 or SHX6_2
    if SHX5_2 then
      SHX6_2 = SHX5_2.netId
    end
    if SHX6_2 then
      SHX7_2 = NetworkDoesNetworkIdExist
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        goto SHX_LABEL_25
      end
    end
    SHX7_2 = SHX28_1
    SHX8_2 = SHX4_2
    SHX7_2(SHX8_2)
    goto SHX_LABEL_87
    -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
    ::SHX_LABEL_25::
    SHX7_2 = SHX26_1
    SHX7_2 = SHX7_2[SHX4_2]
    if SHX7_2 ~= SHX6_2 then
      SHX7_2 = SHX27_1
      SHX8_2 = SHX4_2
      SHX7_2(SHX8_2)
      SHX7_2 = SHX26_1
      SHX7_2[SHX4_2] = SHX6_2
    end
    SHX7_2 = NetworkGetEntityFromNetworkId
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 and 0 ~= SHX7_2 then
      SHX8_2 = DoesEntityExist
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        SHX8_2 = SHX24_1
        SHX9_2 = SHX5_2
        SHX10_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
        if SHX8_2 then
          SHX8_2 = SHX25_1
          SHX8_2 = SHX8_2[SHX4_2]
          if SHX8_2 then
            SHX8_2 = DoesBlipExist
            SHX9_2 = SHX25_1
            SHX9_2 = SHX9_2[SHX4_2]
            SHX8_2 = SHX8_2(SHX9_2)
          end
          if not SHX8_2 then
            SHX8_2 = AddBlipForEntity
            SHX9_2 = SHX7_2
            SHX8_2 = SHX8_2(SHX9_2)
            SHX9_2 = SetBlipSprite
            SHX10_2 = SHX8_2
            SHX11_2 = 1
            SHX9_2(SHX10_2, SHX11_2)
            SHX9_2 = SetBlipColour
            SHX10_2 = SHX8_2
            SHX11_2 = 1
            SHX9_2(SHX10_2, SHX11_2)
            SHX9_2 = SetBlipScale
            SHX10_2 = SHX8_2
            SHX11_2 = 0.4
            SHX9_2(SHX10_2, SHX11_2)
            SHX9_2 = SetBlipAsShortRange
            SHX10_2 = SHX8_2
            SHX11_2 = true
            SHX9_2(SHX10_2, SHX11_2)
            SHX9_2 = SHX25_1
            SHX9_2[SHX4_2] = SHX8_2
          end
      end
    end
    else
      SHX8_2 = SHX28_1
      SHX9_2 = SHX4_2
      SHX8_2(SHX9_2)
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_87:: outside nested blocks until all 'goto SHX_LABEL_87' can see it
    ::SHX_LABEL_87::
  end
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX25_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX23_1
    SHX7_2 = SHX7_2[SHX5_2]
    if not SHX7_2 then
      SHX7_2 = #SHX0_2
      SHX7_2 = SHX7_2 + 1
      SHX0_2[SHX7_2] = SHX5_2
    end
  end
  SHX1_2 = 1
  SHX2_2 = #SHX0_2
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX28_1
    SHX6_2 = SHX0_2[SHX4_2]
    SHX5_2(SHX6_2)
  end
end
SHX31_1 = {}
SHX32_1 = "GENERIC_BUY"
SHX33_1 = "GENERIC_HI"
SHX31_1[1] = SHX32_1
SHX31_1[2] = SHX33_1
SHX32_1 = "SPEECH_PARAMS_FORCE"
SHX33_1 = 0
SHX34_1 = 30000
SHX35_1 = RegisterCommand
SHX36_1 = "trapnetspeech"
function SHX37_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = nil
  SHX4_2 = 10.0
  SHX5_2 = nil
  SHX6_2 = pairs
  SHX7_2 = SHX23_1
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    if SHX11_2 then
      SHX12_2 = SHX11_2.netId
      if SHX12_2 then
        SHX12_2 = NetworkDoesNetworkIdExist
        SHX13_2 = SHX11_2.netId
        SHX12_2 = SHX12_2(SHX13_2)
        if SHX12_2 then
          SHX12_2 = NetworkGetEntityFromNetworkId
          SHX13_2 = SHX11_2.netId
          SHX12_2 = SHX12_2(SHX13_2)
          if SHX12_2 and 0 ~= SHX12_2 then
            SHX13_2 = DoesEntityExist
            SHX14_2 = SHX12_2
            SHX13_2 = SHX13_2(SHX14_2)
            if SHX13_2 then
              SHX13_2 = SHX24_1
              SHX14_2 = SHX11_2
              SHX15_2 = SHX12_2
              SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
              if SHX13_2 then
                SHX13_2 = GetEntityCoords
                SHX14_2 = SHX12_2
                SHX13_2 = SHX13_2(SHX14_2)
                SHX13_2 = SHX2_2 - SHX13_2
                SHX13_2 = #SHX13_2
                if SHX4_2 > SHX13_2 then
                  SHX4_2 = SHX13_2
                  SHX3_2 = SHX12_2
                  SHX14_2 = SHX11_2.name
                  SHX5_2 = SHX14_2 or SHX5_2
                  if not SHX14_2 then
                    SHX14_2 = SHX11_2.buyerId
                    SHX5_2 = SHX14_2 or SHX5_2
                    if not SHX14_2 then
                      SHX5_2 = "?"
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  if not SHX3_2 then
    SHX6_2 = notify
    SHX7_2 = "~r~No TrapNet buyer ped within 10m."
    SHX6_2(SHX7_2)
    return
  end
  if SHX1_2 then
    SHX6_2 = SHX1_2[1]
    if SHX6_2 then
      SHX6_2 = string
      SHX6_2 = SHX6_2.upper
      SHX7_2 = tostring
      SHX8_2 = SHX1_2[1]
      SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX7_2(SHX8_2)
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      if SHX6_2 then
        goto SHX_LABEL_79
      end
    end
  end
  SHX6_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_79:: outside nested blocks until all 'goto SHX_LABEL_79' can see it
  ::SHX_LABEL_79::
  if not SHX6_2 then
    SHX7_2 = notify
    SHX8_2 = "~r~Usage: /trapnetspeech <speech event name>"
    SHX7_2(SHX8_2)
    return
  end
  SHX7_2 = PlayPedAmbientSpeechNative
  SHX8_2 = SHX3_2
  SHX9_2 = SHX6_2
  SHX10_2 = SHX32_1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = notify
  SHX8_2 = "~g~Played \""
  SHX9_2 = SHX6_2
  SHX10_2 = "\" on "
  SHX11_2 = tostring
  SHX12_2 = SHX5_2
  SHX11_2 = SHX11_2(SHX12_2)
  SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2
  SHX7_2(SHX8_2)
end
SHX38_1 = true
SHX35_1(SHX36_1, SHX37_1, SHX38_1)
SHX35_1 = RegisterNetEvent
SHX36_1 = "CMG:trapNetContacts"
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX23_1 = SHX0_2
  SHX1_2 = SHX30_1
  SHX1_2()
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = CreateThread
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
    SHX0_2 = next
    SHX1_2 = SHX23_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = SHX30_1
      SHX0_2()
    end
  end
end
SHX35_1(SHX36_1)
SHX35_1 = AddEventHandler
SHX36_1 = "003eadf2da"
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_1.jobName
  if SHX0_2 == SHX1_2 then
    SHX1_2 = true
    SHX4_1 = SHX1_2
    SHX1_2 = SHX30_1
    SHX1_2()
  end
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = RegisterNetEvent
SHX36_1 = "f1dae6cf3d"
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_1.jobName
  if SHX0_2 == SHX1_2 then
    SHX1_2 = false
    SHX4_1 = SHX1_2
    SHX1_2 = SHX29_1
    SHX1_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.cancelJobTutorial
    SHX1_2()
  end
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = AddEventHandler
SHX36_1 = "CMG:onClientSpawn"
function SHX37_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "CMG:trapNetRequestContacts"
    SHX2_2(SHX3_2)
  end
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = {}
SHX36_1 = CreateThread
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = 200
    SHX0_2(SHX1_2)
    SHX0_2 = pairs
    SHX1_2 = SHX23_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = SHX5_2.netId
      if SHX6_2 then
        SHX6_2 = NetworkDoesNetworkIdExist
        SHX7_2 = SHX5_2.netId
        SHX6_2 = SHX6_2(SHX7_2)
        if SHX6_2 then
          SHX6_2 = NetToPed
          SHX7_2 = SHX5_2.netId
          SHX6_2 = SHX6_2(SHX7_2)
          SHX7_2 = NetworkGetEntityOwner
          SHX8_2 = SHX6_2
          SHX7_2 = SHX7_2(SHX8_2)
          SHX8_2 = PlayerId
          SHX8_2 = SHX8_2()
          SHX7_2 = SHX7_2 == SHX8_2
          if SHX6_2 then
            SHX8_2 = DoesEntityExist
            SHX9_2 = SHX6_2
            SHX8_2 = SHX8_2(SHX9_2)
            if SHX8_2 then
              SHX8_2 = SHX24_1
              SHX9_2 = SHX5_2
              SHX10_2 = SHX6_2
              SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
              if SHX8_2 then
                SHX8_2 = SetEntityInvincible
                SHX9_2 = SHX6_2
                SHX10_2 = true
                SHX8_2(SHX9_2, SHX10_2)
                SHX8_2 = FreezeEntityPosition
                SHX9_2 = SHX6_2
                SHX10_2 = true
                SHX8_2(SHX9_2, SHX10_2)
                if SHX7_2 then
                  SHX8_2 = SHX35_1
                  SHX8_2 = SHX8_2[SHX6_2]
                  if not SHX8_2 then
                    SHX8_2 = ClearPedTasksImmediately
                    SHX9_2 = SHX6_2
                    SHX8_2(SHX9_2)
                    SHX8_2 = SHX35_1
                    SHX8_2[SHX6_2] = true
                  end
                end
                SHX8_2 = SetEntityProofs
                SHX9_2 = SHX6_2
                SHX10_2 = true
                SHX11_2 = true
                SHX12_2 = true
                SHX13_2 = false
                SHX14_2 = true
                SHX15_2 = true
                SHX16_2 = true
                SHX17_2 = true
                SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
                SHX8_2 = SetPedDiesWhenInjured
                SHX9_2 = SHX6_2
                SHX10_2 = false
                SHX8_2(SHX9_2, SHX10_2)
                SHX8_2 = SetPedCanPlayAmbientAnims
                SHX9_2 = SHX6_2
                SHX10_2 = false
                SHX8_2(SHX9_2, SHX10_2)
                SHX8_2 = SetPedCanLosePropsOnDamage
                SHX9_2 = SHX6_2
                SHX10_2 = false
                SHX11_2 = 0
                SHX8_2(SHX9_2, SHX10_2, SHX11_2)
                SHX8_2 = SetPedRelationshipGroupHash
                SHX9_2 = SHX6_2
                SHX10_2 = 1862763509
                SHX8_2(SHX9_2, SHX10_2)
                SHX8_2 = SetBlockingOfNonTemporaryEvents
                SHX9_2 = SHX6_2
                SHX10_2 = true
                SHX8_2(SHX9_2, SHX10_2)
                SHX8_2 = SetPedCanRagdollFromPlayerImpact
                SHX9_2 = SHX6_2
                SHX10_2 = false
                SHX8_2(SHX9_2, SHX10_2)
              end
            end
          end
        end
      end
    end
  end
end
SHX36_1(SHX37_1)
SHX36_1 = CreateThread
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = 500
    SHX0_2(SHX1_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = nil
    SHX2_2 = pairs
    SHX3_2 = SHX23_1
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = nil
      SHX9_2 = SHX7_2.netId
      if SHX9_2 then
        SHX9_2 = NetworkDoesNetworkIdExist
        SHX10_2 = SHX7_2.netId
        SHX9_2 = SHX9_2(SHX10_2)
        if SHX9_2 then
          SHX9_2 = NetworkGetEntityFromNetworkId
          SHX10_2 = SHX7_2.netId
          SHX9_2 = SHX9_2(SHX10_2)
          if SHX9_2 and 0 ~= SHX9_2 then
            SHX10_2 = DoesEntityExist
            SHX11_2 = SHX9_2
            SHX10_2 = SHX10_2(SHX11_2)
            if SHX10_2 then
              SHX10_2 = SHX24_1
              SHX11_2 = SHX7_2
              SHX12_2 = SHX9_2
              SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
              if SHX10_2 then
                SHX10_2 = GetEntityCoords
                SHX11_2 = SHX9_2
                SHX10_2 = SHX10_2(SHX11_2)
                SHX8_2 = SHX10_2
              end
            end
          end
        end
      end
      if SHX8_2 then
        SHX9_2 = SHX0_2 - SHX8_2
        SHX9_2 = #SHX9_2
        if SHX9_2 < 3.0 then
          SHX1_2 = SHX6_2
          break
        end
      end
    end
    if SHX1_2 then
      while true do
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.getPlayerCoords
        SHX2_2 = SHX2_2()
        SHX3_2 = false
        SHX4_2 = nil
        SHX5_2 = nil
        SHX6_2 = pairs
        SHX7_2 = SHX23_1
        SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
        for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
          if SHX10_2 == SHX1_2 then
            SHX12_2 = nil
            SHX13_2 = SHX11_2.netId
            if SHX13_2 then
              SHX13_2 = NetworkDoesNetworkIdExist
              SHX14_2 = SHX11_2.netId
              SHX13_2 = SHX13_2(SHX14_2)
              if SHX13_2 then
                SHX13_2 = NetworkGetEntityFromNetworkId
                SHX14_2 = SHX11_2.netId
                SHX13_2 = SHX13_2(SHX14_2)
                if SHX13_2 and 0 ~= SHX13_2 then
                  SHX14_2 = DoesEntityExist
                  SHX15_2 = SHX13_2
                  SHX14_2 = SHX14_2(SHX15_2)
                  if SHX14_2 then
                    SHX14_2 = SHX24_1
                    SHX15_2 = SHX11_2
                    SHX16_2 = SHX13_2
                    SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
                    if SHX14_2 then
                      SHX14_2 = GetEntityCoords
                      SHX15_2 = SHX13_2
                      SHX14_2 = SHX14_2(SHX15_2)
                      SHX12_2 = SHX14_2
                      SHX5_2 = SHX13_2
                    end
                  end
                end
              end
            end
            if SHX12_2 then
              SHX13_2 = SHX2_2 - SHX12_2
              SHX13_2 = #SHX13_2
              if SHX13_2 < 3.0 then
                SHX3_2 = true
                SHX4_2 = SHX12_2
              end
            end
            break
          end
        end
        if not SHX3_2 then
          break
        end
        if SHX5_2 and 0 ~= SHX5_2 then
          SHX6_2 = DoesEntityExist
          SHX7_2 = SHX5_2
          SHX6_2 = SHX6_2(SHX7_2)
          if SHX6_2 then
            SHX6_2 = GetGameTimer
            SHX6_2 = SHX6_2()
            SHX7_2 = SHX33_1
            SHX7_2 = SHX6_2 - SHX7_2
            SHX8_2 = SHX34_1
            if SHX7_2 >= SHX8_2 then
              SHX33_1 = SHX6_2
              SHX7_2 = math
              SHX7_2 = SHX7_2.random
              SHX8_2 = 1
              SHX9_2 = SHX31_1
              SHX9_2 = #SHX9_2
              SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
              SHX8_2 = SHX31_1
              SHX7_2 = SHX8_2[SHX7_2]
              SHX8_2 = PlayPedAmbientSpeechNative
              SHX9_2 = SHX5_2
              SHX10_2 = SHX7_2
              SHX11_2 = SHX32_1
              SHX8_2(SHX9_2, SHX10_2, SHX11_2)
            end
          end
        end
        if SHX4_2 then
          SHX6_2 = CMG
          SHX6_2 = SHX6_2.DrawText3D
          SHX7_2 = SHX4_2
          SHX8_2 = "Press [E] to sell"
          SHX9_2 = 0.35
          SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        end
        SHX6_2 = IsControlJustPressed
        SHX7_2 = 0
        SHX8_2 = 38
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        if SHX6_2 then
          SHX6_2 = IsPedInAnyVehicle
          SHX7_2 = PlayerPedId
          SHX7_2 = SHX7_2()
          SHX8_2 = false
          SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
          if SHX6_2 then
            SHX6_2 = notify
            SHX7_2 = "~r~You cannot sell from a vehicle."
            SHX6_2(SHX7_2)
          else
            SHX6_2 = TriggerServerEvent
            SHX7_2 = "572bfc71c7"
            SHX8_2 = SHX1_2
            SHX6_2(SHX7_2, SHX8_2)
            break
          end
        end
        SHX6_2 = Wait
        SHX7_2 = 0
        SHX6_2(SHX7_2)
      end
    end
  end
end
SHX36_1(SHX37_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "fac711d56b"
function SHX38_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = 0
  if SHX0_2 then
    SHX5_2 = NetworkDoesNetworkIdExist
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = NetToPed
      SHX6_2 = SHX0_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX4_2 = SHX5_2
    end
  end
  SHX5_2 = 1.0
  if SHX4_2 and 0 ~= SHX4_2 then
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX4_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = GetEntityCoords
      SHX7_2 = SHX4_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX7_2 = GetEntityCoords
      SHX8_2 = SHX3_2
      SHX7_2 = SHX7_2(SHX8_2)
      SHX8_2 = SHX7_2.x
      SHX9_2 = SHX6_2.x
      SHX8_2 = SHX8_2 - SHX9_2
      SHX9_2 = SHX7_2.y
      SHX10_2 = SHX6_2.y
      SHX9_2 = SHX9_2 - SHX10_2
      SHX10_2 = math
      SHX10_2 = SHX10_2.sqrt
      SHX11_2 = SHX8_2 * SHX8_2
      SHX12_2 = SHX9_2 * SHX9_2
      SHX11_2 = SHX11_2 + SHX12_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = 0.01
      if SHX10_2 > SHX11_2 then
        SHX11_2 = SHX5_2 / SHX10_2
        SHX12_2 = SHX6_2.x
        SHX13_2 = SHX8_2 * SHX11_2
        SHX12_2 = SHX12_2 + SHX13_2
        SHX13_2 = SHX6_2.y
        SHX14_2 = SHX9_2 * SHX11_2
        SHX13_2 = SHX13_2 + SHX14_2
        SHX14_2 = SetEntityCoords
        SHX15_2 = SHX3_2
        SHX16_2 = SHX12_2
        SHX17_2 = SHX13_2
        SHX18_2 = SHX7_2.z
        SHX18_2 = SHX18_2 - 1
        SHX19_2 = false
        SHX20_2 = false
        SHX21_2 = false
        SHX22_2 = false
        SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      end
      SHX11_2 = GetEntityCoords
      SHX12_2 = SHX3_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX7_2 = SHX11_2
      SHX11_2 = SHX6_2.x
      SHX12_2 = SHX7_2.x
      SHX11_2 = SHX11_2 - SHX12_2
      SHX12_2 = SHX6_2.y
      SHX13_2 = SHX7_2.y
      SHX12_2 = SHX12_2 - SHX13_2
      SHX13_2 = SHX11_2 * SHX11_2
      SHX14_2 = SHX12_2 * SHX12_2
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = 1.0E-4
      if SHX13_2 > SHX14_2 then
        SHX13_2 = SetEntityHeading
        SHX14_2 = SHX3_2
        SHX15_2 = GetHeadingFromVector_2d
        SHX16_2 = SHX11_2
        SHX17_2 = SHX12_2
        SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX15_2(SHX16_2, SHX17_2)
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
      end
    end
  end
  SHX6_2 = SHX0_1.items
  if SHX6_2 then
    SHX6_2 = SHX0_1.items
    SHX6_2 = SHX6_2[SHX1_2]
  end
  SHX7_2 = SHX6_2 or SHX7_2
  if SHX6_2 then
    SHX7_2 = SHX6_2.model
  end
  SHX8_2 = SHX7_2 or SHX8_2
  if SHX7_2 then
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.loadModel
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
  end
  if not SHX8_2 then
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.warn
    SHX10_2 = "Failed to load model for trap net sell animation:"
    SHX11_2 = SHX7_2
    SHX9_2(SHX10_2, SHX11_2)
    return
  end
  SHX9_2 = tCMG
  SHX9_2 = SHX9_2.setCanAnim
  SHX10_2 = false
  SHX9_2(SHX10_2)
  SHX9_2 = GetEntityCoords
  SHX10_2 = SHX3_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = CreateObject
  SHX11_2 = SHX8_2
  SHX12_2 = SHX9_2.x
  SHX13_2 = SHX9_2.y
  SHX14_2 = SHX9_2.z
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX11_2 = SetEntityAsMissionEntity
  SHX12_2 = SHX10_2
  SHX13_2 = true
  SHX14_2 = true
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = AttachEntityToEntity
  SHX12_2 = SHX10_2
  SHX13_2 = SHX3_2
  SHX14_2 = GetPedBoneIndex
  SHX15_2 = SHX3_2
  SHX16_2 = 57005
  SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
  SHX15_2 = 0.13
  SHX16_2 = 0.0
  SHX17_2 = 0.0
  SHX18_2 = -90.0
  SHX19_2 = 0.0
  SHX20_2 = 0.0
  SHX21_2 = true
  SHX22_2 = true
  SHX23_2 = false
  SHX24_2 = true
  SHX25_2 = 1
  SHX26_2 = true
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.loadAnimDict
  SHX12_2 = "mp_common"
  SHX11_2(SHX12_2)
  SHX11_2 = TaskPlayAnim
  SHX12_2 = SHX3_2
  SHX13_2 = "mp_common"
  SHX14_2 = "givetake1_a"
  SHX15_2 = 8.0
  SHX16_2 = -8.0
  SHX17_2 = 3500
  SHX18_2 = 0
  SHX19_2 = 0
  SHX20_2 = false
  SHX21_2 = false
  SHX22_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX11_2 = Wait
  SHX12_2 = 1400
  SHX11_2(SHX12_2)
  SHX11_2 = DoesEntityExist
  SHX12_2 = SHX10_2
  SHX11_2 = SHX11_2(SHX12_2)
  if SHX11_2 then
    SHX11_2 = DetachEntity
    SHX12_2 = SHX10_2
    SHX13_2 = true
    SHX14_2 = true
    SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    SHX11_2 = DeleteEntity
    SHX12_2 = SHX10_2
    SHX11_2(SHX12_2)
  end
  SHX11_2 = Wait
  SHX12_2 = 1500
  SHX11_2(SHX12_2)
  SHX11_2 = SetModelAsNoLongerNeeded
  SHX12_2 = SHX8_2
  SHX11_2(SHX12_2)
  SHX11_2 = StopAnimTask
  SHX12_2 = SHX3_2
  SHX13_2 = "mp_common"
  SHX14_2 = "givetake1_a"
  SHX15_2 = 1.0
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX11_2 = tCMG
  SHX11_2 = SHX11_2.setCanAnim
  SHX12_2 = true
  SHX11_2(SHX12_2)
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.addJobTutorialProgress
  SHX12_2 = "make_the_deal"
  SHX13_2 = 1
  SHX11_2(SHX12_2, SHX13_2)
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "af7138ba82"
function SHX38_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  if SHX0_2 then
    SHX4_2 = NetworkDoesNetworkIdExist
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX4_2 = NetToPed
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 and 0 ~= SHX4_2 then
    SHX5_2 = DoesEntityExist
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      goto SHX_LABEL_22
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  SHX5_2 = NetworkHasControlOfEntity
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    return
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.loadAnimDict
  SHX7_2 = "mp_common"
  SHX6_2(SHX7_2)
  SHX6_2 = TaskPlayAnim
  SHX7_2 = SHX4_2
  SHX8_2 = "mp_common"
  SHX9_2 = "givetake2_a"
  SHX10_2 = 8.0
  SHX11_2 = -8.0
  SHX12_2 = 3500
  SHX13_2 = 0
  SHX14_2 = 0
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX6_2 = nil
  SHX7_2 = SHX0_1.items
  if SHX7_2 then
    SHX7_2 = SHX0_1.items
    SHX7_2 = SHX7_2[SHX2_2]
  end
  SHX8_2 = SHX7_2 or SHX8_2
  if SHX7_2 then
    SHX8_2 = SHX7_2.model
  end
  SHX9_2 = SHX8_2 or SHX9_2
  if SHX8_2 then
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.loadModel
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
  end
  if SHX9_2 then
    SHX10_2 = Wait
    SHX11_2 = 1400
    SHX10_2(SHX11_2)
    SHX10_2 = GetEntityCoords
    SHX11_2 = SHX4_2
    SHX10_2 = SHX10_2(SHX11_2)
    SHX11_2 = CreateObject
    SHX12_2 = SHX9_2
    SHX13_2 = SHX10_2.x
    SHX14_2 = SHX10_2.y
    SHX15_2 = SHX10_2.z
    SHX15_2 = SHX15_2 + 0.5
    SHX16_2 = false
    SHX17_2 = false
    SHX18_2 = false
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX6_2 = SHX11_2
    if SHX6_2 then
      SHX11_2 = DoesEntityExist
      SHX12_2 = SHX6_2
      SHX11_2 = SHX11_2(SHX12_2)
      if SHX11_2 then
        SHX11_2 = SetEntityAsMissionEntity
        SHX12_2 = SHX6_2
        SHX13_2 = true
        SHX14_2 = true
        SHX11_2(SHX12_2, SHX13_2, SHX14_2)
        SHX11_2 = SetEntityCollision
        SHX12_2 = SHX6_2
        SHX13_2 = false
        SHX14_2 = false
        SHX11_2(SHX12_2, SHX13_2, SHX14_2)
        SHX11_2 = AttachEntityToEntity
        SHX12_2 = SHX6_2
        SHX13_2 = SHX4_2
        SHX14_2 = GetPedBoneIndex
        SHX15_2 = SHX4_2
        SHX16_2 = 57005
        SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
        SHX15_2 = 0.1
        SHX16_2 = 0.02
        SHX17_2 = 0.0
        SHX18_2 = -90.0
        SHX19_2 = 0.0
        SHX20_2 = 0.0
        SHX21_2 = true
        SHX22_2 = true
        SHX23_2 = false
        SHX24_2 = true
        SHX25_2 = 1
        SHX26_2 = true
        SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
      end
    end
  end
  SHX10_2 = Wait
  SHX11_2 = 3000
  SHX10_2(SHX11_2)
  if SHX6_2 then
    SHX10_2 = DoesEntityExist
    SHX11_2 = SHX6_2
    SHX10_2 = SHX10_2(SHX11_2)
    if SHX10_2 then
      SHX10_2 = DeleteEntity
      SHX11_2 = SHX6_2
      SHX10_2(SHX11_2)
    end
  end
  if SHX9_2 then
    SHX10_2 = SetModelAsNoLongerNeeded
    SHX11_2 = SHX9_2
    SHX10_2(SHX11_2)
  end
  SHX10_2 = PlayPedAmbientSpeechNative
  SHX11_2 = SHX4_2
  SHX12_2 = "GENERIC_THANKS"
  SHX13_2 = SHX32_1
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = Wait
  SHX11_2 = 1200
  SHX10_2(SHX11_2)
  SHX10_2 = ClearPedTasks
  SHX11_2 = SHX4_2
  SHX10_2(SHX11_2)
  SHX10_2 = ClearPedSecondaryTask
  SHX11_2 = SHX4_2
  SHX10_2(SHX11_2)
  SHX10_2 = FreezeEntityPosition
  SHX11_2 = SHX4_2
  SHX12_2 = false
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.loadAnimDict
  SHX11_2 = "amb@world_human_smoking@male@male_a@enter"
  SHX10_2(SHX11_2)
  SHX10_2 = TaskPlayAnim
  SHX11_2 = SHX4_2
  SHX12_2 = "amb@world_human_smoking@male@male_a@enter"
  SHX13_2 = "enter"
  SHX14_2 = 2.0
  SHX15_2 = 2.0
  SHX16_2 = -1
  SHX17_2 = 1
  SHX18_2 = 1.0
  SHX19_2 = false
  SHX20_2 = false
  SHX21_2 = false
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX10_2 = Wait
  SHX11_2 = 1500
  SHX10_2(SHX11_2)
  SHX10_2 = GetHashKey
  SHX11_2 = "prop_sh_joint_01"
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = HasModelLoaded
  SHX12_2 = SHX10_2
  SHX11_2 = SHX11_2(SHX12_2)
  if not SHX11_2 then
    SHX11_2 = RequestModel
    SHX12_2 = SHX10_2
    SHX11_2(SHX12_2)
    SHX11_2 = 0
    while true do
      SHX12_2 = HasModelLoaded
      SHX13_2 = SHX10_2
      SHX12_2 = SHX12_2(SHX13_2)
      if SHX12_2 then
        break
      end
      SHX12_2 = 300
      if not (SHX11_2 < SHX12_2) then
        break
      end
      SHX12_2 = Wait
      SHX13_2 = 10
      SHX12_2(SHX13_2)
      SHX11_2 = SHX11_2 + 1
    end
  end
  SHX11_2 = nil
  SHX12_2 = HasModelLoaded
  SHX13_2 = SHX10_2
  SHX12_2 = SHX12_2(SHX13_2)
  if SHX12_2 then
    SHX12_2 = GetEntityCoords
    SHX13_2 = SHX4_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.requestEntitySpawn
    SHX14_2 = "drugspack_prop"
    SHX15_2 = "weed_joint"
    SHX13_2(SHX14_2, SHX15_2)
    SHX13_2 = CreateObject
    SHX14_2 = SHX10_2
    SHX15_2 = SHX12_2.x
    SHX16_2 = SHX12_2.y
    SHX17_2 = SHX12_2.z
    SHX18_2 = true
    SHX19_2 = true
    SHX20_2 = false
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX11_2 = SHX13_2
    if SHX11_2 then
      SHX13_2 = DoesEntityExist
      SHX14_2 = SHX11_2
      SHX13_2 = SHX13_2(SHX14_2)
      if SHX13_2 then
        SHX13_2 = SetEntityAsMissionEntity
        SHX14_2 = SHX11_2
        SHX15_2 = true
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = AttachEntityToEntity
        SHX14_2 = SHX11_2
        SHX15_2 = SHX4_2
        SHX16_2 = GetPedBoneIndex
        SHX17_2 = SHX4_2
        SHX18_2 = 57005
        SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
        SHX17_2 = 0.1346
        SHX18_2 = 0.0588
        SHX19_2 = -0.0286
        SHX20_2 = 0
        SHX21_2 = 0
        SHX22_2 = 64.6817
        SHX23_2 = true
        SHX24_2 = true
        SHX25_2 = false
        SHX26_2 = true
        SHX27_2 = 1
        SHX28_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      end
    end
  end
  SHX12_2 = Wait
  SHX13_2 = 1200
  SHX12_2(SHX13_2)
  if SHX11_2 then
    SHX12_2 = DoesEntityExist
    SHX13_2 = SHX11_2
    SHX12_2 = SHX12_2(SHX13_2)
    if SHX12_2 then
      SHX12_2 = DetachEntity
      SHX13_2 = SHX11_2
      SHX14_2 = false
      SHX15_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      SHX12_2 = AttachEntityToEntity
      SHX13_2 = SHX11_2
      SHX14_2 = SHX4_2
      SHX15_2 = GetPedBoneIndex
      SHX16_2 = SHX4_2
      SHX17_2 = 12844
      SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
      SHX16_2 = -0.0177
      SHX17_2 = 0.1061
      SHX18_2 = 0.0066
      SHX19_2 = 0.0
      SHX20_2 = 0.0
      SHX21_2 = -87.421
      SHX22_2 = true
      SHX23_2 = true
      SHX24_2 = false
      SHX25_2 = true
      SHX26_2 = 1
      SHX27_2 = true
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
    end
  end
  SHX12_2 = Wait
  SHX13_2 = 3000
  SHX12_2(SHX13_2)
  SHX12_2 = SendNUIMessage
  SHX13_2 = {}
  SHX13_2.transactionType = "lighter"
  SHX12_2(SHX13_2)
  SHX12_2 = Wait
  SHX13_2 = 500
  SHX12_2(SHX13_2)
  if SHX11_2 then
    SHX12_2 = DoesEntityExist
    SHX13_2 = SHX11_2
    SHX12_2 = SHX12_2(SHX13_2)
    if SHX12_2 then
      SHX12_2 = TriggerServerEvent
      SHX13_2 = "joint:triggerPropFx"
      SHX14_2 = NetworkGetNetworkIdFromEntity
      SHX15_2 = SHX11_2
      SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX14_2(SHX15_2)
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
    end
  end
  SHX12_2 = Wait
  SHX13_2 = 1500
  SHX12_2(SHX13_2)
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.loadAnimDict
  SHX13_2 = "timetable@gardener@smoking_joint"
  SHX12_2(SHX13_2)
  SHX12_2 = TaskPlayAnim
  SHX13_2 = SHX4_2
  SHX14_2 = "timetable@gardener@smoking_joint"
  SHX15_2 = "smoke_idle"
  SHX16_2 = 2.0
  SHX17_2 = 2.0
  SHX18_2 = -1
  SHX19_2 = 1
  SHX20_2 = 1.0
  SHX21_2 = false
  SHX22_2 = false
  SHX23_2 = false
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX12_2 = Wait
  SHX13_2 = 2000
  SHX12_2(SHX13_2)
  if SHX11_2 then
    SHX12_2 = DoesEntityExist
    SHX13_2 = SHX11_2
    SHX12_2 = SHX12_2(SHX13_2)
    if SHX12_2 then
      SHX12_2 = DetachEntity
      SHX13_2 = SHX11_2
      SHX14_2 = false
      SHX15_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      SHX12_2 = AttachEntityToEntity
      SHX13_2 = SHX11_2
      SHX14_2 = SHX4_2
      SHX15_2 = GetPedBoneIndex
      SHX16_2 = SHX4_2
      SHX17_2 = 57005
      SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
      SHX16_2 = 0.1346
      SHX17_2 = 0.0588
      SHX18_2 = -0.0286
      SHX19_2 = 0
      SHX20_2 = 0
      SHX21_2 = 64.6817
      SHX22_2 = true
      SHX23_2 = true
      SHX24_2 = false
      SHX25_2 = true
      SHX26_2 = 1
      SHX27_2 = true
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
    end
  end
  SHX12_2 = Wait
  SHX13_2 = 10000
  SHX12_2(SHX13_2)
  SHX12_2 = ClearPedTasks
  SHX13_2 = SHX4_2
  SHX12_2(SHX13_2)
  SHX12_2 = FreezeEntityPosition
  SHX13_2 = SHX4_2
  SHX14_2 = true
  SHX12_2(SHX13_2, SHX14_2)
  if SHX11_2 then
    SHX12_2 = DoesEntityExist
    SHX13_2 = SHX11_2
    SHX12_2 = SHX12_2(SHX13_2)
    if SHX12_2 then
      SHX12_2 = TriggerServerEvent
      SHX13_2 = "joint:stopPropFx"
      SHX14_2 = NetworkGetNetworkIdFromEntity
      SHX15_2 = SHX11_2
      SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX14_2(SHX15_2)
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      SHX12_2 = DeleteEntity
      SHX13_2 = SHX11_2
      SHX12_2(SHX13_2)
    end
  end
  SHX12_2 = SetModelAsNoLongerNeeded
  SHX13_2 = SHX10_2
  SHX12_2(SHX13_2)
  if SHX1_2 then
    SHX12_2 = TriggerServerEvent
    SHX13_2 = "4d804f2d87"
    SHX14_2 = SHX1_2
    SHX12_2(SHX13_2, SHX14_2)
  end
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "8652dfb7b4"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = 0
  if SHX0_2 then
    SHX2_2 = NetworkDoesNetworkIdExist
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = NetToPed
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      SHX1_2 = SHX2_2
    end
  end
  SHX2_2 = PlayPedAmbientSpeechNative
  SHX3_2 = SHX1_2
  SHX4_2 = "GENERIC_NO"
  SHX5_2 = SHX32_1
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = CMG
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_1.NPCs
  SHX1_2 = SHX1_2[SHX0_2]
  return SHX1_2
end
SHX36_1.getTrapperNPC = SHX37_1
SHX36_1 = exports
SHX37_1 = "getTrapperNPC"
SHX38_1 = CMG
SHX38_1 = SHX38_1.getTrapperNPC
SHX36_1(SHX37_1, SHX38_1)
function SHX36_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.rad
  SHX2_2 = SHX0_2.z
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.rad
  SHX3_2 = SHX0_2.x
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = math
  SHX3_2 = SHX3_2.abs
  SHX4_2 = math
  SHX4_2 = SHX4_2.cos
  SHX5_2 = SHX2_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = vector3
  SHX5_2 = math
  SHX5_2 = SHX5_2.sin
  SHX6_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX5_2 = -SHX5_2
  SHX5_2 = SHX5_2 * SHX3_2
  SHX6_2 = math
  SHX6_2 = SHX6_2.cos
  SHX7_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX6_2 = SHX6_2 * SHX3_2
  SHX7_2 = math
  SHX7_2 = SHX7_2.sin
  SHX8_2 = SHX2_2
  SHX7_2, SHX8_2 = SHX7_2(SHX8_2)
  return SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
function SHX37_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX3_2 = GetGameplayCamCoord
  SHX3_2 = SHX3_2()
  SHX4_2 = GetGameplayCamRot
  SHX5_2 = 2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX36_1
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SHX5_2 * SHX0_2
  SHX6_2 = SHX3_2 + SHX6_2
  SHX7_2 = StartShapeTestRay
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX3_2.z
  SHX11_2 = SHX6_2.x
  SHX12_2 = SHX6_2.y
  SHX13_2 = SHX6_2.z
  SHX14_2 = SHX1_2 or SHX14_2
  if not SHX1_2 then
    SHX14_2 = -1
  end
  SHX15_2 = SHX2_2 or SHX15_2
  if not SHX2_2 then
    SHX15_2 = 0
  end
  SHX16_2 = 7
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX8_2 = GetShapeTestResult
  SHX9_2 = SHX7_2
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX8_2(SHX9_2)
  SHX13_2 = 1 == SHX9_2
  SHX14_2 = SHX10_2
  SHX15_2 = SHX11_2
  SHX16_2 = SHX12_2
  return SHX13_2, SHX14_2, SHX15_2, SHX16_2
end
function SHX38_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SetEntityCollision
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetEntityInvincible
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetEntityAlpha
  SHX3_2 = SHX0_2
  if SHX1_2 then
    SHX4_2 = 180
    if SHX4_2 then
      goto SHX_LABEL_22
    end
  end
  SHX4_2 = 90
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX39_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  SHX1_2 = 0
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = {}
  SHX2_2 = SHX0_2
  while 0 ~= SHX2_2 do
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 then
      break
    end
    SHX3_2 = SHX1_2[SHX2_2]
    if SHX3_2 then
      break
    end
    SHX1_2[SHX2_2] = true
    SHX3_2 = GetEntityAttachedTo
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 or 0 == SHX3_2 then
      return SHX2_2
    end
    SHX2_2 = SHX3_2
  end
  return SHX2_2
end
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  if not SHX0_2 or 0 == SHX0_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = pairs
  SHX2_2 = SHX10_1.objects
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX6_2 then
      SHX7_2 = SHX6_2.object
      if SHX7_2 then
        SHX7_2 = DoesEntityExist
        SHX8_2 = SHX6_2.object
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = SHX6_2.object
          if SHX7_2 == SHX0_2 then
            SHX7_2 = true
            return SHX7_2
          end
        end
      end
    end
    if SHX6_2 then
      SHX7_2 = SHX6_2.extraObjects
      if SHX7_2 then
        SHX7_2 = ipairs
        SHX8_2 = SHX6_2.extraObjects
        SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
        for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
          if SHX12_2 then
            SHX13_2 = DoesEntityExist
            SHX14_2 = SHX12_2
            SHX13_2 = SHX13_2(SHX14_2)
            if SHX13_2 and SHX12_2 == SHX0_2 then
              SHX13_2 = true
              return SHX13_2
            end
          end
        end
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX41_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if not SHX0_2 then
    SHX3_2 = false
    return SHX3_2
  end
  if SHX2_2 and 0 ~= SHX2_2 then
    SHX3_2 = GetEntityType
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if 1 == SHX3_2 or 2 == SHX3_2 then
      SHX4_2 = false
      return SHX4_2
    end
  end
  SHX3_2 = SHX0_1.placeMinFloorDot
  if not SHX3_2 then
    SHX3_2 = 0.88
  end
  if SHX1_2 then
    SHX4_2 = SHX1_2.z
    if SHX4_2 then
      goto SHX_LABEL_28
    end
  end
  SHX4_2 = 0.0
  -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
  ::SHX_LABEL_28::
  if SHX3_2 > SHX4_2 then
    SHX5_2 = false
    return SHX5_2
  end
  SHX5_2 = SHX39_1
  SHX6_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SHX10_1.shellObject
  SHX7_2 = SHX40_1
  SHX8_2 = SHX5_2
  SHX7_2 = SHX7_2(SHX8_2)
  if SHX7_2 then
    SHX7_2 = false
    return SHX7_2
  end
  if SHX6_2 then
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      if SHX5_2 == SHX6_2 or SHX2_2 == SHX6_2 then
        SHX7_2 = true
        return SHX7_2
      end
      if (not SHX2_2 or 0 == SHX2_2) and 0 == SHX5_2 then
        SHX7_2 = true
        return SHX7_2
      end
      if 0 ~= SHX5_2 and SHX5_2 ~= SHX6_2 then
        SHX7_2 = false
        return SHX7_2
      end
      SHX7_2 = true
      return SHX7_2
    end
  end
  SHX7_2 = (not SHX2_2 or 0 == SHX2_2) and 0 == SHX5_2
  return SHX7_2
end
function SHX42_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = GetModelDimensions
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  SHX3_2 = SHX2_2.x
  SHX4_2 = SHX1_2.x
  SHX3_2 = SHX3_2 - SHX4_2
  SHX4_2 = SHX2_2.y
  SHX5_2 = SHX1_2.y
  SHX4_2 = SHX4_2 - SHX5_2
  SHX5_2 = SHX2_2.z
  SHX6_2 = SHX1_2.z
  SHX5_2 = SHX5_2 - SHX6_2
  SHX6_2 = math
  SHX6_2 = SHX6_2.max
  SHX7_2 = SHX3_2
  SHX8_2 = SHX4_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SHX6_2 * 0.5
  SHX7_2 = math
  SHX7_2 = SHX7_2.max
  SHX8_2 = SHX6_2 * 0.65
  SHX9_2 = 0.12
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX6_2 = SHX7_2
  SHX7_2 = math
  SHX7_2 = SHX7_2.max
  SHX8_2 = SHX5_2 * 0.5
  SHX9_2 = 0.1
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = SHX6_2
  SHX9_2 = SHX7_2
  return SHX8_2, SHX9_2
end
function SHX43_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX10_2 = StartShapeTestCapsule
  SHX11_2 = SHX0_2
  SHX12_2 = SHX1_2
  SHX13_2 = SHX2_2
  SHX14_2 = SHX3_2
  SHX15_2 = SHX4_2
  SHX16_2 = SHX5_2
  SHX17_2 = SHX6_2
  SHX18_2 = SHX7_2
  SHX19_2 = SHX8_2 or SHX19_2
  if not SHX8_2 then
    SHX19_2 = 0
  end
  SHX20_2 = SHX9_2 or SHX20_2
  if not SHX9_2 then
    SHX20_2 = 7
  end
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX11_2 = 1
  SHX12_2 = 6
  SHX13_2 = 1
  for SHX14_2 = SHX11_2, SHX12_2, SHX13_2 do
    SHX15_2 = GetShapeTestResult
    SHX16_2 = SHX10_2
    SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX15_2(SHX16_2)
    if 2 == SHX15_2 then
      SHX20_2 = 1 == SHX16_2
      SHX21_2 = SHX19_2
      return SHX20_2, SHX21_2
    end
    SHX20_2 = Wait
    SHX21_2 = 0
    SHX20_2(SHX21_2)
  end
  SHX11_2 = GetShapeTestResult
  SHX12_2 = SHX10_2
  SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX11_2(SHX12_2)
  SHX16_2 = 1 == SHX12_2
  SHX17_2 = SHX15_2
  return SHX16_2, SHX17_2
end
function SHX44_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX8_2 = StartShapeTestRay
  SHX9_2 = SHX0_2
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = SHX6_2
  SHX16_2 = SHX7_2 or SHX16_2
  if not SHX7_2 then
    SHX16_2 = 0
  end
  SHX17_2 = 7
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX9_2 = 1
  SHX10_2 = 6
  SHX11_2 = 1
  for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
    SHX13_2 = GetShapeTestResult
    SHX14_2 = SHX8_2
    SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX13_2(SHX14_2)
    if 2 == SHX13_2 then
      if 1 ~= SHX14_2 then
        SHX18_2 = false
        SHX19_2 = nil
        SHX20_2 = 0
        SHX21_2 = 0.0
        return SHX18_2, SHX19_2, SHX20_2, SHX21_2
      end
      SHX18_2 = vector3
      SHX19_2 = SHX0_2
      SHX20_2 = SHX1_2
      SHX21_2 = SHX2_2
      SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2)
      SHX18_2 = SHX18_2 - SHX15_2
      SHX18_2 = #SHX18_2
      SHX19_2 = true
      SHX20_2 = SHX15_2
      SHX21_2 = SHX17_2
      SHX22_2 = SHX18_2
      return SHX19_2, SHX20_2, SHX21_2, SHX22_2
    end
    SHX18_2 = Wait
    SHX19_2 = 0
    SHX18_2(SHX19_2)
  end
  SHX9_2 = GetShapeTestResult
  SHX10_2 = SHX8_2
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2)
  if 1 ~= SHX10_2 then
    SHX14_2 = false
    SHX15_2 = nil
    SHX16_2 = 0
    SHX17_2 = 0.0
    return SHX14_2, SHX15_2, SHX16_2, SHX17_2
  end
  SHX14_2 = vector3
  SHX15_2 = SHX0_2
  SHX16_2 = SHX1_2
  SHX17_2 = SHX2_2
  SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
  SHX14_2 = SHX14_2 - SHX11_2
  SHX14_2 = #SHX14_2
  SHX15_2 = true
  SHX16_2 = SHX11_2
  SHX17_2 = SHX13_2
  SHX18_2 = SHX14_2
  return SHX15_2, SHX16_2, SHX17_2, SHX18_2
end
function SHX45_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.sqrt
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.x
  SHX2_2 = SHX2_2 * SHX3_2
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.y
  SHX3_2 = SHX3_2 * SHX4_2
  SHX2_2 = SHX2_2 + SHX3_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = 1.0E-4
  if SHX1_2 < SHX2_2 then
    SHX2_2 = vector3
    SHX3_2 = 0.0
    SHX4_2 = 0.0
    SHX5_2 = 0.0
    return SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
  SHX2_2 = vector3
  SHX3_2 = SHX0_2.x
  SHX3_2 = SHX3_2 / SHX1_2
  SHX4_2 = SHX0_2.y
  SHX4_2 = SHX4_2 / SHX1_2
  SHX5_2 = 0.0
  return SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.rad
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.sin
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = -SHX2_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.cos
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.cos
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = math
  SHX5_2 = SHX5_2.sin
  SHX6_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = math
  SHX6_2 = SHX6_2.sqrt
  SHX7_2 = SHX2_2 * SHX2_2
  SHX8_2 = SHX3_2 * SHX3_2
  SHX7_2 = SHX7_2 + SHX8_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = 1.0E-4
  if SHX6_2 > SHX7_2 then
    SHX7_2 = SHX2_2 / SHX6_2
    if SHX7_2 then
      goto SHX_LABEL_39
    end
  end
  SHX7_2 = 0.0
  -- [FIX IF ERROR] Move ::SHX_LABEL_39:: outside nested blocks until all 'goto SHX_LABEL_39' can see it
  ::SHX_LABEL_39::
  SHX8_2 = 1.0E-4
  if SHX6_2 > SHX8_2 then
    SHX8_2 = SHX3_2 / SHX6_2
    if SHX8_2 then
      goto SHX_LABEL_47
    end
  end
  SHX8_2 = 0.0
  -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
  ::SHX_LABEL_47::
  SHX9_2 = math
  SHX9_2 = SHX9_2.sqrt
  SHX10_2 = SHX4_2 * SHX4_2
  SHX11_2 = SHX5_2 * SHX5_2
  SHX10_2 = SHX10_2 + SHX11_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = 1.0E-4
  if SHX9_2 > SHX10_2 then
    SHX10_2 = SHX4_2 / SHX9_2
    if SHX10_2 then
      goto SHX_LABEL_64
    end
  end
  SHX10_2 = 0.0
  -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
  ::SHX_LABEL_64::
  SHX11_2 = 1.0E-4
  if SHX9_2 > SHX11_2 then
    SHX11_2 = SHX5_2 / SHX9_2
    if SHX11_2 then
      goto SHX_LABEL_72
    end
  end
  SHX11_2 = 0.0
  -- [FIX IF ERROR] Move ::SHX_LABEL_72:: outside nested blocks until all 'goto SHX_LABEL_72' can see it
  ::SHX_LABEL_72::
  SHX12_2 = SHX45_1
  SHX13_2 = vector3
  SHX14_2 = SHX7_2 + SHX10_2
  SHX15_2 = SHX8_2 + SHX11_2
  SHX16_2 = 0.0
  SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX13_2 = SHX45_1
  SHX14_2 = vector3
  SHX15_2 = SHX7_2 - SHX10_2
  SHX16_2 = SHX8_2 - SHX11_2
  SHX17_2 = 0.0
  SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX14_2 = SHX45_1
  SHX15_2 = vector3
  SHX16_2 = -SHX7_2
  SHX16_2 = SHX16_2 + SHX10_2
  SHX17_2 = -SHX8_2
  SHX17_2 = SHX17_2 + SHX11_2
  SHX18_2 = 0.0
  SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
  SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX15_2 = SHX45_1
  SHX16_2 = vector3
  SHX17_2 = -SHX7_2
  SHX17_2 = SHX17_2 - SHX10_2
  SHX18_2 = -SHX8_2
  SHX18_2 = SHX18_2 - SHX11_2
  SHX19_2 = 0.0
  SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2)
  SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX16_2 = {}
  SHX17_2 = vector3
  SHX18_2 = SHX7_2
  SHX19_2 = SHX8_2
  SHX20_2 = 0.0
  SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2)
  SHX18_2 = vector3
  SHX19_2 = -SHX7_2
  SHX20_2 = -SHX8_2
  SHX21_2 = 0.0
  SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2)
  SHX19_2 = vector3
  SHX20_2 = SHX10_2
  SHX21_2 = SHX11_2
  SHX22_2 = 0.0
  SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2)
  SHX20_2 = vector3
  SHX21_2 = -SHX10_2
  SHX22_2 = -SHX11_2
  SHX23_2 = 0.0
  SHX20_2 = SHX20_2(SHX21_2, SHX22_2, SHX23_2)
  SHX21_2 = SHX12_2
  SHX22_2 = SHX13_2
  SHX23_2 = SHX14_2
  SHX24_2 = SHX15_2
  SHX16_2[1] = SHX17_2
  SHX16_2[2] = SHX18_2
  SHX16_2[3] = SHX19_2
  SHX16_2[4] = SHX20_2
  SHX16_2[5] = SHX21_2
  SHX16_2[6] = SHX22_2
  SHX16_2[7] = SHX23_2
  SHX16_2[8] = SHX24_2
  return SHX16_2
end
function SHX47_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if not SHX0_2 or 0 == SHX0_2 then
    SHX3_2 = false
    return SHX3_2
  end
  if SHX0_2 == SHX1_2 then
    SHX3_2 = true
    return SHX3_2
  end
  if SHX2_2 then
    SHX3_2 = ipairs
    SHX4_2 = SHX2_2
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SHX8_2.ent
      if not SHX9_2 then
        SHX9_2 = SHX8_2
      end
      if SHX9_2 == SHX0_2 then
        SHX10_2 = true
        return SHX10_2
      end
    end
  end
  SHX3_2 = false
  return SHX3_2
end
function SHX48_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX5_2 = SHX0_1.placeShapeTestFlags
  if not SHX5_2 then
    SHX5_2 = -1
  end
  SHX6_2 = PlayerPedId
  SHX6_2 = SHX6_2()
  SHX7_2 = SHX2_2 + 0.45
  SHX8_2 = SHX2_2 - 8.0
  SHX9_2 = 1
  SHX10_2 = 18
  SHX11_2 = 1
  for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
    SHX13_2 = SHX44_1
    SHX14_2 = SHX0_2
    SHX15_2 = SHX1_2
    SHX16_2 = SHX7_2
    SHX17_2 = SHX0_2
    SHX18_2 = SHX1_2
    SHX19_2 = SHX8_2
    SHX20_2 = SHX5_2
    SHX21_2 = SHX6_2
    SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    if not SHX13_2 then
      SHX17_2 = 0
      return SHX17_2
    end
    if not SHX15_2 or 0 == SHX15_2 then
      SHX17_2 = 0
      return SHX17_2
    end
    if not SHX14_2 then
      SHX17_2 = 0
      return SHX17_2
    end
    SHX17_2 = SHX47_1
    SHX18_2 = SHX15_2
    SHX19_2 = SHX3_2
    SHX20_2 = SHX4_2
    SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2)
    if SHX17_2 then
      SHX17_2 = SHX14_2.z
      SHX7_2 = SHX17_2 - 0.07
      SHX17_2 = SHX8_2 + 0.02
      if SHX7_2 <= SHX17_2 then
        SHX17_2 = 0
        return SHX17_2
      end
    else
      SHX17_2 = SHX39_1
      SHX18_2 = SHX15_2
      return SHX17_2(SHX18_2)
    end
  end
  SHX9_2 = 0
  return SHX9_2
end
function SHX49_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  if SHX0_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_10
    end
  end
  SHX3_2 = false
  return SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = GetModelDimensions
  SHX4_2 = SHX2_2
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
  SHX5_2 = SHX10_1.shellObject
  SHX6_2 = SHX3_2.z
  SHX6_2 = SHX6_2 + 0.05
  SHX7_2 = 0.9
  SHX8_2 = {}
  SHX9_2 = vector3
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = SHX6_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX10_2 = vector3
  SHX11_2 = SHX3_2.x
  SHX11_2 = SHX11_2 * SHX7_2
  SHX12_2 = SHX3_2.y
  SHX12_2 = SHX12_2 * SHX7_2
  SHX13_2 = SHX6_2
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX11_2 = vector3
  SHX12_2 = SHX4_2.x
  SHX12_2 = SHX12_2 * SHX7_2
  SHX13_2 = SHX3_2.y
  SHX13_2 = SHX13_2 * SHX7_2
  SHX14_2 = SHX6_2
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX12_2 = vector3
  SHX13_2 = SHX3_2.x
  SHX13_2 = SHX13_2 * SHX7_2
  SHX14_2 = SHX4_2.y
  SHX14_2 = SHX14_2 * SHX7_2
  SHX15_2 = SHX6_2
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
  SHX13_2 = vector3
  SHX14_2 = SHX4_2.x
  SHX14_2 = SHX14_2 * SHX7_2
  SHX15_2 = SHX4_2.y
  SHX15_2 = SHX15_2 * SHX7_2
  SHX16_2 = SHX6_2
  SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
  SHX8_2[1] = SHX9_2
  SHX8_2[2] = SHX10_2
  SHX8_2[3] = SHX11_2
  SHX8_2[4] = SHX12_2
  SHX8_2[5] = SHX13_2
  SHX8_2[6] = SHX14_2
  SHX8_2[7] = SHX15_2
  SHX8_2[8] = SHX16_2
  SHX8_2[9] = SHX17_2
  SHX8_2[10] = SHX18_2
  SHX8_2[11] = SHX19_2
  SHX8_2[12] = SHX20_2
  SHX8_2[13] = SHX21_2
  SHX9_2 = ipairs
  SHX10_2 = SHX8_2
  SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
  for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
    SHX15_2 = GetOffsetFromEntityInWorldCoords
    SHX16_2 = SHX0_2
    SHX17_2 = SHX14_2.x
    SHX18_2 = SHX14_2.y
    SHX19_2 = SHX14_2.z
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX16_2 = SHX48_1
    SHX17_2 = SHX15_2.x
    SHX18_2 = SHX15_2.y
    SHX19_2 = SHX15_2.z
    SHX20_2 = SHX0_2
    SHX21_2 = SHX1_2
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    if 0 ~= SHX16_2 then
      if SHX5_2 then
        SHX17_2 = DoesEntityExist
        SHX18_2 = SHX5_2
        SHX17_2 = SHX17_2(SHX18_2)
        if SHX17_2 and SHX16_2 == SHX5_2 then
          goto SHX_LABEL_97
        end
      end
      SHX17_2 = SHX40_1
      SHX18_2 = SHX16_2
      SHX17_2 = SHX17_2(SHX18_2)
      if SHX17_2 then
        SHX17_2 = true
        return SHX17_2
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_97:: outside nested blocks until all 'goto SHX_LABEL_97' can see it
    ::SHX_LABEL_97::
  end
  SHX9_2 = false
  return SHX9_2
end
function SHX50_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX2_2 = SHX10_1.shellObject
  if SHX2_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_11
    end
  end
  SHX3_2 = false
  return SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX3_2 = SHX0_1.placeShellProbeLengthM
  if not SHX3_2 then
    SHX3_2 = 0.5
  end
  SHX4_2 = SHX0_1.placePlacedPropRayClearanceM
  if not SHX4_2 then
    SHX4_2 = 0.18
  end
  SHX5_2 = SHX0_1.placeShellCeilingPenetrationM
  if not SHX5_2 then
    SHX5_2 = 0.1
  end
  SHX6_2 = SHX0_1.placeShapeTestFlags
  if not SHX6_2 then
    SHX6_2 = -1
  end
  SHX7_2 = PlayerPedId
  SHX7_2 = SHX7_2()
  function SHX8_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3
    if SHX0_3 then
      SHX1_3 = DoesEntityExist
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        goto SHX_LABEL_10
      end
    end
    SHX1_3 = false
    return SHX1_3
    -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
    ::SHX_LABEL_10::
    SHX1_3 = GetEntityModel
    SHX2_3 = SHX0_3
    SHX1_3 = SHX1_3(SHX2_3)
    SHX2_3 = GetModelDimensions
    SHX3_3 = SHX1_3
    SHX2_3, SHX3_3 = SHX2_3(SHX3_3)
    SHX4_3 = GetEntityHeading
    SHX5_3 = SHX0_3
    SHX4_3 = SHX4_3(SHX5_3)
    SHX5_3 = SHX2_3.z
    SHX6_3 = SHX3_3.z
    SHX7_3 = SHX2_3.z
    SHX6_3 = SHX6_3 - SHX7_3
    SHX6_3 = SHX6_3 * 0.42
    SHX5_3 = SHX5_3 + SHX6_3
    SHX6_3 = {}
    SHX7_3 = vector3
    SHX8_3 = 0.0
    SHX9_3 = 0.0
    SHX10_3 = SHX2_3.z
    SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
    SHX8_3 = vector3
    SHX9_3 = SHX2_3.x
    SHX10_3 = SHX2_3.y
    SHX11_3 = SHX2_3.z
    SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
    SHX9_3 = vector3
    SHX10_3 = SHX3_3.x
    SHX11_3 = SHX2_3.y
    SHX12_3 = SHX2_3.z
    SHX9_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3)
    SHX10_3 = vector3
    SHX11_3 = SHX2_3.x
    SHX12_3 = SHX3_3.y
    SHX13_3 = SHX2_3.z
    SHX10_3 = SHX10_3(SHX11_3, SHX12_3, SHX13_3)
    SHX11_3 = vector3
    SHX12_3 = SHX3_3.x
    SHX13_3 = SHX3_3.y
    SHX14_3 = SHX2_3.z
    SHX11_3 = SHX11_3(SHX12_3, SHX13_3, SHX14_3)
    SHX12_3 = vector3
    SHX13_3 = 0.0
    SHX14_3 = 0.0
    SHX15_3 = SHX5_3
    SHX12_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
    SHX13_3 = vector3
    SHX14_3 = SHX2_3.x
    SHX15_3 = SHX2_3.y
    SHX16_3 = SHX5_3
    SHX13_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
    SHX14_3 = vector3
    SHX15_3 = SHX3_3.x
    SHX16_3 = SHX2_3.y
    SHX17_3 = SHX5_3
    SHX14_3 = SHX14_3(SHX15_3, SHX16_3, SHX17_3)
    SHX15_3 = vector3
    SHX16_3 = SHX2_3.x
    SHX17_3 = SHX3_3.y
    SHX18_3 = SHX5_3
    SHX15_3 = SHX15_3(SHX16_3, SHX17_3, SHX18_3)
    SHX16_3 = vector3
    SHX17_3 = SHX3_3.x
    SHX18_3 = SHX3_3.y
    SHX19_3 = SHX5_3
    SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3 = SHX16_3(SHX17_3, SHX18_3, SHX19_3)
    SHX6_3[1] = SHX7_3
    SHX6_3[2] = SHX8_3
    SHX6_3[3] = SHX9_3
    SHX6_3[4] = SHX10_3
    SHX6_3[5] = SHX11_3
    SHX6_3[6] = SHX12_3
    SHX6_3[7] = SHX13_3
    SHX6_3[8] = SHX14_3
    SHX6_3[9] = SHX15_3
    SHX6_3[10] = SHX16_3
    SHX6_3[11] = SHX17_3
    SHX6_3[12] = SHX18_3
    SHX6_3[13] = SHX19_3
    SHX6_3[14] = SHX20_3
    SHX6_3[15] = SHX21_3
    SHX6_3[16] = SHX22_3
    SHX6_3[17] = SHX23_3
    SHX6_3[18] = SHX24_3
    SHX6_3[19] = SHX25_3
    SHX6_3[20] = SHX26_3
    SHX6_3[21] = SHX27_3
    SHX6_3[22] = SHX28_3
    SHX6_3[23] = SHX29_3
    SHX6_3[24] = SHX30_3
    SHX6_3[25] = SHX31_3
    SHX6_3[26] = SHX32_3
    SHX6_3[27] = SHX33_3
    SHX6_3[28] = SHX34_3
    SHX6_3[29] = SHX35_3
    SHX6_3[30] = SHX36_3
    SHX7_3 = SHX46_1
    SHX8_3 = SHX4_3
    SHX7_3 = SHX7_3(SHX8_3)
    function SHX8_3(SHX0_4, SHX1_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX2_4, SHX3_4, SHX4_4
      if not SHX0_4 then
        SHX2_4 = false
        return SHX2_4
      end
      if not SHX1_4 or 0 == SHX1_4 then
        SHX2_4 = false
        return SHX2_4
      end
      SHX2_4 = SHX0_3
      if SHX1_4 == SHX2_4 then
        SHX2_4 = false
        return SHX2_4
      end
      SHX2_4 = SHX39_1
      SHX3_4 = SHX1_4
      SHX2_4 = SHX2_4(SHX3_4)
      SHX3_4 = SHX2_2
      if SHX2_4 ~= SHX3_4 then
        SHX3_4 = SHX2_2
        if SHX1_4 ~= SHX3_4 then
          goto SHX_LABEL_27
        end
      end
      SHX3_4 = false
      return SHX3_4
      -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
      ::SHX_LABEL_27::
      SHX3_4 = SHX40_1
      SHX4_4 = SHX2_4
      SHX3_4 = SHX3_4(SHX4_4)
      if SHX3_4 then
        SHX3_4 = SHX4_2
        SHX3_4 = SHX0_4 < SHX3_4
        return SHX3_4
      end
      SHX3_4 = false
      return SHX3_4
    end
    SHX9_3 = ipairs
    SHX10_3 = SHX6_3
    SHX9_3, SHX10_3, SHX11_3, SHX12_3 = SHX9_3(SHX10_3)
    for SHX13_3, SHX14_3 in SHX9_3, SHX10_3, SHX11_3, SHX12_3 do
      SHX15_3 = GetOffsetFromEntityInWorldCoords
      SHX16_3 = SHX0_3
      SHX17_3 = SHX14_3.x
      SHX18_3 = SHX14_3.y
      SHX19_3 = SHX14_3.z
      SHX15_3 = SHX15_3(SHX16_3, SHX17_3, SHX18_3, SHX19_3)
      SHX16_3 = ipairs
      SHX17_3 = SHX7_3
      SHX16_3, SHX17_3, SHX18_3, SHX19_3 = SHX16_3(SHX17_3)
      for SHX20_3, SHX21_3 in SHX16_3, SHX17_3, SHX18_3, SHX19_3 do
        SHX22_3 = math
        SHX22_3 = SHX22_3.abs
        SHX23_3 = SHX21_3.x
        SHX22_3 = SHX22_3(SHX23_3)
        SHX23_3 = 1.0E-5
        if not (SHX22_3 > SHX23_3) then
          SHX22_3 = math
          SHX22_3 = SHX22_3.abs
          SHX23_3 = SHX21_3.y
          SHX22_3 = SHX22_3(SHX23_3)
          SHX23_3 = 1.0E-5
          if not (SHX22_3 > SHX23_3) then
            goto SHX_LABEL_172
          end
        end
        SHX22_3 = SHX15_3.x
        SHX23_3 = SHX21_3.x
        SHX23_3 = SHX23_3 * 0.02
        SHX22_3 = SHX22_3 + SHX23_3
        SHX23_3 = SHX15_3.y
        SHX24_3 = SHX21_3.y
        SHX24_3 = SHX24_3 * 0.02
        SHX23_3 = SHX23_3 + SHX24_3
        SHX24_3 = SHX15_3.z
        SHX25_3 = SHX21_3.z
        SHX25_3 = SHX25_3 * 0.02
        SHX24_3 = SHX24_3 + SHX25_3
        SHX25_3 = SHX15_3.x
        SHX26_3 = SHX21_3.x
        SHX27_3 = SHX3_2
        SHX26_3 = SHX26_3 * SHX27_3
        SHX25_3 = SHX25_3 + SHX26_3
        SHX26_3 = SHX15_3.y
        SHX27_3 = SHX21_3.y
        SHX28_3 = SHX3_2
        SHX27_3 = SHX27_3 * SHX28_3
        SHX26_3 = SHX26_3 + SHX27_3
        SHX27_3 = SHX15_3.z
        SHX28_3 = SHX21_3.z
        SHX29_3 = SHX3_2
        SHX28_3 = SHX28_3 * SHX29_3
        SHX27_3 = SHX27_3 + SHX28_3
        SHX28_3 = SHX44_1
        SHX29_3 = SHX22_3
        SHX30_3 = SHX23_3
        SHX31_3 = SHX24_3
        SHX32_3 = SHX25_3
        SHX33_3 = SHX26_3
        SHX34_3 = SHX27_3
        SHX35_3 = SHX6_2
        SHX36_3 = SHX7_2
        SHX28_3, SHX29_3, SHX30_3, SHX31_3 = SHX28_3(SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3)
        if SHX28_3 then
          SHX32_3 = SHX8_3
          SHX33_3 = SHX31_3
          SHX34_3 = SHX30_3
          SHX32_3 = SHX32_3(SHX33_3, SHX34_3)
          if SHX32_3 then
            SHX32_3 = true
            return SHX32_3
          end
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_172:: outside nested blocks until all 'goto SHX_LABEL_172' can see it
        ::SHX_LABEL_172::
      end
    end
    function SHX9_3(SHX0_4, SHX1_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX2_4, SHX3_4
      if SHX0_4 then
        SHX2_4 = SHX5_2
        if not (SHX0_4 >= SHX2_4) then
          goto SHX_LABEL_8
        end
      end
      SHX2_4 = false
      return SHX2_4
      -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
      ::SHX_LABEL_8::
      if not SHX1_4 or 0 == SHX1_4 then
        SHX2_4 = true
        return SHX2_4
      end
      SHX2_4 = SHX0_3
      if SHX1_4 == SHX2_4 then
        SHX2_4 = false
        return SHX2_4
      end
      SHX2_4 = SHX39_1
      SHX3_4 = SHX1_4
      SHX2_4 = SHX2_4(SHX3_4)
      SHX3_4 = SHX2_2
      if SHX2_4 ~= SHX3_4 then
        SHX3_4 = SHX2_2
        if SHX1_4 ~= SHX3_4 then
          goto SHX_LABEL_30
        end
      end
      SHX3_4 = true
      return SHX3_4
      -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
      ::SHX_LABEL_30::
      SHX3_4 = false
      return SHX3_4
    end
    SHX10_3 = GetOffsetFromEntityInWorldCoords
    SHX11_3 = SHX0_3
    SHX12_3 = 0.0
    SHX13_3 = 0.0
    SHX14_3 = SHX3_3.z
    SHX14_3 = SHX14_3 - 0.06
    SHX10_3 = SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3)
    SHX11_3 = SHX44_1
    SHX12_3 = SHX10_3.x
    SHX13_3 = SHX10_3.y
    SHX14_3 = SHX10_3.z
    SHX14_3 = SHX14_3 + 0.04
    SHX15_3 = SHX10_3.x
    SHX16_3 = SHX10_3.y
    SHX17_3 = SHX10_3.z
    SHX18_3 = SHX3_2
    SHX17_3 = SHX17_3 + SHX18_3
    SHX18_3 = SHX6_2
    SHX19_3 = SHX7_2
    SHX11_3, SHX12_3, SHX13_3, SHX14_3 = SHX11_3(SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
    if SHX11_3 then
      SHX15_3 = SHX9_3
      SHX16_3 = SHX14_3
      SHX17_3 = SHX13_3
      SHX15_3 = SHX15_3(SHX16_3, SHX17_3)
      if SHX15_3 then
        SHX15_3 = true
        return SHX15_3
      end
    end
    SHX15_3 = false
    return SHX15_3
  end
  SHX9_2 = SHX8_2
  SHX10_2 = SHX0_2
  SHX9_2 = SHX9_2(SHX10_2)
  if SHX9_2 then
    SHX9_2 = true
    return SHX9_2
  end
  if SHX1_2 then
    SHX9_2 = ipairs
    SHX10_2 = SHX1_2
    SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
    for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
      SHX15_2 = SHX14_2.ent
      if not SHX15_2 then
        SHX15_2 = SHX14_2
      end
      if SHX15_2 then
        SHX16_2 = DoesEntityExist
        SHX17_2 = SHX15_2
        SHX16_2 = SHX16_2(SHX17_2)
        if SHX16_2 then
          SHX16_2 = SHX8_2
          SHX17_2 = SHX15_2
          SHX16_2 = SHX16_2(SHX17_2)
          if SHX16_2 then
            SHX16_2 = true
            return SHX16_2
          end
        end
      end
    end
  end
  SHX9_2 = false
  return SHX9_2
end
function SHX51_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX3_2 = SHX42_1
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = 0.05
  SHX9_2 = SHX7_2 + SHX4_2
  SHX9_2 = SHX9_2 + SHX8_2
  SHX10_2 = SHX7_2 - SHX4_2
  SHX10_2 = SHX10_2 + SHX8_2
  SHX11_2 = SHX0_1.placeShapeTestFlags
  if not SHX11_2 then
    SHX11_2 = -1
  end
  SHX12_2 = SHX43_1
  SHX13_2 = SHX5_2
  SHX14_2 = SHX6_2
  SHX15_2 = SHX9_2
  SHX16_2 = SHX5_2
  SHX17_2 = SHX6_2
  SHX18_2 = SHX10_2
  SHX19_2 = SHX3_2
  SHX20_2 = SHX11_2
  SHX21_2 = SHX2_2
  SHX22_2 = 7
  SHX12_2, SHX13_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  if not SHX12_2 then
    SHX14_2 = false
    return SHX14_2
  end
  if not SHX13_2 or 0 == SHX13_2 then
    SHX14_2 = false
    return SHX14_2
  end
  if SHX2_2 and SHX13_2 == SHX2_2 then
    SHX14_2 = false
    return SHX14_2
  end
  SHX14_2 = SHX39_1
  SHX15_2 = SHX13_2
  SHX14_2 = SHX14_2(SHX15_2)
  SHX15_2 = SHX10_1.shellObject
  if SHX15_2 then
    SHX16_2 = DoesEntityExist
    SHX17_2 = SHX15_2
    SHX16_2 = SHX16_2(SHX17_2)
    if SHX16_2 and (SHX14_2 == SHX15_2 or SHX13_2 == SHX15_2) then
      SHX16_2 = false
      return SHX16_2
    end
  end
  SHX16_2 = SHX40_1
  SHX17_2 = SHX14_2
  SHX16_2 = SHX16_2(SHX17_2)
  if SHX16_2 then
    SHX16_2 = true
    return SHX16_2
  end
  SHX16_2 = true
  return SHX16_2
end
function SHX52_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if not SHX0_2 then
    return
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX6_2 then
      SHX7_2 = DoesEntityExist
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = DeleteEntity
        SHX8_2 = SHX6_2
        SHX7_2(SHX8_2)
      end
    end
  end
end
function SHX53_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
  if SHX1_2 then
    SHX3_2 = SHX1_2.models
    if SHX3_2 and SHX0_2 then
      SHX3_2 = DoesEntityExist
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        goto SHX_LABEL_15
      end
    end
  end
  SHX3_2 = nil
  return SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX3_2 = {}
  SHX4_2 = SHX2_2 or SHX4_2
  if not SHX2_2 then
    SHX4_2 = GetEntityHeading
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
  end
  SHX5_2 = SHX4_2
  SHX6_2 = SHX1_2.flipHeading
  if SHX6_2 then
    SHX6_2 = SHX4_2 + 180.0
    SHX5_2 = SHX6_2 % 360.0
  end
  SHX6_2 = pairs
  SHX7_2 = SHX1_2.models
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = SHX11_2.offset
    if not SHX12_2 then
      SHX12_2 = vector3
      SHX13_2 = 0.0
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
    end
    SHX13_2 = SHX11_2.headingOffset
    if not SHX13_2 then
      SHX13_2 = SHX11_2.rot
      if SHX13_2 then
        SHX13_2 = SHX11_2.rot
        SHX13_2 = SHX13_2.z
        if SHX13_2 then
          goto SHX_LABEL_53
        end
      end
      SHX13_2 = 0.0
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_53:: outside nested blocks until all 'goto SHX_LABEL_53' can see it
    ::SHX_LABEL_53::
    SHX14_2 = CMG
    SHX14_2 = SHX14_2.loadModel
    SHX15_2 = SHX10_2
    SHX14_2 = SHX14_2(SHX15_2)
    if SHX14_2 then
      SHX15_2 = SHX5_2
      SHX16_2 = SHX11_2.ignoreParentFlip
      if SHX16_2 then
        SHX16_2 = SHX1_2.flipHeading
        if SHX16_2 then
          SHX15_2 = SHX4_2
        end
      end
      SHX16_2 = GetEntityCoords
      SHX17_2 = SHX0_2
      SHX16_2 = SHX16_2(SHX17_2)
      SHX17_2 = math
      SHX17_2 = SHX17_2.rad
      SHX18_2 = SHX15_2
      SHX17_2 = SHX17_2(SHX18_2)
      SHX18_2 = math
      SHX18_2 = SHX18_2.cos
      SHX19_2 = SHX17_2
      SHX18_2 = SHX18_2(SHX19_2)
      SHX19_2 = math
      SHX19_2 = SHX19_2.sin
      SHX20_2 = SHX17_2
      SHX19_2 = SHX19_2(SHX20_2)
      SHX20_2 = SHX16_2.x
      SHX21_2 = SHX12_2.x
      SHX21_2 = SHX21_2 * SHX18_2
      SHX22_2 = SHX12_2.y
      SHX22_2 = SHX22_2 * SHX19_2
      SHX21_2 = SHX21_2 - SHX22_2
      SHX20_2 = SHX20_2 + SHX21_2
      SHX21_2 = SHX16_2.y
      SHX22_2 = SHX12_2.x
      SHX22_2 = SHX22_2 * SHX19_2
      SHX23_2 = SHX12_2.y
      SHX23_2 = SHX23_2 * SHX18_2
      SHX22_2 = SHX22_2 + SHX23_2
      SHX21_2 = SHX21_2 + SHX22_2
      SHX22_2 = SHX16_2.z
      SHX23_2 = SHX12_2.z
      SHX22_2 = SHX22_2 + SHX23_2
      SHX23_2 = CreateObject
      SHX24_2 = SHX14_2
      SHX25_2 = SHX20_2
      SHX26_2 = SHX21_2
      SHX27_2 = SHX22_2
      SHX28_2 = false
      SHX29_2 = false
      SHX30_2 = false
      SHX23_2 = SHX23_2(SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
      SHX24_2 = SetEntityHeading
      SHX25_2 = SHX23_2
      SHX26_2 = SHX15_2 + SHX13_2
      SHX26_2 = SHX26_2 % 360.0
      SHX24_2(SHX25_2, SHX26_2)
      SHX24_2 = SetEntityCollision
      SHX25_2 = SHX23_2
      SHX26_2 = true
      SHX27_2 = true
      SHX24_2(SHX25_2, SHX26_2, SHX27_2)
      SHX24_2 = ResetEntityAlpha
      SHX25_2 = SHX23_2
      SHX24_2(SHX25_2)
      SHX24_2 = FreezeEntityPosition
      SHX25_2 = SHX23_2
      SHX26_2 = true
      SHX24_2(SHX25_2, SHX26_2)
      SHX24_2 = #SHX3_2
      SHX24_2 = SHX24_2 + 1
      SHX3_2[SHX24_2] = SHX23_2
      SHX24_2 = SetModelAsNoLongerNeeded
      SHX25_2 = SHX14_2
      SHX24_2(SHX25_2)
    end
  end
  return SHX3_2
end
function SHX54_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX3_2 = SHX38_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  if not SHX1_2 then
    return
  end
  SHX3_2 = ipairs
  SHX4_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.ent
    if not SHX9_2 then
      SHX9_2 = SHX8_2
    end
    if SHX9_2 then
      SHX10_2 = DoesEntityExist
      SHX11_2 = SHX9_2
      SHX10_2 = SHX10_2(SHX11_2)
      if SHX10_2 then
        SHX10_2 = SHX38_1
        SHX11_2 = SHX9_2
        SHX12_2 = SHX2_2
        SHX10_2(SHX11_2, SHX12_2)
      end
    end
  end
end
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if not SHX0_2 then
    return
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.ent
    if not SHX7_2 then
      SHX7_2 = SHX6_2
    end
    if SHX7_2 then
      SHX8_2 = DoesEntityExist
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        SHX8_2 = DeleteEntity
        SHX9_2 = SHX7_2
        SHX8_2(SHX9_2)
      end
    end
  end
end
function SHX56_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.models
    if SHX2_2 and SHX0_2 then
      SHX2_2 = DoesEntityExist
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        goto SHX_LABEL_15
      end
    end
  end
  SHX2_2 = nil
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX1_2.models
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.loadModel
    SHX10_2 = SHX7_2
    SHX9_2 = SHX9_2(SHX10_2)
    if SHX9_2 then
      SHX10_2 = GetEntityCoords
      SHX11_2 = SHX0_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = CreateObject
      SHX12_2 = SHX9_2
      SHX13_2 = SHX10_2.x
      SHX14_2 = SHX10_2.y
      SHX15_2 = SHX10_2.z
      SHX15_2 = SHX15_2 - 5.0
      SHX16_2 = false
      SHX17_2 = false
      SHX18_2 = false
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX12_2 = SetEntityAsMissionEntity
      SHX13_2 = SHX11_2
      SHX14_2 = true
      SHX15_2 = true
      SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      SHX12_2 = #SHX2_2
      SHX12_2 = SHX12_2 + 1
      SHX13_2 = {}
      SHX13_2.ent = SHX11_2
      SHX13_2.model = SHX7_2
      SHX2_2[SHX12_2] = SHX13_2
    end
  end
  return SHX2_2
end
function SHX57_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
  if SHX2_2 and SHX1_2 then
    SHX3_2 = SHX1_2.models
    if SHX3_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  if SHX0_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_17
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX3_2 = GetEntityHeading
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX3_2
  SHX5_2 = SHX1_2.flipHeading
  if SHX5_2 then
    SHX5_2 = SHX3_2 - 180.0
    SHX4_2 = SHX5_2 % 360.0
  end
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = ipairs
  SHX7_2 = SHX2_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = SHX11_2.ent
    SHX13_2 = SHX1_2.models
    SHX14_2 = SHX11_2.model
    SHX13_2 = SHX13_2[SHX14_2]
    if SHX12_2 then
      SHX14_2 = DoesEntityExist
      SHX15_2 = SHX12_2
      SHX14_2 = SHX14_2(SHX15_2)
      if SHX14_2 and SHX13_2 then
        SHX14_2 = SHX13_2.offset
        if not SHX14_2 then
          SHX14_2 = vector3
          SHX15_2 = 0.0
          SHX16_2 = 0.0
          SHX17_2 = 0.0
          SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
        end
        SHX15_2 = SHX13_2.headingOffset
        if not SHX15_2 then
          SHX15_2 = SHX13_2.rot
          if SHX15_2 then
            SHX15_2 = SHX13_2.rot
            SHX15_2 = SHX15_2.z
            if SHX15_2 then
              goto SHX_LABEL_67
            end
          end
          SHX15_2 = 0.0
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_67:: outside nested blocks until all 'goto SHX_LABEL_67' can see it
        ::SHX_LABEL_67::
        SHX16_2 = SHX3_2
        SHX17_2 = SHX13_2.ignoreParentFlip
        if SHX17_2 then
          SHX17_2 = SHX1_2.flipHeading
          if SHX17_2 then
            SHX16_2 = SHX4_2
          end
        end
        SHX17_2 = math
        SHX17_2 = SHX17_2.rad
        SHX18_2 = SHX16_2
        SHX17_2 = SHX17_2(SHX18_2)
        SHX18_2 = math
        SHX18_2 = SHX18_2.cos
        SHX19_2 = SHX17_2
        SHX18_2 = SHX18_2(SHX19_2)
        SHX19_2 = math
        SHX19_2 = SHX19_2.sin
        SHX20_2 = SHX17_2
        SHX19_2 = SHX19_2(SHX20_2)
        SHX20_2 = SHX5_2.x
        SHX21_2 = SHX14_2.x
        SHX21_2 = SHX21_2 * SHX18_2
        SHX22_2 = SHX14_2.y
        SHX22_2 = SHX22_2 * SHX19_2
        SHX21_2 = SHX21_2 - SHX22_2
        SHX20_2 = SHX20_2 + SHX21_2
        SHX21_2 = SHX5_2.y
        SHX22_2 = SHX14_2.x
        SHX22_2 = SHX22_2 * SHX19_2
        SHX23_2 = SHX14_2.y
        SHX23_2 = SHX23_2 * SHX18_2
        SHX22_2 = SHX22_2 + SHX23_2
        SHX21_2 = SHX21_2 + SHX22_2
        SHX22_2 = SHX5_2.z
        SHX23_2 = SHX14_2.z
        SHX22_2 = SHX22_2 + SHX23_2
        SHX23_2 = SetEntityCoordsNoOffset
        SHX24_2 = SHX12_2
        SHX25_2 = SHX20_2
        SHX26_2 = SHX21_2
        SHX27_2 = SHX22_2
        SHX28_2 = false
        SHX29_2 = false
        SHX30_2 = false
        SHX23_2(SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
        SHX23_2 = SetEntityHeading
        SHX24_2 = SHX12_2
        SHX25_2 = SHX16_2 + SHX15_2
        SHX25_2 = SHX25_2 % 360.0
        SHX23_2(SHX24_2, SHX25_2)
      end
    end
  end
end
SHX58_1 = nil
SHX59_1 = nil
function SHX60_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX58_1
  if SHX1_2 then
    SHX1_2 = SetScaleformMovieAsNoLongerNeeded
    SHX2_2 = SHX58_1
    SHX1_2(SHX2_2)
    SHX1_2 = nil
    SHX58_1 = SHX1_2
  end
  SHX1_2 = RequestScaleformMovie
  SHX2_2 = "instructional_buttons"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX58_1 = SHX1_2
  while true do
    SHX1_2 = HasScaleformMovieLoaded
    SHX2_2 = SHX58_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = PushScaleformMovieFunction
  SHX2_2 = SHX58_1
  SHX3_2 = "CLEAR_ALL"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = PopScaleformMovieFunctionVoid
  SHX1_2()
  SHX1_2 = PushScaleformMovieFunction
  SHX2_2 = SHX58_1
  SHX3_2 = "SET_CLEAR_SPACE"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = PushScaleformMovieFunctionParameterInt
  SHX2_2 = 200
  SHX1_2(SHX2_2)
  SHX1_2 = PopScaleformMovieFunctionVoid
  SHX1_2()
  SHX1_2 = PushScaleformMovieFunction
  SHX2_2 = SHX58_1
  SHX3_2 = "SET_DATA_SLOT"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = PushScaleformMovieFunctionParameterInt
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = GetControlInstructionalButton
  SHX3_2 = 0
  SHX4_2 = 38
  SHX5_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "Place"
  SHX1_2(SHX2_2)
  SHX1_2 = PopScaleformMovieFunctionVoid
  SHX1_2()
  SHX1_2 = PushScaleformMovieFunction
  SHX2_2 = SHX58_1
  SHX3_2 = "SET_DATA_SLOT"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = PushScaleformMovieFunctionParameterInt
  SHX2_2 = 1
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = GetControlInstructionalButton
  SHX3_2 = 0
  SHX4_2 = 241
  SHX5_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "Rotate +"
  SHX1_2(SHX2_2)
  SHX1_2 = PopScaleformMovieFunctionVoid
  SHX1_2()
  SHX1_2 = PushScaleformMovieFunction
  SHX2_2 = SHX58_1
  SHX3_2 = "SET_DATA_SLOT"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = PushScaleformMovieFunctionParameterInt
  SHX2_2 = 2
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = GetControlInstructionalButton
  SHX3_2 = 0
  SHX4_2 = 242
  SHX5_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "Rotate -"
  SHX1_2(SHX2_2)
  SHX1_2 = PopScaleformMovieFunctionVoid
  SHX1_2()
  SHX1_2 = PushScaleformMovieFunction
  SHX2_2 = SHX58_1
  SHX3_2 = "SET_DATA_SLOT"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = PushScaleformMovieFunctionParameterInt
  SHX2_2 = 3
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = GetControlInstructionalButton
  SHX3_2 = 0
  SHX4_2 = 21
  SHX5_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  if SHX0_2 then
    SHX1_2 = _ENV
    SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
    SHX1_2 = SHX1_2[SHX2_2]
    SHX2_2 = "Faster Rotation"
    SHX1_2(SHX2_2)
  else
    SHX1_2 = _ENV
    SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
    SHX1_2 = SHX1_2[SHX2_2]
    SHX2_2 = "Faster Rotation"
    SHX1_2(SHX2_2)
  end
  SHX1_2 = PopScaleformMovieFunctionVoid
  SHX1_2()
  SHX1_2 = PushScaleformMovieFunction
  SHX2_2 = SHX58_1
  SHX3_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = PopScaleformMovieFunctionVoid
  SHX1_2()
end
function SHX61_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = IsInputDisabled
  SHX1_2 = 0
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = SHX59_1
  if nil ~= SHX1_2 then
    SHX1_2 = SHX59_1
    if SHX0_2 == SHX1_2 then
      goto SHX_LABEL_14
    end
  end
  SHX59_1 = SHX0_2
  SHX1_2 = SHX60_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
end
SHX62_1 = false
SHX63_1 = false
SHX64_1 = false
SHX65_1 = nil
function SHX66_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if not SHX1_2 or SHX1_2 <= 0.0 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = pairs
  SHX3_2 = SHX10_1.objects
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    if SHX7_2 then
      SHX8_2 = SHX7_2.object
      if SHX8_2 then
        SHX8_2 = DoesEntityExist
        SHX9_2 = SHX7_2.object
        SHX8_2 = SHX8_2(SHX9_2)
        if SHX8_2 then
          SHX8_2 = GetEntityCoords
          SHX9_2 = SHX7_2.object
          SHX8_2 = SHX8_2(SHX9_2)
          SHX8_2 = SHX8_2 - SHX0_2
          SHX8_2 = #SHX8_2
          if SHX1_2 > SHX8_2 then
            SHX9_2 = true
            return SHX9_2
          end
        end
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
end
function SHX67_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  SHX1_2 = SHX0_1.items
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~ Invalid item: "
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2 .. SHX4_2
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = false
  SHX62_1 = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = SHX1_2.model
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~ Failed to load model for item: "
    SHX5_2 = SHX1_2.model
    SHX4_2 = SHX4_2 .. SHX5_2
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = CreateObject
  SHX6_2 = SHX2_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX4_2.z
  SHX9_2 = SHX9_2 - 5.0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = SetEntityAsMissionEntity
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SHX56_1
  SHX7_2 = SHX5_2
  SHX8_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = GetEntityHeading
  SHX8_2 = SHX3_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = 0.0
  SHX9_2 = 10.0
  SHX10_2 = true
  SHX63_1 = SHX10_2
  while true do
    SHX10_2 = Wait
    SHX11_2 = 0
    SHX10_2(SHX11_2)
    SHX10_2 = SHX62_1
    if SHX10_2 then
      SHX10_2 = DeleteEntity
      SHX11_2 = SHX5_2
      SHX10_2(SHX11_2)
      SHX10_2 = SHX55_1
      SHX11_2 = SHX6_2
      SHX10_2(SHX11_2)
      SHX10_2 = false
      SHX62_1 = SHX10_2
      break
    end
    SHX10_2 = SHX61_1
    SHX10_2()
    SHX10_2 = SHX58_1
    if SHX10_2 then
      SHX10_2 = DrawScaleformMovieFullscreen
      SHX11_2 = SHX58_1
      SHX12_2 = 255
      SHX13_2 = 255
      SHX14_2 = 255
      SHX15_2 = 255
      SHX16_2 = 0
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    end
    SHX10_2 = SHX37_1
    SHX11_2 = SHX9_2
    SHX12_2 = -1
    SHX13_2 = SHX3_2
    SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX14_2 = SHX41_1
    SHX15_2 = SHX10_2
    SHX16_2 = SHX12_2
    SHX17_2 = SHX13_2
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
    if SHX10_2 then
      SHX15_2 = SetEntityCoordsNoOffset
      SHX16_2 = SHX5_2
      SHX17_2 = SHX11_2.x
      SHX18_2 = SHX11_2.y
      SHX19_2 = SHX11_2.z
      SHX19_2 = SHX19_2 + SHX8_2
      SHX20_2 = false
      SHX21_2 = false
      SHX22_2 = false
      SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      SHX15_2 = SetEntityHeading
      SHX16_2 = SHX5_2
      SHX17_2 = SHX1_2.headingOffset
      if not SHX17_2 then
        SHX17_2 = 0.0
      end
      SHX17_2 = SHX7_2 + SHX17_2
      SHX15_2(SHX16_2, SHX17_2)
      SHX15_2 = PlaceObjectOnGroundProperly
      SHX16_2 = SHX5_2
      SHX15_2(SHX16_2)
      SHX15_2 = SHX57_1
      SHX16_2 = SHX5_2
      SHX17_2 = SHX1_2
      SHX18_2 = SHX6_2
      SHX15_2(SHX16_2, SHX17_2, SHX18_2)
    else
      SHX15_2 = SetEntityCoordsNoOffset
      SHX16_2 = SHX5_2
      SHX17_2 = SHX4_2.x
      SHX18_2 = SHX4_2.y
      SHX19_2 = SHX4_2.z
      SHX19_2 = SHX19_2 - 5.0
      SHX20_2 = false
      SHX21_2 = false
      SHX22_2 = false
      SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      if SHX6_2 then
        SHX15_2 = ipairs
        SHX16_2 = SHX6_2
        SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX15_2(SHX16_2)
        for SHX19_2, SHX20_2 in SHX15_2, SHX16_2, SHX17_2, SHX18_2 do
          SHX21_2 = SHX20_2.ent
          if not SHX21_2 then
            SHX21_2 = SHX20_2
          end
          if SHX21_2 then
            SHX22_2 = DoesEntityExist
            SHX23_2 = SHX21_2
            SHX22_2 = SHX22_2(SHX23_2)
            if SHX22_2 then
              SHX22_2 = SetEntityCoordsNoOffset
              SHX23_2 = SHX21_2
              SHX24_2 = SHX4_2.x
              SHX25_2 = SHX4_2.y
              SHX26_2 = SHX4_2.z
              SHX26_2 = SHX26_2 - 5.0
              SHX27_2 = false
              SHX28_2 = false
              SHX29_2 = false
              SHX22_2(SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
            end
          end
        end
      end
    end
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = false
    SHX18_2 = false
    if SHX10_2 then
      SHX19_2 = GetEntityCoords
      SHX20_2 = SHX5_2
      SHX19_2 = SHX19_2(SHX20_2)
      SHX20_2 = SHX51_1
      SHX21_2 = SHX2_2
      SHX22_2 = SHX19_2
      SHX23_2 = SHX5_2
      SHX20_2 = SHX20_2(SHX21_2, SHX22_2, SHX23_2)
      SHX15_2 = SHX20_2
      SHX20_2 = SHX66_1
      SHX21_2 = SHX19_2
      SHX22_2 = SHX0_1.placeMinDistance
      SHX20_2 = SHX20_2(SHX21_2, SHX22_2)
      SHX16_2 = SHX20_2
      SHX20_2 = SHX50_1
      SHX21_2 = SHX5_2
      SHX22_2 = SHX6_2
      SHX20_2 = SHX20_2(SHX21_2, SHX22_2)
      SHX17_2 = SHX20_2
      SHX20_2 = SHX49_1
      SHX21_2 = SHX5_2
      SHX22_2 = SHX6_2
      SHX23_2 = SHX2_2
      SHX20_2 = SHX20_2(SHX21_2, SHX22_2, SHX23_2)
      SHX18_2 = SHX20_2
    end
    SHX19_2 = SHX10_2 or SHX19_2
    SHX19_2 = SHX14_2 or SHX19_2
    SHX19_2 = SHX10_2 and SHX14_2 and not SHX15_2 and not SHX16_2 and not SHX17_2 and SHX19_2
    if SHX10_2 and not SHX19_2 then
      SHX20_2 = SetEntityDrawOutlineColor
      SHX21_2 = 255
      SHX22_2 = 0
      SHX23_2 = 0
      SHX24_2 = 255
      SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      SHX20_2 = SetEntityDrawOutline
      SHX21_2 = SHX5_2
      SHX22_2 = true
      SHX20_2(SHX21_2, SHX22_2)
    else
      SHX20_2 = SetEntityDrawOutline
      SHX21_2 = SHX5_2
      SHX22_2 = false
      SHX20_2(SHX21_2, SHX22_2)
    end
    SHX20_2 = SHX54_1
    SHX21_2 = SHX5_2
    SHX22_2 = SHX6_2
    SHX23_2 = SHX19_2
    SHX20_2(SHX21_2, SHX22_2, SHX23_2)
    SHX20_2 = IsControlPressed
    SHX21_2 = 0
    SHX22_2 = 21
    SHX20_2 = SHX20_2(SHX21_2, SHX22_2)
    if SHX20_2 then
      SHX20_2 = SHX0_1.placeItemRotationSpeedFastDeg
      if SHX20_2 then
        goto SHX_LABEL_247
      end
    end
    SHX20_2 = SHX0_1.placeItemRotationSpeedDeg
    -- [FIX IF ERROR] Move ::SHX_LABEL_247:: outside nested blocks until all 'goto SHX_LABEL_247' can see it
    ::SHX_LABEL_247::
    SHX21_2 = IsControlJustPressed
    SHX22_2 = 0
    SHX23_2 = 15
    SHX21_2 = SHX21_2(SHX22_2, SHX23_2)
    if not SHX21_2 then
      SHX21_2 = IsControlJustPressed
      SHX22_2 = 1
      SHX23_2 = 241
      SHX21_2 = SHX21_2(SHX22_2, SHX23_2)
      if not SHX21_2 then
        SHX21_2 = IsControlJustPressed
        SHX22_2 = 2
        SHX23_2 = 241
        SHX21_2 = SHX21_2(SHX22_2, SHX23_2)
      end
    end
    SHX22_2 = IsControlJustPressed
    SHX23_2 = 0
    SHX24_2 = 14
    SHX22_2 = SHX22_2(SHX23_2, SHX24_2)
    if not SHX22_2 then
      SHX22_2 = IsControlJustPressed
      SHX23_2 = 1
      SHX24_2 = 242
      SHX22_2 = SHX22_2(SHX23_2, SHX24_2)
      if not SHX22_2 then
        SHX22_2 = IsControlJustPressed
        SHX23_2 = 2
        SHX24_2 = 242
        SHX22_2 = SHX22_2(SHX23_2, SHX24_2)
      end
    end
    if SHX21_2 then
      SHX23_2 = SHX7_2 + SHX20_2
      SHX7_2 = SHX23_2 % 360.0
    elseif SHX22_2 then
      SHX23_2 = SHX7_2 - SHX20_2
      SHX7_2 = SHX23_2 % 360.0
    end
    SHX23_2 = IsControlJustPressed
    SHX24_2 = 0
    SHX25_2 = 177
    SHX23_2 = SHX23_2(SHX24_2, SHX25_2)
    if SHX23_2 then
      SHX23_2 = DeleteEntity
      SHX24_2 = SHX5_2
      SHX23_2(SHX24_2)
      SHX23_2 = SHX55_1
      SHX24_2 = SHX6_2
      SHX23_2(SHX24_2)
      break
    end
    SHX23_2 = IsControlJustPressed
    SHX24_2 = 0
    SHX25_2 = 38
    SHX23_2 = SHX23_2(SHX24_2, SHX25_2)
    if SHX23_2 then
      if SHX19_2 then
        SHX23_2 = GetEntityCoords
        SHX24_2 = SHX5_2
        SHX23_2 = SHX23_2(SHX24_2)
        SHX24_2 = SHX7_2
        SHX25_2 = DeleteEntity
        SHX26_2 = SHX5_2
        SHX25_2(SHX26_2)
        SHX25_2 = SHX55_1
        SHX26_2 = SHX6_2
        SHX25_2(SHX26_2)
        SHX25_2 = TriggerServerEvent
        SHX26_2 = "6b0f8f582c"
        SHX27_2 = SHX0_2
        SHX28_2 = SHX23_2
        SHX29_2 = SHX24_2
        SHX25_2(SHX26_2, SHX27_2, SHX28_2, SHX29_2)
        break
      else
        SHX23_2 = notify
        SHX24_2 = "~r~ Cannot place item here"
        SHX23_2(SHX24_2)
      end
    end
  end
  SHX10_2 = false
  SHX63_1 = SHX10_2
  SHX10_2 = SetModelAsNoLongerNeeded
  SHX11_2 = SHX2_2
  SHX10_2(SHX11_2)
end
function SHX68_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if SHX0_2 < 0.0 then
    SHX1_2 = 0.0
    return SHX1_2
  end
  if SHX0_2 > 1.0 then
    SHX1_2 = 1.0
    return SHX1_2
  end
  return SHX0_2
end
function SHX69_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX8_2 = DrawRect
  SHX9_2 = 0.0
  SHX10_2 = SHX0_2
  SHX11_2 = SHX1_2
  SHX12_2 = SHX2_2
  SHX13_2 = 0
  SHX14_2 = 0
  SHX15_2 = 0
  SHX16_2 = math
  SHX16_2 = SHX16_2.floor
  SHX17_2 = SHX7_2 * 0.5
  SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX16_2(SHX17_2)
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX8_2 = SHX68_1
  SHX9_2 = SHX3_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX3_2 = SHX8_2
  SHX8_2 = SHX1_2 * SHX3_2
  SHX9_2 = -SHX1_2
  SHX9_2 = SHX9_2 / 2.0
  SHX10_2 = SHX8_2 / 2.0
  SHX9_2 = SHX9_2 + SHX10_2
  SHX10_2 = DrawRect
  SHX11_2 = SHX9_2
  SHX12_2 = SHX0_2
  SHX13_2 = SHX8_2
  SHX14_2 = SHX2_2
  SHX15_2 = SHX4_2
  SHX16_2 = SHX5_2
  SHX17_2 = SHX6_2
  SHX18_2 = math
  SHX18_2 = SHX18_2.floor
  SHX19_2 = SHX7_2 * 0.8
  SHX18_2, SHX19_2 = SHX18_2(SHX19_2)
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
end
SHX70_1 = false
SHX71_1 = nil
SHX72_1 = 0
SHX73_1 = 0
SHX74_1 = false
SHX75_1 = "anim@amb@business@weed@weed_inspecting_lo_med_hi@"
SHX76_1 = "weed_spraybottle_crouch_spraying_02_inspector"
SHX77_1 = 57005
SHX78_1 = 6286
SHX79_1 = vector3
SHX80_1 = 0.0
SHX81_1 = 0.22
SHX82_1 = 0.45
SHX79_1 = SHX79_1(SHX80_1, SHX81_1, SHX82_1)
function SHX80_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = false
  SHX74_1 = SHX1_2
  SHX1_2 = false
  SHX70_1 = SHX1_2
  SHX1_2 = nil
  SHX71_1 = SHX1_2
  SHX1_2 = SHX73_1
  if 0 ~= SHX1_2 then
    SHX1_2 = DoesRopeExist
    SHX2_2 = SHX73_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteRope
      SHX2_2 = SHX73_1
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = 0
  SHX73_1 = SHX1_2
  SHX1_2 = SHX75_1
  if SHX1_2 then
    SHX1_2 = StopAnimTask
    SHX2_2 = SHX0_2
    SHX3_2 = SHX75_1
    SHX4_2 = SHX76_1
    SHX5_2 = 1.0
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  end
  SHX1_2 = ClearPedSecondaryTask
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = ClearPedTasks
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX72_1
  if 0 ~= SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX72_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DetachEntity
      SHX2_2 = SHX72_1
      SHX3_2 = true
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX72_1
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = 0
  SHX72_1 = SHX1_2
end
function SHX81_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX1_2 = SHX10_1.objects
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX1_2.object
    if SHX2_2 then
      SHX2_2 = DoesEntityExist
      SHX3_2 = SHX1_2.object
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        goto SHX_LABEL_14
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX2_2 = SHX80_1
  SHX2_2()
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.hasClientSkill
  SHX4_2 = "trapper_water_hose"
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~You need to unlock the Water Hose skill first."
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = SHX75_1
  SHX3_2(SHX4_2)
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX2_2
  SHX5_2 = SHX75_1
  SHX6_2 = SHX76_1
  SHX7_2 = 8.0
  SHX8_2 = -8.0
  SHX9_2 = -1
  SHX10_2 = 49
  SHX11_2 = 0.0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = "bzzz_garden_hose_b"
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    return
  end
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.requestEntitySpawn
  SHX6_2 = "trapper_hose"
  SHX7_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = CreateObject
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX4_2.z
  SHX9_2 = SHX9_2 + 0.2
  SHX10_2 = true
  SHX11_2 = true
  SHX12_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = SetModelAsNoLongerNeeded
  SHX7_2 = SHX3_2
  SHX6_2(SHX7_2)
  SHX6_2 = GetPedBoneIndex
  SHX7_2 = SHX2_2
  SHX8_2 = SHX77_1
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = AttachEntityToEntity
  SHX8_2 = SHX5_2
  SHX9_2 = SHX2_2
  SHX10_2 = SHX6_2
  SHX11_2 = 0.12
  SHX12_2 = 0.04
  SHX13_2 = -0.01
  SHX14_2 = -80.0
  SHX15_2 = 90.0
  SHX16_2 = -10.0
  SHX17_2 = true
  SHX18_2 = true
  SHX19_2 = false
  SHX20_2 = true
  SHX21_2 = 1
  SHX22_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX7_2 = RemoveParticleFxFromEntity
  SHX8_2 = SHX5_2
  SHX7_2(SHX8_2)
  SHX72_1 = SHX5_2
  SHX7_2 = RopeLoadTextures
  SHX7_2()
  while true do
    SHX7_2 = RopeAreTexturesLoaded
    SHX7_2 = SHX7_2()
    if SHX7_2 then
      break
    end
    SHX7_2 = Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
  end
  SHX7_2 = AddRope
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 4.0
  SHX15_2 = 1
  SHX16_2 = 200.0
  SHX17_2 = 0.2
  SHX18_2 = 0.0
  SHX19_2 = false
  SHX20_2 = true
  SHX21_2 = false
  SHX22_2 = 1.0
  SHX23_2 = false
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.InvokeNative
  SHX9_2 = 8620873403488097103
  SHX10_2 = SHX7_2
  SHX11_2 = true
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX73_1 = SHX7_2
  SHX71_1 = SHX0_2
  SHX8_2 = true
  SHX70_1 = SHX8_2
  SHX8_2 = true
  SHX74_1 = SHX8_2
  SHX8_2 = SHX1_2.object
  SHX9_2 = CreateThread
  function SHX10_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3
    while true do
      SHX0_3 = SHX74_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX73_1
      if 0 == SHX0_3 then
        break
      end
      SHX0_3 = DoesRopeExist
      SHX1_3 = SHX73_1
      SHX0_3 = SHX0_3(SHX1_3)
      if not SHX0_3 then
        break
      end
      SHX0_3 = PlayerPedId
      SHX0_3 = SHX0_3()
      if 0 == SHX0_3 then
        break
      end
      SHX1_3 = GetPedBoneIndex
      SHX2_3 = SHX0_3
      SHX3_3 = SHX78_1
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      SHX2_3 = GetWorldPositionOfEntityBone
      SHX3_3 = SHX0_3
      SHX4_3 = SHX1_3
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
      SHX3_3 = DoesEntityExist
      SHX4_3 = SHX8_2
      SHX3_3 = SHX3_3(SHX4_3)
      if not SHX3_3 then
        break
      end
      SHX3_3 = GetOffsetFromEntityInWorldCoords
      SHX4_3 = SHX8_2
      SHX5_3 = SHX79_1.x
      SHX6_3 = SHX79_1.y
      SHX7_3 = SHX79_1.z
      SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX4_3 = AttachEntitiesToRope
      SHX5_3 = SHX73_1
      SHX6_3 = SHX0_3
      SHX7_3 = SHX8_2
      SHX8_3 = SHX2_3.x
      SHX9_3 = SHX2_3.y
      SHX10_3 = SHX2_3.z
      SHX11_3 = SHX3_3.x
      SHX12_3 = SHX3_3.y
      SHX13_3 = SHX3_3.z
      SHX14_3 = 200
      SHX15_3 = true
      SHX16_3 = true
      SHX17_3 = nil
      SHX18_3 = nil
      SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
      SHX4_3 = Wait
      SHX5_3 = 0
      SHX4_3(SHX5_3)
    end
  end
  SHX9_2(SHX10_2)
end
SHX82_1 = -1
function SHX83_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetFrameCount
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX82_1
  if SHX1_2 == SHX0_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX82_1 = SHX0_2
  SHX1_2 = true
  return SHX1_2
end
function SHX84_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if SHX0_2 then
    SHX1_2 = string
    SHX1_2 = SHX1_2.sub
    SHX2_2 = SHX0_2
    SHX3_2 = 1
    SHX4_2 = 10
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    if "plant_pot_" == SHX1_2 then
      SHX1_2 = SHX0_1.plantPotInteractAreaRadius
      return SHX1_2
    end
  end
  SHX1_2 = SHX0_1.itemInteractAreaRadius
  return SHX1_2
end
function SHX85_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = SHX0_2.itemInfo
  SHX2_2 = SHX2_2.interact
  SHX2_2 = nil ~= SHX2_2
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX0_2.itemInfo
  SHX3_2 = SHX3_2.interact
  SHX3_2 = SHX3_2.no_item_needed
  if SHX3_2 then
    SHX4_2 = SHX0_2.itemId
    if "shelf" == SHX4_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.DrawText3D
      SHX5_2 = SHX1_2
      SHX6_2 = "Press [E] to Access Shelf"
      SHX7_2 = 0.3
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = IsControlJustPressed
      SHX5_2 = 1
      SHX6_2 = 38
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX4_2 = SHX83_1
        SHX4_2 = SHX4_2()
        if SHX4_2 then
          SHX4_2 = TriggerServerEvent
          SHX5_2 = "d80be52b4d"
          SHX6_2 = SHX0_2.itemId
          SHX7_2 = "no_item_needed"
          SHX8_2 = SHX0_2.plantId
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.addJobTutorialProgress
          SHX5_2 = "put_supplies_on_shelf"
          SHX6_2 = 1
          SHX4_2(SHX5_2, SHX6_2)
        end
      end
    else
      SHX4_2 = SHX0_2.itemId
      if "garden_hose" == SHX4_2 then
        SHX4_2 = SHX70_1
        if SHX4_2 then
          SHX4_2 = SHX71_1
          SHX5_2 = SHX0_2.plantId
          if SHX4_2 == SHX5_2 then
            SHX4_2 = CMG
            SHX4_2 = SHX4_2.DrawText3D
            SHX5_2 = SHX1_2
            SHX6_2 = "Press [E] to Stop Hose"
            SHX7_2 = 0.3
            SHX4_2(SHX5_2, SHX6_2, SHX7_2)
            SHX4_2 = IsControlJustPressed
            SHX5_2 = 1
            SHX6_2 = 38
            SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
            if SHX4_2 then
              SHX4_2 = SHX83_1
              SHX4_2 = SHX4_2()
              if SHX4_2 then
                SHX4_2 = SHX80_1
                SHX4_2()
              end
            end
        end
        else
          SHX4_2 = SHX70_1
          if not SHX4_2 then
            SHX4_2 = CMG
            SHX4_2 = SHX4_2.DrawText3D
            SHX5_2 = SHX1_2
            SHX6_2 = "Press [E] to Use Hose"
            SHX7_2 = 0.3
            SHX4_2(SHX5_2, SHX6_2, SHX7_2)
            SHX4_2 = IsControlJustPressed
            SHX5_2 = 1
            SHX6_2 = 38
            SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
            if SHX4_2 then
              SHX4_2 = SHX83_1
              SHX4_2 = SHX4_2()
              if SHX4_2 then
                SHX4_2 = tCMG
                SHX4_2 = SHX4_2.canAnim
                SHX4_2 = SHX4_2()
                if SHX4_2 then
                  SHX4_2 = SHX81_1
                  SHX5_2 = SHX0_2.plantId
                  SHX4_2(SHX5_2)
                end
              end
            end
          end
        end
      else
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.DrawText3D
        SHX5_2 = SHX1_2
        SHX6_2 = "Press [E] to "
        SHX7_2 = SHX3_2.label
        SHX6_2 = SHX6_2 .. SHX7_2
        SHX7_2 = 0.3
        SHX4_2(SHX5_2, SHX6_2, SHX7_2)
        SHX4_2 = IsControlJustPressed
        SHX5_2 = 1
        SHX6_2 = 38
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
        if SHX4_2 then
          SHX4_2 = SHX83_1
          SHX4_2 = SHX4_2()
          if SHX4_2 then
            SHX4_2 = TriggerServerEvent
            SHX5_2 = "d80be52b4d"
            SHX6_2 = SHX0_2.itemId
            SHX7_2 = "no_item_needed"
            SHX8_2 = SHX0_2.plantId
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          end
        end
      end
    end
    return
  end
  SHX4_2 = SHX70_1
  if SHX4_2 then
    SHX4_2 = SHX0_2.itemId
    if "plant_pot_seeded" == SHX4_2 then
      SHX4_2 = SHX0_2.itemInfo
      SHX4_2 = SHX4_2.interact
      SHX4_2 = SHX4_2.garden_hose
      if SHX4_2 then
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.DrawText3D
        SHX6_2 = SHX1_2
        SHX7_2 = "Press [E] to Water"
        SHX8_2 = 0.3
        SHX5_2(SHX6_2, SHX7_2, SHX8_2)
        SHX5_2 = IsControlJustPressed
        SHX6_2 = 1
        SHX7_2 = 38
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
        if SHX5_2 then
          SHX5_2 = SHX83_1
          SHX5_2 = SHX5_2()
          if SHX5_2 then
            SHX5_2 = tCMG
            SHX5_2 = SHX5_2.canAnim
            SHX5_2 = SHX5_2()
            if SHX5_2 then
              SHX5_2 = CMG
              SHX5_2 = SHX5_2.hasClientSkill
              SHX6_2 = "trapper_water_hose"
              SHX5_2 = SHX5_2(SHX6_2)
              if not SHX5_2 then
                SHX5_2 = notify
                SHX6_2 = "~r~You need to unlock the Water Hose skill first."
                SHX5_2(SHX6_2)
              else
                SHX5_2 = tCMG
                SHX5_2 = SHX5_2.setCanAnim
                SHX6_2 = false
                SHX5_2(SHX6_2)
                SHX5_2 = TriggerServerEvent
                SHX6_2 = "d80be52b4d"
                SHX7_2 = SHX0_2.itemId
                SHX8_2 = "garden_hose"
                SHX9_2 = SHX0_2.plantId
                SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
              end
            end
          end
        end
      end
      return
    end
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getCurrentHotbarItem
  SHX4_2 = SHX4_2()
  if not SHX4_2 then
    return
  end
  SHX5_2 = SHX0_2.itemInfo
  SHX5_2 = SHX5_2.interact
  SHX6_2 = SHX4_2.icon
  SHX5_2 = SHX5_2[SHX6_2]
  if not SHX5_2 then
    SHX6_2 = SHX4_2.icon
    if SHX6_2 then
      SHX6_2 = string
      SHX6_2 = SHX6_2.match
      SHX7_2 = SHX4_2.icon
      SHX8_2 = "^weed_bud_%d+$"
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      if SHX6_2 then
        SHX6_2 = SHX0_2.itemInfo
        SHX6_2 = SHX6_2.interact
        SHX5_2 = SHX6_2.weed_bud
      end
    end
  end
  if not SHX5_2 then
    SHX6_2 = SHX4_2.icon
    if SHX6_2 then
      SHX6_2 = string
      SHX6_2 = SHX6_2.match
      SHX7_2 = SHX4_2.icon
      SHX8_2 = "^weed_processed_bud_%d+$"
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      if SHX6_2 then
        SHX6_2 = SHX0_2.itemInfo
        SHX6_2 = SHX6_2.interact
        SHX5_2 = SHX6_2.weed_processed_bud
      end
    end
  end
  if SHX5_2 then
    SHX6_2 = false
    SHX7_2 = SHX5_2.label
    if "Harvest Plant" == SHX7_2 then
      SHX7_2 = SHX10_1.objects
      SHX8_2 = SHX0_2.plantId
      SHX7_2 = SHX7_2[SHX8_2]
      if SHX7_2 then
        SHX8_2 = SHX7_2.growthPercent
        if SHX8_2 then
          SHX8_2 = SHX7_2.growthPercent
          if SHX8_2 >= 100 then
            SHX8_2 = CMG
            SHX8_2 = SHX8_2.DrawText3D
            SHX9_2 = SHX1_2
            SHX10_2 = "Press [E] to "
            SHX11_2 = SHX5_2.label
            SHX10_2 = SHX10_2 .. SHX11_2
            SHX11_2 = 0.3
            SHX8_2(SHX9_2, SHX10_2, SHX11_2)
            SHX6_2 = true
          end
        end
      end
    else
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.DrawText3D
      SHX8_2 = SHX1_2
      SHX9_2 = "Press [E] to "
      SHX10_2 = SHX5_2.label
      SHX9_2 = SHX9_2 .. SHX10_2
      SHX10_2 = 0.3
      SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX6_2 = true
    end
    if SHX6_2 then
      SHX7_2 = IsControlJustPressed
      SHX8_2 = 1
      SHX9_2 = 38
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      if SHX7_2 then
        SHX7_2 = SHX83_1
        SHX7_2 = SHX7_2()
        if SHX7_2 then
          SHX7_2 = tCMG
          SHX7_2 = SHX7_2.canAnim
          SHX7_2 = SHX7_2()
          if SHX7_2 then
            SHX7_2 = SHX4_2.icon
            SHX8_2 = SHX0_2.itemInfo
            SHX8_2 = SHX8_2.interact
            SHX8_2 = SHX8_2.weed_bud
            if SHX5_2 == SHX8_2 then
              SHX7_2 = "weed_bud"
            else
              SHX8_2 = SHX0_2.itemInfo
              SHX8_2 = SHX8_2.interact
              SHX8_2 = SHX8_2.weed_processed_bud
              if SHX5_2 == SHX8_2 then
                SHX7_2 = "weed_processed_bud"
              end
            end
            SHX8_2 = tCMG
            SHX8_2 = SHX8_2.setCanAnim
            SHX9_2 = false
            SHX8_2(SHX9_2)
            SHX8_2 = TriggerServerEvent
            SHX9_2 = "d80be52b4d"
            SHX10_2 = SHX0_2.itemId
            SHX11_2 = SHX7_2
            SHX12_2 = SHX0_2.plantId
            SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          end
        end
      end
    end
  end
end
SHX86_1 = RegisterNetEvent
SHX87_1 = "3e72419cb1"
function SHX88_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.loadModel
  SHX7_2 = SHX2_2.model
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    return
  end
  SHX7_2 = CreateObject
  SHX8_2 = SHX6_2
  SHX9_2 = SHX3_2.x
  SHX10_2 = SHX3_2.y
  SHX11_2 = SHX3_2.z
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX8_2 = SetEntityHeading
  SHX9_2 = SHX7_2
  SHX10_2 = SHX4_2
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetEntityCollision
  SHX9_2 = SHX7_2
  SHX10_2 = true
  SHX11_2 = true
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = ResetEntityAlpha
  SHX9_2 = SHX7_2
  SHX8_2(SHX9_2)
  SHX8_2 = FreezeEntityPosition
  SHX9_2 = SHX7_2
  SHX10_2 = true
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SHX4_2
  SHX9_2 = SHX2_2.flipHeading
  if SHX9_2 then
    SHX9_2 = SHX4_2 - 180.0
    SHX8_2 = SHX9_2 % 360.0
  end
  SHX9_2 = SHX53_1
  SHX10_2 = SHX7_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX8_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX10_2 = SHX10_1.objects
  SHX11_2 = {}
  SHX11_2.object = SHX7_2
  SHX11_2.itemId = SHX1_2
  SHX11_2.extraObjects = SHX9_2
  SHX10_2[SHX0_2] = SHX11_2
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.createArea
  SHX11_2 = SHX0_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX84_1
  SHX14_2 = SHX1_2
  SHX13_2 = SHX13_2(SHX14_2)
  SHX14_2 = SHX0_1.itemInteractAreaHeight
  function SHX15_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX16_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX17_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = SHX85_1
    SHX2_3 = SHX0_3
    SHX3_3 = SHX3_2
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX18_2 = {}
  SHX18_2.itemInfo = SHX2_2
  SHX18_2.itemId = SHX1_2
  SHX18_2.plantId = SHX0_2
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  if SHX5_2 then
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.addJobTutorialProgress
    SHX11_2 = "place_"
    SHX12_2 = SHX1_2
    SHX11_2 = SHX11_2 .. SHX12_2
    SHX12_2 = 1
    SHX10_2(SHX11_2, SHX12_2)
  end
end
SHX86_1(SHX87_1, SHX88_1)
SHX86_1 = {}
function SHX87_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = SHX86_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = pairs
  SHX3_2 = SHX1_2.entities
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = ipairs
    SHX9_2 = SHX7_2
    SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
    for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
      if SHX13_2 then
        SHX14_2 = DoesEntityExist
        SHX15_2 = SHX13_2
        SHX14_2 = SHX14_2(SHX15_2)
        if SHX14_2 then
          SHX14_2 = DeleteEntity
          SHX15_2 = SHX13_2
          SHX14_2(SHX15_2)
        end
      end
    end
    SHX8_2 = SHX1_2.entities
    SHX8_2[SHX6_2] = nil
  end
  SHX2_2 = SHX86_1
  SHX2_2[SHX0_2] = nil
end
SHX88_1 = RegisterNetEvent
SHX89_1 = "5a5406667c"
function SHX90_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX10_1.objects
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX1_2.extraObjects
  if SHX2_2 then
    SHX2_2 = SHX52_1
    SHX3_2 = SHX1_2.extraObjects
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX1_2.object
  if SHX2_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2.object
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = DeleteEntity
      SHX3_2 = SHX1_2.object
      SHX2_2(SHX3_2)
    end
  end
  SHX2_2 = SHX87_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = SHX10_1.objects
  SHX2_2[SHX0_2] = nil
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.removeArea
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
end
SHX88_1(SHX89_1, SHX90_1)
function SHX88_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if not SHX0_2 then
    SHX1_2 = {}
    return SHX1_2
  end
  SHX1_2 = {}
  SHX2_2 = 1
  SHX3_2 = SHX0_1.shelfSlots
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX0_2[SHX5_2]
    if not SHX6_2 then
      SHX6_2 = tostring
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX6_2 = SHX0_2[SHX6_2]
    end
    SHX1_2[SHX5_2] = SHX6_2
  end
  return SHX1_2
end
function SHX89_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = {}
  SHX2_2 = 1
  SHX3_2 = SHX0_1.shelfSlots
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX0_2[SHX5_2]
    if SHX6_2 then
      SHX7_2 = SHX6_2.itemId
      if SHX7_2 then
        SHX7_2 = SHX6_2.amount
        if SHX7_2 then
          SHX7_2 = SHX6_2.amount
          if SHX7_2 > 0 then
            SHX7_2 = SHX0_1.getShelfSlotKey
            if SHX7_2 then
              SHX7_2 = SHX0_1.getShelfSlotKey
              SHX8_2 = SHX6_2.itemId
              SHX7_2 = SHX7_2(SHX8_2)
              if SHX7_2 then
                goto SHX_LABEL_28
              end
            end
            SHX7_2 = SHX6_2.itemId
            -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
            ::SHX_LABEL_28::
            SHX1_2[SHX7_2] = true
          end
        end
      end
    end
  end
  SHX2_2 = 0
  SHX3_2 = pairs
  SHX4_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX2_2 = SHX2_2 + 1
  end
  return SHX2_2
end
function SHX90_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = 0
  SHX2_2 = 1
  SHX3_2 = SHX0_1.shelfSlots
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX0_2[SHX5_2]
    if SHX6_2 then
      SHX7_2 = SHX6_2.itemId
      if SHX7_2 then
        SHX7_2 = SHX6_2.amount
        if SHX7_2 then
          SHX7_2 = SHX6_2.amount
          if SHX7_2 > 0 then
            SHX7_2 = SHX6_2.amount
            SHX1_2 = SHX1_2 + SHX7_2
          end
        end
      end
    end
  end
  return SHX1_2
end
function SHX91_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX0_2[SHX1_2]
  SHX3_2 = not SHX2_2
  return SHX3_2
end
function SHX92_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = {}
  SHX2_2 = 1
  SHX3_2 = SHX0_1.shelfSlots
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX0_2[SHX5_2]
    if SHX6_2 then
      SHX7_2 = SHX6_2.itemId
      if SHX7_2 then
        SHX7_2 = SHX6_2.amount
        if SHX7_2 then
          SHX7_2 = SHX6_2.amount
          if SHX7_2 > 0 then
            SHX7_2 = #SHX1_2
            SHX7_2 = SHX7_2 + 1
            SHX1_2[SHX7_2] = SHX5_2
          end
        end
      end
    end
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.sort
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = {}
  SHX3_2 = 1
  SHX4_2 = SHX0_1.shelfSlots
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SHX91_1
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = #SHX2_2
      SHX7_2 = SHX7_2 + 1
      SHX2_2[SHX7_2] = SHX6_2
    end
  end
  SHX3_2 = table
  SHX3_2 = SHX3_2.sort
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = 1
  SHX4_2 = {}
  SHX5_2 = ipairs
  SHX6_2 = SHX1_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX0_2[SHX10_2]
    SHX12_2 = SHX0_1.items
    SHX13_2 = SHX11_2.itemId
    SHX12_2 = SHX12_2[SHX13_2]
    if SHX12_2 then
      SHX13_2 = SHX12_2.shelfOffsets
      if SHX13_2 then
        goto SHX_LABEL_71
      end
    end
    SHX13_2 = {}
    SHX14_2 = SHX10_2
    SHX13_2[1] = SHX14_2
    SHX4_2[SHX10_2] = SHX13_2
    goto SHX_LABEL_94
    -- [FIX IF ERROR] Move ::SHX_LABEL_71:: outside nested blocks until all 'goto SHX_LABEL_71' can see it
    ::SHX_LABEL_71::
    SHX13_2 = {}
    SHX14_2 = SHX10_2
    SHX13_2[1] = SHX14_2
    function SHX14_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
      SHX1_3 = 0
      SHX2_3 = ipairs
      SHX3_3 = SHX0_3
      SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
      for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
        SHX8_3 = SHX12_2.shelfOffsets
        SHX8_3 = SHX8_3[SHX7_3]
        if SHX8_3 then
          SHX9_3 = #SHX8_3
          SHX1_3 = SHX1_3 + SHX9_3
        end
      end
      return SHX1_3
    end
    while true do
      SHX15_2 = SHX14_2
      SHX16_2 = SHX13_2
      SHX15_2 = SHX15_2(SHX16_2)
      SHX16_2 = SHX11_2.amount
      if not (SHX15_2 < SHX16_2) then
        break
      end
      SHX15_2 = #SHX2_2
      if not (SHX3_2 <= SHX15_2) then
        break
      end
      SHX15_2 = #SHX13_2
      SHX15_2 = SHX15_2 + 1
      SHX16_2 = SHX2_2[SHX3_2]
      SHX13_2[SHX15_2] = SHX16_2
      SHX3_2 = SHX3_2 + 1
    end
    SHX4_2[SHX10_2] = SHX13_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_94:: outside nested blocks until all 'goto SHX_LABEL_94' can see it
    ::SHX_LABEL_94::
  end
  return SHX4_2
end
function SHX93_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX3_2 = ipairs
  SHX4_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX0_2.shelfOffsets
    SHX9_2 = SHX9_2[SHX8_2]
    if SHX9_2 then
      SHX10_2 = 1
      SHX11_2 = #SHX9_2
      SHX12_2 = 1
      for SHX13_2 = SHX10_2, SHX11_2, SHX12_2 do
        SHX14_2 = #SHX2_2
        SHX14_2 = SHX14_2 + 1
        SHX15_2 = {}
        SHX15_2.col = SHX8_2
        SHX16_2 = SHX9_2[SHX13_2]
        SHX15_2.offsetData = SHX16_2
        SHX2_2[SHX14_2] = SHX15_2
      end
    end
  end
end
function SHX94_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2, SHX43_2
  SHX2_2 = SHX10_1.objects
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX3_2 = SHX2_2.object
    if SHX3_2 then
      SHX3_2 = DoesEntityExist
      SHX4_2 = SHX2_2.object
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        goto SHX_LABEL_14
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX3_2 = SHX87_1
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.areTrapperShelfVisualsDisabled
  SHX3_2 = SHX3_2()
  if SHX3_2 then
    return
  end
  SHX3_2 = SHX86_1
  SHX4_2 = {}
  SHX5_2 = {}
  SHX4_2.entities = SHX5_2
  SHX3_2[SHX0_2] = SHX4_2
  SHX3_2 = SHX86_1
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2 = SHX3_2.entities
  SHX4_2 = SHX88_1
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX1_2 = SHX4_2
  SHX4_2 = SHX89_1
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = 1 == SHX4_2
  if SHX4_2 then
    SHX5_2 = SHX90_1
    SHX6_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 > 0 then
      SHX5_2 = nil
      SHX6_2 = 1
      SHX7_2 = SHX0_1.shelfSlots
      SHX8_2 = 1
      for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
        SHX10_2 = SHX1_2[SHX9_2]
        if SHX10_2 then
          SHX11_2 = SHX10_2.itemId
          if SHX11_2 then
            SHX11_2 = SHX10_2.amount
            if SHX11_2 then
              SHX11_2 = SHX10_2.amount
              if SHX11_2 > 0 then
                SHX5_2 = SHX10_2.itemId
                break
              end
            end
          end
        end
      end
      if SHX5_2 then
        SHX6_2 = SHX0_1.items
        SHX6_2 = SHX6_2[SHX5_2]
        if SHX6_2 then
          SHX7_2 = SHX6_2.shelfModel
          if not SHX7_2 then
            SHX7_2 = SHX6_2.model
            if not SHX7_2 then
              goto SHX_LABEL_198
            end
          end
          SHX7_2 = SHX6_2.shelfOffsets
          if SHX7_2 then
            SHX7_2 = {}
            SHX8_2 = 1
            SHX9_2 = SHX0_1.shelfSlots
            SHX10_2 = 1
            for SHX11_2 = SHX8_2, SHX9_2, SHX10_2 do
              SHX12_2 = SHX6_2.shelfOffsets
              SHX12_2 = SHX12_2[SHX11_2]
              if SHX12_2 then
                SHX13_2 = 1
                SHX14_2 = #SHX12_2
                SHX15_2 = 1
                for SHX16_2 = SHX13_2, SHX14_2, SHX15_2 do
                  SHX17_2 = #SHX7_2
                  SHX17_2 = SHX17_2 + 1
                  SHX18_2 = {}
                  SHX18_2.col = SHX11_2
                  SHX19_2 = SHX12_2[SHX16_2]
                  SHX18_2.offsetData = SHX19_2
                  SHX7_2[SHX17_2] = SHX18_2
                end
              end
            end
            SHX8_2 = SHX90_1
            SHX9_2 = SHX1_2
            SHX8_2 = SHX8_2(SHX9_2)
            SHX9_2 = SHX8_2
            SHX10_2 = #SHX7_2
            if SHX9_2 > SHX10_2 then
              SHX9_2 = #SHX7_2
            end
            SHX10_2 = CMG
            SHX10_2 = SHX10_2.loadModel
            SHX11_2 = SHX6_2.shelfModel
            if not SHX11_2 then
              SHX11_2 = SHX6_2.model
            end
            SHX10_2 = SHX10_2(SHX11_2)
            if SHX10_2 then
              SHX11_2 = #SHX7_2
              if SHX11_2 > 0 then
                SHX11_2 = GetEntityCoords
                SHX12_2 = SHX2_2.object
                SHX11_2 = SHX11_2(SHX12_2)
                SHX12_2 = 1
                SHX13_2 = SHX9_2
                SHX14_2 = 1
                for SHX15_2 = SHX12_2, SHX13_2, SHX14_2 do
                  SHX16_2 = SHX7_2[SHX15_2]
                  SHX17_2 = SHX16_2.col
                  SHX18_2 = SHX16_2.offsetData
                  SHX19_2 = SHX18_2.offset
                  SHX20_2 = SHX18_2.rot
                  SHX21_2 = CreateObject
                  SHX22_2 = SHX10_2
                  SHX23_2 = SHX11_2.x
                  SHX24_2 = SHX11_2.y
                  SHX25_2 = SHX11_2.z
                  SHX26_2 = false
                  SHX27_2 = false
                  SHX28_2 = false
                  SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
                  SHX22_2 = AttachEntityToEntity
                  SHX23_2 = SHX21_2
                  SHX24_2 = SHX2_2.object
                  SHX25_2 = 0
                  SHX26_2 = SHX19_2.x
                  SHX27_2 = SHX19_2.y
                  SHX28_2 = SHX19_2.z
                  SHX29_2 = SHX20_2.x
                  SHX30_2 = SHX20_2.y
                  SHX31_2 = SHX20_2.z
                  SHX32_2 = false
                  SHX33_2 = false
                  SHX34_2 = false
                  SHX35_2 = false
                  SHX36_2 = 2
                  SHX37_2 = true
                  SHX22_2(SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2)
                  SHX22_2 = FreezeEntityPosition
                  SHX23_2 = SHX21_2
                  SHX24_2 = true
                  SHX22_2(SHX23_2, SHX24_2)
                  SHX22_2 = SetEntityCollision
                  SHX23_2 = SHX21_2
                  SHX24_2 = false
                  SHX25_2 = false
                  SHX22_2(SHX23_2, SHX24_2, SHX25_2)
                  SHX22_2 = SetEntityDynamic
                  SHX23_2 = SHX21_2
                  SHX24_2 = false
                  SHX22_2(SHX23_2, SHX24_2)
                  SHX22_2 = SHX3_2[SHX17_2]
                  if not SHX22_2 then
                    SHX22_2 = {}
                  end
                  SHX3_2[SHX17_2] = SHX22_2
                  SHX22_2 = table
                  SHX22_2 = SHX22_2.insert
                  SHX23_2 = SHX3_2[SHX17_2]
                  SHX24_2 = SHX21_2
                  SHX22_2(SHX23_2, SHX24_2)
                end
                SHX12_2 = SetModelAsNoLongerNeeded
                SHX13_2 = SHX10_2
                SHX12_2(SHX13_2)
                return
              end
            end
          end
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_198:: outside nested blocks until all 'goto SHX_LABEL_198' can see it
  ::SHX_LABEL_198::
  SHX5_2 = SHX92_1
  SHX6_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = 1
  SHX7_2 = SHX0_1.shelfSlots
  SHX8_2 = 1
  for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2 = SHX1_2[SHX9_2]
    if SHX10_2 then
      SHX11_2 = SHX10_2.itemId
      if SHX11_2 then
        SHX11_2 = SHX10_2.amount
        if SHX11_2 then
          SHX11_2 = SHX10_2.amount
          if SHX11_2 > 0 then
            SHX11_2 = SHX10_2.itemId
            SHX12_2 = SHX0_1.items
            SHX12_2 = SHX12_2[SHX11_2]
            if SHX12_2 then
              SHX13_2 = SHX12_2.shelfModel
              if not SHX13_2 then
                SHX13_2 = SHX12_2.model
                if not SHX13_2 then
                  goto SHX_LABEL_327
                end
              end
              SHX13_2 = SHX12_2.shelfOffsets
              if SHX13_2 then
                SHX13_2 = SHX5_2[SHX9_2]
                if SHX13_2 then
                  SHX14_2 = #SHX13_2
                  if SHX14_2 > 0 then
                    SHX14_2 = {}
                    SHX15_2 = SHX93_1
                    SHX16_2 = SHX12_2
                    SHX17_2 = SHX13_2
                    SHX18_2 = SHX14_2
                    SHX15_2(SHX16_2, SHX17_2, SHX18_2)
                    SHX15_2 = #SHX14_2
                    if SHX15_2 > 0 then
                      SHX15_2 = SHX10_2.amount
                      SHX16_2 = #SHX14_2
                      if SHX15_2 > SHX16_2 then
                        SHX15_2 = #SHX14_2
                      end
                      SHX16_2 = CMG
                      SHX16_2 = SHX16_2.loadModel
                      SHX17_2 = SHX12_2.shelfModel
                      if not SHX17_2 then
                        SHX17_2 = SHX12_2.model
                      end
                      SHX16_2 = SHX16_2(SHX17_2)
                      if SHX16_2 then
                        SHX17_2 = GetEntityCoords
                        SHX18_2 = SHX2_2.object
                        SHX17_2 = SHX17_2(SHX18_2)
                        SHX18_2 = 1
                        SHX19_2 = SHX15_2
                        SHX20_2 = 1
                        for SHX21_2 = SHX18_2, SHX19_2, SHX20_2 do
                          SHX22_2 = SHX14_2[SHX21_2]
                          SHX23_2 = SHX22_2.col
                          SHX24_2 = SHX22_2.offsetData
                          SHX25_2 = SHX24_2.offset
                          SHX26_2 = SHX24_2.rot
                          SHX27_2 = CreateObject
                          SHX28_2 = SHX16_2
                          SHX29_2 = SHX17_2.x
                          SHX30_2 = SHX17_2.y
                          SHX31_2 = SHX17_2.z
                          SHX32_2 = false
                          SHX33_2 = false
                          SHX34_2 = false
                          SHX27_2 = SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2)
                          SHX28_2 = AttachEntityToEntity
                          SHX29_2 = SHX27_2
                          SHX30_2 = SHX2_2.object
                          SHX31_2 = 0
                          SHX32_2 = SHX25_2.x
                          SHX33_2 = SHX25_2.y
                          SHX34_2 = SHX25_2.z
                          SHX35_2 = SHX26_2.x
                          SHX36_2 = SHX26_2.y
                          SHX37_2 = SHX26_2.z
                          SHX38_2 = false
                          SHX39_2 = false
                          SHX40_2 = false
                          SHX41_2 = false
                          SHX42_2 = 2
                          SHX43_2 = true
                          SHX28_2(SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2, SHX43_2)
                          SHX28_2 = FreezeEntityPosition
                          SHX29_2 = SHX27_2
                          SHX30_2 = true
                          SHX28_2(SHX29_2, SHX30_2)
                          SHX28_2 = SetEntityCollision
                          SHX29_2 = SHX27_2
                          SHX30_2 = false
                          SHX31_2 = false
                          SHX28_2(SHX29_2, SHX30_2, SHX31_2)
                          SHX28_2 = SetEntityDynamic
                          SHX29_2 = SHX27_2
                          SHX30_2 = false
                          SHX28_2(SHX29_2, SHX30_2)
                          SHX28_2 = SHX3_2[SHX23_2]
                          if not SHX28_2 then
                            SHX28_2 = {}
                          end
                          SHX3_2[SHX23_2] = SHX28_2
                          SHX28_2 = table
                          SHX28_2 = SHX28_2.insert
                          SHX29_2 = SHX3_2[SHX23_2]
                          SHX30_2 = SHX27_2
                          SHX28_2(SHX29_2, SHX30_2)
                        end
                        SHX18_2 = SetModelAsNoLongerNeeded
                        SHX19_2 = SHX16_2
                        SHX18_2(SHX19_2)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_327:: outside nested blocks until all 'goto SHX_LABEL_327' can see it
    ::SHX_LABEL_327::
  end
end
SHX95_1 = RegisterNetEvent
SHX96_1 = "b6c6005ec2"
function SHX97_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX4_2 = SHX10_1.objects
  SHX4_2 = SHX4_2[SHX0_2]
  if SHX4_2 then
    SHX4_2.shelfSlots = SHX1_2
  end
  SHX5_2 = SHX94_1
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX5_2(SHX6_2, SHX7_2)
end
SHX95_1(SHX96_1, SHX97_1)
SHX95_1 = AddEventHandler
SHX96_1 = "4b662b8a67"
function SHX97_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX10_1.objects
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.itemId
    if "shelf" == SHX6_2 then
      SHX6_2 = SHX5_2.shelfSlots
      if SHX6_2 then
        SHX6_2 = SHX94_1
        SHX7_2 = SHX4_2
        SHX8_2 = SHX5_2.shelfSlots
        SHX6_2(SHX7_2, SHX8_2)
      end
    end
  end
end
SHX95_1(SHX96_1, SHX97_1)
SHX95_1 = CMG
SHX95_1 = SHX95_1.onHotbarSelect
function SHX96_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX70_1
  if SHX2_2 then
    SHX2_2 = SHX80_1
    SHX2_2()
  end
  if -1 == SHX0_2 then
    SHX2_2 = true
    SHX62_1 = SHX2_2
    return
  end
  SHX2_2 = SHX63_1
  if SHX2_2 then
    SHX2_2 = true
    SHX62_1 = SHX2_2
    SHX2_2 = true
    SHX64_1 = SHX2_2
    SHX2_2 = SHX0_1.items
    SHX3_2 = SHX1_2.icon
    SHX2_2 = SHX2_2[SHX3_2]
    if SHX2_2 then
      SHX3_2 = SHX2_2.placeable
      if SHX3_2 then
        SHX3_2 = SHX1_2.icon
        SHX65_1 = SHX3_2
    end
    else
      SHX3_2 = nil
      SHX65_1 = SHX3_2
    end
    return
  end
  SHX2_2 = SHX0_1.items
  SHX3_2 = SHX1_2.icon
  SHX2_2 = SHX2_2[SHX3_2]
  if SHX2_2 then
    SHX3_2 = SHX2_2.placeable
    if SHX3_2 then
      goto SHX_LABEL_41
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
  ::SHX_LABEL_41::
  SHX3_2 = false
  SHX64_1 = SHX3_2
  SHX3_2 = nil
  SHX65_1 = SHX3_2
  SHX3_2 = SHX67_1
  SHX4_2 = SHX1_2.icon
  SHX3_2(SHX4_2)
  SHX3_2 = SHX65_1
  if SHX3_2 then
    SHX3_2 = SHX65_1
    SHX4_2 = nil
    SHX65_1 = SHX4_2
    SHX4_2 = false
    SHX64_1 = SHX4_2
    SHX4_2 = SHX67_1
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
  end
  SHX3_2 = SHX64_1
  if not SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.selectHotbarSlot
    SHX4_2 = -1
    SHX3_2(SHX4_2)
  end
  SHX3_2 = false
  SHX64_1 = SHX3_2
end
SHX95_1(SHX96_1)
SHX95_1 = RegisterNetEvent
SHX96_1 = "770e1455bc"
function SHX97_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX4_2 = SHX10_1.objects
  SHX4_2 = SHX4_2[SHX0_2]
  if not SHX4_2 then
    SHX5_2 = print
    SHX6_2 = "No existing object for plantId:"
    SHX7_2 = SHX0_2
    SHX5_2(SHX6_2, SHX7_2)
    if SHX3_2 then
      SHX5_2 = tCMG
      SHX5_2 = SHX5_2.setCanAnim
      SHX6_2 = true
      SHX5_2(SHX6_2)
    end
    return
  end
  SHX5_2 = SHX0_1.items
  SHX5_2 = SHX5_2[SHX1_2]
  if not SHX5_2 then
    SHX6_2 = print
    SHX7_2 = "No item info for new item ID:"
    SHX8_2 = SHX1_2
    SHX6_2(SHX7_2, SHX8_2)
    if SHX3_2 then
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.setCanAnim
      SHX7_2 = true
      SHX6_2(SHX7_2)
    end
    return
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.loadModel
  SHX7_2 = SHX5_2.model
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    SHX7_2 = print
    SHX8_2 = "Failed to load model for new item ID:"
    SHX9_2 = SHX1_2
    SHX7_2(SHX8_2, SHX9_2)
    if SHX3_2 then
      SHX7_2 = tCMG
      SHX7_2 = SHX7_2.setCanAnim
      SHX8_2 = true
      SHX7_2(SHX8_2)
    end
    return
  end
  SHX7_2 = SHX0_1.items
  SHX8_2 = SHX4_2.itemId
  SHX7_2 = SHX7_2[SHX8_2]
  SHX8_2 = SHX7_2.interact
  if SHX8_2 then
    SHX8_2 = SHX7_2.interact
    SHX8_2 = SHX8_2.client_all
    if SHX8_2 then
      SHX8_2 = SHX7_2.interact
      SHX8_2 = SHX8_2.client_all
      SHX9_2 = SHX4_2
      SHX8_2(SHX9_2)
    end
  end
  SHX8_2 = SHX7_2.interact
  if SHX8_2 then
    SHX8_2 = SHX7_2.interact
    SHX8_2 = SHX8_2[SHX2_2]
  end
  SHX9_2 = SHX8_2 or SHX9_2
  if SHX8_2 then
    SHX9_2 = SHX8_2.delay
  end
  if SHX3_2 and SHX8_2 then
    SHX10_2 = SHX8_2.client_use
    if SHX10_2 then
      SHX10_2 = SHX8_2.client_use
      SHX11_2 = SHX4_2.object
      SHX12_2 = SHX0_2
      SHX13_2 = SHX9_2
      SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    end
  end
  if SHX9_2 then
    SHX10_2 = Wait
    SHX11_2 = SHX9_2
    SHX10_2(SHX11_2)
  end
  SHX10_2 = GetEntityCoords
  SHX11_2 = SHX4_2.object
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = GetEntityHeading
  SHX12_2 = SHX4_2.object
  SHX11_2 = SHX11_2(SHX12_2)
  SHX12_2 = SHX52_1
  SHX13_2 = SHX4_2.extraObjects
  SHX12_2(SHX13_2)
  SHX4_2.extraObjects = nil
  SHX12_2 = DeleteEntity
  SHX13_2 = SHX4_2.object
  SHX12_2(SHX13_2)
  SHX12_2 = CreateObject
  SHX13_2 = SHX6_2
  SHX14_2 = SHX10_2.x
  SHX15_2 = SHX10_2.y
  SHX16_2 = SHX10_2.z
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = false
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX13_2 = SetEntityHeading
  SHX14_2 = SHX12_2
  SHX15_2 = SHX11_2
  SHX13_2(SHX14_2, SHX15_2)
  SHX13_2 = PlaceObjectOnGroundProperly
  SHX14_2 = SHX12_2
  SHX13_2(SHX14_2)
  SHX13_2 = SetEntityCollision
  SHX14_2 = SHX12_2
  SHX15_2 = true
  SHX16_2 = true
  SHX13_2(SHX14_2, SHX15_2, SHX16_2)
  SHX13_2 = ResetEntityAlpha
  SHX14_2 = SHX12_2
  SHX13_2(SHX14_2)
  SHX13_2 = FreezeEntityPosition
  SHX14_2 = SHX12_2
  SHX15_2 = true
  SHX13_2(SHX14_2, SHX15_2)
  SHX13_2 = SHX10_1.objects
  SHX13_2 = SHX13_2[SHX0_2]
  SHX13_2.object = SHX12_2
  SHX13_2 = SHX10_1.objects
  SHX13_2 = SHX13_2[SHX0_2]
  SHX13_2.itemId = SHX1_2
  SHX13_2 = SHX53_1
  SHX14_2 = SHX12_2
  SHX15_2 = SHX5_2
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
  SHX14_2 = SHX10_1.objects
  SHX14_2 = SHX14_2[SHX0_2]
  SHX14_2.extraObjects = SHX13_2
  SHX14_2 = CMG
  SHX14_2 = SHX14_2.updateAreaMetaData
  SHX15_2 = SHX0_2
  SHX16_2 = {}
  SHX16_2.itemInfo = SHX5_2
  SHX16_2.itemId = SHX1_2
  SHX16_2.plantId = SHX0_2
  SHX14_2(SHX15_2, SHX16_2)
end
SHX95_1(SHX96_1, SHX97_1)
SHX95_1 = AddEventHandler
SHX96_1 = "CMG:onClientSpawn"
function SHX97_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "a7fea0c702"
    SHX2_2(SHX3_2)
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "CMG:trapNetRequestContacts"
    SHX2_2(SHX3_2)
    SHX2_2 = SHX17_1
    SHX2_2()
  end
end
SHX95_1(SHX96_1, SHX97_1)
SHX95_1 = nil
function SHX96_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetEntityForwardVector
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = vector3
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX2_2.x
  SHX5_2 = SHX5_2 * 3.25
  SHX4_2 = SHX4_2 + SHX5_2
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX2_2.y
  SHX6_2 = SHX6_2 * 3.25
  SHX5_2 = SHX5_2 + SHX6_2
  SHX6_2 = SHX1_2.z
  SHX6_2 = SHX6_2 + 0.2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadModel
  SHX5_2 = 1121274932
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX5_2 = print
    SHX6_2 = "[TrapperTest] Failed to load pot model"
    SHX5_2(SHX6_2)
    return
  end
  SHX5_2 = SHX95_1
  if SHX5_2 then
    SHX5_2 = DoesEntityExist
    SHX6_2 = SHX95_1
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = DeleteEntity
      SHX6_2 = SHX95_1
      SHX5_2(SHX6_2)
      SHX5_2 = nil
      SHX95_1 = SHX5_2
    end
  end
  SHX5_2 = CreateObject
  SHX6_2 = SHX4_2
  SHX7_2 = SHX3_2.x
  SHX8_2 = SHX3_2.y
  SHX9_2 = SHX3_2.z
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = SetEntityAsMissionEntity
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SetEntityHeading
  SHX7_2 = SHX5_2
  SHX8_2 = GetEntityHeading
  SHX9_2 = SHX0_2
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX8_2(SHX9_2)
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = FreezeEntityPosition
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetEntityCollision
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = ResetEntityAlpha
  SHX7_2 = SHX5_2
  SHX6_2(SHX7_2)
  SHX95_1 = SHX5_2
  SHX6_2 = SetModelAsNoLongerNeeded
  SHX7_2 = SHX4_2
  SHX6_2(SHX7_2)
  SHX6_2 = print
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = "[TrapperTest] Spawned pot entity=%s at %.2f %.2f %.2f"
  SHX9_2 = SHX5_2
  SHX10_2 = SHX3_2.x
  SHX11_2 = SHX3_2.y
  SHX12_2 = SHX3_2.z
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX97_1 = RegisterCommand
SHX98_1 = "pot"
function SHX99_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDevMode
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX96_1
  SHX0_2()
  SHX0_2 = SHX95_1
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX95_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      goto SHX_LABEL_18
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  SHX0_2 = SHX0_1.items
  SHX0_2 = SHX0_2.plant_pot_empty
  if SHX0_2 then
    SHX1_2 = SHX0_2.interact
    if SHX1_2 then
      SHX1_2 = SHX0_2.interact
      SHX1_2 = SHX1_2.soil_bag
      if SHX1_2 then
        goto SHX_LABEL_30
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
  ::SHX_LABEL_30::
  SHX1_2 = SHX0_2.interact
  SHX1_2 = SHX1_2.soil_bag
  SHX1_2 = SHX1_2.client_use
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "function" ~= SHX2_2 then
    return
  end
  SHX2_2 = SHX1_2
  SHX3_2 = SHX95_1
  SHX2_2(SHX3_2)
end
SHX100_1 = false
SHX97_1(SHX98_1, SHX99_1, SHX100_1)
function SHX97_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if SHX0_2 < 0 then
    SHX0_2 = 0
  end
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2 / 1000
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX1_2 / 3600
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX1_2 % 3600
  SHX4_2 = SHX4_2 / 60
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX1_2 % 60
  if SHX2_2 > 0 then
    SHX5_2 = string
    SHX5_2 = SHX5_2.format
    SHX6_2 = "%d:%02d:%02d"
    SHX7_2 = SHX2_2
    SHX8_2 = SHX3_2
    SHX9_2 = SHX4_2
    return SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "%d:%02d"
  SHX7_2 = SHX3_2
  SHX8_2 = SHX4_2
  return SHX5_2(SHX6_2, SHX7_2, SHX8_2)
end
function SHX98_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX5_2 = SetTextScale
  SHX6_2 = SHX3_2
  SHX7_2 = SHX3_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetTextFont
  SHX6_2 = 4
  SHX5_2(SHX6_2)
  SHX5_2 = SetTextProportional
  SHX6_2 = true
  SHX5_2(SHX6_2)
  SHX5_2 = SetTextCentre
  SHX6_2 = true
  SHX5_2(SHX6_2)
  SHX5_2 = SetTextFont
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getFontId
  SHX7_2 = "Akrobat-ExtraBold"
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = SetTextColour
  SHX6_2 = 255
  SHX7_2 = 255
  SHX8_2 = 255
  SHX9_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = BeginTextCommandDisplayText
  SHX6_2 = "STRING"
  SHX5_2(SHX6_2)
  SHX5_2 = AddTextComponentString
  SHX6_2 = SHX0_2
  SHX5_2(SHX6_2)
  SHX5_2 = EndTextCommandDisplayText
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX5_2(SHX6_2, SHX7_2)
end
function SHX99_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX2_2 = SHX10_1.objects
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = SHX2_2.plantedAt
  if not SHX3_2 then
    return
  end
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetGameplayCamCoord
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX4_2 - SHX3_2
  SHX5_2 = #SHX5_2
  if SHX5_2 > 8.0 then
    return
  end
  SHX6_2 = 255
  if SHX5_2 > 5.0 then
    SHX7_2 = SHX5_2 - 5.0
    SHX7_2 = SHX7_2 / 5.0
    SHX8_2 = math
    SHX8_2 = SHX8_2.floor
    SHX9_2 = SHX68_1
    SHX10_2 = SHX7_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = 1.0
    SHX9_2 = SHX10_2 - SHX9_2
    SHX9_2 = 255 * SHX9_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX6_2 = SHX8_2
  end
  if SHX6_2 <= 0 then
    return
  end
  SHX7_2 = GetGameTimer
  SHX7_2 = SHX7_2()
  SHX8_2 = SHX2_2.lastHydrationTick
  if not SHX8_2 then
    SHX8_2 = SHX7_2
  end
  SHX2_2.lastHydrationTick = SHX8_2
  SHX8_2 = SHX2_2.lastHydrationTick
  SHX8_2 = SHX7_2 - SHX8_2
  if SHX8_2 > 0 then
    SHX9_2 = SHX68_1
    SHX10_2 = SHX2_2.hydration
    SHX11_2 = SHX0_1.hydrationDrainDurationMs
    SHX11_2 = SHX8_2 / SHX11_2
    SHX10_2 = SHX10_2 - SHX11_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX2_2.hydration = SHX9_2
    SHX2_2.lastHydrationTick = SHX7_2
  end
  SHX9_2 = SHX2_2.hydration
  if SHX9_2 <= 0 then
    SHX2_2.hydration = 0
    SHX9_2 = SHX2_2.pausedAt
    if not SHX9_2 then
      SHX2_2.pausedAt = SHX7_2
    end
  else
    SHX9_2 = SHX2_2.pausedAt
    if SHX9_2 then
      SHX9_2 = SHX2_2.totalPausedMs
      SHX10_2 = SHX2_2.pausedAt
      SHX10_2 = SHX7_2 - SHX10_2
      SHX9_2 = SHX9_2 + SHX10_2
      SHX2_2.totalPausedMs = SHX9_2
      SHX2_2.pausedAt = nil
    end
  end
  SHX9_2 = SHX2_2.totalPausedMs
  if not SHX9_2 then
    SHX9_2 = 0
  end
  SHX10_2 = SHX2_2.pausedAt
  if SHX10_2 then
    SHX10_2 = SHX2_2.pausedAt
    SHX10_2 = SHX7_2 - SHX10_2
    SHX9_2 = SHX9_2 + SHX10_2
  end
  SHX10_2 = SHX2_2.plantedAt
  SHX10_2 = SHX7_2 - SHX10_2
  SHX10_2 = SHX10_2 - SHX9_2
  if SHX10_2 < 0 then
    SHX10_2 = 0
  end
  SHX11_2 = SHX68_1
  SHX12_2 = SHX2_2.durationMs
  SHX12_2 = SHX10_2 / SHX12_2
  SHX11_2 = SHX11_2(SHX12_2)
  SHX12_2 = math
  SHX12_2 = SHX12_2.floor
  SHX13_2 = SHX11_2 * 100
  SHX13_2 = SHX13_2 + 0.5
  SHX12_2 = SHX12_2(SHX13_2)
  SHX2_2.growthPercent = SHX12_2
  SHX12_2 = SHX2_2.durationMs
  SHX12_2 = SHX12_2 - SHX10_2
  SHX13_2 = 0.06
  SHX14_2 = 0.008
  SHX15_2 = 0
  SHX16_2 = 0.02
  SHX17_2 = 0.03
  SHX18_2 = 0.05
  SHX19_2 = 0.06
  SHX20_2 = SetDrawOrigin
  SHX21_2 = SHX3_2.x
  SHX22_2 = SHX3_2.y
  SHX23_2 = SHX3_2.z
  SHX24_2 = 0
  SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX20_2 = SHX98_1
  SHX21_2 = string
  SHX21_2 = SHX21_2.format
  SHX22_2 = "%d%% grown"
  SHX23_2 = SHX2_2.growthPercent
  SHX21_2 = SHX21_2(SHX22_2, SHX23_2)
  SHX22_2 = 0.0
  SHX23_2 = SHX15_2
  SHX24_2 = 0.2
  SHX25_2 = SHX6_2
  SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
  SHX20_2 = SHX69_1
  SHX21_2 = SHX16_2
  SHX22_2 = SHX13_2
  SHX23_2 = SHX14_2
  SHX24_2 = SHX11_2
  SHX25_2 = 60
  SHX26_2 = 220
  SHX27_2 = 120
  SHX28_2 = SHX6_2
  SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
  SHX20_2 = SHX98_1
  SHX21_2 = string
  SHX21_2 = SHX21_2.format
  SHX22_2 = "Hydration: %d%%"
  SHX23_2 = math
  SHX23_2 = SHX23_2.floor
  SHX24_2 = SHX2_2.hydration
  SHX24_2 = SHX24_2 * 100
  SHX24_2 = SHX24_2 + 0.5
  SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX23_2(SHX24_2)
  SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
  SHX22_2 = 0.0
  SHX23_2 = SHX17_2
  SHX24_2 = 0.2
  SHX25_2 = SHX6_2
  SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
  SHX20_2 = SHX69_1
  SHX21_2 = SHX18_2
  SHX22_2 = SHX13_2
  SHX23_2 = SHX14_2
  SHX24_2 = SHX2_2.hydration
  SHX25_2 = 80
  SHX26_2 = 160
  SHX27_2 = 255
  SHX28_2 = SHX6_2
  SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
  SHX20_2 = SHX98_1
  SHX21_2 = "Time left: "
  SHX22_2 = SHX97_1
  SHX23_2 = SHX12_2
  SHX22_2 = SHX22_2(SHX23_2)
  SHX21_2 = SHX21_2 .. SHX22_2
  SHX22_2 = 0.0
  SHX23_2 = SHX19_2
  SHX24_2 = 0.2
  SHX25_2 = SHX6_2
  SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
  SHX20_2 = ClearDrawOrigin
  SHX20_2()
end
SHX100_1 = CreateThread
function SHX101_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  while true do
    SHX0_2 = pairs
    SHX1_2 = SHX10_1.objects
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = SHX0_1.items
      SHX7_2 = SHX5_2.itemId
      SHX6_2 = SHX6_2[SHX7_2]
      if SHX6_2 then
        SHX7_2 = SHX6_2.drawUI
        if SHX7_2 then
          SHX7_2 = SHX99_1
          SHX8_2 = SHX4_2
          SHX9_2 = SHX5_2.object
          SHX7_2(SHX8_2, SHX9_2)
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX100_1(SHX101_1)
SHX100_1 = RegisterNetEvent
SHX101_1 = "75f86594c8"
function SHX102_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX3_2 = SHX10_1.objects
  SHX3_2 = SHX3_2[SHX1_2]
  if SHX3_2 then
    SHX4_2 = SHX3_2.object
    if SHX4_2 then
      SHX4_2 = DoesEntityExist
      SHX5_2 = SHX3_2.object
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        goto SHX_LABEL_18
      end
    end
  end
  SHX4_2 = print
  SHX5_2 = "CMG:trapperClientUse - no plant object for plantId:"
  SHX6_2 = SHX1_2
  SHX4_2(SHX5_2, SHX6_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  SHX4_2 = SHX0_1.items
  SHX5_2 = SHX3_2.itemId
  SHX4_2 = SHX4_2[SHX5_2]
  SHX5_2 = SHX4_2.interact
  SHX5_2 = SHX5_2[SHX0_2]
  if not SHX5_2 then
    return
  end
  SHX5_2 = SHX4_2.interact
  SHX5_2 = SHX5_2[SHX0_2]
  SHX5_2 = SHX5_2.client_all
  if SHX5_2 then
    SHX5_2 = SHX4_2.interact
    SHX5_2 = SHX5_2[SHX0_2]
    SHX5_2 = SHX5_2.client_all
    SHX6_2 = SHX3_2
    SHX5_2(SHX6_2)
  end
  if SHX2_2 then
    SHX5_2 = SHX4_2.interact
    SHX5_2 = SHX5_2[SHX0_2]
    if SHX5_2 then
      SHX5_2 = SHX4_2.interact
      SHX5_2 = SHX5_2[SHX0_2]
      SHX5_2 = SHX5_2.client_use
      if SHX5_2 then
        SHX5_2 = SHX4_2.interact
        SHX5_2 = SHX5_2[SHX0_2]
        SHX5_2 = SHX5_2.client_use
        SHX6_2 = SHX3_2.object
        SHX7_2 = SHX1_2
        SHX5_2(SHX6_2, SHX7_2)
    end
    else
      SHX5_2 = print
      SHX6_2 = "CMG:trapperClientUse - no client_use found for action:"
      SHX7_2 = SHX0_2
      SHX8_2 = "on item:"
      SHX9_2 = SHX3_2.itemId
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    end
  end
end
SHX100_1(SHX101_1, SHX102_1)
SHX100_1 = RegisterNetEvent
SHX101_1 = "a0cb4df825"
function SHX102_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX2_2 = SHX0_1.plantStages
  SHX2_2 = SHX2_2[SHX1_2]
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX10_1.objects
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2 = SHX3_2.object
  if SHX3_2 then
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      goto SHX_LABEL_17
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX4_2 = SHX2_2.prop
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = GetEntityHeading
  SHX7_2 = SHX3_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = DeleteEntity
  SHX8_2 = SHX3_2
  SHX7_2(SHX8_2)
  SHX7_2 = CreateObject
  SHX8_2 = SHX4_2
  SHX9_2 = SHX5_2.x
  SHX10_2 = SHX5_2.y
  SHX11_2 = SHX5_2.z
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX8_2 = SetEntityHeading
  SHX9_2 = SHX7_2
  SHX10_2 = SHX6_2
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = FreezeEntityPosition
  SHX9_2 = SHX7_2
  SHX10_2 = true
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SHX10_1.objects
  SHX8_2 = SHX8_2[SHX0_2]
  SHX8_2.object = SHX7_2
end
SHX100_1(SHX101_1, SHX102_1)
SHX100_1 = RegisterNetEvent
SHX101_1 = "c8a4567418"
function SHX102_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = SHX10_1.objects
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    return
  end
  SHX3_2 = GetCloudTimeAsInt
  SHX3_2 = SHX3_2()
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  if SHX1_2 then
    SHX5_2 = SHX1_2.plantedAt
    if SHX5_2 then
      goto SHX_LABEL_16
    end
  end
  SHX5_2 = SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
  ::SHX_LABEL_16::
  if SHX1_2 then
    SHX6_2 = SHX1_2.lastWateredAt
    if SHX6_2 then
      goto SHX_LABEL_22
    end
  end
  SHX6_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  SHX7_2 = math
  SHX7_2 = SHX7_2.max
  SHX8_2 = 0
  SHX9_2 = SHX3_2 - SHX5_2
  SHX9_2 = SHX9_2 * 1000
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = 0.0
  if SHX6_2 then
    SHX9_2 = math
    SHX9_2 = SHX9_2.max
    SHX10_2 = 0
    SHX11_2 = SHX3_2 - SHX6_2
    SHX11_2 = SHX11_2 * 1000
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX10_2 = SHX0_1.hydrationDrainDurationMs
    SHX10_2 = SHX9_2 / SHX10_2
    SHX11_2 = 1.0
    SHX8_2 = SHX11_2 - SHX10_2
  end
  SHX9_2 = SHX4_2 - SHX7_2
  SHX2_2.plantedAt = SHX9_2
  if SHX1_2 then
    SHX9_2 = SHX1_2.growthDurationMs
    if SHX9_2 then
      goto SHX_LABEL_56
    end
  end
  SHX9_2 = SHX0_1.plantGrowthDurationMs
  -- [FIX IF ERROR] Move ::SHX_LABEL_56:: outside nested blocks until all 'goto SHX_LABEL_56' can see it
  ::SHX_LABEL_56::
  SHX2_2.durationMs = SHX9_2
  SHX9_2 = math
  SHX9_2 = SHX9_2.max
  SHX10_2 = 0.0
  SHX11_2 = math
  SHX11_2 = SHX11_2.min
  SHX12_2 = 1.0
  SHX13_2 = SHX8_2
  SHX11_2, SHX12_2, SHX13_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2.hydration = SHX9_2
  SHX2_2.lastHydrationTick = SHX4_2
  if SHX1_2 then
    SHX9_2 = SHX1_2.totalPausedMs
    if SHX9_2 then
      goto SHX_LABEL_74
    end
  end
  SHX9_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_74:: outside nested blocks until all 'goto SHX_LABEL_74' can see it
  ::SHX_LABEL_74::
  SHX2_2.totalPausedMs = SHX9_2
  SHX2_2.growthPercent = 0
  if SHX1_2 then
    SHX9_2 = SHX1_2.pausedAt
    if SHX9_2 then
      SHX9_2 = math
      SHX9_2 = SHX9_2.max
      SHX10_2 = 0
      SHX11_2 = SHX1_2.pausedAt
      SHX11_2 = SHX3_2 - SHX11_2
      SHX11_2 = SHX11_2 * 1000
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX10_2 = SHX4_2 - SHX9_2
      SHX2_2.pausedAt = SHX10_2
  end
  else
    SHX2_2.pausedAt = nil
  end
end
SHX100_1(SHX101_1, SHX102_1)
SHX100_1 = false
SHX101_1 = {}
SHX102_1 = {}
SHX103_1 = "anim@amb@business@weed@weed_sorting_seated@"
SHX104_1 = "sorter_right_sort_v3_sorter02"
SHX105_1 = {}
SHX105_1.weedbud5a = "sorter_right_sort_v3_weedbud02b^4"
SHX105_1.weedbuck = "sorter_right_sort_v3_bucket01a^1"
SHX106_1 = {}
SHX106_1.weedbud5a = "bkr_prop_weed_bud_02b"
SHX106_1.weedbuck = "bkr_prop_weed_bucket_open_01a"
SHX107_1 = 2.0
SHX108_1 = vector3
SHX109_1 = 0.0378
SHX110_1 = 0.92338
SHX111_1 = 0.03991
SHX108_1 = SHX108_1(SHX109_1, SHX110_1, SHX111_1)
SHX109_1 = vector3
SHX110_1 = 0.9
SHX111_1 = -0.1
SHX112_1 = 0.9
SHX109_1 = SHX109_1(SHX110_1, SHX111_1, SHX112_1)
function SHX110_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.rad
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = math
  SHX3_2 = SHX3_2.cos
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.sin
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = vector3
  SHX6_2 = SHX0_2.x
  SHX6_2 = SHX6_2 * SHX3_2
  SHX7_2 = SHX0_2.y
  SHX7_2 = SHX7_2 * SHX4_2
  SHX6_2 = SHX6_2 - SHX7_2
  SHX7_2 = SHX0_2.x
  SHX7_2 = SHX7_2 * SHX4_2
  SHX8_2 = SHX0_2.y
  SHX8_2 = SHX8_2 * SHX3_2
  SHX7_2 = SHX7_2 + SHX8_2
  SHX8_2 = SHX0_2.z
  return SHX5_2(SHX6_2, SHX7_2, SHX8_2)
end
function SHX111_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2 = NetworkRequestControlOfEntity
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2 + 800
  while true do
    SHX2_2 = NetworkHasControlOfEntity
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    if not (SHX1_2 > SHX2_2) then
      break
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = NetworkRequestControlOfEntity
    SHX3_2 = SHX0_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = DeleteEntity
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
end
SHX112_1 = {}
SHX113_1 = 0
SHX114_1 = false
function SHX115_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.weedWorkbenchFp
  SHX0_2 = SHX0_2.fpCamOffset
  return SHX0_2
end
function SHX116_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.weedWorkbenchFp
  SHX0_2 = SHX0_2.unprocessedTrayOffset
  return SHX0_2
end
function SHX117_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.weedWorkbenchFp
  SHX0_2 = SHX0_2.processedTrayOffset
  return SHX0_2
end
function SHX118_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.weedWorkbenchFp
  SHX0_2 = SHX0_2.fpFov
  if not SHX0_2 then
    SHX0_2 = 52.0
  end
  return SHX0_2
end
function SHX119_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.weedWorkbenchFp
  SHX0_2 = SHX0_2.unprocessedTrayHeadingAdd
  if not SHX0_2 then
    SHX0_2 = 0.0
  end
  return SHX0_2
end
function SHX120_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.weedWorkbenchFp
  SHX0_2 = SHX0_2.processedTrayHeadingAdd
  if not SHX0_2 then
    SHX0_2 = 0.0
  end
  return SHX0_2
end
function SHX121_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.weedWorkbenchFp
  SHX0_2 = SHX0_2.tableBudOffset
  return SHX0_2
end
function SHX122_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = SHX112_1
    SHX1_2[SHX0_2] = true
  end
end
function SHX123_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if SHX0_2 then
    SHX1_2 = SHX112_1
    SHX1_2[SHX0_2] = nil
  end
end
function SHX124_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_2 or nil
  SHX1_2 = SHX0_2 and 0 ~= SHX0_2
  return SHX1_2
end
function SHX125_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.sqrt
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.x
  SHX2_2 = SHX2_2 * SHX3_2
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.y
  SHX3_2 = SHX3_2 * SHX4_2
  SHX2_2 = SHX2_2 + SHX3_2
  SHX3_2 = SHX0_2.z
  SHX4_2 = SHX0_2.z
  SHX3_2 = SHX3_2 * SHX4_2
  SHX2_2 = SHX2_2 + SHX3_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = 1.0E-6
  if SHX1_2 < SHX2_2 then
    SHX2_2 = vector3
    SHX3_2 = 0.0
    SHX4_2 = 0.0
    SHX5_2 = 1.0
    return SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
  SHX2_2 = vector3
  SHX3_2 = SHX0_2.x
  SHX3_2 = SHX3_2 / SHX1_2
  SHX4_2 = SHX0_2.y
  SHX4_2 = SHX4_2 / SHX1_2
  SHX5_2 = SHX0_2.z
  SHX5_2 = SHX5_2 / SHX1_2
  return SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX126_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = SHX3_1.cam
  if not SHX0_2 then
    SHX0_2 = nil
    SHX1_2 = nil
    return SHX0_2, SHX1_2
  end
  SHX0_2 = GetDisabledControlNormal
  SHX1_2 = 0
  SHX2_2 = 239
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = GetDisabledControlNormal
  SHX2_2 = 0
  SHX3_2 = 240
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX0_2 then
    SHX0_2 = 0.5
  end
  if not SHX1_2 then
    SHX1_2 = 0.5
  end
  SHX2_2 = GetCamMatrix
  SHX3_2 = SHX3_1.cam
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  SHX6_2 = GetCamFov
  SHX7_2 = SHX3_1.cam
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = GetActiveScreenResolution
  SHX7_2, SHX8_2 = SHX7_2()
  SHX9_2 = math
  SHX9_2 = SHX9_2.max
  SHX10_2 = SHX8_2
  SHX11_2 = 1.0
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = SHX7_2 / SHX9_2
  SHX10_2 = math
  SHX10_2 = SHX10_2.tan
  SHX11_2 = math
  SHX11_2 = SHX11_2.rad
  SHX12_2 = SHX6_2 * 0.5
  SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX11_2(SHX12_2)
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX11_2 = SHX10_2 * SHX9_2
  SHX12_2 = SHX0_2 - 0.5
  SHX12_2 = SHX12_2 * 2.0
  SHX13_2 = 0.5
  SHX13_2 = SHX13_2 - SHX1_2
  SHX13_2 = SHX13_2 * 2.0
  SHX14_2 = SHX12_2 * SHX11_2
  SHX14_2 = SHX2_2 * SHX14_2
  SHX14_2 = SHX3_2 + SHX14_2
  SHX15_2 = SHX13_2 * SHX10_2
  SHX15_2 = SHX4_2 * SHX15_2
  SHX14_2 = SHX14_2 + SHX15_2
  SHX15_2 = SHX5_2
  SHX16_2 = SHX125_1
  SHX17_2 = vector3
  SHX18_2 = SHX14_2.x
  SHX19_2 = SHX14_2.y
  SHX20_2 = SHX14_2.z
  SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2)
  SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  return SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
end
function SHX127_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetEntityHeading
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = SHX1_2 + 180.0
  SHX1_2 = SHX1_2 % 360.0
  return SHX1_2
end
function SHX128_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX127_1
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX110_1
  SHX5_2 = SHX1_2
  SHX6_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = vector3
  SHX6_2 = SHX2_2.x
  SHX7_2 = SHX4_2.x
  SHX6_2 = SHX6_2 + SHX7_2
  SHX7_2 = SHX2_2.y
  SHX8_2 = SHX4_2.y
  SHX7_2 = SHX7_2 + SHX8_2
  SHX8_2 = SHX2_2.z
  SHX9_2 = SHX4_2.z
  SHX8_2 = SHX8_2 + SHX9_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = SHX3_2
  return SHX5_2, SHX6_2
end
function SHX129_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  if SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = nil
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = pairs
  SHX2_2 = SHX10_1.objects
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.itemId
    if "weed_workbench" == SHX7_2 then
      SHX7_2 = SHX6_2.object
      if SHX7_2 == SHX0_2 then
        SHX7_2 = SHX6_2.extraObjects
        if SHX7_2 then
          SHX7_2 = ipairs
          SHX8_2 = SHX6_2.extraObjects
          SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
          for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
            if SHX12_2 and 0 ~= SHX12_2 then
              SHX13_2 = DoesEntityExist
              SHX14_2 = SHX12_2
              SHX13_2 = SHX13_2(SHX14_2)
              if SHX13_2 then
                return SHX12_2
              end
            end
          end
        end
      end
    end
  end
  SHX1_2 = nil
  return SHX1_2
end
function SHX130_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX129_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX2_2 = GetEntityCoords
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = SHX0_1.weedWorkbenchFp
    SHX3_2 = SHX3_2.fpCamLookAtZOffset
    if not SHX3_2 then
      SHX3_2 = 0.42
    end
    SHX4_2 = vector3
    SHX5_2 = SHX2_2.x
    SHX6_2 = SHX2_2.y
    SHX7_2 = SHX2_2.z
    SHX7_2 = SHX7_2 + SHX3_2
    return SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
  SHX2_2 = select
  SHX3_2 = 1
  SHX4_2 = SHX128_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX121_1
  SHX6_2, SHX7_2 = SHX6_2()
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  return SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
function SHX131_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX128_1
  SHX2_2 = SHX0_2
  SHX3_2 = SHX121_1
  SHX3_2 = SHX3_2()
  return SHX1_2(SHX2_2, SHX3_2)
end
function SHX132_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientInventoryItemList
  SHX0_2 = SHX0_2()
  SHX1_2 = {}
  if not SHX0_2 then
    return SHX1_2
  end
  SHX2_2 = 100
  SHX3_2 = 1
  SHX4_2 = -1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = "weed_bud_"
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2 .. SHX7_2
    SHX7_2 = SHX0_2[SHX6_2]
    if SHX7_2 then
      SHX8_2 = SHX7_2[2]
      if SHX8_2 then
        goto SHX_LABEL_23
      end
    end
    SHX8_2 = 0
    -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
    ::SHX_LABEL_23::
    SHX9_2 = 1
    SHX10_2 = SHX8_2
    SHX11_2 = 1
    for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
      SHX13_2 = #SHX1_2
      SHX13_2 = SHX13_2 + 1
      SHX1_2[SHX13_2] = SHX5_2
    end
  end
  return SHX1_2
end
function SHX133_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX132_1
  SHX0_2 = SHX0_2()
  SHX1_2 = #SHX0_2
  if 0 == SHX1_2 then
    SHX1_2 = {}
    SHX3_1.remainingPurities = SHX1_2
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = SHX0_1.weedWorkbenchFp
  SHX2_2 = SHX1_2.trayBudSlotLocals
  SHX2_2 = #SHX2_2
  SHX3_2 = SHX1_2.maxUnprocessedBudsVisible
  if not SHX3_2 then
    SHX3_2 = SHX2_2
  end
  if SHX2_2 < SHX3_2 then
    SHX3_2 = SHX2_2
  end
  SHX4_2 = #SHX0_2
  if SHX3_2 < SHX4_2 then
    SHX4_2 = SHX3_2
  end
  SHX5_2 = {}
  SHX3_1.remainingPurities = SHX5_2
  SHX5_2 = 1
  SHX6_2 = SHX4_2
  SHX7_2 = 1
  for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = SHX3_1.remainingPurities
    SHX10_2 = SHX0_2[SHX8_2]
    SHX9_2[SHX8_2] = SHX10_2
  end
  SHX5_2 = true
  return SHX5_2
end
function SHX134_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if not SHX0_2 then
    return
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX3_1.remainingPurities
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX6_2 == SHX0_2 then
      SHX7_2 = table
      SHX7_2 = SHX7_2.remove
      SHX8_2 = SHX3_1.remainingPurities
      SHX9_2 = SHX5_2
      SHX7_2(SHX8_2, SHX9_2)
      return
    end
  end
end
function SHX135_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientInventoryItemList
  SHX0_2 = SHX0_2()
  SHX1_2 = {}
  if not SHX0_2 then
    return SHX1_2
  end
  SHX2_2 = 100
  SHX3_2 = 1
  SHX4_2 = -1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = "weed_processed_bud_"
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2 .. SHX7_2
    SHX7_2 = SHX0_2[SHX6_2]
    if SHX7_2 then
      SHX8_2 = SHX7_2[2]
      if SHX8_2 then
        goto SHX_LABEL_23
      end
    end
    SHX8_2 = 0
    -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
    ::SHX_LABEL_23::
    SHX9_2 = 1
    SHX10_2 = SHX8_2
    SHX11_2 = 1
    for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
      SHX13_2 = #SHX1_2
      SHX13_2 = SHX13_2 + 1
      SHX1_2[SHX13_2] = SHX5_2
    end
  end
  return SHX1_2
end
function SHX136_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = SHX135_1
  SHX0_2 = SHX0_2()
  SHX1_2 = #SHX0_2
  if 0 == SHX1_2 then
    SHX1_2 = {}
    SHX3_1.bagRemainingPurities = SHX1_2
    SHX3_1.emptyBagsRemaining = 0
    SHX1_2 = false
    SHX2_2 = "no_proc"
    return SHX1_2, SHX2_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientInventoryItemList
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.weed_bag_empty
  end
  if SHX2_2 then
    SHX3_2 = SHX2_2[2]
    if SHX3_2 then
      goto SHX_LABEL_25
    end
  end
  SHX3_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
  ::SHX_LABEL_25::
  if SHX3_2 < 1 then
    SHX4_2 = {}
    SHX3_1.bagRemainingPurities = SHX4_2
    SHX3_1.emptyBagsRemaining = 0
    SHX4_2 = false
    SHX5_2 = "no_bag"
    return SHX4_2, SHX5_2
  end
  SHX4_2 = SHX0_1.weedWorkbenchFp
  SHX5_2 = SHX4_2.trayBudSlotLocals
  SHX5_2 = #SHX5_2
  SHX6_2 = SHX4_2.maxProcessedBudsBaggingVisible
  if not SHX6_2 then
    SHX6_2 = SHX5_2
  end
  if SHX5_2 < SHX6_2 then
    SHX6_2 = SHX5_2
  end
  SHX7_2 = #SHX0_2
  if SHX6_2 < SHX7_2 then
    SHX7_2 = SHX6_2
  end
  SHX8_2 = {}
  SHX3_1.bagRemainingPurities = SHX8_2
  SHX8_2 = 1
  SHX9_2 = SHX7_2
  SHX10_2 = 1
  for SHX11_2 = SHX8_2, SHX9_2, SHX10_2 do
    SHX12_2 = SHX3_1.bagRemainingPurities
    SHX13_2 = SHX0_2[SHX11_2]
    SHX12_2[SHX11_2] = SHX13_2
  end
  SHX3_1.emptyBagsRemaining = SHX3_2
  SHX8_2 = true
  return SHX8_2
end
function SHX137_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if not SHX0_2 then
    return
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX3_1.bagRemainingPurities
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX6_2 == SHX0_2 then
      SHX7_2 = table
      SHX7_2 = SHX7_2.remove
      SHX8_2 = SHX3_1.bagRemainingPurities
      SHX9_2 = SHX5_2
      SHX7_2(SHX8_2, SHX9_2)
      return
    end
  end
end
function SHX138_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = ipairs
  SHX2_2 = SHX3_1.bagBudSlots
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.ent
    if SHX7_2 == SHX0_2 then
      SHX7_2 = SHX6_2.purity
      return SHX7_2
    end
  end
  SHX1_2 = nil
  return SHX1_2
end
function SHX139_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = ipairs
  SHX2_2 = SHX3_1.emptyBagEnts
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX6_2 == SHX0_2 then
      SHX7_2 = true
      return SHX7_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX140_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = SHX123_1
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
      SHX1_2 = SetEntityAsMissionEntity
      SHX2_2 = SHX0_2
      SHX3_2 = true
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
    end
  end
end
function SHX141_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = ipairs
  SHX1_2 = SHX3_1.bagBudSlots
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.ent
    if SHX6_2 then
      SHX6_2 = SHX140_1
      SHX7_2 = SHX5_2.ent
      SHX6_2(SHX7_2)
      SHX5_2.ent = nil
    end
  end
  SHX0_2 = {}
  SHX3_1.bagBudSlots = SHX0_2
end
function SHX142_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = ipairs
  SHX1_2 = SHX3_1.emptyBagEnts
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX140_1
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX3_1.emptyBagEnts = SHX0_2
end
function SHX143_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2
  SHX0_2 = SHX141_1
  SHX0_2()
  SHX0_2 = SHX3_1.unprocessedTray
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX3_1.unprocessedTray
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX0_2 = math
  SHX0_2 = SHX0_2.min
  SHX1_2 = SHX3_1.bagRemainingPurities
  SHX1_2 = #SHX1_2
  SHX2_2 = SHX0_1.weedWorkbenchFp
  SHX2_2 = SHX2_2.maxProcessedBudsBaggingVisible
  if not SHX2_2 then
    SHX2_2 = 12
  end
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = SHX0_1.weedWorkbenchFp
  SHX1_2 = SHX1_2.trayBudSlotLocals
  SHX2_2 = GetEntityRotation
  SHX3_2 = SHX3_1.unprocessedTray
  SHX4_2 = 2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX0_1.items
  SHX3_2 = SHX3_2.weed_processed_bud_1
  SHX4_2 = SHX3_2 or SHX4_2
  if SHX3_2 then
    SHX4_2 = SHX3_2.model
  end
  if not SHX4_2 then
    return
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    return
  end
  SHX6_2 = 1
  SHX7_2 = SHX0_2
  SHX8_2 = 1
  for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2 = SHX1_2[SHX9_2]
    if not SHX10_2 then
      break
    end
    SHX11_2 = SHX10_2.x
    SHX12_2 = SHX10_2.y
    SHX13_2 = SHX10_2.z
    SHX14_2 = GetOffsetFromEntityInWorldCoords
    SHX15_2 = SHX3_1.unprocessedTray
    SHX16_2 = SHX11_2
    SHX17_2 = SHX12_2
    SHX18_2 = SHX13_2
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX15_2 = CreateObject
    SHX16_2 = SHX5_2
    SHX17_2 = SHX14_2.x
    SHX18_2 = SHX14_2.y
    SHX19_2 = SHX14_2.z
    SHX20_2 = false
    SHX21_2 = false
    SHX22_2 = false
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    while true do
      SHX16_2 = DoesEntityExist
      SHX17_2 = SHX15_2
      SHX16_2 = SHX16_2(SHX17_2)
      if SHX16_2 then
        break
      end
      SHX16_2 = Wait
      SHX17_2 = 0
      SHX16_2(SHX17_2)
    end
    SHX16_2 = SetEntityRotation
    SHX17_2 = SHX15_2
    SHX18_2 = SHX2_2.x
    SHX19_2 = SHX2_2.y
    SHX20_2 = SHX2_2.z
    SHX21_2 = 2
    SHX22_2 = true
    SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX16_2 = AttachEntityToEntity
    SHX17_2 = SHX15_2
    SHX18_2 = SHX3_1.unprocessedTray
    SHX19_2 = 0
    SHX20_2 = SHX11_2
    SHX21_2 = SHX12_2
    SHX22_2 = SHX13_2
    SHX23_2 = 0.0
    SHX24_2 = 0.0
    SHX25_2 = 0.0
    SHX26_2 = false
    SHX27_2 = false
    SHX28_2 = false
    SHX29_2 = false
    SHX30_2 = 2
    SHX31_2 = true
    SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
    SHX16_2 = FreezeEntityPosition
    SHX17_2 = SHX15_2
    SHX18_2 = true
    SHX16_2(SHX17_2, SHX18_2)
    SHX16_2 = SetEntityCollision
    SHX17_2 = SHX15_2
    SHX18_2 = false
    SHX19_2 = false
    SHX16_2(SHX17_2, SHX18_2, SHX19_2)
    SHX16_2 = SHX122_1
    SHX17_2 = SHX15_2
    SHX16_2(SHX17_2)
    SHX16_2 = SHX3_1.bagBudSlots
    SHX17_2 = SHX3_1.bagBudSlots
    SHX17_2 = #SHX17_2
    SHX17_2 = SHX17_2 + 1
    SHX18_2 = {}
    SHX18_2.ent = SHX15_2
    SHX19_2 = SHX3_1.bagRemainingPurities
    SHX19_2 = SHX19_2[SHX9_2]
    SHX18_2.purity = SHX19_2
    SHX16_2[SHX17_2] = SHX18_2
  end
  SHX6_2 = SetModelAsNoLongerNeeded
  SHX7_2 = SHX5_2
  SHX6_2(SHX7_2)
end
function SHX144_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2
  SHX0_2 = SHX142_1
  SHX0_2()
  SHX0_2 = SHX3_1.unprocessedTray
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX3_1.unprocessedTray
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX0_2 = SHX0_1.weedWorkbenchFp
  SHX1_2 = SHX0_2.baggingEmptyBagSlotLocals
  if not SHX1_2 then
    SHX1_2 = {}
  end
  SHX2_2 = math
  SHX2_2 = SHX2_2.min
  SHX3_2 = SHX3_1.emptyBagsRemaining
  SHX4_2 = SHX0_2.maxEmptyBagsVisible
  if not SHX4_2 then
    SHX4_2 = 10
  end
  SHX5_2 = #SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = SHX0_1.items
  SHX3_2 = SHX3_2.weed_bag_empty
  SHX4_2 = SHX3_2 or SHX4_2
  if SHX3_2 then
    SHX4_2 = SHX3_2.model
  end
  if not SHX4_2 or SHX2_2 < 1 then
    return
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    return
  end
  SHX6_2 = GetEntityRotation
  SHX7_2 = SHX3_1.unprocessedTray
  SHX8_2 = 2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = 1
  SHX8_2 = SHX2_2
  SHX9_2 = 1
  for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
    SHX11_2 = SHX1_2[SHX10_2]
    if not SHX11_2 then
      break
    end
    SHX12_2 = SHX11_2.x
    SHX13_2 = SHX11_2.y
    SHX14_2 = SHX11_2.z
    SHX15_2 = GetOffsetFromEntityInWorldCoords
    SHX16_2 = SHX3_1.unprocessedTray
    SHX17_2 = SHX12_2
    SHX18_2 = SHX13_2
    SHX19_2 = SHX14_2
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX16_2 = CreateObject
    SHX17_2 = SHX5_2
    SHX18_2 = SHX15_2.x
    SHX19_2 = SHX15_2.y
    SHX20_2 = SHX15_2.z
    SHX21_2 = false
    SHX22_2 = false
    SHX23_2 = false
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    while true do
      SHX17_2 = DoesEntityExist
      SHX18_2 = SHX16_2
      SHX17_2 = SHX17_2(SHX18_2)
      if SHX17_2 then
        break
      end
      SHX17_2 = Wait
      SHX18_2 = 0
      SHX17_2(SHX18_2)
    end
    SHX17_2 = SetEntityRotation
    SHX18_2 = SHX16_2
    SHX19_2 = SHX6_2.x
    SHX20_2 = SHX6_2.y
    SHX21_2 = SHX6_2.z
    SHX22_2 = 2
    SHX23_2 = true
    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    SHX17_2 = AttachEntityToEntity
    SHX18_2 = SHX16_2
    SHX19_2 = SHX3_1.unprocessedTray
    SHX20_2 = 0
    SHX21_2 = SHX12_2
    SHX22_2 = SHX13_2
    SHX23_2 = SHX14_2
    SHX24_2 = 0.0
    SHX25_2 = 0.0
    SHX26_2 = 0.0
    SHX27_2 = false
    SHX28_2 = false
    SHX29_2 = false
    SHX30_2 = false
    SHX31_2 = 2
    SHX32_2 = true
    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
    SHX17_2 = FreezeEntityPosition
    SHX18_2 = SHX16_2
    SHX19_2 = true
    SHX17_2(SHX18_2, SHX19_2)
    SHX17_2 = SetEntityCollision
    SHX18_2 = SHX16_2
    SHX19_2 = false
    SHX20_2 = false
    SHX17_2(SHX18_2, SHX19_2, SHX20_2)
    SHX17_2 = SHX122_1
    SHX18_2 = SHX16_2
    SHX17_2(SHX18_2)
    SHX17_2 = SHX3_1.emptyBagEnts
    SHX18_2 = SHX3_1.emptyBagEnts
    SHX18_2 = #SHX18_2
    SHX18_2 = SHX18_2 + 1
    SHX17_2[SHX18_2] = SHX16_2
  end
  SHX7_2 = SetModelAsNoLongerNeeded
  SHX8_2 = SHX5_2
  SHX7_2(SHX8_2)
end
function SHX145_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX143_1
  SHX0_2()
  SHX0_2 = SHX144_1
  SHX0_2()
end
function SHX146_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = ipairs
  SHX1_2 = SHX3_1.slots
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.ent
    if SHX6_2 then
      SHX6_2 = SHX140_1
      SHX7_2 = SHX5_2.ent
      SHX6_2(SHX7_2)
      SHX5_2.ent = nil
    end
  end
  SHX0_2 = {}
  SHX3_1.slots = SHX0_2
end
function SHX147_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX3_2 = SHX128_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  SHX6_2 = SHX0_1.weedWorkbenchFp
  SHX6_2 = SHX6_2.fpTrayModel
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    SHX6_2 = nil
    return SHX6_2
  end
  SHX6_2 = CreateObject
  SHX7_2 = SHX5_2
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX3_2.z
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  while true do
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      break
    end
    SHX7_2 = Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
  end
  SHX7_2 = SetEntityHeading
  SHX8_2 = SHX6_2
  SHX9_2 = SHX4_2 + SHX2_2
  SHX9_2 = SHX9_2 % 360.0
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = FreezeEntityPosition
  SHX8_2 = SHX6_2
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SetEntityCollision
  SHX8_2 = SHX6_2
  SHX9_2 = false
  SHX10_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SHX122_1
  SHX8_2 = SHX6_2
  SHX7_2(SHX8_2)
  SHX7_2 = SetModelAsNoLongerNeeded
  SHX8_2 = SHX5_2
  SHX7_2(SHX8_2)
  return SHX6_2
end
function SHX148_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2
  SHX0_2 = SHX146_1
  SHX0_2()
  SHX0_2 = SHX3_1.unprocessedTray
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX3_1.unprocessedTray
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX0_2 = math
  SHX0_2 = SHX0_2.min
  SHX1_2 = SHX3_1.remainingPurities
  SHX1_2 = #SHX1_2
  SHX2_2 = SHX0_1.weedWorkbenchFp
  SHX2_2 = SHX2_2.maxUnprocessedBudsVisible
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = SHX0_1.weedWorkbenchFp
  SHX1_2 = SHX1_2.trayBudSlotLocals
  SHX2_2 = GetEntityRotation
  SHX3_2 = SHX3_1.unprocessedTray
  SHX4_2 = 2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX0_1.items
  SHX3_2 = SHX3_2.weed_bud_1
  SHX4_2 = SHX3_2 or SHX4_2
  if SHX3_2 then
    SHX4_2 = SHX3_2.model
  end
  if not SHX4_2 then
    return
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    return
  end
  SHX6_2 = 1
  SHX7_2 = SHX0_2
  SHX8_2 = 1
  for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2 = SHX1_2[SHX9_2]
    if not SHX10_2 then
      break
    end
    SHX11_2 = table
    SHX11_2 = SHX11_2.unpack
    SHX12_2 = {}
    SHX13_2 = SHX10_2.x
    SHX14_2 = SHX10_2.y
    SHX15_2 = SHX10_2.z
    SHX12_2[1] = SHX13_2
    SHX12_2[2] = SHX14_2
    SHX12_2[3] = SHX15_2
    SHX11_2, SHX12_2, SHX13_2 = SHX11_2(SHX12_2)
    SHX14_2 = GetOffsetFromEntityInWorldCoords
    SHX15_2 = SHX3_1.unprocessedTray
    SHX16_2 = SHX11_2
    SHX17_2 = SHX12_2
    SHX18_2 = SHX13_2
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX15_2 = CreateObject
    SHX16_2 = SHX5_2
    SHX17_2 = SHX14_2.x
    SHX18_2 = SHX14_2.y
    SHX19_2 = SHX14_2.z
    SHX20_2 = false
    SHX21_2 = false
    SHX22_2 = false
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    while true do
      SHX16_2 = DoesEntityExist
      SHX17_2 = SHX15_2
      SHX16_2 = SHX16_2(SHX17_2)
      if SHX16_2 then
        break
      end
      SHX16_2 = Wait
      SHX17_2 = 0
      SHX16_2(SHX17_2)
    end
    SHX16_2 = SetEntityRotation
    SHX17_2 = SHX15_2
    SHX18_2 = SHX2_2.x
    SHX19_2 = SHX2_2.y
    SHX20_2 = SHX2_2.z
    SHX21_2 = 2
    SHX22_2 = true
    SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX16_2 = AttachEntityToEntity
    SHX17_2 = SHX15_2
    SHX18_2 = SHX3_1.unprocessedTray
    SHX19_2 = 0
    SHX20_2 = SHX11_2
    SHX21_2 = SHX12_2
    SHX22_2 = SHX13_2
    SHX23_2 = 0.0
    SHX24_2 = 0.0
    SHX25_2 = 0.0
    SHX26_2 = false
    SHX27_2 = false
    SHX28_2 = false
    SHX29_2 = false
    SHX30_2 = 2
    SHX31_2 = true
    SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
    SHX16_2 = FreezeEntityPosition
    SHX17_2 = SHX15_2
    SHX18_2 = true
    SHX16_2(SHX17_2, SHX18_2)
    SHX16_2 = SetEntityCollision
    SHX17_2 = SHX15_2
    SHX18_2 = false
    SHX19_2 = false
    SHX16_2(SHX17_2, SHX18_2, SHX19_2)
    SHX16_2 = SHX122_1
    SHX17_2 = SHX15_2
    SHX16_2(SHX17_2)
    SHX16_2 = SHX3_1.slots
    SHX17_2 = SHX3_1.slots
    SHX17_2 = #SHX17_2
    SHX17_2 = SHX17_2 + 1
    SHX18_2 = {}
    SHX18_2.ent = SHX15_2
    SHX19_2 = SHX3_1.remainingPurities
    SHX19_2 = SHX19_2[SHX9_2]
    SHX18_2.purity = SHX19_2
    SHX16_2[SHX17_2] = SHX18_2
  end
  SHX6_2 = SetModelAsNoLongerNeeded
  SHX7_2 = SHX5_2
  SHX6_2(SHX7_2)
end
function SHX149_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX3_1.pendingBagBudEnt
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX3_1.pendingBagBudEnt
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = SHX140_1
      SHX1_2 = SHX3_1.pendingBagBudEnt
      SHX0_2(SHX1_2)
    end
  end
  SHX3_1.pendingBagBudEnt = nil
  SHX3_1.pendingBagBudPurity = nil
  SHX0_2 = SHX3_1.pendingEmptyBagEnt
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX3_1.pendingEmptyBagEnt
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = SHX140_1
      SHX1_2 = SHX3_1.pendingEmptyBagEnt
      SHX0_2(SHX1_2)
    end
  end
  SHX3_1.pendingEmptyBagEnt = nil
  SHX0_2 = SHX146_1
  SHX0_2()
  SHX0_2 = SHX141_1
  SHX0_2()
  SHX0_2 = SHX142_1
  SHX0_2()
  SHX0_2 = ipairs
  SHX1_2 = SHX3_1.leaves
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX140_1
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX3_1.leaves = SHX0_2
  SHX0_2 = ipairs
  SHX1_2 = SHX3_1.leavesFallen
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX140_1
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX3_1.leavesFallen = SHX0_2
  SHX0_2 = SHX3_1.activeBudEnt
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX3_1.activeBudEnt
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = SHX140_1
      SHX1_2 = SHX3_1.activeBudEnt
      SHX0_2(SHX1_2)
    end
  end
  SHX3_1.activeBudEnt = nil
  SHX0_2 = ipairs
  SHX1_2 = SHX3_1.processedEntities
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX140_1
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX3_1.processedEntities = SHX0_2
  SHX0_2 = SHX140_1
  SHX1_2 = SHX3_1.unprocessedTray
  SHX0_2(SHX1_2)
  SHX0_2 = SHX140_1
  SHX1_2 = SHX3_1.processedTray
  SHX0_2(SHX1_2)
  SHX3_1.unprocessedTray = nil
  SHX3_1.processedTray = nil
end
function SHX150_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX3_1.cam
  if SHX0_2 then
    SHX0_2 = RenderScriptCams
    SHX1_2 = false
    SHX2_2 = true
    SHX3_2 = 200
    SHX4_2 = true
    SHX5_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = DestroyCam
    SHX1_2 = SHX3_1.cam
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX3_1.cam = nil
  end
end
function SHX151_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX3_1.plantId
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX10_1.objects
  if SHX0_2 then
    SHX0_2 = SHX10_1.objects
    SHX1_2 = SHX3_1.plantId
    SHX0_2 = SHX0_2[SHX1_2]
  end
  if SHX0_2 then
    SHX1_2 = SHX0_2.itemId
    if "weed_workbench" == SHX1_2 then
      SHX1_2 = SHX0_2.object
      if SHX1_2 then
        SHX1_2 = DoesEntityExist
        SHX2_2 = SHX0_2.object
        SHX1_2 = SHX1_2(SHX2_2)
        if SHX1_2 then
          SHX1_2 = SetEntityCollision
          SHX2_2 = SHX0_2.object
          SHX3_2 = true
          SHX4_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        end
      end
      SHX1_2 = ipairs
      SHX2_2 = SHX0_2.extraObjects
      if not SHX2_2 then
        SHX2_2 = {}
      end
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        if SHX6_2 then
          SHX7_2 = DoesEntityExist
          SHX8_2 = SHX6_2
          SHX7_2 = SHX7_2(SHX8_2)
          if SHX7_2 then
            SHX7_2 = SetEntityCollision
            SHX8_2 = SHX6_2
            SHX9_2 = true
            SHX10_2 = true
            SHX7_2(SHX8_2, SHX9_2, SHX10_2)
          end
        end
      end
    end
  end
end
function SHX152_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX3_1.cam
  if SHX1_2 and SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = SHX115_1
  SHX1_2 = SHX1_2()
  SHX2_2 = GetOffsetFromEntityInWorldCoords
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetCamCoord
  SHX4_2 = SHX3_1.cam
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SHX130_1
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = PointCamAtCoord
  SHX5_2 = SHX3_1.cam
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX3_2.z
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SetCamFov
  SHX5_2 = SHX3_1.cam
  SHX6_2 = SHX118_1
  SHX6_2, SHX7_2, SHX8_2 = SHX6_2()
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
function SHX153_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX0_2 = SHX0_1.weedWorkbenchFp
  SHX1_2 = SHX0_2.rayPickMaxDist
  if not SHX1_2 then
    SHX1_2 = 14.0
  end
  SHX2_2 = SHX0_2.rayPickRadius
  if not SHX2_2 then
    SHX2_2 = 0.22
  end
  SHX3_2 = SHX126_1
  SHX3_2, SHX4_2 = SHX3_2()
  if not SHX3_2 or not SHX4_2 then
    SHX5_2 = 0
    return SHX5_2
  end
  SHX5_2 = {}
  SHX6_2 = SHX3_1.phase
  if "pick" == SHX6_2 then
    SHX6_2 = ipairs
    SHX7_2 = SHX3_1.slots
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      if SHX11_2 then
        SHX12_2 = SHX11_2.ent
        if SHX12_2 then
          SHX12_2 = SHX11_2.ent
          if 0 ~= SHX12_2 then
            SHX12_2 = DoesEntityExist
            SHX13_2 = SHX11_2.ent
            SHX12_2 = SHX12_2(SHX13_2)
            if SHX12_2 then
              SHX12_2 = #SHX5_2
              SHX12_2 = SHX12_2 + 1
              SHX13_2 = SHX11_2.ent
              SHX5_2[SHX12_2] = SHX13_2
            end
          end
        end
      end
    end
  else
    SHX6_2 = SHX3_1.phase
    if "bag_pick" == SHX6_2 then
      SHX6_2 = ipairs
      SHX7_2 = SHX3_1.bagBudSlots
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
        if SHX11_2 then
          SHX12_2 = SHX11_2.ent
          if SHX12_2 then
            SHX12_2 = SHX11_2.ent
            if 0 ~= SHX12_2 then
              SHX12_2 = DoesEntityExist
              SHX13_2 = SHX11_2.ent
              SHX12_2 = SHX12_2(SHX13_2)
              if SHX12_2 then
                SHX12_2 = #SHX5_2
                SHX12_2 = SHX12_2 + 1
                SHX13_2 = SHX11_2.ent
                SHX5_2[SHX12_2] = SHX13_2
              end
            end
          end
        end
      end
      SHX6_2 = ipairs
      SHX7_2 = SHX3_1.emptyBagEnts
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
        if SHX11_2 and 0 ~= SHX11_2 then
          SHX12_2 = DoesEntityExist
          SHX13_2 = SHX11_2
          SHX12_2 = SHX12_2(SHX13_2)
          if SHX12_2 then
            SHX12_2 = #SHX5_2
            SHX12_2 = SHX12_2 + 1
            SHX5_2[SHX12_2] = SHX11_2
          end
        end
      end
    else
      SHX6_2 = SHX3_1.phase
      if "strip" == SHX6_2 then
        SHX6_2 = ipairs
        SHX7_2 = SHX3_1.leaves
        SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
        for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
          if SHX11_2 and 0 ~= SHX11_2 then
            SHX12_2 = DoesEntityExist
            SHX13_2 = SHX11_2
            SHX12_2 = SHX12_2(SHX13_2)
            if SHX12_2 then
              SHX12_2 = #SHX5_2
              SHX12_2 = SHX12_2 + 1
              SHX5_2[SHX12_2] = SHX11_2
            end
          end
        end
      end
    end
  end
  SHX6_2 = 0
  SHX7_2 = SHX2_2 + 1.0
  SHX8_2 = SHX1_2 + 1.0
  SHX9_2 = ipairs
  SHX10_2 = SHX5_2
  SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
  for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
    SHX15_2 = GetEntityCoords
    SHX16_2 = SHX14_2
    SHX15_2 = SHX15_2(SHX16_2)
    SHX16_2 = vector3
    SHX17_2 = SHX15_2.x
    SHX18_2 = SHX3_2.x
    SHX17_2 = SHX17_2 - SHX18_2
    SHX18_2 = SHX15_2.y
    SHX19_2 = SHX3_2.y
    SHX18_2 = SHX18_2 - SHX19_2
    SHX19_2 = SHX15_2.z
    SHX20_2 = SHX3_2.z
    SHX19_2 = SHX19_2 - SHX20_2
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2)
    SHX17_2 = SHX16_2.x
    SHX18_2 = SHX4_2.x
    SHX17_2 = SHX17_2 * SHX18_2
    SHX18_2 = SHX16_2.y
    SHX19_2 = SHX4_2.y
    SHX18_2 = SHX18_2 * SHX19_2
    SHX17_2 = SHX17_2 + SHX18_2
    SHX18_2 = SHX16_2.z
    SHX19_2 = SHX4_2.z
    SHX18_2 = SHX18_2 * SHX19_2
    SHX17_2 = SHX17_2 + SHX18_2
    if SHX17_2 > 0.0 and SHX1_2 >= SHX17_2 then
      SHX18_2 = vector3
      SHX19_2 = SHX3_2.x
      SHX20_2 = SHX4_2.x
      SHX20_2 = SHX20_2 * SHX17_2
      SHX19_2 = SHX19_2 + SHX20_2
      SHX20_2 = SHX3_2.y
      SHX21_2 = SHX4_2.y
      SHX21_2 = SHX21_2 * SHX17_2
      SHX20_2 = SHX20_2 + SHX21_2
      SHX21_2 = SHX3_2.z
      SHX22_2 = SHX4_2.z
      SHX22_2 = SHX22_2 * SHX17_2
      SHX21_2 = SHX21_2 + SHX22_2
      SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2)
      SHX19_2 = vector3
      SHX20_2 = SHX15_2.x
      SHX21_2 = SHX18_2.x
      SHX20_2 = SHX20_2 - SHX21_2
      SHX21_2 = SHX15_2.y
      SHX22_2 = SHX18_2.y
      SHX21_2 = SHX21_2 - SHX22_2
      SHX22_2 = SHX15_2.z
      SHX23_2 = SHX18_2.z
      SHX22_2 = SHX22_2 - SHX23_2
      SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2)
      SHX19_2 = #SHX19_2
      if SHX2_2 >= SHX19_2 then
        SHX20_2 = SHX7_2 - 1.0E-4
        if not (SHX19_2 < SHX20_2) then
          SHX20_2 = math
          SHX20_2 = SHX20_2.abs
          SHX21_2 = SHX19_2 - SHX7_2
          SHX20_2 = SHX20_2(SHX21_2)
          SHX21_2 = 1.0E-4
          if not (SHX20_2 <= SHX21_2 and SHX8_2 > SHX17_2) then
            goto SHX_LABEL_221
          end
        end
        SHX7_2 = SHX19_2
        SHX8_2 = SHX17_2
        SHX6_2 = SHX14_2
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_221:: outside nested blocks until all 'goto SHX_LABEL_221' can see it
    ::SHX_LABEL_221::
  end
  return SHX6_2
end
function SHX154_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = SHX3_1.active
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX126_1
  SHX0_2, SHX1_2 = SHX0_2()
  if not SHX0_2 or not SHX1_2 then
    return
  end
  SHX2_2 = SHX0_1.weedWorkbenchFp
  SHX3_2 = SHX2_2.rayPickMaxDist
  if not SHX3_2 then
    SHX3_2 = 14.0
  end
  SHX4_2 = DrawLine
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.z
  SHX8_2 = SHX0_2.x
  SHX9_2 = SHX1_2.x
  SHX9_2 = SHX9_2 * SHX3_2
  SHX8_2 = SHX8_2 + SHX9_2
  SHX9_2 = SHX0_2.y
  SHX10_2 = SHX1_2.y
  SHX10_2 = SHX10_2 * SHX3_2
  SHX9_2 = SHX9_2 + SHX10_2
  SHX10_2 = SHX0_2.z
  SHX11_2 = SHX1_2.z
  SHX11_2 = SHX11_2 * SHX3_2
  SHX10_2 = SHX10_2 + SHX11_2
  SHX11_2 = 0
  SHX12_2 = 220
  SHX13_2 = 255
  SHX14_2 = 230
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
end
function SHX155_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX113_1
  SHX1_2 = 0
  SHX113_1 = SHX1_2
  if 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = SetEntityDrawOutline
      SHX2_2 = SHX0_2
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
  SHX1_2 = SHX3_1.phase
  if "pick" ~= SHX1_2 then
    SHX1_2 = SHX3_1.phase
    if "strip" ~= SHX1_2 then
      SHX1_2 = SHX3_1.phase
      if "bag_pick" ~= SHX1_2 then
        return
      end
    end
  end
  SHX1_2 = SHX153_1
  SHX1_2 = SHX1_2()
  if SHX1_2 and 0 ~= SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = SHX124_1
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX113_1 = SHX1_2
        SHX2_2 = SetEntityDrawOutlineColor
        SHX3_2 = 0
        SHX4_2 = 220
        SHX5_2 = 255
        SHX6_2 = 255
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX2_2 = SetEntityDrawOutline
        SHX3_2 = SHX1_2
        SHX4_2 = true
        SHX2_2(SHX3_2, SHX4_2)
      end
    end
  end
end
function SHX156_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = ipairs
  SHX1_2 = SHX3_1.leaves
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    if SHX5_2 then
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        SHX6_2 = SetEntityDrawOutline
        SHX7_2 = SHX5_2
        SHX8_2 = false
        SHX6_2(SHX7_2, SHX8_2)
      end
    end
  end
  SHX0_2 = SHX113_1
  if 0 ~= SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX113_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = SetEntityDrawOutline
      SHX1_2 = SHX113_1
      SHX2_2 = false
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
  SHX0_2 = 0
  SHX113_1 = SHX0_2
end
function SHX157_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.TriggerServerCallback
  SHX1_2 = "d9d7860200"
  SHX2_2 = SHX3_1.plantId
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = true == SHX0_2
  return SHX1_2
end
function SHX158_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.TriggerServerCallback
  SHX2_2 = "0148208a03"
  SHX3_2 = SHX3_1.plantId
  SHX4_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true == SHX1_2
  return SHX2_2
end
function SHX159_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  if SHX6_2 < 1 then
    SHX6_2 = 1
  end
  SHX7_2 = GetGameTimer
  SHX7_2 = SHX7_2()
  while true do
    SHX8_2 = GetGameTimer
    SHX8_2 = SHX8_2()
    SHX8_2 = SHX8_2 - SHX7_2
    if not (SHX6_2 > SHX8_2) then
      break
    end
    SHX8_2 = GetGameTimer
    SHX8_2 = SHX8_2()
    SHX8_2 = SHX8_2 - SHX7_2
    SHX8_2 = SHX8_2 / SHX6_2
    if SHX8_2 > 1.0 then
      SHX8_2 = 1.0
    end
    if SHX0_2 then
      SHX9_2 = DoesEntityExist
      SHX10_2 = SHX0_2
      SHX9_2 = SHX9_2(SHX10_2)
      if SHX9_2 then
        SHX9_2 = SHX1_2.x
        SHX10_2 = SHX2_2.x
        SHX11_2 = SHX1_2.x
        SHX10_2 = SHX10_2 - SHX11_2
        SHX10_2 = SHX10_2 * SHX8_2
        SHX9_2 = SHX9_2 + SHX10_2
        SHX10_2 = SHX1_2.y
        SHX11_2 = SHX2_2.y
        SHX12_2 = SHX1_2.y
        SHX11_2 = SHX11_2 - SHX12_2
        SHX11_2 = SHX11_2 * SHX8_2
        SHX10_2 = SHX10_2 + SHX11_2
        SHX11_2 = SHX1_2.z
        SHX12_2 = SHX2_2.z
        SHX13_2 = SHX1_2.z
        SHX12_2 = SHX12_2 - SHX13_2
        SHX12_2 = SHX12_2 * SHX8_2
        SHX11_2 = SHX11_2 + SHX12_2
        SHX12_2 = SetEntityCoordsNoOffset
        SHX13_2 = SHX0_2
        SHX14_2 = SHX9_2
        SHX15_2 = SHX10_2
        SHX16_2 = SHX11_2
        SHX17_2 = false
        SHX18_2 = false
        SHX19_2 = false
        SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      end
    end
    if SHX3_2 then
      SHX9_2 = DoesEntityExist
      SHX10_2 = SHX3_2
      SHX9_2 = SHX9_2(SHX10_2)
      if SHX9_2 then
        SHX9_2 = SHX4_2.x
        SHX10_2 = SHX5_2.x
        SHX11_2 = SHX4_2.x
        SHX10_2 = SHX10_2 - SHX11_2
        SHX10_2 = SHX10_2 * SHX8_2
        SHX9_2 = SHX9_2 + SHX10_2
        SHX10_2 = SHX4_2.y
        SHX11_2 = SHX5_2.y
        SHX12_2 = SHX4_2.y
        SHX11_2 = SHX11_2 - SHX12_2
        SHX11_2 = SHX11_2 * SHX8_2
        SHX10_2 = SHX10_2 + SHX11_2
        SHX11_2 = SHX4_2.z
        SHX12_2 = SHX5_2.z
        SHX13_2 = SHX4_2.z
        SHX12_2 = SHX12_2 - SHX13_2
        SHX12_2 = SHX12_2 * SHX8_2
        SHX11_2 = SHX11_2 + SHX12_2
        SHX12_2 = SetEntityCoordsNoOffset
        SHX13_2 = SHX3_2
        SHX14_2 = SHX9_2
        SHX15_2 = SHX10_2
        SHX16_2 = SHX11_2
        SHX17_2 = false
        SHX18_2 = false
        SHX19_2 = false
        SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      end
    end
    SHX9_2 = Wait
    SHX10_2 = 0
    SHX9_2(SHX10_2)
  end
  if SHX0_2 then
    SHX8_2 = DoesEntityExist
    SHX9_2 = SHX0_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX8_2 = SetEntityCoordsNoOffset
      SHX9_2 = SHX0_2
      SHX10_2 = SHX2_2.x
      SHX11_2 = SHX2_2.y
      SHX12_2 = SHX2_2.z
      SHX13_2 = false
      SHX14_2 = false
      SHX15_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    end
  end
  if SHX3_2 then
    SHX8_2 = DoesEntityExist
    SHX9_2 = SHX3_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX8_2 = SetEntityCoordsNoOffset
      SHX9_2 = SHX3_2
      SHX10_2 = SHX5_2.x
      SHX11_2 = SHX5_2.y
      SHX12_2 = SHX5_2.z
      SHX13_2 = false
      SHX14_2 = false
      SHX15_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    end
  end
end
function SHX160_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  if SHX0_2 then
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  while true do
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX4_2
    if not (SHX3_2 > SHX5_2) then
      break
    end
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX4_2
    SHX5_2 = SHX5_2 / SHX3_2
    if SHX5_2 > 1.0 then
      SHX5_2 = 1.0
    end
    SHX6_2 = SHX1_2.x
    SHX7_2 = SHX2_2.x
    SHX8_2 = SHX1_2.x
    SHX7_2 = SHX7_2 - SHX8_2
    SHX7_2 = SHX7_2 * SHX5_2
    SHX6_2 = SHX6_2 + SHX7_2
    SHX7_2 = SHX1_2.y
    SHX8_2 = SHX2_2.y
    SHX9_2 = SHX1_2.y
    SHX8_2 = SHX8_2 - SHX9_2
    SHX8_2 = SHX8_2 * SHX5_2
    SHX7_2 = SHX7_2 + SHX8_2
    SHX8_2 = SHX1_2.z
    SHX9_2 = SHX2_2.z
    SHX10_2 = SHX1_2.z
    SHX9_2 = SHX9_2 - SHX10_2
    SHX9_2 = SHX9_2 * SHX5_2
    SHX8_2 = SHX8_2 + SHX9_2
    SHX9_2 = SetEntityCoordsNoOffset
    SHX10_2 = SHX0_2
    SHX11_2 = SHX6_2
    SHX12_2 = SHX7_2
    SHX13_2 = SHX8_2
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX9_2 = Wait
    SHX10_2 = 0
    SHX9_2(SHX10_2)
  end
  SHX5_2 = SetEntityCoordsNoOffset
  SHX6_2 = SHX0_2
  SHX7_2 = SHX2_2.x
  SHX8_2 = SHX2_2.y
  SHX9_2 = SHX2_2.z
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
function SHX161_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = select
  SHX2_2 = 1
  SHX3_2 = SHX131_1
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = vector3
  SHX3_2 = SHX1_2.x
  SHX3_2 = SHX3_2 - 0.02
  SHX4_2 = SHX1_2.y
  SHX5_2 = SHX1_2.z
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = vector3
  SHX4_2 = SHX1_2.x
  SHX4_2 = SHX4_2 + 0.02
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = SHX2_2
  SHX5_2 = SHX3_2
  return SHX4_2, SHX5_2
end
function SHX162_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX3_1.bagBudSlots
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  SHX3_2 = -1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX3_1.bagBudSlots
    SHX5_2 = SHX5_2[SHX4_2]
    SHX5_2 = SHX5_2.ent
    if SHX5_2 == SHX0_2 then
      SHX5_2 = table
      SHX5_2 = SHX5_2.remove
      SHX6_2 = SHX3_1.bagBudSlots
      SHX7_2 = SHX4_2
      SHX5_2(SHX6_2, SHX7_2)
      break
    end
  end
end
function SHX163_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX3_1.emptyBagEnts
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  SHX3_2 = -1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX3_1.emptyBagEnts
    SHX5_2 = SHX5_2[SHX4_2]
    if SHX5_2 == SHX0_2 then
      SHX5_2 = table
      SHX5_2 = SHX5_2.remove
      SHX6_2 = SHX3_1.emptyBagEnts
      SHX7_2 = SHX4_2
      SHX5_2(SHX6_2, SHX7_2)
      break
    end
  end
end
function SHX164_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX3_1.bagRemainingPurities
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = table
  SHX1_2 = SHX1_2.sort
  SHX2_2 = SHX3_1.bagRemainingPurities
  function SHX3_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3
    SHX2_3 = SHX1_3 < SHX0_3
    return SHX2_3
  end
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX165_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX3_1.pendingBagBudEnt = nil
  SHX3_1.pendingBagBudPurity = nil
  SHX3_1.pendingEmptyBagEnt = nil
  SHX3_2 = DetachEntity
  SHX4_2 = SHX0_2
  SHX5_2 = true
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = DetachEntity
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX0_2
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX1_2
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX161_1
  SHX6_2 = SHX3_1.chair
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  SHX7_2 = SHX0_1.weedWorkbenchFp
  SHX8_2 = SHX7_2.lerpBaggingToCenterMs
  if not SHX8_2 then
    SHX8_2 = 550
  end
  SHX9_2 = SHX159_1
  SHX10_2 = SHX0_2
  SHX11_2 = SHX3_2
  SHX12_2 = SHX5_2
  SHX13_2 = SHX1_2
  SHX14_2 = SHX4_2
  SHX15_2 = SHX6_2
  SHX16_2 = SHX8_2
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX9_2 = Wait
  SHX10_2 = SHX7_2.lerpBaggingCombineMs
  if not SHX10_2 then
    SHX10_2 = 400
  end
  SHX9_2(SHX10_2)
  SHX9_2 = SHX158_1
  SHX10_2 = SHX2_2
  SHX9_2 = SHX9_2(SHX10_2)
  if not SHX9_2 then
    SHX10_2 = notify
    SHX11_2 = "~r~Could not bag that cannabis."
    SHX10_2(SHX11_2)
    SHX10_2 = SHX140_1
    SHX11_2 = SHX0_2
    SHX10_2(SHX11_2)
    SHX10_2 = SHX140_1
    SHX11_2 = SHX1_2
    SHX10_2(SHX11_2)
    SHX10_2 = SHX164_1
    SHX11_2 = SHX2_2
    SHX10_2(SHX11_2)
    SHX10_2 = SHX3_1.emptyBagsRemaining
    if not SHX10_2 then
      SHX10_2 = 0
    end
    SHX10_2 = SHX10_2 + 1
    SHX3_1.emptyBagsRemaining = SHX10_2
    SHX10_2 = SHX145_1
    SHX10_2()
    SHX3_1.phase = "bag_pick"
    return
  end
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.addJobTutorialProgress
  SHX11_2 = "bag_processed_bud"
  SHX12_2 = 1
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SHX140_1
  SHX11_2 = SHX0_2
  SHX10_2(SHX11_2)
  SHX10_2 = SHX140_1
  SHX11_2 = SHX1_2
  SHX10_2(SHX11_2)
  SHX10_2 = SHX0_1.items
  SHX10_2 = SHX10_2.weed_bag_1
  SHX11_2 = SHX10_2 or SHX11_2
  if SHX10_2 then
    SHX11_2 = SHX10_2.model
  end
  SHX12_2 = SHX11_2 or SHX12_2
  if SHX11_2 then
    SHX12_2 = CMG
    SHX12_2 = SHX12_2.loadModel
    SHX13_2 = SHX11_2
    SHX12_2 = SHX12_2(SHX13_2)
  end
  SHX13_2 = SHX7_2.trayBudSlotLocals
  SHX14_2 = SHX7_2.maxProcessedBudsVisible
  SHX15_2 = math
  SHX15_2 = SHX15_2.min
  SHX16_2 = SHX3_1.processedEntities
  SHX16_2 = #SHX16_2
  SHX16_2 = SHX16_2 + 1
  SHX17_2 = #SHX13_2
  SHX18_2 = SHX14_2 or SHX18_2
  if not SHX14_2 then
    SHX18_2 = 99
  end
  SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
  if SHX15_2 < 1 then
    SHX15_2 = 1
  end
  SHX16_2 = SHX13_2[SHX15_2]
  if not SHX16_2 then
    SHX16_2 = vector3
    SHX17_2 = 0.0
    SHX18_2 = 0.0
    SHX19_2 = 0.02
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2)
  end
  SHX17_2 = GetOffsetFromEntityInWorldCoords
  SHX18_2 = SHX3_1.processedTray
  SHX19_2 = SHX16_2.x
  SHX20_2 = SHX16_2.y
  SHX21_2 = SHX16_2.z
  SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX18_2 = vector3
  SHX19_2 = SHX17_2.x
  SHX20_2 = SHX17_2.y
  SHX21_2 = SHX17_2.z
  SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2)
  SHX19_2 = vector3
  SHX20_2 = SHX5_2.x
  SHX21_2 = SHX6_2.x
  SHX20_2 = SHX20_2 + SHX21_2
  SHX20_2 = SHX20_2 * 0.5
  SHX21_2 = SHX5_2.y
  SHX22_2 = SHX6_2.y
  SHX21_2 = SHX21_2 + SHX22_2
  SHX21_2 = SHX21_2 * 0.5
  SHX22_2 = SHX5_2.z
  SHX23_2 = SHX6_2.z
  SHX22_2 = SHX22_2 + SHX23_2
  SHX22_2 = SHX22_2 * 0.5
  SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2)
  if SHX12_2 then
    SHX20_2 = CreateObject
    SHX21_2 = SHX12_2
    SHX22_2 = SHX19_2.x
    SHX23_2 = SHX19_2.y
    SHX24_2 = SHX19_2.z
    SHX25_2 = false
    SHX26_2 = false
    SHX27_2 = false
    SHX20_2 = SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
    while true do
      SHX21_2 = DoesEntityExist
      SHX22_2 = SHX20_2
      SHX21_2 = SHX21_2(SHX22_2)
      if SHX21_2 then
        break
      end
      SHX21_2 = Wait
      SHX22_2 = 0
      SHX21_2(SHX22_2)
    end
    SHX21_2 = SHX160_1
    SHX22_2 = SHX20_2
    SHX23_2 = SHX19_2
    SHX24_2 = SHX18_2
    SHX25_2 = SHX7_2.lerpBaggingToProcessedTrayMs
    if not SHX25_2 then
      SHX25_2 = 700
    end
    SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX21_2 = FreezeEntityPosition
    SHX22_2 = SHX20_2
    SHX23_2 = true
    SHX21_2(SHX22_2, SHX23_2)
    SHX21_2 = SHX3_1.processedEntities
    SHX22_2 = SHX3_1.processedEntities
    SHX22_2 = #SHX22_2
    SHX22_2 = SHX22_2 + 1
    SHX21_2[SHX22_2] = SHX20_2
    SHX21_2 = SHX122_1
    SHX22_2 = SHX20_2
    SHX21_2(SHX22_2)
    SHX21_2 = SetModelAsNoLongerNeeded
    SHX22_2 = SHX12_2
    SHX21_2(SHX22_2)
  end
  SHX20_2 = SHX145_1
  SHX20_2()
  SHX20_2 = SHX3_1.bagRemainingPurities
  SHX20_2 = #SHX20_2
  if 0 == SHX20_2 then
    SHX20_2 = notify
    SHX21_2 = "~g~All visible processed bud bagged."
    SHX20_2(SHX21_2)
  else
    SHX20_2 = SHX3_1.emptyBagsRemaining
    if not SHX20_2 then
      SHX20_2 = 0
    end
    if SHX20_2 < 1 then
      SHX20_2 = notify
      SHX21_2 = "~g~No empty bags left for this session."
      SHX20_2(SHX21_2)
    end
  end
  SHX3_1.phase = "bag_pick"
end
SHX166_1 = 480
SHX167_1 = 2.2
SHX168_1 = 0.038
SHX169_1 = 0.014
SHX170_1 = 24.0
SHX171_1 = 20.0
SHX172_1 = 48.0
SHX173_1 = 0.006
SHX174_1 = 0.052
SHX175_1 = 0.65
function SHX176_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  SHX1_2 = 0.0
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = GetModelDimensions
  SHX2_2 = GetEntityModel
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX2_2(SHX3_2)
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX3_2 = SHX2_2.x
  SHX4_2 = SHX1_2.x
  SHX3_2 = SHX3_2 - SHX4_2
  SHX4_2 = SHX2_2.y
  SHX5_2 = SHX1_2.y
  SHX4_2 = SHX4_2 - SHX5_2
  SHX5_2 = SHX2_2.z
  SHX6_2 = SHX1_2.z
  SHX5_2 = SHX5_2 - SHX6_2
  SHX6_2 = {}
  SHX7_2 = SHX3_2
  SHX8_2 = SHX4_2
  SHX9_2 = SHX5_2
  SHX6_2[1] = SHX7_2
  SHX6_2[2] = SHX8_2
  SHX6_2[3] = SHX9_2
  SHX7_2 = table
  SHX7_2 = SHX7_2.sort
  SHX8_2 = SHX6_2
  SHX7_2(SHX8_2)
  SHX7_2 = SHX6_2[2]
  SHX8_2 = SHX175_1
  SHX7_2 = SHX7_2 * SHX8_2
  return SHX7_2
end
function SHX177_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = nil
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = SHX129_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = GetModelDimensions
      SHX3_2 = GetEntityModel
      SHX4_2 = SHX1_2
      SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX3_2(SHX4_2)
      SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX4_2 = GetOffsetFromEntityInWorldCoords
      SHX5_2 = SHX1_2
      SHX6_2 = 0.0
      SHX7_2 = 0.0
      SHX8_2 = SHX3_2.z
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = SHX4_2.z
      SHX6_2 = SHX173_1
      SHX5_2 = SHX5_2 + SHX6_2
      return SHX5_2
    end
  end
  SHX2_2 = select
  SHX3_2 = 1
  SHX4_2 = SHX131_1
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = SHX2_2.z
  SHX4_2 = SHX174_1
  SHX3_2 = SHX3_2 - SHX4_2
  return SHX3_2
end
function SHX178_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX4_2 = math
  SHX4_2 = SHX4_2.random
  SHX4_2 = SHX4_2()
  SHX4_2 = SHX4_2 - 0.5
  SHX4_2 = SHX4_2 * 0.022
  SHX5_2 = math
  SHX5_2 = SHX5_2.random
  SHX5_2 = SHX5_2()
  SHX5_2 = SHX5_2 - 0.5
  SHX5_2 = SHX5_2 * 0.022
  SHX6_2 = SHX176_1
  SHX7_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX3_2 or SHX7_2
  if SHX3_2 then
    SHX7_2 = SHX177_1
    SHX8_2 = SHX3_2
    SHX7_2 = SHX7_2(SHX8_2)
  end
  if SHX7_2 then
    SHX8_2 = vector3
    SHX9_2 = SHX0_2.x
    SHX9_2 = SHX9_2 + SHX4_2
    SHX10_2 = SHX0_2.y
    SHX10_2 = SHX10_2 + SHX5_2
    SHX11_2 = SHX7_2 - SHX6_2
    return SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  end
  SHX8_2 = SHX0_2.x
  SHX9_2 = SHX0_2.y
  SHX10_2 = SHX0_2.z
  SHX10_2 = SHX10_2 + 0.04
  SHX11_2 = StartShapeTestRay
  SHX12_2 = SHX8_2
  SHX13_2 = SHX9_2
  SHX14_2 = SHX10_2
  SHX15_2 = SHX8_2
  SHX16_2 = SHX9_2
  SHX17_2 = SHX167_1
  SHX17_2 = SHX10_2 - SHX17_2
  SHX18_2 = -1
  SHX19_2 = SHX1_2 or SHX19_2
  if not SHX1_2 then
    SHX19_2 = 0
  end
  SHX20_2 = 7
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX12_2 = 1
  SHX13_2 = 8
  SHX14_2 = 1
  for SHX15_2 = SHX12_2, SHX13_2, SHX14_2 do
    SHX16_2 = GetShapeTestResult
    SHX17_2 = SHX11_2
    SHX16_2, SHX17_2, SHX18_2 = SHX16_2(SHX17_2)
    if 2 == SHX16_2 then
      if 1 == SHX17_2 and SHX18_2 then
        SHX19_2 = vector3
        SHX20_2 = SHX18_2.x
        SHX21_2 = math
        SHX21_2 = SHX21_2.random
        SHX21_2 = SHX21_2()
        SHX21_2 = SHX21_2 - 0.5
        SHX21_2 = SHX21_2 * 0.022
        SHX20_2 = SHX20_2 + SHX21_2
        SHX21_2 = SHX18_2.y
        SHX22_2 = math
        SHX22_2 = SHX22_2.random
        SHX22_2 = SHX22_2()
        SHX22_2 = SHX22_2 - 0.5
        SHX22_2 = SHX22_2 * 0.022
        SHX21_2 = SHX21_2 + SHX22_2
        SHX22_2 = SHX18_2.z
        SHX22_2 = SHX22_2 + 0.007
        SHX22_2 = SHX22_2 - SHX6_2
        return SHX19_2(SHX20_2, SHX21_2, SHX22_2)
      end
      break
    end
    SHX19_2 = Wait
    SHX20_2 = 0
    SHX19_2(SHX20_2)
  end
  if SHX2_2 and 0 ~= SHX2_2 then
    SHX12_2 = DoesEntityExist
    SHX13_2 = SHX2_2
    SHX12_2 = SHX12_2(SHX13_2)
    if SHX12_2 then
      SHX12_2 = GetEntityCoords
      SHX13_2 = SHX2_2
      SHX12_2 = SHX12_2(SHX13_2)
      SHX13_2 = vector3
      SHX14_2 = SHX0_2.x
      SHX15_2 = math
      SHX15_2 = SHX15_2.random
      SHX15_2 = SHX15_2()
      SHX15_2 = SHX15_2 - 0.5
      SHX15_2 = SHX15_2 * 0.04
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = SHX0_2.y
      SHX16_2 = math
      SHX16_2 = SHX16_2.random
      SHX16_2 = SHX16_2()
      SHX16_2 = SHX16_2 - 0.5
      SHX16_2 = SHX16_2 * 0.04
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX12_2.z
      SHX16_2 = SHX16_2 + 0.028
      SHX16_2 = SHX16_2 - SHX6_2
      return SHX13_2(SHX14_2, SHX15_2, SHX16_2)
    end
  end
  SHX12_2 = vector3
  SHX13_2 = SHX0_2.x
  SHX14_2 = SHX0_2.y
  SHX15_2 = SHX0_2.z
  SHX15_2 = SHX15_2 - 0.32
  SHX15_2 = SHX15_2 - SHX6_2
  return SHX12_2(SHX13_2, SHX14_2, SHX15_2)
end
function SHX179_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3
    SHX0_3 = SHX0_2
    SHX1_3 = DoesEntityExist
    SHX2_3 = SHX0_3
    SHX1_3 = SHX1_3(SHX2_3)
    if not SHX1_3 then
      return
    end
    SHX1_3 = FreezeEntityPosition
    SHX2_3 = SHX0_3
    SHX3_3 = false
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = SHX1_2.x
    SHX2_3 = SHX1_2.y
    SHX3_3 = SHX1_2.z
    SHX4_3 = SHX2_2.x
    SHX5_3 = SHX2_2.y
    SHX6_3 = SHX2_2.z
    SHX7_3 = math
    SHX7_3 = SHX7_3.abs
    SHX8_3 = SHX6_3 - SHX3_3
    SHX7_3 = SHX7_3(SHX8_3)
    SHX8_3 = 0.05
    if SHX7_3 < SHX8_3 then
      SHX6_3 = SHX3_3 - 0.14
    end
    SHX7_3 = SHX168_1
    SHX8_3 = SHX169_1
    SHX9_3 = math
    SHX9_3 = SHX9_3.random
    SHX9_3 = SHX9_3()
    SHX9_3 = SHX9_3 - 0.5
    SHX9_3 = SHX9_3 * SHX7_3
    SHX9_3 = SHX9_3 * 2.0
    SHX4_3 = SHX4_3 + SHX9_3
    SHX9_3 = math
    SHX9_3 = SHX9_3.random
    SHX9_3 = SHX9_3()
    SHX9_3 = SHX9_3 - 0.5
    SHX9_3 = SHX9_3 * SHX7_3
    SHX9_3 = SHX9_3 * 2.0
    SHX5_3 = SHX5_3 + SHX9_3
    SHX9_3 = math
    SHX9_3 = SHX9_3.random
    SHX9_3 = SHX9_3()
    SHX9_3 = SHX9_3 - 0.5
    SHX9_3 = SHX9_3 * SHX8_3
    SHX9_3 = SHX9_3 * 2.0
    SHX6_3 = SHX6_3 + SHX9_3
    SHX9_3 = math
    SHX9_3 = SHX9_3.random
    SHX9_3 = SHX9_3()
    SHX9_3 = SHX9_3 - 0.5
    SHX10_3 = SHX170_1
    SHX9_3 = SHX9_3 * SHX10_3
    SHX10_3 = math
    SHX10_3 = SHX10_3.random
    SHX10_3 = SHX10_3()
    SHX10_3 = SHX10_3 - 0.5
    SHX11_3 = SHX171_1
    SHX10_3 = SHX10_3 * SHX11_3
    SHX11_3 = math
    SHX11_3 = SHX11_3.random
    SHX11_3 = SHX11_3()
    SHX11_3 = SHX11_3 - 0.5
    SHX12_3 = SHX172_1
    SHX11_3 = SHX11_3 * SHX12_3
    SHX12_3 = GetEntityRotation
    SHX13_3 = SHX0_3
    SHX14_3 = 2
    SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
    if SHX12_3 then
      SHX13_3 = SHX12_3.x
      if SHX13_3 then
        goto SHX_LABEL_97
      end
    end
    SHX13_3 = 0.0
    -- [FIX IF ERROR] Move ::SHX_LABEL_97:: outside nested blocks until all 'goto SHX_LABEL_97' can see it
    ::SHX_LABEL_97::
    if SHX12_3 then
      SHX14_3 = SHX12_3.y
      if SHX14_3 then
        goto SHX_LABEL_103
      end
    end
    SHX14_3 = 0.0
    -- [FIX IF ERROR] Move ::SHX_LABEL_103:: outside nested blocks until all 'goto SHX_LABEL_103' can see it
    ::SHX_LABEL_103::
    if SHX12_3 then
      SHX15_3 = SHX12_3.z
      if SHX15_3 then
        goto SHX_LABEL_109
      end
    end
    SHX15_3 = 0.0
    -- [FIX IF ERROR] Move ::SHX_LABEL_109:: outside nested blocks until all 'goto SHX_LABEL_109' can see it
    ::SHX_LABEL_109::
    SHX16_3 = math
    SHX16_3 = SHX16_3.random
    SHX16_3 = SHX16_3()
    SHX16_3 = SHX16_3 - 0.5
    SHX16_3 = SHX16_3 * 55.0
    SHX17_3 = math
    SHX17_3 = SHX17_3.random
    SHX17_3 = SHX17_3()
    SHX17_3 = SHX17_3 - 0.5
    SHX17_3 = SHX17_3 * 35.0
    SHX18_3 = math
    SHX18_3 = SHX18_3.random
    SHX18_3 = SHX18_3()
    SHX18_3 = SHX18_3 - 0.5
    SHX18_3 = SHX18_3 * 70.0
    SHX19_3 = GetGameTimer
    SHX19_3 = SHX19_3()
    while true do
      SHX20_3 = DoesEntityExist
      SHX21_3 = SHX0_3
      SHX20_3 = SHX20_3(SHX21_3)
      if not SHX20_3 then
        break
      end
      SHX20_3 = GetGameTimer
      SHX20_3 = SHX20_3()
      SHX20_3 = SHX20_3 - SHX19_3
      SHX21_3 = SHX166_1
      if not (SHX20_3 < SHX21_3) then
        break
      end
      SHX20_3 = GetGameTimer
      SHX20_3 = SHX20_3()
      SHX20_3 = SHX20_3 - SHX19_3
      SHX21_3 = SHX166_1
      SHX20_3 = SHX20_3 / SHX21_3
      if SHX20_3 > 1.0 then
        SHX20_3 = 1.0
      end
      SHX21_3 = SHX20_3 * SHX20_3
      SHX22_3 = SHX4_3 - SHX1_3
      SHX22_3 = SHX22_3 * SHX20_3
      SHX22_3 = SHX1_3 + SHX22_3
      SHX23_3 = SHX5_3 - SHX2_3
      SHX23_3 = SHX23_3 * SHX20_3
      SHX23_3 = SHX2_3 + SHX23_3
      SHX24_3 = SHX6_3 - SHX3_3
      SHX24_3 = SHX24_3 * SHX21_3
      SHX24_3 = SHX3_3 + SHX24_3
      SHX25_3 = SetEntityCoordsNoOffset
      SHX26_3 = SHX0_3
      SHX27_3 = SHX22_3
      SHX28_3 = SHX23_3
      SHX29_3 = SHX24_3
      SHX30_3 = false
      SHX31_3 = false
      SHX32_3 = false
      SHX25_3(SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3)
      SHX25_3 = SetEntityRotation
      SHX26_3 = SHX0_3
      SHX27_3 = SHX16_3 * SHX20_3
      SHX27_3 = SHX13_3 + SHX27_3
      SHX28_3 = SHX9_3 * SHX20_3
      SHX27_3 = SHX27_3 + SHX28_3
      SHX28_3 = SHX17_3 * SHX21_3
      SHX28_3 = SHX14_3 + SHX28_3
      SHX29_3 = SHX10_3 * SHX20_3
      SHX28_3 = SHX28_3 + SHX29_3
      SHX29_3 = SHX18_3 * SHX20_3
      SHX29_3 = SHX15_3 + SHX29_3
      SHX30_3 = SHX11_3 * SHX20_3
      SHX29_3 = SHX29_3 + SHX30_3
      SHX30_3 = 2
      SHX31_3 = true
      SHX25_3(SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3)
      SHX25_3 = Wait
      SHX26_3 = 0
      SHX25_3(SHX26_3)
    end
    SHX20_3 = DoesEntityExist
    SHX21_3 = SHX0_3
    SHX20_3 = SHX20_3(SHX21_3)
    if SHX20_3 then
      SHX20_3 = SetEntityCoordsNoOffset
      SHX21_3 = SHX0_3
      SHX22_3 = SHX4_3
      SHX23_3 = SHX5_3
      SHX24_3 = SHX6_3
      SHX25_3 = false
      SHX26_3 = false
      SHX27_3 = false
      SHX20_3(SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3)
      SHX20_3 = SetEntityRotation
      SHX21_3 = SHX0_3
      SHX22_3 = SHX13_3 + SHX16_3
      SHX22_3 = SHX22_3 + SHX9_3
      SHX23_3 = SHX14_3 + SHX17_3
      SHX23_3 = SHX23_3 + SHX10_3
      SHX24_3 = SHX15_3 + SHX18_3
      SHX24_3 = SHX24_3 + SHX11_3
      SHX25_3 = 2
      SHX26_3 = true
      SHX20_3(SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3)
      SHX20_3 = FreezeEntityPosition
      SHX21_3 = SHX0_3
      SHX22_3 = true
      SHX20_3(SHX21_3, SHX22_3)
    end
  end
  SHX3_2(SHX4_2)
end
function SHX180_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = "bkr_prop_weed_leaf_01a"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX0_1.weedWorkbenchFp
  SHX3_2 = SHX3_2.leafAttachLocal
  SHX4_2 = math
  SHX4_2 = SHX4_2.min
  SHX5_2 = #SHX3_2
  SHX6_2 = SHX0_1.weedWorkbenchFp
  SHX6_2 = SHX6_2.leavesPerBud
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = 1
  SHX6_2 = SHX4_2
  SHX7_2 = 1
  for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = SHX3_2[SHX8_2]
    if not SHX9_2 then
      break
    end
    SHX10_2 = CreateObject
    SHX11_2 = SHX1_2
    SHX12_2 = SHX2_2.x
    SHX13_2 = SHX2_2.y
    SHX14_2 = SHX2_2.z
    SHX15_2 = false
    SHX16_2 = true
    SHX17_2 = false
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    while true do
      SHX11_2 = DoesEntityExist
      SHX12_2 = SHX10_2
      SHX11_2 = SHX11_2(SHX12_2)
      if SHX11_2 then
        break
      end
      SHX11_2 = Wait
      SHX12_2 = 0
      SHX11_2(SHX12_2)
    end
    SHX11_2 = AttachEntityToEntity
    SHX12_2 = SHX10_2
    SHX13_2 = SHX0_2
    SHX14_2 = 0
    SHX15_2 = SHX9_2.pos
    SHX15_2 = SHX15_2.x
    SHX16_2 = SHX9_2.pos
    SHX16_2 = SHX16_2.y
    SHX17_2 = SHX9_2.pos
    SHX17_2 = SHX17_2.z
    SHX18_2 = SHX9_2.rot
    SHX18_2 = SHX18_2.x
    SHX19_2 = SHX9_2.rot
    SHX19_2 = SHX19_2.y
    SHX20_2 = SHX9_2.rot
    SHX20_2 = SHX20_2.z
    SHX21_2 = false
    SHX22_2 = false
    SHX23_2 = false
    SHX24_2 = false
    SHX25_2 = 2
    SHX26_2 = true
    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    SHX11_2 = SetEntityCollision
    SHX12_2 = SHX10_2
    SHX13_2 = false
    SHX14_2 = false
    SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    SHX11_2 = SHX122_1
    SHX12_2 = SHX10_2
    SHX11_2(SHX12_2)
    SHX11_2 = SHX3_1.leaves
    SHX12_2 = SHX3_1.leaves
    SHX12_2 = #SHX12_2
    SHX12_2 = SHX12_2 + 1
    SHX11_2[SHX12_2] = SHX10_2
  end
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = SHX1_2
  SHX5_2(SHX6_2)
end
function SHX181_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = ipairs
  SHX2_2 = SHX3_1.leaves
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX6_2 == SHX0_2 then
      SHX7_2 = DoesEntityExist
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = SetEntityDrawOutline
        SHX8_2 = SHX6_2
        SHX9_2 = false
        SHX7_2(SHX8_2, SHX9_2)
        SHX7_2 = DetachEntity
        SHX8_2 = SHX6_2
        SHX9_2 = true
        SHX10_2 = true
        SHX7_2(SHX8_2, SHX9_2, SHX10_2)
        SHX7_2 = GetEntityCoords
        SHX8_2 = SHX6_2
        SHX7_2 = SHX7_2(SHX8_2)
        SHX8_2 = SetEntityCoordsNoOffset
        SHX9_2 = SHX6_2
        SHX10_2 = SHX7_2.x
        SHX11_2 = SHX7_2.y
        SHX12_2 = SHX7_2.z
        SHX13_2 = false
        SHX14_2 = false
        SHX15_2 = false
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        SHX8_2 = SHX123_1
        SHX9_2 = SHX6_2
        SHX8_2(SHX9_2)
        SHX8_2 = SetEntityAsMissionEntity
        SHX9_2 = SHX6_2
        SHX10_2 = true
        SHX11_2 = true
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = SetEntityCollision
        SHX9_2 = SHX6_2
        SHX10_2 = false
        SHX11_2 = false
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = FreezeEntityPosition
        SHX9_2 = SHX6_2
        SHX10_2 = false
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = SHX178_1
        SHX9_2 = SHX7_2
        SHX10_2 = SHX6_2
        SHX11_2 = SHX3_1.activeBudEnt
        SHX12_2 = SHX3_1.chair
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX9_2 = SHX3_1.leavesFallen
        SHX10_2 = SHX3_1.leavesFallen
        SHX10_2 = #SHX10_2
        SHX10_2 = SHX10_2 + 1
        SHX9_2[SHX10_2] = SHX6_2
        SHX9_2 = table
        SHX9_2 = SHX9_2.remove
        SHX10_2 = SHX3_1.leaves
        SHX11_2 = SHX5_2
        SHX9_2(SHX10_2, SHX11_2)
        SHX9_2 = SHX179_1
        SHX10_2 = SHX6_2
        SHX11_2 = SHX7_2
        SHX12_2 = SHX8_2
        SHX9_2(SHX10_2, SHX11_2, SHX12_2)
        SHX9_2 = true
        return SHX9_2
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX182_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX3_1.cam
  if not SHX0_2 then
    SHX0_2 = SHX3_1.unprocessedTray
    if not SHX0_2 then
      SHX0_2 = SHX3_1.processedTray
      if not SHX0_2 then
        SHX0_2 = SHX3_1.active
        if not SHX0_2 then
          SHX0_2 = SHX3_1.plantId
          if SHX0_2 then
            SHX0_2 = SHX3_1.warehouseId
            if SHX0_2 then
              SHX0_2 = TriggerServerEvent
              SHX1_2 = "657db34076"
              SHX2_2 = SHX3_1.warehouseId
              SHX3_2 = SHX3_1.plantId
              SHX0_2(SHX1_2, SHX2_2, SHX3_2)
              SHX0_2 = SHX151_1
              SHX0_2()
              SHX3_1.plantId = nil
              SHX3_1.warehouseId = nil
            end
          end
          return
        end
      end
    end
  end
  SHX3_1.active = false
  SHX3_1.shouldExit = true
  SHX3_1.phase = "idle"
  SHX0_2 = SHX156_1
  SHX0_2()
  SHX0_2 = SHX149_1
  SHX0_2()
  SHX0_2 = SHX150_1
  SHX0_2()
  SHX0_2 = SHX151_1
  SHX0_2()
  SHX3_1.chair = nil
  SHX3_1.plantId = nil
  SHX3_1.warehouseId = nil
  SHX0_2 = {}
  SHX3_1.remainingPurities = SHX0_2
  SHX3_1.tableBudPurity = nil
  SHX3_1.sessionMode = "trim"
  SHX0_2 = {}
  SHX3_1.bagRemainingPurities = SHX0_2
  SHX3_1.emptyBagsRemaining = 0
  SHX3_1.pendingBagBudEnt = nil
  SHX3_1.pendingBagBudPurity = nil
  SHX3_1.pendingEmptyBagEnt = nil
  SHX0_2 = {}
  SHX112_1 = SHX0_2
  SHX0_2 = SHX114_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.showHud
    SHX0_2()
    SHX0_2 = false
    SHX114_1 = SHX0_2
  end
end
SHX183_1 = RegisterNetEvent
SHX184_1 = "acc4e317a4"
function SHX185_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1.active
  if SHX0_2 then
    SHX3_1.shouldExit = true
  else
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.setCanAnim
    SHX1_2 = true
    SHX0_2(SHX1_2)
  end
end
SHX183_1(SHX184_1, SHX185_1)
function SHX183_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = SHX182_1
  SHX0_2()
  SHX0_2 = ipairs
  SHX1_2 = SHX101_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = pcall
    SHX7_2 = NetworkStopSynchronisedScene
    SHX8_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2)
  end
  SHX0_2 = {}
  SHX101_1 = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX102_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX111_1
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX102_1 = SHX0_2
  SHX0_2 = RemoveAnimDict
  SHX1_2 = SHX103_1
  SHX0_2(SHX1_2)
  SHX0_2 = false
  SHX100_1 = SHX0_2
end
function SHX184_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = nil
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = 6.0
  end
  SHX5_2 = pairs
  SHX6_2 = SHX10_1.objects
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX10_2.itemId
    if "weed_workbench" == SHX11_2 then
      SHX11_2 = SHX10_2.object
      if SHX11_2 then
        SHX11_2 = DoesEntityExist
        SHX12_2 = SHX10_2.object
        SHX11_2 = SHX11_2(SHX12_2)
        if SHX11_2 then
          SHX11_2 = GetEntityCoords
          SHX12_2 = SHX10_2.object
          SHX11_2 = SHX11_2(SHX12_2)
          SHX11_2 = SHX11_2 - SHX2_2
          SHX11_2 = #SHX11_2
          if SHX4_2 > SHX11_2 then
            SHX4_2 = SHX11_2
            SHX3_2 = SHX10_2.object
          end
        end
      end
    end
  end
  SHX5_2 = SHX3_2
  SHX6_2 = SHX4_2
  return SHX5_2, SHX6_2
end
function SHX185_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetEntityHeading
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2 + 180.0
  SHX2_2 = SHX2_2 % 360.0
  SHX3_2 = SHX110_1
  SHX4_2 = SHX108_1
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = vector3
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX3_2.x
  SHX5_2 = SHX5_2 + SHX6_2
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX3_2.y
  SHX6_2 = SHX6_2 + SHX7_2
  SHX7_2 = SHX1_2.z
  SHX8_2 = SHX3_2.z
  SHX7_2 = SHX7_2 + SHX8_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = SHX110_1
  SHX6_2 = SHX109_1
  SHX7_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = vector4
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX5_2.x
  SHX7_2 = SHX7_2 + SHX8_2
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX5_2.y
  SHX8_2 = SHX8_2 + SHX9_2
  SHX9_2 = SHX4_2.z
  SHX10_2 = SHX5_2.z
  SHX9_2 = SHX9_2 + SHX10_2
  SHX10_2 = SHX2_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = vector3
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = SHX107_1
  SHX10_2 = SHX2_2 + SHX10_2
  SHX10_2 = SHX10_2 % 360.0
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX8_2 = SHX6_2
  SHX9_2 = SHX5_2
  SHX10_2 = SHX7_2
  SHX11_2 = SHX1_2 + 1
  return SHX8_2, SHX9_2, SHX10_2, SHX11_2
end
function SHX186_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if SHX1_2 then
    SHX2_2 = SHX10_1.lastUsedWarehouseId
    if SHX2_2 then
      goto SHX_LABEL_13
    end
  end
  SHX2_2 = SHX183_1
  SHX2_2()
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.setCanAnim
  SHX3_2 = true
  SHX2_2(SHX3_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX3_1.plantId = SHX1_2
  SHX2_2 = SHX10_1.lastUsedWarehouseId
  SHX3_1.warehouseId = SHX2_2
  SHX2_2 = SHX136_1
  SHX2_2, SHX3_2 = SHX2_2()
  if not SHX2_2 then
    if "no_bag" == SHX3_2 then
      SHX4_2 = notify
      SHX5_2 = "~r~You need an empty weed bag."
      SHX4_2(SHX5_2)
    else
      SHX4_2 = notify
      SHX5_2 = "~r~You need processed cannabis to bag."
      SHX4_2(SHX5_2)
    end
    SHX4_2 = SHX183_1
    SHX4_2()
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.setCanAnim
    SHX5_2 = true
    SHX4_2(SHX5_2)
    return
  end
  SHX3_1.active = true
  SHX3_1.sessionMode = "bag"
  SHX3_1.tableBudPurity = nil
  SHX3_1.shouldExit = false
  SHX3_1.chair = SHX0_2
  SHX3_1.phase = "bag_pick"
  SHX3_1.pendingBagBudEnt = nil
  SHX3_1.pendingBagBudPurity = nil
  SHX3_1.pendingEmptyBagEnt = nil
  SHX4_2 = SHX147_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX116_1
  SHX6_2 = SHX6_2()
  SHX7_2 = SHX119_1
  SHX7_2, SHX8_2, SHX9_2 = SHX7_2()
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX3_1.unprocessedTray = SHX4_2
  SHX4_2 = SHX147_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX117_1
  SHX6_2 = SHX6_2()
  SHX7_2 = SHX120_1
  SHX7_2, SHX8_2, SHX9_2 = SHX7_2()
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX3_1.processedTray = SHX4_2
  SHX4_2 = SHX3_1.unprocessedTray
  if SHX4_2 then
    SHX4_2 = SHX3_1.processedTray
    if SHX4_2 then
      goto SHX_LABEL_88
    end
  end
  SHX4_2 = notify
  SHX5_2 = "~r~Could not spawn workbench props."
  SHX4_2(SHX5_2)
  SHX4_2 = SHX3_1.warehouseId
  if SHX4_2 then
    SHX4_2 = SHX3_1.plantId
    if SHX4_2 then
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "657db34076"
      SHX6_2 = SHX3_1.warehouseId
      SHX7_2 = SHX3_1.plantId
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    end
  end
  SHX4_2 = SHX183_1
  SHX4_2()
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.setCanAnim
  SHX5_2 = true
  SHX4_2(SHX5_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_88:: outside nested blocks until all 'goto SHX_LABEL_88' can see it
  ::SHX_LABEL_88::
  SHX4_2 = SHX145_1
  SHX4_2()
  SHX4_2 = CreateCam
  SHX5_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX6_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX3_1.cam = SHX4_2
  SHX4_2 = SetCamActive
  SHX5_2 = SHX3_1.cam
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = RenderScriptCams
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = 400
  SHX8_2 = true
  SHX9_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SHX152_1
  SHX5_2 = SHX0_2
  SHX4_2(SHX5_2)
  SHX4_2 = CreateThread
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    while true do
      SHX0_3 = SHX3_1.active
      if not SHX0_3 then
        break
      end
      SHX0_3 = Wait
      SHX1_3 = 400
      SHX0_3(SHX1_3)
      SHX0_3 = SHX101_1
      SHX0_3 = SHX0_3[1]
      if SHX0_3 then
        SHX0_3 = SHX101_1
        SHX0_3 = SHX0_3[1]
        if 0 ~= SHX0_3 then
          SHX0_3 = IsSynchronizedSceneRunning
          SHX1_3 = SHX101_1
          SHX1_3 = SHX1_3[1]
          SHX0_3 = SHX0_3(SHX1_3)
          if not SHX0_3 then
            SHX0_3 = ipairs
            SHX1_3 = SHX101_1
            SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
            for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
              if SHX5_3 and 0 ~= SHX5_3 then
                SHX6_3 = NetworkStartSynchronisedScene
                SHX7_3 = SHX5_3
                SHX6_3(SHX7_3)
              end
            end
          end
        end
      end
    end
  end
  SHX4_2(SHX5_2)
  SHX4_2 = CreateThread
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.hideHud
    SHX0_3()
    SHX0_3 = true
    SHX114_1 = SHX0_3
    while true do
      SHX0_3 = SHX3_1.active
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX3_1.shouldExit
      if SHX0_3 then
        break
      end
      SHX0_3 = SetMouseCursorActiveThisFrame
      SHX0_3()
      SHX0_3 = SetMouseCursorSprite
      SHX1_3 = 1
      SHX0_3(SHX1_3)
      SHX0_3 = DisableAllControlActions
      SHX1_3 = 0
      SHX0_3(SHX1_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 239
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 240
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 245
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 246
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 249
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 24
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 200
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 322
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 194
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 202
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 177
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = SHX152_1
      SHX1_3 = SHX3_1.chair
      SHX0_3(SHX1_3)
      SHX0_3 = SHX155_1
      SHX0_3()
      SHX0_3 = SHX154_1
      SHX0_3()
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Click ~g~a cleaned bud~s~ and then an ~g~empty bag~s~ to bag it. ~INPUT_FRONTEND_RRIGHT~ to exit"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 200
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if not SHX0_3 then
        SHX0_3 = IsDisabledControlJustPressed
        SHX1_3 = 0
        SHX2_3 = 200
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if not SHX0_3 then
          SHX0_3 = IsControlJustPressed
          SHX1_3 = 0
          SHX2_3 = 322
          SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
          if not SHX0_3 then
            SHX0_3 = IsDisabledControlJustPressed
            SHX1_3 = 0
            SHX2_3 = 322
            SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
            if not SHX0_3 then
              SHX0_3 = IsControlJustPressed
              SHX1_3 = 0
              SHX2_3 = 194
              SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
              if not SHX0_3 then
                SHX0_3 = IsDisabledControlJustPressed
                SHX1_3 = 0
                SHX2_3 = 194
                SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                if not SHX0_3 then
                  SHX0_3 = IsControlJustPressed
                  SHX1_3 = 0
                  SHX2_3 = 202
                  SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                  if not SHX0_3 then
                    SHX0_3 = IsDisabledControlJustPressed
                    SHX1_3 = 0
                    SHX2_3 = 202
                    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                    if not SHX0_3 then
                      SHX0_3 = IsControlJustPressed
                      SHX1_3 = 0
                      SHX2_3 = 177
                      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                      if not SHX0_3 then
                        SHX0_3 = IsDisabledControlJustPressed
                        SHX1_3 = 0
                        SHX2_3 = 177
                        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      if SHX0_3 then
        SHX3_1.shouldExit = true
      end
      SHX1_3 = SHX3_1.phase
      if "bag_pick" == SHX1_3 then
        SHX1_3 = IsControlJustPressed
        SHX2_3 = 0
        SHX3_3 = 24
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if not SHX1_3 then
          SHX1_3 = IsDisabledControlJustPressed
          SHX2_3 = 0
          SHX3_3 = 24
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
          if not SHX1_3 then
            goto SHX_LABEL_237
          end
        end
        SHX1_3 = SHX153_1
        SHX1_3 = SHX1_3()
        if SHX1_3 and 0 ~= SHX1_3 then
          SHX2_3 = DoesEntityExist
          SHX3_3 = SHX1_3
          SHX2_3 = SHX2_3(SHX3_3)
          if SHX2_3 then
            SHX2_3 = SHX124_1
            SHX3_3 = SHX1_3
            SHX2_3 = SHX2_3(SHX3_3)
            if SHX2_3 then
              SHX2_3 = SHX138_1
              SHX3_3 = SHX1_3
              SHX2_3 = SHX2_3(SHX3_3)
              SHX3_3 = SHX139_1
              SHX4_3 = SHX1_3
              SHX3_3 = SHX3_3(SHX4_3)
              SHX4_3 = SHX0_1.weedWorkbenchFp
              SHX4_3 = SHX4_3.lerpBaggingToCenterMs
              if not SHX4_3 then
                SHX4_3 = 550
              end
              if SHX2_3 then
                SHX5_3 = SHX3_1.pendingEmptyBagEnt
                if SHX5_3 then
                  SHX5_3 = DoesEntityExist
                  SHX6_3 = SHX3_1.pendingEmptyBagEnt
                  SHX5_3 = SHX5_3(SHX6_3)
                  if SHX5_3 then
                    SHX5_3 = SHX3_1.pendingEmptyBagEnt
                    SHX3_1.pendingEmptyBagEnt = nil
                    SHX3_1.phase = "bag_busy"
                    SHX6_3 = CreateThread
                    function SHX7_3()
                      -- [AI CLEANUP] Decompiled Lua - Fix these:
                      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                      -- 3. Replace goto/label with while/repeat-until where possible
                      -- 4. Remove decompiler comments, add meaningful ones
                      -- 5. Fix indentation and formatting
                      
                      local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4
                      SHX0_4 = SHX162_1
                      SHX1_4 = SHX1_3
                      SHX0_4(SHX1_4)
                      SHX0_4 = SHX137_1
                      SHX1_4 = SHX2_3
                      SHX0_4(SHX1_4)
                      SHX0_4 = DetachEntity
                      SHX1_4 = SHX1_3
                      SHX2_4 = true
                      SHX3_4 = true
                      SHX0_4(SHX1_4, SHX2_4, SHX3_4)
                      SHX0_4 = FreezeEntityPosition
                      SHX1_4 = SHX1_3
                      SHX2_4 = false
                      SHX0_4(SHX1_4, SHX2_4)
                      SHX0_4 = SHX161_1
                      SHX1_4 = SHX3_1.chair
                      SHX0_4 = SHX0_4(SHX1_4)
                      SHX1_4 = SHX160_1
                      SHX2_4 = SHX1_3
                      SHX3_4 = GetEntityCoords
                      SHX4_4 = SHX1_3
                      SHX3_4 = SHX3_4(SHX4_4)
                      SHX4_4 = SHX0_4
                      SHX5_4 = SHX4_3
                      SHX1_4(SHX2_4, SHX3_4, SHX4_4, SHX5_4)
                      SHX1_4 = FreezeEntityPosition
                      SHX2_4 = SHX1_3
                      SHX3_4 = true
                      SHX1_4(SHX2_4, SHX3_4)
                      SHX1_4 = SHX165_1
                      SHX2_4 = SHX1_3
                      SHX3_4 = SHX5_3
                      SHX4_4 = SHX2_3
                      SHX1_4(SHX2_4, SHX3_4, SHX4_4)
                    end
                    SHX6_3(SHX7_3)
                end
                else
                  SHX3_1.phase = "bag_busy"
                  SHX5_3 = CreateThread
                  function SHX6_3()
                    -- [AI CLEANUP] Decompiled Lua - Fix these:
                    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                    -- 3. Replace goto/label with while/repeat-until where possible
                    -- 4. Remove decompiler comments, add meaningful ones
                    -- 5. Fix indentation and formatting
                    
                    local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4
                    SHX0_4 = SHX3_1.pendingBagBudEnt
                    if SHX0_4 then
                      SHX0_4 = DoesEntityExist
                      SHX1_4 = SHX3_1.pendingBagBudEnt
                      SHX0_4 = SHX0_4(SHX1_4)
                      if SHX0_4 then
                        SHX0_4 = SHX3_1.pendingBagBudEnt
                        SHX1_4 = SHX1_3
                        if SHX0_4 ~= SHX1_4 then
                          SHX0_4 = SHX140_1
                          SHX1_4 = SHX3_1.pendingBagBudEnt
                          SHX0_4(SHX1_4)
                          SHX0_4 = SHX164_1
                          SHX1_4 = SHX3_1.pendingBagBudPurity
                          SHX0_4(SHX1_4)
                        end
                      end
                    end
                    SHX0_4 = SHX162_1
                    SHX1_4 = SHX1_3
                    SHX0_4(SHX1_4)
                    SHX0_4 = SHX137_1
                    SHX1_4 = SHX2_3
                    SHX0_4(SHX1_4)
                    SHX0_4 = DetachEntity
                    SHX1_4 = SHX1_3
                    SHX2_4 = true
                    SHX3_4 = true
                    SHX0_4(SHX1_4, SHX2_4, SHX3_4)
                    SHX0_4 = FreezeEntityPosition
                    SHX1_4 = SHX1_3
                    SHX2_4 = false
                    SHX0_4(SHX1_4, SHX2_4)
                    SHX0_4 = SHX161_1
                    SHX1_4 = SHX3_1.chair
                    SHX0_4 = SHX0_4(SHX1_4)
                    SHX1_4 = SHX160_1
                    SHX2_4 = SHX1_3
                    SHX3_4 = GetEntityCoords
                    SHX4_4 = SHX1_3
                    SHX3_4 = SHX3_4(SHX4_4)
                    SHX4_4 = SHX0_4
                    SHX5_4 = SHX4_3
                    SHX1_4(SHX2_4, SHX3_4, SHX4_4, SHX5_4)
                    SHX1_4 = FreezeEntityPosition
                    SHX2_4 = SHX1_3
                    SHX3_4 = true
                    SHX1_4(SHX2_4, SHX3_4)
                    SHX1_4 = SHX1_3
                    SHX3_1.pendingBagBudEnt = SHX1_4
                    SHX1_4 = SHX2_3
                    SHX3_1.pendingBagBudPurity = SHX1_4
                    SHX3_1.phase = "bag_pick"
                  end
                  SHX5_3(SHX6_3)
                end
              elseif SHX3_3 then
                SHX5_3 = SHX3_1.pendingBagBudEnt
                if SHX5_3 then
                  SHX5_3 = DoesEntityExist
                  SHX6_3 = SHX3_1.pendingBagBudEnt
                  SHX5_3 = SHX5_3(SHX6_3)
                  if SHX5_3 then
                    SHX5_3 = SHX3_1.pendingBagBudEnt
                    SHX6_3 = SHX3_1.pendingBagBudPurity
                    SHX3_1.pendingBagBudEnt = nil
                    SHX3_1.pendingBagBudPurity = nil
                    SHX3_1.phase = "bag_busy"
                    SHX7_3 = CreateThread
                    function SHX8_3()
                      -- [AI CLEANUP] Decompiled Lua - Fix these:
                      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                      -- 3. Replace goto/label with while/repeat-until where possible
                      -- 4. Remove decompiler comments, add meaningful ones
                      -- 5. Fix indentation and formatting
                      
                      local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4
                      SHX0_4 = SHX163_1
                      SHX1_4 = SHX1_3
                      SHX0_4(SHX1_4)
                      SHX0_4 = math
                      SHX0_4 = SHX0_4.max
                      SHX1_4 = 0
                      SHX2_4 = SHX3_1.emptyBagsRemaining
                      if not SHX2_4 then
                        SHX2_4 = 0
                      end
                      SHX2_4 = SHX2_4 - 1
                      SHX0_4 = SHX0_4(SHX1_4, SHX2_4)
                      SHX3_1.emptyBagsRemaining = SHX0_4
                      SHX0_4 = DetachEntity
                      SHX1_4 = SHX1_3
                      SHX2_4 = true
                      SHX3_4 = true
                      SHX0_4(SHX1_4, SHX2_4, SHX3_4)
                      SHX0_4 = FreezeEntityPosition
                      SHX1_4 = SHX1_3
                      SHX2_4 = false
                      SHX0_4(SHX1_4, SHX2_4)
                      SHX0_4 = SHX161_1
                      SHX1_4 = SHX3_1.chair
                      SHX0_4, SHX1_4 = SHX0_4(SHX1_4)
                      SHX2_4 = SHX160_1
                      SHX3_4 = SHX1_3
                      SHX4_4 = GetEntityCoords
                      SHX5_4 = SHX1_3
                      SHX4_4 = SHX4_4(SHX5_4)
                      SHX5_4 = SHX1_4
                      SHX6_4 = SHX4_3
                      SHX2_4(SHX3_4, SHX4_4, SHX5_4, SHX6_4)
                      SHX2_4 = FreezeEntityPosition
                      SHX3_4 = SHX1_3
                      SHX4_4 = true
                      SHX2_4(SHX3_4, SHX4_4)
                      SHX2_4 = SHX165_1
                      SHX3_4 = SHX5_3
                      SHX4_4 = SHX1_3
                      SHX5_4 = SHX6_3
                      SHX2_4(SHX3_4, SHX4_4, SHX5_4)
                    end
                    SHX7_3(SHX8_3)
                end
                else
                  SHX3_1.phase = "bag_busy"
                  SHX5_3 = CreateThread
                  function SHX6_3()
                    -- [AI CLEANUP] Decompiled Lua - Fix these:
                    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                    -- 3. Replace goto/label with while/repeat-until where possible
                    -- 4. Remove decompiler comments, add meaningful ones
                    -- 5. Fix indentation and formatting
                    
                    local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4
                    SHX0_4 = SHX3_1.pendingEmptyBagEnt
                    if SHX0_4 then
                      SHX0_4 = DoesEntityExist
                      SHX1_4 = SHX3_1.pendingEmptyBagEnt
                      SHX0_4 = SHX0_4(SHX1_4)
                      if SHX0_4 then
                        SHX0_4 = SHX3_1.pendingEmptyBagEnt
                        SHX1_4 = SHX1_3
                        if SHX0_4 ~= SHX1_4 then
                          SHX0_4 = SHX140_1
                          SHX1_4 = SHX3_1.pendingEmptyBagEnt
                          SHX0_4(SHX1_4)
                          SHX0_4 = SHX3_1.emptyBagsRemaining
                          if not SHX0_4 then
                            SHX0_4 = 0
                          end
                          SHX0_4 = SHX0_4 + 1
                          SHX3_1.emptyBagsRemaining = SHX0_4
                        end
                      end
                    end
                    SHX0_4 = SHX163_1
                    SHX1_4 = SHX1_3
                    SHX0_4(SHX1_4)
                    SHX0_4 = math
                    SHX0_4 = SHX0_4.max
                    SHX1_4 = 0
                    SHX2_4 = SHX3_1.emptyBagsRemaining
                    if not SHX2_4 then
                      SHX2_4 = 0
                    end
                    SHX2_4 = SHX2_4 - 1
                    SHX0_4 = SHX0_4(SHX1_4, SHX2_4)
                    SHX3_1.emptyBagsRemaining = SHX0_4
                    SHX0_4 = DetachEntity
                    SHX1_4 = SHX1_3
                    SHX2_4 = true
                    SHX3_4 = true
                    SHX0_4(SHX1_4, SHX2_4, SHX3_4)
                    SHX0_4 = FreezeEntityPosition
                    SHX1_4 = SHX1_3
                    SHX2_4 = false
                    SHX0_4(SHX1_4, SHX2_4)
                    SHX0_4 = SHX161_1
                    SHX1_4 = SHX3_1.chair
                    SHX0_4, SHX1_4 = SHX0_4(SHX1_4)
                    SHX2_4 = SHX160_1
                    SHX3_4 = SHX1_3
                    SHX4_4 = GetEntityCoords
                    SHX5_4 = SHX1_3
                    SHX4_4 = SHX4_4(SHX5_4)
                    SHX5_4 = SHX1_4
                    SHX6_4 = SHX4_3
                    SHX2_4(SHX3_4, SHX4_4, SHX5_4, SHX6_4)
                    SHX2_4 = FreezeEntityPosition
                    SHX3_4 = SHX1_3
                    SHX4_4 = true
                    SHX2_4(SHX3_4, SHX4_4)
                    SHX2_4 = SHX1_3
                    SHX3_1.pendingEmptyBagEnt = SHX2_4
                    SHX3_1.pendingBagBudEnt = nil
                    SHX3_1.pendingBagBudPurity = nil
                    SHX3_1.phase = "bag_pick"
                  end
                  SHX5_3(SHX6_3)
                end
              end
            end
          end
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_237:: outside nested blocks until all 'goto SHX_LABEL_237' can see it
      ::SHX_LABEL_237::
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
    SHX0_3 = SHX3_1.warehouseId
    if SHX0_3 then
      SHX0_3 = SHX3_1.plantId
      if SHX0_3 then
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "657db34076"
        SHX2_3 = SHX3_1.warehouseId
        SHX3_3 = SHX3_1.plantId
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "020ba07cfc"
        SHX2_3 = SHX3_1.plantId
        SHX0_3(SHX1_3, SHX2_3)
      end
    end
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.setCanAnim
    SHX1_3 = true
    SHX0_3(SHX1_3)
    SHX0_3 = SHX183_1
    SHX0_3()
  end
  SHX4_2(SHX5_2)
end
function SHX187_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if SHX1_2 then
    SHX2_2 = SHX10_1.lastUsedWarehouseId
    if SHX2_2 then
      goto SHX_LABEL_13
    end
  end
  SHX2_2 = SHX183_1
  SHX2_2()
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.setCanAnim
  SHX3_2 = true
  SHX2_2(SHX3_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX3_1.plantId = SHX1_2
  SHX2_2 = SHX10_1.lastUsedWarehouseId
  SHX3_1.warehouseId = SHX2_2
  SHX2_2 = SHX133_1
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~You need a cannabis bud to process."
    SHX2_2(SHX3_2)
    SHX2_2 = SHX183_1
    SHX2_2()
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.setCanAnim
    SHX3_2 = true
    SHX2_2(SHX3_2)
    return
  end
  SHX3_1.active = true
  SHX3_1.sessionMode = "trim"
  SHX3_1.tableBudPurity = nil
  SHX3_1.shouldExit = false
  SHX3_1.chair = SHX0_2
  SHX3_1.phase = "pick"
  SHX3_1.activeBudEnt = nil
  SHX2_2 = SHX147_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX116_1
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX119_1
  SHX5_2, SHX6_2, SHX7_2 = SHX5_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_1.unprocessedTray = SHX2_2
  SHX2_2 = SHX147_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX117_1
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX120_1
  SHX5_2, SHX6_2, SHX7_2 = SHX5_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_1.processedTray = SHX2_2
  SHX2_2 = SHX3_1.unprocessedTray
  if SHX2_2 then
    SHX2_2 = SHX3_1.processedTray
    if SHX2_2 then
      goto SHX_LABEL_80
    end
  end
  SHX2_2 = notify
  SHX3_2 = "~r~Could not spawn workbench props."
  SHX2_2(SHX3_2)
  SHX2_2 = SHX3_1.warehouseId
  if SHX2_2 then
    SHX2_2 = SHX3_1.plantId
    if SHX2_2 then
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "657db34076"
      SHX4_2 = SHX3_1.warehouseId
      SHX5_2 = SHX3_1.plantId
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    end
  end
  SHX2_2 = SHX183_1
  SHX2_2()
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.setCanAnim
  SHX3_2 = true
  SHX2_2(SHX3_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_80:: outside nested blocks until all 'goto SHX_LABEL_80' can see it
  ::SHX_LABEL_80::
  SHX2_2 = SHX148_1
  SHX2_2()
  SHX2_2 = CreateCam
  SHX3_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_1.cam = SHX2_2
  SHX2_2 = SetCamActive
  SHX3_2 = SHX3_1.cam
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = RenderScriptCams
  SHX3_2 = true
  SHX4_2 = true
  SHX5_2 = 400
  SHX6_2 = true
  SHX7_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = SHX152_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    while true do
      SHX0_3 = SHX3_1.active
      if not SHX0_3 then
        break
      end
      SHX0_3 = Wait
      SHX1_3 = 400
      SHX0_3(SHX1_3)
      SHX0_3 = SHX101_1
      SHX0_3 = SHX0_3[1]
      if SHX0_3 then
        SHX0_3 = SHX101_1
        SHX0_3 = SHX0_3[1]
        if 0 ~= SHX0_3 then
          SHX0_3 = IsSynchronizedSceneRunning
          SHX1_3 = SHX101_1
          SHX1_3 = SHX1_3[1]
          SHX0_3 = SHX0_3(SHX1_3)
          if not SHX0_3 then
            SHX0_3 = ipairs
            SHX1_3 = SHX101_1
            SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
            for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
              if SHX5_3 and 0 ~= SHX5_3 then
                SHX6_3 = NetworkStartSynchronisedScene
                SHX7_3 = SHX5_3
                SHX6_3(SHX7_3)
              end
            end
          end
        end
      end
    end
  end
  SHX2_2(SHX3_2)
  SHX2_2 = CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.hideHud
    SHX0_3()
    SHX0_3 = true
    SHX114_1 = SHX0_3
    while true do
      SHX0_3 = SHX3_1.active
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX3_1.shouldExit
      if SHX0_3 then
        break
      end
      SHX0_3 = SetMouseCursorActiveThisFrame
      SHX0_3()
      SHX0_3 = SetMouseCursorSprite
      SHX1_3 = 1
      SHX0_3(SHX1_3)
      SHX0_3 = DisableAllControlActions
      SHX1_3 = 0
      SHX0_3(SHX1_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 239
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 240
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 245
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 246
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 249
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 24
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 200
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 322
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 194
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 202
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = EnableControlAction
      SHX1_3 = 0
      SHX2_3 = 177
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = SHX152_1
      SHX1_3 = SHX3_1.chair
      SHX0_3(SHX1_3)
      SHX0_3 = SHX155_1
      SHX0_3()
      SHX0_3 = SHX154_1
      SHX0_3()
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Click ~g~a bud~s~ and then click on the ~g~leaves~s~ to remove them. ~INPUT_FRONTEND_RRIGHT~ to exit"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 200
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if not SHX0_3 then
        SHX0_3 = IsDisabledControlJustPressed
        SHX1_3 = 0
        SHX2_3 = 200
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if not SHX0_3 then
          SHX0_3 = IsControlJustPressed
          SHX1_3 = 0
          SHX2_3 = 322
          SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
          if not SHX0_3 then
            SHX0_3 = IsDisabledControlJustPressed
            SHX1_3 = 0
            SHX2_3 = 322
            SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
            if not SHX0_3 then
              SHX0_3 = IsControlJustPressed
              SHX1_3 = 0
              SHX2_3 = 194
              SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
              if not SHX0_3 then
                SHX0_3 = IsDisabledControlJustPressed
                SHX1_3 = 0
                SHX2_3 = 194
                SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                if not SHX0_3 then
                  SHX0_3 = IsControlJustPressed
                  SHX1_3 = 0
                  SHX2_3 = 202
                  SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                  if not SHX0_3 then
                    SHX0_3 = IsDisabledControlJustPressed
                    SHX1_3 = 0
                    SHX2_3 = 202
                    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                    if not SHX0_3 then
                      SHX0_3 = IsControlJustPressed
                      SHX1_3 = 0
                      SHX2_3 = 177
                      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                      if not SHX0_3 then
                        SHX0_3 = IsDisabledControlJustPressed
                        SHX1_3 = 0
                        SHX2_3 = 177
                        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      if SHX0_3 then
        SHX3_1.shouldExit = true
      end
      SHX1_3 = SHX3_1.phase
      if "pick" ~= SHX1_3 then
        SHX1_3 = SHX3_1.phase
        if "strip" ~= SHX1_3 then
          goto SHX_LABEL_230
        end
      end
      SHX1_3 = IsControlJustPressed
      SHX2_3 = 0
      SHX3_3 = 24
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if not SHX1_3 then
        SHX1_3 = IsDisabledControlJustPressed
        SHX2_3 = 0
        SHX3_3 = 24
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if not SHX1_3 then
          goto SHX_LABEL_230
        end
      end
      SHX1_3 = SHX153_1
      SHX1_3 = SHX1_3()
      if SHX1_3 and 0 ~= SHX1_3 then
        SHX2_3 = DoesEntityExist
        SHX3_3 = SHX1_3
        SHX2_3 = SHX2_3(SHX3_3)
        if SHX2_3 then
          SHX2_3 = SHX124_1
          SHX3_3 = SHX1_3
          SHX2_3 = SHX2_3(SHX3_3)
          if SHX2_3 then
            SHX2_3 = SHX3_1.phase
            if "pick" == SHX2_3 then
              SHX2_3 = nil
              SHX3_3 = ipairs
              SHX4_3 = SHX3_1.slots
              SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX3_3(SHX4_3)
              for SHX7_3, SHX8_3 in SHX3_3, SHX4_3, SHX5_3, SHX6_3 do
                if SHX8_3 then
                  SHX9_3 = SHX8_3.ent
                  if SHX9_3 == SHX1_3 then
                    SHX2_3 = SHX8_3
                    break
                  end
                end
              end
              if SHX2_3 then
                SHX3_3 = SHX3_1.remainingPurities
                SHX3_3 = #SHX3_3
                if SHX3_3 > 0 then
                  SHX3_1.phase = "busy"
                  SHX3_3 = CreateThread
                  function SHX4_3()
                    -- [AI CLEANUP] Decompiled Lua - Fix these:
                    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                    -- 3. Replace goto/label with while/repeat-until where possible
                    -- 4. Remove decompiler comments, add meaningful ones
                    -- 5. Fix indentation and formatting
                    
                    local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4
                    SHX0_4 = FreezeEntityPosition
                    SHX1_4 = SHX1_3
                    SHX2_4 = false
                    SHX0_4(SHX1_4, SHX2_4)
                    SHX0_4 = GetEntityCoords
                    SHX1_4 = SHX1_3
                    SHX0_4 = SHX0_4(SHX1_4)
                    SHX1_4 = select
                    SHX2_4 = 1
                    SHX3_4 = SHX131_1
                    SHX4_4 = SHX3_1.chair
                    SHX3_4, SHX4_4, SHX5_4, SHX6_4 = SHX3_4(SHX4_4)
                    SHX1_4 = SHX1_4(SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4)
                    SHX2_4 = SHX160_1
                    SHX3_4 = SHX1_3
                    SHX4_4 = SHX0_4
                    SHX5_4 = SHX1_4
                    SHX6_4 = SHX0_1.weedWorkbenchFp
                    SHX6_4 = SHX6_4.lerpBudTrayToTableMs
                    SHX2_4(SHX3_4, SHX4_4, SHX5_4, SHX6_4)
                    SHX2_4 = FreezeEntityPosition
                    SHX3_4 = SHX1_3
                    SHX4_4 = true
                    SHX2_4(SHX3_4, SHX4_4)
                    SHX2_4 = SetEntityCollision
                    SHX3_4 = SHX1_3
                    SHX4_4 = true
                    SHX5_4 = true
                    SHX2_4(SHX3_4, SHX4_4, SHX5_4)
                    SHX2_4 = SHX2_3.purity
                    SHX3_1.tableBudPurity = SHX2_4
                    SHX2_4 = SHX1_3
                    SHX3_1.activeBudEnt = SHX2_4
                    SHX2_3.ent = nil
                    SHX2_4 = SHX180_1
                    SHX3_4 = SHX1_3
                    SHX2_4(SHX3_4)
                    SHX3_1.phase = "strip"
                  end
                  SHX3_3(SHX4_3)
                end
              end
            else
              SHX2_3 = SHX3_1.phase
              if "strip" == SHX2_3 then
                SHX2_3 = SHX181_1
                SHX3_3 = SHX1_3
                SHX2_3 = SHX2_3(SHX3_3)
                if SHX2_3 then
                  SHX2_3 = SHX3_1.leaves
                  SHX2_3 = #SHX2_3
                  if 0 == SHX2_3 then
                    SHX2_3 = SHX3_1.activeBudEnt
                    if SHX2_3 then
                      SHX3_1.phase = "busy"
                      SHX2_3 = CreateThread
                      function SHX3_3()
                        -- [AI CLEANUP] Decompiled Lua - Fix these:
                        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                        -- 3. Replace goto/label with while/repeat-until where possible
                        -- 4. Remove decompiler comments, add meaningful ones
                        -- 5. Fix indentation and formatting
                        
                        local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4, SHX16_4, SHX17_4
                        SHX0_4 = SHX3_1.activeBudEnt
                        if SHX0_4 and 0 ~= SHX0_4 then
                          SHX1_4 = DoesEntityExist
                          SHX2_4 = SHX0_4
                          SHX1_4 = SHX1_4(SHX2_4)
                          if SHX1_4 then
                            goto SHX_LABEL_13
                          end
                        end
                        SHX3_1.phase = "pick"
                        return
                        -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
                        ::SHX_LABEL_13::
                        SHX1_4 = GetEntityCoords
                        SHX2_4 = SHX0_4
                        SHX1_4 = SHX1_4(SHX2_4)
                        SHX2_4 = SHX157_1
                        SHX2_4 = SHX2_4()
                        if not SHX2_4 then
                          SHX3_4 = notify
                          SHX4_4 = "~r~Could not finish processing."
                          SHX3_4(SHX4_4)
                          SHX3_1.phase = "pick"
                          return
                        end
                        SHX3_4 = CMG
                        SHX3_4 = SHX3_4.addJobTutorialProgress
                        SHX4_4 = "process_bud"
                        SHX5_4 = 1
                        SHX3_4(SHX4_4, SHX5_4)
                        SHX3_4 = SHX140_1
                        SHX4_4 = SHX0_4
                        SHX3_4(SHX4_4)
                        SHX3_1.activeBudEnt = nil
                        SHX3_4 = SHX134_1
                        SHX4_4 = SHX3_1.tableBudPurity
                        SHX3_4(SHX4_4)
                        SHX3_1.tableBudPurity = nil
                        SHX3_4 = CMG
                        SHX3_4 = SHX3_4.loadModel
                        SHX4_4 = "bkr_prop_weed_bud_pruned_01a"
                        SHX3_4 = SHX3_4(SHX4_4)
                        SHX4_4 = SHX0_1.weedWorkbenchFp
                        SHX4_4 = SHX4_4.trayBudSlotLocals
                        SHX5_4 = SHX0_1.weedWorkbenchFp
                        SHX5_4 = SHX5_4.maxProcessedBudsVisible
                        SHX6_4 = math
                        SHX6_4 = SHX6_4.min
                        SHX7_4 = SHX3_1.processedEntities
                        SHX7_4 = #SHX7_4
                        SHX7_4 = SHX7_4 + 1
                        SHX8_4 = #SHX4_4
                        SHX9_4 = SHX5_4 or SHX9_4
                        if not SHX5_4 then
                          SHX9_4 = 99
                        end
                        SHX6_4 = SHX6_4(SHX7_4, SHX8_4, SHX9_4)
                        if SHX6_4 < 1 then
                          SHX6_4 = 1
                        end
                        SHX7_4 = SHX4_4[SHX6_4]
                        if not SHX7_4 then
                          SHX7_4 = vector3
                          SHX8_4 = 0.0
                          SHX9_4 = 0.0
                          SHX10_4 = 0.02
                          SHX7_4 = SHX7_4(SHX8_4, SHX9_4, SHX10_4)
                        end
                        SHX8_4 = GetOffsetFromEntityInWorldCoords
                        SHX9_4 = SHX3_1.processedTray
                        SHX10_4 = SHX7_4.x
                        SHX11_4 = SHX7_4.y
                        SHX12_4 = SHX7_4.z
                        SHX8_4 = SHX8_4(SHX9_4, SHX10_4, SHX11_4, SHX12_4)
                        SHX9_4 = vector3
                        SHX10_4 = SHX8_4.x
                        SHX11_4 = SHX8_4.y
                        SHX12_4 = SHX8_4.z
                        SHX9_4 = SHX9_4(SHX10_4, SHX11_4, SHX12_4)
                        if SHX3_4 then
                          SHX10_4 = CreateObject
                          SHX11_4 = SHX3_4
                          SHX12_4 = SHX1_4.x
                          SHX13_4 = SHX1_4.y
                          SHX14_4 = SHX1_4.z
                          SHX15_4 = false
                          SHX16_4 = false
                          SHX17_4 = false
                          SHX10_4 = SHX10_4(SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4, SHX16_4, SHX17_4)
                          while true do
                            SHX11_4 = DoesEntityExist
                            SHX12_4 = SHX10_4
                            SHX11_4 = SHX11_4(SHX12_4)
                            if SHX11_4 then
                              break
                            end
                            SHX11_4 = Wait
                            SHX12_4 = 0
                            SHX11_4(SHX12_4)
                          end
                          SHX11_4 = SHX160_1
                          SHX12_4 = SHX10_4
                          SHX13_4 = SHX1_4
                          SHX14_4 = SHX9_4
                          SHX15_4 = SHX0_1.weedWorkbenchFp
                          SHX15_4 = SHX15_4.lerpBudTableToProcessedMs
                          SHX11_4(SHX12_4, SHX13_4, SHX14_4, SHX15_4)
                          SHX11_4 = FreezeEntityPosition
                          SHX12_4 = SHX10_4
                          SHX13_4 = true
                          SHX11_4(SHX12_4, SHX13_4)
                          SHX11_4 = SHX3_1.processedEntities
                          SHX12_4 = SHX3_1.processedEntities
                          SHX12_4 = #SHX12_4
                          SHX12_4 = SHX12_4 + 1
                          SHX11_4[SHX12_4] = SHX10_4
                          SHX11_4 = SHX122_1
                          SHX12_4 = SHX10_4
                          SHX11_4(SHX12_4)
                          SHX11_4 = SetModelAsNoLongerNeeded
                          SHX12_4 = SHX3_4
                          SHX11_4(SHX12_4)
                        end
                        SHX10_4 = SHX148_1
                        SHX10_4()
                        SHX10_4 = SHX3_1.remainingPurities
                        SHX10_4 = #SHX10_4
                        if 0 == SHX10_4 then
                          SHX10_4 = notify
                          SHX11_4 = "~g~All visible buds processed."
                          SHX10_4(SHX11_4)
                        end
                        SHX3_1.phase = "pick"
                      end
                      SHX2_3(SHX3_3)
                    end
                  end
                end
              end
            end
          end
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_230:: outside nested blocks until all 'goto SHX_LABEL_230' can see it
      ::SHX_LABEL_230::
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
    SHX0_3 = SHX3_1.warehouseId
    if SHX0_3 then
      SHX0_3 = SHX3_1.plantId
      if SHX0_3 then
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "657db34076"
        SHX2_3 = SHX3_1.warehouseId
        SHX3_3 = SHX3_1.plantId
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "020ba07cfc"
        SHX2_3 = SHX3_1.plantId
        SHX0_3(SHX1_3, SHX2_3)
      end
    end
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.setCanAnim
    SHX1_3 = true
    SHX0_3(SHX1_3)
    SHX0_3 = SHX183_1
    SHX0_3()
  end
  SHX2_2(SHX3_2)
end
function SHX188_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX2_2 = SHX100_1
  if SHX2_2 then
    return
  end
  SHX2_2 = true
  SHX100_1 = SHX2_2
  SHX2_2 = nil
  SHX3_2 = pairs
  SHX4_2 = SHX10_1.objects
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.itemId
    if "weed_workbench" == SHX9_2 then
      SHX9_2 = SHX8_2.object
      if SHX9_2 == SHX0_2 then
        SHX2_2 = SHX7_2
        break
      end
    end
  end
  if SHX2_2 then
    SHX3_2 = SHX10_1.lastUsedWarehouseId
    if SHX3_2 then
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "15cede429f"
      SHX5_2 = SHX10_1.lastUsedWarehouseId
      SHX6_2 = SHX2_2
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX10_1.objects
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.itemId
    if "weed_workbench" == SHX9_2 then
      SHX9_2 = SHX8_2.object
      if SHX9_2 == SHX0_2 then
        SHX9_2 = SHX8_2.object
        if SHX9_2 then
          SHX9_2 = DoesEntityExist
          SHX10_2 = SHX8_2.object
          SHX9_2 = SHX9_2(SHX10_2)
          if SHX9_2 then
            SHX9_2 = SetEntityCollision
            SHX10_2 = SHX8_2.object
            SHX11_2 = false
            SHX12_2 = false
            SHX9_2(SHX10_2, SHX11_2, SHX12_2)
          end
        end
        SHX9_2 = ipairs
        SHX10_2 = SHX8_2.extraObjects
        if not SHX10_2 then
          SHX10_2 = {}
        end
        SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
        for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
          if SHX14_2 then
            SHX15_2 = DoesEntityExist
            SHX16_2 = SHX14_2
            SHX15_2 = SHX15_2(SHX16_2)
            if SHX15_2 then
              SHX15_2 = SetEntityCollision
              SHX16_2 = SHX14_2
              SHX17_2 = false
              SHX18_2 = false
              SHX15_2(SHX16_2, SHX17_2, SHX18_2)
            end
          end
        end
        break
      end
    end
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = SHX103_1
  SHX3_2(SHX4_2)
  SHX3_2 = SHX185_1
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  SHX7_2 = vector3
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX4_2.x
  SHX8_2 = SHX8_2 - SHX9_2
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX4_2.y
  SHX9_2 = SHX9_2 - SHX10_2
  SHX10_2 = SHX3_2.z
  SHX11_2 = SHX4_2.z
  SHX10_2 = SHX10_2 - SHX11_2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX8_2 = pairs
  SHX9_2 = SHX106_1
  SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
  for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
    SHX14_2 = CMG
    SHX14_2 = SHX14_2.loadModel
    SHX15_2 = SHX13_2
    SHX14_2 = SHX14_2(SHX15_2)
    if SHX14_2 then
      SHX15_2 = CreateObject
      SHX16_2 = SHX14_2
      SHX17_2 = SHX7_2.x
      SHX18_2 = SHX7_2.y
      SHX19_2 = SHX7_2.z
      SHX20_2 = true
      SHX21_2 = true
      SHX22_2 = false
      SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      while true do
        SHX16_2 = DoesEntityExist
        SHX17_2 = SHX15_2
        SHX16_2 = SHX16_2(SHX17_2)
        if SHX16_2 then
          break
        end
        SHX16_2 = Wait
        SHX17_2 = 0
        SHX16_2(SHX17_2)
      end
      SHX16_2 = SetEntityCollision
      SHX17_2 = SHX15_2
      SHX18_2 = false
      SHX19_2 = false
      SHX16_2(SHX17_2, SHX18_2, SHX19_2)
      SHX16_2 = SetEntityVisible
      SHX17_2 = SHX15_2
      SHX18_2 = false
      SHX19_2 = false
      SHX16_2(SHX17_2, SHX18_2, SHX19_2)
      SHX16_2 = SHX102_1
      SHX16_2[SHX12_2] = SHX15_2
      SHX16_2 = SetModelAsNoLongerNeeded
      SHX17_2 = SHX14_2
      SHX16_2(SHX17_2)
    end
  end
  SHX8_2 = 0
  SHX9_2 = pairs
  SHX10_2 = SHX102_1
  SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
  for SHX13_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
    SHX8_2 = SHX8_2 + 1
  end
  SHX9_2 = math
  SHX9_2 = SHX9_2.max
  SHX10_2 = 1
  SHX11_2 = math
  SHX11_2 = SHX11_2.ceil
  SHX12_2 = SHX8_2 / 3
  SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX11_2(SHX12_2)
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
  SHX10_2 = {}
  SHX11_2 = {}
  SHX101_1 = SHX11_2
  SHX11_2 = 1
  SHX12_2 = SHX9_2
  SHX13_2 = 1
  for SHX14_2 = SHX11_2, SHX12_2, SHX13_2 do
    SHX15_2 = NetworkCreateSynchronisedScene
    SHX16_2 = SHX7_2.x
    SHX17_2 = SHX7_2.y
    SHX18_2 = SHX7_2.z
    SHX19_2 = SHX5_2.x
    SHX20_2 = SHX5_2.y
    SHX21_2 = SHX5_2.z
    SHX22_2 = 2
    SHX23_2 = true
    SHX24_2 = true
    SHX25_2 = 1.0
    SHX26_2 = 0.0
    SHX27_2 = 1.0
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
    SHX10_2[SHX14_2] = SHX15_2
    SHX16_2 = SHX101_1
    SHX16_2 = #SHX16_2
    SHX17_2 = SHX16_2 + 1
    SHX16_2 = SHX101_1
    SHX16_2[SHX17_2] = SHX15_2
  end
  SHX11_2 = PlayerPedId
  SHX11_2 = SHX11_2()
  SHX12_2 = NetworkAddPedToSynchronisedScene
  SHX13_2 = SHX11_2
  SHX14_2 = SHX10_2[1]
  SHX15_2 = SHX103_1
  SHX16_2 = SHX104_1
  SHX17_2 = 1.0
  SHX18_2 = 1.0
  SHX19_2 = 1
  SHX20_2 = 0
  SHX21_2 = 1.0
  SHX22_2 = 64
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX12_2 = 1
  SHX13_2 = pairs
  SHX14_2 = SHX105_1
  SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX13_2(SHX14_2)
  for SHX17_2, SHX18_2 in SHX13_2, SHX14_2, SHX15_2, SHX16_2 do
    SHX19_2 = math
    SHX19_2 = SHX19_2.ceil
    SHX20_2 = SHX12_2 / 3
    SHX19_2 = SHX19_2(SHX20_2)
    SHX19_2 = SHX10_2[SHX19_2]
    SHX20_2 = SHX102_1
    SHX20_2 = SHX20_2[SHX17_2]
    if SHX20_2 then
      SHX21_2 = NetworkAddEntityToSynchronisedScene
      SHX22_2 = SHX20_2
      SHX23_2 = SHX19_2
      SHX24_2 = SHX103_1
      SHX25_2 = SHX18_2
      SHX26_2 = 1.0
      SHX27_2 = 1.0
      SHX28_2 = 1
      SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      SHX21_2 = SetEntityVisible
      SHX22_2 = SHX20_2
      SHX23_2 = true
      SHX24_2 = false
      SHX21_2(SHX22_2, SHX23_2, SHX24_2)
      SHX12_2 = SHX12_2 + 1
    end
  end
  SHX13_2 = 1
  SHX14_2 = #SHX10_2
  SHX15_2 = 1
  for SHX16_2 = SHX13_2, SHX14_2, SHX15_2 do
    SHX17_2 = NetworkStartSynchronisedScene
    SHX18_2 = SHX10_2[SHX16_2]
    SHX17_2(SHX18_2)
  end
  SHX13_2 = CreateThread
  function SHX14_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    while true do
      SHX0_3 = SHX100_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = PlayerPedId
      SHX0_3 = SHX0_3()
      if 0 ~= SHX0_3 then
        SHX1_3 = SetEntityLocallyInvisible
        SHX2_3 = SHX0_3
        SHX1_3(SHX2_3)
      end
      SHX1_3 = pairs
      SHX2_3 = SHX102_1
      SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
      for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
        if 0 ~= SHX6_3 then
          SHX7_3 = DoesEntityExist
          SHX8_3 = SHX6_3
          SHX7_3 = SHX7_3(SHX8_3)
          if SHX7_3 then
            SHX7_3 = SetEntityLocallyInvisible
            SHX8_3 = SHX6_3
            SHX7_3(SHX8_3)
          end
        end
      end
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
  end
  SHX13_2(SHX14_2)
  SHX13_2 = CreateThread
  function SHX14_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX1_2
    SHX1_3 = SHX0_2
    SHX2_3 = SHX2_2
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX13_2(SHX14_2)
end
function SHX189_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX188_1
  SHX2_2 = SHX0_2
  SHX3_2 = SHX187_1
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX190_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX188_1
  SHX2_2 = SHX0_2
  SHX3_2 = SHX186_1
  SHX1_2(SHX2_2, SHX3_2)
end
SHX191_1 = CMG
function SHX192_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX100_1
  if SHX0_2 then
    SHX0_2 = SHX3_1.active
    if not SHX0_2 then
      SHX0_2 = false
      SHX100_1 = SHX0_2
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.setCanAnim
      SHX1_2 = true
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX100_1
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX184_1
  SHX1_2 = 6.0
  SHX0_2, SHX1_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~No weed workbench placed."
    SHX2_2(SHX3_2)
    return
  end
  if SHX1_2 > 6.0 then
    SHX2_2 = notify
    SHX3_2 = "~r~No weed workbench nearby."
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = SHX189_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
end
SHX191_1.processWeedBud = SHX192_1
SHX191_1 = CMG
function SHX192_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX100_1
  if SHX0_2 then
    SHX0_2 = SHX3_1.active
    if not SHX0_2 then
      SHX0_2 = false
      SHX100_1 = SHX0_2
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.setCanAnim
      SHX1_2 = true
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX100_1
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX184_1
  SHX1_2 = 6.0
  SHX0_2, SHX1_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~No weed workbench placed."
    SHX2_2(SHX3_2)
    return
  end
  if SHX1_2 > 6.0 then
    SHX2_2 = notify
    SHX3_2 = "~r~No weed workbench nearby."
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = SHX190_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
end
SHX191_1.processWeedBag = SHX192_1
SHX191_1 = RegisterNetEvent
SHX192_1 = "460cc0c926"
function SHX193_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = SHX10_1.objects
  if SHX2_2 then
    SHX2_2 = SHX10_1.objects
    SHX2_2 = SHX2_2[SHX0_2]
  end
  if SHX2_2 then
    SHX3_2 = SHX2_2.itemId
    if "weed_workbench" == SHX3_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX3_2 = SHX2_2.object
  if SHX3_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2.object
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = SetEntityCollision
      SHX4_2 = SHX2_2.object
      SHX5_2 = SHX1_2
      SHX6_2 = SHX1_2
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    end
  end
  SHX3_2 = ipairs
  SHX4_2 = SHX2_2.extraObjects
  if not SHX4_2 then
    SHX4_2 = {}
  end
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if SHX8_2 then
      SHX9_2 = DoesEntityExist
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if SHX9_2 then
        SHX9_2 = SetEntityCollision
        SHX10_2 = SHX8_2
        SHX11_2 = SHX1_2
        SHX12_2 = SHX1_2
        SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      end
    end
  end
end
SHX191_1(SHX192_1, SHX193_1)
function SHX191_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX70_1
  if SHX0_2 then
    SHX0_2 = SHX80_1
    SHX0_2()
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeNamedPropMarker
  SHX1_2 = SHX9_1
  SHX0_2(SHX1_2)
  SHX0_2 = SHX10_1.areas
  SHX0_2 = #SHX0_2
  SHX1_2 = 1
  SHX2_2 = -1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.removeArea
    SHX5_2 = SHX10_1.areas
    SHX5_2 = SHX5_2[SHX3_2]
    SHX4_2(SHX5_2)
    SHX4_2 = table
    SHX4_2 = SHX4_2.remove
    SHX5_2 = SHX10_1.areas
    SHX6_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "trapnet_delivery_box_pickup"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX21_1
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX21_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = DeleteEntity
      SHX1_2 = SHX21_1
      SHX0_2(SHX1_2)
      SHX0_2 = nil
      SHX21_1 = SHX0_2
    end
  end
  SHX0_2 = SHX10_1.shellObject
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX10_1.shellObject
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = DeleteEntity
      SHX1_2 = SHX10_1.shellObject
      SHX0_2(SHX1_2)
    end
  end
  SHX10_1.shellObject = nil
  SHX0_2 = pairs
  SHX1_2 = SHX10_1.objects
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.extraObjects
    if SHX6_2 then
      SHX6_2 = SHX52_1
      SHX7_2 = SHX5_2.extraObjects
      SHX6_2(SHX7_2)
    end
    SHX6_2 = SHX5_2.object
    if SHX6_2 then
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX5_2.object
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        SHX6_2 = DeleteEntity
        SHX7_2 = SHX5_2.object
        SHX6_2(SHX7_2)
      end
    end
  end
  SHX0_2 = {}
  SHX10_1.objects = SHX0_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX86_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX0_2
    SHX9_2 = SHX5_2
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX87_1
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX10_1.warehouseShellAnchor = nil
end
function SHX192_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if SHX0_2 and not (SHX0_2 <= 0) then
    SHX1_2 = SHX10_1.lastUsedWarehouseId
    if SHX1_2 == SHX0_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX10_1.lastUsedWarehouseId = nil
  SHX10_1.warehouseLoadInProgress = false
  SHX1_2 = SHX191_1
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setHotBarEnabled
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "3838624753"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX193_1 = Citizen
SHX193_1 = SHX193_1.CreateThread
function SHX194_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = 500
    SHX0_2(SHX1_2)
    SHX0_2 = SHX10_1.warehouseLoadInProgress
    if not SHX0_2 then
      SHX0_2 = SHX10_1.lastUsedWarehouseId
      SHX1_2 = SHX10_1.shellObject
      if SHX0_2 and SHX1_2 then
        SHX2_2 = DoesEntityExist
        SHX3_2 = SHX1_2
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 then
          SHX2_2 = GetEntityCoords
          SHX3_2 = PlayerPedId
          SHX3_2, SHX4_2, SHX5_2 = SHX3_2()
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
          SHX3_2 = GetEntityCoords
          SHX4_2 = SHX1_2
          SHX3_2 = SHX3_2(SHX4_2)
          SHX4_2 = SHX2_2 - SHX3_2
          SHX4_2 = #SHX4_2
          SHX5_2 = SHX7_1
          if SHX4_2 > SHX5_2 then
            SHX4_2 = SHX192_1
            SHX5_2 = SHX0_2
            SHX4_2(SHX5_2)
          end
        end
      end
    end
  end
end
SHX193_1(SHX194_1)
SHX193_1 = RegisterNetEvent
SHX194_1 = "8aa91132f1"
function SHX195_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2, SHX43_2, SHX44_2
  SHX5_2 = SHX10_1.warehouseLoadInProgress
  if SHX5_2 then
    return
  end
  SHX5_2 = SHX10_1.lastUsedWarehouseId
  if SHX5_2 == SHX0_2 then
    SHX5_2 = SHX10_1.shellObject
    if SHX5_2 then
      SHX5_2 = DoesEntityExist
      SHX6_2 = SHX10_1.shellObject
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        return
      end
    end
  end
  SHX5_2 = SHX191_1
  SHX5_2()
  SHX10_1.warehouseLoadInProgress = true
  SHX5_2 = SHX0_1.warehouses
  SHX5_2 = SHX5_2[SHX1_2]
  if not SHX5_2 then
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.warn
    SHX7_2 = "Invalid warehouseName: "
    SHX8_2 = tostring
    SHX9_2 = SHX1_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX7_2 = SHX7_2 .. SHX8_2
    SHX6_2(SHX7_2)
    SHX10_1.warehouseLoadInProgress = false
    return
  end
  SHX6_2 = SHX5_1.warehousesOwned
  if SHX6_2 then
    SHX6_2 = SHX5_1.warehousesOwned
    SHX6_2 = SHX6_2[SHX0_2]
    if SHX6_2 then
      goto SHX_LABEL_46
    end
  end
  SHX6_2 = SHX5_1.warehouseKeys
  if SHX6_2 then
    SHX6_2 = SHX5_1.warehouseKeys
    SHX6_2 = SHX6_2[SHX0_2]
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_46:: outside nested blocks until all 'goto SHX_LABEL_46' can see it
  ::SHX_LABEL_46::
  if SHX4_2 then
    SHX7_2 = tonumber
    SHX8_2 = SHX4_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      goto SHX_LABEL_64
    end
  end
  if SHX6_2 then
    SHX7_2 = tonumber
    SHX8_2 = SHX6_2.locationIndex
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      goto SHX_LABEL_64
    end
    SHX7_2 = 0
    if SHX7_2 then
      goto SHX_LABEL_64
    end
  end
  SHX7_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
  ::SHX_LABEL_64::
  if SHX7_2 < 1 then
    SHX7_2 = 1
  end
  SHX8_2 = SHX12_1
  SHX9_2 = SHX1_2
  SHX10_2 = SHX7_2
  SHX8_2, SHX9_2 = SHX8_2(SHX9_2, SHX10_2)
  if not SHX8_2 or not SHX9_2 then
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.warn
    SHX11_2 = "No coords for warehouse "
    SHX12_2 = tostring
    SHX13_2 = SHX1_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX13_2 = " location "
    SHX14_2 = tostring
    SHX15_2 = SHX7_2
    SHX14_2 = SHX14_2(SHX15_2)
    SHX11_2 = SHX11_2 .. SHX12_2 .. SHX13_2 .. SHX14_2
    SHX10_2(SHX11_2)
    SHX10_1.warehouseLoadInProgress = false
    return
  end
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.loadModel
  SHX11_2 = SHX1_2
  SHX10_2 = SHX10_2(SHX11_2)
  if not SHX10_2 then
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.warn
    SHX12_2 = "Failed to load warehouse shell model: "
    SHX13_2 = SHX1_2
    SHX12_2 = SHX12_2 .. SHX13_2
    SHX11_2(SHX12_2)
    SHX10_1.warehouseLoadInProgress = false
    return
  end
  SHX11_2 = DoScreenFadeOut
  SHX12_2 = 500
  SHX11_2(SHX12_2)
  SHX11_2 = SHX9_2.z
  SHX11_2 = SHX11_2 - 100.0
  SHX12_2 = CreateObject
  SHX13_2 = SHX10_2
  SHX14_2 = SHX9_2.x
  SHX15_2 = SHX9_2.y
  SHX16_2 = SHX11_2
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = false
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX10_1.shellObject = SHX12_2
  SHX12_2 = FreezeEntityPosition
  SHX13_2 = SHX10_1.shellObject
  SHX14_2 = true
  SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = SetEntityHeading
  SHX13_2 = SHX10_1.shellObject
  SHX14_2 = 0.0
  SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = GetEntityCoords
  SHX13_2 = SHX10_1.shellObject
  SHX12_2 = SHX12_2(SHX13_2)
  SHX10_1.warehouseShellAnchor = SHX12_2
  SHX12_2 = GetEntityCoords
  SHX13_2 = SHX10_1.shellObject
  SHX12_2 = SHX12_2(SHX13_2)
  SHX13_2 = SHX5_2.doorOffset
  SHX12_2 = SHX12_2 + SHX13_2
  SHX13_2 = vector3
  SHX14_2 = SHX12_2.x
  SHX15_2 = SHX12_2.y
  SHX16_2 = SHX12_2.z
  SHX16_2 = SHX16_2 + 1.0
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
  SHX12_2 = SHX13_2
  SHX13_2 = tCMG
  SHX13_2 = SHX13_2.removeArea
  SHX14_2 = SHX8_1
  SHX13_2(SHX14_2)
  SHX13_2 = tCMG
  SHX13_2 = SHX13_2.removeNamedPropMarker
  SHX14_2 = SHX9_1
  SHX13_2(SHX14_2)
  SHX13_2 = SHX10_1.areas
  SHX13_2 = #SHX13_2
  SHX14_2 = 1
  SHX15_2 = -1
  for SHX16_2 = SHX13_2, SHX14_2, SHX15_2 do
    SHX17_2 = SHX10_1.areas
    SHX17_2 = SHX17_2[SHX16_2]
    SHX18_2 = SHX8_1
    if SHX17_2 == SHX18_2 then
      SHX17_2 = table
      SHX17_2 = SHX17_2.remove
      SHX18_2 = SHX10_1.areas
      SHX19_2 = SHX16_2
      SHX17_2(SHX18_2, SHX19_2)
      break
    end
  end
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX14_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX15_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.isPurge
    SHX0_3 = SHX0_3()
    if not SHX0_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.isPlayerInPrison
      SHX0_3 = SHX0_3()
      if not SHX0_3 then
        SHX0_3 = IsControlJustPressed
        SHX1_3 = 1
        SHX2_3 = 23
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = DoScreenFadeOut
          SHX1_3 = 500
          SHX0_3(SHX1_3)
          while true do
            SHX0_3 = IsScreenFadedOut
            SHX0_3 = SHX0_3()
            if SHX0_3 then
              break
            end
            SHX0_3 = Wait
            SHX1_3 = 0
            SHX0_3(SHX1_3)
          end
          SHX0_3 = PlayerPedId
          SHX0_3 = SHX0_3()
          SHX1_3 = SetEntityCoordsNoOffset
          SHX2_3 = SHX0_3
          SHX3_3 = SHX9_2.x
          SHX4_3 = SHX9_2.y
          SHX5_3 = SHX9_2.z
          SHX6_3 = false
          SHX7_3 = false
          SHX8_3 = false
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          SHX1_3 = SetEntityHeading
          SHX2_3 = SHX0_3
          SHX3_3 = 0.0
          SHX1_3(SHX2_3, SHX3_3)
          SHX1_3 = SetEntityVisible
          SHX2_3 = SHX0_3
          SHX3_3 = true
          SHX4_3 = false
          SHX1_3(SHX2_3, SHX3_3, SHX4_3)
          SHX1_3 = CMG
          SHX1_3 = SHX1_3.setHotBarEnabled
          SHX2_3 = false
          SHX1_3(SHX2_3)
          SHX10_1.lastUsedWarehouseId = nil
          SHX1_3 = SHX191_1
          SHX1_3()
          SHX1_3 = TriggerServerEvent
          SHX2_3 = "3838624753"
          SHX3_3 = SHX0_2
          SHX1_3(SHX2_3, SHX3_3)
          SHX1_3 = DoScreenFadeIn
          SHX2_3 = 500
          SHX1_3(SHX2_3)
          while true do
            SHX1_3 = IsScreenFadedIn
            SHX1_3 = SHX1_3()
            if SHX1_3 then
              break
            end
            SHX1_3 = Wait
            SHX2_3 = 0
            SHX1_3(SHX2_3)
          end
        end
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.DrawText3D
        SHX1_3 = SHX12_2
        SHX2_3 = "Press [F] to exit warehouse"
        SHX3_3 = 0.3
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      end
    end
  end
  SHX16_2 = CMG
  SHX16_2 = SHX16_2.createArea
  SHX17_2 = SHX8_1
  SHX18_2 = SHX12_2
  SHX19_2 = 1.5
  SHX20_2 = 6
  SHX21_2 = SHX14_2
  SHX22_2 = SHX13_2
  SHX23_2 = SHX15_2
  SHX24_2 = {}
  SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX16_2 = table
  SHX16_2 = SHX16_2.insert
  SHX17_2 = SHX10_1.areas
  SHX18_2 = SHX8_1
  SHX16_2(SHX17_2, SHX18_2)
  SHX16_2 = tCMG
  SHX16_2 = SHX16_2.setNamedPropMarker
  SHX17_2 = SHX9_1
  SHX18_2 = "bzzz_marker_home_red_anim"
  SHX19_2 = SHX12_2.x
  SHX20_2 = SHX12_2.y
  SHX21_2 = SHX12_2.z
  SHX22_2 = 20.0
  SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX16_2 = Wait
  SHX17_2 = 500
  SHX16_2(SHX17_2)
  SHX16_2 = PlayerPedId
  SHX16_2 = SHX16_2()
  SHX17_2 = GetEntityCoords
  SHX18_2 = SHX10_1.shellObject
  SHX17_2 = SHX17_2(SHX18_2)
  SHX18_2 = SHX5_2.doorOffset
  SHX17_2 = SHX17_2 + SHX18_2
  SHX18_2 = vector3
  SHX19_2 = SHX17_2.x
  SHX20_2 = SHX17_2.y
  SHX21_2 = SHX17_2.z
  SHX21_2 = SHX21_2 + 1.0
  SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2)
  SHX17_2 = SHX18_2
  SHX18_2 = SetEntityCoordsNoOffset
  SHX19_2 = SHX16_2
  SHX20_2 = SHX17_2.x
  SHX21_2 = SHX17_2.y
  SHX22_2 = SHX17_2.z
  SHX23_2 = false
  SHX24_2 = false
  SHX25_2 = false
  SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
  SHX18_2 = SetEntityHeading
  SHX19_2 = SHX16_2
  SHX20_2 = SHX5_2.doorHeading
  SHX18_2(SHX19_2, SHX20_2)
  SHX18_2 = DoScreenFadeIn
  SHX19_2 = 500
  SHX18_2(SHX19_2)
  SHX18_2 = CMG
  SHX18_2 = SHX18_2.getCurrentQuestStepId
  SHX18_2 = SHX18_2()
  if "go_to_drug_den" == SHX18_2 or "go_back_to_drug_den" == SHX18_2 then
    SHX19_2 = CMG
    SHX19_2 = SHX19_2.addJobTutorialProgress
    SHX20_2 = SHX18_2
    SHX21_2 = 1
    SHX19_2(SHX20_2, SHX21_2)
  end
  SHX10_1.lastUsedWarehouseId = SHX0_2
  SHX19_2 = CMG
  SHX19_2 = SHX19_2.setHotBarEnabled
  SHX20_2 = true
  SHX19_2(SHX20_2)
  SHX19_2 = GetCloudTimeAsInt
  SHX19_2 = SHX19_2()
  SHX20_2 = GetGameTimer
  SHX20_2 = SHX20_2()
  SHX21_2 = pairs
  SHX22_2 = SHX2_2
  SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX21_2(SHX22_2)
  for SHX25_2, SHX26_2 in SHX21_2, SHX22_2, SHX23_2, SHX24_2 do
    SHX27_2 = type
    SHX28_2 = SHX26_2
    SHX27_2 = SHX27_2(SHX28_2)
    if "table" == SHX27_2 then
      SHX27_2 = SHX26_2.itemId
      if SHX27_2 then
        SHX27_2 = SHX26_2.position
        if SHX27_2 then
          SHX27_2 = SHX0_1.items
          SHX28_2 = SHX26_2.itemId
          SHX27_2 = SHX27_2[SHX28_2]
          if SHX27_2 then
            SHX28_2 = SHX27_2.model
            if SHX28_2 then
              SHX28_2 = CMG
              SHX28_2 = SHX28_2.loadModel
              SHX29_2 = SHX27_2.model
              SHX28_2 = SHX28_2(SHX29_2)
              if SHX28_2 then
                SHX29_2 = SHX26_2.position
                SHX30_2 = SHX26_2.heading
                if not SHX30_2 then
                  SHX30_2 = 0.0
                end
                SHX31_2 = CreateObject
                SHX32_2 = SHX28_2
                SHX33_2 = SHX29_2.x
                SHX34_2 = SHX29_2.y
                SHX35_2 = SHX29_2.z
                SHX36_2 = false
                SHX37_2 = false
                SHX38_2 = false
                SHX31_2 = SHX31_2(SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2)
                SHX32_2 = SetEntityHeading
                SHX33_2 = SHX31_2
                SHX34_2 = SHX30_2
                SHX32_2(SHX33_2, SHX34_2)
                SHX32_2 = PlaceObjectOnGroundProperly
                SHX33_2 = SHX31_2
                SHX32_2(SHX33_2)
                SHX32_2 = SetEntityCollision
                SHX33_2 = SHX31_2
                SHX34_2 = true
                SHX35_2 = true
                SHX32_2(SHX33_2, SHX34_2, SHX35_2)
                SHX32_2 = ResetEntityAlpha
                SHX33_2 = SHX31_2
                SHX32_2(SHX33_2)
                SHX32_2 = FreezeEntityPosition
                SHX33_2 = SHX31_2
                SHX34_2 = true
                SHX32_2(SHX33_2, SHX34_2)
                SHX32_2 = SHX30_2
                SHX33_2 = SHX27_2.flipHeading
                if SHX33_2 then
                  SHX33_2 = SHX30_2 - 180.0
                  SHX32_2 = SHX33_2 % 360.0
                end
                SHX33_2 = SHX53_1
                SHX34_2 = SHX31_2
                SHX35_2 = SHX27_2
                SHX36_2 = SHX32_2
                SHX33_2 = SHX33_2(SHX34_2, SHX35_2, SHX36_2)
                SHX34_2 = {}
                SHX34_2.object = SHX31_2
                SHX35_2 = SHX26_2.itemId
                SHX34_2.itemId = SHX35_2
                SHX34_2.extraObjects = SHX33_2
                SHX35_2 = SHX26_2.itemId
                if "shelf" == SHX35_2 then
                  SHX35_2 = SHX26_2.slots
                  SHX34_2.shelfSlots = SHX35_2
                end
                SHX35_2 = SHX10_1.objects
                SHX35_2[SHX25_2] = SHX34_2
                SHX35_2 = SHX26_2.itemId
                if "shelf" == SHX35_2 then
                  SHX35_2 = SHX94_1
                  SHX36_2 = SHX25_2
                  SHX37_2 = SHX26_2.slots
                  SHX35_2(SHX36_2, SHX37_2)
                end
                SHX35_2 = SHX26_2.plantedAt
                if SHX35_2 then
                  SHX35_2 = math
                  SHX35_2 = SHX35_2.max
                  SHX36_2 = 0
                  SHX37_2 = SHX26_2.plantedAt
                  SHX37_2 = SHX19_2 - SHX37_2
                  SHX37_2 = SHX37_2 * 1000
                  SHX35_2 = SHX35_2(SHX36_2, SHX37_2)
                  SHX36_2 = SHX10_1.objects
                  SHX36_2 = SHX36_2[SHX25_2]
                  SHX37_2 = SHX20_2 - SHX35_2
                  SHX36_2.plantedAt = SHX37_2
                  SHX36_2 = SHX26_2.growthDurationMs
                  SHX37_2 = SHX10_1.objects
                  SHX37_2 = SHX37_2[SHX25_2]
                  SHX38_2 = SHX36_2 or SHX38_2
                  if not (SHX36_2 and SHX36_2 > 0) or not SHX36_2 then
                    SHX38_2 = SHX0_1.plantGrowthDurationMs
                  end
                  SHX37_2.durationMs = SHX38_2
                  SHX37_2 = SHX10_1.objects
                  SHX37_2 = SHX37_2[SHX25_2]
                  SHX38_2 = SHX26_2.totalPausedMs
                  if not SHX38_2 then
                    SHX38_2 = 0
                  end
                  SHX37_2.totalPausedMs = SHX38_2
                  SHX37_2 = SHX26_2.pausedAt
                  if SHX37_2 then
                    SHX37_2 = math
                    SHX37_2 = SHX37_2.max
                    SHX38_2 = 0
                    SHX39_2 = SHX26_2.pausedAt
                    SHX39_2 = SHX19_2 - SHX39_2
                    SHX39_2 = SHX39_2 * 1000
                    SHX37_2 = SHX37_2(SHX38_2, SHX39_2)
                    SHX38_2 = SHX10_1.objects
                    SHX38_2 = SHX38_2[SHX25_2]
                    SHX39_2 = SHX20_2 - SHX37_2
                    SHX38_2.pausedAt = SHX39_2
                  else
                    SHX37_2 = SHX10_1.objects
                    SHX37_2 = SHX37_2[SHX25_2]
                    SHX37_2.pausedAt = nil
                  end
                  SHX37_2 = 0.0
                  SHX38_2 = SHX26_2.lastWateredAt
                  if SHX38_2 then
                    SHX38_2 = math
                    SHX38_2 = SHX38_2.max
                    SHX39_2 = 0
                    SHX40_2 = SHX26_2.lastWateredAt
                    SHX40_2 = SHX19_2 - SHX40_2
                    SHX40_2 = SHX40_2 * 1000
                    SHX38_2 = SHX38_2(SHX39_2, SHX40_2)
                    SHX39_2 = SHX0_1.hydrationDrainDurationMs
                    SHX39_2 = SHX38_2 / SHX39_2
                    SHX40_2 = 1.0
                    SHX37_2 = SHX40_2 - SHX39_2
                  end
                  SHX38_2 = SHX10_1.objects
                  SHX38_2 = SHX38_2[SHX25_2]
                  SHX39_2 = math
                  SHX39_2 = SHX39_2.max
                  SHX40_2 = 0.0
                  SHX41_2 = math
                  SHX41_2 = SHX41_2.min
                  SHX42_2 = 1.0
                  SHX43_2 = SHX37_2
                  SHX41_2, SHX42_2, SHX43_2, SHX44_2 = SHX41_2(SHX42_2, SHX43_2)
                  SHX39_2 = SHX39_2(SHX40_2, SHX41_2, SHX42_2, SHX43_2, SHX44_2)
                  SHX38_2.hydration = SHX39_2
                  SHX38_2 = SHX10_1.objects
                  SHX38_2 = SHX38_2[SHX25_2]
                  SHX38_2.lastHydrationTick = SHX20_2
                end
                SHX35_2 = SHX26_2.stage
                if SHX35_2 then
                  SHX35_2 = TriggerEvent
                  SHX36_2 = "a0cb4df825"
                  SHX37_2 = SHX25_2
                  SHX38_2 = SHX26_2.stage
                  SHX35_2(SHX36_2, SHX37_2, SHX38_2)
                end
                SHX35_2 = CMG
                SHX35_2 = SHX35_2.createArea
                SHX36_2 = SHX25_2
                SHX37_2 = vector3
                SHX38_2 = SHX29_2.x
                SHX39_2 = SHX29_2.y
                SHX40_2 = SHX29_2.z
                SHX37_2 = SHX37_2(SHX38_2, SHX39_2, SHX40_2)
                SHX38_2 = SHX84_1
                SHX39_2 = SHX26_2.itemId
                SHX38_2 = SHX38_2(SHX39_2)
                SHX39_2 = SHX0_1.itemInteractAreaHeight
                function SHX40_2()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_3, SHX1_3
                end
                function SHX41_2()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_3, SHX1_3
                end
                function SHX42_2(SHX0_3)
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
                  SHX1_3 = SHX85_1
                  SHX2_3 = SHX0_3
                  SHX3_3 = vector3
                  SHX4_3 = SHX29_2.x
                  SHX5_3 = SHX29_2.y
                  SHX6_3 = SHX29_2.z
                  SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3)
                  SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
                end
                SHX43_2 = {}
                SHX43_2.itemInfo = SHX27_2
                SHX44_2 = SHX26_2.itemId
                SHX43_2.itemId = SHX44_2
                SHX43_2.plantId = SHX25_2
                SHX35_2(SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2, SHX43_2)
                SHX35_2 = table
                SHX35_2 = SHX35_2.insert
                SHX36_2 = SHX10_1.areas
                SHX37_2 = SHX25_2
                SHX35_2(SHX36_2, SHX37_2)
              end
            end
          end
        end
      end
    end
  end
  SHX10_1.warehouseLoadInProgress = false
end
SHX193_1(SHX194_1, SHX195_1)
SHX193_1 = RegisterNetEvent
SHX194_1 = "f410c40735"
function SHX195_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.inTrappingWarehouse
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = SHX10_1.warehouseLoadInProgress
    if not SHX0_2 then
      goto SHX_LABEL_10
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX0_2 = SHX191_1
  SHX0_2()
  SHX10_1.lastUsedWarehouseId = nil
  SHX10_1.warehouseLoadInProgress = false
end
SHX193_1(SHX194_1, SHX195_1)
SHX193_1 = CMG
function SHX194_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX10_1.shellObject
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX10_1.shellObject
    SHX0_2 = SHX0_2(SHX1_2)
  end
  return SHX0_2
end
SHX193_1.inTrappingWarehouse = SHX194_1
SHX193_1 = CMG
function SHX194_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if not SHX0_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = SHX10_1.objects
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX1_2.itemId
    if "shelf" == SHX2_2 then
      goto SHX_LABEL_17
    end
    SHX2_2 = SHX1_2.itemId
    if "garden_hose" == SHX2_2 then
      goto SHX_LABEL_17
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isPlayerInClientArea
  SHX3_2 = SHX0_2
  return SHX2_2(SHX3_2)
end
SHX193_1.isTrapperShelfRadialSuppressedForPlantId = SHX194_1
SHX193_1 = CMG
SHX194_1 = "getTrapperWarehouseShapeTestPickupPlantId"
function SHX195_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  SHX1_2 = nil
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = GetEntityType
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 3 ~= SHX1_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.inTrappingWarehouse
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = pairs
  SHX2_2 = SHX10_1.objects
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX6_2 then
      SHX7_2 = SHX6_2.itemId
      if SHX7_2 then
        SHX7_2 = SHX6_2.object
        SHX7_2 = SHX7_2 == SHX0_2
        if not SHX7_2 then
          SHX8_2 = SHX6_2.extraObjects
          if SHX8_2 then
            SHX8_2 = ipairs
            SHX9_2 = SHX6_2.extraObjects
            SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
            for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
              SHX14_2 = type
              SHX15_2 = SHX13_2
              SHX14_2 = SHX14_2(SHX15_2)
              if "table" == SHX14_2 then
                SHX14_2 = SHX13_2.ent
                if SHX14_2 or SHX13_2 then
                  goto SHX_LABEL_60
                  SHX14_2 = SHX13_2 or SHX14_2
                end
              end
              SHX14_2 = SHX13_2
              -- [FIX IF ERROR] Move ::SHX_LABEL_60:: outside nested blocks until all 'goto SHX_LABEL_60' can see it
              ::SHX_LABEL_60::
              if SHX14_2 == SHX0_2 then
                SHX7_2 = true
                break
              end
            end
          end
        end
        if SHX7_2 then
          SHX8_2 = SHX0_1.items
          SHX9_2 = SHX6_2.itemId
          SHX8_2 = SHX8_2[SHX9_2]
          if SHX8_2 then
            SHX9_2 = SHX8_2.interact
            if SHX9_2 then
              goto SHX_LABEL_79
            end
          end
          SHX9_2 = nil
          return SHX9_2
          -- [FIX IF ERROR] Move ::SHX_LABEL_79:: outside nested blocks until all 'goto SHX_LABEL_79' can see it
          ::SHX_LABEL_79::
          SHX9_2 = SHX8_2.placeable
          if true ~= SHX9_2 then
            SHX9_2 = nil
            return SHX9_2
          end
          SHX9_2 = SHX6_2.itemId
          if "shelf" == SHX9_2 then
            return SHX5_2
          end
          SHX9_2 = SHX6_2.itemId
          if "garden_hose" == SHX9_2 then
            return SHX5_2
          end
          SHX9_2 = SHX8_2.interact
          SHX9_2 = SHX9_2.no_item_needed
          if SHX9_2 then
            SHX9_2 = nil
            return SHX9_2
          end
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.getCurrentHotbarItem
          SHX9_2 = SHX9_2()
          if not SHX9_2 then
            return SHX5_2
          end
          SHX10_2 = SHX8_2.interact
          SHX11_2 = SHX9_2.icon
          SHX10_2 = SHX10_2[SHX11_2]
          if not SHX10_2 then
            SHX11_2 = SHX9_2.icon
            if SHX11_2 then
              SHX11_2 = string
              SHX11_2 = SHX11_2.match
              SHX12_2 = SHX9_2.icon
              SHX13_2 = "^weed_bud_%d+$"
              SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
              if SHX11_2 then
                SHX11_2 = SHX8_2.interact
                SHX10_2 = SHX11_2.weed_bud
              end
            end
          end
          if not SHX10_2 then
            SHX11_2 = SHX9_2.icon
            if SHX11_2 then
              SHX11_2 = string
              SHX11_2 = SHX11_2.match
              SHX12_2 = SHX9_2.icon
              SHX13_2 = "^weed_processed_bud_%d+$"
              SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
              if SHX11_2 then
                SHX11_2 = SHX8_2.interact
                SHX10_2 = SHX11_2.weed_processed_bud
              end
            end
          end
          if not SHX10_2 then
            return SHX5_2
          end
          SHX11_2 = false
          SHX12_2 = SHX10_2.label
          if "Harvest Plant" == SHX12_2 then
            SHX12_2 = SHX10_1.objects
            SHX12_2 = SHX12_2[SHX5_2]
            SHX11_2 = SHX12_2 or SHX11_2
            if SHX12_2 then
              SHX13_2 = SHX12_2.growthPercent
              SHX11_2 = SHX13_2 or SHX11_2
              if SHX13_2 then
                SHX13_2 = SHX12_2.growthPercent
                SHX11_2 = SHX13_2 >= 100
              end
            end
          else
            SHX11_2 = true
          end
          if SHX11_2 then
            SHX12_2 = nil
            return SHX12_2
          end
          return SHX5_2
        end
      end
    end
  end
  SHX1_2 = nil
  return SHX1_2
end
SHX193_1[SHX194_1] = SHX195_1
SHX193_1 = {}
SHX194_1 = pairs
SHX195_1 = SHX0_1.NPCs
SHX194_1, SHX195_1, SHX196_1, SHX197_1 = SHX194_1(SHX195_1)
for SHX198_1 in SHX194_1, SHX195_1, SHX196_1, SHX197_1 do
  SHX199_1 = #SHX193_1
  SHX199_1 = SHX199_1 + 1
  SHX193_1[SHX199_1] = SHX198_1
end
SHX194_1 = table
SHX194_1 = SHX194_1.sort
SHX195_1 = SHX193_1
function SHX196_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = tostring
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.lower
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = tostring
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.lower
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2 = SHX2_2 < SHX3_2
  return SHX2_2
end
SHX194_1(SHX195_1, SHX196_1)
SHX194_1 = {}
SHX195_1 = CMG
SHX195_1 = SHX195_1.registerDevMenuItems
SHX196_1 = "Jobs/Trapper/TrapNet buyer peds"
function SHX197_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "Refresh positions (server)"
  SHX2_2 = "Bulk CMG.TriggerServerCallback"
  SHX3_2 = {}
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.TriggerServerCallback
      SHX4_3 = "73b8cc73b6"
      SHX3_3 = SHX3_3(SHX4_3)
      if not SHX3_3 then
        SHX3_3 = {}
      end
      SHX194_1 = SHX3_3
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "~y~Teleport uses server ped coords only"
  SHX0_2(SHX1_2)
  SHX0_2 = ipairs
  SHX1_2 = SHX193_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX0_1.NPCs
    SHX6_2 = SHX6_2[SHX5_2]
    if SHX6_2 then
      SHX7_2 = SHX6_2.name
      if SHX7_2 then
        SHX7_2 = string
        SHX7_2 = SHX7_2.format
        SHX8_2 = "%s ~c~(%s)"
        SHX9_2 = SHX6_2.name
        SHX10_2 = SHX5_2
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
        if SHX7_2 then
          goto SHX_LABEL_36
        end
      end
    end
    SHX7_2 = tostring
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    -- [FIX IF ERROR] Move ::SHX_LABEL_36:: outside nested blocks until all 'goto SHX_LABEL_36' can see it
    ::SHX_LABEL_36::
    SHX8_2 = SHX194_1
    SHX8_2 = SHX8_2[SHX5_2]
    if SHX8_2 then
      SHX9_2 = string
      SHX9_2 = SHX9_2.format
      SHX10_2 = "%.2f, %.2f, %.2f"
      SHX11_2 = SHX8_2.x
      SHX12_2 = SHX8_2.y
      SHX13_2 = SHX8_2.z
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      if SHX9_2 then
        goto SHX_LABEL_50
      end
    end
    SHX9_2 = "~c~refresh or missing on server"
    -- [FIX IF ERROR] Move ::SHX_LABEL_50:: outside nested blocks until all 'goto SHX_LABEL_50' can see it
    ::SHX_LABEL_50::
    SHX10_2 = RageUI
    SHX10_2 = SHX10_2.ButtonWithStyle
    SHX11_2 = SHX7_2
    SHX12_2 = SHX9_2
    SHX13_2 = {}
    SHX14_2 = true
    function SHX15_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
      if SHX2_3 then
        SHX3_3 = CMG
        SHX3_3 = SHX3_3.TriggerServerCallback
        SHX4_3 = "73b8cc73b6"
        SHX5_3 = SHX5_2
        SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX3_3(SHX4_3, SHX5_3)
        if SHX3_3 then
          SHX7_3 = tCMG
          SHX7_3 = SHX7_3.teleport
          SHX8_3 = SHX3_3
          SHX9_3 = SHX4_3
          SHX10_3 = SHX5_3
          SHX7_3(SHX8_3, SHX9_3, SHX10_3)
          SHX7_3 = SetEntityHeading
          SHX8_3 = CMG
          SHX8_3 = SHX8_3.getPlayerPed
          SHX8_3 = SHX8_3()
          SHX9_3 = SHX6_3
          SHX7_3(SHX8_3, SHX9_3)
        else
          SHX7_3 = notify
          SHX8_3 = "~r~No TrapNet buyer ped on server (no netId or entity)."
          SHX7_3(SHX8_3)
        end
      end
    end
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
end
SHX195_1(SHX196_1, SHX197_1)
SHX195_1 = AddEventHandler
SHX196_1 = "onResourceStop"
function SHX197_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 ~= SHX0_2 then
    return
  end
  SHX1_2 = SHX70_1
  if SHX1_2 then
    SHX1_2 = SHX80_1
    SHX1_2()
  end
  SHX1_2 = SHX10_1.shellObject
  if SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX10_1.shellObject
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX10_1.shellObject
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = pairs
  SHX2_2 = SHX10_1.objects
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.extraObjects
    if SHX7_2 then
      SHX7_2 = SHX52_1
      SHX8_2 = SHX6_2.extraObjects
      SHX7_2(SHX8_2)
    end
    SHX7_2 = SHX6_2.object
    if SHX7_2 then
      SHX7_2 = DoesEntityExist
      SHX8_2 = SHX6_2.object
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = DeleteEntity
        SHX8_2 = SHX6_2.object
        SHX7_2(SHX8_2)
      end
    end
  end
  SHX1_2 = {}
  SHX10_1.objects = SHX1_2
  SHX1_2 = SHX95_1
  if SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX95_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX95_1
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX2_1
  if not SHX2_2 then
    SHX2_2 = {}
  end
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX6_2 then
      SHX7_2 = DoesEntityExist
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = DetachEntity
        SHX8_2 = SHX6_2
        SHX9_2 = false
        SHX10_2 = false
        SHX7_2(SHX8_2, SHX9_2, SHX10_2)
        SHX7_2 = DeleteEntity
        SHX8_2 = SHX6_2
        SHX7_2(SHX8_2)
      end
    end
  end
  SHX1_2 = {}
  SHX2_1 = SHX1_2
  SHX1_2 = SHX183_1
  SHX1_2()
end
SHX195_1(SHX196_1, SHX197_1)
