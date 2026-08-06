-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_vehicle_crush_trade"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = 0
SHX3_1 = nil
SHX4_1 = ""
SHX5_1 = 0
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "050ddba34e"
  SHX0_2(SHX1_2)
end
SHX7_1 = RegisterNetEvent
SHX8_1 = "d265cf4800"
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX0_2 or nil
  if not SHX0_2 then
    SHX2_2 = {}
  end
  SHX1_1 = SHX2_2
  SHX2_2 = tonumber
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = 0
  end
  SHX2_1 = SHX2_2
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RMenu
SHX7_1 = SHX7_1.Add
SHX8_1 = "vcrush"
SHX9_1 = "main"
SHX10_1 = RageUI
SHX10_1 = SHX10_1.CreateMenu
SHX11_1 = ""
SHX12_1 = "~b~Vehicle Lock trade-in"
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuWidth
SHX13_1 = SHX13_1()
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuHeight
SHX14_1 = SHX14_1()
SHX15_1 = "cmg_garageui"
SHX16_1 = "cmg_garageui"
SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX7_1(SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1)
SHX7_1 = RMenu
SHX7_1 = SHX7_1.Add
SHX8_1 = "vcrush"
SHX9_1 = "crush1"
SHX10_1 = RageUI
SHX10_1 = SHX10_1.CreateSubMenu
SHX11_1 = RMenu
SHX12_1 = SHX11_1
SHX11_1 = SHX11_1.Get
SHX13_1 = "vcrush"
SHX14_1 = "main"
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = ""
SHX13_1 = "~o~Confirm (1/2)"
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuWidth
SHX14_1 = SHX14_1()
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuHeight
SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1 = SHX15_1()
SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1)
SHX7_1(SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1)
SHX7_1 = RMenu
SHX7_1 = SHX7_1.Add
SHX8_1 = "vcrush"
SHX9_1 = "crush2"
SHX10_1 = RageUI
SHX10_1 = SHX10_1.CreateSubMenu
SHX11_1 = RMenu
SHX12_1 = SHX11_1
SHX11_1 = SHX11_1.Get
SHX13_1 = "vcrush"
SHX14_1 = "crush1"
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = ""
SHX13_1 = "~r~Final confirm"
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuWidth
SHX14_1 = SHX14_1()
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuHeight
SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1 = SHX15_1()
SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1)
SHX7_1(SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1)
SHX7_1 = tonumber
SHX8_1 = SHX0_1.tokensPerLockslotItem
SHX7_1 = SHX7_1(SHX8_1)
if not SHX7_1 then
  SHX7_1 = 10
end
SHX8_1 = tonumber
SHX9_1 = SHX0_1.cashRedeemTokenCost
SHX8_1 = SHX8_1(SHX9_1)
if not SHX8_1 then
  SHX8_1 = 10
end
SHX9_1 = tonumber
SHX10_1 = SHX0_1.cashRedeemAmount
SHX9_1 = SHX9_1(SHX10_1)
if not SHX9_1 then
  SHX9_1 = 0
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX6_1
  SHX0_2()
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "vcrush"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsAnyMenuOfTypeVisible
  SHX1_2 = "vcrush"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.CloseAll
    SHX0_2()
  end
end
SHX12_1 = SHX0_1.areaCenter
SHX13_1 = tCMG
SHX13_1 = SHX13_1.addPropMarker
SHX14_1 = "bzzz_marker_garage_green_anim"
SHX15_1 = SHX12_1.x
SHX16_1 = SHX12_1.y
SHX17_1 = SHX12_1.z
SHX17_1 = SHX17_1 + 1
SHX18_1 = 50.0
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1)
SHX13_1 = CMG
SHX13_1 = SHX13_1.createArea
SHX14_1 = "vehicle_crush_trade"
SHX15_1 = SHX12_1
SHX16_1 = SHX0_1.areaHalfExtent
if not SHX16_1 then
  SHX16_1 = 2.0
