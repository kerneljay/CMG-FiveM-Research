-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = {}
SHX1_1 = 305960317
SHX0_1[SHX1_1] = true
SHX1_1 = -652984928
SHX0_1[SHX1_1] = true
SHX1_1 = -930879665
SHX0_1[SHX1_1] = true
SHX1_1 = -1228586030
SHX0_1[SHX1_1] = true
SHX1_1 = 1872312775
SHX0_1[SHX1_1] = true
SHX1_1 = 1561564488
SHX0_1[SHX1_1] = true
SHX1_1 = false
SHX2_1 = nil
SHX3_1 = false
SHX4_1 = nil
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = {}
  if not SHX1_2 then
    SHX1_2 = 2.0
  end
  SHX3_2 = GetGamePool
  SHX4_2 = "CObject"
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = 1
  SHX5_2 = #SHX3_2
  SHX6_2 = 1
  for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = SHX3_2[SHX7_2]
    SHX9_2 = GetEntityCoords
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX9_2 = SHX9_2 - SHX0_2
    SHX9_2 = #SHX9_2
    if SHX1_2 > SHX9_2 then
      SHX9_2 = GetEntityModel
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = SHX0_1
      SHX9_2 = SHX10_2[SHX9_2]
      if SHX9_2 then
        SHX9_2 = #SHX2_2
        SHX9_2 = SHX9_2 + 1
        SHX2_2[SHX9_2] = SHX8_2
      end
    end
  end
  return SHX2_2
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = true
  SHX1_1 = SHX1_2
  SHX1_2 = CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    while true do
      SHX0_3 = SHX1_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = GetEntityCoords
      SHX1_3 = PlayerPedId
      SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX1_3()
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.isPlayerInPrison
      SHX1_3 = SHX1_3()
      if not SHX1_3 then
        SHX1_3 = false
        SHX3_1 = SHX1_3
        SHX1_3 = nil
        SHX2_1 = SHX1_3
      else
        SHX1_3 = nil
        SHX2_3 = SHX5_1
        SHX3_3 = SHX0_3
        SHX4_3 = 2.5
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
        SHX3_3 = ipairs
        SHX4_3 = SHX2_3
        SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX3_3(SHX4_3)
        for SHX7_3, SHX8_3 in SHX3_3, SHX4_3, SHX5_3, SHX6_3 do
          SHX1_3 = SHX8_3
          break
        end
        if SHX1_3 then
          SHX3_3 = true
          SHX3_1 = SHX3_3
          SHX2_1 = SHX1_3
        else
          SHX3_3 = false
          SHX3_1 = SHX3_3
          SHX3_3 = nil
          SHX2_1 = SHX3_3
        end
      end
      SHX1_3 = Wait
      SHX2_3 = 200
      SHX1_3(SHX2_3)
    end
    SHX0_3 = false
    SHX3_1 = SHX0_3
    SHX0_3 = nil
    SHX2_1 = SHX0_3
  end
  SHX1_2(SHX2_2)
  SHX1_2 = CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    while true do
      SHX0_3 = SHX1_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      SHX1_3 = SHX2_1
      if SHX1_3 then
        SHX1_3 = SHX3_1
        if SHX1_3 then
          SHX1_3 = CMG
          SHX1_3 = SHX1_3.isPlayerInPrison
          SHX1_3 = SHX1_3()
          if SHX1_3 and SHX0_3 then
            SHX1_3 = false
            SHX3_1 = SHX1_3
            SHX1_3 = SHX0_2
            SHX2_3 = SHX2_1
            SHX1_3(SHX2_3)
          end
        end
      end
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
  end
  SHX1_2(SHX2_2)
  SHX1_2 = CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX1_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX3_1
      if SHX0_3 then
        SHX0_3 = SHX2_1
        if SHX0_3 then
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.isPlayerInPrison
          SHX0_3 = SHX0_3()
          if SHX0_3 then
            SHX0_3 = drawNativeNotification
            SHX1_3 = "Press ~INPUT_CONTEXT~ to start your escape"
            SHX0_3(SHX1_3)
          end
        end
      end
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX1_2(SHX2_2)
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX1_1 = SHX0_2
end
SHX8_1 = {}
SHX9_1 = RegisterNetEvent
SHX10_1 = "d73cd69672"
function SHX11_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX8_1
  SHX3_2 = SHX3_2[SHX2_2]
  if SHX3_2 then
    SHX3_2 = SHX8_1
    SHX3_2 = SHX3_2[SHX2_2]
    SHX3_2 = SHX3_2.remove
    if SHX3_2 then
      SHX3_2 = SHX8_1
      SHX3_2 = SHX3_2[SHX2_2]
      SHX3_2 = SHX3_2.remove
      SHX3_2()
    end
    SHX3_2 = SHX8_1
    SHX3_2 = SHX3_2[SHX2_2]
    SHX3_2 = SHX3_2.entity
    if SHX3_2 then
      SHX3_2 = DoesEntityExist
      SHX4_2 = SHX8_1
      SHX4_2 = SHX4_2[SHX2_2]
      SHX4_2 = SHX4_2.entity
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX3_2 = SetEntityVisible
        SHX4_2 = SHX8_1
        SHX4_2 = SHX4_2[SHX2_2]
        SHX4_2 = SHX4_2.entity
        SHX5_2 = true
        SHX6_2 = false
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = SetEntityCollision
        SHX4_2 = SHX8_1
        SHX4_2 = SHX4_2[SHX2_2]
        SHX4_2 = SHX4_2.entity
        SHX5_2 = true
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = SetEntityAlpha
        SHX4_2 = SHX8_1
        SHX4_2 = SHX4_2[SHX2_2]
        SHX4_2 = SHX4_2.entity
        SHX5_2 = 255
        SHX6_2 = false
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      end
    end
    SHX3_2 = SHX8_1
    SHX3_2[SHX2_2] = nil
  end
  if SHX0_2 then
    return
  end
  SHX3_2 = CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
    SHX0_3 = false
    SHX1_3 = {}
    function SHX2_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = true
      SHX0_3 = SHX0_4
    end
    SHX1_3.remove = SHX2_3
    SHX1_3.entity = nil
    SHX3_3 = SHX2_2
    SHX2_3 = SHX8_1
    SHX2_3[SHX3_3] = SHX1_3
    while not SHX0_3 do
      SHX2_3 = PlayerPedId
      SHX2_3 = SHX2_3()
      SHX3_3 = GetEntityCoords
      SHX4_3 = SHX2_3
      SHX3_3 = SHX3_3(SHX4_3)
      SHX4_3 = SHX1_2
      SHX4_3 = SHX3_3 - SHX4_3
      SHX4_3 = #SHX4_3
      if SHX4_3 <= 50 then
        SHX4_3 = GetGamePool
        SHX5_3 = "CObject"
        SHX4_3 = SHX4_3(SHX5_3)
        SHX5_3 = 1
        SHX6_3 = #SHX4_3
        SHX7_3 = 1
        for SHX8_3 = SHX5_3, SHX6_3, SHX7_3 do
          SHX9_3 = SHX4_3[SHX8_3]
          SHX10_3 = GetEntityModel
          SHX11_3 = SHX9_3
          SHX10_3 = SHX10_3(SHX11_3)
          SHX11_3 = SHX0_1
          SHX11_3 = SHX11_3[SHX10_3]
          if SHX11_3 then
            SHX11_3 = Entity
            SHX12_3 = SHX9_3
            SHX11_3 = SHX11_3(SHX12_3)
            SHX11_3 = SHX11_3.state
            SHX11_3 = SHX11_3.isPrisonToilet
            if not SHX11_3 then
              SHX11_3 = NetworkGetEntityIsNetworked
              SHX12_3 = SHX9_3
              SHX11_3 = SHX11_3(SHX12_3)
              if not SHX11_3 then
                SHX11_3 = GetEntityCoords
                SHX12_3 = SHX9_3
                SHX11_3 = SHX11_3(SHX12_3)
                SHX12_3 = SHX1_2
                SHX11_3 = SHX11_3 - SHX12_3
                SHX11_3 = #SHX11_3
                if SHX11_3 < 3.0 then
                  SHX11_3 = SetEntityVisible
                  SHX12_3 = SHX9_3
                  SHX13_3 = false
                  SHX14_3 = false
                  SHX11_3(SHX12_3, SHX13_3, SHX14_3)
                  SHX11_3 = SetEntityCollision
                  SHX12_3 = SHX9_3
                  SHX13_3 = false
                  SHX14_3 = false
                  SHX11_3(SHX12_3, SHX13_3, SHX14_3)
                  SHX11_3 = SetEntityAlpha
                  SHX12_3 = SHX9_3
                  SHX13_3 = 0
                  SHX14_3 = false
                  SHX11_3(SHX12_3, SHX13_3, SHX14_3)
                  SHX1_3.entity = SHX9_3
                  break
                end
              end
            end
          end
        end
      else
        SHX4_3 = SHX1_3.entity
        if SHX4_3 then
          SHX4_3 = DoesEntityExist
          SHX5_3 = SHX1_3.entity
          SHX4_3 = SHX4_3(SHX5_3)
          if SHX4_3 then
            SHX4_3 = SetEntityVisible
            SHX5_3 = SHX1_3.entity
            SHX6_3 = true
            SHX7_3 = false
            SHX4_3(SHX5_3, SHX6_3, SHX7_3)
            SHX4_3 = SetEntityCollision
            SHX5_3 = SHX1_3.entity
            SHX6_3 = true
            SHX7_3 = true
            SHX4_3(SHX5_3, SHX6_3, SHX7_3)
            SHX4_3 = SetEntityAlpha
            SHX5_3 = SHX1_3.entity
            SHX6_3 = 255
            SHX7_3 = false
            SHX4_3(SHX5_3, SHX6_3, SHX7_3)
          end
        end
        SHX1_3.entity = nil
      end
      SHX4_3 = Wait
      SHX5_3 = 500
      SHX4_3(SHX5_3)
    end
  end
  SHX3_2(SHX4_2)
