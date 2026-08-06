-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1
SHX0_1 = 0.1
SHX1_1 = 10000
SHX2_1 = "move_m@injured"
SHX3_1 = 110
SHX4_1 = false
SHX5_1 = false
SHX6_1 = false
SHX7_1 = {}
SHX8_1 = {}
SHX7_1.arm = SHX8_1
SHX8_1 = {}
SHX7_1.leg = SHX8_1
SHX8_1 = {}
SHX7_1.critical = SHX8_1
SHX8_1 = {}
SHX9_1 = {}
SHX10_1 = 61163
SHX9_1[1] = SHX10_1
SHX8_1.arm = SHX9_1
SHX9_1 = {}
SHX10_1 = 58271
SHX11_1 = 51826
SHX9_1[1] = SHX10_1
SHX9_1[2] = SHX11_1
SHX8_1.leg = SHX9_1
SHX9_1 = {}
SHX10_1 = 11816
SHX9_1[1] = SHX10_1
SHX8_1.critical = SHX9_1
SHX9_1 = {}
SHX10_1 = 45509
SHX9_1[SHX10_1] = true
SHX10_1 = 61163
SHX9_1[SHX10_1] = true
SHX10_1 = 18905
SHX9_1[SHX10_1] = true
SHX10_1 = 40269
SHX9_1[SHX10_1] = true
SHX10_1 = 28252
SHX9_1[SHX10_1] = true
SHX10_1 = 57005
SHX9_1[SHX10_1] = true
SHX10_1 = {}
SHX11_1 = 58271
SHX10_1[SHX11_1] = true
SHX11_1 = 63931
SHX10_1[SHX11_1] = true
SHX11_1 = 14201
SHX10_1[SHX11_1] = true
SHX11_1 = 51826
SHX10_1[SHX11_1] = true
SHX11_1 = 36864
SHX10_1[SHX11_1] = true
SHX11_1 = 52301
SHX10_1[SHX11_1] = true
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = ipairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX6_2 then
      SHX7_2 = DoesParticleFxLoopedExist
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = StopParticleFxLooped
        SHX8_2 = SHX6_2
        SHX9_2 = false
        SHX7_2(SHX8_2, SHX9_2)
      end
    end
  end
end
function SHX12_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  if 0 ~= SHX0_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX3_2 = "core"
  SHX4_2 = "blood_stab"
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadPtfx
  SHX6_2 = SHX3_2
  SHX5_2(SHX6_2)
  SHX5_2 = SHX8_1
  SHX5_2 = SHX5_2[SHX1_2]
  SHX6_2 = SHX2_2 or SHX6_2
  if not SHX2_2 then
    SHX6_2 = {}
  end
  SHX7_2 = ipairs
  SHX8_2 = SHX5_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    SHX13_2 = UseParticleFxAssetNextCall
    SHX14_2 = SHX3_2
    SHX13_2(SHX14_2)
    SHX13_2 = GetPedBoneIndex
    SHX14_2 = SHX0_2
    SHX15_2 = SHX12_2
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
    SHX14_2 = StartParticleFxLoopedOnPedBone
    SHX15_2 = SHX4_2
    SHX16_2 = SHX0_2
    SHX17_2 = 0.0
    SHX18_2 = 0.0
    SHX19_2 = 0.0
    SHX20_2 = 0.0
    SHX21_2 = 0.0
    SHX22_2 = 0.0
    SHX23_2 = SHX13_2
    SHX24_2 = 1.0
    SHX25_2 = false
    SHX26_2 = false
    SHX27_2 = false
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
    if SHX14_2 and 0 ~= SHX14_2 then
      SHX15_2 = SetParticleFxLoopedFarClipDist
      SHX16_2 = SHX14_2
      SHX17_2 = 150.0
      SHX15_2(SHX16_2, SHX17_2)
    end
    SHX15_2 = table
    SHX15_2 = SHX15_2.insert
    SHX16_2 = SHX6_2
    SHX17_2 = SHX14_2
    SHX15_2(SHX16_2, SHX17_2)
  end
  return SHX6_2
