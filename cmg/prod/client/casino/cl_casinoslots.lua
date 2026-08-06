-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_casinoslots"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = nil
SHX3_1 = 0
SHX4_1 = nil
SHX5_1 = 0
SHX6_1 = false
SHX7_1 = 1
SHX8_1 = nil
SHX9_1 = nil
SHX10_1 = 0
SHX11_1 = 0
SHX12_1 = false
SHX13_1 = 0
SHX14_1 = RMenu
SHX14_1 = SHX14_1.Add
SHX15_1 = "cmgslots"
SHX16_1 = "instructions"
SHX17_1 = RageUI
SHX17_1 = SHX17_1.CreateMenu
SHX18_1 = ""
SHX19_1 = ""
SHX20_1 = CMG
SHX20_1 = SHX20_1.getRageUIMenuWidth
SHX20_1 = SHX20_1()
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuHeight
SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1 = SHX21_1()
SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX14_1 = RMenu
SHX15_1 = SHX14_1
SHX14_1 = SHX14_1.Get
SHX16_1 = "cmgslots"
SHX17_1 = "instructions"
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = SHX14_1
SHX14_1 = SHX14_1.SetSubtitle
SHX16_1 = "~b~SLOTS"
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RageUI
SHX14_1 = SHX14_1.CreateWhile
SHX15_1 = 1.0
SHX16_1 = RMenu
SHX17_1 = SHX16_1
SHX16_1 = SHX16_1.Get
SHX18_1 = "cmgslots"
SHX19_1 = "instructions"
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX17_1 = nil
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgslots"
  SHX4_2 = "instructions"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = SHX0_1.locations
    SHX1_3 = SHX9_1
    SHX0_3 = SHX0_3[SHX1_3]
    if not SHX0_3 then
      return
    end
    SHX1_3 = SHX0_3.machines
    SHX2_3 = SHX10_1
    SHX1_3 = SHX1_3[SHX2_3]
    if SHX1_3 then
      SHX2_3 = SHX0_1.machineTypes
      SHX3_3 = SHX1_3.type
      SHX2_3 = SHX2_3[SHX3_3]
      SHX3_3 = RageUI
      SHX3_3 = SHX3_3.Separator
      SHX4_3 = "~y~Minimum Bet: "
      SHX5_3 = getMoneyStringFormatted
      SHX6_3 = SHX2_3.minBet
      SHX5_3 = SHX5_3(SHX6_3)
      SHX6_3 = "k"
      SHX4_3 = SHX4_3 .. SHX5_3 .. SHX6_3
      SHX3_3(SHX4_3)
      SHX3_3 = RageUI
      SHX3_3 = SHX3_3.Separator
      SHX4_3 = "The payouts displayed on the front of the"
      SHX3_3(SHX4_3)
      SHX3_3 = RageUI
      SHX3_3 = SHX3_3.Separator
      SHX4_3 = "machine are based on the minimum bet."
      SHX3_3(SHX4_3)
      SHX3_3 = "\194\163"
      SHX4_3 = pairs
      SHX5_3 = SHX2_3.betRanges
      SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX4_3(SHX5_3)
      for SHX8_3, SHX9_3 in SHX4_3, SHX5_3, SHX6_3, SHX7_3 do
        if SHX8_3 > 1 then
          SHX10_3 = SHX3_3
          SHX11_3 = ", \194\163"
          SHX10_3 = SHX10_3 .. SHX11_3
          SHX3_3 = SHX10_3
        end
        SHX10_3 = SHX3_3
        SHX11_3 = getMoneyStringFormatted
        SHX12_3 = math
        SHX12_3 = SHX12_3.floor
        SHX13_3 = SHX9_3
        SHX12_3, SHX13_3 = SHX12_3(SHX13_3)
        SHX11_3 = SHX11_3(SHX12_3, SHX13_3)
        SHX12_3 = "k"
        SHX10_3 = SHX10_3 .. SHX11_3 .. SHX12_3
        SHX3_3 = SHX10_3
      end
      SHX4_3 = RageUI
      SHX4_3 = SHX4_3.Separator
      SHX5_3 = "Bets: "
      SHX6_3 = SHX3_3
      SHX5_3 = SHX5_3 .. SHX6_3
      SHX4_3(SHX5_3)
    end
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1)
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = SHX0_1.machineTypes
  SHX3_2 = SHX0_2.type
  SHX2_2 = SHX2_2[SHX3_2]
  if SHX2_2 then
    SHX3_2 = PlaySoundFromCoord
    SHX4_2 = -1
    SHX5_2 = SHX1_2
    SHX6_2 = SHX0_2.position
    SHX6_2 = SHX6_2.x
    SHX7_2 = SHX0_2.position
    SHX7_2 = SHX7_2.y
    SHX8_2 = SHX0_2.position
    SHX8_2 = SHX8_2.z
    SHX9_2 = SHX2_2.soundName
    SHX10_2 = false
    SHX11_2 = 20.0
    SHX12_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
function SHX15_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = true
  SHX6_1 = SHX3_2
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3
    SHX0_3 = 1
    SHX1_3 = SHX2_2
    if SHX1_3 then
      SHX1_3 = 4
      if SHX1_3 then
        goto SHX_LABEL_9
      end
    end
    SHX1_3 = 1
    -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
    ::SHX_LABEL_9::
    SHX2_3 = 1
    for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
      SHX4_3 = NetworkCreateSynchronisedScene
      SHX5_3 = SHX0_2.x
      SHX6_3 = SHX0_2.y
      SHX7_3 = SHX0_2.z
      SHX8_3 = 0.0
      SHX9_3 = 0.0
      SHX10_3 = SHX1_2
      SHX11_3 = 2
      SHX12_3 = true
      SHX13_3 = true
      SHX14_3 = 1065353216
      SHX15_3 = 0
      SHX16_3 = 1065353216
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
      SHX5_3 = CMG
      SHX5_3 = SHX5_3.loadAnimDict
      SHX6_3 = SHX0_1.defaultAnimDict
      SHX5_3(SHX6_3)
      SHX5_3 = NetworkAddPedToSynchronisedScene
      SHX6_3 = PlayerPedId
      SHX6_3 = SHX6_3()
      SHX7_3 = SHX4_3
      SHX8_3 = SHX0_1.defaultAnimDict
      SHX9_3 = SHX0_1.idleAnims
      SHX10_3 = SHX7_1
      SHX9_3 = SHX9_3[SHX10_3]
      SHX10_3 = 2.0
      SHX11_3 = -2.0
      SHX12_3 = 13
      SHX13_3 = 16
      SHX14_3 = 1148846080
      SHX15_3 = 0
      SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      SHX5_3 = NetworkStartSynchronisedScene
      SHX6_3 = SHX4_3
      SHX5_3(SHX6_3)
      SHX5_3 = Wait
      SHX6_3 = 250
      SHX5_3(SHX6_3)
    end
    SHX0_3 = false
    SHX6_1 = SHX0_3
  end
  SHX3_2(SHX4_2)