end
SHX9_1(SHX10_1, SHX11_1)
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isPlayerInPrison
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX4_1
  if SHX1_2 then
    return
  end
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetEntityHeading
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.TriggerServerCallback
  SHX4_2 = "d939d5b1ea"
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = SHX2_2
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  if not SHX3_2 then
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.notify
    SHX6_2 = "~r~You need a screwdriver to start the toilet escape. Buy one from the canteen."
    SHX5_2(SHX6_2)
    return
  end
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  SHX5_2 = SHX5_2 + 10000
  while true do
    SHX6_2 = NetworkDoesNetworkIdExist
    SHX7_2 = SHX3_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      break
    end
    SHX6_2 = GetGameTimer
    SHX6_2 = SHX6_2()
    if not (SHX5_2 > SHX6_2) then
      break
    end
    SHX6_2 = Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX6_2 = NetworkDoesNetworkIdExist
  SHX7_2 = SHX3_2
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    if SHX4_2 then
      SHX6_2 = TriggerEvent
      SHX7_2 = "d73cd69672"
      SHX8_2 = true
      SHX9_2 = SHX1_2
      SHX10_2 = SHX4_2
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
    return
  end
  SHX6_2 = Wait
  SHX7_2 = 300
  SHX6_2(SHX7_2)
  SHX6_2 = NetworkGetEntityFromNetworkId
  SHX7_2 = SHX3_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = DoesEntityExist
  SHX8_2 = SHX6_2
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    if SHX4_2 then
      SHX7_2 = TriggerEvent
      SHX8_2 = "d73cd69672"
      SHX9_2 = true
      SHX10_2 = SHX1_2
      SHX11_2 = SHX4_2
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
    return
  end
  SHX7_2 = SetEntityRotation
  SHX8_2 = SHX6_2
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = SHX2_2
  SHX12_2 = 2
  SHX13_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX7_2 = _G
  SHX7_2 = SHX7_2.CMG_PrisonToiletScrewGame
  if SHX7_2 then
    SHX7_2 = _G
    SHX7_2 = SHX7_2.CMG_PrisonToiletScrewGame
    SHX7_2 = SHX7_2.new
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      goto SHX_LABEL_103
    end
  end
  SHX7_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_103:: outside nested blocks until all 'goto SHX_LABEL_103' can see it
  ::SHX_LABEL_103::
  SHX4_1 = SHX7_2
  SHX7_2 = SHX4_1
  if not SHX7_2 then
    if SHX4_2 then
      SHX7_2 = TriggerEvent
      SHX8_2 = "d73cd69672"
      SHX9_2 = true
      SHX10_2 = SHX1_2
      SHX11_2 = SHX4_2
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
    return
  end
  SHX7_2 = SHX4_1
  SHX8_2 = SHX7_2
  SHX7_2 = SHX7_2.start
  SHX7_2(SHX8_2)
  SHX7_2 = nil
  SHX4_1 = SHX7_2
end
CMG_prisonToiletStartGame = SHX9_1
SHX9_1 = RegisterNetEvent
SHX10_1 = "aee0b08546"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX6_1
  SHX1_2 = CMG_prisonToiletStartGame
  SHX0_2(SHX1_2)
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "19f123276f"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  SHX0_2()
  SHX0_2 = SHX4_1
  if SHX0_2 then
    SHX0_2 = SHX4_1.cleanup
    if SHX0_2 then
      SHX0_2 = SHX4_1
      SHX1_2 = SHX0_2
      SHX0_2 = SHX0_2.cleanup
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = nil
  SHX4_1 = SHX0_2
end
SHX9_1(SHX10_1, SHX11_1)
