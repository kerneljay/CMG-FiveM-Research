-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1
SHX0_1 = CMG
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3
    function SHX0_3(SHX0_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_4, SHX2_4, SHX3_4, SHX4_4
      SHX1_4 = RequestScaleformMovie
      SHX2_4 = SHX0_4
      SHX1_4 = SHX1_4(SHX2_4)
      while true do
        SHX2_4 = HasScaleformMovieLoaded
        SHX3_4 = SHX1_4
        SHX2_4 = SHX2_4(SHX3_4)
        if SHX2_4 then
          break
        end
        SHX2_4 = Citizen
        SHX2_4 = SHX2_4.Wait
        SHX3_4 = 0
        SHX2_4(SHX3_4)
      end
      SHX2_4 = BeginScaleformMovieMethod
      SHX3_4 = SHX1_4
      SHX4_4 = "SHOW_SHARD_WASTED_MP_MESSAGE"
      SHX2_4(SHX3_4, SHX4_4)
      SHX2_4 = _ENV
      SHX3_4 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX2_4 = SHX2_4[SHX3_4]
      SHX3_4 = SHX0_2
      SHX2_4(SHX3_4)
      SHX2_4 = _ENV
      SHX3_4 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX2_4 = SHX2_4[SHX3_4]
      SHX3_4 = SHX1_2
      SHX2_4(SHX3_4)
      SHX2_4 = ScaleformMovieMethodAddParamInt
      SHX3_4 = 5
      SHX2_4(SHX3_4)
      SHX2_4 = EndScaleformMovieMethod
      SHX2_4()
      return SHX1_4
    end
    Initialize = SHX0_3
    SHX0_3 = Initialize
    SHX1_3 = "mp_big_message_freemode"
    SHX0_3 = SHX0_3(SHX1_3)
    SHX1_3 = true
    SHX2_3 = SetTimeout
    SHX3_3 = 10000
    function SHX4_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = false
      SHX1_3 = SHX0_4
    end
    SHX2_3(SHX3_3, SHX4_3)
    while SHX1_3 do
      SHX2_3 = 0.5
      SHX3_3 = 0.35
      SHX4_3 = 1.0
      SHX5_3 = SHX4_3
      SHX6_3 = DrawScaleformMovie
      SHX7_3 = SHX0_3
      SHX8_3 = SHX2_3
      SHX9_3 = SHX3_3
      SHX10_3 = SHX4_3
      SHX11_3 = SHX5_3
      SHX12_3 = 0
      SHX13_3 = 0
      SHX14_3 = 0
      SHX15_3 = 0
      SHX16_3 = 0
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
      SHX6_3 = Wait
      SHX7_3 = 0
      SHX6_3(SHX7_3)
    end
  end
  SHX2_2(SHX3_2)
end
SHX0_1.initializeInstructionalJobScaleform = SHX1_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_garages"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX1_1["Standard Garage"] = true
SHX1_1["VIP Cars"] = true
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = SHX0_1.garageInstances
  if not SHX0_2 then
    SHX1_2 = nil
    SHX2_2 = nil
    return SHX1_2, SHX2_2
  end
  SHX1_2 = GetEntityCoords
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = nil
  SHX3_2 = nil
  SHX4_2 = nil
  SHX5_2 = pairs
  SHX6_2 = SHX0_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX10_2[1]
    SHX12_2 = SHX10_2[2]
    SHX13_2 = SHX1_1
    SHX13_2 = SHX13_2[SHX11_2]
    if SHX13_2 and SHX12_2 then
      SHX13_2 = SHX12_2.x
      if SHX13_2 then
        SHX13_2 = SHX1_2.x
        SHX14_2 = SHX12_2.x
        SHX13_2 = SHX13_2 - SHX14_2
        SHX14_2 = SHX1_2.y
        SHX15_2 = SHX12_2.y
        SHX14_2 = SHX14_2 - SHX15_2
        SHX15_2 = SHX13_2 * SHX13_2
        SHX16_2 = SHX14_2 * SHX14_2
        SHX15_2 = SHX15_2 + SHX16_2
        if not SHX2_2 or SHX2_2 > SHX15_2 then
          SHX2_2 = SHX15_2
          SHX16_2 = SHX12_2.x
          SHX4_2 = SHX12_2.y
          SHX3_2 = SHX16_2
        end
      end
    end
  end
  SHX5_2 = SHX3_2
  SHX6_2 = SHX4_2
  return SHX5_2, SHX6_2
end
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlaySound
  SHX1_2 = -1
  SHX2_2 = "CHECKPOINT_BEHIND"
  SHX3_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initializeInstructionalJobScaleform
  SHX1_2 = "Mechanic"
  SHX2_2 = "Press F6 to get started"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX2_1
  SHX0_2, SHX1_2 = SHX0_2()
  if SHX0_2 and SHX1_2 then
    SHX2_2 = SetNewWaypoint
    SHX3_2 = SHX0_2
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlaySound
  SHX1_2 = -1
  SHX2_2 = "CHECKPOINT_BEHIND"
  SHX3_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initializeInstructionalJobScaleform
  SHX1_2 = "Postal Service"
  SHX2_2 = "I have set a waypoint to the Postal Service garage where you can start your shift."
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetNewWaypoint
  SHX1_2 = -19.447393417358
  SHX2_2 = -705.32580566406
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlaySound
  SHX1_2 = -1
  SHX2_2 = "CHECKPOINT_BEHIND"
  SHX3_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initializeInstructionalJobScaleform
  SHX1_2 = "Bus Driving"
  SHX2_2 = "I have set a waypoint to the Bus garage where you can start your shift."
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetNewWaypoint
  SHX1_2 = 429.52169799804
  SHX2_2 = -587.45068359375
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlaySound
  SHX1_2 = -1
  SHX2_2 = "CHECKPOINT_BEHIND"
  SHX3_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initializeInstructionalJobScaleform
  SHX1_2 = "Food Delivery"
  SHX2_2 = "I have set a waypoint to the restaurant where you can start your shift."
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetNewWaypoint
  SHX1_2 = -1174.4127197266
  SHX2_2 = -872.98626708984
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlaySound
  SHX1_2 = -1
  SHX2_2 = "CHECKPOINT_BEHIND"
  SHX3_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initializeInstructionalJobScaleform
  SHX1_2 = "Scuba Diving"
  SHX2_2 = "I have set a waypoint to the Scuba Diving shop where you'll start your first job."
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetNewWaypoint
  SHX1_2 = -2195.6926269531
  SHX2_2 = -394.82040405273
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlaySound
  SHX1_2 = -1
  SHX2_2 = "CHECKPOINT_BEHIND"
  SHX3_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initializeInstructionalJobScaleform
  SHX1_2 = "Pilot"
  SHX2_2 = "I have set a waypoint to the Airport where your career will take off from."
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetNewWaypoint
  SHX1_2 = -981.72332763672
  SHX2_2 = -2956.2905273438
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlaySound
  SHX1_2 = -1
  SHX2_2 = "CHECKPOINT_BEHIND"
  SHX3_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initializeInstructionalJobScaleform
  SHX1_2 = "Cash Driver"
  SHX2_2 = "I have set a waypoint to the Cash Driver depot where you'll start your first job."
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetNewWaypoint
  SHX1_2 = -710.4659
  SHX2_2 = 269.6835
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlaySound
  SHX1_2 = -1
  SHX2_2 = "CHECKPOINT_BEHIND"
  SHX3_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initializeInstructionalJobScaleform
  SHX1_2 = "Fisherman"
  SHX2_2 = "I have set a waypoint to the bait shop where you'll need to buy some bait. After that you can make your way to one of the fishing locations on the map!"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetNewWaypoint
  SHX1_2 = 492.91830444336
  SHX2_2 = -3384.94140625
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlaySound
  SHX1_2 = -1
  SHX2_2 = "CHECKPOINT_BEHIND"
  SHX3_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initializeInstructionalJobScaleform
  SHX1_2 = "Trucking"
  SHX2_2 = "I have set a waypoint to the garage where you'll start your first job."
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetNewWaypoint
  SHX1_2 = 862.86767578125
  SHX2_2 = -3195.6655273438
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlaySound
  SHX1_2 = -1
  SHX2_2 = "CHECKPOINT_BEHIND"
  SHX3_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initializeInstructionalJobScaleform
  SHX1_2 = "Taco Seller"
  SHX2_2 = "Buy a Taco truck at Simeons then type /taco to start selling!"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetNewWaypoint
  SHX1_2 = -47.174137115479
  SHX2_2 = -1109.6021728516
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlaySound
  SHX1_2 = -1
  SHX2_2 = "CHECKPOINT_BEHIND"
  SHX3_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initializeInstructionalJobScaleform
  SHX1_2 = "Garbage"
  SHX2_2 = "Press F6 to get started"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetNewWaypoint
  SHX1_2 = -355.2
  SHX2_2 = -1518.4
  SHX0_2(SHX1_2, SHX2_2)
end
SHX14_1 = RegisterNetEvent
SHX15_1 = "e3a2b4bde0"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if "AA" == SHX0_2 then
    SHX1_2 = SHX3_1
    SHX1_2()
  elseif "Farmer" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.displayFarmerInstructions
    SHX1_2()
  elseif "Royal Mail" == SHX0_2 then
    SHX1_2 = SHX4_1
    SHX1_2()
  elseif "Bus Driver" == SHX0_2 then
    SHX1_2 = SHX5_1
    SHX1_2()
  elseif "Deliveroo" == SHX0_2 then
    SHX1_2 = SHX6_1
    SHX1_2()
  elseif "Scuba Diver" == SHX0_2 then
    SHX1_2 = SHX7_1
    SHX1_2()
  elseif "Pilot" == SHX0_2 then
    SHX1_2 = SHX8_1
    SHX1_2()
  elseif "G4S Driver" == SHX0_2 then
    SHX1_2 = SHX9_1
    SHX1_2()
  elseif "Fisherman" == SHX0_2 then
    SHX1_2 = SHX10_1
    SHX1_2()
  elseif "Trucking" == SHX0_2 then
    SHX1_2 = SHX11_1
    SHX1_2()
  elseif "Taco Seller" == SHX0_2 then
    SHX1_2 = SHX12_1
    SHX1_2()
  elseif "Garbage" == SHX0_2 then
    SHX1_2 = SHX13_1
    SHX1_2()
  end
end
SHX14_1(SHX15_1, SHX16_1)
