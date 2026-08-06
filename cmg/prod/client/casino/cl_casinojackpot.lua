-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1
SHX0_1 = false
SHX1_1 = -1
SHX2_1 = 1000
SHX3_1 = false
SHX4_1 = {}
SHX5_1 = -1
SHX6_1 = false
SHX7_1 = false
SHX8_1 = false
SHX9_1 = 0.5
SHX10_1 = false
SHX11_1 = 10
SHX12_1 = 60
SHX13_1 = false
SHX14_1 = nil
SHX15_1 = 0.0
SHX16_1 = 0
SHX17_1 = 0
SHX18_1 = true
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = 0
  SHX3_2 = IsNamedRendertargetRegistered
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = RegisterNamedRendertarget
    SHX4_2 = SHX0_2
    SHX5_2 = false
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = IsNamedRendertargetLinked
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = LinkNamedRendertarget
    SHX4_2 = SHX1_2
    SHX3_2(SHX4_2)
  end
  SHX3_2 = IsNamedRendertargetRegistered
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = GetNamedRendertargetRenderId
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX3_2
  end
  return SHX2_2
end
SHX20_1 = {}
SHX21_1 = vector3
SHX22_1 = 971.588623
SHX23_1 = 69.243698
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[0] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 972.082214
SHX23_1 = 70.033615
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[1] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 973.702393
SHX23_1 = 67.288445
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[2] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 974.191589
SHX23_1 = 68.071304
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[3] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 973.873169
SHX23_1 = 72.899689
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[4] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 974.376038
SHX23_1 = 73.704498
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[5] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 974.922729
SHX23_1 = 74.579437
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[6] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 975.405212
SHX23_1 = 75.351601
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[7] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 977.19397
SHX23_1 = 78.214249
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[8] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 977.691406
SHX23_1 = 79.010315
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[9] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 980.437195
SHX23_1 = 77.914375
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[10] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 979.960876
SHX23_1 = 77.152161
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[11] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 977.89032
SHX23_1 = 73.838562
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[12] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 977.373535
SHX23_1 = 73.011513
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[13] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 976.850952
SHX23_1 = 72.175217
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[14] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 976.356201
SHX23_1 = 71.383453
SHX24_1 = 79.992676
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1[15] = SHX21_1
SHX21_1 = vector3
SHX22_1 = 973.32196044922
SHX23_1 = 75.440765380859
SHX24_1 = 81.000602722168
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX22_1 = {}
SHX23_1 = RMenu
SHX23_1 = SHX23_1.Add
SHX24_1 = "cmgjackpot"
SHX25_1 = "instructions"
SHX26_1 = RageUI
SHX26_1 = SHX26_1.CreateMenu
SHX27_1 = ""
SHX28_1 = ""
SHX29_1 = CMG
SHX29_1 = SHX29_1.getRageUIMenuWidth
SHX29_1 = SHX29_1()
SHX30_1 = CMG
SHX30_1 = SHX30_1.getRageUIMenuHeight
SHX30_1 = SHX30_1()
SHX31_1 = "cmg_jackpotui"
SHX32_1 = "cmg_jackpotui"
SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1)
SHX23_1(SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1)
SHX23_1 = RMenu
SHX24_1 = SHX23_1
SHX23_1 = SHX23_1.Get
SHX25_1 = "cmgjackpot"
SHX26_1 = "instructions"
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX24_1 = SHX23_1
SHX23_1 = SHX23_1.SetSubtitle
SHX25_1 = "~b~JACKPOT"
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RageUI
SHX23_1 = SHX23_1.CreateWhile
SHX24_1 = 1.0
SHX25_1 = RMenu
SHX26_1 = SHX25_1
SHX25_1 = SHX25_1.Get
SHX27_1 = "cmgjackpot"
SHX28_1 = "instructions"
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX26_1 = nil
function SHX27_1()
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
  SHX3_2 = "cmgjackpot"
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
    SHX2_3 = [[
Play Jackpot for a chance to win BIG! 

Buy tickets to have a chance at winning a large pot of chips! Your % chance of winning is based on how many tickets have been purchased in that round.
1 tickett  = 1 chip.]]
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
    SHX8_3 = "cmgjackpot"
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
SHX23_1(SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX23_1 = Citizen
SHX23_1 = SHX23_1.CreateThread
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isInsideDiamondCasino
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = 1000
      SHX2_1 = SHX0_2
      SHX0_2 = -1
      SHX1_1 = SHX0_2
      SHX0_2 = GetEntityCoords
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX1_2 = 0
      SHX2_2 = 15
      SHX3_2 = 1
      for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
        SHX5_2 = SHX20_1
        SHX5_2 = SHX5_2[SHX4_2]
        SHX6_2 = SHX0_2 - SHX5_2
        SHX6_2 = #SHX6_2
        SHX7_2 = SHX2_1
        if SHX6_2 < SHX7_2 then
          SHX2_1 = SHX6_2
          SHX1_1 = SHX4_2
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 100
    SHX0_2(SHX1_2)
  end
end
SHX23_1(SHX24_1)
SHX23_1 = false
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.CloseAll
  SHX1_2()
  SHX1_2 = SHX1_1
  if -1 ~= SHX1_2 then
    SHX1_2 = RageUI
    SHX1_2 = SHX1_2.Visible
    SHX2_2 = RMenu
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.Get
    SHX4_2 = "cmgjackpot"
    SHX5_2 = "instructions"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX25_1 = Citizen
SHX25_1 = SHX25_1.CreateThread
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = SHX0_1
    if not SHX0_2 then
      SHX0_2 = SHX1_1
      if nil ~= SHX0_2 then
        SHX0_2 = SHX2_1
        if SHX0_2 < 2 then
          SHX0_2 = SHX3_1
          if not SHX0_2 then
            SHX0_2 = print
            SHX1_2 = "closestChair"
            SHX2_2 = SHX1_1
            SHX0_2(SHX1_2, SHX2_2)
            SHX0_2 = print
            SHX1_2 = "jackpotTableData"
            SHX2_2 = dump
            SHX3_2 = SHX4_1
            SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2)
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
            SHX1_2 = SHX1_1
            SHX0_2 = SHX4_1
            SHX0_2 = SHX0_2[SHX1_2]
            if false == SHX0_2 then
              SHX0_2 = drawNativeNotification
              SHX1_2 = "Press ~INPUT_PICKUP~ to play Jackpot!"
              SHX0_2(SHX1_2)
            else
              SHX0_2 = drawNativeNotification
              SHX1_2 = "This seat is taken."
              SHX0_2(SHX1_2)
            end
            SHX0_2 = SHX24_1
            SHX1_2 = true
            SHX0_2(SHX1_2)
            SHX0_2 = SHX23_1
            if not SHX0_2 then
              SHX0_2 = true
              SHX23_1 = SHX0_2
              SHX0_2 = PlaySoundFrontend
              SHX1_2 = -1
              SHX2_2 = "DLC_VW_RULES"
              SHX3_2 = "dlc_vw_table_games_frontend_sounds"
              SHX4_2 = true
              SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
              SHX0_2 = PlaySoundFrontend
              SHX1_2 = -1
              SHX2_2 = "DLC_VW_WIN_CHIPS"
              SHX3_2 = "dlc_vw_table_games_frontend_sounds"
              SHX4_2 = true
              SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
            end
            SHX0_2 = SHX1_1
            while true do
              SHX1_2 = SHX1_1
              if SHX0_2 ~= SHX1_2 then
                break
              end
              SHX1_2 = SHX2_1
              if not (SHX1_2 < 2) then
                break
              end
              SHX1_2 = Wait
              SHX2_2 = 0
              SHX1_2(SHX2_2)
            end
            SHX1_2 = SHX24_1
            SHX2_2 = false
            SHX1_2(SHX2_2)
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX25_1(SHX26_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "f16cebea30"
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX11_1 = SHX0_2
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "05fba39b23"
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX17_1 = SHX0_2
end
SHX25_1(SHX26_1, SHX27_1)
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetEntityModel
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2)
  if 1885233650 == SHX0_2 then
    SHX1_2 = "anim_casino_a@amb@casino@games@insidetrack@male"
    return SHX1_2
  else
    SHX1_2 = "anim_casino_a@amb@casino@games@insidetrack@female"
    return SHX1_2
  end
