-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/events/cfg_passthebomb"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = CMG
SHX2_1 = SHX2_1.createTimerBars
SHX2_1 = SHX2_1()
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 23
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 75
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 24
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 25
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 37
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 12
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 13
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 14
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 15
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 16
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 17
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 53
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 54
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 99
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 100
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 261
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 262
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = SHX0_2.updated
  SHX2_2 = SHX1_2 - SHX2_2
  SHX3_2 = 5000
  if SHX2_2 > SHX3_2 then
    SHX0_2.updated = SHX1_2
    SHX2_2 = UseParticleFxAsset
    SHX3_2 = SHX0_2.asset
    SHX2_2(SHX3_2)
    SHX2_2 = StartParticleFxNonLoopedAtCoord
    SHX3_2 = SHX0_2.name
    SHX4_2 = SHX0_2.pos
    SHX4_2 = SHX4_2.x
    SHX5_2 = SHX0_2.pos
    SHX5_2 = SHX5_2.y
    SHX6_2 = SHX0_2.pos
    SHX6_2 = SHX6_2.z
    SHX7_2 = 0.0
    SHX8_2 = 0.0
    SHX9_2 = 0.0
    SHX10_2 = 1.0
    SHX11_2 = false
    SHX12_2 = false
    SHX13_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
end
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX0_2.updated
  SHX2_2 = SHX1_2 - SHX2_2
  SHX3_2 = 5000
  if SHX2_2 > SHX3_2 then
    SHX0_2.updated = SHX1_2
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.CreateThread
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
      SHX0_3 = GetSoundId
      SHX0_3 = SHX0_3()
      SHX1_3 = PlaySoundFromCoord
      SHX2_3 = SHX0_3
      SHX3_3 = SHX0_2.name
      SHX4_3 = SHX0_2.pos
      SHX4_3 = SHX4_3.x
      SHX5_3 = SHX0_2.pos
      SHX5_3 = SHX5_3.y
      SHX6_3 = SHX0_2.pos
      SHX6_3 = SHX6_3.z
      SHX7_3 = SHX0_2.soundset
      SHX8_3 = false
      SHX9_3 = 0
      SHX10_3 = false
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 5000
      SHX1_3(SHX2_3)
      SHX1_3 = StopSound
      SHX2_3 = SHX0_3
      SHX1_3(SHX2_3)
      SHX1_3 = ReleaseSoundId
      SHX2_3 = SHX0_3
      SHX1_3(SHX2_3)
    end
    SHX2_2(SHX3_2)
  end
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX1_1.particles
  if SHX3_2 then
    SHX3_2 = ipairs
    SHX4_2 = SHX1_1.particles
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SHX8_2.pos
      SHX9_2 = SHX9_2 - SHX2_2
      SHX9_2 = #SHX9_2
      SHX10_2 = SHX8_2.range
      if SHX9_2 < SHX10_2 then
        SHX9_2 = SHX4_1
        SHX10_2 = SHX8_2
        SHX11_2 = SHX1_2
        SHX9_2(SHX10_2, SHX11_2)
      end
    end
  end
  SHX3_2 = SHX1_1.sounds
  if SHX3_2 then
    SHX3_2 = ipairs
    SHX4_2 = SHX1_1.sounds
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SHX8_2.pos
      SHX9_2 = SHX9_2 - SHX2_2
      SHX9_2 = #SHX9_2
      SHX10_2 = SHX8_2.range
      if SHX9_2 < SHX10_2 then
        SHX9_2 = SHX5_1
        SHX10_2 = SHX8_2
        SHX11_2 = SHX1_2
        SHX9_2(SHX10_2, SHX11_2)
      end
    end
  end
