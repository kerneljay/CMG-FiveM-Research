-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_quests"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = nil
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadAnimDict
  SHX1_2 = "anim@mp_player_intcelebrationfemale@air_guitar"
  SHX0_2(SHX1_2)
  SHX0_2 = TaskPlayAnim
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = "anim@mp_player_intcelebrationfemale@air_guitar"
  SHX3_2 = "air_guitar"
  SHX4_2 = 8.0
  SHX5_2 = -8.0
  SHX6_2 = -1
  SHX7_2 = 0
  SHX8_2 = 0.0
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
function SHX4_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = Scaleform
    SHX1_3 = "MP_BIG_MESSAGE_FREEMODE"
    SHX0_3 = SHX0_3(SHX1_3)
    SHX1_3 = SHX0_3.RunFunction
    SHX2_3 = "SHOW_SHARD_WASTED_MP_MESSAGE"
    SHX3_3 = {}
    SHX4_3 = SHX0_2
    SHX5_3 = SHX1_2
    SHX6_3 = 0
    SHX7_3 = false
    SHX8_3 = false
    SHX3_3[1] = SHX4_3
    SHX3_3[2] = SHX5_3
    SHX3_3[3] = SHX6_3
    SHX3_3[4] = SHX7_3
    SHX3_3[5] = SHX8_3
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = 0
    while true do
      SHX2_3 = SHX2_2
      if not (SHX1_3 < SHX2_3) then
        break
      end
      SHX2_3 = Wait
      SHX3_3 = 0
      SHX2_3(SHX3_3)
      SHX2_3 = SHX0_3.Render2D
      SHX2_3()
      SHX1_3 = SHX1_3 + 1
    end
    SHX2_3 = SetScaleformMovieAsNoLongerNeeded
    SHX3_3 = SHX0_3.Handle
    SHX2_3(SHX3_3)
  end
  SHX3_2(SHX4_2)