end
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX20_1
  SHX1_2 = SHX1_2[SHX0_2]
  return SHX1_2
end
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = -135.0
  return SHX0_2
end
function SHX28_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  if SHX1_2 == SHX2_2 then
    return SHX1_2
  end
  SHX3_2 = SHX2_2 - SHX1_2
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = SHX0_2 - SHX1_2
  SHX5_2 = SHX5_2 / SHX3_2
  SHX5_2 = SHX5_2 * SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX0_2 = SHX0_2 - SHX4_2
  if SHX1_2 > SHX0_2 then
    SHX0_2 = SHX0_2 + SHX3_2
  end
  return SHX0_2
end
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX26_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetEntityCoords
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = GetHeadingFromVector_2d
  SHX4_2 = SHX2_2.x
  SHX5_2 = SHX1_2.x
  SHX4_2 = SHX4_2 - SHX5_2
  SHX5_2 = SHX2_2.y
  SHX6_2 = SHX1_2.y
  SHX5_2 = SHX5_2 - SHX6_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = SHX27_1
  SHX4_2 = SHX4_2()
  SHX3_2 = SHX3_2 - SHX4_2
  SHX4_2 = SHX28_1
  SHX5_2 = SHX3_2 - 180.0
  SHX6_2 = 0.0
  SHX7_2 = 360.0
  return SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
function SHX30_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX29_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = 180.0
  if SHX1_2 <= SHX2_2 then
    if SHX1_2 < 105.0 and 14 == SHX0_2 then
      SHX2_2 = "ENTER_LEFT_READYIDLE_SHORT"
      return SHX2_2
    end
    SHX2_2 = "ENTER_LEFT_READYIDLE"
    return SHX2_2
  end
  SHX2_2 = 255.0
  if SHX1_2 > SHX2_2 and 15 == SHX0_2 then
    SHX2_2 = "ENTER_RIGHT_READYIDLE_SHORT"
    return SHX2_2
  end
  SHX2_2 = "ENTER_RIGHT_READYIDLE"
  return SHX2_2
end
function SHX31_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX4_2 = vector3
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  if SHX1_2 then
    SHX5_2 = SHX26_1
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX4_2 = SHX5_2
  else
    SHX5_2 = SHX26_1
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = GetAnimInitialOffsetPosition
    SHX7_2 = SHX2_2
    SHX8_2 = SHX3_2
    SHX9_2 = SHX5_2.x
    SHX10_2 = SHX5_2.y
    SHX11_2 = SHX5_2.z
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = SHX27_1
    SHX14_2 = SHX14_2()
    SHX15_2 = 0.01
    SHX16_2 = 2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX4_2 = SHX6_2
  end
  return SHX4_2
end
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = RequestScaleformMovie
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  while true do
    SHX2_2 = HasScaleformMovieLoaded
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "CLEAR_ALL"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_CLEAR_SPACE"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 200
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 1
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 194
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Leave chair"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 191
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Place bet"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 2
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 11
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Lower bet"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 3
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 10
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Increase bet"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 4
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 22
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Custom bet"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_BACKGROUND_COLOUR"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 80
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  return SHX1_2
end
function SHX33_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX4_2 = 0.0
  if SHX1_2 then
    SHX5_2 = SHX27_1
    SHX5_2 = SHX5_2()
    SHX4_2 = SHX5_2
  else
    SHX5_2 = SHX26_1
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = GetAnimInitialOffsetRotation
    SHX7_2 = SHX2_2
    SHX8_2 = SHX3_2
    SHX9_2 = SHX5_2.x
    SHX10_2 = SHX5_2.y
    SHX11_2 = SHX5_2.z
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = SHX27_1
    SHX14_2 = SHX14_2()
    SHX15_2 = 0.01
    SHX16_2 = 2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX4_2 = SHX6_2.z
  end
  return SHX4_2