end
SHX17_1 = SHX0_1.areaHeight
if not SHX17_1 then
  SHX17_1 = 2.5
end
SHX18_1 = SHX10_1
SHX19_1 = SHX11_1
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX21_1 = {}
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1)
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateWhile
SHX14_1 = 1.0
SHX15_1 = RMenu
SHX16_1 = SHX15_1
SHX15_1 = SHX15_1.Get
SHX17_1 = "vcrush"
SHX18_1 = "main"
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX16_1 = nil
function SHX17_1()
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
  SHX3_2 = "vcrush"
  SHX4_2 = "main"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "You can exchange "
    SHX2_3 = tostring
    SHX3_3 = SHX7_1
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = " tokens for 1 lock slot"
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Lock slot tokens: "
    SHX2_3 = tostring
    SHX3_3 = SHX2_1
    SHX2_3 = SHX2_3(SHX3_3)
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    SHX0_3 = SHX1_1
    SHX0_3 = SHX0_3[1]
    if nil == SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~r~No eligible vehicles"
      SHX0_3(SHX1_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "Locked vehicles only, non lore. up to 1:10"
      SHX0_3(SHX1_3)
    else
      SHX0_3 = ipairs
      SHX1_3 = SHX1_1
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = SHX5_3.displayName
        if not SHX6_3 then
          SHX6_3 = SHX5_3.vehicleId
          if not SHX6_3 then
            SHX6_3 = "?"
          end
        end
        SHX7_3 = tonumber
        SHX8_3 = SHX5_3.ratio
        SHX7_3 = SHX7_3(SHX8_3)
        if not SHX7_3 then
          SHX7_3 = 0
        end
        SHX8_3 = SHX6_3
        SHX9_3 = " ~y~1:"
        SHX10_3 = tostring
        SHX11_3 = SHX7_3
        SHX10_3 = SHX10_3(SHX11_3)
        SHX11_3 = "~s~"
        SHX8_3 = SHX8_3 .. SHX9_3 .. SHX10_3 .. SHX11_3
        SHX9_3 = tonumber
        SHX10_3 = SHX5_3.tokens
        SHX9_3 = SHX9_3(SHX10_3)
        if not SHX9_3 then
          SHX9_3 = 0
        end
        SHX10_3 = tostring
        SHX11_3 = SHX9_3
        SHX10_3 = SHX10_3(SHX11_3)
        SHX11_3 = " Token"
        if 1 == SHX9_3 then
          SHX12_3 = ""
          if SHX12_3 then
            goto SHX_LABEL_71
          end
        end
        SHX12_3 = "s"
        -- [FIX IF ERROR] Move ::SHX_LABEL_71:: outside nested blocks until all 'goto SHX_LABEL_71' can see it
        ::SHX_LABEL_71::
        SHX10_3 = SHX10_3 .. SHX11_3 .. SHX12_3
        SHX11_3 = RageUI
        SHX11_3 = SHX11_3.ButtonWithStyle
        SHX12_3 = SHX8_3
        SHX13_3 = "Plate: "
        SHX14_3 = tostring
        SHX15_3 = SHX5_3.plate
        if not SHX15_3 then
          SHX15_3 = ""
        end
        SHX14_3 = SHX14_3(SHX15_3)
        SHX13_3 = SHX13_3 .. SHX14_3
        SHX14_3 = {}
        SHX14_3.RightLabel = SHX10_3
        SHX15_3 = true
        function SHX16_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4
          if SHX2_4 then
            SHX3_4 = SHX5_3.uuid
            SHX3_1 = SHX3_4
            SHX3_4 = SHX5_3.displayName
            if not SHX3_4 then
              SHX3_4 = SHX5_3.vehicleId
            end
            SHX4_1 = SHX3_4
            SHX3_4 = SHX5_3.tokens
            SHX5_1 = SHX3_4
          end
        end
        SHX17_3 = RMenu
        SHX18_3 = SHX17_3
        SHX17_3 = SHX17_3.Get
        SHX19_3 = "vcrush"
        SHX20_3 = "crush1"
        SHX17_3, SHX18_3, SHX19_3, SHX20_3 = SHX17_3(SHX18_3, SHX19_3, SHX20_3)
        SHX11_3(SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3)
      end
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~b~Exchange "
    SHX2_3 = tostring
    SHX3_3 = SHX7_1
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = " tokens for ~g~1x Lock Slot"
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = SHX2_1
    SHX5_3 = SHX7_1
    SHX4_3 = SHX4_3 >= SHX5_3
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = SHX2_1
        SHX4_4 = SHX7_1
        if SHX3_4 >= SHX4_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "95c13026d2"
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = SHX9_1
    if SHX0_3 > 0 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "~b~Exchange "
      SHX2_3 = tostring
      SHX3_3 = SHX8_1
      SHX2_3 = SHX2_3(SHX3_3)
      SHX3_3 = " tokens for ~g~\194\163"
      SHX4_3 = getMoneyStringFormatted
      SHX5_3 = SHX9_1
      SHX4_3 = SHX4_3(SHX5_3)
      SHX5_3 = "~s~"
      SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3
      SHX2_3 = ""
      SHX3_3 = {}
      SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX4_3 = SHX2_1
      SHX5_3 = SHX8_1
      SHX4_3 = SHX4_3 >= SHX5_3
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = SHX2_1
          SHX4_4 = SHX8_1
          if SHX3_4 >= SHX4_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "b51eb93222"
            SHX3_4(SHX4_4)
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
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
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "vcrush"
  SHX4_2 = "crush1"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = SHX4_1
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~r~YOU LOSE:~s~ this vehicle forever."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~g~YOU GET:~s~ +"
    SHX2_3 = tostring
    SHX3_3 = SHX5_1
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = " lock slot token(s)."
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Cannot be undone."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~y~Continue to final warning"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "vcrush"
    SHX9_3 = "crush2"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~g~Cancel"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.Visible
        SHX4_4 = RMenu
        SHX5_4 = SHX4_4
        SHX4_4 = SHX4_4.Get
        SHX6_4 = "vcrush"
        SHX7_4 = "main"
        SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        SHX5_4 = true
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "vcrush"
    SHX9_3 = "main"
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
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "vcrush"
  SHX4_2 = "crush2"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~r~FINAL"
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "This vehicle will be removed from your garage and scrapped."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "You will not own it anymore."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "You will receive ~g~"
    SHX2_3 = tostring
    SHX3_3 = SHX5_1
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = "~s~ lock slot token(s)."
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~r~YES - trade-in"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
    SHX4_3 = SHX3_1
    SHX4_3 = nil ~= SHX4_3
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = SHX3_1
        if SHX3_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "b09374a264"
          SHX5_4 = SHX3_1
          SHX3_4(SHX4_4, SHX5_4)
          SHX3_4 = RageUI
          SHX3_4 = SHX3_4.Visible
          SHX4_4 = RMenu
          SHX5_4 = SHX4_4
          SHX4_4 = SHX4_4.Get
          SHX6_4 = "vcrush"
          SHX7_4 = "main"
          SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
          SHX5_4 = true
          SHX3_4(SHX4_4, SHX5_4)
          SHX3_4 = nil
          SHX3_1 = SHX3_4
        end
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "vcrush"
    SHX9_3 = "main"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~g~NO - go back"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.Visible
        SHX4_4 = RMenu
        SHX5_4 = SHX4_4
        SHX4_4 = SHX4_4.Get
        SHX6_4 = "vcrush"
        SHX7_4 = "crush1"
        SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        SHX5_4 = true
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "vcrush"
    SHX9_3 = "crush1"
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
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1)