end
function SHX5_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX5_2 = SHX0_2
  SHX6_2 = "_"
  SHX7_2 = tostring
  SHX8_2 = SHX1_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
  SHX6_2 = SHX2_2.pos
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX1_3 = SHX5_2
    SHX0_3 = SHX1_1
    SHX0_3 = SHX0_3[SHX1_3]
    if not SHX0_3 then
      SHX0_3 = DoesEntityExist
      SHX2_3 = SHX5_2
      SHX1_3 = SHX1_1
      SHX1_3 = SHX1_3[SHX2_3]
      SHX0_3 = SHX0_3(SHX1_3)
      if not SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.loadModel
        SHX1_3 = SHX2_2.model
        SHX0_3(SHX1_3)
        SHX0_3 = CreateObject
        SHX1_3 = SHX2_2.model
        SHX2_3 = SHX6_2.x
        SHX3_3 = SHX6_2.y
        SHX4_3 = SHX6_2.z
        SHX5_3 = false
        SHX6_3 = true
        SHX7_3 = false
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
        SHX1_3 = SetModelAsNoLongerNeeded
        SHX2_3 = SHX2_2.model
        SHX1_3(SHX2_3)
        SHX1_3 = FreezeEntityPosition
        SHX2_3 = SHX0_3
        SHX3_3 = true
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = SetEntityCollision
        SHX2_3 = SHX0_3
        SHX3_3 = false
        SHX4_3 = false
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX2_3 = SHX5_2
        SHX1_3 = SHX1_1
        SHX1_3[SHX2_3] = SHX0_3
      end
    end
  end
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = DeleteObject
    SHX2_3 = SHX5_2
    SHX1_3 = SHX1_1
    SHX1_3 = SHX1_3[SHX2_3]
    SHX0_3(SHX1_3)
    SHX1_3 = SHX5_2
    SHX0_3 = SHX1_1
    SHX0_3[SHX1_3] = nil
  end
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = SHX3_2
    if "green" == SHX0_3 then
      SHX0_3 = DrawLightWithRangeAndShadow
      SHX1_3 = SHX6_2.x
      SHX2_3 = SHX6_2.y
      SHX3_3 = SHX6_2.z
      SHX4_3 = 52
      SHX5_3 = 235
      SHX6_3 = 55
      SHX7_3 = 1.5
      SHX8_3 = 0.5
      SHX9_3 = 1.0
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    else
      SHX0_3 = SHX3_2
      if "orange" == SHX0_3 then
        SHX0_3 = DrawLightWithRangeAndShadow
        SHX1_3 = SHX6_2.x
        SHX2_3 = SHX6_2.y
        SHX3_3 = SHX6_2.z
        SHX4_3 = 230
        SHX5_3 = 115
        SHX6_3 = 0
        SHX7_3 = 1.5
        SHX8_3 = 0.5
        SHX9_3 = 1.0
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      else
        SHX0_3 = SHX3_2
        if "red" == SHX0_3 then
          SHX0_3 = DrawLightWithRangeAndShadow
          SHX1_3 = SHX6_2.x
          SHX2_3 = SHX6_2.y
          SHX3_3 = SHX6_2.z
          SHX4_3 = 230
          SHX5_3 = 0
          SHX6_3 = 0
          SHX7_3 = 1.5
          SHX8_3 = 0.5
          SHX9_3 = 1.0
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
        else
          SHX0_3 = SHX3_2
          if "blue" == SHX0_3 then
            SHX0_3 = DrawLightWithRangeAndShadow
            SHX1_3 = SHX6_2.x
            SHX2_3 = SHX6_2.y
            SHX3_3 = SHX6_2.z
            SHX4_3 = 0
            SHX5_3 = 191
            SHX6_3 = 225
            SHX7_3 = 1.5
            SHX8_3 = 0.5
            SHX9_3 = 1.0
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
          end
        end
      end
    end
    SHX1_3 = SHX5_2
    SHX0_3 = SHX1_1
    SHX0_3 = SHX0_3[SHX1_3]
    if SHX0_3 then
      SHX1_3 = SetEntityHeading
      SHX2_3 = SHX0_3
      SHX3_3 = GetEntityHeading
      SHX4_3 = SHX0_3
      SHX3_3 = SHX3_3(SHX4_3)
      SHX3_3 = SHX3_3 + 1
      SHX1_3(SHX2_3, SHX3_3)
    end
  end
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.createArea
  SHX11_2 = "quests_prop_"
  SHX12_2 = SHX5_2
  SHX11_2 = SHX11_2 .. SHX12_2
  SHX12_2 = SHX6_2
  SHX13_2 = SHX4_2 or SHX13_2
  if not SHX4_2 then
    SHX13_2 = 50.0
  end
  SHX14_2 = 50.0
  SHX15_2 = SHX7_2
  SHX16_2 = SHX8_2
  SHX17_2 = SHX9_2
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  function SHX10_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.drawFloatingHelpText
    SHX1_3 = "Press [E] to collect."
    SHX2_3 = vector3
    SHX3_3 = SHX6_2.x
    SHX4_3 = SHX6_2.y
    SHX5_3 = SHX6_2.z
    SHX5_3 = SHX5_3 + 0.2
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = IsControlJustPressed
    SHX1_3 = 0
    SHX2_3 = 38
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = SHX0_2
      if "CHRISTMAS" == SHX0_3 then
        SHX0_3 = SendNUIMessage
        SHX1_3 = {}
        SHX1_3.transactionType = "christmas_quest"
        SHX0_3(SHX1_3)
      end
      SHX0_3 = DeleteEntity
      SHX2_3 = SHX5_2
      SHX1_3 = SHX1_1
      SHX1_3 = SHX1_3[SHX2_3]
      SHX0_3(SHX1_3)
      SHX0_3 = TriggerServerEvent
      SHX1_3 = "020aa9f2cf"
      SHX2_3 = SHX0_2
      SHX3_3 = SHX1_2
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = SHX3_1
      SHX0_3()
    end
  end
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.createArea
  SHX12_2 = "quests_text_"
  SHX13_2 = SHX5_2
  SHX12_2 = SHX12_2 .. SHX13_2
  SHX13_2 = SHX6_2
  SHX14_2 = 2.0
  SHX15_2 = 6
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
  SHX18_2 = SHX10_2
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX2_1
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = SHX0_2.year
  if SHX1_2 then
    SHX1_2 = SHX0_2.year
    SHX2_2 = SHX2_1.year
    if SHX1_2 ~= SHX2_2 then
      SHX1_2 = false
      return SHX1_2
    end
  end
  SHX1_2 = SHX0_2.startDate
  if SHX1_2 then
    SHX1_2 = table
    SHX1_2 = SHX1_2.unpack
    SHX2_2 = SHX0_2.startDate
    SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
    SHX3_2 = SHX2_1.month
    if SHX2_2 > SHX3_2 then
      SHX3_2 = false
      return SHX3_2
    else
      SHX3_2 = SHX2_1.month
      if SHX3_2 == SHX2_2 then
        SHX3_2 = SHX2_1.day
        if SHX1_2 > SHX3_2 then
          SHX3_2 = false
          return SHX3_2
        end
      end
    end
  end
  SHX1_2 = SHX0_2.endDate
  if SHX1_2 then
    SHX1_2 = table
    SHX1_2 = SHX1_2.unpack
    SHX2_2 = SHX0_2.endDate
    SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
    SHX3_2 = SHX2_1.month
    if SHX2_2 < SHX3_2 then
      SHX3_2 = false
      return SHX3_2
    else
      SHX3_2 = SHX2_1.month
      if SHX3_2 == SHX2_2 then
        SHX3_2 = SHX2_1.day
        if SHX1_2 <= SHX3_2 then
          SHX3_2 = false
          return SHX3_2
        end
      end
    end
  end
  SHX1_2 = true
  return SHX1_2
