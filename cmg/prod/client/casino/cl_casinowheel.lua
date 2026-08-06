-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = 965.15264892578
SHX4_1 = 47.068027496338
SHX5_1 = 81.623069763184
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.entryPosition = SHX2_1
SHX2_1 = vector3
SHX3_1 = 964.71350097656
SHX4_1 = 47.952812194824
SHX5_1 = 81.623191833496
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.moveToPosition = SHX2_1
SHX2_1 = vector3
SHX3_1 = 964.71108398438
SHX4_1 = 49.261958312988
SHX5_1 = 80.823184204102
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.objectPosition = SHX2_1
SHX1_1.objectHeading = 57.5
SHX2_1 = {}
SHX3_1 = vector3
SHX4_1 = -249.98811340332
SHX5_1 = -907.77935791016
SHX6_1 = 32.314388275146
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.entryPosition = SHX3_1
SHX3_1 = vector3
SHX4_1 = -249.56430053711
SHX5_1 = -907.09625244141
SHX6_1 = 32.425846099854
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.moveToPosition = SHX3_1
SHX3_1 = vector3
SHX4_1 = -247.9839
SHX5_1 = -906.7876
SHX6_1 = 31.60079
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.objectPosition = SHX3_1
SHX2_1.objectHeading = -20.0
SHX2_1.hideObjectModel = 3400507376
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX1_1 = {}
SHX2_1 = nil
SHX3_1 = ""
SHX4_1 = false
SHX5_1 = nil
SHX6_1 = CMG
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  return SHX0_2
end
SHX6_1.getPodiumVehicle = SHX7_1
SHX6_1 = RMenu
SHX6_1 = SHX6_1.Add
SHX7_1 = "luckywheel"
SHX8_1 = "casino"
SHX9_1 = RageUI
SHX9_1 = SHX9_1.CreateMenu
SHX10_1 = ""
SHX11_1 = ""
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuWidth
SHX12_1 = SHX12_1()
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuHeight
SHX13_1 = SHX13_1()
SHX14_1 = "cmg_luckywheel"
SHX15_1 = "cmg_luckywheel"
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX6_1 = RMenu
SHX7_1 = SHX6_1
SHX6_1 = SHX6_1.Get
SHX8_1 = "luckywheel"
SHX9_1 = "casino"
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX7_1 = SHX6_1
SHX6_1 = SHX6_1.SetSubtitle
SHX8_1 = "~b~You may only spin the wheel once per restart."
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RageUI
SHX6_1 = SHX6_1.CreateWhile
SHX7_1 = 1.0
SHX8_1 = RMenu
SHX9_1 = SHX8_1
SHX8_1 = SHX8_1.Get
SHX10_1 = "luckywheel"
SHX11_1 = "casino"
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
  SHX3_2 = "luckywheel"
  SHX4_2 = "casino"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Spin the wheel of CMG (100,000 Chips)"
    SHX2_3 = ""
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
      
      local SHX3_4, SHX4_4, SHX5_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "1873c5b3d7"
        SHX5_4 = SHX5_1
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
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
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.CloseAll
  SHX2_2()
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Visible
  SHX3_2 = RMenu
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.Get
  SHX5_2 = "luckywheel"
  SHX6_2 = "casino"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
  if SHX0_2 then
    SHX5_1 = SHX1_2
  else
    SHX2_2 = nil
    SHX5_1 = SHX2_2
  end
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = SHX3_1
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    return
  end
  SHX1_2 = CreateVehicle
  SHX2_2 = SHX0_2
  SHX3_2 = 970.05017089844
  SHX4_2 = 45.933525085449
  SHX5_2 = 81.578002929688
  SHX6_2 = 0.0
  SHX7_2 = false
  SHX8_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.initLocalVehicle
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = SetModelAsNoLongerNeeded
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SetEntityCoords
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX7_2 = SHX7_2 + 1
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = true
  SHX11_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = SetVehicleOnGroundProperly
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX2_1 = SHX1_2
end
SHX8_1 = RegisterNetEvent
SHX9_1 = "63ed7e8295"
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX3_1 = SHX0_2
  if SHX1_2 then
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX2_1
    SHX2_2(SHX3_2)
    SHX2_2 = SHX7_1
    SHX2_2()
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = Citizen
SHX8_1 = SHX8_1.CreateThread
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isInsideDiamondCasino
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX7_1
  SHX0_2()
