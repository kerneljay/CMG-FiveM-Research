-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1
SHX0_1 = vector4
SHX1_1 = 1419.6131591797
SHX2_1 = 6344.7294921875
SHX3_1 = 24.090087890625
SHX4_1 = 272.96063232422
SHX0_1 = SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = vector3
SHX2_1 = 1422.1669921875
SHX3_1 = 6344.642578125
SHX4_1 = 23.985691070557
SHX1_1 = SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX2_1 = 30000
SHX3_1 = vector3
SHX4_1 = 1420.9119873047
SHX5_1 = 6344.7646484375
SHX6_1 = 23.4
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX4_1 = -1462060028
SHX5_1 = {}
SHX6_1 = {}
SHX7_1 = "Barge_Door"
SHX8_1 = "dlc_h4_Prep_FC_Sounds"
SHX6_1[1] = SHX7_1
SHX6_1[2] = SHX8_1
SHX7_1 = {}
SHX8_1 = "Barge_Door_Glass"
SHX9_1 = "dlc_h4_Prep_FC_Sounds"
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX8_1 = {}
SHX9_1 = "Barge_Door_Metal"
SHX10_1 = "dlc_h4_Prep_FC_Sounds"
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX9_1 = {}
SHX10_1 = "Barge_Door_Metal_Bars"
SHX11_1 = "dlc_h4_Prep_FC_Sounds"
SHX9_1[1] = SHX10_1
SHX9_1[2] = SHX11_1
SHX10_1 = {}
SHX11_1 = "car_crushed"
SHX12_1 = "dlc_vw_body_disposal_sounds"
SHX10_1[1] = SHX11_1
SHX10_1[2] = SHX12_1
SHX11_1 = {}
SHX12_1 = "Drill_Pin_Break"
SHX13_1 = "DLC_HEIST_FLEECA_SOUNDSET"
SHX11_1[1] = SHX12_1
SHX11_1[2] = SHX13_1
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX5_1[3] = SHX8_1
SHX5_1[4] = SHX9_1
SHX5_1[5] = SHX10_1
SHX5_1[6] = SHX11_1
SHX6_1 = {}
SHX7_1 = false
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "blackmarket"
SHX10_1 = "mainmenu"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateMenu
SHX12_1 = ""
SHX13_1 = "Black Market"
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuWidth
SHX14_1 = SHX14_1()
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuHeight
SHX15_1 = SHX15_1()
SHX16_1 = "cmg_gunstoreui"
SHX17_1 = "cmg_gunstoreui"
SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1)
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateWhile
SHX9_1 = 1.0
SHX10_1 = RMenu
SHX11_1 = SHX10_1
SHX10_1 = SHX10_1.Get
SHX12_1 = "blackmarket"
SHX13_1 = "mainmenu"
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = nil
function SHX12_1()
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
  SHX3_2 = "blackmarket"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = SHX6_1
    SHX0_3 = #SHX0_3
    if 0 == SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~r~No suitable weapons to sell."
      SHX0_3(SHX1_3)
      return
    end
    SHX0_3 = pairs
    SHX1_3 = SHX6_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = getMoneyStringFormatted
      SHX7_3 = SHX5_3.price
      SHX6_3 = SHX6_3(SHX7_3)
      SHX7_3 = RageUI
      SHX7_3 = SHX7_3.ButtonWithStyle
      SHX8_3 = string
      SHX8_3 = SHX8_3.format
      SHX9_3 = "1x %s"
      SHX10_3 = SHX5_3.name
      SHX8_3 = SHX8_3(SHX9_3, SHX10_3)
      SHX9_3 = string
      SHX9_3 = SHX9_3.format
      SHX10_3 = "You can sell this weapon to the black market dealer for \194\163%s."
      SHX11_3 = SHX6_3
      SHX9_3 = SHX9_3(SHX10_3, SHX11_3)
      SHX10_3 = {}
      SHX11_3 = string
      SHX11_3 = SHX11_3.format
      SHX12_3 = "\194\163%s"
      SHX13_3 = SHX6_3
      SHX11_3 = SHX11_3(SHX12_3, SHX13_3)
      SHX10_3.RightLabel = SHX11_3
      SHX11_3 = true
      function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "d40f11439b"
          SHX5_4 = SHX5_3.itemId
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
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
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "63e6207926"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX6_1 = SHX0_2
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "ddcce5225d"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setPlayerCombatTimer
  SHX1_2 = 60
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
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
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.startCircularProgressBar
    SHX1_3 = ""
    SHX2_3 = SHX2_1
    SHX3_3 = nil
    function SHX4_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX0_2(SHX1_2)
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "mp_common"
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = "mp_common"
  SHX4_2 = "givetake1_a"
  SHX5_2 = 8.0
  SHX6_2 = 8.0
  SHX7_2 = -1
  SHX8_2 = 1
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "mp_common"
  SHX1_2(SHX2_2)
  SHX1_2 = Wait
  SHX2_2 = 100
  SHX1_2(SHX2_2)
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    SHX3_2 = SHX2_1
    if SHX2_2 > SHX3_2 then
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "b4a66c73e5"
      SHX2_2(SHX3_2)
      break
    end
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.isInComa
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      SHX2_2 = IsEntityDead
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        goto SHX_LABEL_65
      end
    end
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "6a7451d0b3"
    SHX2_2(SHX3_2)
    SHX2_2 = notify
    SHX3_2 = "~r~You can not sell a weapon whilst dead."
    SHX2_2(SHX3_2)
    do break end
    -- [FIX IF ERROR] Move ::SHX_LABEL_65:: outside nested blocks until all 'goto SHX_LABEL_65' can see it
    ::SHX_LABEL_65::
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerCoords
    SHX2_2 = SHX2_2()
    SHX3_2 = SHX1_1
    SHX2_2 = SHX2_2 - SHX3_2
    SHX2_2 = #SHX2_2
    if SHX2_2 > 2.0 then
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "6a7451d0b3"
      SHX2_2(SHX3_2)
      SHX2_2 = notify
      SHX3_2 = "~r~Failed to sell, you went too far away from the trader."
      SHX2_2(SHX3_2)
      break
    end
    SHX2_2 = IsEntityPlayingAnim
    SHX3_2 = SHX0_2
    SHX4_2 = "mp_common"
    SHX5_2 = "givetake1_a"
    SHX6_2 = 3
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    if not SHX2_2 then
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "6a7451d0b3"
      SHX2_2(SHX3_2)
      SHX2_2 = notify
      SHX3_2 = "~r~Failed to sell, cancelled the transaction."
      SHX2_2(SHX3_2)
      break
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = StopAnimTask
  SHX3_2 = SHX0_2
  SHX4_2 = "mp_common"
  SHX5_2 = "givetake1_a"
  SHX6_2 = 1.0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.stopCircularProgressBar
  SHX2_2()
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "d9bb4048a2"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = SHX7_1
  if SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX7_1 = SHX0_2
  while true do
    SHX0_2 = SHX7_1
    if not SHX0_2 then
      break
    end
    SHX0_2 = GetSoundId
    SHX0_2 = SHX0_2()
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 1
    SHX3_2 = SHX5_1
    SHX3_2 = #SHX3_2
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX2_2 = SHX5_1
    SHX1_2 = SHX2_2[SHX1_2]
    SHX2_2 = PlaySoundFromCoord
    SHX3_2 = SHX0_2
    SHX4_2 = SHX1_2[1]
    SHX5_2 = SHX1_1.x
    SHX6_2 = SHX1_1.y
    SHX7_2 = SHX1_1.z
    SHX8_2 = SHX1_2[2]
    SHX9_2 = false
    SHX10_2 = 50
    SHX11_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    while true do
      SHX2_2 = HasSoundFinished
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        break
      end
      SHX2_2 = SHX7_1
      if not SHX2_2 then
        break
      end
      SHX2_2 = Wait
      SHX3_2 = 0
      SHX2_2(SHX3_2)
    end
    SHX2_2 = StopSound
    SHX3_2 = SHX0_2
    SHX2_2(SHX3_2)
    SHX2_2 = ReleaseSoundId
    SHX3_2 = SHX0_2
    SHX2_2(SHX3_2)
    SHX2_2 = Wait
    SHX3_2 = 1000
    SHX2_2(SHX3_2)
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "9db45c7371"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX7_1 = SHX0_2
end
SHX8_1(SHX9_1, SHX10_1)
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.clear
  SHX1_2 = SHX6_1
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "a645ab52a9"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "blackmarket"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "blackmarket"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX10_1 = CMG
SHX10_1 = SHX10_1.createArea
SHX11_1 = "black_market_trader"
SHX12_1 = SHX1_1
SHX13_1 = 2.0
SHX14_1 = 2.0
SHX15_1 = SHX8_1
SHX16_1 = SHX9_1
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX10_1 = tCMG
SHX10_1 = SHX10_1.addMarker
SHX11_1 = SHX1_1.x
SHX12_1 = SHX1_1.y
SHX13_1 = SHX1_1.z
SHX14_1 = 0.7
SHX15_1 = 0.7
SHX16_1 = 0.5
SHX17_1 = 255
SHX18_1 = 0
SHX19_1 = 0
SHX20_1 = 125
SHX21_1 = 50
SHX22_1 = 29
SHX23_1 = true
SHX24_1 = true
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1)
SHX10_1 = CMG
SHX10_1 = SHX10_1.createDynamicPed
SHX11_1 = 275618457
SHX12_1 = SHX0_1.xyz
SHX13_1 = SHX0_1.w
SHX14_1 = true
SHX15_1 = "mini@strip_club@idles@bouncer@base"
SHX16_1 = "base"
SHX17_1 = 100
SHX18_1 = false
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX10_1 = 0
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = SHX4_1
  SHX0_2(SHX1_2)
  SHX0_2 = CreateObjectNoOffset
  SHX1_2 = SHX4_1
  SHX2_2 = SHX3_1.x
  SHX3_2 = SHX3_1.y
  SHX4_2 = SHX3_1.z
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX10_1 = SHX0_2
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = SHX10_1
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX10_1
  if 0 ~= SHX0_2 then
    SHX0_2 = DeleteEntity
    SHX1_2 = SHX10_1
    SHX0_2(SHX1_2)
    SHX0_2 = 0
    SHX10_1 = SHX0_2
  end
end
SHX13_1 = CMG
SHX13_1 = SHX13_1.createArea
SHX14_1 = "black_market_table"
SHX15_1 = SHX3_1
SHX16_1 = 150.0
SHX17_1 = 150.0
SHX18_1 = SHX11_1
SHX19_1 = SHX12_1
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX13_1 = AddEventHandler
SHX14_1 = "onClientResourceStop"
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 == SHX0_2 then
    SHX1_2 = SHX12_1
    SHX1_2()
  end
end
SHX13_1(SHX14_1, SHX15_1)
