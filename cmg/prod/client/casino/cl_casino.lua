-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1
SHX0_1 = false
SHX1_1 = vector3
SHX2_1 = 967.20806884766
SHX3_1 = 36.561210632324
SHX4_1 = 80.994140625
SHX1_1 = SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 948.56213378906
SHX6_1 = 64.546142578125
SHX7_1 = 81.000633239746
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.model = 112404821
SHX3_1.radius = 5.0
SHX4_1 = {}
SHX5_1 = vector3
SHX6_1 = 994.34631347656
SHX7_1 = 60.418537139893
SHX8_1 = 81.00057220459
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.position = SHX5_1
SHX4_1.model = -1728077103
SHX4_1.radius = 10.0
SHX5_1 = {}
SHX6_1 = vector3
SHX7_1 = 994.34631347656
SHX8_1 = 60.418537139893
SHX9_1 = 81.00057220459
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.position = SHX6_1
SHX5_1.model = 618005505
SHX5_1.radius = 10.0
SHX6_1 = {}
SHX7_1 = vector3
SHX8_1 = 987.63366699219
SHX9_1 = 75.79020690918
SHX10_1 = 81.000640869141
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.position = SHX7_1
SHX6_1.model = 618005505
SHX6_1.radius = 10.0
SHX7_1 = {}
SHX8_1 = vector3
SHX9_1 = 937.54364
SHX10_1 = 35.660938
SHX11_1 = 79.985603
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX7_1.position = SHX8_1
SHX7_1.model = 618005505
SHX7_1.radius = 2.5
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.setCanAnim
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX0_2 = false
    SHX0_1 = SHX0_2
    SHX0_2 = ipairs
    SHX1_2 = SHX2_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = RemoveModelHide
      SHX7_2 = SHX5_2.position
      SHX7_2 = SHX7_2.x
      SHX8_2 = SHX5_2.position
      SHX8_2 = SHX8_2.y
      SHX9_2 = SHX5_2.position
      SHX9_2 = SHX9_2.z
      SHX10_2 = SHX5_2.radius
      SHX11_2 = SHX5_2.model
      SHX12_2 = false
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
  end
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetRoomKeyFromEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    SHX1_2 = SHX3_1
    SHX1_2()
  else
    SHX1_2 = SHX0_1
    if not SHX1_2 then
      SHX1_2 = TriggerEvent
      SHX2_2 = "4d7b29b4ae"
      SHX1_2(SHX2_2)
      SHX1_2 = tCMG
      SHX1_2 = SHX1_2.setCanAnim
      SHX2_2 = false
      SHX1_2(SHX2_2)
      SHX1_2 = ipairs
      SHX2_2 = SHX2_1
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = CreateModelHide
        SHX8_2 = SHX6_2.position
        SHX8_2 = SHX8_2.x
        SHX9_2 = SHX6_2.position
        SHX9_2 = SHX9_2.y
        SHX10_2 = SHX6_2.position
        SHX10_2 = SHX10_2.z
        SHX11_2 = SHX6_2.radius
        SHX12_2 = SHX6_2.model
        SHX13_2 = false
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      end
      SHX1_2 = true
      SHX0_1 = SHX1_2
    end
  end