end
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX1_2 = SHX24_1
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = SHX25_1
  SHX1_2 = SHX1_2()
  SHX2_2 = HasAnimDictLoaded
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = RequestAnimDict
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
    while true do
      SHX2_2 = HasAnimDictLoaded
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        break
      end
      SHX2_2 = Wait
      SHX3_2 = 0
      SHX2_2(SHX3_2)
    end
  end
  SHX2_2 = SHX30_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX31_1
  SHX4_2 = SHX0_2
  SHX5_2 = 0
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SHX33_1
  SHX5_2 = SHX0_2
  SHX6_2 = 0
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = GetAnimInitialOffsetPosition
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX9_2 = SHX3_2.x
  SHX10_2 = SHX3_2.y
  SHX11_2 = SHX3_2.z
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = SHX4_2
  SHX15_2 = 0.0
  SHX16_2 = 2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX7_2 = GetAnimInitialOffsetRotation
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2
  SHX10_2 = SHX3_2.x
  SHX11_2 = SHX3_2.y
  SHX12_2 = SHX3_2.z
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = SHX4_2
  SHX16_2 = 0.0
  SHX17_2 = 2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX8_2 = TaskGoStraightToCoord
  SHX9_2 = SHX5_2
  SHX10_2 = SHX6_2.x
  SHX11_2 = SHX6_2.y
  SHX12_2 = SHX6_2.z
  SHX13_2 = 1.0
  SHX14_2 = 20000
  SHX15_2 = SHX4_2 + 180.0
  SHX16_2 = 0.0
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  while true do
    SHX8_2 = GetScriptTaskStatus
    SHX9_2 = SHX5_2
    SHX10_2 = 2106541073
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if 7 == SHX8_2 then
      break
    end
    SHX8_2 = Citizen
    SHX8_2 = SHX8_2.Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
  SHX8_2 = SetEntityCoordsNoOffset
  SHX9_2 = SHX5_2
  SHX10_2 = SHX6_2.x
  SHX11_2 = SHX6_2.y
  SHX12_2 = SHX6_2.z
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX8_2 = SetEntityRotation
  SHX9_2 = SHX5_2
  SHX10_2 = SHX7_2.x
  SHX11_2 = SHX7_2.y
  SHX12_2 = SHX7_2.z
  SHX13_2 = 2
  SHX14_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX8_2 = TaskPlayAnimAdvanced
  SHX9_2 = SHX5_2
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2.x
  SHX13_2 = SHX3_2.y
  SHX14_2 = SHX3_2.z
  SHX15_2 = 0.0
  SHX16_2 = 0.0
  SHX17_2 = SHX4_2
  SHX18_2 = 2.0
  SHX19_2 = -2.0
  SHX20_2 = -1
  SHX21_2 = 790530
  SHX22_2 = 0.0
  SHX23_2 = 2
  SHX24_2 = 0
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX8_2 = PlayFacialAnim
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2 = SHX9_2()
  SHX10_2 = "enter_left_readyidle_facial"
  SHX11_2 = SHX1_2
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = RemoveAnimDict
  SHX9_2 = SHX1_2
  SHX8_2(SHX9_2)
  SHX8_2 = nil
  SHX9_2 = nil
  SHX10_2 = SHX0_2 + 1
  if SHX10_2 >= 10 then
    SHX11_2 = GetHashKey
    SHX12_2 = "vw_vwint01_betting_sreen_"
    SHX13_2 = tostring
    SHX14_2 = SHX10_2
    SHX13_2 = SHX13_2(SHX14_2)
    SHX12_2 = SHX12_2 .. SHX13_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX8_2 = SHX11_2
  else
    SHX11_2 = GetHashKey
    SHX12_2 = "vw_vwint01_betting_sreen_0"
    SHX13_2 = tostring
    SHX14_2 = SHX10_2
    SHX13_2 = SHX13_2(SHX14_2)
    SHX12_2 = SHX12_2 .. SHX13_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX8_2 = SHX11_2
  end
  if SHX10_2 >= 8 then
    SHX11_2 = SHX19_1
    SHX12_2 = "casinoscreen_"
    SHX13_2 = tostring
    SHX14_2 = SHX10_2 + 2
    SHX13_2 = SHX13_2(SHX14_2)
    SHX12_2 = SHX12_2 .. SHX13_2
    SHX13_2 = SHX8_2
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX9_2 = SHX11_2
  else
    SHX11_2 = SHX19_1
    SHX12_2 = "casinoscreen_0"
    SHX13_2 = tostring
    SHX14_2 = SHX10_2 + 2
    SHX13_2 = SHX13_2(SHX14_2)
    SHX12_2 = SHX12_2 .. SHX13_2
    SHX13_2 = SHX8_2
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX9_2 = SHX11_2
  end
  SHX11_2 = true
  SHX6_1 = SHX11_2
  SHX11_2 = SHX32_1
  SHX12_2 = "instructional_buttons"
  SHX11_2 = SHX11_2(SHX12_2)
  SHX12_2 = Citizen
  SHX12_2 = SHX12_2.CreateThread
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
    while true do
      SHX0_3 = SHX0_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = SetTextRenderId
      SHX1_3 = SHX9_2
      SHX0_3(SHX1_3)
      SHX0_3 = SetScriptGfxDrawOrder
      SHX1_3 = 4
      SHX0_3(SHX1_3)
      SHX0_3 = SetScriptGfxDrawBehindPausemenu
      SHX1_3 = true
      SHX0_3(SHX1_3)
      SHX0_3 = SHX10_1
      if SHX0_3 then
        SHX0_3 = DrawAdvancedText
        SHX1_3 = 0.584
        SHX2_3 = 0.181
        SHX3_3 = 0.005
        SHX4_3 = 0.0028
        SHX5_3 = 0.6
        SHX6_3 = math
        SHX6_3 = SHX6_3.floor
        SHX7_3 = SHX11_1
        SHX7_3 = SHX7_3 * 1000
        SHX6_3 = SHX6_3(SHX7_3)
        SHX6_3 = SHX6_3 / 1000
        SHX7_3 = "% chance of winning!"
        SHX6_3 = SHX6_3 .. SHX7_3
        SHX7_3 = 255
        SHX8_3 = 255
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 0
        SHX12_3 = 0
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        SHX0_3 = DrawAdvancedText
        SHX1_3 = 0.489
        SHX2_3 = 0.74
        SHX3_3 = 0.005
        SHX4_3 = 0.0028
        SHX5_3 = 0.6
        SHX6_3 = "Your colour is"
        SHX7_3 = 255
        SHX8_3 = 255
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 0
        SHX12_3 = 0
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        SHX0_3 = SHX22_1
        if nil ~= SHX0_3 then
          SHX0_3 = pairs
          SHX1_3 = SHX22_1
          SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
          for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
            SHX6_3 = SHX5_3.user_id
            SHX7_3 = CMG
            SHX7_3 = SHX7_3.getClientUserId
            SHX7_3 = SHX7_3()
            if SHX6_3 == SHX7_3 then
              SHX6_3 = DrawRect
              SHX7_3 = 0.72
              SHX8_3 = 0.82
              SHX9_3 = 0.115
              SHX10_3 = 0.156
              SHX11_3 = SHX22_1
              SHX11_3 = SHX11_3[SHX4_3]
              SHX11_3 = SHX11_3.colour
              SHX11_3 = SHX11_3.r
              SHX12_3 = SHX22_1
              SHX12_3 = SHX12_3[SHX4_3]
              SHX12_3 = SHX12_3.colour
              SHX12_3 = SHX12_3.g
              SHX13_3 = SHX22_1
              SHX13_3 = SHX13_3[SHX4_3]
              SHX13_3 = SHX13_3.colour
              SHX13_3 = SHX13_3.b
              SHX14_3 = SHX22_1
              SHX14_3 = SHX14_3[SHX4_3]
              SHX14_3 = SHX14_3.colour
              SHX14_3 = SHX14_3.a
              SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
            end
          end
        end
      else
        SHX0_3 = DrawAdvancedText
        SHX1_3 = 0.584
        SHX2_3 = 0.181
        SHX3_3 = 0.005
        SHX4_3 = 0.0028
        SHX5_3 = 0.6
        SHX6_3 = "Buy Tickets"
        SHX7_3 = 255
        SHX8_3 = 255
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 0
        SHX12_3 = 0
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      end
      SHX0_3 = SHX8_1
      if SHX0_3 then
        SHX0_3 = DrawAdvancedText
        SHX1_3 = 0.584
        SHX2_3 = 0.465
        SHX3_3 = 0.005
        SHX4_3 = 0.0028
        SHX5_3 = 0.7
        SHX6_3 = getMoneyStringFormatted
        SHX7_3 = SHX16_1
        SHX6_3 = SHX6_3(SHX7_3)
        SHX7_3 = " tickets"
        SHX6_3 = SHX6_3 .. SHX7_3
        SHX7_3 = 0
        SHX8_3 = 153
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 0
        SHX12_3 = 0
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        SHX0_3 = DrawAdvancedText
        SHX1_3 = 0.584
        SHX2_3 = 0.765
        SHX3_3 = 0.005
        SHX4_3 = 0.0028
        SHX5_3 = 0.6
        SHX6_3 = "Press [ENTER] to confirm bet!"
        SHX7_3 = 255
        SHX8_3 = 255
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 0
        SHX12_3 = 0
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      else
        SHX0_3 = DrawAdvancedText
        SHX1_3 = 0.584
        SHX2_3 = 0.465
        SHX3_3 = 0.005
        SHX4_3 = 0.0028
        SHX5_3 = 0.7
        SHX6_3 = getMoneyStringFormatted
        SHX7_3 = SHX16_1
        SHX6_3 = SHX6_3(SHX7_3)
        SHX7_3 = " tickets"
        SHX6_3 = SHX6_3 .. SHX7_3
        SHX7_3 = 0
        SHX8_3 = 204
        SHX9_3 = 102
        SHX10_3 = 255
        SHX11_3 = 0
        SHX12_3 = 0
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      end
      SHX0_3 = SetTextRenderId
      SHX1_3 = GetDefaultScriptRendertargetRenderId
      SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3 = SHX1_3()
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
      SHX0_3 = SetScriptGfxDrawBehindPausemenu
      SHX1_3 = false
      SHX0_3(SHX1_3)
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX12_2(SHX13_2)
  SHX12_2 = Citizen
  SHX12_2 = SHX12_2.CreateThread
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    while true do
      SHX0_3 = SHX6_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = DrawScaleformMovieFullscreen
      SHX1_3 = SHX11_2
      SHX2_3 = 255
      SHX3_3 = 255
      SHX4_3 = 255
      SHX5_3 = 255
      SHX6_3 = 0
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX12_2(SHX13_2)
end
SHX35_1 = RegisterNetEvent
SHX36_1 = "3dc617a9ae"
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX5_1 = SHX0_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = true
  SHX0_1 = SHX1_2
  SHX1_2 = SHX34_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX35_1(SHX36_1, SHX37_1)
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX6_1
  if SHX0_2 then
    SHX0_2 = IsDisabledControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 22
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.GetRageInputInt
      SHX1_2 = "Bet Amount"
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 and SHX0_2 > 0 then
        SHX16_1 = SHX0_2
        SHX1_2 = false
        SHX8_1 = SHX1_2
      end
    end
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 201
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX8_1
      if SHX0_2 then
        SHX0_2 = TriggerServerEvent
        SHX1_2 = "a1b3e3fa14"
        SHX2_2 = SHX16_1
        SHX0_2(SHX1_2, SHX2_2)
      else
        SHX0_2 = tonumber
        SHX1_2 = SHX16_1
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 >= 0 then
          SHX0_2 = true
          SHX8_1 = SHX0_2
          SHX0_2 = Wait
          SHX1_2 = 100
          SHX0_2(SHX1_2)
        else
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.notify
          SHX1_2 = "~r~Invalid amount."
          SHX0_2(SHX1_2)
        end
      end
    end
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = 10
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX16_1
      SHX0_2 = SHX0_2 + 100
      SHX16_1 = SHX0_2
      SHX0_2 = false
      SHX8_1 = SHX0_2
    end
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = 11
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX16_1
      if SHX0_2 >= 100 then
        SHX0_2 = SHX16_1
        SHX0_2 = SHX0_2 - 100
        SHX16_1 = SHX0_2
        SHX0_2 = false
        SHX8_1 = SHX0_2
      end
    end
  end