end
function SHX16_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX4_2 = NetworkCreateSynchronisedScene
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.z
  SHX8_2 = SHX1_2.x
  SHX9_2 = SHX1_2.y
  SHX10_2 = SHX1_2.z
  SHX11_2 = 2
  SHX12_2 = true
  SHX13_2 = true
  SHX14_2 = 1065353216
  SHX15_2 = 0
  SHX16_2 = 1065353216
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX5_2 = NetworkAddPedToSynchronisedScene
  SHX6_2 = PlayerPedId
  SHX6_2 = SHX6_2()
  SHX7_2 = SHX4_2
  SHX8_2 = SHX2_2
  SHX9_2 = SHX3_2
  SHX10_2 = 2.0
  SHX11_2 = -2.0
  SHX12_2 = 13
  SHX13_2 = 16
  SHX14_2 = 1148846080
  SHX15_2 = 0
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX5_2 = NetworkStartSynchronisedScene
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  return SHX4_2
end
SHX17_1 = RegisterNetEvent
SHX18_1 = "a23eeaa566"
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = true
  SHX6_1 = SHX2_2
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.setCanAnim
  SHX3_2 = false
  SHX2_2(SHX3_2)
  SHX2_2 = SHX0_1.locations
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2 = SHX2_2.machines
  SHX2_2 = SHX2_2[SHX1_2]
  SHX3_2 = SHX0_1.machineTypes
  SHX4_2 = SHX2_2.type
  SHX3_2 = SHX3_2[SHX4_2]
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getModelGender
  SHX4_2 = SHX4_2()
  if "male" == SHX4_2 then
    SHX4_2 = SHX0_1.defaultAnimDict
    if SHX4_2 then
      goto SHX_LABEL_23
    end
  end
  SHX4_2 = "anim_casino_a@amb@casino@games@slots@female"
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  SHX5_2 = SHX0_1.enterAnims
  SHX6_2 = math
  SHX6_2 = SHX6_2.random
  SHX7_2 = 1
  SHX8_2 = SHX0_1.enterAnims
  SHX8_2 = #SHX8_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX5_2 = SHX5_2[SHX6_2]
  SHX6_2 = SHX2_2.position
  SHX7_2 = SHX2_2.rotation
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.loadAnimDict
  SHX9_2 = SHX4_2
  SHX8_2(SHX9_2)
  SHX8_2 = SHX16_1
  SHX9_2 = SHX6_2
  SHX10_2 = SHX7_2
  SHX11_2 = SHX4_2
  SHX12_2 = SHX5_2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = RemoveAnimDict
  SHX10_2 = SHX4_2
  SHX9_2(SHX10_2)
  SHX9_2 = 1
  SHX5_1 = SHX9_2
  SHX9_1 = SHX0_2
  SHX10_1 = SHX1_2
  SHX9_2 = Scaleform
  SHX10_2 = "SLOT_MACHINE"
  SHX9_2 = SHX9_2(SHX10_2)
  SHX2_1 = SHX9_2
  SHX9_2 = SHX2_1.RunFunction
  SHX10_2 = "SET_THEME"
  SHX11_2 = {}
  SHX12_2 = SHX3_2.theme
  SHX11_2[1] = SHX12_2
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = SHX2_1.RunFunction
  SHX10_2 = "SET_MESSAGE"
  SHX11_2 = {}
  SHX12_2 = SHX0_1.slotMessages
  SHX13_2 = math
  SHX13_2 = SHX13_2.random
  SHX14_2 = 1
  SHX15_2 = SHX0_1.slotMessages
  SHX15_2 = #SHX15_2
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
  SHX12_2 = SHX12_2[SHX13_2]
  SHX11_2[1] = SHX12_2
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = SHX2_1.RunFunction
  SHX10_2 = "SET_BET"
  SHX11_2 = {}
  SHX12_2 = SHX3_2.betRanges
  SHX13_2 = SHX5_1
  SHX12_2 = SHX12_2[SHX13_2]
  SHX11_2[1] = SHX12_2
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = string
  SHX9_2 = SHX9_2.format
  SHX10_2 = "machine_%s"
  SHX11_2 = SHX3_2.scriptRenderTarget
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX4_1 = SHX9_2
  SHX9_2 = IsNamedRendertargetRegistered
  SHX10_2 = SHX4_1
  SHX9_2 = SHX9_2(SHX10_2)
  if not SHX9_2 then
    SHX9_2 = RegisterNamedRendertarget
    SHX10_2 = SHX4_1
    SHX11_2 = false
    SHX9_2(SHX10_2, SHX11_2)
  end
  SHX9_2 = IsNamedRendertargetLinked
  SHX10_2 = SHX3_2.model
  SHX9_2 = SHX9_2(SHX10_2)
  if not SHX9_2 then
    SHX9_2 = LinkNamedRendertarget
    SHX10_2 = SHX3_2.model
    SHX9_2(SHX10_2)
  end
  SHX9_2 = IsNamedRendertargetRegistered
  SHX10_2 = SHX4_1
  SHX9_2 = SHX9_2(SHX10_2)
  if SHX9_2 then
    SHX9_2 = GetNamedRendertargetRenderId
    SHX10_2 = SHX4_1
    SHX9_2 = SHX9_2(SHX10_2)
    SHX3_1 = SHX9_2
  end
  SHX9_2 = TriggerServerEvent
  SHX10_2 = "30d25f6895"
  SHX11_2 = SHX9_1
  SHX12_2 = SHX10_1
  SHX13_2 = "welcome_stinger"
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX9_2 = Citizen
  SHX9_2 = SHX9_2.Wait
  SHX10_2 = math
  SHX10_2 = SHX10_2.floor
  SHX11_2 = GetAnimDuration
  SHX12_2 = SHX4_2
  SHX13_2 = SHX5_2
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SHX11_2 * 1000
  SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX10_2(SHX11_2)
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX9_2 = NetworkStopSynchronisedScene
  SHX10_2 = SHX8_2
  SHX9_2(SHX10_2)
  SHX9_2 = false
  SHX6_1 = SHX9_2
  SHX9_2 = math
  SHX9_2 = SHX9_2.random
  SHX10_2 = 1
  SHX11_2 = SHX0_1.idleAnims
  SHX11_2 = #SHX11_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX7_1 = SHX9_2
  SHX9_2 = SHX15_1
  SHX10_2 = SHX6_2
  SHX11_2 = SHX7_2.z
  SHX12_2 = true
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = RequestScaleformMovie
  SHX10_2 = "INSTRUCTIONAL_BUTTONS"
  SHX9_2 = SHX9_2(SHX10_2)
  while true do
    SHX10_2 = HasScaleformMovieLoaded
    SHX11_2 = SHX9_2
    SHX10_2 = SHX10_2(SHX11_2)
    if SHX10_2 then
      break
    end
    SHX10_2 = Citizen
    SHX10_2 = SHX10_2.Wait
    SHX11_2 = 0
    SHX10_2(SHX11_2)
  end
  SHX8_1 = SHX9_2
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = RegisterNetEvent
SHX18_1 = "3facf9a0c0"
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = true
  SHX6_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getModelGender
  SHX0_2 = SHX0_2()
  if "male" == SHX0_2 then
    SHX0_2 = SHX0_1.defaultAnimDict
    if SHX0_2 then
      goto SHX_LABEL_12
    end
  end
  SHX0_2 = "anim_casino_a@amb@casino@games@slots@female"
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = SHX0_1.exitAnims
  SHX2_2 = math
  SHX2_2 = SHX2_2.random
  SHX3_2 = 1
  SHX4_2 = SHX0_1.exitAnims
  SHX4_2 = #SHX4_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX0_1.locations
  SHX3_2 = SHX9_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.machines
  SHX3_2 = SHX10_1
  SHX2_2 = SHX2_2[SHX3_2]
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX2_2.position
  SHX4_2 = vector3
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = SHX2_2.heading
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadAnimDict
  SHX6_2 = SHX0_2
  SHX5_2(SHX6_2)
  SHX5_2 = NetworkCreateSynchronisedScene
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX3_2.z
  SHX9_2 = SHX4_2.x
  SHX10_2 = SHX4_2.y
  SHX11_2 = SHX4_2.z
  SHX12_2 = 2
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = 1065353216
  SHX16_2 = 0
  SHX17_2 = 1065353216
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX6_2 = NetworkAddPedToSynchronisedScene
  SHX7_2 = PlayerPedId
  SHX7_2 = SHX7_2()
  SHX8_2 = SHX5_2
  SHX9_2 = SHX0_2
  SHX10_2 = SHX1_2
  SHX11_2 = 2.0
  SHX12_2 = -2.0
  SHX13_2 = 13
  SHX14_2 = 16
  SHX15_2 = 1148846080
  SHX16_2 = 0
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX6_2 = NetworkStartSynchronisedScene
  SHX7_2 = SHX5_2
  SHX6_2(SHX7_2)
  SHX6_2 = RemoveAnimDict
  SHX7_2 = SHX0_2
  SHX6_2(SHX7_2)
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.Wait
  SHX7_2 = math
  SHX7_2 = SHX7_2.floor
  SHX8_2 = GetAnimDuration
  SHX9_2 = SHX0_2
  SHX10_2 = SHX1_2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SHX8_2 * 1000
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX7_2(SHX8_2)
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX6_2 = NetworkStopSynchronisedScene
  SHX7_2 = SHX5_2
  SHX6_2(SHX7_2)
  SHX6_2 = false
  SHX6_1 = SHX6_2
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.setCanAnim
  SHX7_2 = true
  SHX6_2(SHX7_2)