end
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  if 0 ~= SHX0_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX2_2 = "core"
  SHX3_2 = "ent_sht_blood"
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadPtfx
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
  SHX4_2 = SHX8_1.critical
  SHX5_2 = SHX1_2 or SHX5_2
  if not SHX1_2 then
    SHX5_2 = {}
  end
  SHX6_2 = ipairs
  SHX7_2 = SHX4_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = UseParticleFxAssetNextCall
    SHX13_2 = SHX2_2
    SHX12_2(SHX13_2)
    SHX12_2 = GetPedBoneIndex
    SHX13_2 = SHX0_2
    SHX14_2 = SHX11_2
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
    SHX13_2 = StartParticleFxLoopedOnPedBone
    SHX14_2 = SHX3_2
    SHX15_2 = SHX0_2
    SHX16_2 = 0.0
    SHX17_2 = 0.0
    SHX18_2 = 0.0
    SHX19_2 = 0.0
    SHX20_2 = 0.0
    SHX21_2 = 0.0
    SHX22_2 = SHX12_2
    SHX23_2 = 1.0
    SHX24_2 = false
    SHX25_2 = false
    SHX26_2 = false
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    if SHX13_2 and 0 ~= SHX13_2 then
      SHX14_2 = SetParticleFxLoopedFarClipDist
      SHX15_2 = SHX13_2
      SHX16_2 = 150.0
      SHX14_2(SHX15_2, SHX16_2)
    end
    SHX14_2 = table
    SHX14_2 = SHX14_2.insert
    SHX15_2 = SHX5_2
    SHX16_2 = SHX13_2
    SHX14_2(SHX15_2, SHX16_2)
  end
  return SHX5_2
end
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX7_1
  SHX2_2 = {}
  SHX1_2[SHX0_2] = SHX2_2
  SHX1_2 = SHX12_1
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2
  SHX4_2 = SHX7_1
  SHX4_2 = SHX4_2[SHX0_2]
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = {}
  SHX7_1.critical = SHX0_2
  SHX0_2 = SHX13_1
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX7_1.critical
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadClipSet
  SHX1_2 = SHX2_1
  SHX0_2(SHX1_2)
  SHX0_2 = SetPedMovementClipset
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX2_1
  SHX3_2 = 1.0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = RemoveClipSet
  SHX1_2 = SHX2_1
  SHX0_2(SHX1_2)
end
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX4_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = false
  SHX4_1 = SHX0_2
  SHX0_2 = false
  SHX5_1 = SHX0_2
  SHX0_2 = false
  SHX6_1 = SHX0_2
  SHX0_2 = SHX11_1
  SHX1_2 = SHX7_1.arm
  SHX0_2(SHX1_2)
  SHX0_2 = SHX11_1
  SHX1_2 = SHX7_1.leg
  SHX0_2(SHX1_2)
  SHX0_2 = SHX11_1
  SHX1_2 = SHX7_1.critical
  SHX0_2(SHX1_2)
  SHX0_2 = {}
  SHX7_1.arm = SHX0_2
  SHX0_2 = {}
  SHX7_1.leg = SHX0_2
  SHX0_2 = {}
  SHX7_1.critical = SHX0_2
  SHX0_2 = ResetPedMovementClipset
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = 1.0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "99b642e30b"
  SHX2_2 = false
  SHX3_2 = false
  SHX4_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_13
    end
  end
  SHX1_2 = nil
  SHX2_2 = nil
  return SHX1_2, SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX1_2 = GetPedLastDamageBone
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  if not SHX1_2 or not SHX2_2 then
    SHX3_2 = nil
    SHX4_2 = nil
    return SHX3_2, SHX4_2
  end
  SHX3_2 = SHX9_1
  SHX3_2 = SHX3_2[SHX2_2]
  if SHX3_2 then
    SHX3_2 = true
    SHX4_2 = false
    return SHX3_2, SHX4_2
  end
  SHX3_2 = SHX10_1
  SHX3_2 = SHX3_2[SHX2_2]
  if SHX3_2 then
    SHX3_2 = false
    SHX4_2 = true
    return SHX3_2, SHX4_2
  end
  SHX3_2 = nil
  SHX4_2 = nil
  return SHX3_2, SHX4_2