end
SHX36_1 = CMG
SHX36_1 = SHX36_1.createThreadOnTick
SHX37_1 = SHX35_1
SHX38_1 = "Casino Jackpot Bet"
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = Citizen
SHX36_1 = SHX36_1.CreateThread
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = SHX1_1
    if -1 ~= SHX0_2 then
      SHX0_2 = SHX2_1
      if SHX0_2 < 2 then
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 0
        SHX2_2 = 38
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if SHX0_2 then
          SHX1_2 = SHX1_1
          SHX0_2 = SHX4_1
          SHX0_2 = SHX0_2[SHX1_2]
          if false == SHX0_2 then
            SHX0_2 = TriggerServerEvent
            SHX1_2 = "5fa84f5579"
            SHX2_2 = SHX1_1
            SHX0_2(SHX1_2, SHX2_2)
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX36_1(SHX37_1)
SHX36_1 = AddEventHandler
SHX37_1 = "CMG:onClientSpawn"
function SHX38_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "36b442c245"
    SHX2_2(SHX3_2)
  end
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "7bd6881732"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX4_1 = SHX0_2
end
SHX36_1(SHX37_1, SHX38_1)
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = SHX6_1
    if SHX0_2 then
      SHX0_2 = SetPedCapsule
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2 = SHX1_2()
      SHX2_2 = 0.2
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 0
      SHX2_2 = 202
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = SHX7_1
        if not SHX0_2 then
          SHX0_2 = SHX5_1
          SHX1_2 = SHX25_1
          SHX1_2 = SHX1_2()
          SHX2_2 = "exit_left"
          SHX3_2 = SHX31_1
          SHX4_2 = SHX0_2
          SHX5_2 = 0
          SHX6_2 = SHX1_2
          SHX7_2 = SHX2_2
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX4_2 = SHX33_1
          SHX5_2 = SHX0_2
          SHX6_2 = 0
          SHX7_2 = SHX1_2
          SHX8_2 = SHX2_2
          SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          SHX5_2 = TaskPlayAnimAdvanced
          SHX6_2 = PlayerPedId
          SHX6_2 = SHX6_2()
          SHX7_2 = SHX1_2
          SHX8_2 = SHX2_2
          SHX9_2 = SHX3_2.x
          SHX10_2 = SHX3_2.y
          SHX11_2 = SHX3_2.z
          SHX12_2 = 0.0
          SHX13_2 = 0.0
          SHX14_2 = SHX4_2
          SHX15_2 = 2.0
          SHX16_2 = -2.0
          SHX17_2 = -1
          SHX18_2 = 790528
          SHX19_2 = 0.0
          SHX20_2 = 2
          SHX21_2 = 0
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
          SHX5_2 = PlayFacialAnim
          SHX6_2 = CMG
          SHX6_2 = SHX6_2.getPlayerPed
          SHX6_2 = SHX6_2()
          SHX7_2 = "exit_left_facial"
          SHX8_2 = SHX1_2
          SHX5_2(SHX6_2, SHX7_2, SHX8_2)
          SHX5_2 = SetTimeout
          SHX6_2 = 2500
          function SHX7_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3
            SHX0_3 = ClearPedTasks
            SHX1_3 = CMG
            SHX1_3 = SHX1_3.getPlayerPed
            SHX1_3 = SHX1_3()
            SHX0_3(SHX1_3)
          end
          SHX5_2(SHX6_2, SHX7_2)
          SHX5_2 = tCMG
          SHX5_2 = SHX5_2.setCanAnim
          SHX6_2 = true
          SHX5_2(SHX6_2)
          SHX5_2 = false
          SHX0_1 = SHX5_2
          SHX5_2 = true
          SHX3_1 = SHX5_2
          SHX5_2 = false
          SHX6_1 = SHX5_2
          SHX5_2 = SHX24_1
          SHX6_2 = false
          SHX5_2(SHX6_2)
          SHX5_2 = TriggerServerEvent
          SHX6_2 = "189c2ad027"
          SHX5_2(SHX6_2)
          SHX5_2 = -1
          SHX5_1 = SHX5_2
          SHX5_2 = SetTimeout
          SHX6_2 = 5000
          function SHX7_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3
            SHX0_3 = false
            SHX3_1 = SHX0_3
          end
          SHX5_2(SHX6_2, SHX7_2)
        end
      end
    end
  end
