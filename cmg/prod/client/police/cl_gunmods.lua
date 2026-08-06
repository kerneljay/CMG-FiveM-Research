-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_gunmods"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = {}
SHX5_1 = {}
SHX6_1 = nil
SHX7_1 = 0
SHX8_1 = nil
SHX9_1 = false
SHX10_1 = CMG
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX9_1
  return SHX0_2
end
SHX10_1.isInModShop = SHX11_1
SHX10_1 = CMG
function SHX11_1()
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
SHX10_1.getGivenAttachmentsToRemove = SHX11_1
SHX10_1 = RMenu
SHX10_1 = SHX10_1.Add
SHX11_1 = "cmggunmods"
SHX12_1 = "main"
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateMenu
SHX14_1 = ""
SHX15_1 = "Gun Mods"
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuWidth
SHX16_1 = SHX16_1()
SHX17_1 = CMG
SHX17_1 = SHX17_1.getRageUIMenuHeight
SHX17_1 = SHX17_1()
SHX18_1 = "cmg_gunstoreui"
SHX19_1 = "cmg_gunstoreui"
SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX10_1 = RMenu
SHX10_1 = SHX10_1.Add
SHX11_1 = "cmggunmods"
SHX12_1 = "attachments"
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateSubMenu
SHX14_1 = RMenu
SHX15_1 = SHX14_1
SHX14_1 = SHX14_1.Get
SHX16_1 = "cmggunmods"
SHX17_1 = "main"
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = ""
SHX16_1 = "Gun Mods"
SHX17_1 = CMG
SHX17_1 = SHX17_1.getRageUIMenuWidth
SHX17_1 = SHX17_1()
SHX18_1 = CMG
SHX18_1 = SHX18_1.getRageUIMenuHeight
SHX18_1 = SHX18_1()
SHX19_1 = "cmg_gunstoreui"
SHX20_1 = "cmg_gunstoreui"
SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1)
function SHX10_1(SHX0_2)
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
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cmggunmods"
  SHX5_2 = "main"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_1.components
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = DoesWeaponTakeWeaponComponent
    SHX8_2 = GetHashKey
    SHX9_2 = SHX0_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = GetHashKey
    SHX10_2 = SHX6_2
    SHX9_2, SHX10_2 = SHX9_2(SHX10_2)
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    if SHX7_2 then
      SHX7_2 = #SHX1_2
      SHX7_2 = SHX7_2 + 1
      SHX1_2[SHX7_2] = SHX6_2
    end
  end
  return SHX1_2