end
SHX8_1(SHX9_1)
SHX8_1 = Citizen
SHX8_1 = SHX8_1.CreateThread
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isInsideDiamondCasino
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isInsideDiamondCasino
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = SHX2_1
      if nil ~= SHX0_2 then
        SHX0_2 = GetEntityHeading
        SHX1_2 = SHX2_1
        SHX0_2 = SHX0_2(SHX1_2)
        SHX1_2 = SHX0_2 - 0.1
        SHX2_2 = SetEntityHeading
        SHX3_2 = SHX2_1
        SHX4_2 = SHX1_2
        SHX2_2(SHX3_2, SHX4_2)
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 5
    SHX0_2(SHX1_2)
  end
end
SHX8_1(SHX9_1)
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX1_2]
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX0_1
  SHX3_2 = SHX3_2[SHX1_2]
  SHX3_2 = SHX3_2.entryPosition
  SHX4_2 = SHX0_1
  SHX4_2 = SHX4_2[SHX1_2]
  SHX4_2 = SHX4_2.objectHeading
  SHX5_2 = SetEntityHeading
  SHX6_2 = SHX2_2
  SHX7_2 = -30.9754
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.CreateThread
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3
    SHX0_3 = 1
    SHX1_3 = nil
    SHX2_3 = SHX0_2
    SHX2_3 = SHX2_3 - 1
    SHX2_3 = SHX2_3 * 18
    SHX3_3 = SHX2_3 + 2880
    SHX4_3 = SHX3_3 / 2
    SHX5_3 = 0
    SHX6_3 = -20
    while SHX0_3 > 0 do
      SHX7_3 = GetEntityRotation
      SHX8_3 = SHX2_2
      SHX9_3 = 2
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
      if SHX3_3 > SHX4_3 then
        SHX0_3 = SHX0_3 + 1
      else
        SHX0_3 = SHX0_3 - 1
        if SHX0_3 < 0 then
          SHX0_3 = 0
        end
      end
      SHX5_3 = SHX5_3 + 1
      SHX1_3 = SHX0_3 / 200
      SHX8_3 = SHX7_3.y
      SHX8_3 = SHX8_3 - SHX1_3
      SHX9_3 = SHX8_3 - SHX6_3
      if SHX9_3 < 5 then
        SHX9_3 = SHX8_3 - SHX6_3
        if SHX9_3 > -5 then
          SHX9_3 = GetSoundId
          SHX9_3 = SHX9_3()
          SHX10_3 = PlaySoundFromCoord
          SHX11_3 = SHX9_3
          SHX12_3 = "Spin_Single_Ticks"
          SHX13_3 = SHX3_2.x
          SHX14_3 = SHX3_2.y
          SHX15_3 = SHX3_2.z
          SHX16_3 = "dlc_vw_casino_lucky_wheel_sounds"
          SHX17_3 = false
          SHX18_3 = 0
          SHX19_3 = false
          SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
          SHX10_3 = SetTimeout
          SHX11_3 = 100
          function SHX12_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4
            SHX0_4 = ReleaseSoundId
            SHX1_4 = SHX9_3
            SHX0_4(SHX1_4)
          end
          SHX10_3(SHX11_3, SHX12_3)
          SHX6_3 = SHX6_3 - 20
          if -180 == SHX6_3 then
            SHX6_3 = 180
          end
      end
      elseif 180 == SHX6_3 then
        SHX9_3 = -180
        SHX10_3 = SHX8_3 - SHX9_3
        if SHX10_3 < 5 then
          SHX10_3 = SHX8_3 - SHX9_3
          if SHX10_3 > -5 then
            SHX10_3 = GetSoundId
            SHX10_3 = SHX10_3()
            SHX11_3 = PlaySoundFromCoord
            SHX12_3 = SHX10_3
            SHX13_3 = "Spin_Single_Ticks"
            SHX14_3 = SHX3_2.x
            SHX15_3 = SHX3_2.y
            SHX16_3 = SHX3_2.z
            SHX17_3 = "dlc_vw_casino_lucky_wheel_sounds"
            SHX18_3 = false
            SHX19_3 = 0
            SHX20_3 = false
            SHX11_3(SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3)
            SHX11_3 = SetTimeout
            SHX12_3 = 100
            function SHX13_3()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_4, SHX1_4
              SHX0_4 = ReleaseSoundId
              SHX1_4 = SHX10_3
              SHX0_4(SHX1_4)
            end
            SHX11_3(SHX12_3, SHX13_3)
          end
        end
        SHX6_3 = SHX6_3 - 20
      end
      SHX3_3 = SHX3_3 - SHX1_3
      SHX9_3 = SetEntityRotation
      SHX10_3 = SHX2_2
      SHX11_3 = 0.0
      SHX12_3 = SHX8_3
      SHX13_3 = SHX4_2
      SHX14_3 = 2
      SHX15_3 = true
      SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      SHX9_3 = Citizen
      SHX9_3 = SHX9_3.Wait
      SHX10_3 = 5
      SHX9_3(SHX10_3)
    end
    SHX7_3 = GetSoundId
    SHX7_3 = SHX7_3()
    SHX8_3 = PlaySoundFromCoord
    SHX9_3 = SHX7_3
    SHX10_3 = "Win"
    SHX11_3 = SHX3_2.x
    SHX12_3 = SHX3_2.y
    SHX13_3 = SHX3_2.z
    SHX14_3 = "dlc_vw_casino_lucky_wheel_sounds"
    SHX15_3 = false
    SHX16_3 = 0
    SHX17_3 = false
    SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
    SHX8_3 = SetTimeout
    SHX9_3 = 1000
    function SHX10_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = ReleaseSoundId
      SHX1_4 = SHX7_3
      SHX0_4(SHX1_4)
    end
    SHX8_3(SHX9_3, SHX10_3)
    SHX8_3 = false
    SHX4_1 = SHX8_3
  end
  SHX5_2(SHX6_2)
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = SHX4_1
  if not SHX1_2 then
    SHX1_2 = true
    SHX4_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = "anim_casino_a@amb@casino@games@lucky7wheel@female"
    SHX3_2 = IsPedMale
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX2_2 = "anim_casino_a@amb@casino@games@lucky7wheel@male"
    end
    SHX3_2 = SHX2_2
    SHX4_2 = "enter_right_to_baseidle"
    SHX5_2 = RequestAnimDict
    SHX6_2 = SHX3_2
    SHX5_2(SHX6_2)
    SHX5_2 = Wait
    SHX6_2 = 50
    SHX5_2(SHX6_2)
    SHX5_2 = SHX0_1
    SHX5_2 = SHX5_2[SHX0_2]
    SHX5_2 = SHX5_2.moveToPosition
    SHX6_2 = TaskGoStraightToCoord
    SHX7_2 = SHX1_2
    SHX8_2 = SHX5_2.x
    SHX9_2 = SHX5_2.y
    SHX10_2 = SHX5_2.z
    SHX11_2 = 1.0
    SHX12_2 = -1
    SHX13_2 = 312.2
    SHX14_2 = 0.0
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX6_2 = false
    while not SHX6_2 do
      SHX7_2 = GetEntityCoords
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.getPlayerPed
      SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX8_2()
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX8_2 = SHX7_2.x
      SHX9_2 = SHX5_2.x
      SHX9_2 = SHX9_2 - 0.01
      if SHX8_2 >= SHX9_2 then
        SHX8_2 = SHX7_2.x
        SHX9_2 = SHX5_2.x
        SHX9_2 = SHX9_2 + 0.01
        if SHX8_2 <= SHX9_2 then
          SHX8_2 = SHX7_2.y
          SHX9_2 = SHX5_2.y
          SHX9_2 = SHX9_2 - 0.01
          if SHX8_2 >= SHX9_2 then
            SHX8_2 = SHX7_2.y
            SHX9_2 = SHX5_2.y
            SHX9_2 = SHX9_2 + 0.01
            if SHX8_2 <= SHX9_2 then
              SHX6_2 = true
            end
          end
        end
      end
      SHX8_2 = Citizen
      SHX8_2 = SHX8_2.Wait
      SHX9_2 = 0
      SHX8_2(SHX9_2)
    end
    SHX7_2 = TaskPlayAnim
    SHX8_2 = SHX1_2
    SHX9_2 = SHX3_2
    SHX10_2 = SHX4_2
    SHX11_2 = 8.0
    SHX12_2 = -8.0
    SHX13_2 = -1
    SHX14_2 = 0
    SHX15_2 = 0
    SHX16_2 = false
    SHX17_2 = false
    SHX18_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    while true do
      SHX7_2 = IsEntityPlayingAnim
      SHX8_2 = SHX1_2
      SHX9_2 = SHX3_2
      SHX10_2 = SHX4_2
      SHX11_2 = 3
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      if not SHX7_2 then
        break
      end
      SHX7_2 = Citizen
      SHX7_2 = SHX7_2.Wait
      SHX8_2 = 0
      SHX7_2(SHX8_2)
      SHX7_2 = DisableAllControlActions
      SHX8_2 = 0
      SHX7_2(SHX8_2)
    end
    SHX7_2 = TaskPlayAnim
    SHX8_2 = SHX1_2
    SHX9_2 = SHX3_2
    SHX10_2 = "enter_to_armraisedidle"
    SHX11_2 = 8.0
    SHX12_2 = -8.0
    SHX13_2 = -1
    SHX14_2 = 0
    SHX15_2 = 0
    SHX16_2 = false
    SHX17_2 = false
    SHX18_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    while true do
      SHX7_2 = IsEntityPlayingAnim
      SHX8_2 = SHX1_2
      SHX9_2 = SHX3_2
      SHX10_2 = "enter_to_armraisedidle"
      SHX11_2 = 3
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      if not SHX7_2 then
        break
      end
      SHX7_2 = Citizen
      SHX7_2 = SHX7_2.Wait
      SHX8_2 = 0
      SHX7_2(SHX8_2)
      SHX7_2 = DisableAllControlActions
      SHX8_2 = 0
      SHX7_2(SHX8_2)
    end
    SHX7_2 = TaskPlayAnim
    SHX8_2 = SHX1_2
    SHX9_2 = SHX3_2
    SHX10_2 = "armraisedidle_to_spinningidle_high"
    SHX11_2 = 8.0
    SHX12_2 = -8.0
    SHX13_2 = -1
    SHX14_2 = 0
    SHX15_2 = 0
    SHX16_2 = false
    SHX17_2 = false
    SHX18_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX7_2 = SetEntityHeading
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.getPlayerPed
    SHX8_2 = SHX8_2()
    SHX9_2 = 10.9754
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = Wait
    SHX8_2 = 2000
    SHX7_2(SHX8_2)
    SHX7_2 = TaskPlayAnim
    SHX8_2 = SHX1_2
    SHX9_2 = SHX3_2
    SHX10_2 = "baseidle_variation_02"
    SHX11_2 = 8.0
    SHX12_2 = -8.0
    SHX13_2 = -1
    SHX14_2 = 1
    SHX15_2 = 0
    SHX16_2 = false
    SHX17_2 = false
    SHX18_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX7_2 = RemoveAnimDict
    SHX8_2 = SHX3_2
    SHX7_2(SHX8_2)
  end
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = -945995088
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX3_2 = SHX0_2.wheelId
  SHX2_2 = SHX0_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX3_2 = SHX2_2.objectPosition
  SHX4_2 = GetClosestObjectOfType
  SHX5_2 = SHX3_2.x
  SHX6_2 = SHX3_2.y
  SHX7_2 = SHX3_2.z
  SHX8_2 = 5.0
  SHX9_2 = SHX2_2.hideObjectModel
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  if 0 ~= SHX4_2 then
    SHX5_2 = FreezeEntityPosition
    SHX6_2 = SHX4_2
    SHX7_2 = true
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SetEntityCanBeDamaged
    SHX6_2 = SHX4_2
    SHX7_2 = false
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SetEntityProofs
    SHX6_2 = SHX4_2
    SHX7_2 = true
    SHX8_2 = true
    SHX9_2 = true
    SHX10_2 = true
    SHX11_2 = true
    SHX12_2 = true
    SHX13_2 = true
    SHX14_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
  SHX5_2 = CreateObject
  SHX6_2 = SHX1_2
  SHX7_2 = SHX3_2.x
  SHX8_2 = SHX3_2.y
  SHX9_2 = SHX3_2.z
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = SetEntityHeading
  SHX7_2 = SHX5_2
  SHX8_2 = SHX2_2.objectHeading
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetModelAsNoLongerNeeded
  SHX7_2 = SHX1_2
  SHX6_2(SHX7_2)
  SHX7_2 = SHX0_2.wheelId
  SHX6_2 = SHX1_1
  SHX6_2[SHX7_2] = SHX5_2
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX2_2 = SHX0_2.wheelId
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
    SHX3_2 = SHX0_2.wheelId
    SHX2_2 = SHX1_1
    SHX2_2[SHX3_2] = nil
  end