end
SHX37_1 = CMG
SHX37_1 = SHX37_1.createThreadOnTick
SHX38_1 = SHX36_1
SHX39_1 = "Casino Jackpot Tick"
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = RegisterNetEvent
SHX38_1 = "5b098b67a8"
function SHX39_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX5_2 = SHX22_1
  SHX5_2 = SHX5_2[SHX0_2]
  if not SHX5_2 then
    return
  end
  SHX5_2 = 0.5
  SHX9_1 = SHX5_2
  SHX5_2 = SHX22_1
  SHX5_2 = SHX5_2[SHX0_2]
  SHX5_2 = SHX5_2.centerXPos
  SHX6_2 = SHX22_1
  SHX6_2 = SHX6_2[SHX0_2]
  SHX6_2 = SHX6_2.rectLength
  SHX7_2 = SHX6_2 / 2
  SHX7_2 = SHX5_2 - SHX7_2
  SHX8_2 = SHX1_2 * SHX6_2
  SHX5_2 = SHX7_2 + SHX8_2
  SHX7_2 = 0.5
  SHX8_2 = SHX5_2
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = 0
  SHX12_2 = GetEntityCoords
  SHX13_2 = CMG
  SHX13_2 = SHX13_2.getPlayerPed
  SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX13_2()
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX13_2 = vector3
  SHX14_2 = 1096.3543701172
  SHX15_2 = 261.18997192383
  SHX16_2 = -51.241153717041
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
  SHX13_2 = SHX12_2 - SHX13_2
  SHX13_2 = #SHX13_2
  SHX14_2 = false
  if SHX13_2 <= 10 then
    SHX15_2 = SendNUIMessage
    SHX16_2 = {}
    SHX16_2.transactionType = "jackpotroll"
    SHX15_2(SHX16_2)
    SHX14_2 = true
  end
  SHX15_2 = GetGameTimer
  SHX15_2 = SHX15_2()
  while 0.0 ~= SHX7_2 do
    SHX16_2 = GetFrameTime
    SHX16_2 = SHX16_2()
    SHX17_2 = SHX9_1
    SHX18_2 = 0.9
    if SHX17_2 > SHX18_2 then
      SHX17_2 = 0.1
      SHX9_1 = SHX17_2
      SHX9_2 = SHX9_2 + 1
    end
    if 1 == SHX9_2 and not SHX10_2 then
      SHX10_2 = true
      SHX17_2 = SetTimeout
      SHX18_2 = 4000
      function SHX19_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3
        SHX0_3 = 0.4
        SHX7_2 = SHX0_3
        SHX0_3 = SetTimeout
        SHX1_3 = 2500
        function SHX2_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4, SHX2_4
          SHX0_4 = 0.35
          SHX7_2 = SHX0_4
          SHX0_4 = SetTimeout
          SHX1_4 = 1250
          function SHX2_4()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_5, SHX1_5, SHX2_5
            SHX0_5 = 0.3
            SHX7_2 = SHX0_5
            SHX0_5 = SetTimeout
            SHX1_5 = 625
            function SHX2_5()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_6, SHX1_6, SHX2_6
              SHX0_6 = 0.25
              SHX7_2 = SHX0_6
              SHX0_6 = SetTimeout
              SHX1_6 = 625
              function SHX2_6()
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX0_7, SHX1_7, SHX2_7
                SHX0_7 = 0.2
                SHX7_2 = SHX0_7
                SHX0_7 = SetTimeout
                SHX1_7 = 500
                function SHX2_7()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_8, SHX1_8, SHX2_8
                  SHX0_8 = 0.15
                  SHX7_2 = SHX0_8
                  SHX0_8 = SetTimeout
                  SHX1_8 = 500
                  function SHX2_8()
                    -- [AI CLEANUP] Decompiled Lua - Fix these:
                    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                    -- 3. Replace goto/label with while/repeat-until where possible
                    -- 4. Remove decompiler comments, add meaningful ones
                    -- 5. Fix indentation and formatting
                    
                    local SHX0_9, SHX1_9, SHX2_9
                    SHX0_9 = 0.1
                    SHX7_2 = SHX0_9
                    SHX0_9 = SetTimeout
                    SHX1_9 = 1500
                    function SHX2_9()
                      -- [AI CLEANUP] Decompiled Lua - Fix these:
                      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                      -- 3. Replace goto/label with while/repeat-until where possible
                      -- 4. Remove decompiler comments, add meaningful ones
                      -- 5. Fix indentation and formatting
                      
                      local SHX0_10, SHX1_10, SHX2_10
                      SHX0_10 = SetTimeout
                      SHX1_10 = 1000
                      function SHX2_10()
                        -- [AI CLEANUP] Decompiled Lua - Fix these:
                        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                        -- 3. Replace goto/label with while/repeat-until where possible
                        -- 4. Remove decompiler comments, add meaningful ones
                        -- 5. Fix indentation and formatting
                        
                        local SHX0_11, SHX1_11, SHX2_11
                        SHX0_11 = SetTimeout
                        SHX1_11 = 750
                        function SHX2_11()
                          -- [AI CLEANUP] Decompiled Lua - Fix these:
                          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                          -- 3. Replace goto/label with while/repeat-until where possible
                          -- 4. Remove decompiler comments, add meaningful ones
                          -- 5. Fix indentation and formatting
                          
                          local SHX0_12, SHX1_12, SHX2_12, SHX3_12
                          SHX0_12 = 0
                          SHX1_12 = SHX9_1
                          SHX2_12 = SHX8_2
                          if SHX1_12 > SHX2_12 then
                            SHX0_12 = 0.9
                          end
                          SHX1_12 = SHX8_2
                          SHX2_12 = SHX9_1
                          SHX2_12 = SHX2_12 - SHX0_12
                          SHX1_12 = SHX1_12 - SHX2_12
                          SHX2_12 = SHX9_1
                          SHX3_12 = SHX8_2
                          if SHX2_12 < SHX3_12 then
                            while true do
                              SHX2_12 = SHX9_1
                              SHX2_12 = SHX2_12 - SHX0_12
                              SHX3_12 = SHX8_2
                              if not (SHX2_12 < SHX3_12) then
                                break
                              end
                              SHX2_12 = GetGameTimer
                              SHX2_12 = SHX2_12()
                              SHX3_12 = SHX15_2
                              SHX2_12 = SHX2_12 - SHX3_12
                              SHX3_12 = 120000
                              if not (SHX2_12 < SHX3_12) then
                                break
                              end
                              SHX2_12 = SHX9_1
                              SHX3_12 = SHX8_2
                              if SHX2_12 > SHX3_12 then
                                SHX0_12 = 0.9
                              else
                                SHX0_12 = 0.0
                              end
                              SHX2_12 = SHX8_2
                              SHX3_12 = SHX9_1
                              SHX3_12 = SHX3_12 - SHX0_12
                              SHX1_12 = SHX2_12 - SHX3_12
                              SHX2_12 = 0.1
                              if SHX1_12 < SHX2_12 then
                                SHX2_12 = 0.025
                                SHX7_2 = SHX2_12
                              else
                                SHX2_12 = 0.3
                                if SHX1_12 < SHX2_12 then
                                  SHX2_12 = 0.035
                                  SHX7_2 = SHX2_12
                                else
                                  SHX2_12 = 0.4
                                  if SHX1_12 < SHX2_12 then
                                    SHX2_12 = 0.05
                                    SHX7_2 = SHX2_12
                                  else
                                    SHX2_12 = 0.5
                                    if SHX1_12 < SHX2_12 then
                                      SHX2_12 = 0.075
                                      SHX7_2 = SHX2_12
                                    end
                                  end
                                end
                              end
                              SHX2_12 = Wait
                              SHX3_12 = 0
                              SHX2_12(SHX3_12)
                            end
                          else
                            SHX2_12 = SHX9_1
                            SHX3_12 = SHX8_2
                            if SHX2_12 > SHX3_12 then
                              while true do
                                SHX2_12 = SHX9_1
                                SHX2_12 = SHX2_12 - SHX0_12
                                SHX3_12 = SHX8_2
                                if not (SHX2_12 < SHX3_12) then
                                  break
                                end
                                SHX2_12 = GetGameTimer
                                SHX2_12 = SHX2_12()
                                SHX3_12 = SHX15_2
                                SHX2_12 = SHX2_12 - SHX3_12
                                SHX3_12 = 120000
                                if not (SHX2_12 < SHX3_12) then
                                  break
                                end
                                SHX2_12 = SHX9_1
                                SHX3_12 = SHX8_2
                                if SHX2_12 > SHX3_12 then
                                  SHX0_12 = 0.9
                                else
                                  SHX0_12 = 0.0
                                end
                                SHX2_12 = SHX8_2
                                SHX3_12 = SHX9_1
                                SHX3_12 = SHX3_12 - SHX0_12
                                SHX1_12 = SHX2_12 - SHX3_12
                                SHX2_12 = 0.1
                                if SHX1_12 < SHX2_12 then
                                  SHX2_12 = 0.025
                                  SHX7_2 = SHX2_12
                                else
                                  SHX2_12 = 0.3
                                  if SHX1_12 < SHX2_12 then
                                    SHX2_12 = 0.035
                                    SHX7_2 = SHX2_12
                                  else
                                    SHX2_12 = 0.4
                                    if SHX1_12 < SHX2_12 then
                                      SHX2_12 = 0.05
                                      SHX7_2 = SHX2_12
                                    else
                                      SHX2_12 = 0.5
                                      if SHX1_12 < SHX2_12 then
                                        SHX2_12 = 0.075
                                        SHX7_2 = SHX2_12
                                      end
                                    end
                                  end
                                end
                                SHX2_12 = Wait
                                SHX3_12 = 0
                                SHX2_12(SHX3_12)
                              end
                            end
                          end
                          SHX2_12 = 0.0
                          SHX7_2 = SHX2_12
                          SHX2_12 = SHX2_2
                          SHX14_1 = SHX2_12
                          SHX2_12 = SHX3_2
                          SHX15_1 = SHX2_12
                          SHX2_12 = SHX14_2
                          if SHX2_12 then
                            SHX2_12 = SHX4_2
                            SHX3_12 = CMG
                            SHX3_12 = SHX3_12.getClientUserId
                            SHX3_12 = SHX3_12()
                            if SHX2_12 == SHX3_12 then
                              SHX2_12 = SendNUIMessage
                              SHX3_12 = {}
                              SHX3_12.transactionType = "playCasinoWin"
                              SHX2_12(SHX3_12)
                              SHX2_12 = TriggerServerEvent
                              SHX3_12 = "9aef7155c0"
                              SHX2_12(SHX3_12)
                            else
                              SHX2_12 = SHX5_1
                              if -1 ~= SHX2_12 then
                                SHX2_12 = SendNUIMessage
                                SHX3_12 = {}
                                SHX3_12.transactionType = "playCasinoLose"
                                SHX2_12(SHX3_12)
                              end
                            end
                          end
                        end
                        SHX0_11(SHX1_11, SHX2_11)
                      end
                      SHX0_10(SHX1_10, SHX2_10)
                    end
                    SHX0_9(SHX1_9, SHX2_9)
                  end
                  SHX0_8(SHX1_8, SHX2_8)
                end
                SHX0_7(SHX1_7, SHX2_7)
              end
              SHX0_6(SHX1_6, SHX2_6)
            end
            SHX0_5(SHX1_5, SHX2_5)
          end
          SHX0_4(SHX1_4, SHX2_4)
        end
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX17_2(SHX18_2, SHX19_2)
    end
    SHX17_2 = SHX9_1
    SHX18_2 = SHX7_2 * SHX16_2
    SHX17_2 = SHX17_2 + SHX18_2
    SHX9_1 = SHX17_2
    SHX17_2 = SHX7_2 * SHX16_2
    SHX11_2 = SHX11_2 + SHX17_2
    SHX17_2 = Wait
    SHX18_2 = 0
    SHX17_2(SHX18_2)
  end