end
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = SHX4_1
  if SHX2_2 then
    return
  end
  SHX2_2 = true
  SHX4_1 = SHX2_2
  if nil ~= SHX0_2 and nil ~= SHX1_2 then
    SHX5_1 = SHX0_2
    SHX6_1 = SHX1_2
  else
    SHX2_2 = true
    SHX5_1 = SHX2_2
    SHX2_2 = false
    SHX6_1 = SHX2_2
  end
  SHX2_2 = SHX16_1
  SHX2_2()
  SHX2_2 = SHX5_1
  if SHX2_2 then
    SHX2_2 = SHX14_1
    SHX3_2 = "arm"
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX6_1
  if SHX2_2 then
    SHX2_2 = SHX14_1
    SHX3_2 = "leg"
    SHX2_2(SHX3_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  if 0 ~= SHX2_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = NetworkGetNetworkIdFromEntity
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        goto SHX_LABEL_48
      end
    end
  end
  SHX3_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_48:: outside nested blocks until all 'goto SHX_LABEL_48' can see it
  ::SHX_LABEL_48::
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "99b642e30b"
  SHX6_2 = true
  SHX7_2 = SHX5_1
  SHX8_2 = SHX6_1
  SHX9_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = notify
  SHX5_2 = "~r~You are bleeding, seek medical attention as soon as possible!"
  SHX4_2(SHX5_2)
end
SHX20_1 = CreateThread
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = 2000
    SHX0_2(SHX1_2)
    SHX0_2 = SHX4_1
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerPed
      SHX0_2 = SHX0_2()
      SHX1_2 = GetEntityHealth
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if 0 ~= SHX0_2 then
        SHX2_2 = IsEntityDead
        SHX3_2 = SHX0_2
        SHX2_2 = SHX2_2(SHX3_2)
        if not (SHX2_2 or SHX1_2 <= 100) then
          goto SHX_LABEL_25
        end
      end
      SHX2_2 = SHX17_1
      SHX2_2()
      goto SHX_LABEL_64
      -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
      ::SHX_LABEL_25::
      SHX2_2 = SHX3_1
      SHX2_2 = SHX1_2 <= SHX2_2
      SHX3_2 = SHX5_1
      if SHX3_2 then
        SHX3_2 = SHX11_1
        SHX4_2 = SHX7_1.arm
        SHX3_2(SHX4_2)
        SHX3_2 = SHX14_1
        SHX4_2 = "arm"
        SHX3_2(SHX4_2)
      end
      SHX3_2 = SHX6_1
      if SHX3_2 then
        SHX3_2 = SHX11_1
        SHX4_2 = SHX7_1.leg
        SHX3_2(SHX4_2)
        SHX3_2 = SHX14_1
        SHX4_2 = "leg"
        SHX3_2(SHX4_2)
      end
      if SHX2_2 then
        SHX3_2 = SHX11_1
        SHX4_2 = SHX7_1.critical
        SHX3_2(SHX4_2)
        SHX3_2 = SHX15_1
        SHX3_2()
      else
        SHX3_2 = SHX11_1
        SHX4_2 = SHX7_1.critical
        SHX3_2(SHX4_2)
        SHX3_2 = {}
        SHX7_1.critical = SHX3_2
      end
      SHX3_2 = SHX16_1
      SHX3_2()
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
    ::SHX_LABEL_64::
  end
end
SHX20_1(SHX21_1)
SHX20_1 = CreateThread
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = SHX1_1
    SHX0_2(SHX1_2)
    SHX0_2 = SHX4_1
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerPed
      SHX0_2 = SHX0_2()
      if 0 ~= SHX0_2 then
        SHX1_2 = IsEntityDead
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        if not SHX1_2 then
          SHX1_2 = GetEntityHealth
          SHX2_2 = SHX0_2
          SHX1_2 = SHX1_2(SHX2_2)
          if not (SHX1_2 <= 100) then
            goto SHX_LABEL_25
          end
        end
      end
      SHX1_2 = SHX17_1
      SHX1_2()
      goto SHX_LABEL_42
      -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
      ::SHX_LABEL_25::
      SHX1_2 = GetEntityHealth
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = math
      SHX2_2 = SHX2_2.max
      SHX3_2 = 100
      SHX4_2 = SHX1_2 - 1
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX3_2 = SetEntityHealth
      SHX4_2 = SHX0_2
      SHX5_2 = SHX2_2
      SHX3_2(SHX4_2, SHX5_2)
      if SHX2_2 <= 100 then
        SHX3_2 = SHX17_1
        SHX3_2()
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_42:: outside nested blocks until all 'goto SHX_LABEL_42' can see it
    ::SHX_LABEL_42::
  end
end
SHX20_1(SHX21_1)
SHX20_1 = AddEventHandler
SHX21_1 = "91ac1508c7"
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientFaction
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isClientClockedOnOrganisation
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      goto SHX_LABEL_24
    end
  end
  SHX0_2 = math
  SHX0_2 = SHX0_2.random
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX0_1
  if SHX0_2 < SHX1_2 then
    SHX0_2 = CreateThread
    function SHX1_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
      SHX0_3 = SHX18_1
      SHX0_3, SHX1_3 = SHX0_3()
      SHX2_3 = SHX19_1
      SHX3_3 = SHX0_3
      SHX4_3 = SHX1_3
      SHX2_3(SHX3_3, SHX4_3)
    end
    SHX0_2(SHX1_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_24:: outside nested blocks until all 'goto SHX_LABEL_24' can see it
  ::SHX_LABEL_24::
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = {}
SHX21_1 = 15
SHX22_1 = RegisterNetEvent
SHX23_1 = "b8bd2bf5c8"
function SHX24_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX5_2 = GetPlayerServerId
  SHX6_2 = PlayerId
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX6_2()
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  if SHX0_2 == SHX5_2 then
    return
  end
  if SHX1_2 and SHX4_2 and 0 ~= SHX4_2 then
    SHX6_2 = {}
    SHX6_2.fromArm = SHX2_2
    SHX6_2.fromLeg = SHX3_2
    SHX6_2.pedNetId = SHX4_2
    SHX7_2 = {}
    SHX6_2.arm = SHX7_2
    SHX7_2 = {}
    SHX6_2.leg = SHX7_2
    SHX7_2 = {}
    SHX6_2.critical = SHX7_2
    SHX6_2.retries = 0
    SHX7_2 = SHX20_1
    SHX7_2[SHX0_2] = SHX6_2
    SHX7_2 = NetworkDoesEntityExistWithNetworkId
    SHX8_2 = SHX4_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX8_2 = NetworkGetEntityFromNetworkId
      SHX9_2 = SHX4_2
      SHX8_2 = SHX8_2(SHX9_2)
      SHX9_2 = DoesEntityExist
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if SHX9_2 then
        SHX9_2 = IsEntityDead
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        SHX9_2 = 0 ~= SHX8_2 and SHX9_2
      end
      if SHX9_2 then
        SHX10_2 = GetEntityHealth
        SHX11_2 = SHX8_2
        SHX10_2 = SHX10_2(SHX11_2)
        SHX11_2 = SHX3_1
        SHX11_2 = SHX10_2 <= SHX11_2
        if SHX2_2 then
          SHX12_2 = SHX12_1
          SHX13_2 = SHX8_2
          SHX14_2 = "arm"
          SHX15_2 = SHX6_2.arm
          SHX12_2(SHX13_2, SHX14_2, SHX15_2)
        end
        if SHX3_2 then
          SHX12_2 = SHX12_1
          SHX13_2 = SHX8_2
          SHX14_2 = "leg"
          SHX15_2 = SHX6_2.leg
          SHX12_2(SHX13_2, SHX14_2, SHX15_2)
        end
        if SHX11_2 then
          SHX12_2 = SHX13_1
          SHX13_2 = SHX8_2
          SHX14_2 = SHX6_2.critical
          SHX12_2(SHX13_2, SHX14_2)
        end
        SHX6_2.retries = 0
      end
    end
  else
    SHX6_2 = SHX20_1
    SHX6_2 = SHX6_2[SHX0_2]
    if SHX6_2 then
      SHX7_2 = SHX11_1
      SHX8_2 = SHX6_2.arm
      SHX7_2(SHX8_2)
      SHX7_2 = SHX11_1
      SHX8_2 = SHX6_2.leg
      SHX7_2(SHX8_2)
      SHX7_2 = SHX11_1
      SHX8_2 = SHX6_2.critical
      SHX7_2(SHX8_2)
      SHX7_2 = SHX20_1
      SHX7_2[SHX0_2] = nil
    end
  end
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = CreateThread
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = 2000
    SHX0_2(SHX1_2)
    SHX0_2 = pairs
    SHX1_2 = SHX20_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = SHX5_2.pedNetId
      if not SHX6_2 or 0 == SHX6_2 then
        SHX7_2 = SHX20_1
        SHX7_2[SHX4_2] = nil
      else
        SHX7_2 = NetworkDoesEntityExistWithNetworkId
        SHX8_2 = SHX6_2
        SHX7_2 = SHX7_2(SHX8_2)
        if not SHX7_2 then
          SHX7_2 = SHX5_2.retries
          if not SHX7_2 then
            SHX7_2 = 0
          end
          SHX7_2 = SHX7_2 + 1
          SHX5_2.retries = SHX7_2
          SHX7_2 = SHX5_2.retries
          if not SHX7_2 then
            SHX7_2 = 0
          end
          SHX8_2 = SHX21_1
          if SHX7_2 >= SHX8_2 then
            SHX7_2 = SHX20_1
            SHX7_2[SHX4_2] = nil
          end
        else
          SHX7_2 = NetworkGetEntityFromNetworkId
          SHX8_2 = SHX6_2
          SHX7_2 = SHX7_2(SHX8_2)
          if 0 ~= SHX7_2 then
            SHX8_2 = DoesEntityExist
            SHX9_2 = SHX7_2
            SHX8_2 = SHX8_2(SHX9_2)
            if SHX8_2 then
              SHX8_2 = IsEntityDead
              SHX9_2 = SHX7_2
              SHX8_2 = SHX8_2(SHX9_2)
              if not SHX8_2 then
                goto SHX_LABEL_56
              end
            end
          end
          SHX8_2 = SHX20_1
          SHX8_2[SHX4_2] = nil
          goto SHX_LABEL_105
          -- [FIX IF ERROR] Move ::SHX_LABEL_56:: outside nested blocks until all 'goto SHX_LABEL_56' can see it
          ::SHX_LABEL_56::
          SHX8_2 = GetEntityHealth
          SHX9_2 = SHX7_2
          SHX8_2 = SHX8_2(SHX9_2)
          SHX9_2 = SHX3_1
          SHX9_2 = SHX8_2 <= SHX9_2
          SHX10_2 = SHX11_1
          SHX11_2 = SHX5_2.arm
          SHX10_2(SHX11_2)
          SHX10_2 = SHX11_1
          SHX11_2 = SHX5_2.leg
          SHX10_2(SHX11_2)
          SHX10_2 = SHX11_1
          SHX11_2 = SHX5_2.critical
          SHX10_2(SHX11_2)
          SHX10_2 = {}
          SHX5_2.arm = SHX10_2
          SHX10_2 = {}
          SHX5_2.leg = SHX10_2
          SHX10_2 = {}
          SHX5_2.critical = SHX10_2
          SHX10_2 = SHX5_2.fromArm
          if SHX10_2 then
            SHX10_2 = SHX12_1
            SHX11_2 = SHX7_2
            SHX12_2 = "arm"
            SHX13_2 = SHX5_2.arm
            SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          end
          SHX10_2 = SHX5_2.fromLeg
          if SHX10_2 then
            SHX10_2 = SHX12_1
            SHX11_2 = SHX7_2
            SHX12_2 = "leg"
            SHX13_2 = SHX5_2.leg
            SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          end
          if SHX9_2 then
            SHX10_2 = SHX13_1
            SHX11_2 = SHX7_2
            SHX12_2 = SHX5_2.critical
            SHX10_2(SHX11_2, SHX12_2)
          end
          SHX5_2.retries = 0
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_105:: outside nested blocks until all 'goto SHX_LABEL_105' can see it
      ::SHX_LABEL_105::
    end
  end
end
SHX22_1(SHX23_1)
SHX22_1 = CreateThread
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = 500
    SHX0_2(SHX1_2)
    SHX0_2 = SHX4_1
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerPed
      SHX0_2 = SHX0_2()
      if 0 ~= SHX0_2 then
        SHX1_2 = IsEntityDead
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        if not SHX1_2 then
          SHX1_2 = GetEntityHealth
          SHX2_2 = SHX0_2
          SHX1_2 = SHX1_2(SHX2_2)
          if not (SHX1_2 <= 100) then
            goto SHX_LABEL_24
          end
        end
      end
      SHX1_2 = SHX17_1
      SHX1_2()
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_24:: outside nested blocks until all 'goto SHX_LABEL_24' can see it
    ::SHX_LABEL_24::
  end
end
SHX22_1(SHX23_1)
SHX22_1 = CMG
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX17_1
  SHX0_2()
end
SHX22_1.stopBleeding = SHX23_1
SHX22_1 = CMG
SHX22_1 = SHX22_1.RegisterClientCallback
SHX23_1 = "79d0fa347c"
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX1_2 = SHX4_1
  SHX0_2.bleeding = SHX1_2
  SHX1_2 = SHX5_1
  SHX0_2.fromArm = SHX1_2
  SHX1_2 = SHX6_1
  SHX0_2.fromLeg = SHX1_2
  return SHX0_2
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "5dc72f6904"
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX17_1
  SHX0_2()
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = CMG
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1
  SHX0_2()
end
SHX22_1.startBleeding = SHX23_1
SHX22_1 = CMG
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  return SHX0_2
end
SHX22_1.isBleeding = SHX23_1