end
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  if SHX0_2 then
    SHX2_2 = Entity
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX2_2 = SHX2_2.state
    SHX2_2 = SHX2_2.particle
    if not SHX2_2 then
      SHX2_2 = UseParticleFxAsset
      SHX3_2 = "scr_ar_planes"
      SHX2_2(SHX3_2)
      SHX2_2 = StartParticleFxLoopedOnEntity
      SHX3_2 = "scr_ar_trail_smoke"
      SHX4_2 = SHX1_2
      SHX5_2 = 0.0
      SHX6_2 = -1.0
      SHX7_2 = 0.0
      SHX8_2 = 0.0
      SHX9_2 = 0.0
      SHX10_2 = 0.0
      SHX11_2 = 1.0
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = false
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX3_2 = SetParticleFxLoopedScale
      SHX4_2 = SHX2_2
      SHX5_2 = 0.5
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SetParticleFxLoopedFarClipDist
      SHX4_2 = SHX2_2
      SHX5_2 = 1000.0
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SetParticleFxLoopedColour
      SHX4_2 = SHX2_2
      SHX5_2 = 1.0
      SHX6_2 = 0.0
      SHX7_2 = 0.0
      SHX8_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX3_2 = Entity
      SHX4_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX3_2 = SHX3_2.state
      SHX3_2.particle = SHX2_2
    end
  else
    SHX2_2 = Entity
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX2_2 = SHX2_2.state
    SHX2_2 = SHX2_2.particle
    if SHX2_2 then
      SHX3_2 = StopParticleFxLooped
      SHX4_2 = SHX2_2
      SHX5_2 = false
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = Entity
      SHX4_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX3_2 = SHX3_2.state
      SHX3_2.particle = nil
    end
  end
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2
  SHX1_2 = SHX1_1.boxes
  if not SHX1_2 then
    return
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX1_1.boxes
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.visible
    if SHX7_2 then
      SHX7_2 = DrawMarker
      SHX8_2 = 32
      SHX9_2 = SHX6_2.pos
      SHX9_2 = SHX9_2.x
      SHX10_2 = SHX6_2.pos
      SHX10_2 = SHX10_2.y
      SHX11_2 = SHX6_2.pos
      SHX11_2 = SHX11_2.z
      SHX11_2 = SHX11_2 + 2.0
      SHX12_2 = 0.0
      SHX13_2 = 0.0
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 0.0
      SHX18_2 = 5.0
      SHX19_2 = 5.0
      SHX20_2 = 5.0
      SHX21_2 = 0
      SHX22_2 = 255
      SHX23_2 = 0
      SHX24_2 = 255
      SHX25_2 = true
      SHX26_2 = true
      SHX27_2 = 2
      SHX28_2 = false
      SHX29_2 = nil
      SHX30_2 = nil
      SHX31_2 = false
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
      SHX7_2 = SHX6_2.pos
      SHX7_2 = SHX7_2 - SHX0_2
      SHX7_2 = #SHX7_2
      if SHX7_2 < 5.0 then
        SHX7_2 = SHX1_1.hasBoost
        if not SHX7_2 then
          SHX7_2 = TriggerServerEvent
          SHX8_2 = "a300517b73"
          SHX9_2 = SHX5_2
          SHX7_2(SHX8_2, SHX9_2)
        end
      end
    end
  end
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = SHX0_1.locations
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_1.colour = 1
  SHX2_2 = SHX1_2.vehicles
  SHX1_1.vehicles = SHX2_2
  SHX2_2 = SHX1_2.bounds
  SHX1_1.bounds = SHX2_2
  SHX1_1.confirmedCharacter = false
  SHX2_2 = SHX1_2.particles
  if SHX2_2 then
    SHX2_2 = json
    SHX2_2 = SHX2_2.decode
    SHX3_2 = json
    SHX3_2 = SHX3_2.encode
    SHX4_2 = SHX1_2.particles
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX1_1.particles = SHX2_2
    SHX2_2 = ipairs
    SHX3_2 = SHX1_1.particles
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = vector3
      SHX9_2 = SHX7_2.pos
      SHX9_2 = SHX9_2.x
      SHX10_2 = SHX7_2.pos
      SHX10_2 = SHX10_2.y
      SHX11_2 = SHX7_2.pos
      SHX11_2 = SHX11_2.z
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX7_2.pos = SHX8_2
      SHX7_2.updated = 0
    end
  end
  SHX2_2 = SHX1_2.sounds
  if SHX2_2 then
    SHX2_2 = json
    SHX2_2 = SHX2_2.decode
    SHX3_2 = json
    SHX3_2 = SHX3_2.encode
    SHX4_2 = SHX1_2.sounds
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX1_1.sounds = SHX2_2
    SHX2_2 = ipairs
    SHX3_2 = SHX1_1.sounds
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = vector3
      SHX9_2 = SHX7_2.pos
      SHX9_2 = SHX9_2.x
      SHX10_2 = SHX7_2.pos
      SHX10_2 = SHX10_2.y
      SHX11_2 = SHX7_2.pos
      SHX11_2 = SHX11_2.z
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX7_2.pos = SHX8_2
      SHX7_2.updated = 0
    end
  end
  SHX2_2 = SHX1_2.boxes
  if SHX2_2 then
    SHX2_2 = json
    SHX2_2 = SHX2_2.decode
    SHX3_2 = json
    SHX3_2 = SHX3_2.encode
    SHX4_2 = SHX1_2.boxes
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX1_1.boxes = SHX2_2
    SHX2_2 = ipairs
    SHX3_2 = SHX1_1.boxes
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = vector3
      SHX9_2 = SHX7_2.pos
      SHX9_2 = SHX9_2.x
      SHX10_2 = SHX7_2.pos
      SHX10_2 = SHX10_2.y
      SHX11_2 = SHX7_2.pos
      SHX11_2 = SHX11_2.z
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX7_2.pos = SHX8_2
      SHX7_2.visible = true
    end
  end
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = SetPedIntoVehicle
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX1_1.vehicle
  SHX3_2 = -1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX1_1
  while true do
    SHX2_2 = NetworkHasControlOfEntity
    SHX3_2 = SHX1_1.vehicle
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX0_2
    SHX3_2 = 2000
    if not (SHX2_2 < SHX3_2) then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = SHX1_1
    if SHX1_2 ~= SHX2_2 then
      return
    end
  end
  SHX2_2 = SHX1_1.position
  if nil == SHX2_2 then
    SHX2_2 = print
    SHX3_2 = "[Pass The Bomb] Deleting vehicle on spawn, no position was set."
    SHX2_2(SHX3_2)
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX1_1.vehicle
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = SetEntityCoordsNoOffset
  SHX3_2 = SHX1_1.vehicle
  SHX4_2 = SHX1_1.position
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX1_1.position
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX1_1.position
  SHX6_2 = SHX6_2.z
  SHX7_2 = true
  SHX8_2 = false
  SHX9_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX2_2 = SetVehicleOnGroundProperly
  SHX3_2 = SHX1_1.vehicle
  SHX2_2(SHX3_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_1.vehicle
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetVehRadioStation
  SHX3_2 = SHX1_1.vehicle
  SHX4_2 = "OFF"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetVehicleRadioEnabled
  SHX3_2 = SHX1_1.vehicle
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetEntityProofs
  SHX3_2 = SHX1_1.vehicle
  SHX4_2 = false
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThreadNow
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = -1
    SHX1_3 = -1
    while true do
      SHX2_3 = SHX1_1.colour
      if SHX0_3 == SHX2_3 then
        SHX2_3 = SHX1_1.colour
        if SHX1_3 == SHX2_3 then
          break
        end
      end
      SHX2_3 = SetVehicleColours
      SHX3_3 = SHX1_1.vehicle
      SHX4_3 = SHX1_1.colour
      SHX5_3 = SHX1_1.colour
      SHX2_3(SHX3_3, SHX4_3, SHX5_3)
      SHX2_3 = GetVehicleColours
      SHX3_3 = SHX1_1.vehicle
      SHX2_3, SHX3_3 = SHX2_3(SHX3_3)
      SHX1_3 = SHX3_3
      SHX0_3 = SHX2_3
      SHX2_3 = Citizen
      SHX2_3 = SHX2_3.Wait
      SHX3_3 = 0
      SHX2_3(SHX3_3)
    end
  end
  SHX2_2(SHX3_2)
end
SHX11_1 = RegisterNetEvent
SHX12_1 = "e3df374c4b"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX1_1.vehicle
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX1_1.vehicle
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SHX1_1
  while true do
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_1.vehicle
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = NetworkDoesEntityExistWithNetworkId
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = NetworkGetEntityFromNetworkId
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      SHX1_1.vehicle = SHX2_2
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = SHX1_1
    if SHX1_2 ~= SHX2_2 then
      return
    end
  end
  while true do
    SHX2_2 = NetworkHasControlOfEntity
    SHX3_2 = SHX1_1.vehicle
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = GetPedInVehicleSeat
      SHX3_2 = SHX1_1.vehicle
      SHX4_2 = -1
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX3_2 = PlayerPedId
      SHX3_2 = SHX3_2()
      if SHX2_2 == SHX3_2 then
        break
      end
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = SHX1_1
    if SHX1_2 ~= SHX2_2 then
      return
    end
  end
  SHX2_2 = SHX10_1
  SHX2_2()
end
SHX11_1(SHX12_1, SHX13_1)
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = {}
  SHX1_2 = ipairs
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getActiveEventPlayers
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX2_2()
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.hasBomb
    if SHX7_2 then
      SHX7_2 = GetPlayerFromServerId
      SHX8_2 = SHX6_2.source
      SHX7_2 = SHX7_2(SHX8_2)
      if -1 ~= SHX7_2 then
        SHX8_2 = table
        SHX8_2 = SHX8_2.insert
        SHX9_2 = SHX0_2
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.getPlayerName
        SHX11_2 = SHX7_2
        SHX10_2, SHX11_2 = SHX10_2(SHX11_2)
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      end
    end
  end
  SHX1_2 = #SHX0_2
  if 2 == SHX1_2 then
    SHX1_2 = string
    SHX1_2 = SHX1_2.format
    SHX2_2 = "~y~Escape~w~ the ~r~bombers~w~ %s and %s"
    SHX3_2 = SHX0_2[1]
    SHX4_2 = SHX0_2[2]
    return SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  else
    SHX1_2 = #SHX0_2
    if 1 == SHX1_2 then
      SHX1_2 = string
      SHX1_2 = SHX1_2.format
      SHX2_2 = "~y~Escape~w~ %s the ~r~bomber~w~"
      SHX3_2 = SHX0_2[1]
      return SHX1_2(SHX2_2, SHX3_2)
    end
  end
  SHX1_2 = "~y~Escape~w~ the ~r~bomber~w~"
  return SHX1_2
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = DoesEntityExist
  SHX1_2 = SHX1_1.vehicle
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    return
  end
  SHX0_2 = {}
  SHX1_2 = GetVehicleHandlingFloat
  SHX2_2 = SHX1_1.vehicle
  SHX3_2 = "CHandlingData"
  SHX4_2 = "fDownforceModifier"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2.downforce = SHX1_2
  SHX1_2 = GetVehicleHandlingFloat
  SHX2_2 = SHX1_1.vehicle
  SHX3_2 = "CHandlingData"
  SHX4_2 = "fDriveInertia"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2.driveInertia = SHX1_2
  SHX1_2 = GetVehicleHandlingFloat
  SHX2_2 = SHX1_1.vehicle
  SHX3_2 = "CHandlingData"
  SHX4_2 = "fTractionCurveMin"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2.curveMin = SHX1_2
  SHX1_2 = GetVehicleHandlingFloat
  SHX2_2 = SHX1_1.vehicle
  SHX3_2 = "CHandlingData"
  SHX4_2 = "fTractionCurveMax"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2.curveMax = SHX1_2
  SHX1_2 = GetVehicleHandlingFloat
  SHX2_2 = SHX1_1.vehicle
  SHX3_2 = "CHandlingData"
  SHX4_2 = "fAntiRollBarForce"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2.antiRollBarForce = SHX1_2
  SHX1_2 = GetVehicleHandlingFloat
  SHX2_2 = SHX1_1.vehicle
  SHX3_2 = "CHandlingData"
  SHX4_2 = "fAntiRollBarBiasFront"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2.antiRollBarBiasFront = SHX1_2
  SHX1_2 = GetVehicleHandlingFloat
  SHX2_2 = SHX1_1.vehicle
  SHX3_2 = "CHandlingData"
  SHX4_2 = "fRollCentreHeightFront"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2.rollCentreHeightFront = SHX1_2
  SHX1_2 = GetVehicleHandlingFloat
  SHX2_2 = SHX1_1.vehicle
  SHX3_2 = "CHandlingData"
  SHX4_2 = "fRollCentreHeightRear"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2.rollCentreHeightRear = SHX1_2
  SHX1_1.boostHandling = SHX0_2
  SHX0_2 = GetEntityModel
  SHX1_2 = SHX1_1.vehicle
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = SHX0_1.handlings
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SetVehicleHandlingFloat
    SHX3_2 = SHX1_1.vehicle
    SHX4_2 = "CHandlingData"
    SHX5_2 = "fDownforceModifier"
    SHX6_2 = SHX1_2.fDownforceModifier
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SetVehicleHandlingFloat
    SHX3_2 = SHX1_1.vehicle
    SHX4_2 = "CHandlingData"
    SHX5_2 = "fDriveInertia"
    SHX6_2 = SHX1_1.boostHandling
    SHX6_2 = SHX6_2.driveInertia
    SHX6_2 = SHX6_2 * 1.5
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SetVehicleHandlingFloat
    SHX3_2 = SHX1_1.vehicle
    SHX4_2 = "CHandlingData"
    SHX5_2 = "fTractionCurveMin"
    SHX6_2 = SHX1_2.fTractionCurveMin
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SetVehicleHandlingFloat
    SHX3_2 = SHX1_1.vehicle
    SHX4_2 = "CHandlingData"
    SHX5_2 = "fTractionCurveMax"
    SHX6_2 = SHX1_2.fTractionCurveMax
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SetVehicleHandlingFloat
    SHX3_2 = SHX1_1.vehicle
    SHX4_2 = "CHandlingData"
    SHX5_2 = "fAntiRollBarForce"
    SHX6_2 = SHX1_2.fAntiRollBarForce
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SetVehicleHandlingFloat
    SHX3_2 = SHX1_1.vehicle
    SHX4_2 = "CHandlingData"
    SHX5_2 = "fAntiRollBarBiasFront"
    SHX6_2 = SHX1_2.fAntiRollBarBiasFront
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SetVehicleHandlingFloat
    SHX3_2 = SHX1_1.vehicle
    SHX4_2 = "CHandlingData"
    SHX5_2 = "fRollCentreHeightFront"
    SHX6_2 = SHX1_2.fRollCentreHeightFront
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SetVehicleHandlingFloat
    SHX3_2 = SHX1_1.vehicle
    SHX4_2 = "CHandlingData"
    SHX5_2 = "fRollCentreHeightRear"
    SHX6_2 = SHX1_2.fRollCentreHeightRear
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  else
    SHX2_2 = SetVehicleHandlingFloat
    SHX3_2 = SHX1_1.vehicle
    SHX4_2 = "CHandlingData"
    SHX5_2 = "fDriveInertia"
    SHX6_2 = SHX1_1.boostHandling
    SHX6_2 = SHX6_2.driveInertia
    SHX6_2 = SHX6_2 * 1.5
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SetVehicleHandlingFloat
  SHX1_2 = SHX1_1.vehicle
  SHX2_2 = "CHandlingData"
  SHX3_2 = "fDownforceModifier"
  SHX4_2 = SHX1_1.boostHandling
  SHX4_2 = SHX4_2.downforce
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SetVehicleHandlingFloat
  SHX1_2 = SHX1_1.vehicle
  SHX2_2 = "CHandlingData"
  SHX3_2 = "fDriveInertia"
  SHX4_2 = SHX1_1.boostHandling
  SHX4_2 = SHX4_2.driveInertia
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SetVehicleHandlingFloat
  SHX1_2 = SHX1_1.vehicle
  SHX2_2 = "CHandlingData"
  SHX3_2 = "fTractionCurveMin"
  SHX4_2 = SHX1_1.boostHandling
  SHX4_2 = SHX4_2.curveMin
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SetVehicleHandlingFloat
  SHX1_2 = SHX1_1.vehicle
  SHX2_2 = "CHandlingData"
  SHX3_2 = "fTractionCurveMax"
  SHX4_2 = SHX1_1.boostHandling
  SHX4_2 = SHX4_2.curveMax
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SetVehicleHandlingFloat
  SHX1_2 = SHX1_1.vehicle
  SHX2_2 = "CHandlingData"
  SHX3_2 = "fAntiRollBarForce"
  SHX4_2 = SHX1_1.boostHandling
  SHX4_2 = SHX4_2.antiRollBarForce
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SetVehicleHandlingFloat
  SHX1_2 = SHX1_1.vehicle
  SHX2_2 = "CHandlingData"
  SHX3_2 = "fAntiRollBarBiasFront"
  SHX4_2 = SHX1_1.boostHandling
  SHX4_2 = SHX4_2.antiRollBarBiasFront
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SetVehicleHandlingFloat
  SHX1_2 = SHX1_1.vehicle
  SHX2_2 = "CHandlingData"
  SHX3_2 = "fRollCentreHeightFront"
  SHX4_2 = SHX1_1.boostHandling
  SHX4_2 = SHX4_2.rollCentreHeightFront
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SetVehicleHandlingFloat
  SHX1_2 = SHX1_1.vehicle
  SHX2_2 = "CHandlingData"
  SHX3_2 = "fRollCentreHeightRear"
  SHX4_2 = SHX1_1.boostHandling
  SHX4_2 = SHX4_2.rollCentreHeightRear
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX1_1.boostHandling = nil
end
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = HasEntityBeenDamagedByEntity
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  if not SHX2_2 then
    SHX2_2 = HasEntityBeenDamagedByEntity
    SHX3_2 = SHX1_2
    SHX4_2 = SHX0_2
    SHX5_2 = true
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    if not SHX2_2 then
      SHX2_2 = IsEntityTouchingEntity
      SHX3_2 = SHX0_2
      SHX4_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if not SHX2_2 then
        SHX2_2 = IsEntityTouchingEntity
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      end
    end
  end
  return SHX2_2
end
function SHX15_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = GetPlayerFromServerId
  SHX4_2 = SHX2_2.source
  SHX3_2 = SHX3_2(SHX4_2)
  if -1 == SHX3_2 then
    return
  end
  SHX4_2 = GetPlayerPed
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = HasEntityClearLosToEntity
  SHX6_2 = SHX0_2
  SHX7_2 = SHX4_2
  SHX8_2 = 17
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = SetMpGamerTagVisibility
  SHX7_2 = SHX2_2.tag
  SHX8_2 = 0
  SHX9_2 = SHX5_2
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SetMpGamerTagVisibility
  SHX7_2 = SHX2_2.tag
  SHX8_2 = 29
  SHX9_2 = SHX2_2.hasBomb
  if SHX9_2 then
    SHX9_2 = SHX5_2
  end
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SHX2_2.blip
  if SHX6_2 then
    SHX6_2 = SHX2_2.active
    if SHX6_2 then
      SHX6_2 = GetBlipColour
      SHX7_2 = SHX2_2.blip
      SHX6_2 = SHX6_2(SHX7_2)
      SHX7_2 = SetBlipSprite
      SHX8_2 = SHX2_2.blip
      SHX9_2 = SHX2_2.hasBomb
      if SHX9_2 then
        SHX9_2 = 486
        if SHX9_2 then
          goto SHX_LABEL_46
        end
      end
      SHX9_2 = 1
      -- [FIX IF ERROR] Move ::SHX_LABEL_46:: outside nested blocks until all 'goto SHX_LABEL_46' can see it
      ::SHX_LABEL_46::
      SHX7_2(SHX8_2, SHX9_2)
      SHX7_2 = SetBlipScale
      SHX8_2 = SHX2_2.blip
      SHX9_2 = SHX2_2.hasBomb
      if SHX9_2 then
        SHX9_2 = 1.5
        if SHX9_2 then
          goto SHX_LABEL_56
        end
      end
      SHX9_2 = 1.0
      -- [FIX IF ERROR] Move ::SHX_LABEL_56:: outside nested blocks until all 'goto SHX_LABEL_56' can see it
      ::SHX_LABEL_56::
      SHX7_2(SHX8_2, SHX9_2)
      SHX7_2 = BeginTextCommandSetBlipName
      SHX8_2 = "STRING"
      SHX7_2(SHX8_2)
      SHX7_2 = AddTextComponentSubstringPlayerName
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.getPlayerName
      SHX9_2 = SHX3_2
      SHX8_2, SHX9_2, SHX10_2 = SHX8_2(SHX9_2)
      SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX7_2 = EndTextCommandSetBlipName
      SHX8_2 = SHX2_2.blip
      SHX7_2(SHX8_2)
      SHX7_2 = SetBlipColour
      SHX8_2 = SHX2_2.blip
      SHX9_2 = SHX6_2
      SHX7_2(SHX8_2, SHX9_2)
    end
  end
  SHX6_2 = GetVehiclePedIsUsing
  SHX7_2 = SHX4_2
  SHX6_2 = SHX6_2(SHX7_2)
  if 0 == SHX6_2 then
    return
  end
  SHX7_2 = SHX7_1
  SHX8_2 = SHX2_2.hasBomb
  SHX9_2 = SHX6_2
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SHX6_1
  SHX8_2 = SHX6_2
  SHX7_2(SHX8_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getEventLocalPlayer
  SHX7_2 = SHX7_2()
  if SHX7_2 then
    SHX8_2 = SHX7_2.hasBomb
    if SHX8_2 then
      SHX8_2 = SHX2_2.hasBomb
      if not SHX8_2 then
        SHX8_2 = SHX14_1
        SHX9_2 = SHX6_2
        SHX10_2 = SHX1_2
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
        if SHX8_2 then
          SHX8_2 = TriggerServerEvent
          SHX9_2 = "a6af2d3e26"
          SHX10_2 = SHX2_2.source
          SHX8_2(SHX9_2, SHX10_2)
          SHX8_2 = ClearEntityLastDamageEntity
          SHX9_2 = SHX6_2
          SHX8_2(SHX9_2)
          SHX8_2 = ClearEntityLastDamageEntity
          SHX9_2 = SHX1_2
          SHX8_2(SHX9_2)
        end
      end
    end
  end
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getActiveEventPlayers
  SHX0_2 = SHX0_2()
  SHX0_2 = #SHX0_2
  SHX1_2 = currentEvent
  SHX1_2 = SHX1_2.players
  SHX1_2 = #SHX1_2
  SHX1_2 = SHX1_2 - SHX0_2
  SHX2_2 = SHX2_1.push
  SHX3_2 = "~y~ELIMINATED~w~"
  SHX4_2 = tostring
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SHX2_1.push
  SHX3_2 = "~y~REMAINING~w~"
  SHX4_2 = tostring
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX3_1
  SHX0_2()
  SHX0_2 = SHX2_1.reset
  SHX0_2()
  SHX0_2 = SHX16_1
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getEventLocalPlayer
  SHX0_2 = SHX0_2()
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetVehiclePedIsUsing
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    if SHX0_2 then
      SHX3_2 = SHX0_2.active
      if SHX3_2 then
        SHX3_2 = SetPedIntoVehicle
        SHX4_2 = SHX1_2
        SHX5_2 = SHX1_1.vehicle
        SHX6_2 = -1
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      end
    end
  else
    SHX3_2 = SHX1_1.vehicle
    if SHX2_2 ~= SHX3_2 then
      SHX1_1.vehicle = SHX2_2
    end
  end
  SHX3_2 = 0
  SHX4_2 = 5
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SetTyreTractionLossMultiplier
    SHX8_2 = SHX1_1.vehicle
    SHX9_2 = SHX6_2
    SHX10_2 = 0.0
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  end
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX1_1.vehicle
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetVehicleEngineOn
  SHX4_2 = SHX1_1.vehicle
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SetVehicleColours
  SHX4_2 = SHX1_1.vehicle
  SHX5_2 = SHX1_1.colour
  SHX6_2 = SHX1_1.colour
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = ipairs
  SHX4_2 = currentEvent
  SHX4_2 = SHX4_2.players
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX15_1
    SHX10_2 = SHX1_2
    SHX11_2 = SHX2_2
    SHX12_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  end
  if SHX0_2 then
    SHX3_2 = SHX0_2.active
    if SHX3_2 then
      SHX3_2 = DoesEntityExist
      SHX4_2 = SHX1_1.vehicle
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX3_2 = GetEntityHealth
        SHX4_2 = SHX1_2
        SHX3_2 = SHX3_2(SHX4_2)
        if not (SHX3_2 <= 10) then
          SHX3_2 = IsPedDeadOrDying
          SHX4_2 = SHX1_2
          SHX5_2 = false
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
          if not SHX3_2 then
            SHX3_2 = GetEntityHealth
            SHX4_2 = SHX1_1.vehicle
            SHX3_2 = SHX3_2(SHX4_2)
            if not (SHX3_2 <= 50) then
              goto SHX_LABEL_100
            end
          end
        end
      end
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "6756dab544"
      SHX3_2(SHX4_2)
      SHX0_2.active = false
      -- [FIX IF ERROR] Move ::SHX_LABEL_100:: outside nested blocks until all 'goto SHX_LABEL_100' can see it
      ::SHX_LABEL_100::
      SHX3_2 = GetEntityCoords
      SHX4_2 = SHX1_2
      SHX5_2 = true
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX4_2 = SHX8_1
      SHX5_2 = SHX3_2
      SHX4_2(SHX5_2)
      SHX4_2 = SetPlayerControl
      SHX5_2 = PlayerId
      SHX5_2 = SHX5_2()
      SHX6_2 = true
      SHX7_2 = 0
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX0_2.hasBomb
      if not SHX4_2 then
        SHX4_2 = SHX1_1.hasBoost
        if not SHX4_2 then
          goto SHX_LABEL_125
        end
      end
      SHX4_2 = SHX1_1.boostHandling
      if not SHX4_2 then
        SHX4_2 = SHX12_1
        SHX4_2()
        goto SHX_LABEL_130
        -- [FIX IF ERROR] Move ::SHX_LABEL_125:: outside nested blocks until all 'goto SHX_LABEL_125' can see it
        ::SHX_LABEL_125::
        SHX4_2 = SHX1_1.boostHandling
        if SHX4_2 then
          SHX4_2 = SHX13_1
          SHX4_2()
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_130:: outside nested blocks until all 'goto SHX_LABEL_130' can see it
      ::SHX_LABEL_130::
      SHX4_2 = SHX0_2.hasBomb
      if SHX4_2 then
        SHX4_2 = drawNativeText
        SHX5_2 = "You have the ~r~bomb~w~. Hit another ~y~vehicle~w~ to pass it on"
        SHX4_2(SHX5_2)
      else
        SHX4_2 = drawNativeText
        SHX5_2 = SHX11_1
        SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2()
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      end
  end
  else
    SHX3_2 = SHX1_1.boostCounter
    if SHX3_2 then
      SHX1_1.boostCounter = 0
    end
    SHX3_2 = drawNativeText
    SHX4_2 = SHX11_1
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2()
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
  SHX3_2 = SHX1_1.boostCounter
  if SHX3_2 then
    SHX3_2 = SHX1_1.boostCounter
    if SHX3_2 > 0 then
      SHX3_2 = SHX2_1.push
      SHX4_2 = "~b~BOOST TIME~w~"
      SHX5_2 = tostring
      SHX6_2 = SHX1_1.boostCounter
      SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2(SHX6_2)
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = SHX1_1.explosionCounter
  if SHX3_2 then
    SHX3_2 = SHX1_1.explosionCounter
    if SHX3_2 > 0 then
      SHX3_2 = SHX2_1.push
      SHX4_2 = "~r~EXPLOSION IN~w~"
      SHX5_2 = tostring
      SHX6_2 = SHX1_1.explosionCounter
      SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2(SHX6_2)
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = SHX2_1.draw
  SHX3_2()
end
SHX18_1 = RegisterNetEvent
SHX19_1 = "5335fd3810"
function SHX20_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX3_2 = currentEvent
  SHX3_2.drawPlayersTimeBar = false
  SHX3_2 = SetPlayerControl
  SHX4_2 = PlayerId
  SHX4_2 = SHX4_2()
  SHX5_2 = false
  SHX6_2 = 0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX9_1
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadClientRockstarMap
  SHX4_2 = SHX1_2
  SHX5_2 = false
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = SetEntityCoordsNoOffset
  SHX5_2 = SHX3_2
  SHX6_2 = SHX2_2.x
  SHX7_2 = SHX2_2.y
  SHX8_2 = SHX2_2.z
  SHX9_2 = true
  SHX10_2 = false
  SHX11_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX4_2 = SetEntityHeading
  SHX5_2 = SHX3_2
  SHX6_2 = SHX2_2.w
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = RequestScriptAudioBank
  SHX5_2 = "DLC_STUNT/STUNT_RACE_01"
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = RequestScriptAudioBank
  SHX5_2 = "DLC_STUNT/STUNT_RACE_02"
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = RequestScriptAudioBank
  SHX5_2 = "DLC_STUNT/STUNT_RACE_03"
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setEventMusic
  SHX5_2 = "AW_LOBBY_MUSIC_START"
  SHX4_2(SHX5_2)
  SHX4_2 = SHX1_1.particles
  if SHX4_2 then
    SHX4_2 = ipairs
    SHX5_2 = SHX1_1.particles
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.loadPtfx
      SHX11_2 = SHX9_2.asset
      SHX10_2(SHX11_2)
    end
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadPtfx
  SHX5_2 = "scr_ar_planes"
  SHX4_2(SHX5_2)
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "fa1dcbdb4d"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.stopEventSequence
  SHX1_2()
  SHX1_2 = BusyspinnerOff
  SHX1_2()
  SHX1_2 = SetPlayerControl
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX4_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetEntityVisible
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.startVehicleSelection
  SHX2_2 = SHX0_2.xyz
  SHX3_2 = SHX0_2.w
  SHX4_2 = SHX1_1.vehicles
  SHX5_2 = 20
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = TriggerServerEvent
    SHX2_3 = "977e3c099a"
    SHX3_3 = SHX0_3
    SHX1_3(SHX2_3, SHX3_3)
  end
  function SHX7_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX1_1.colour = SHX0_3
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_1.state = "SELECT"
  SHX1_1.position = SHX0_2
  while true do
    SHX1_2 = SHX1_1.state
    if "SELECT" ~= SHX1_2 then
      break
    end
    SHX1_2 = GetVehiclePedIsUsing
    SHX2_2 = PlayerPedId
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX2_2()
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    if 0 ~= SHX1_2 then
      SHX2_2 = FreezeEntityPosition
      SHX3_2 = SHX1_2
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "26fbaead36"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_1.state = "BEFORE_START"
  SHX0_2 = DoesEntityExist
  SHX1_2 = SHX1_1.vehicle
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = DeleteEntity
    SHX1_2 = SHX1_1.vehicle
    SHX0_2(SHX1_2)
  end
  SHX0_2 = pairs
  SHX1_2 = GetActivePlayers
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX1_2()
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SetEntityVisible
    SHX7_2 = GetPlayerPed
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = true
    SHX9_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  end
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThreadNow
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    while true do
      SHX0_3 = SHX1_1.state
      if "SELECT" ~= SHX0_3 then
        SHX0_3 = SHX1_1.state
        if "BEFORE_START" ~= SHX0_3 then
          break
        end
      end
      SHX0_3 = SHX3_1
      SHX0_3()
      SHX0_3 = GetVehiclePedIsUsing
      SHX1_3 = PlayerPedId
      SHX1_3, SHX2_3, SHX3_3 = SHX1_3()
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      if 0 ~= SHX0_3 then
        SHX1_3 = FreezeEntityPosition
        SHX2_3 = SHX0_3
        SHX3_3 = true
        SHX1_3(SHX2_3, SHX3_3)
      end
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
  end
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.endVehicleSelection
  SHX0_2()
  SHX0_2 = SetFollowPedCamViewMode
  SHX1_2 = 2
  SHX0_2(SHX1_2)
  SHX0_2 = SetGameplayCamRelativeHeading
  SHX1_2 = GetEntityHeading
  SHX2_2 = SHX1_1.vehicle
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX1_2(SHX2_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.enableMinigamePlayerBlips
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.enableMinigamePlayerTags
  SHX1_2 = true
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setMinigameBounds
  SHX1_2 = SHX1_1.bounds
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showCountdownTimer
  SHX1_2 = 3
  SHX0_2(SHX1_2)
  SHX0_2 = SHX1_1.state
  if "BEFORE_START" ~= SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setPlayerCanOpenLeaderboard
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX1_1.state = "START"
  while true do
    SHX0_2 = SHX1_1.state
    if "START" ~= SHX0_2 then
      break
    end
    SHX0_2 = SHX17_1
    SHX0_2()
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "263c039cf3"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = 0
  SHX1_1.explosionCounter = 5
  while true do
    SHX1_2 = SHX1_1.explosionCounter
    if not SHX1_2 then
      break
    end
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2 - SHX0_2
    SHX2_2 = 1000
    if SHX1_2 > SHX2_2 then
      SHX1_2 = SHX1_1.explosionCounter
      SHX1_2 = SHX1_2 - 1
      SHX1_1.explosionCounter = SHX1_2
      SHX1_2 = GetGameTimer
      SHX1_2 = SHX1_2()
      SHX0_2 = SHX1_2
      SHX1_2 = SHX1_1.explosionCounter
      if 0 == SHX1_2 then
        SHX1_1.explosionCounter = nil
        return
      else
        SHX1_2 = PlaySoundFrontend
        SHX2_2 = -1
        SHX3_2 = "Checkpoint_Buzz"
        SHX4_2 = "DLC_AW_Frontend_Sounds"
        SHX5_2 = false
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      end
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "134e3e09c1"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerColour
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = notify
  SHX4_2 = SHX2_2
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerName
  SHX6_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = " ~w~has been eliminated!"
  SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2
  SHX3_2(SHX4_2)
  SHX3_2 = ShakeGameplayCam
  SHX4_2 = "MEDIUM_EXPLOSION_SHAKE"
  SHX5_2 = 1.0
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = GetPlayerPed
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SetEntityHealth
  SHX5_2 = SHX3_2
  SHX6_2 = 0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = GetVehiclePedIsUsing
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if 0 ~= SHX4_2 then
    SHX5_2 = ExplodeVehicle
    SHX6_2 = SHX4_2
    SHX7_2 = true
    SHX8_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  end
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX3_2
  SHX7_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = 1
  SHX7_2 = 15
  SHX8_2 = 1
  for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2 = SHX5_2.x
    SHX11_2 = math
    SHX11_2 = SHX11_2.random
    SHX11_2 = SHX11_2()
    SHX11_2 = SHX11_2 - 0.5
    SHX11_2 = SHX11_2 * 8.0
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = SHX5_2.y
    SHX12_2 = math
    SHX12_2 = SHX12_2.random
    SHX12_2 = SHX12_2()
    SHX12_2 = SHX12_2 - 0.5
    SHX12_2 = SHX12_2 * 8.0
    SHX11_2 = SHX11_2 + SHX12_2
    SHX12_2 = SHX5_2.z
    SHX13_2 = math
    SHX13_2 = SHX13_2.random
    SHX13_2 = SHX13_2()
    SHX13_2 = SHX13_2 - 0.5
    SHX13_2 = SHX13_2 * 4.0
    SHX12_2 = SHX12_2 + SHX13_2
    SHX13_2 = AddExplosion
    SHX14_2 = SHX10_2
    SHX15_2 = SHX11_2
    SHX16_2 = SHX12_2
    SHX17_2 = 0
    SHX18_2 = 1.0
    SHX19_2 = true
    SHX20_2 = false
    SHX21_2 = 5.0
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "a300517b73"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = SHX1_1.boxes
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2.visible = false
  SHX3_2 = GetPlayerFromServerId
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if -1 == SHX3_2 then
    return
  end
  SHX4_2 = GetPlayerPed
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if 0 == SHX4_2 then
    return
  end
  SHX5_2 = GetVehiclePedIsUsing
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if 0 == SHX5_2 then
    return
  end
  SHX6_2 = PlayerPedId
  SHX6_2 = SHX6_2()
  if SHX4_2 == SHX6_2 then
    SHX6_2 = AnimpostfxPlay
    SHX7_2 = "MinigameEndNeutral"
    SHX8_2 = 0
    SHX9_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX6_2 = PlaySoundFrontend
    SHX7_2 = -1
    SHX8_2 = "Hit_1"
    SHX9_2 = "LONG_PLAYER_SWITCH_SOUNDS"
    SHX10_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX6_2 = GetGameTimer
    SHX6_2 = SHX6_2()
    SHX7_2 = SHX6_2
    SHX1_1.hasBoost = true
    SHX1_1.boostCounter = 20
    while true do
      SHX8_2 = GetGameTimer
      SHX8_2 = SHX8_2()
      SHX8_2 = SHX8_2 - SHX6_2
      SHX9_2 = 20000
      if not (SHX8_2 < SHX9_2) then
        break
      end
      SHX8_2 = SHX1_1.state
      if "START" ~= SHX8_2 then
        break
      end
      SHX8_2 = GetGameTimer
      SHX8_2 = SHX8_2()
      SHX8_2 = SHX8_2 - SHX7_2
      SHX9_2 = 1000
      if SHX8_2 >= SHX9_2 then
        SHX8_2 = GetGameTimer
        SHX8_2 = SHX8_2()
        SHX7_2 = SHX8_2
        SHX8_2 = SHX1_1.boostCounter
        SHX8_2 = SHX8_2 - 1
        SHX1_1.boostCounter = SHX8_2
      end
      SHX8_2 = Citizen
      SHX8_2 = SHX8_2.Wait
      SHX9_2 = 0
      SHX8_2(SHX9_2)
    end
    SHX1_1.hasBoost = false
    SHX1_1.boostCounter = nil
    SHX8_2 = SetVehicleCheatPowerIncrease
    SHX9_2 = SHX5_2
    SHX10_2 = 1.0
    SHX8_2(SHX9_2, SHX10_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "de2d0af415"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1.boxes
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2.visible = true
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "7d017cf727"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = ipairs
  SHX2_2 = currentEvent
  SHX2_2 = SHX2_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2.hasBomb = false
    SHX7_2 = ipairs
    SHX8_2 = SHX0_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = SHX6_2.source
      if SHX13_2 == SHX12_2 then
        SHX6_2.hasBomb = true
      end
    end
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "4322b11758"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = notify
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = " ~w~has been eliminated"
  SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2
  SHX2_2(SHX3_2)
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = Citizen
SHX18_1 = SHX18_1.CreateThread
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = "Pass The Bomb"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.registerMinigameCleanupHandler
  SHX2_2 = SHX0_2
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.enableMinigamePlayerBlips
    SHX1_3 = false
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.enableMinigamePlayerTags
    SHX1_3 = false
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = SHX1_1.boostHandling
    if SHX0_3 then
      SHX0_3 = SHX13_1
      SHX0_3()
    end
    SHX0_3 = DeleteEntity
    SHX1_3 = SHX1_1.vehicle
    SHX0_3(SHX1_3)
    SHX0_3 = ReleaseNamedScriptAudioBank
    SHX1_3 = "DLC_STUNT/STUNT_RACE_01"
    SHX0_3(SHX1_3)
    SHX0_3 = ReleaseNamedScriptAudioBank
    SHX1_3 = "DLC_STUNT/STUNT_RACE_02"
    SHX0_3(SHX1_3)
    SHX0_3 = ReleaseNamedScriptAudioBank
    SHX1_3 = "DLC_STUNT/STUNT_RACE_03"
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.setPlayerCanOpenLeaderboard
    SHX1_3 = false
    SHX0_3(SHX1_3)
    SHX0_3 = SHX1_1.particles
    if SHX0_3 then
      SHX0_3 = ipairs
      SHX1_3 = SHX1_1.particles
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = RemoveNamedPtfxAsset
        SHX7_3 = SHX5_3.asset
        SHX6_3(SHX7_3)
      end
    end
    SHX0_3 = RemoveNamedPtfxAsset
    SHX1_3 = "scr_ar_planes"
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.cleanupRockstarMaps
    SHX0_3()
    SHX0_3 = TriggerMusicEvent
    SHX1_3 = "BST_STOP"
    SHX0_3(SHX1_3)
    SHX0_3 = BusyspinnerOff
    SHX0_3()
    SHX0_3 = SetPlayerControl
    SHX1_3 = PlayerId
    SHX1_3 = SHX1_3()
    SHX2_3 = true
    SHX3_3 = 0
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = {}
    SHX1_1 = SHX0_3
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX18_1(SHX19_1)
