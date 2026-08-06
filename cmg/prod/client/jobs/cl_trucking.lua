-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgtruckmenu"
SHX2_1 = "job"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = ""
SHX5_1 = "~b~CMG Trucking"
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1 = SHX7_1()
SHX8_1 = "cmg_truckingjob"
SHX9_1 = "cmg_truckingjob"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1)
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_trucking"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = ""
SHX2_1 = {}
SHX2_1.vehicle = nil
SHX2_1.trailer = nil
SHX2_1.checkpoint = nil
SHX3_1 = 1
SHX4_1 = {}
SHX5_1 = {}
SHX6_1 = {}
SHX7_1 = false
SHX8_1 = false
SHX9_1 = 0
SHX10_1 = false
SHX11_1 = {}
SHX12_1 = false
globalTruckingOnDuty = false
SHX13_1 = 48
SHX14_1 = CMG
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX10_1
  return SHX0_2
end
SHX14_1.isDoingTruckRoute = SHX15_1
SHX14_1 = pairs
SHX15_1 = SHX0_1.jobs
SHX14_1, SHX15_1, SHX16_1, SHX17_1 = SHX14_1(SHX15_1)
for SHX18_1, SHX19_1 in SHX14_1, SHX15_1, SHX16_1, SHX17_1 do
  SHX20_1 = "Illegal" == SHX18_1
  SHX21_1 = SHX19_1
  SHX22_1 = SHX21_1.config
  if SHX22_1 then
    SHX22_1 = SHX21_1.config
    SHX22_1 = SHX22_1[1]
    SHX23_1 = SHX21_1.config
    SHX23_1 = SHX23_1[2]
    SHX24_1 = type
    SHX25_1 = SHX22_1
    SHX24_1 = SHX24_1(SHX25_1)
    if "vector3" == SHX24_1 then
      SHX24_1 = tCMG
      SHX24_1 = SHX24_1.addBlip
      SHX25_1 = SHX22_1.x
      SHX26_1 = SHX22_1.y
      SHX27_1 = SHX22_1.z
      SHX28_1 = 67
      SHX29_1 = 5
      SHX30_1 = SHX23_1
      SHX24_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
      if SHX20_1 then
        SHX25_1 = CMG
        SHX25_1 = SHX25_1.addBlipContext
        SHX26_1 = "Civilian"
        SHX27_1 = SHX24_1
        SHX25_1(SHX26_1, SHX27_1)
      end
      SHX25_1 = tCMG
      SHX25_1 = SHX25_1.addMarker
      SHX26_1 = SHX22_1.x
      SHX27_1 = SHX22_1.y
      SHX28_1 = SHX22_1.z
      SHX29_1 = 0.7
      SHX30_1 = 0.7
      SHX31_1 = 0.5
      SHX32_1 = 0
      SHX33_1 = 255
      SHX34_1 = 125
      SHX35_1 = 125
      SHX36_1 = 50
      SHX37_1 = 39
      SHX38_1 = true
      SHX39_1 = true
      SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1)
    else
      SHX24_1 = pairs
      SHX25_1 = SHX22_1
      SHX24_1, SHX25_1, SHX26_1, SHX27_1 = SHX24_1(SHX25_1)
      for SHX28_1, SHX29_1 in SHX24_1, SHX25_1, SHX26_1, SHX27_1 do
        SHX30_1 = tCMG
        SHX30_1 = SHX30_1.addBlip
        SHX31_1 = SHX29_1.x
        SHX32_1 = SHX29_1.y
        SHX33_1 = SHX29_1.z
        SHX34_1 = 67
        SHX35_1 = 5
        SHX36_1 = SHX23_1
        SHX30_1 = SHX30_1(SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1)
        if SHX20_1 then
          SHX31_1 = CMG
          SHX31_1 = SHX31_1.addBlipContext
          SHX32_1 = "Civilian"
          SHX33_1 = SHX30_1
          SHX31_1(SHX32_1, SHX33_1)
        end
        SHX31_1 = tCMG
        SHX31_1 = SHX31_1.addMarker
        SHX32_1 = SHX29_1.x
        SHX33_1 = SHX29_1.y
        SHX34_1 = SHX29_1.z
        SHX35_1 = 0.7
        SHX36_1 = 0.7
        SHX37_1 = 0.5
        SHX38_1 = 0
        SHX39_1 = 255
        SHX40_1 = 125
        SHX41_1 = 125
        SHX42_1 = 50
        SHX43_1 = 39
        SHX44_1 = true
        SHX45_1 = true
        SHX31_1(SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1)
      end
    end
  end
end
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_1 = SHX0_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.TriggerServerCallback
  SHX2_2 = "9a9cb9e8bf"
  SHX3_2 = SHX1_1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX9_1 = SHX1_2
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgtruckmenu"
  SHX4_2 = "job"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.SetSubtitle
  SHX3_2 = SHX0_1.jobs
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2 = SHX3_2.config
  SHX3_2 = SHX3_2[2]
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cmgtruckmenu"
  SHX5_2 = "job"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX15_1()
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
  SHX3_2 = "cmgtruckmenu"
  SHX4_2 = "job"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = IsPositionOccupied
    SHX8_2 = SHX6_2[2]
    SHX8_2 = SHX8_2.x
    SHX9_2 = SHX6_2[2]
    SHX9_2 = SHX9_2.y
    SHX10_2 = SHX6_2[2]
    SHX10_2 = SHX10_2.z
    SHX11_2 = 1.8
    SHX12_2 = false
    SHX13_2 = true
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = 0
    SHX18_2 = false
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    if not SHX7_2 then
      SHX7_2 = SHX6_2[2]
      return SHX7_2
    end
  end
  SHX1_2 = nil
  return SHX1_2