end
SHX7_1 = RegisterNetEvent
SHX8_1 = "53c319de7c"
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX2_1 = SHX1_2
  SHX2_2 = pairs
  SHX3_2 = SHX0_1.quests
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX6_1
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX8_2 = pairs
      SHX9_2 = SHX7_2.locations
      SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
      for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
        SHX14_2 = SHX0_2[SHX6_2]
        if SHX14_2 then
          SHX14_2 = table
          SHX14_2 = SHX14_2.has
          SHX15_2 = SHX0_2[SHX6_2]
          SHX16_2 = SHX12_2
          SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
          if SHX14_2 then
            goto SHX_LABEL_32
          end
        end
        SHX14_2 = SHX5_1
        SHX15_2 = SHX6_2
        SHX16_2 = SHX12_2
        SHX17_2 = SHX13_2
        SHX18_2 = SHX7_2.lightColour
        SHX19_2 = SHX7_2.propRenderDistance
        SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        -- [FIX IF ERROR] Move ::SHX_LABEL_32:: outside nested blocks until all 'goto SHX_LABEL_32' can see it
        ::SHX_LABEL_32::
      end
    end
  end
end
SHX7_1(SHX8_1, SHX9_1)
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX0_2
  SHX3_2 = "_"
  SHX4_2 = tostring
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.removeArea
  SHX4_2 = "quests_prop_"
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX3_2(SHX4_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.removeArea
  SHX4_2 = "quests_text_"
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX3_2(SHX4_2)
end
SHX8_1 = RegisterNetEvent
SHX9_1 = "a47c883890"
function SHX10_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX4_2 = SHX7_1
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX4_2(SHX5_2, SHX6_2)
  if SHX0_2 then
    if "BIRTHDAY" == SHX1_2 then
      SHX4_2 = SHX4_1
      SHX5_2 = "~g~+5 Year Special Lock"
      SHX6_2 = "You collected them all!"
      SHX7_2 = 600
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    elseif "HALLOWEEN2025" == SHX1_2 then
      SHX4_2 = SHX4_1
      SHX5_2 = "~g~+\194\16310,000,000 earned, happy halloween!"
      SHX6_2 = "You collected them all!"
      SHX7_2 = 600
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    elseif "WORLDCUP2026" == SHX1_2 then
      SHX4_2 = SHX4_1
      SHX5_2 = "~g~England World Cup top unlocked!"
      SHX6_2 = "You collected them all!"
      SHX7_2 = 600
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    else
      SHX4_2 = SHX4_1
      SHX5_2 = "~g~+14 Days CMG Club Platinum"
      SHX6_2 = "You collected them all!"
      SHX7_2 = 600
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    end
    SHX4_2 = PlaySoundFrontend
    SHX5_2 = -1
    SHX6_2 = "Hack_Success"
    SHX7_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    SHX8_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  else
    SHX4_2 = SHX4_1
    SHX5_2 = "Collected ~y~"
    SHX6_2 = tostring
    SHX7_2 = SHX3_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = "/"
    SHX8_2 = tostring
    SHX9_2 = table
    SHX9_2 = SHX9_2.count
    SHX10_2 = SHX0_1.quests
    SHX10_2 = SHX10_2[SHX1_2]
    SHX10_2 = SHX10_2.locations
    SHX9_2, SHX10_2 = SHX9_2(SHX10_2)
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2
    SHX6_2 = "Collect them all to win a prize!"
    SHX7_2 = 600
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = PlaySoundFrontend
    SHX5_2 = -1
    SHX6_2 = "Hack_Success"
    SHX7_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    SHX8_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "886eb8b762"
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX7_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX4_1
  SHX3_2 = "~g~All Sweets Collected"
  SHX4_2 = "You collected them all!"
  SHX5_2 = 600
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = PlaySoundFrontend
  SHX3_2 = -1
  SHX4_2 = "Hack_Success"
  SHX5_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
  SHX6_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = AddEventHandler
SHX9_1 = "onResourceStop"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX1_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = DeleteObject
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = {}
SHX9_1 = RegisterNetEvent
SHX10_1 = "4bb1481ea8"
function SHX11_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX1_3 = SHX0_2
    SHX0_3 = SHX1_1
    SHX0_3 = SHX0_3[SHX1_3]
    if not SHX0_3 then
      SHX0_3 = DoesEntityExist
      SHX2_3 = SHX0_2
      SHX1_3 = SHX1_1
      SHX1_3 = SHX1_3[SHX2_3]
      SHX0_3 = SHX0_3(SHX1_3)
      if not SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.loadModel
        SHX1_3 = SHX2_2
        SHX0_3(SHX1_3)
        SHX0_3 = CreateObject
        SHX1_3 = SHX2_2
        SHX2_3 = SHX1_2.x
        SHX3_3 = SHX1_2.y
        SHX4_3 = SHX1_2.z
        SHX5_3 = false
        SHX6_3 = true
        SHX7_3 = false
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
        SHX1_3 = SetModelAsNoLongerNeeded
        SHX2_3 = SHX2_2
        SHX1_3(SHX2_3)
        SHX1_3 = FreezeEntityPosition
        SHX2_3 = SHX0_3
        SHX3_3 = true
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = SetEntityCollision
        SHX2_3 = SHX0_3
        SHX3_3 = false
        SHX4_3 = false
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX2_3 = SHX0_2
        SHX1_3 = SHX1_1
        SHX1_3[SHX2_3] = SHX0_3
      end
    end
  end
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = DeleteObject
    SHX2_3 = SHX0_2
    SHX1_3 = SHX1_1
    SHX1_3 = SHX1_3[SHX2_3]
    SHX0_3(SHX1_3)
    SHX1_3 = SHX0_2
    SHX0_3 = SHX1_1
    SHX0_3[SHX1_3] = nil
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = SHX3_2
    if "green" == SHX0_3 then
      SHX0_3 = DrawLightWithRangeAndShadow
      SHX1_3 = SHX1_2.x
      SHX2_3 = SHX1_2.y
      SHX3_3 = SHX1_2.z
      SHX4_3 = 52
      SHX5_3 = 235
      SHX6_3 = 55
      SHX7_3 = 1.5
      SHX8_3 = 0.5
      SHX9_3 = 1.0
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    else
      SHX0_3 = SHX3_2
      if "orange" == SHX0_3 then
        SHX0_3 = DrawLightWithRangeAndShadow
        SHX1_3 = SHX1_2.x
        SHX2_3 = SHX1_2.y
        SHX3_3 = SHX1_2.z
        SHX4_3 = 230
        SHX5_3 = 115
        SHX6_3 = 0
        SHX7_3 = 1.5
        SHX8_3 = 0.5
        SHX9_3 = 1.0
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      else
        SHX0_3 = SHX3_2
        if "red" == SHX0_3 then
          SHX0_3 = DrawLightWithRangeAndShadow
          SHX1_3 = SHX1_2.x
          SHX2_3 = SHX1_2.y
          SHX3_3 = SHX1_2.z
          SHX4_3 = 230
          SHX5_3 = 0
          SHX6_3 = 0
          SHX7_3 = 1.5
          SHX8_3 = 0.5
          SHX9_3 = 1.0
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
        else
          SHX0_3 = SHX3_2
          if "blue" == SHX0_3 then
            SHX0_3 = DrawLightWithRangeAndShadow
            SHX1_3 = SHX1_2.x
            SHX2_3 = SHX1_2.y
            SHX3_3 = SHX1_2.z
            SHX4_3 = 0
            SHX5_3 = 191
            SHX6_3 = 225
            SHX7_3 = 1.5
            SHX8_3 = 0.5
            SHX9_3 = 1.0
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
          end
        end
      end
    end
    SHX1_3 = SHX0_2
    SHX0_3 = SHX1_1
    SHX0_3 = SHX0_3[SHX1_3]
    if SHX0_3 then
      SHX1_3 = SetEntityHeading
      SHX2_3 = SHX0_3
      SHX3_3 = GetEntityHeading
      SHX4_3 = SHX0_3
      SHX3_3 = SHX3_3(SHX4_3)
      SHX3_3 = SHX3_3 + 1
      SHX1_3(SHX2_3, SHX3_3)
    end
  end
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.createArea
  SHX8_2 = "quests_prop_"
  SHX9_2 = SHX0_2
  SHX8_2 = SHX8_2 .. SHX9_2
  SHX9_2 = SHX1_2
  SHX10_2 = 50.0
  SHX11_2 = 50.0
  SHX12_2 = SHX4_2
  SHX13_2 = SHX5_2
  SHX14_2 = SHX6_2
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.drawFloatingHelpText
    SHX1_3 = "Press [E] to collect."
    SHX2_3 = vector3
    SHX3_3 = SHX1_2.x
    SHX4_3 = SHX1_2.y
    SHX5_3 = SHX1_2.z
    SHX5_3 = SHX5_3 + 0.2
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = IsControlJustPressed
    SHX1_3 = 0
    SHX2_3 = 38
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = DeleteEntity
      SHX2_3 = SHX0_2
      SHX1_3 = SHX1_1
      SHX1_3 = SHX1_3[SHX2_3]
      SHX0_3(SHX1_3)
      SHX0_3 = TriggerServerEvent
      SHX1_3 = "ed960e5660"
      SHX2_3 = SHX0_2
      SHX3_3 = SHX1_2
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = SHX3_1
      SHX0_3()
    end
  end
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.createArea
  SHX9_2 = "quests_text_"
  SHX10_2 = SHX0_2
  SHX9_2 = SHX9_2 .. SHX10_2
  SHX10_2 = SHX1_2
  SHX11_2 = 2.0
  SHX12_2 = 6
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
  SHX15_2 = SHX7_2
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX8_2 = AddBlipForRadius
  SHX9_2 = SHX1_2.x
  SHX10_2 = SHX1_2.y
  SHX11_2 = SHX1_2.z
  SHX12_2 = 100.0
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = SetBlipColour
  SHX10_2 = SHX8_2
  SHX11_2 = 3
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = SetBlipAlpha
  SHX10_2 = SHX8_2
  SHX11_2 = 180
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = table
  SHX9_2 = SHX9_2.insert
  SHX10_2 = SHX8_1
  SHX11_2 = SHX8_2
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = AddBlipForCoord
  SHX10_2 = SHX1_2.x
  SHX11_2 = SHX1_2.y
  SHX12_2 = SHX1_2.z
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX10_2 = SetBlipSprite
  SHX11_2 = SHX9_2
  SHX12_2 = 93
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetBlipAsShortRange
  SHX11_2 = SHX9_2
  SHX12_2 = false
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = table
  SHX10_2 = SHX10_2.insert
  SHX11_2 = SHX8_1
  SHX12_2 = SHX9_2
  SHX10_2(SHX11_2, SHX12_2)
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "8bd9d5cf5c"
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.removeArea
  SHX3_2 = "quests_prop_"
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX2_2(SHX3_2)
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.removeArea
  SHX3_2 = "quests_text_"
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX2_2(SHX3_2)
  SHX2_2 = pairs
  SHX3_2 = SHX8_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = RemoveBlip
    SHX9_2 = SHX7_2
    SHX8_2(SHX9_2)
  end
  SHX2_2 = {}
  SHX8_1 = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.startFireworksAtCoord
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
SHX9_1(SHX10_1, SHX11_1)