end
SHX17_1(SHX18_1, SHX19_1)
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX0_2.locationName
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX0_2.index
  SHX1_2 = SHX1_2[SHX2_2]
  if not SHX1_2 then
    SHX1_2 = SHX10_1
    if 0 == SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = GetFrameCount
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX11_1
  if SHX2_2 == SHX1_2 then
    return
  end
  SHX11_1 = SHX1_2
  SHX2_2 = SHX0_1.machineTypes
  SHX3_2 = SHX0_2.config
  SHX3_2 = SHX3_2.type
  SHX2_2 = SHX2_2[SHX3_2]
  SHX3_2 = drawNativeNotification
  SHX4_2 = "Press ~INPUT_CONTEXT~ to play "
  SHX5_2 = SHX2_2.name
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX3_2(SHX4_2)
  SHX3_2 = IsControlJustPressed
  SHX4_2 = 0
  SHX5_2 = 51
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = false
    SHX12_1 = SHX3_2
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "a23eeaa566"
    SHX5_2 = SHX0_2.locationName
    SHX6_2 = SHX0_2.index
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = RequestScriptAudioBank
  SHX2_2 = "DLC_VINEWOOD\\CASINO_SLOT_MACHINES_01"
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = RequestScriptAudioBank
  SHX2_2 = "DLC_VINEWOOD\\CASINO_SLOT_MACHINES_02"
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = RequestScriptAudioBank
  SHX2_2 = "DLC_VINEWOOD\\CASINO_SLOT_MACHINES_03"
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "0f1e83fac2"
  SHX3_2 = SHX0_2.locationName
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.locationConfig
  SHX2_2 = SHX2_2.machines
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.createArea
    SHX8_2 = string
    SHX8_2 = SHX8_2.format
    SHX9_2 = "casinoslots_location_%s_slot_%s"
    SHX10_2 = SHX0_2.locationName
    SHX11_2 = SHX5_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX9_2 = SHX6_2.chairPosition
    SHX10_2 = 1.5
    SHX11_2 = 5.0
    function SHX12_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
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
    SHX14_2 = SHX17_1
    SHX15_2 = {}
    SHX16_2 = SHX0_2.locationName
    SHX15_2.locationName = SHX16_2
    SHX15_2.index = SHX5_2
    SHX15_2.config = SHX6_2
    SHX15_2.object = 0
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.locationConfig
  SHX2_2 = SHX2_2.machines
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.removeArea
    SHX7_2 = string
    SHX7_2 = SHX7_2.format
    SHX8_2 = "casinoslots_location_%s_slot_%s"
    SHX9_2 = SHX0_2.locationName
    SHX10_2 = SHX5_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
  SHX1_2 = pairs
  SHX3_2 = SHX0_2.locationName
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = TriggerEvent
    SHX7_2 = "f586b5b9f2"
    SHX8_2 = SHX0_2.locationName
    SHX9_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  end
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "acbad0c220"
  SHX3_2 = SHX0_2.locationName
  SHX1_2(SHX2_2, SHX3_2)
end
SHX20_1 = Citizen
SHX20_1 = SHX20_1.CreateThread
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.locations
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createArea
    SHX7_2 = string
    SHX7_2 = SHX7_2.format
    SHX8_2 = "casinoslots_location_%s"
    SHX9_2 = SHX4_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = SHX5_2.centerPosition
    SHX9_2 = SHX5_2.eventRadius
    SHX10_2 = SHX5_2.eventRadius
    SHX11_2 = SHX18_1
    SHX12_2 = SHX19_1
    function SHX13_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX14_2 = {}
    SHX14_2.locationName = SHX4_2
    SHX14_2.locationConfig = SHX5_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
end
SHX20_1(SHX21_1)
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX0_2.objects
  if SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX0_2.objects
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = DeleteEntity
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
end
SHX21_1 = RegisterNetEvent
SHX22_1 = "d555389281"
function SHX23_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2 = SHX3_2[SHX1_2]
  if SHX3_2 then
    return
  end
  SHX3_2 = SHX0_1.locations
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2 = SHX3_2.machines
  SHX3_2 = SHX3_2[SHX1_2]
  SHX4_2 = SHX0_1.machineTypes
  SHX5_2 = SHX3_2.type
  SHX4_2 = SHX4_2[SHX5_2]
  SHX5_2 = {}
  SHX6_2 = pairs
  SHX7_2 = SHX3_2.reelPositions
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = CMG
    SHX12_2 = SHX12_2.loadModel
    SHX13_2 = SHX4_2.reelA
    SHX12_2(SHX13_2)
    SHX12_2 = CreateObjectNoOffset
    SHX13_2 = SHX4_2.reelA
    SHX14_2 = SHX11_2.x
    SHX15_2 = SHX11_2.y
    SHX16_2 = SHX11_2.z
    SHX17_2 = false
    SHX18_2 = false
    SHX19_2 = false
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX13_2 = SetModelAsNoLongerNeeded
    SHX14_2 = SHX4_2.reelA
    SHX13_2(SHX14_2)
    SHX13_2 = FreezeEntityPosition
    SHX14_2 = SHX12_2
    SHX15_2 = true
    SHX13_2(SHX14_2, SHX15_2)
    SHX13_2 = SHX2_2.reelRotations
    SHX13_2 = SHX13_2[SHX10_2]
    SHX14_2 = SetEntityRotation
    SHX15_2 = SHX12_2
    SHX16_2 = SHX13_2.x
    SHX17_2 = SHX13_2.y
    SHX18_2 = SHX13_2.z
    SHX19_2 = 2
    SHX20_2 = false
    SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX14_2 = table
    SHX14_2 = SHX14_2.insert
    SHX15_2 = SHX5_2
    SHX16_2 = SHX12_2
    SHX14_2(SHX15_2, SHX16_2)
  end
  SHX6_2 = SHX1_1
  SHX6_2 = SHX6_2[SHX0_2]
  SHX6_2 = SHX6_2[SHX1_2]
  if SHX6_2 then
    SHX6_2 = SHX20_1
    SHX7_2 = SHX1_1
    SHX7_2 = SHX7_2[SHX0_2]
    SHX7_2 = SHX7_2[SHX1_2]
    SHX6_2(SHX7_2)
  end
  SHX2_2.objects = SHX5_2
  SHX6_2 = SHX1_1
  SHX6_2 = SHX6_2[SHX0_2]
  SHX6_2[SHX1_2] = SHX2_2