end
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = Citizen
SHX37_1 = SHX37_1.CreateThread
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isInsideDiamondCasino
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = Wait
  SHX1_2 = 5000
  SHX0_2(SHX1_2)
  SHX0_2 = -214651601
  SHX1_2 = SHX19_1
  SHX2_2 = "casinoscreen_02"
  SHX3_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  while true do
    SHX2_2 = SetTextRenderId
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
    SHX2_2 = SetScriptGfxDrawOrder
    SHX3_2 = 4
    SHX2_2(SHX3_2)
    SHX2_2 = SetScriptGfxDrawBehindPausemenu
    SHX3_2 = true
    SHX2_2(SHX3_2)
    SHX2_2 = SHX22_1
    SHX2_2 = #SHX2_2
    if 0 ~= SHX2_2 then
      SHX2_2 = SHX22_1
      SHX3_2 = #SHX2_2
      SHX2_2 = SHX22_1
      SHX2_2 = SHX2_2[SHX3_2]
      SHX2_2 = SHX2_2.tickets_end
      SHX3_2 = 0.1
      SHX4_2 = 0.8
      SHX5_2 = 0.0
      SHX6_2 = 1
      SHX7_2 = SHX22_1
      SHX7_2 = #SHX7_2
      SHX8_2 = 1
      for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
        SHX10_2 = SHX22_1
        SHX10_2 = SHX10_2[SHX9_2]
        SHX10_2 = SHX10_2.tickets_end
        SHX11_2 = SHX22_1
        SHX11_2 = SHX11_2[SHX9_2]
        SHX11_2 = SHX11_2.tickets_start
        SHX10_2 = SHX10_2 - SHX11_2
        SHX10_2 = SHX10_2 + 1
        SHX11_2 = SHX10_2 / SHX2_2
        SHX12_2 = SHX11_2 * SHX4_2
        SHX13_2 = SHX22_1
        SHX13_2 = SHX13_2[SHX9_2]
        SHX14_2 = SHX4_2 * SHX5_2
        SHX14_2 = SHX3_2 + SHX14_2
        SHX15_2 = SHX12_2 / 2
        SHX14_2 = SHX14_2 + SHX15_2
        SHX13_2.centerXPos = SHX14_2
        SHX13_2 = SHX22_1
        SHX13_2 = SHX13_2[SHX9_2]
        SHX13_2.rectLength = SHX12_2
        SHX13_2 = DrawRect
        SHX14_2 = SHX4_2 * SHX5_2
        SHX14_2 = SHX3_2 + SHX14_2
        SHX15_2 = SHX12_2 / 2
        SHX14_2 = SHX14_2 + SHX15_2
        SHX15_2 = 0.5
        SHX16_2 = SHX4_2 * SHX11_2
        SHX17_2 = 0.2
        SHX18_2 = SHX22_1
        SHX18_2 = SHX18_2[SHX9_2]
        SHX18_2 = SHX18_2.colour
        SHX18_2 = SHX18_2.r
        SHX19_2 = SHX22_1
        SHX19_2 = SHX19_2[SHX9_2]
        SHX19_2 = SHX19_2.colour
        SHX19_2 = SHX19_2.g
        SHX20_2 = SHX22_1
        SHX20_2 = SHX20_2[SHX9_2]
        SHX20_2 = SHX20_2.colour
        SHX20_2 = SHX20_2.b
        SHX21_2 = SHX22_1
        SHX21_2 = SHX21_2[SHX9_2]
        SHX21_2 = SHX21_2.colour
        SHX21_2 = SHX21_2.a
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
        SHX5_2 = SHX5_2 + SHX11_2
      end
      SHX6_2 = SHX13_1
      if SHX6_2 then
        SHX6_2 = DrawAdvancedText
        SHX7_2 = 0.6
        SHX8_2 = 0.161
        SHX9_2 = 0.005
        SHX10_2 = 0.0028
        SHX11_2 = 1.12
        SHX12_2 = "Round starting in "
        SHX13_2 = SHX12_1
        SHX14_2 = "s"
        SHX12_2 = SHX12_2 .. SHX13_2 .. SHX14_2
        SHX13_2 = 255
        SHX14_2 = 255
        SHX15_2 = 255
        SHX16_2 = 255
        SHX17_2 = 4
        SHX18_2 = 0
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      else
        SHX6_2 = SHX18_1
        if SHX6_2 then
          SHX6_2 = DrawAdvancedText
          SHX7_2 = 0.6
          SHX8_2 = 0.161
          SHX9_2 = 0.005
          SHX10_2 = 0.0028
          SHX11_2 = 1.12
          SHX12_2 = "Waiting for bets"
          SHX13_2 = 255
          SHX14_2 = 255
          SHX15_2 = 255
          SHX16_2 = 255
          SHX17_2 = 4
          SHX18_2 = 0
          SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
        end
      end
      SHX6_2 = SHX14_1
      if SHX6_2 then
        SHX6_2 = DrawAdvancedText
        SHX7_2 = 0.6
        SHX8_2 = 0.161
        SHX9_2 = 0.005
        SHX10_2 = 0.0028
        SHX11_2 = 1.12
        SHX12_2 = SHX14_1
        SHX13_2 = " wins with a chance of "
        SHX14_2 = math
        SHX14_2 = SHX14_2.floor
        SHX15_2 = SHX15_1
        SHX15_2 = SHX15_2 * 1000
        SHX14_2 = SHX14_2(SHX15_2)
        SHX14_2 = SHX14_2 / 1000
        SHX15_2 = "%!"
        SHX12_2 = SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2
        SHX13_2 = 255
        SHX14_2 = 255
        SHX15_2 = 255
        SHX16_2 = 255
        SHX17_2 = 4
        SHX18_2 = 0
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      end
      SHX6_2 = SHX17_1
      if SHX6_2 then
        SHX6_2 = DrawAdvancedText
        SHX7_2 = 0.92
        SHX8_2 = 0.161
        SHX9_2 = 0.005
        SHX10_2 = 0.0028
        SHX11_2 = 1.12
        SHX12_2 = "Total Pot: "
        SHX13_2 = getMoneyStringFormatted
        SHX14_2 = SHX17_1
        SHX13_2 = SHX13_2(SHX14_2)
        SHX12_2 = SHX12_2 .. SHX13_2
        SHX13_2 = 255
        SHX14_2 = 255
        SHX15_2 = 255
        SHX16_2 = 255
        SHX17_2 = 4
        SHX18_2 = 0
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      end
      SHX6_2 = DrawRect
      SHX7_2 = SHX9_1
      SHX8_2 = 0.5
      SHX9_2 = -0.0025
      SHX10_2 = 0.346
      SHX11_2 = 243
      SHX12_2 = 198
      SHX13_2 = 50
      SHX14_2 = 255
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    else
      SHX2_2 = DrawAdvancedText
      SHX3_2 = 0.6
      SHX4_2 = 0.161
      SHX5_2 = 0.005
      SHX6_2 = 0.0028
      SHX7_2 = 1.12
      SHX8_2 = "Waiting for bets"
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 255
      SHX13_2 = 4
      SHX14_2 = 0
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    end
    SHX2_2 = SetTextRenderId
    SHX3_2 = GetDefaultScriptRendertargetRenderId
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX3_2()
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX2_2 = SetScriptGfxDrawBehindPausemenu
    SHX3_2 = false
    SHX2_2(SHX3_2)
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
SHX37_1(SHX38_1)
SHX37_1 = RegisterNetEvent
SHX38_1 = "9dd018b9d1"
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = false
  SHX6_1 = SHX0_2
  SHX0_2 = false
  SHX8_1 = SHX0_2
  SHX0_2 = true
  SHX10_1 = SHX0_2
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "Hack_Success"
  SHX3_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
  SHX4_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = RegisterNetEvent
