-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1
SHX0_1 = nil
SHX1_1 = nil
SHX2_1 = {}
SHX3_1 = vector3
SHX4_1 = -463.73846435547
SHX5_1 = -335.82943725586
SHX6_1 = 51.953220367432
SHX3_1, SHX4_1, SHX5_1, SHX6_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX3_1 = RegisterNetEvent
SHX4_1 = "5ba722ae30"
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX1_1 = SHX0_2
  SHX0_1 = SHX1_2
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = AddEventHandler
SHX4_1 = "CMG:onClientSpawn"
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  if SHX1_2 then
    while true do
      SHX2_2 = SHX0_1
      if nil ~= SHX2_2 then
        SHX2_2 = SHX1_1
        if nil ~= SHX2_2 then
          break
        end
      end
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.Wait
      SHX3_2 = 1000
      SHX2_2(SHX3_2)
    end
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      SHX1_3 = ""
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.hasClientPermission
      SHX3_3 = "nhs.onduty.permission"
      SHX2_3 = SHX2_3(SHX3_3)
      if not SHX2_3 then
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.isStaffedOnClient
        SHX2_3 = SHX2_3()
        if not SHX2_3 then
          SHX2_3 = SHX0_3.isAllowlisted
          if not SHX2_3 then
            goto SHX_LABEL_23
          end
          SHX2_3 = CMG
          SHX2_3 = SHX2_3.hasClientPermission
          SHX3_3 = "nhs.whitelisted"
          SHX2_3 = SHX2_3(SHX3_3)
          if not SHX2_3 then
            goto SHX_LABEL_23
          end
        end
      end
      SHX1_3 = " (E to toggle lock)"
      -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
      ::SHX_LABEL_23::
      SHX3_3 = SHX0_3.doorHash
      SHX2_3 = SHX0_1
      SHX2_3 = SHX2_3[SHX3_3]
      if 5 ~= SHX2_3 then
        SHX3_3 = SHX0_3.doorHash
        SHX2_3 = SHX0_1
        SHX2_3 = SHX2_3[SHX3_3]
        if 0 ~= SHX2_3 then
          goto SHX_LABEL_43
        end
      end
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.DrawText3D
      SHX3_3 = SHX0_3.position
      SHX4_3 = "\240\159\148\147"
      SHX5_3 = SHX1_3
      SHX4_3 = SHX4_3 .. SHX5_3
      SHX5_3 = 0.45
      SHX6_3 = 4
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      goto SHX_LABEL_52
      -- [FIX IF ERROR] Move ::SHX_LABEL_43:: outside nested blocks until all 'goto SHX_LABEL_43' can see it
      ::SHX_LABEL_43::
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.DrawText3D
      SHX3_3 = SHX0_3.position
      SHX4_3 = "\240\159\148\146"
      SHX5_3 = SHX1_3
      SHX4_3 = SHX4_3 .. SHX5_3
      SHX5_3 = 0.45
      SHX6_3 = 4
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      -- [FIX IF ERROR] Move ::SHX_LABEL_52:: outside nested blocks until all 'goto SHX_LABEL_52' can see it
      ::SHX_LABEL_52::
      SHX2_3 = IsControlJustPressed
      SHX3_3 = 0
      SHX4_3 = 38
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
      if SHX2_3 then
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.hasClientPermission
        SHX3_3 = "nhs.onduty.permission"
        SHX2_3 = SHX2_3(SHX3_3)
        if not SHX2_3 then
          SHX2_3 = CMG
          SHX2_3 = SHX2_3.isStaffedOnClient
          SHX2_3 = SHX2_3()
          if not SHX2_3 then
            SHX2_3 = SHX0_3.isAllowlisted
            if not SHX2_3 then
              goto SHX_LABEL_102
            end
            SHX2_3 = CMG
            SHX2_3 = SHX2_3.hasClientPermission
            SHX3_3 = "nhs.whitelisted"
            SHX2_3 = SHX2_3(SHX3_3)
            if not SHX2_3 then
              goto SHX_LABEL_102
            end
          end
        end
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.loadAnimDict
        SHX3_3 = "anim@heists@keycard@"
        SHX2_3(SHX3_3)
        SHX2_3 = Citizen
        SHX2_3 = SHX2_3.CreateThread
        function SHX3_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
          SHX0_4 = TaskPlayAnim
          SHX1_4 = PlayerPedId
          SHX1_4 = SHX1_4()
          SHX2_4 = "anim@heists@keycard@"
          SHX3_4 = "exit"
          SHX4_4 = 5.0
          SHX5_4 = 1.0
          SHX6_4 = -1
          SHX7_4 = 48
          SHX8_4 = 0
          SHX9_4 = false
          SHX10_4 = false
          SHX11_4 = false
          SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
          SHX0_4 = Wait
          SHX1_4 = 1200
          SHX0_4(SHX1_4)
          SHX0_4 = ClearPedTasks
          SHX1_4 = PlayerPedId
          SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4 = SHX1_4()
          SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
          SHX0_4 = RemoveAnimDict
          SHX1_4 = "anim@heists@keycard@"
          SHX0_4(SHX1_4)
        end
        SHX2_3(SHX3_3)
        SHX3_3 = SHX0_3.doorHash
        SHX2_3 = SHX0_1
        SHX2_3 = SHX2_3[SHX3_3]
        if 4 == SHX2_3 then
          SHX2_3 = TriggerServerEvent
          SHX3_3 = "ef11dd6918"
          SHX4_3 = SHX0_3.doorHash
          SHX5_3 = 5
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
        else
          SHX2_3 = TriggerServerEvent
          SHX3_3 = "ef11dd6918"
          SHX4_3 = SHX0_3.doorHash
          SHX5_3 = 4
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_102:: outside nested blocks until all 'goto SHX_LABEL_102' can see it
      ::SHX_LABEL_102::
    end
    SHX5_2 = 1
    SHX6_2 = SHX1_1
    SHX6_2 = #SHX6_2
    SHX7_2 = 1
    for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.createArea
      SHX10_2 = "openNhsDoor_"
      SHX11_2 = SHX1_1
      SHX11_2 = SHX11_2[SHX8_2]
      SHX11_2 = SHX11_2.doorHash
      SHX10_2 = SHX10_2 .. SHX11_2
      SHX11_2 = SHX1_1
      SHX11_2 = SHX11_2[SHX8_2]
      SHX11_2 = SHX11_2.position
      SHX12_2 = 1.5
      SHX13_2 = 5
      SHX14_2 = SHX2_2
      SHX15_2 = SHX3_2
      SHX16_2 = SHX4_2
      SHX17_2 = {}
      SHX18_2 = SHX1_1
      SHX18_2 = SHX18_2[SHX8_2]
      SHX18_2 = SHX18_2.doorHash
      SHX17_2.doorHash = SHX18_2
      SHX18_2 = SHX1_1
      SHX18_2 = SHX18_2[SHX8_2]
      SHX18_2 = SHX18_2.position
      SHX17_2.position = SHX18_2
      SHX18_2 = SHX1_1
      SHX18_2 = SHX18_2[SHX8_2]
      SHX18_2 = SHX18_2.isAllowlisted
      SHX17_2.isAllowlisted = SHX18_2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    end
    SHX5_2 = 1
    SHX6_2 = SHX1_1
    SHX6_2 = #SHX6_2
    SHX7_2 = 1
    for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
      SHX9_2 = AddDoorToSystem
      SHX10_2 = SHX1_1
      SHX10_2 = SHX10_2[SHX8_2]
      SHX10_2 = SHX10_2.doorHash
      SHX11_2 = SHX1_1
      SHX11_2 = SHX11_2[SHX8_2]
      SHX11_2 = SHX11_2.modelHash
      SHX12_2 = SHX1_1
      SHX12_2 = SHX12_2[SHX8_2]
      SHX12_2 = SHX12_2.position
      SHX12_2 = SHX12_2.x
      SHX13_2 = SHX1_1
      SHX13_2 = SHX13_2[SHX8_2]
      SHX13_2 = SHX13_2.position
      SHX13_2 = SHX13_2.y
      SHX14_2 = SHX1_1
      SHX14_2 = SHX14_2[SHX8_2]
      SHX14_2 = SHX14_2.position
      SHX14_2 = SHX14_2.z
      SHX15_2 = false
      SHX16_2 = false
      SHX17_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX9_2 = DoorSystemSetDoorState
      SHX10_2 = SHX1_1
      SHX10_2 = SHX10_2[SHX8_2]
      SHX10_2 = SHX10_2.doorHash
      SHX11_2 = SHX1_1
      SHX11_2 = SHX11_2[SHX8_2]
      SHX12_2 = SHX11_2.doorHash
      SHX11_2 = SHX0_1
      SHX11_2 = SHX11_2[SHX12_2]
      SHX12_2 = false
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.TriggerServerCallback
      SHX1_3 = "04bc7a9ba8"
      SHX0_3 = SHX0_3(SHX1_3)
      SHX0_1 = SHX0_3
      SHX0_3 = pairs
      SHX1_3 = SHX0_1
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = DoorSystemSetDoorState
        SHX7_3 = SHX4_3
        SHX8_3 = SHX5_3
        SHX9_3 = false
        SHX10_3 = false
        SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        if 0 == SHX5_3 or 5 == SHX5_3 then
          SHX6_3 = DoorSystemSetHoldOpen
          SHX7_3 = SHX4_3
          SHX8_3 = true
          SHX6_3(SHX7_3, SHX8_3)
        else
          SHX6_3 = DoorSystemSetHoldOpen
          SHX7_3 = SHX4_3
          SHX8_3 = false
          SHX6_3(SHX7_3, SHX8_3)
        end
      end
    end
    SHX6_2 = 1
    SHX7_2 = SHX2_1
    SHX7_2 = #SHX7_2
    SHX8_2 = 1
    for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.createArea
      SHX11_2 = "nhsSyncDoorsOnAreaEnter"
      SHX12_2 = SHX2_1
      SHX12_2 = SHX12_2[SHX9_2]
      SHX13_2 = 250
      SHX14_2 = 250
      SHX15_2 = SHX5_2
      function SHX16_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      function SHX17_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX18_2 = {}
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "630cfa65f9"
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = DoorSystemSetDoorState
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = false
  SHX6_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  if 0 == SHX1_2 or 5 == SHX1_2 then
    SHX2_2 = DoorSystemSetHoldOpen
    SHX3_2 = SHX0_2
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = DoorSystemSetHoldOpen
    SHX3_2 = SHX0_2
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = SHX0_1
  SHX2_2 = SHX2_2[SHX0_2]
  if nil ~= SHX2_2 then
    SHX2_2 = SHX0_1
    SHX2_2[SHX0_2] = SHX1_2
  end
end
SHX3_1(SHX4_1, SHX5_1)