end
SHX21_1(SHX22_1, SHX23_1)
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = SHX2_1.RunFunction
    SHX1_2 = "SET_BET"
    SHX2_2 = {}
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = SHX2_1.RunFunction
    SHX1_2 = "SET_LAST_WIN"
    SHX2_2 = {}
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = SHX2_1.RunFunction
    SHX1_2 = "SET_MESSAGE"
    SHX2_2 = {}
    SHX3_2 = ""
    SHX2_2[1] = SHX3_2
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = SetScaleformMovieAsNoLongerNeeded
    SHX1_2 = SHX2_1.Handle
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SetScaleformMovieAsNoLongerNeeded
  SHX1_2 = SHX8_1
  SHX0_2(SHX1_2)
  SHX0_2 = ReleaseNamedRendertarget
  SHX1_2 = SHX4_1
  SHX0_2(SHX1_2)
  SHX0_2 = nil
  SHX2_1 = SHX0_2
  SHX0_2 = nil
  SHX8_1 = SHX0_2
  SHX0_2 = 0
  SHX3_1 = SHX0_2
  SHX0_2 = nil
  SHX4_1 = SHX0_2
  SHX0_2 = 0
  SHX10_1 = SHX0_2
  SHX0_2 = nil
  SHX9_1 = SHX0_2
  SHX0_2 = false
  SHX12_1 = SHX0_2
end
SHX22_1 = RegisterNetEvent
SHX23_1 = "f586b5b9f2"
function SHX24_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2 = SHX2_2[SHX1_2]
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX20_1
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = SHX2_2.playerSrc
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getLocalPlayerSrc
  SHX4_2 = SHX4_2()
  if SHX3_2 == SHX4_2 then
    SHX3_2 = SHX21_1
    SHX3_2()
  end
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2[SHX1_2] = nil
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = tCMG
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = SHX0_1.locations
  SHX1_2 = SHX9_1
  SHX0_2 = SHX0_2[SHX1_2]
  SHX0_2 = SHX0_2.machines
  SHX1_2 = SHX10_1
  SHX0_2 = SHX0_2[SHX1_2]
  if not SHX0_2 then
    return
  end
  SHX1_2 = true
  SHX6_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = SHX0_1.defaultAnimDict
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_1.pullLeverAnims
  SHX2_2 = math
  SHX2_2 = SHX2_2.random
  SHX3_2 = 1
  SHX4_2 = SHX0_1.pullLeverAnims
  SHX4_2 = #SHX4_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = TaskPlayAnim
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX0_1.defaultAnimDict
  SHX5_2 = SHX1_2[1]
  SHX6_2 = 3.0
  SHX7_2 = 11.0
  SHX8_2 = -1
  SHX9_2 = 48
  SHX10_2 = 0
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2 = GetAnimDuration
  SHX3_2 = SHX0_1.defaultAnimDict
  SHX4_2 = SHX1_2[1]
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX1_2[2]
  if SHX3_2 then
    SHX3_2 = SHX0_1.machineTypes
    SHX4_2 = SHX0_2.type
    SHX3_2 = SHX3_2[SHX4_2]
    SHX4_2 = GetClosestObjectOfType
    SHX5_2 = SHX0_2.position
    SHX5_2 = SHX5_2.x
    SHX6_2 = SHX0_2.position
    SHX6_2 = SHX6_2.y
    SHX7_2 = SHX0_2.position
    SHX7_2 = SHX7_2.z
    SHX8_2 = 1.0
    SHX9_2 = SHX3_2.model
    SHX10_2 = false
    SHX11_2 = false
    SHX12_2 = false
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX5_2 = PlayEntityAnim
    SHX6_2 = SHX4_2
    SHX7_2 = SHX1_2[2]
    SHX8_2 = SHX0_1.defaultAnimDict
    SHX9_2 = 1000.0
    SHX10_2 = false
    SHX11_2 = true
    SHX12_2 = true
    SHX13_2 = 0
    SHX14_2 = 136704
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = SHX2_2 * 320
    SHX5_2(SHX6_2)
  end
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = SHX2_2 * 180
  SHX3_2(SHX4_2)
  SHX3_2 = RemoveAnimDict
  SHX4_2 = SHX0_1.defaultAnimDict
  SHX3_2(SHX4_2)
  SHX3_2 = false
  SHX6_1 = SHX3_2