end
SHX5_1 = AddEventHandler
SHX6_1 = "CMG:onClientSpawn"
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.createArea
    SHX3_2 = "diamondcasino"
    SHX4_2 = SHX1_1
    SHX5_2 = 100.0
    SHX6_2 = 20
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX8_2 = SHX3_1
    SHX9_2 = SHX4_1
    SHX10_2 = {}
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  return SHX0_2
end
SHX5_1.isInsideDiamondCasino = SHX6_1
SHX5_1 = RegisterNetEvent
SHX6_1 = "073b36674c"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.transactionType = "playCasinoWin"
  SHX0_2(SHX1_2)
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "bf8af3c254"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.transactionType = "playCasinoLose"
  SHX0_2(SHX1_2)
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "cmg_threecardpoker"
SHX7_1 = "instructions"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateMenu
SHX9_1 = ""
SHX10_1 = ""
SHX11_1 = 0
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuHeight
SHX12_1 = SHX12_1()
SHX13_1 = "casinoui_cards_three"
SHX14_1 = "casinoui_cards_three"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "cmg_threecardpoker"
SHX8_1 = "instructions"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.SetSubtitle
SHX7_1 = "~b~Three Card Poker Results"
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = "..."
SHX6_1 = RageUI
SHX6_1 = SHX6_1.CreateWhile
SHX7_1 = 1.0
SHX8_1 = RMenu
SHX9_1 = SHX8_1
SHX8_1 = SHX8_1.Get
SHX10_1 = "cmg_threecardpoker"
SHX11_1 = "instructions"
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = nil
function SHX10_1()
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
  SHX3_2 = "cmg_threecardpoker"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.FakeButtonWithStyle
    SHX1_3 = ""
    SHX2_3 = SHX5_1
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmg_threecardpoker"
    SHX9_3 = "instructions"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
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
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "66d19507ca"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX5_1 = SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cmg_threecardpoker"
  SHX5_2 = "instructions"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetTimeout
  SHX2_2 = 6000
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Visible
    SHX1_3 = RMenu
    SHX2_3 = SHX1_3
    SHX1_3 = SHX1_3.Get
    SHX3_3 = "cmg_threecardpoker"
    SHX4_3 = "instructions"
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = "Pending"
    SHX5_1 = SHX0_3
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = vector3
SHX7_1 = 965.10760498047
SHX8_1 = 22.450706481934
SHX9_1 = 80.00611114502
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX7_1 = RMenu
SHX7_1 = SHX7_1.Add
SHX8_1 = "cmg_managecasino"
SHX9_1 = "cmg_managecasino"
SHX10_1 = RageUI
SHX10_1 = SHX10_1.CreateMenu
SHX11_1 = ""
SHX12_1 = ""
SHX13_1 = 0
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuHeight
SHX14_1 = SHX14_1()
SHX15_1 = "shopui_title_casino"
SHX16_1 = "shopui_title_casino"
SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX7_1(SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX7_1 = RMenu
SHX8_1 = SHX7_1
SHX7_1 = SHX7_1.Get
SHX9_1 = "cmg_managecasino"
SHX10_1 = "cmg_managecasino"
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX8_1 = SHX7_1
SHX7_1 = SHX7_1.SetSubtitle
SHX9_1 = "~b~Casino Management"
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RageUI
SHX7_1 = SHX7_1.CreateWhile
SHX8_1 = 1.0
SHX9_1 = RMenu
SHX10_1 = SHX9_1
SHX9_1 = SHX9_1.Get
SHX11_1 = "cmg_managecasino"
SHX12_1 = "cmg_managecasino"
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = nil
function SHX11_1()
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
  SHX3_2 = "cmg_managecasino"
  SHX4_2 = "cmg_managecasino"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Current Podium Car: "
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.getPodiumVehicle
    SHX2_3 = SHX2_3()
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Set new podium car"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "e0f84c33a1"
        SHX3_4(SHX4_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmg_managecasino"
    SHX9_3 = "cmg_managecasino"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.drawPaycheckButtonForCasinoOwner
    SHX0_3()
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
SHX7_1(SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX7_1 = Citizen
SHX7_1 = SHX7_1.CreateThread
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  function SHX0_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getClientUserId
    SHX0_3 = SHX0_3()
    if 1 ~= SHX0_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.getClientUserId
      SHX0_3 = SHX0_3()
      if 71 ~= SHX0_3 then
        goto SHX_LABEL_20
      end
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Visible
    SHX1_3 = RMenu
    SHX2_3 = SHX1_3
    SHX1_3 = SHX1_3.Get
    SHX3_3 = "cmg_managecasino"
    SHX4_3 = "cmg_managecasino"
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX2_3 = true
    SHX0_3(SHX1_3, SHX2_3)
    -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
    ::SHX_LABEL_20::
  end
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getClientUserId
    SHX0_3 = SHX0_3()
    if 1 ~= SHX0_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.getClientUserId
      SHX0_3 = SHX0_3()
      if 71 ~= SHX0_3 then
        goto SHX_LABEL_20
      end
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Visible
    SHX1_3 = RMenu
    SHX2_3 = SHX1_3
    SHX1_3 = SHX1_3.Get
    SHX3_3 = "cmg_managecasino"
    SHX4_3 = "cmg_managecasino"
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
    -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
    ::SHX_LABEL_20::
  end
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.addMarker
  SHX3_2 = SHX6_1.x
  SHX4_2 = SHX6_1.y
  SHX5_2 = SHX6_1.z
  SHX6_2 = 1.0
  SHX7_2 = 1.0
  SHX8_2 = 1.0
  SHX9_2 = 0
  SHX10_2 = 255
  SHX11_2 = 50
  SHX12_2 = 170
  SHX13_2 = 50
  SHX14_2 = 27
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.createArea
  SHX3_2 = "cmg_managecasino"
  SHX4_2 = SHX6_1
  SHX5_2 = 1.5
  SHX6_2 = 5.0
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = nil
  SHX10_2 = nil
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.createNoVehicleZone
  SHX3_2 = vector3
  SHX4_2 = 967.20806884766
  SHX5_2 = 36.561210632324
  SHX6_2 = 80.994140625
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = 80.0
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.createNoVehicleOverrideZone
  SHX3_2 = vector3
  SHX4_2 = 940.56695556641
  SHX5_2 = 8.0352802276611
  SHX6_2 = 78.794975280762
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = 20.0
  SHX2_2(SHX3_2, SHX4_2)
end
SHX7_1(SHX8_1)