end
SHX12_1 = RageUI
SHX12_1 = SHX12_1.CreateWhile
SHX13_1 = 1.0
SHX14_1 = RMenu
SHX15_1 = SHX14_1
SHX14_1 = SHX14_1.Get
SHX16_1 = "cmggunmods"
SHX17_1 = "main"
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = nil
function SHX16_1()
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
  SHX3_2 = "cmggunmods"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
    SHX0_3 = 1
    SHX1_3 = SHX1_1
    SHX1_3 = #SHX1_3
    SHX2_3 = 1
    for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
      SHX4_3 = SHX1_1
      SHX4_3 = SHX4_3[SHX3_3]
      SHX5_3 = RageUI
      SHX5_3 = SHX5_3.ButtonWithStyle
      SHX6_3 = WeaponNames
      SHX7_3 = tostring
      SHX8_3 = GetHashKey
      SHX9_3 = SHX4_3
      SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3 = SHX8_3(SHX9_3)
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
      SHX6_3 = SHX6_3[SHX7_3]
      SHX7_3 = WeaponNames
      SHX8_3 = tostring
      SHX9_3 = GetHashKey
      SHX10_3 = SHX4_3
      SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3 = SHX9_3(SHX10_3)
      SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
      SHX7_3 = SHX7_3[SHX8_3]
      SHX8_3 = {}
      SHX8_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX9_3 = true
      function SHX10_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
        if SHX2_4 then
          SHX3_4 = SHX11_1
          SHX4_4 = SHX4_3
          SHX3_4 = SHX3_4(SHX4_4)
          SHX2_1 = SHX3_4
          SHX3_4 = SHX4_3
          SHX8_1 = SHX3_4
          SHX4_4 = SHX4_3
          SHX3_4 = SHX5_1
          SHX3_4 = SHX3_4[SHX4_4]
          if nil == SHX3_4 then
            SHX4_4 = SHX4_3
            SHX3_4 = SHX5_1
            SHX5_4 = {}
            SHX3_4[SHX4_4] = SHX5_4
          end
          SHX4_4 = SHX4_3
          SHX3_4 = SHX4_1
          SHX3_4 = SHX3_4[SHX4_4]
          if nil == SHX3_4 then
            SHX4_4 = SHX8_1
            SHX3_4 = SHX4_1
            SHX5_4 = {}
            SHX3_4[SHX4_4] = SHX5_4
          end
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.spawnWeaponObject
          SHX4_4 = SHX4_3
          SHX5_4 = SHX3_1
          SHX5_4 = SHX5_4[4]
          SHX5_4 = SHX5_4.x
          SHX6_4 = SHX3_1
          SHX6_4 = SHX6_4[4]
          SHX6_4 = SHX6_4.y
          SHX7_4 = SHX3_1
          SHX7_4 = SHX7_4[4]
          SHX7_4 = SHX7_4.z
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
          SHX6_1 = SHX3_4
        end
      end
      SHX11_3 = RMenu
      SHX12_3 = SHX11_3
      SHX11_3 = SHX11_3.Get
      SHX13_3 = "cmggunmods"
      SHX14_3 = "attachments"
      SHX11_3, SHX12_3, SHX13_3, SHX14_3 = SHX11_3(SHX12_3, SHX13_3, SHX14_3)
      SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmggunmods"
  SHX4_2 = "attachments"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    SHX0_3 = 1
    SHX1_3 = SHX2_1
    SHX1_3 = #SHX1_3
    SHX2_3 = 1
    for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
      SHX4_3 = SHX2_1
      SHX4_3 = SHX4_3[SHX3_3]
      SHX5_3 = {}
      SHX6_3 = "\194\163"
      SHX7_3 = getMoneyStringFormatted
      SHX8_3 = SHX0_1.components
      SHX8_3 = SHX8_3[SHX4_3]
      SHX8_3 = SHX8_3[2]
      SHX7_3 = SHX7_3(SHX8_3)
      SHX6_3 = SHX6_3 .. SHX7_3
      SHX5_3.RightLabel = SHX6_3
      SHX6_3 = table
      SHX6_3 = SHX6_3.has
      SHX8_3 = SHX8_1
      SHX7_3 = SHX5_1
      SHX7_3 = SHX7_3[SHX8_3]
      SHX8_3 = SHX4_3
      SHX6_3 = SHX6_3(SHX7_3, SHX8_3)
      if SHX6_3 then
        SHX6_3 = {}
        SHX7_3 = RageUI
        SHX7_3 = SHX7_3.BadgeStyle
        SHX7_3 = SHX7_3.Gun
        SHX6_3.RightBadge = SHX7_3
        SHX5_3 = SHX6_3
      end
      SHX6_3 = RageUI
      SHX6_3 = SHX6_3.ButtonWithStyle
      SHX7_3 = SHX0_1.components
      SHX7_3 = SHX7_3[SHX4_3]
      SHX7_3 = SHX7_3[1]
      SHX8_3 = SHX0_1.components
      SHX8_3 = SHX8_3[SHX4_3]
      SHX8_3 = SHX8_3[1]
      SHX9_3 = SHX5_3
      SHX10_3 = true
      function SHX11_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
        if SHX2_4 then
          SHX3_4 = table
          SHX3_4 = SHX3_4.has
          SHX5_4 = SHX8_1
          SHX4_4 = SHX5_1
          SHX4_4 = SHX4_4[SHX5_4]
          SHX5_4 = SHX4_3
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
          if not SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "c76176f1de"
            SHX5_4 = SHX8_1
            SHX6_4 = SHX4_3
            SHX7_4 = SHX0_1.components
            SHX8_4 = SHX4_3
            SHX7_4 = SHX7_4[SHX8_4]
            SHX7_4 = SHX7_4[2]
            SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
          else
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~r~You already have this attachment"
            SHX3_4(SHX4_4)
          end
        end
        if SHX1_4 then
          SHX3_4 = SHX7_1
          SHX4_4 = SHX3_3
          if SHX3_4 ~= SHX4_4 then
            SHX3_4 = HasPedGotWeaponComponent
            SHX4_4 = PlayerPedId
            SHX4_4 = SHX4_4()
            SHX5_4 = SHX8_1
            SHX6_4 = SHX4_3
            SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
            if not SHX3_4 then
              SHX3_4 = tCMG
              SHX3_4 = SHX3_4.giveWeaponComponent
              SHX4_4 = SHX8_1
              SHX5_4 = SHX4_3
              SHX3_4(SHX4_4, SHX5_4)
              SHX4_4 = SHX8_1
              SHX3_4 = SHX4_1
              SHX3_4 = SHX3_4[SHX4_4]
              SHX5_4 = SHX8_1
              SHX4_4 = SHX4_1
              SHX4_4 = SHX4_4[SHX5_4]
              SHX4_4 = #SHX4_4
              SHX4_4 = SHX4_4 + 1
              SHX5_4 = SHX4_3
              SHX3_4[SHX4_4] = SHX5_4
            end
            SHX3_4 = SHX7_1
            if nil ~= SHX3_4 then
              SHX3_4 = table
              SHX3_4 = SHX3_4.has
              SHX5_4 = SHX8_1
              SHX4_4 = SHX4_1
              SHX4_4 = SHX4_4[SHX5_4]
              SHX6_4 = SHX7_1
              SHX5_4 = SHX2_1
              SHX5_4 = SHX5_4[SHX6_4]
              SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
              if SHX3_4 then
                SHX3_4 = table
                SHX3_4 = SHX3_4.has
                SHX5_4 = SHX8_1
                SHX4_4 = SHX5_1
                SHX4_4 = SHX4_4[SHX5_4]
                SHX6_4 = SHX7_1
                SHX5_4 = SHX2_1
                SHX5_4 = SHX5_4[SHX6_4]
                SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
                if not SHX3_4 then
                  SHX3_4 = RemoveWeaponComponentFromPed
                  SHX4_4 = PlayerPedId
                  SHX4_4 = SHX4_4()
                  SHX5_4 = GetHashKey
                  SHX6_4 = SHX8_1
                  SHX5_4 = SHX5_4(SHX6_4)
                  SHX6_4 = GetHashKey
                  SHX8_4 = SHX7_1
                  SHX7_4 = SHX2_1
                  SHX7_4 = SHX7_4[SHX8_4]
                  SHX6_4, SHX7_4, SHX8_4 = SHX6_4(SHX7_4)
                  SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
                end
              end
              SHX3_4 = RemoveWeaponComponentFromWeaponObject
              SHX4_4 = SHX6_1
              SHX5_4 = GetHashKey
              SHX7_4 = SHX7_1
              SHX6_4 = SHX2_1
              SHX6_4 = SHX6_4[SHX7_4]
              SHX5_4, SHX6_4, SHX7_4, SHX8_4 = SHX5_4(SHX6_4)
              SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
            end
            SHX3_4 = GiveWeaponComponentToWeaponObject
            SHX4_4 = SHX6_1
            SHX5_4 = SHX4_3
            SHX3_4(SHX4_4, SHX5_4)
            SHX3_4 = SHX3_3
            SHX7_1 = SHX3_4
          end
        end
      end
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX12_1(SHX13_1, SHX14_1, SHX15_1, SHX16_1)
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
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
      SHX1_3 = SHX0_3.shop
      SHX3_1 = SHX1_3
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.getWeapons
      SHX1_3 = SHX1_3()
      SHX1_1 = SHX1_3
      SHX1_3 = pairs
      SHX2_3 = SHX1_1
      SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
      for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
        SHX7_3 = SHX5_1
        SHX8_3 = CMG
        SHX8_3 = SHX8_3.getAllWeaponAttachments
        SHX9_3 = SHX6_3
        SHX8_3 = SHX8_3(SHX9_3)
        SHX7_3[SHX5_3] = SHX8_3
      end
      SHX1_3 = SHX10_1
      SHX2_3 = true
      SHX1_3(SHX2_3)
      SHX1_3 = true
      SHX9_1 = SHX1_3
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
      SHX0_3 = false
      SHX9_1 = SHX0_3
      SHX0_3 = SHX6_1
      if nil ~= SHX0_3 then
        SHX0_3 = DeleteObject
        SHX1_3 = SHX6_1
        SHX0_3(SHX1_3)
      end
      SHX0_3 = pairs
      SHX1_3 = SHX4_1
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX5_3 = 1
        SHX6_3 = SHX4_1
        SHX6_3 = SHX6_3[SHX4_3]
        SHX6_3 = #SHX6_3
        SHX7_3 = 1
        for SHX8_3 = SHX5_3, SHX6_3, SHX7_3 do
          SHX9_3 = SHX4_1
          SHX9_3 = SHX9_3[SHX4_3]
          SHX9_3 = SHX9_3[SHX8_3]
          SHX10_3 = table
          SHX10_3 = SHX10_3.has
          SHX11_3 = SHX5_1
          SHX11_3 = SHX11_3[SHX4_3]
          SHX12_3 = SHX9_3
          SHX10_3 = SHX10_3(SHX11_3, SHX12_3)
          if not SHX10_3 then
            SHX10_3 = RemoveWeaponComponentFromPed
            SHX11_3 = PlayerPedId
            SHX11_3 = SHX11_3()
            SHX12_3 = GetHashKey
            SHX13_3 = SHX4_3
            SHX12_3 = SHX12_3(SHX13_3)
            SHX13_3 = GetHashKey
            SHX14_3 = SHX9_3
            SHX13_3, SHX14_3 = SHX13_3(SHX14_3)
            SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3)
          end
        end
      end
      SHX0_3 = SHX10_1
      SHX1_3 = false
      SHX0_3(SHX1_3)
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX5_2 = 1
    SHX6_2 = SHX0_1.shops
    SHX6_2 = #SHX6_2
    SHX7_2 = 1
    for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
      SHX9_2 = SHX0_1.shops
      SHX9_2 = SHX9_2[SHX8_2]
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.createArea
      SHX11_2 = "gunmods_"
      SHX12_2 = SHX8_2
      SHX11_2 = SHX11_2 .. SHX12_2
      SHX12_2 = SHX9_2[2]
      SHX13_2 = 1.5
      SHX14_2 = 6
      SHX15_2 = SHX2_2
      SHX16_2 = SHX3_2
      SHX17_2 = SHX4_2
      SHX18_2 = {}
      SHX18_2.shop = SHX9_2
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
  end
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "04e149ba5e"
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX5_1
  SHX2_2 = SHX2_2[SHX1_2]
  SHX3_2 = SHX5_1
  SHX3_2 = SHX3_2[SHX1_2]
  SHX3_2 = #SHX3_2
  SHX3_2 = SHX3_2 + 1
  SHX2_2[SHX3_2] = SHX0_2
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RMenu
SHX13_1 = SHX12_1
SHX12_1 = SHX12_1.Get
SHX14_1 = "cmggunmods"
SHX15_1 = "attachments"
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = DeleteObject
  SHX1_2 = SHX6_1
  SHX0_2(SHX1_2)
  SHX0_2 = nil
  SHX6_1 = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX4_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = 1
    SHX6_2 = SHX4_1
    SHX6_2 = SHX6_2[SHX4_2]
    SHX6_2 = #SHX6_2
    SHX7_2 = 1
    for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
      SHX9_2 = SHX4_1
      SHX9_2 = SHX9_2[SHX4_2]
      SHX9_2 = SHX9_2[SHX8_2]
      SHX10_2 = table
      SHX10_2 = SHX10_2.has
      SHX11_2 = SHX5_1
      SHX11_2 = SHX11_2[SHX4_2]
      SHX12_2 = SHX9_2
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      if not SHX10_2 then
        SHX10_2 = RemoveWeaponComponentFromPed
        SHX11_2 = PlayerPedId
        SHX11_2 = SHX11_2()
        SHX12_2 = GetHashKey
        SHX13_2 = SHX4_2
        SHX12_2 = SHX12_2(SHX13_2)
        SHX13_2 = GetHashKey
        SHX14_2 = SHX9_2
        SHX13_2, SHX14_2 = SHX13_2(SHX14_2)
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      end
    end
  end