end
SHX22_1.playCasinoSlotMachineAnim = SHX23_1
SHX22_1 = RegisterNetEvent
SHX23_1 = "fe417ebf1e"
function SHX24_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX4_2 = SHX1_1
  SHX4_2 = SHX4_2[SHX0_2]
  SHX4_2 = SHX4_2[SHX1_2]
  if not SHX4_2 then
    return
  end
  SHX5_2 = SHX0_1.locations
  SHX5_2 = SHX5_2[SHX0_2]
  SHX5_2 = SHX5_2.machines
  SHX5_2 = SHX5_2[SHX1_2]
  SHX6_2 = SHX0_1.machineTypes
  SHX7_2 = SHX5_2.type
  SHX6_2 = SHX6_2[SHX7_2]
  SHX7_2 = SHX14_1
  SHX8_2 = SHX5_2
  SHX9_2 = "start_spin"
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = {}
  SHX8_2 = pairs
  SHX9_2 = SHX4_2.objects
  SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
  for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
    SHX14_2 = SetEntityVisible
    SHX15_2 = SHX13_2
    SHX16_2 = false
    SHX17_2 = false
    SHX14_2(SHX15_2, SHX16_2, SHX17_2)
    SHX14_2 = CMG
    SHX14_2 = SHX14_2.loadModel
    SHX15_2 = SHX6_2.reelB
    SHX14_2(SHX15_2)
    SHX14_2 = GetEntityCoords
    SHX15_2 = SHX13_2
    SHX16_2 = true
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
    SHX15_2 = CreateObjectNoOffset
    SHX16_2 = SHX6_2.reelB
    SHX17_2 = SHX14_2.x
    SHX18_2 = SHX14_2.y
    SHX19_2 = SHX14_2.z
    SHX20_2 = false
    SHX21_2 = false
    SHX22_2 = false
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX16_2 = SetModelAsNoLongerNeeded
    SHX17_2 = SHX6_2.reelB
    SHX16_2(SHX17_2)
    SHX16_2 = FreezeEntityPosition
    SHX17_2 = SHX15_2
    SHX18_2 = true
    SHX16_2(SHX17_2, SHX18_2)
    SHX16_2 = SetEntityRotation
    SHX17_2 = SHX15_2
    SHX18_2 = 0.0
    SHX19_2 = 0.0
    SHX20_2 = SHX5_2.heading
    SHX21_2 = 2
    SHX22_2 = false
    SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX16_2 = table
    SHX16_2 = SHX16_2.insert
    SHX17_2 = SHX7_2
    SHX18_2 = SHX15_2
    SHX16_2(SHX17_2, SHX18_2)
  end
  SHX8_2 = SHX14_1
  SHX9_2 = SHX5_2
  SHX10_2 = "spinning"
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = GetGameTimer
  SHX8_2 = SHX8_2()
  SHX9_2 = pairs
  SHX10_2 = SHX2_2
  SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
  for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
    while true do
      SHX15_2 = GetGameTimer
      SHX15_2 = SHX15_2()
      SHX15_2 = SHX15_2 - SHX8_2
      if not (SHX14_2 > SHX15_2) then
        break
      end
      SHX15_2 = SHX13_2
      SHX16_2 = 3
      SHX17_2 = 1
      for SHX18_2 = SHX15_2, SHX16_2, SHX17_2 do
        SHX19_2 = SetEntityRotation
        SHX20_2 = SHX7_2[SHX18_2]
        SHX21_2 = math
        SHX21_2 = SHX21_2.random
        SHX22_2 = 0
        SHX23_2 = 15
        SHX21_2 = SHX21_2(SHX22_2, SHX23_2)
        SHX21_2 = SHX21_2 * 22.5
        SHX22_2 = math
        SHX22_2 = SHX22_2.random
        SHX23_2 = 1
        SHX24_2 = 60
        SHX22_2 = SHX22_2(SHX23_2, SHX24_2)
        SHX21_2 = SHX21_2 + SHX22_2
        SHX22_2 = 0.0
        SHX23_2 = SHX5_2.heading
        SHX24_2 = 2
        SHX25_2 = true
        SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
      end
      SHX15_2 = Citizen
      SHX15_2 = SHX15_2.Wait
      SHX16_2 = 0
      SHX15_2(SHX16_2)
    end
    SHX15_2 = SetEntityVisible
    SHX16_2 = SHX7_2[SHX13_2]
    SHX17_2 = false
    SHX18_2 = false
    SHX15_2(SHX16_2, SHX17_2, SHX18_2)
    SHX15_2 = DeleteEntity
    SHX16_2 = SHX7_2[SHX13_2]
    SHX15_2(SHX16_2)
    SHX15_2 = SetEntityVisible
    SHX16_2 = SHX4_2.objects
    SHX16_2 = SHX16_2[SHX13_2]
    SHX17_2 = true
    SHX18_2 = true
    SHX15_2(SHX16_2, SHX17_2, SHX18_2)
    SHX15_2 = SetEntityRotation
    SHX16_2 = SHX4_2.objects
    SHX16_2 = SHX16_2[SHX13_2]
    SHX17_2 = SHX3_2[SHX13_2]
    SHX17_2 = SHX17_2 * 22.5
    SHX18_2 = 0.0
    SHX19_2 = SHX5_2.heading
    SHX20_2 = 2
    SHX21_2 = true
    SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX15_2 = SHX3_2[SHX13_2]
    SHX16_2 = math
    SHX16_2 = SHX16_2.floor
    SHX17_2 = SHX3_2[SHX13_2]
    SHX16_2 = SHX16_2(SHX17_2)
    if SHX15_2 == SHX16_2 then
      SHX15_2 = SHX14_1
      SHX16_2 = SHX5_2
      SHX17_2 = "wheel_stop_clunk"
      SHX15_2(SHX16_2, SHX17_2)
    else
      SHX15_2 = SHX14_1
      SHX16_2 = SHX5_2
      SHX17_2 = "wheel_stop_on_prize"
      SHX15_2(SHX16_2, SHX17_2)
    end
  end
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "a3c45ed113"
function SHX24_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if 0 == SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~You lost \194\163"
    SHX5_2 = getMoneyStringFormatted
    SHX6_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX4_2 = SHX4_2 .. SHX5_2
    SHX3_2(SHX4_2)
  else
    SHX3_2 = notify
    SHX4_2 = "~g~You won \194\163"
    SHX5_2 = getMoneyStringFormatted
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX4_2 = SHX4_2 .. SHX5_2
    SHX3_2(SHX4_2)
  end
  SHX3_2 = SHX2_1
  if SHX3_2 and SHX2_2 > 0 then
    SHX3_2 = SHX2_1.RunFunction
    SHX4_2 = "SET_LAST_WIN"
    SHX5_2 = {}
    SHX6_2 = math
    SHX6_2 = SHX6_2.floor
    SHX7_2 = SHX2_2
    SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
    SHX5_2[1] = SHX6_2
    SHX5_2[2] = SHX7_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SHX0_1.locations
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2 = SHX3_2.machines
  SHX4_2 = SHX10_1
  SHX3_2 = SHX3_2[SHX4_2]
  if SHX3_2 then
    SHX4_2 = SHX15_1
    SHX5_2 = SHX3_2.position
    SHX6_2 = SHX3_2.heading
    SHX7_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "30d25f6895"
function SHX24_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX0_1.locations
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2 = SHX3_2.machines
  SHX3_2 = SHX3_2[SHX1_2]
  if SHX3_2 then
    SHX4_2 = SHX14_1
    SHX5_2 = SHX3_2
    SHX6_2 = SHX2_2
    SHX4_2(SHX5_2, SHX6_2)
  end
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = AddEventHandler
SHX23_1 = "onResourceStop"
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 == SHX0_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX1_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = pairs
      SHX8_2 = SHX6_2
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
      for SHX11_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
        SHX12_2 = TriggerEvent
        SHX13_2 = "f586b5b9f2"
        SHX14_2 = SHX5_2
        SHX15_2 = SHX11_2
        SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      end
    end
  end
end
SHX22_1(SHX23_1, SHX24_1)
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.IsAnyMenuVisible
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = N_0x32f34ff7f617643b
      SHX1_2 = SHX2_1.Handle
      SHX2_2 = 1
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = SetTextRenderId
      SHX1_2 = SHX3_1
      SHX0_2(SHX1_2)
      SHX0_2 = SetScriptGfxDrawOrder
      SHX1_2 = 4
      SHX0_2(SHX1_2)
      SHX0_2 = SetScriptGfxDrawBehindPausemenu
      SHX1_2 = true
      SHX0_2(SHX1_2)
      SHX0_2 = DrawScaleformMovie
      SHX1_2 = SHX2_1.Handle
      SHX2_2 = 0.401
      SHX3_2 = 0.09
      SHX4_2 = 0.805
      SHX5_2 = 0.195
      SHX6_2 = 255
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX0_2 = SetTextRenderId
      SHX1_2 = GetDefaultScriptRendertargetRenderId
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX1_2()
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX0_2 = SetScriptGfxDrawBehindPausemenu
      SHX1_2 = false
      SHX0_2(SHX1_2)
    end
  end