end
SHX12_1 = AddEventHandler
SHX13_1 = "CMG:onClientSpawn"
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  if SHX1_2 then
    function SHX2_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3
      SHX1_3 = SHX6_1
      SHX2_3 = true
      SHX3_3 = SHX0_3.wheelId
      SHX1_3(SHX2_3, SHX3_3)
    end
    function SHX3_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3
      SHX1_3 = SHX6_1
      SHX2_3 = false
      SHX3_3 = SHX0_3.wheelId
      SHX1_3(SHX2_3, SHX3_3)
    end
    SHX4_2 = pairs
    SHX5_2 = SHX0_1
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = tCMG
      SHX10_2 = SHX10_2.addBlip
      SHX11_2 = SHX9_2.entryPosition
      SHX11_2 = SHX11_2.x
      SHX12_2 = SHX9_2.entryPosition
      SHX12_2 = SHX12_2.y
      SHX13_2 = SHX9_2.entryPosition
      SHX13_2 = SHX13_2.z
      SHX14_2 = 681
      SHX15_2 = 0
      SHX16_2 = "CMG Wheel"
      SHX17_2 = 0.7
      SHX18_2 = true
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.createArea
      SHX11_2 = string
      SHX11_2 = SHX11_2.format
      SHX12_2 = "cmgwheel_%s"
      SHX13_2 = SHX8_2
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
      SHX12_2 = SHX9_2.entryPosition
      SHX13_2 = 1.5
      SHX14_2 = 6
      SHX15_2 = SHX2_2
      SHX16_2 = SHX3_2
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
      SHX18_2.wheelId = SHX8_2
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.createArea
      SHX11_2 = string
      SHX11_2 = SHX11_2.format
      SHX12_2 = "cmgwheel_object_%s"
      SHX13_2 = SHX8_2
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
      SHX12_2 = SHX9_2.entryPosition
      SHX13_2 = 100.0
      SHX14_2 = 100.0
      SHX15_2 = SHX10_1
      SHX16_2 = SHX11_1
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
      SHX18_2.wheelId = SHX8_2
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
  end
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "fba1ad1368"
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = Wait
  SHX3_2 = 1000
  SHX2_2(SHX3_2)
  SHX2_2 = SHX8_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "aaa9100058"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = SHX9_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = true
  SHX1_2(SHX2_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "5cd959a1e1"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = "anim_casino_a@amb@casino@games@lucky7wheel@female"
  SHX3_2 = IsPedMale
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX2_2 = "anim_casino_a@amb@casino@games@lucky7wheel@male"
  end
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX6_2 = "win"
  SHX7_2 = SHX0_2
  SHX6_2 = SHX6_2 .. SHX7_2
  SHX7_2 = 8.0
  SHX8_2 = -8.0
  SHX9_2 = -1
  SHX10_2 = 0
  SHX11_2 = 0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = CMG
SHX12_1 = SHX12_1.registerDevMenuItems
SHX13_1 = "Casino"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Spin Nearest Wheel"
  SHX2_2 = "Spins the nearest wheel on the client."
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    if SHX2_3 then
      SHX3_3 = nil
      SHX4_3 = 100.0
      SHX5_3 = pairs
      SHX6_3 = SHX0_1
      SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3)
      for SHX9_3, SHX10_3 in SHX5_3, SHX6_3, SHX7_3, SHX8_3 do
        SHX11_3 = CMG
        SHX11_3 = SHX11_3.getPlayerCoords
        SHX11_3 = SHX11_3()
        SHX12_3 = SHX10_3.entryPosition
        SHX11_3 = SHX11_3 - SHX12_3
        SHX11_3 = #SHX11_3
        if SHX4_3 > SHX11_3 then
          SHX3_3 = SHX9_3
          SHX4_3 = SHX11_3
        end
      end
      if SHX3_3 then
        SHX5_3 = TriggerEvent
        SHX6_3 = "fba1ad1368"
        SHX7_3 = 1
        SHX8_3 = SHX3_3
        SHX5_3(SHX6_3, SHX7_3, SHX8_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX12_1(SHX13_1, SHX14_1)