SHX38_1 = "2c2e2d6e33"
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = false
  SHX18_1 = SHX0_2
  SHX0_2 = 60
  SHX12_1 = SHX0_2
  SHX0_2 = true
  SHX13_1 = SHX0_2
  SHX0_2 = SetTimeout
  SHX1_2 = 60000
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX13_1 = SHX0_3
  end
  SHX0_2(SHX1_2, SHX2_2)
end
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = RegisterNetEvent
SHX38_1 = "13b75dfa73"
function SHX39_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX22_1 = SHX0_2
end
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = RegisterNetEvent
SHX38_1 = "e907964993"
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = {}
  SHX22_1 = SHX0_2
  SHX0_2 = SHX5_1
  if -1 ~= SHX0_2 then
    SHX0_2 = true
    SHX6_1 = SHX0_2
    SHX0_2 = SHX25_1
    SHX0_2 = SHX0_2()
    SHX1_2 = "playidle_var_01"
    SHX2_2 = SHX31_1
    SHX3_2 = SHX5_1
    SHX4_2 = 0
    SHX5_2 = SHX0_2
    SHX6_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SHX33_1
    SHX4_2 = SHX5_1
    SHX5_2 = 0
    SHX6_2 = SHX0_2
    SHX7_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = NetworkCreateSynchronisedScene
    SHX5_2 = SHX2_2.x
    SHX6_2 = SHX2_2.y
    SHX7_2 = SHX2_2.z
    SHX8_2 = 0.0
    SHX9_2 = 0.0
    SHX10_2 = SHX3_2
    SHX11_2 = 2
    SHX12_2 = true
    SHX13_2 = false
    SHX14_2 = 1065353216
    SHX15_2 = 0
    SHX16_2 = 1065353216
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX5_2 = NetworkAddPedToSynchronisedScene
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.getPlayerPed
    SHX6_2 = SHX6_2()
    SHX7_2 = SHX4_2
    SHX8_2 = SHX0_2
    SHX9_2 = SHX1_2
    SHX10_2 = 2.0
    SHX11_2 = -2.0
    SHX12_2 = 5
    SHX13_2 = 0
    SHX14_2 = 1148846080
    SHX15_2 = 0
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX5_2 = NetworkStartSynchronisedScene
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
    SHX5_2 = SHX32_1
    SHX6_2 = "instructional_buttons"
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.CreateThread
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      while true do
        SHX0_3 = SHX6_1
        if not SHX0_3 then
          break
        end
        SHX0_3 = DrawScaleformMovieFullscreen
        SHX1_3 = SHX5_2
        SHX2_3 = 255
        SHX3_3 = 255
        SHX4_3 = 255
        SHX5_3 = 255
        SHX6_3 = 0
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        SHX0_3 = Wait
        SHX1_3 = 0
        SHX0_3(SHX1_3)
      end
    end
    SHX6_2(SHX7_2)
  end
  SHX0_2 = false
  SHX8_1 = SHX0_2
  SHX0_2 = false
  SHX10_1 = SHX0_2
  SHX0_2 = 0
  SHX16_1 = SHX0_2
  SHX0_2 = nil
  SHX14_1 = SHX0_2
  SHX0_2 = 0
  SHX15_1 = SHX0_2
  SHX0_2 = true
  SHX18_1 = SHX0_2
  SHX0_2 = 0
  SHX17_1 = SHX0_2
end
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = Citizen
SHX37_1 = SHX37_1.CreateThread
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = SHX12_1
    if SHX0_2 >= 0 then
      SHX0_2 = SHX12_1
      SHX0_2 = SHX0_2 - 1
      SHX12_1 = SHX0_2
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX37_1(SHX38_1)
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "c0475172e6"
  SHX0_2(SHX1_2)
end
SHX38_1 = CMG
SHX38_1 = SHX38_1.createArea
SHX39_1 = "casino_jackpot_scope"
SHX40_1 = SHX21_1
SHX41_1 = 75.0
SHX42_1 = 50.0
SHX43_1 = SHX37_1
function SHX44_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX46_1 = {}
SHX38_1(SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1)