end
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = BeginTextCommandScaleformString
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringKeyboardDisplay
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandScaleformString
  SHX1_2()
end
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX8_1
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.IsAnyMenuVisible
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = BeginScaleformMovieMethod
      SHX1_2 = SHX8_1
      SHX2_2 = "CLEAR_ALL"
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = EndScaleformMovieMethod
      SHX0_2()
      SHX0_2 = BeginScaleformMovieMethod
      SHX1_2 = SHX8_1
      SHX2_2 = "SET_CLEAR_SPACE"
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = ScaleformMovieMethodAddParamInt
      SHX1_2 = 200
      SHX0_2(SHX1_2)
      SHX0_2 = EndScaleformMovieMethod
      SHX0_2()
      SHX0_2 = BeginScaleformMovieMethod
      SHX1_2 = SHX8_1
      SHX2_2 = "SET_DATA_SLOT"
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = ScaleformMovieMethodAddParamInt
      SHX1_2 = 0
      SHX0_2(SHX1_2)
      SHX0_2 = SHX24_1
      SHX1_2 = GetControlInstructionalButton
      SHX2_2 = 0
      SHX3_2 = 202
      SHX4_2 = true
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX0_2 = SHX23_1
      SHX1_2 = "Exit"
      SHX0_2(SHX1_2)
      SHX0_2 = EndScaleformMovieMethod
      SHX0_2()
      SHX0_2 = BeginScaleformMovieMethod
      SHX1_2 = SHX8_1
      SHX2_2 = "SET_DATA_SLOT"
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = ScaleformMovieMethodAddParamInt
      SHX1_2 = 1
      SHX0_2(SHX1_2)
      SHX0_2 = SHX24_1
      SHX1_2 = GetControlInstructionalButton
      SHX2_2 = 0
      SHX3_2 = 201
      SHX4_2 = true
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX0_2 = SHX23_1
      SHX1_2 = "Spin"
      SHX0_2(SHX1_2)
      SHX0_2 = EndScaleformMovieMethod
      SHX0_2()
      SHX0_2 = BeginScaleformMovieMethod
      SHX1_2 = SHX8_1
      SHX2_2 = "SET_DATA_SLOT"
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = ScaleformMovieMethodAddParamInt
      SHX1_2 = 2
      SHX0_2(SHX1_2)
      SHX0_2 = SHX24_1
      SHX1_2 = GetControlInstructionalButton
      SHX2_2 = 0
      SHX3_2 = 121
      SHX4_2 = true
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX0_2 = SHX23_1
      SHX1_2 = "Toggle AutoSpin"
      SHX0_2(SHX1_2)
      SHX0_2 = EndScaleformMovieMethod
      SHX0_2()
      SHX0_2 = BeginScaleformMovieMethod
      SHX1_2 = SHX8_1
      SHX2_2 = "SET_DATA_SLOT"
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = ScaleformMovieMethodAddParamInt
      SHX1_2 = 3
      SHX0_2(SHX1_2)
      SHX0_2 = SHX24_1
      SHX1_2 = GetControlInstructionalButton
      SHX2_2 = 0
      SHX3_2 = 44
      SHX4_2 = true
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX0_2 = SHX23_1
      SHX1_2 = "Decrease Bet"
      SHX0_2(SHX1_2)
      SHX0_2 = EndScaleformMovieMethod
      SHX0_2()
      SHX0_2 = BeginScaleformMovieMethod
      SHX1_2 = SHX8_1
      SHX2_2 = "SET_DATA_SLOT"
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = ScaleformMovieMethodAddParamInt
      SHX1_2 = 4
      SHX0_2(SHX1_2)
      SHX0_2 = SHX24_1
      SHX1_2 = GetControlInstructionalButton
      SHX2_2 = 0
      SHX3_2 = 38
      SHX4_2 = true
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX0_2 = SHX23_1
      SHX1_2 = "Increase Bet"
      SHX0_2(SHX1_2)
      SHX0_2 = EndScaleformMovieMethod
      SHX0_2()
      SHX0_2 = BeginScaleformMovieMethod
      SHX1_2 = SHX8_1
      SHX2_2 = "SET_DATA_SLOT"
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = ScaleformMovieMethodAddParamInt
      SHX1_2 = 5
      SHX0_2(SHX1_2)
      SHX0_2 = SHX24_1
      SHX1_2 = GetControlInstructionalButton
      SHX2_2 = 0
      SHX3_2 = 224
      SHX4_2 = true
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX0_2 = SHX23_1
      SHX1_2 = "View Instructions"
      SHX0_2(SHX1_2)
      SHX0_2 = EndScaleformMovieMethod
      SHX0_2()
      SHX0_2 = BeginScaleformMovieMethod
      SHX1_2 = SHX8_1
      SHX2_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = EndScaleformMovieMethod
      SHX0_2()
      SHX0_2 = BeginScaleformMovieMethod
      SHX1_2 = SHX8_1
      SHX2_2 = "SET_BACKGROUND_COLOUR"
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = ScaleformMovieMethodAddParamInt
      SHX1_2 = 0
      SHX0_2(SHX1_2)
      SHX0_2 = ScaleformMovieMethodAddParamInt
      SHX1_2 = 0
      SHX0_2(SHX1_2)
      SHX0_2 = ScaleformMovieMethodAddParamInt
      SHX1_2 = 0
      SHX0_2(SHX1_2)
      SHX0_2 = ScaleformMovieMethodAddParamInt
      SHX1_2 = 80
      SHX0_2(SHX1_2)
      SHX0_2 = EndScaleformMovieMethod
      SHX0_2()
      SHX0_2 = DrawScaleformMovieFullscreen
      SHX1_2 = SHX8_1
      SHX2_2 = 255
      SHX3_2 = 255
      SHX4_2 = 255
      SHX5_2 = 255
      SHX6_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    end
  end