end
SHX17_1 = nil
SHX18_1 = RageUI
SHX18_1 = SHX18_1.CreateWhile
SHX19_1 = 1.0
SHX20_1 = RMenu
SHX21_1 = SHX20_1
SHX20_1 = SHX20_1.Get
SHX22_1 = "cmgtruckmenu"
SHX23_1 = "job"
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX21_1 = nil
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgtruckmenu"
  SHX4_2 = "job"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = SHX1_1
    if "" ~= SHX0_3 then
      SHX0_3 = SHX10_1
      if false == SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = "Start Job"
        SHX2_3 = nil
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
          
          local SHX3_4, SHX4_4, SHX5_4, SHX6_4
          if SHX2_4 then
            SHX3_4 = GetResourceKvpInt
            SHX4_4 = "cmg_trucking_done_cutscene"
            SHX3_4 = SHX3_4(SHX4_4)
            if 1 == SHX3_4 then
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "881ad8757a"
              SHX5_4 = SHX1_1
              SHX6_4 = false
              SHX3_4(SHX4_4, SHX5_4, SHX6_4)
            else
              SHX3_4 = SHX17_1
              SHX3_4()
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "881ad8757a"
              SHX5_4 = SHX1_1
              SHX6_4 = false
              SHX3_4(SHX4_4, SHX5_4, SHX6_4)
              SHX3_4 = SetResourceKvpInt
              SHX4_4 = "cmg_trucking_done_cutscene"
              SHX5_4 = 1
              SHX3_4(SHX4_4, SHX5_4)
            end
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      else
        SHX0_3 = SHX10_1
        if SHX0_3 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Separator
          SHX1_3 = "~r~You are currently doing a job.\n"
          SHX0_3(SHX1_3)
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Separator
          SHX1_3 = [[
~r~ Please finish the current one to 
start a new one!]]
          SHX0_3(SHX1_3)
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Separator
          SHX1_3 = ""
          SHX0_3(SHX1_3)
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Separator
          SHX1_3 = ""
          SHX0_3(SHX1_3)
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.ButtonWithStyle
          SHX1_3 = "End Job"
          SHX2_3 = nil
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
              SHX4_4 = "6f29153e97"
              SHX5_4 = "~r~You ended the job"
              SHX3_4(SHX4_4, SHX5_4)
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        end
      end
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "Current Level: "
      SHX2_3 = tostring
      SHX3_3 = SHX9_1
      SHX3_3 = SHX3_3[1]
      SHX2_3 = SHX2_3(SHX3_3)
      SHX1_3 = SHX1_3 .. SHX2_3
      SHX0_3(SHX1_3)
      SHX0_3 = getMoneyStringFormatted
      SHX1_3 = tostring
      SHX2_3 = math
      SHX2_3 = SHX2_3.floor
      SHX3_3 = SHX9_1
      SHX3_3 = SHX3_3[2]
      SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX2_3(SHX3_3)
      SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      SHX1_3 = getMoneyStringFormatted
      SHX2_3 = tostring
      SHX3_3 = math
      SHX3_3 = SHX3_3.floor
      SHX4_3 = SHX9_1
      SHX4_3 = SHX4_3[3]
      SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX3_3(SHX4_3)
      SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      SHX2_3 = RageUI
      SHX2_3 = SHX2_3.Separator
      SHX3_3 = SHX9_1
      SHX3_3 = SHX3_3[2]
      SHX4_3 = SHX9_1
      SHX4_3 = SHX4_3[3]
      if SHX3_3 ~= SHX4_3 then
        SHX3_3 = "Payout: \194\163"
        SHX4_3 = SHX0_3
        SHX5_3 = "-\194\163"
        SHX6_3 = SHX1_3
        SHX3_3 = SHX3_3 .. SHX4_3 .. SHX5_3 .. SHX6_3
        if SHX3_3 then
          goto SHX_LABEL_92
        end
      end
      SHX3_3 = "Payout: \194\163"
      SHX4_3 = SHX0_3
      SHX3_3 = SHX3_3 .. SHX4_3
      -- [FIX IF ERROR] Move ::SHX_LABEL_92:: outside nested blocks until all 'goto SHX_LABEL_92' can see it
      ::SHX_LABEL_92::
      SHX2_3(SHX3_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX18_1(SHX19_1, SHX20_1, SHX21_1, SHX22_1)
SHX18_1 = AddEventHandler
SHX19_1 = "CMG:onClientSpawn"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_PICKUP~ to open the Trucking menu."
      SHX0_3(SHX1_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX15_1
      SHX0_3()
    end
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3
      SHX1_3 = IsControlJustReleased
      SHX2_3 = 1
      SHX3_3 = 38
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.hasClientGroup
        SHX2_3 = "Trucking"
        SHX1_3 = SHX1_3(SHX2_3)
        if SHX1_3 then
          SHX1_3 = SHX14_1
          SHX2_3 = SHX0_3.job
          SHX1_3(SHX2_3)
        else
          SHX1_3 = tCMG
          SHX1_3 = SHX1_3.notify
          SHX2_3 = "~r~You aren't clocked on as a Trucking, head to cityhall to sign up."
          SHX1_3(SHX2_3)
        end
      end
    end
    SHX5_2 = pairs
    SHX6_2 = SHX0_1.jobs
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = SHX10_2.config
      SHX12_2 = SHX11_2[1]
      SHX13_2 = type
      SHX14_2 = SHX12_2
      SHX13_2 = SHX13_2(SHX14_2)
      if "vector3" == SHX13_2 then
        SHX13_2 = CMG
        SHX13_2 = SHX13_2.createArea
        SHX14_2 = "trucking_"
        SHX15_2 = SHX9_2
        SHX14_2 = SHX14_2 .. SHX15_2
        SHX15_2 = SHX11_2[1]
        SHX16_2 = 1.15
        SHX17_2 = 6
        SHX18_2 = SHX2_2
        SHX19_2 = SHX3_2
        SHX20_2 = SHX4_2
        SHX21_2 = {}
        SHX21_2.job = SHX9_2
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      else
        SHX13_2 = pairs
        SHX14_2 = SHX12_2
        SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX13_2(SHX14_2)
        for SHX17_2, SHX18_2 in SHX13_2, SHX14_2, SHX15_2, SHX16_2 do
          SHX19_2 = CMG
          SHX19_2 = SHX19_2.createArea
          SHX20_2 = "trucking_"
          SHX21_2 = SHX9_2
          SHX22_2 = "_"
          SHX23_2 = SHX17_2
          SHX20_2 = SHX20_2 .. SHX21_2 .. SHX22_2 .. SHX23_2
          SHX21_2 = SHX18_2
          SHX22_2 = 1.15
          SHX23_2 = 6
          SHX24_2 = SHX2_2
          SHX25_2 = SHX3_2
          SHX26_2 = SHX4_2
          SHX27_2 = {}
          SHX27_2.job = SHX9_2
          SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
        end
      end
    end
  end
end
SHX18_1(SHX19_1, SHX20_1)
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.randomseed
  SHX2_2 = GetGameTimer
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = math
  SHX1_2 = SHX1_2.random
  SHX2_2 = 1
  SHX3_2 = #SHX0_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.random
  SHX3_2 = 1
  SHX4_2 = #SHX0_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2 = SHX2_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.random
  SHX3_2 = 1
  SHX4_2 = #SHX0_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2 = SHX2_2
  return SHX1_2
end
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = SHX11_1
  SHX1_2 = SHX0_2[2]
  SHX2_2 = AddBlipForCoord
  SHX3_2 = SHX1_2.x
  SHX4_2 = SHX1_2.y
  SHX5_2 = SHX1_2.z
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX4_1.job = SHX2_2
  SHX2_2 = false
  SHX12_1 = SHX2_2
  SHX2_2 = SetBlipSprite
  SHX3_2 = SHX4_1.job
  SHX4_2 = SHX0_2.blip
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipRoute
  SHX3_2 = SHX4_1.job
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = NetworkGetNetworkIdFromEntity
  SHX3_2 = GetVehiclePedIsIn
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = false
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "22348440e3"
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = DeleteCheckpoint
  SHX4_2 = SHX5_1.trailer
  SHX3_2(SHX4_2)
  SHX3_2 = GetVehiclePedIsIn
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_1.vehicle = SHX3_2
  SHX3_2 = CreateCheckpoint
  SHX4_2 = SHX13_1
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX7_2 = SHX7_2 - 1.0
  SHX8_2 = 0
  SHX9_2 = 0
  SHX10_2 = 0
  SHX11_2 = 10.0
  SHX12_2 = 0
  SHX13_2 = 255
  SHX14_2 = 0
  SHX15_2 = 127
  SHX16_2 = 0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX2_1.checkpoint = SHX3_2
  SHX3_2 = SetCheckpointCylinderHeight
  SHX4_2 = SHX2_1.checkpoint
  SHX5_2 = 50.0
  SHX6_2 = 100.0
  SHX7_2 = 25.0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
function SHX20_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.requestEntitySpawn
  SHX5_2 = "truckjob_trailer"
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.spawnVehicle
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2.x
  SHX7_2 = SHX1_2.y
  SHX8_2 = SHX1_2.z
  SHX9_2 = SHX2_2
  SHX10_2 = false
  SHX11_2 = true
  SHX12_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX5_2 = TriggerServerEvent
  SHX6_2 = "1e0bbaf6cd"
  SHX7_2 = SHX0_2
  SHX8_2 = "trucking_job"
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = NetworkGetEntityIsNetworked
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    SHX5_2 = NetworkGetNetworkIdFromEntity
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 > 0 then
      SHX6_2 = TriggerServerEvent
      SHX7_2 = "e32e549079"
      SHX8_2 = SHX5_2
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
  if nil ~= SHX3_2 then
    SHX5_2 = 1
    SHX6_2 = 9
    SHX7_2 = 1
    for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
      SHX9_2 = SetVehicleExtra
      SHX10_2 = SHX4_2
      SHX11_2 = SHX8_2
      SHX12_2 = true
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
    SHX5_2 = SetVehicleExtra
    SHX6_2 = SHX4_2
    SHX7_2 = SHX3_2
    SHX8_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  end
  SHX5_2 = SetTrailerLegsLowered
  SHX5_2()
  return SHX4_2
end
SHX21_1 = Citizen
SHX21_1 = SHX21_1.CreateThread
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    if 0 ~= SHX0_2 then
      SHX1_2 = pairs
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getAllVehicles
      SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX2_2()
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = DoesEntityExist
        SHX8_2 = SHX6_2
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = Entity
          SHX8_2 = SHX6_2
          SHX7_2 = SHX7_2(SHX8_2)
          SHX7_2 = SHX7_2.state
          SHX7_2 = SHX7_2.truckJob
          if SHX7_2 then
            SHX7_2 = SetEntityNoCollisionEntity
            SHX8_2 = SHX6_2
            SHX9_2 = SHX0_2
            SHX10_2 = false
            SHX7_2(SHX8_2, SHX9_2, SHX10_2)
            SHX7_2 = SetEntityNoCollisionEntity
            SHX8_2 = SHX0_2
            SHX9_2 = SHX6_2
            SHX10_2 = false
            SHX7_2(SHX8_2, SHX9_2, SHX10_2)
          end
        end
      end
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 500
    SHX1_2(SHX2_2)
  end
end
SHX21_1(SHX22_1)
function SHX21_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.removeArea
  SHX4_2 = "trucking_spawn"
  SHX3_2(SHX4_2)
  SHX3_2 = SHX6_1
  SHX3_2 = #SHX3_2
  SHX3_2 = SHX3_2 + 1
  SHX4_2 = SHX6_1
  SHX4_2[SHX3_2] = true
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = SHX3_2
    SHX0_3 = SHX6_1
    SHX0_3 = SHX0_3[SHX1_3]
    if SHX0_3 then
      SHX0_3 = SHX20_1
      SHX1_3 = SHX1_2
      SHX2_3 = SHX0_2
      SHX3_3 = SHX2_2
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX2_1.trailer = SHX0_3
      SHX1_3 = SHX3_2
      SHX0_3 = SHX6_1
      SHX0_3[SHX1_3] = false
    end
  end
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
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
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.createArea
  SHX8_2 = "trucking_spawn"
  SHX9_2 = SHX0_2
  SHX10_2 = 106
  SHX11_2 = 6
  SHX12_2 = SHX4_2
  SHX13_2 = SHX5_2
  SHX14_2 = SHX6_2
  SHX15_2 = {}
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  return SHX3_2
end
SHX22_1 = RegisterNetEvent
SHX23_1 = "3216f44327"
function SHX24_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX11_1 = SHX0_2
  SHX0_2 = SHX0_2[1]
  SHX2_2 = SHX18_1
  SHX3_2 = SHX0_2.trailers
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX1_2 then
    SHX3_2 = SHX16_1
    SHX4_2 = SHX0_2.trailerSpawns
    SHX4_2 = SHX4_2.docks
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX4_2 = notify
      SHX5_2 = "~y~Notice: Government regulations have limited trucking to 150 MPH"
      SHX4_2(SHX5_2)
      SHX4_2 = GetEntityModel
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getPlayerPed
      SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX5_2()
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      if 1885233650 == SHX4_2 then
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.loadCustomisationPreset
        SHX5_2 = "TruckerMale"
        SHX4_2(SHX5_2)
      else
        SHX4_2 = GetEntityModel
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.getPlayerPed
        SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX5_2()
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        if -1667301416 == SHX4_2 then
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.loadCustomisationPreset
          SHX5_2 = "TruckerFemale"
          SHX4_2(SHX5_2)
        else
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.loadCustomisationPreset
          SHX5_2 = "TruckerMale"
          SHX4_2(SHX5_2)
        end
      end
      SHX4_2 = SHX20_1
      SHX5_2 = SHX0_2.trailers
      SHX5_2 = SHX5_2[SHX2_2]
      SHX5_2 = SHX5_2[1]
      SHX6_2 = SHX3_2
      SHX7_2 = SHX0_2.trailerSpawns
      SHX7_2 = SHX7_2.docks
      SHX8_2 = SHX3_1
      SHX7_2 = SHX7_2[SHX8_2]
      SHX7_2 = SHX7_2[1]
      SHX8_2 = SHX0_2.trailers
      SHX8_2 = SHX8_2[SHX2_2]
      SHX8_2 = SHX8_2[2]
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX2_1.trailer = SHX4_2
      SHX4_2 = GetEntityCoords
      SHX5_2 = SHX2_1.trailer
      SHX4_2 = SHX4_2(SHX5_2)
      SHX5_2 = AddBlipForCoord
      SHX6_2 = SHX4_2.x
      SHX7_2 = SHX4_2.y
      SHX8_2 = SHX4_2.z
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX4_1.trailer = SHX5_2
      SHX5_2 = SetBlipSprite
      SHX6_2 = SHX4_1.trailer
      SHX7_2 = 479
      SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = SetBlipRoute
      SHX6_2 = SHX4_1.trailer
      SHX7_2 = true
      SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = SetBlipAsShortRange
      SHX6_2 = SHX4_1.trailer
      SHX7_2 = false
      SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = CreateCheckpoint
      SHX6_2 = SHX13_1
      SHX7_2 = SHX3_2.x
      SHX8_2 = SHX3_2.y
      SHX9_2 = SHX3_2.z
      SHX9_2 = SHX9_2 - 1.0
      SHX10_2 = 0
      SHX11_2 = 0
      SHX12_2 = 0
      SHX13_2 = 10.0
      SHX14_2 = 0
      SHX15_2 = 255
      SHX16_2 = 0
      SHX17_2 = 127
      SHX18_2 = 0
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX5_1.trailer = SHX5_2
      SHX5_2 = SetCheckpointCylinderHeight
      SHX6_2 = SHX5_1.trailer
      SHX7_2 = 50.0
      SHX8_2 = 100.0
      SHX9_2 = 25.0
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX5_2 = Citizen
      SHX5_2 = SHX5_2.CreateThread
      function SHX6_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3
        while true do
          SHX0_3 = GetVehiclePedIsIn
          SHX1_3 = PlayerPedId
          SHX1_3 = SHX1_3()
          SHX2_3 = false
          SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
          if 0 ~= SHX0_3 then
            break
          end
          SHX0_3 = SHX10_1
          if not SHX0_3 then
            break
          end
          SHX0_3 = drawNativeText
          SHX1_3 = "~g~Rent or buy a truck outside then pickup your trailer to complete the job."
          SHX0_3(SHX1_3)
          SHX0_3 = Wait
          SHX1_3 = 0
          SHX0_3(SHX1_3)
        end
      end
      SHX5_2(SHX6_2)
      SHX5_2 = CreateScaleform
      SHX6_2 = 2
      SHX7_2 = "~y~Job Started!"
      SHX8_2 = "Pick up your trailer outside!"
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = true
      SHX10_1 = SHX5_2
    else
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "6f29153e97"
      SHX6_2 = "Job Cancelled!"
      SHX7_2 = "No space for trailers outside!"
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    end
  else
    SHX3_2 = SHX18_1
    SHX4_2 = SHX0_2.trailerSpawns
    SHX4_2 = SHX4_2.pickup
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SHX0_2.trailerSpawns
    SHX4_2 = SHX4_2.pickup
    SHX4_2 = SHX4_2[SHX3_2]
    SHX4_2 = SHX4_2[2]
    SHX5_2 = SHX21_1
    SHX6_2 = SHX0_2.trailerSpawns
    SHX6_2 = SHX6_2.pickup
    SHX6_2 = SHX6_2[SHX3_2]
    SHX6_2 = SHX6_2[2]
    SHX7_2 = SHX0_2.trailers
    SHX7_2 = SHX7_2[SHX2_2]
    SHX7_2 = SHX7_2[1]
    SHX8_2 = SHX0_2.trailerSpawns
    SHX8_2 = SHX8_2.pickup
    SHX8_2 = SHX8_2[SHX3_2]
    SHX8_2 = SHX8_2[1]
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = SHX0_2.trailerSpawns
    SHX5_2 = SHX5_2.pickup
    SHX5_2 = SHX5_2[SHX3_2]
    SHX5_2 = SHX5_2[2]
    SHX6_2 = AddBlipForCoord
    SHX7_2 = SHX5_2.x
    SHX8_2 = SHX5_2.y
    SHX9_2 = SHX5_2.z
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX4_1.trailer = SHX6_2
    SHX6_2 = SetBlipSprite
    SHX7_2 = SHX4_1.trailer
    SHX8_2 = 479
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetBlipRoute
    SHX7_2 = SHX4_1.trailer
    SHX8_2 = true
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetBlipAsShortRange
    SHX7_2 = SHX4_1.trailer
    SHX8_2 = false
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = CreateCheckpoint
    SHX7_2 = SHX13_1
    SHX8_2 = SHX4_2.x
    SHX9_2 = SHX4_2.y
    SHX10_2 = SHX4_2.z
    SHX10_2 = SHX10_2 - 1.0
    SHX11_2 = 0
    SHX12_2 = 0
    SHX13_2 = 0
    SHX14_2 = 10.0
    SHX15_2 = 0
    SHX16_2 = 255
    SHX17_2 = 0
    SHX18_2 = 127
    SHX19_2 = 0
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX5_1.trailer = SHX6_2
    SHX6_2 = SetCheckpointCylinderHeight
    SHX7_2 = SHX5_1.trailer
    SHX8_2 = 50.0
    SHX9_2 = 100.0
    SHX10_2 = 25.0
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX6_2 = DeleteCheckpoint
    SHX7_2 = SHX2_1.checkpoint
    SHX6_2(SHX7_2)
    SHX6_2 = false
    SHX8_1 = SHX6_2
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.CreateThread
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      while true do
        SHX0_3 = GetVehiclePedIsIn
        SHX1_3 = PlayerPedId
        SHX1_3 = SHX1_3()
        SHX2_3 = false
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if 0 ~= SHX0_3 then
          break
        end
        SHX0_3 = SHX10_1
        if not SHX0_3 then
          break
        end
        SHX0_3 = drawNativeText
        SHX1_3 = "~g~Rent or buy a truck outside then pickup your trailer to complete the job."
        SHX0_3(SHX1_3)
        SHX0_3 = Wait
        SHX1_3 = 0
        SHX0_3(SHX1_3)
      end
    end
    SHX6_2(SHX7_2)
    SHX6_2 = CreateScaleform
    SHX7_2 = 2
    SHX8_2 = "~y~Job Started!"
    SHX9_2 = "Pick up your trailer at the blip on the map!"
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  end
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "1374215996"
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "881ad8757a"
  SHX2_2 = SHX1_1
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = Citizen
SHX22_1 = SHX22_1.CreateThread
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  while true do
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = IsPedInAnyVehicle
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = SHX8_1
      if not SHX1_2 then
        SHX1_2 = GetVehiclePedIsIn
        SHX2_2 = SHX0_2
        SHX3_2 = false
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        SHX2_2 = GetVehicleTrailerVehicle
        SHX3_2 = SHX1_2
        SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
        SHX4_2 = IsVehicleAttachedToTrailer
        SHX5_2 = SHX1_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          SHX4_2 = SHX2_1.trailer
          if SHX3_2 == SHX4_2 then
            SHX4_2 = true
            SHX8_1 = SHX4_2
            SHX4_2 = true
            SHX7_1 = SHX4_2
            SHX4_2 = CreateScaleform
            SHX5_2 = 2
            SHX6_2 = "~g~Trailer Attached!"
            SHX7_2 = "Continue to your destination"
            SHX4_2(SHX5_2, SHX6_2, SHX7_2)
            SHX4_2 = SetBlipRoute
            SHX5_2 = SHX4_1.trailer
            SHX6_2 = false
            SHX4_2(SHX5_2, SHX6_2)
            SHX4_2 = RemoveBlip
            SHX5_2 = SHX4_1.trailer
            SHX4_2(SHX5_2)
            SHX4_2 = SHX19_1
            SHX4_2()
          end
        end
      end
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 150
    SHX1_2(SHX2_2)
  end
end
SHX22_1(SHX23_1)
function SHX22_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX3_2 = true
  SHX4_2 = Scaleform
  SHX5_2 = "MIDSIZED_MESSAGE"
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX4_2.RunFunction
  SHX6_2 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  SHX7_2 = {}
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2
  SHX7_2[1] = SHX8_2
  SHX7_2[2] = SHX9_2
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
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX3_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX4_2.Render2D
      SHX0_3()
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX5_2(SHX6_2)
  SHX5_2 = SetTimeout
  SHX6_2 = SHX0_2 * 1000
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX3_2 = SHX0_3
  end
  SHX5_2(SHX6_2, SHX7_2)
  return SHX4_2
end
CreateScaleform = SHX22_1
SHX22_1 = Citizen
SHX22_1 = SHX22_1.CreateThread
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  while true do
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = IsPedInAnyVehicle
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = GetEntityCoords
      SHX2_2 = SHX2_1.trailer
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = GetVehiclePedIsIn
      SHX3_2 = SHX0_2
      SHX4_2 = false
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX3_2 = GetEntityCoords
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX3_2 = SHX1_2 - SHX3_2
      SHX3_2 = #SHX3_2
      SHX4_2 = 9.75
      if SHX3_2 <= SHX4_2 then
        SHX3_2 = IsControlPressed
        SHX4_2 = 0
        SHX5_2 = 74
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if not SHX3_2 then
          SHX3_2 = IsVehicleAttachedToTrailer
          SHX4_2 = SHX2_2
          SHX3_2 = SHX3_2(SHX4_2)
          if not SHX3_2 then
            SHX3_2 = SHX7_1
            if not SHX3_2 then
              SHX3_2 = AttachVehicleToTrailer
              SHX4_2 = SHX2_2
              SHX5_2 = SHX2_1.trailer
              SHX6_2 = 1.0
              SHX3_2(SHX4_2, SHX5_2, SHX6_2)
            end
          end
        end
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 1000
    SHX1_2(SHX2_2)
  end
end
SHX22_1(SHX23_1)
SHX22_1 = Citizen
SHX22_1 = SHX22_1.CreateThread
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  while true do
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = IsPedInAnyVehicle
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = GetVehiclePedIsIn
      SHX2_2 = SHX0_2
      SHX3_2 = false
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX2_2 = IsVehicleAttachedToTrailer
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = SHX7_1
        if SHX2_2 then
          SHX2_2 = false
          SHX7_1 = SHX2_2
        end
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 1500
    SHX1_2(SHX2_2)
  end
end
SHX22_1(SHX23_1)
SHX22_1 = tCMG
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getObjectId
  SHX2_2 = SHX0_2
  SHX3_2 = "isTrailerAttached"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = GetVehicleTrailerVehicle
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX4_2 = 0
  if SHX2_2 and 0 ~= SHX3_2 then
    SHX5_2 = NetworkGetNetworkIdFromEntity
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX4_2 = SHX5_2
  end
  SHX5_2 = SHX2_2
  SHX6_2 = SHX4_2
  return SHX5_2, SHX6_2
end
SHX22_1.isTrailerAttached = SHX23_1
SHX22_1 = Citizen
SHX22_1 = SHX22_1.CreateThread
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = SHX10_1
    if SHX0_2 then
      SHX0_2 = SHX2_1.vehicle
      if SHX0_2 then
        SHX0_2 = GetVehicleEngineHealth
        SHX1_2 = SHX2_1.vehicle
        SHX0_2 = SHX0_2(SHX1_2)
        if not (SHX0_2 < 0.0) then
          SHX0_2 = DoesEntityExist
          SHX1_2 = SHX2_1.vehicle
          SHX0_2 = SHX0_2(SHX1_2)
          if SHX0_2 then
            goto SHX_LABEL_21
          end
        end
        SHX0_2 = TriggerServerEvent
        SHX1_2 = "6f29153e97"
        SHX2_2 = "Truck was destroyed!"
        SHX0_2(SHX1_2, SHX2_2)
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
      ::SHX_LABEL_21::
      SHX0_2 = globalInPrison
      if SHX0_2 then
        SHX0_2 = TriggerServerEvent
        SHX1_2 = "6f29153e97"
        SHX2_2 = "You were sent to jail!"
        SHX0_2(SHX1_2, SHX2_2)
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX22_1(SHX23_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "0db0e450dd"
function SHX24_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hasClientGroup
  SHX3_2 = "Trucking"
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX2_1.trailer
    SHX2_2(SHX3_2)
    SHX2_2 = DeleteCheckpoint
    SHX3_2 = SHX5_1.trailer
    SHX2_2(SHX3_2)
    SHX2_2 = false
    SHX10_1 = SHX2_2
    SHX2_2 = {}
    SHX11_1 = SHX2_2
    SHX2_2 = true
    SHX12_1 = SHX2_2
    SHX2_2 = false
    SHX7_1 = SHX2_2
    SHX2_2 = false
    SHX8_1 = SHX2_2
    SHX2_2 = 1
    SHX3_2 = SHX6_1
    SHX3_2 = #SHX3_2
    SHX4_2 = 1
    for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
      SHX6_2 = SHX6_1
      SHX6_2[SHX5_2] = false
    end
    SHX2_2 = CreateScaleform
    SHX3_2 = 2
    SHX4_2 = "~r~"
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2 .. SHX5_2
    if not SHX4_2 then
      SHX4_2 = "JOB ENDED!"
    end
    SHX5_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = SetBlipRoute
    SHX3_2 = SHX4_1.job
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = RemoveBlip
    SHX3_2 = SHX4_1.job
    SHX2_2(SHX3_2)
    SHX2_2 = RemoveBlip
    SHX3_2 = SHX4_1.trailer
    SHX2_2(SHX3_2)
    SHX2_1.vehicle = nil
    SHX2_1.trailer = nil
    SHX2_2 = SHX2_1.checkpoint
    if SHX2_2 then
      SHX2_2 = DeleteCheckpoint
      SHX3_2 = SHX2_1.checkpoint
      SHX2_2(SHX3_2)
      SHX2_1.checkpoint = nil
    end
  end
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "052449cb64"
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX12_1 = SHX0_2
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = Citizen
SHX22_1 = SHX22_1.CreateThread
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  while true do
    SHX0_2 = SHX12_1
    if SHX0_2 then
      break
    end
    SHX0_2 = IsEntityAVehicle
    SHX1_2 = SHX2_1.trailer
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = PlayerPedId
      SHX0_2 = SHX0_2()
      SHX1_2 = GetEntityCoords
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = GetEntityCoords
      SHX3_2 = SHX2_1.trailer
      SHX2_2 = SHX2_2(SHX3_2)
      SHX3_2 = SHX1_2 - SHX2_2
      SHX3_2 = #SHX3_2
      SHX4_2 = 450.0
      if SHX3_2 > SHX4_2 then
        SHX3_2 = TriggerServerEvent
        SHX4_2 = "6f29153e97"
        SHX5_2 = "You left the trailer behind"
        SHX3_2(SHX4_2, SHX5_2)
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX22_1(SHX23_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "6d852a57fc"
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX3_1 = SHX0_2
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = {}
SHX23_1 = "trailers"
SHX24_1 = "trflat"
SHX25_1 = "heli1"
SHX26_1 = "tr4"
SHX27_1 = "tr3"
SHX28_1 = "docktrailer"
SHX29_1 = "bvttanker"
SHX30_1 = "tanker"
SHX31_1 = "tanker2"
SHX32_1 = "trailers3"
SHX33_1 = "trailers2"
SHX34_1 = "ArmyTrailer2"
SHX35_1 = "TrailerLogs"
SHX36_1 = "militaire1"
SHX37_1 = "ArmyTanker"
SHX38_1 = "docktrailer"
SHX39_1 = "tr3"
SHX40_1 = "tr4"
SHX41_1 = "bvttanker"
SHX22_1[1] = SHX23_1
SHX22_1[2] = SHX24_1
SHX22_1[3] = SHX25_1
SHX22_1[4] = SHX26_1
SHX22_1[5] = SHX27_1
SHX22_1[6] = SHX28_1
SHX22_1[7] = SHX29_1
SHX22_1[8] = SHX30_1
SHX22_1[9] = SHX31_1
SHX22_1[10] = SHX32_1
SHX22_1[11] = SHX33_1
SHX22_1[12] = SHX34_1
SHX22_1[13] = SHX35_1
SHX22_1[14] = SHX36_1
SHX22_1[15] = SHX37_1
SHX22_1[16] = SHX38_1
SHX22_1[17] = SHX39_1
SHX22_1[18] = SHX40_1
SHX22_1[19] = SHX41_1
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = 0
  SHX1_2 = {}
  SHX2_2 = 1
  SHX3_2 = 19
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.spawnVehicle
    SHX7_2 = SHX22_1
    SHX7_2 = SHX7_2[SHX5_2]
    SHX8_2 = 896.7 + SHX0_2
    SHX9_2 = -3153.494
    SHX10_2 = 5.892334
    SHX11_2 = 177.1
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX7_2 = FreezeEntityPosition
    SHX8_2 = SHX6_2
    SHX9_2 = true
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = table
    SHX7_2 = SHX7_2.add
    SHX8_2 = SHX1_2
    SHX9_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
    SHX0_2 = SHX0_2 + 4
  end
  return SHX1_2
end
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "54143cc8e2"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hideAllDisplays
  SHX1_2 = "trucking_intro"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = SetEntityCoords
  SHX3_2 = SHX0_2
  SHX4_2 = 856.022
  SHX5_2 = -3188.11
  SHX6_2 = 4.05127
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = SetFocusPosAndVel
  SHX3_2 = 862.5825
  SHX4_2 = -3195.493
  SHX5_2 = 6.002151
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = CreateCameraWithParams
  SHX3_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX4_2 = 866.1363
  SHX5_2 = -3191.314
  SHX6_2 = 7.14502
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 65.0
  SHX11_2 = false
  SHX12_2 = 2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX3_2 = PointCamAtCoord
  SHX4_2 = SHX2_2
  SHX5_2 = 862.5825
  SHX6_2 = -3195.493
  SHX7_2 = 6.002151
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SetCamActive
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RenderScriptCams
  SHX4_2 = true
  SHX5_2 = true
  SHX6_2 = 0
  SHX7_2 = true
  SHX8_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = CreateCameraWithParams
  SHX4_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX5_2 = 862.5231
  SHX6_2 = -3190.259
  SHX7_2 = 7.14502
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 65.0
  SHX12_2 = false
  SHX13_2 = 2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX4_2 = PointCamAtCoord
  SHX5_2 = SHX3_2
  SHX6_2 = 862.5825
  SHX7_2 = -3195.493
  SHX8_2 = 6.002151
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SetCamActiveWithInterp
  SHX5_2 = SHX3_2
  SHX6_2 = SHX2_2
  SHX7_2 = 10000
  SHX8_2 = 5
  SHX9_2 = 5
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = drawNativeNotification
  SHX5_2 = "This is where you will start your trucking job. You can also come here to end the shift."
  SHX4_2(SHX5_2)
  SHX4_2 = Wait
  SHX5_2 = 10000
  SHX4_2(SHX5_2)
  SHX4_2 = vector3
  SHX5_2 = 901.9878
  SHX6_2 = -3185.827
  SHX7_2 = 5.898679
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = PointCamAtCoord
  SHX6_2 = SHX2_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX4_2.z
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = vector3
  SHX6_2 = 901.9878
  SHX7_2 = -3185.827
  SHX8_2 = 5.898679
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SHX5_2
  SHX5_2 = PointCamAtCoord
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX4_2.z
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = vector3
  SHX6_2 = 897.033
  SHX7_2 = -3189.376
  SHX8_2 = 5.892334
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SHX5_2
  SHX5_2 = SetCamCoord
  SHX6_2 = SHX2_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX4_2.z
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = vector3
  SHX6_2 = 904.6154
  SHX7_2 = -3189.428
  SHX8_2 = 5.892334
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SHX5_2
  SHX5_2 = SetCamCoord
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX4_2.z
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = SetCamActiveWithInterp
  SHX6_2 = SHX3_2
  SHX7_2 = SHX2_2
  SHX8_2 = 10000
  SHX9_2 = 5
  SHX10_2 = 5
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = drawNativeNotification
  SHX6_2 = "Come here to rent or buy yourself a brand new truck to complete the trucking job with."
  SHX5_2(SHX6_2)
  SHX5_2 = Wait
  SHX6_2 = 10000
  SHX5_2(SHX6_2)
  SHX5_2 = SHX23_1
  SHX5_2 = SHX5_2()
  SHX6_2 = vector3
  SHX7_2 = 934.8527
  SHX8_2 = -3154.536
  SHX9_2 = 5.892334
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SHX6_2
  SHX6_2 = PointCamAtCoord
  SHX7_2 = SHX2_2
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = vector3
  SHX7_2 = 934.8527
  SHX8_2 = -3154.536
  SHX9_2 = 5.892334
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SHX6_2
  SHX6_2 = PointCamAtCoord
  SHX7_2 = SHX3_2
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = vector3
  SHX7_2 = 886.589
  SHX8_2 = -3165.547
  SHX9_2 = 9.892334
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SHX6_2
  SHX6_2 = SetCamCoord
  SHX7_2 = SHX2_2
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = vector3
  SHX7_2 = 975.2308
  SHX8_2 = -3166.602
  SHX9_2 = 9.892334
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SHX6_2
  SHX6_2 = SetCamCoord
  SHX7_2 = SHX3_2
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = SetCamActiveWithInterp
  SHX7_2 = SHX3_2
  SHX8_2 = SHX2_2
  SHX9_2 = 25000
  SHX10_2 = 5
  SHX11_2 = 5
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = drawNativeNotification
  SHX7_2 = "You will be driving a wide selection of trailers around the city of CMG!"
  SHX6_2(SHX7_2)
  SHX6_2 = Wait
  SHX7_2 = 25000
  SHX6_2(SHX7_2)
  SHX6_2 = 1
  SHX7_2 = #SHX5_2
  SHX8_2 = 1
  for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2 = DeleteEntity
    SHX11_2 = SHX5_2[SHX9_2]
    SHX10_2(SHX11_2)
  end
  SHX6_2 = DestroyCam
  SHX7_2 = SHX2_2
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = DestroyCam
  SHX7_2 = SHX3_2
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = RenderScriptCams
  SHX7_2 = false
  SHX8_2 = true
  SHX9_2 = 3000
  SHX10_2 = true
  SHX11_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = ClearFocus
  SHX6_2()
  SHX6_2 = FreezeEntityPosition
  SHX7_2 = SHX0_2
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = TriggerServerEvent
  SHX7_2 = "54143cc8e2"
  SHX6_2(SHX7_2)
  SHX6_2 = SetEntityCoords
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2.x
  SHX9_2 = SHX1_2.y
  SHX10_2 = SHX1_2.z
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.showAllDisplays
  SHX7_2 = "trucking_intro"
  SHX6_2(SHX7_2)
end
SHX17_1 = SHX24_1
SHX24_1 = RegisterCommand
SHX25_1 = "setdonecutscene"
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientUserId
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.isDeveloper
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = SetResourceKvpInt
      SHX4_2 = "cmg_trucking_done_cutscene"
      SHX5_2 = tonumber
      SHX6_2 = SHX1_2[1]
      SHX5_2 = SHX5_2(SHX6_2)
      if not SHX5_2 then
        SHX5_2 = 0
      end
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = print
      SHX4_2 = "set cmg_trucking_done_cutscene to "
      SHX5_2 = SHX1_2[1]
      SHX4_2 = SHX4_2 .. SHX5_2
      SHX3_2(SHX4_2)
    end
  end
end
SHX27_1 = false
SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX24_1 = vector3
SHX25_1 = 949.37835693359
SHX26_1 = -3185.8244628906
SHX27_1 = 5.901008605957
SHX24_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX25_1 = vector3
SHX26_1 = 949.20098876953
SHX27_1 = -3154.0915527344
SHX28_1 = 5.9010066986084
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX26_1 = {}
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = 25.0
  SHX2_2 = 0
  SHX3_2 = pairs
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getAllVehicles
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX4_2()
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = GetVehicleType
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    if "trailer" == SHX9_2 then
      SHX9_2 = GetEntityCoords
      SHX10_2 = SHX8_2
      SHX11_2 = true
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = SHX0_2 - SHX9_2
      SHX9_2 = #SHX9_2
      if SHX1_2 > SHX9_2 then
        SHX1_2 = SHX9_2
        SHX2_2 = SHX8_2
      end
    end
  end
  if 0 == SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~No nearby trailer found."
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = AttachVehicleToTrailer
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerVehicle
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX2_2
  SHX6_2 = 1.0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = notify
  SHX4_2 = "~g~Attached closest trailer."
  SHX3_2(SHX4_2)
end
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = 0
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.trucks
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.custom
    if not SHX7_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.spawnVehicle
      SHX8_2 = SHX5_2
      SHX9_2 = SHX24_1.x
      SHX10_2 = SHX0_2 * -4.1
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = SHX24_1.y
      SHX11_2 = SHX24_1.z
      SHX12_2 = 180.0
      SHX13_2 = false
      SHX14_2 = false
      SHX15_2 = false
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX26_1
      SHX10_2 = SHX7_2
      SHX8_2(SHX9_2, SHX10_2)
      SHX0_2 = SHX0_2 + 1
    end
  end
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_1.jobs
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = pairs
    SHX9_2 = SHX7_2
    SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
    for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
      SHX14_2 = type
      SHX15_2 = SHX12_2
      SHX14_2 = SHX14_2(SHX15_2)
      if "number" == SHX14_2 then
        SHX14_2 = pairs
        SHX15_2 = SHX13_2.trailers
        SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2)
        for SHX18_2, SHX19_2 in SHX14_2, SHX15_2, SHX16_2, SHX17_2 do
          SHX20_2 = SHX19_2[1]
          SHX1_2[SHX20_2] = true
        end
      end
    end
  end
  SHX0_2 = 0
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.spawnVehicle
    SHX8_2 = SHX6_2
    SHX9_2 = SHX25_1.x
    SHX10_2 = SHX0_2 * -4.1
    SHX9_2 = SHX9_2 + SHX10_2
    SHX10_2 = SHX25_1.y
    SHX11_2 = SHX25_1.z
    SHX12_2 = 180.0
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = false
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX26_1
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
    SHX0_2 = SHX0_2 + 1
  end
end
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX26_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteEntity
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = table
  SHX0_2 = SHX0_2.clear
  SHX1_2 = SHX26_1
  SHX0_2(SHX1_2)
end
SHX30_1 = CMG
SHX30_1 = SHX30_1.registerDevMenuItems
SHX31_1 = "Trucking"
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Attach Closest Trailer"
  SHX2_2 = ""
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX27_1
      SHX3_3()
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Spawn All Trucks & Trailers"
  SHX2_2 = ""
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX28_1
      SHX3_3()
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Delete All Trucks & Trailers"
  SHX2_2 = ""
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX29_1
      SHX3_3()
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX30_1(SHX31_1, SHX32_1)