end
SHX12_1.Closed = SHX13_1
SHX12_1 = RMenu
SHX13_1 = SHX12_1
SHX12_1 = SHX12_1.Get
SHX14_1 = "cmggunmods"
SHX15_1 = "main"
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DeleteObject
  SHX1_2 = SHX6_1
  SHX0_2(SHX1_2)
  SHX0_2 = nil
  SHX6_1 = SHX0_2
end
SHX12_1.Closed = SHX13_1
SHX12_1 = tCMG
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = GiveWeaponComponentToPed
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = GetHashKey
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
SHX12_1.giveWeaponComponent = SHX13_1
SHX12_1 = Citizen
SHX12_1 = SHX12_1.CreateThread
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX0_2 = 1
  SHX1_2 = SHX0_1.shops
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX0_1.shops
    SHX4_2 = SHX4_2[SHX3_2]
    SHX5_2 = SHX4_2[2]
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addMarker
    SHX7_2 = SHX5_2.x
    SHX8_2 = SHX5_2.y
    SHX9_2 = SHX5_2.z
    SHX10_2 = 0.5
    SHX11_2 = 0.5
    SHX12_2 = 0.5
    SHX13_2 = 10
    SHX14_2 = 255
    SHX15_2 = 81
    SHX16_2 = 170
    SHX17_2 = 50
    SHX18_2 = 2
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  end
end
SHX12_1(SHX13_1)
SHX12_1 = tCMG
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.getWeapons
  SHX1_2 = SHX1_2()
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = GetHashKey
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = DoesWeaponTakeWeaponComponent
    SHX9_2 = SHX7_2
    SHX10_2 = SHX0_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX8_2 then
      SHX8_2 = GiveWeaponComponentToPed
      SHX9_2 = PlayerPedId
      SHX9_2 = SHX9_2()
      SHX10_2 = SHX7_2
      SHX11_2 = SHX0_2
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      return
    end
  end
end
SHX12_1.giveAttachment = SHX13_1