end
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX22_1
  SHX0_2()
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.InvokeNative
  SHX1_2 = 104270002799462160
  SHX2_2 = 518572876
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 121
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = SHX12_1
    SHX0_2 = not SHX0_2
    SHX12_1 = SHX0_2
    SHX0_2 = notify
    SHX1_2 = SHX12_1
    if SHX1_2 then
      SHX1_2 = "~g~"
      if SHX1_2 then
        goto SHX_LABEL_25
      end
    end
    SHX1_2 = "~r~"
    -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
    ::SHX_LABEL_25::
    SHX2_2 = "Automatic spinning "
    SHX3_2 = SHX12_1
    if SHX3_2 then
      SHX3_2 = "enabled"
      if SHX3_2 then
        goto SHX_LABEL_33
      end
    end
    SHX3_2 = "disabled"
    -- [FIX IF ERROR] Move ::SHX_LABEL_33:: outside nested blocks until all 'goto SHX_LABEL_33' can see it
    ::SHX_LABEL_33::
    SHX1_2 = SHX1_2 .. SHX2_2 .. SHX3_2
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX12_1
  if SHX0_2 then
    SHX0_2 = drawNativeNotification
    SHX1_2 = [[
Automatic spinning is enabled.
Press ~INPUT_VEH_FLY_ATTACK_CAMERA~ to stop.]]
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX6_1
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX0_1.locations
  SHX1_2 = SHX9_1
  SHX0_2 = SHX0_2[SHX1_2]
  SHX0_2 = SHX0_2.machines
  SHX1_2 = SHX10_1
  SHX0_2 = SHX0_2[SHX1_2]
  SHX1_2 = SHX0_1.machineTypes
  SHX2_2 = SHX0_2.type
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX25_1
  SHX2_2()
  SHX2_2 = IsControlJustPressed
  SHX3_2 = 0
  SHX4_2 = 202
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "3facf9a0c0"
    SHX4_2 = SHX9_1
    SHX5_2 = SHX10_1
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
  SHX2_2 = false
  SHX3_2 = SHX12_1
  if SHX3_2 then
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX13_1
    SHX3_2 = SHX3_2 - SHX4_2
    SHX4_2 = 1000
    if SHX3_2 > SHX4_2 then
      SHX3_2 = GetGameTimer
      SHX3_2 = SHX3_2()
      SHX13_1 = SHX3_2
      SHX2_2 = true
    end
  end
  SHX3_2 = IsControlJustPressed
  SHX4_2 = 0
  SHX5_2 = 201
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 or SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "fe417ebf1e"
    SHX5_2 = SHX9_1
    SHX6_2 = SHX10_1
    SHX7_2 = SHX5_1
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
  SHX3_2 = IsControlJustPressed
  SHX4_2 = 0
  SHX5_2 = 38
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = SHX5_1
    SHX4_2 = SHX1_2.betRanges
    SHX4_2 = #SHX4_2
    if SHX3_2 < SHX4_2 then
      SHX3_2 = SHX5_1
      SHX3_2 = SHX3_2 + 1
      SHX5_1 = SHX3_2
      SHX3_2 = SHX2_1
      if SHX3_2 then
        SHX3_2 = SHX2_1.RunFunction
        SHX4_2 = "SET_BET"
        SHX5_2 = {}
        SHX6_2 = SHX1_2.betRanges
        SHX7_2 = SHX5_1
        SHX6_2 = SHX6_2[SHX7_2]
        SHX5_2[1] = SHX6_2
        SHX3_2(SHX4_2, SHX5_2)
      end
    end
    SHX3_2 = SHX5_1
    SHX4_2 = SHX1_2.betRanges
    SHX4_2 = #SHX4_2
    if SHX3_2 == SHX4_2 then
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "30d25f6895"
      SHX5_2 = SHX9_1
      SHX6_2 = SHX10_1
      SHX7_2 = "place_max_bet"
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    else
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "30d25f6895"
      SHX5_2 = SHX9_1
      SHX6_2 = SHX10_1
      SHX7_2 = "place_bet"
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    end
  end
  SHX3_2 = IsControlJustPressed
  SHX4_2 = 0
  SHX5_2 = 44
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = SHX5_1
    if SHX3_2 > 1 then
      SHX3_2 = SHX5_1
      SHX3_2 = SHX3_2 - 1
      SHX5_1 = SHX3_2
      SHX3_2 = SHX2_1
      if SHX3_2 then
        SHX3_2 = SHX2_1.RunFunction
        SHX4_2 = "SET_BET"
        SHX5_2 = {}
        SHX6_2 = SHX1_2.betRanges
        SHX7_2 = SHX5_1
        SHX6_2 = SHX6_2[SHX7_2]
        SHX5_2[1] = SHX6_2
        SHX3_2(SHX4_2, SHX5_2)
      end
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "30d25f6895"
      SHX5_2 = SHX9_1
      SHX6_2 = SHX10_1
      SHX7_2 = "place_bet"
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    end
  end
  SHX3_2 = IsControlJustPressed
  SHX4_2 = 0
  SHX5_2 = 224
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = RMenu
    SHX4_2 = SHX3_2
    SHX3_2 = SHX3_2.Get
    SHX5_2 = "cmgslots"
    SHX6_2 = "instructions"
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    if SHX3_2 then
      SHX5_2 = SHX3_2
      SHX4_2 = SHX3_2.SetSpriteBanner
      SHX6_2 = SHX1_2.textureName
      SHX7_2 = SHX1_2.textureName
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = RageUI
      SHX4_2 = SHX4_2.Visible
      SHX5_2 = SHX3_2
      SHX6_2 = RageUI
      SHX6_2 = SHX6_2.Visible
      SHX7_2 = SHX3_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX6_2 = not SHX6_2
      SHX4_2(SHX5_2, SHX6_2)
    end
  end
end
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX9_1
  if SHX0_2 then
    SHX0_2 = SHX10_1
    if 0 ~= SHX0_2 then
      SHX1_2 = SHX9_1
      SHX0_2 = SHX1_1
      SHX0_2 = SHX0_2[SHX1_2]
      SHX1_2 = SHX10_1
      SHX0_2 = SHX0_2[SHX1_2]
      if SHX0_2 then
        SHX1_2 = SHX26_1
        SHX1_2()
      end
    end
  end
end
SHX28_1 = CMG
SHX28_1 = SHX28_1.createThreadOnTick
SHX29_1 = SHX27_1
SHX30_1 = "Casino Slots Tick"
SHX28_1(SHX29_1, SHX30_1)
SHX28_1 = {}
SHX29_1 = -1932041857
SHX28_1[SHX29_1] = "AngelAndTheKnight"
SHX29_1 = -1519644200
SHX28_1[SHX29_1] = "ImpotentRage"
SHX29_1 = -430989390
SHX28_1[SHX29_1] = "RepublicanSpaceRangers"
SHX29_1 = 654385216
SHX28_1[SHX29_1] = "FameOrShame"
SHX29_1 = 161343630
SHX28_1[SHX29_1] = "DeityOfTheSun"
SHX29_1 = 1096374064
SHX28_1[SHX29_1] = "KnifeAfterDark"
SHX29_1 = 207578973
SHX28_1[SHX29_1] = "TheDiamond"
SHX29_1 = -487222358
SHX28_1[SHX29_1] = "Evacuator"
SHX29_1 = CMG
SHX29_1 = SHX29_1.registerCommand
SHX30_1 = "saveslotmachines"
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDevMode
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = vector3
  SHX1_2 = 0.0
  SHX2_2 = 0.0
  SHX3_2 = 0.0
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = GetGamePool
  SHX4_2 = "CObject"
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX3_2(SHX4_2)
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = GetEntityModel
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = SHX28_1
    SHX9_2 = SHX9_2[SHX8_2]
    if SHX9_2 then
      SHX9_2 = table
      SHX9_2 = SHX9_2.insert
      SHX10_2 = SHX1_2
      SHX11_2 = {}
      SHX12_2 = SHX7_2
      SHX13_2 = SHX8_2
      SHX14_2 = GetEntityCoords
      SHX15_2 = SHX7_2
      SHX16_2 = true
      SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX14_2(SHX15_2, SHX16_2)
      SHX11_2[1] = SHX12_2
      SHX11_2[2] = SHX13_2
      SHX11_2[3] = SHX14_2
      SHX11_2[4] = SHX15_2
      SHX11_2[5] = SHX16_2
      SHX11_2[6] = SHX17_2
      SHX11_2[7] = SHX18_2
      SHX11_2[8] = SHX19_2
      SHX11_2[9] = SHX20_2
      SHX11_2[10] = SHX21_2
      SHX11_2[11] = SHX22_2
      SHX11_2[12] = SHX23_2
      SHX11_2[13] = SHX24_2
      SHX9_2(SHX10_2, SHX11_2)
    end
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.sort
  SHX3_2 = SHX1_2
  function SHX4_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3
    SHX2_3 = SHX0_3[3]
    SHX3_3 = SHX0_2
    SHX2_3 = SHX2_3 - SHX3_3
    SHX2_3 = #SHX2_3
    SHX3_3 = SHX1_3[3]
    SHX4_3 = SHX0_2
    SHX3_3 = SHX3_3 - SHX4_3
    SHX3_3 = #SHX3_3
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ""
  SHX3_2 = pairs
  SHX4_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = table
    SHX9_2 = SHX9_2.unpack
    SHX10_2 = SHX8_2
    SHX9_2, SHX10_2, SHX11_2 = SHX9_2(SHX10_2)
    SHX12_2 = GetEntityMatrix
    SHX13_2 = SHX9_2
    SHX12_2, SHX13_2 = SHX12_2(SHX13_2)
    SHX14_2 = SHX12_2 * 0.042
    SHX15_2 = vector3
    SHX16_2 = SHX11_2.x
    SHX17_2 = SHX11_2.y
    SHX18_2 = SHX11_2.z
    SHX18_2 = SHX18_2 + 1.106
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
    SHX15_2 = SHX15_2 + SHX14_2
    SHX16_2 = SHX13_2 * -0.115
    SHX15_2 = SHX15_2 + SHX16_2
    SHX16_2 = vector3
    SHX17_2 = SHX11_2.x
    SHX18_2 = SHX11_2.y
    SHX19_2 = SHX11_2.z
    SHX19_2 = SHX19_2 + 1.106
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2)
    SHX16_2 = SHX16_2 + SHX14_2
    SHX17_2 = SHX13_2 * 0.005
    SHX16_2 = SHX16_2 + SHX17_2
    SHX17_2 = vector3
    SHX18_2 = SHX11_2.x
    SHX19_2 = SHX11_2.y
    SHX20_2 = SHX11_2.z
    SHX20_2 = SHX20_2 + 1.106
    SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2)
    SHX17_2 = SHX17_2 + SHX14_2
    SHX18_2 = SHX13_2 * 0.125
    SHX17_2 = SHX17_2 + SHX18_2
    SHX18_2 = SHX12_2 * 0.8
    SHX18_2 = SHX11_2 - SHX18_2
    SHX19_2 = SHX2_2
    SHX20_2 = [[
{
	]]
    SHX19_2 = SHX19_2 .. SHX20_2
    SHX2_2 = SHX19_2
    SHX19_2 = SHX2_2
    SHX20_2 = "type = \""
    SHX21_2 = SHX28_1
    SHX21_2 = SHX21_2[SHX10_2]
    SHX22_2 = [[
",
	]]
    SHX19_2 = SHX19_2 .. SHX20_2 .. SHX21_2 .. SHX22_2
    SHX2_2 = SHX19_2
    SHX19_2 = SHX2_2
    SHX20_2 = "position = "
    SHX21_2 = tostring
    SHX22_2 = SHX11_2
    SHX21_2 = SHX21_2(SHX22_2)
    SHX22_2 = [[
,
	]]
    SHX19_2 = SHX19_2 .. SHX20_2 .. SHX21_2 .. SHX22_2
    SHX2_2 = SHX19_2
    SHX19_2 = SHX2_2
    SHX20_2 = "chairPosition = "
    SHX21_2 = tostring
    SHX22_2 = SHX18_2
    SHX21_2 = SHX21_2(SHX22_2)
    SHX22_2 = [[
,
	]]
    SHX19_2 = SHX19_2 .. SHX20_2 .. SHX21_2 .. SHX22_2
    SHX2_2 = SHX19_2
    SHX19_2 = SHX2_2
    SHX20_2 = "heading = "
    SHX21_2 = tostring
    SHX22_2 = GetEntityHeading
    SHX23_2 = SHX9_2
    SHX22_2, SHX23_2, SHX24_2 = SHX22_2(SHX23_2)
    SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2)
    SHX22_2 = [[
,
	]]
    SHX19_2 = SHX19_2 .. SHX20_2 .. SHX21_2 .. SHX22_2
    SHX2_2 = SHX19_2
    SHX19_2 = SHX2_2
    SHX20_2 = "rotation = "
    SHX21_2 = tostring
    SHX22_2 = GetEntityRotation
    SHX23_2 = SHX9_2
    SHX24_2 = 2
    SHX22_2, SHX23_2, SHX24_2 = SHX22_2(SHX23_2, SHX24_2)
    SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2)
    SHX22_2 = [[
,
	]]
    SHX19_2 = SHX19_2 .. SHX20_2 .. SHX21_2 .. SHX22_2
    SHX2_2 = SHX19_2
    SHX19_2 = SHX2_2
    SHX20_2 = [[
reelPositions = {
		]]
    SHX19_2 = SHX19_2 .. SHX20_2
    SHX2_2 = SHX19_2
    SHX19_2 = SHX2_2
    SHX20_2 = tostring
    SHX21_2 = SHX15_2
    SHX20_2 = SHX20_2(SHX21_2)
    SHX21_2 = [[
,
		]]
    SHX19_2 = SHX19_2 .. SHX20_2 .. SHX21_2
    SHX2_2 = SHX19_2
    SHX19_2 = SHX2_2
    SHX20_2 = tostring
    SHX21_2 = SHX16_2
    SHX20_2 = SHX20_2(SHX21_2)
    SHX21_2 = [[
,
		]]
    SHX19_2 = SHX19_2 .. SHX20_2 .. SHX21_2
    SHX2_2 = SHX19_2
    SHX19_2 = SHX2_2
    SHX20_2 = tostring
    SHX21_2 = SHX17_2
    SHX20_2 = SHX20_2(SHX21_2)
    SHX21_2 = [[
,
	]]
    SHX19_2 = SHX19_2 .. SHX20_2 .. SHX21_2
    SHX2_2 = SHX19_2
    SHX19_2 = SHX2_2
    SHX20_2 = "},\n"
    SHX19_2 = SHX19_2 .. SHX20_2
    SHX2_2 = SHX19_2
    SHX19_2 = SHX2_2
    SHX20_2 = "},\n"
    SHX19_2 = SHX19_2 .. SHX20_2
    SHX2_2 = SHX19_2
    SHX19_2 = SetEntityDrawOutline
    SHX20_2 = SHX9_2
    SHX21_2 = true
    SHX19_2(SHX20_2, SHX21_2)
  end
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "9c644bf509"
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX32_1 = true
SHX29_1(SHX30_1, SHX31_1, SHX32_1)
SHX29_1 = pairs
SHX30_1 = SHX0_1.locations
SHX29_1, SHX30_1, SHX31_1, SHX32_1 = SHX29_1(SHX30_1)
for SHX33_1 in SHX29_1, SHX30_1, SHX31_1, SHX32_1 do
  SHX34_1 = {}
  SHX1_1[SHX33_1] = SHX34_1
end
