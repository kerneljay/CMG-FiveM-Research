-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1
SHX0_1 = {}
SHX0_1.x = 0.375
SHX0_1.y = 0.035
SHX0_1.centered = true
SHX1_1 = 0.25
SHX2_1 = 180
SHX3_1 = true
SHX4_1 = 9.0
SHX5_1 = {}
SHX5_1.r = 255
SHX5_1.g = 255
SHX5_1.b = 255
SHX5_1.a = 255
SHX6_1 = {}
SHX6_1.w = 0.001
SHX6_1.h = 0.003
SHX7_1 = 0.15
SHX8_1 = 0.01
SHX9_1 = {}
SHX10_1 = 255
SHX11_1 = 255
SHX12_1 = 255
SHX13_1 = 255
SHX9_1[1] = SHX10_1
SHX9_1[2] = SHX11_1
SHX9_1[3] = SHX12_1
SHX9_1[4] = SHX13_1
SHX10_1 = true
SHX11_1 = {}
SHX11_1.w = 0.001
SHX11_1.h = 0.012
SHX12_1 = {}
SHX12_1.r = 0
SHX12_1.g = 168
SHX12_1.b = 255
SHX12_1.a = 255
SHX13_1 = true
SHX14_1 = true
SHX15_1 = 0.2
SHX16_1 = 0.01
SHX17_1 = {}
SHX18_1 = 255
SHX19_1 = 255
SHX20_1 = 255
SHX21_1 = 255
SHX17_1[1] = SHX18_1
SHX17_1[2] = SHX19_1
SHX17_1[3] = SHX20_1
SHX17_1[4] = SHX21_1
SHX18_1 = true
SHX19_1 = {}
SHX19_1.w = 0.001
SHX19_1.h = 0.006
SHX20_1 = {}
SHX20_1.r = 255
SHX20_1.g = 255
SHX20_1.b = 255
SHX20_1.a = 255
SHX21_1 = 0.2
SHX22_1 = 0.03
SHX23_1 = {}
SHX24_1 = 255
SHX25_1 = 255
SHX26_1 = 255
SHX27_1 = 255
SHX23_1[1] = SHX24_1
SHX23_1[2] = SHX25_1
SHX23_1[3] = SHX26_1
SHX23_1[4] = SHX27_1
SHX24_1 = {}
SHX24_1.w = 0.0015
SHX24_1.h = 0.018
SHX25_1 = {}
SHX25_1.r = 0
SHX25_1.g = 168
SHX25_1.b = 255
SHX25_1.a = 255
SHX26_1 = {}
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX0_2 = SHX0_2 % 360.0
  if SHX0_2 >= 0.0 then
    SHX1_2 = 22.5
    if SHX0_2 < SHX1_2 then
      goto SHX_LABEL_11
    end
  end
  SHX1_2 = 337.5
  if SHX0_2 >= SHX1_2 then
    -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
    ::SHX_LABEL_11::
    SHX1_2 = "N "
    return SHX1_2
  else
    SHX1_2 = 22.5
    if SHX0_2 >= SHX1_2 then
      SHX1_2 = 67.5
      if SHX0_2 < SHX1_2 then
        SHX1_2 = "NE"
        return SHX1_2
    end
    else
      SHX1_2 = 67.5
      if SHX0_2 >= SHX1_2 then
        SHX1_2 = 112.5
        if SHX0_2 < SHX1_2 then
          SHX1_2 = "E"
          return SHX1_2
      end
      else
        SHX1_2 = 112.5
        if SHX0_2 >= SHX1_2 then
          SHX1_2 = 157.5
          if SHX0_2 < SHX1_2 then
            SHX1_2 = "SE"
            return SHX1_2
        end
        else
          SHX1_2 = 157.5
          if SHX0_2 >= SHX1_2 then
            SHX1_2 = 202.5
            if SHX0_2 < SHX1_2 then
              SHX1_2 = "S"
              return SHX1_2
          end
          else
            SHX1_2 = 202.5
            if SHX0_2 >= SHX1_2 then
              SHX1_2 = 247.5
              if SHX0_2 < SHX1_2 then
                SHX1_2 = "SW"
                return SHX1_2
            end
            else
              SHX1_2 = 247.5
              if SHX0_2 >= SHX1_2 then
                SHX1_2 = 292.5
                if SHX0_2 < SHX1_2 then
                  SHX1_2 = "W"
                  return SHX1_2
              end
              else
                SHX1_2 = 292.5
                if SHX0_2 >= SHX1_2 then
                  SHX1_2 = 337.5
                  if SHX0_2 < SHX1_2 then
                    SHX1_2 = "NW"
                    return SHX1_2
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
function SHX28_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX1_2 or nil
  if not SHX1_2 then
    SHX2_2 = 0
  end
  SHX3_2 = 10
  SHX2_2 = SHX3_2 ^ SHX2_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = 0.5 * SHX2_2
  SHX4_2 = SHX0_2 + SHX4_2
  return SHX3_2(SHX4_2)
end
SHX29_1 = RegisterCommand
SHX30_1 = "showcompass"
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDisplayVisible
  SHX1_2 = "compass"
  SHX2_2 = "user"
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hideDisplay
    SHX1_2 = "compass"
    SHX2_2 = "user"
    SHX0_2(SHX1_2, SHX2_2)
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.showDisplay
    SHX1_2 = "compass"
    SHX2_2 = "user"
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX32_1 = false
SHX29_1(SHX30_1, SHX31_1, SHX32_1)
SHX29_1 = nil
SHX30_1 = nil
SHX31_1 = nil
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDisplayVisible
  SHX1_2 = "compass"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = SHX1_1
    SHX1_2 = SHX2_1
    SHX0_2 = SHX0_2 / SHX1_2
    SHX1_2 = 0
    SHX2_2 = SHX3_1
    if SHX2_2 then
      SHX2_2 = GetGameplayCamRot
      SHX3_2 = 0
      SHX2_2 = SHX2_2(SHX3_2)
      SHX3_2 = SHX2_2.z
      SHX3_2 = SHX3_2 + 360.0
      SHX3_2 = SHX3_2 % 360.0
      SHX4_2 = 360.0
      SHX1_2 = SHX4_2 - SHX3_2
    else
      SHX2_2 = GetEntityHeading
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getPlayerPed
      SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX3_2()
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      SHX3_2 = 360.0
      SHX1_2 = SHX3_2 - SHX2_2
    end
    SHX2_2 = SHX2_1
    SHX2_2 = SHX2_2 / 2
    SHX2_2 = SHX1_2 - SHX2_2
    SHX3_2 = SHX4_1
    SHX4_2 = SHX4_1
    SHX4_2 = SHX2_2 % SHX4_2
    SHX3_2 = SHX3_2 - SHX4_2
    SHX4_2 = SHX0_1.x
    SHX5_2 = SHX3_2 * SHX0_2
    SHX4_2 = SHX4_2 + SHX5_2
    SHX2_2 = SHX2_2 + SHX3_2
    SHX5_2 = SHX26_1
    SHX5_2 = #SHX5_2
    SHX5_2 = 0 ~= SHX5_2
    if SHX5_2 then
      SHX6_2 = GetActiveScreenResolution
      SHX6_2, SHX7_2 = SHX6_2()
      SHX30_1 = SHX7_2
      SHX29_1 = SHX6_2
      SHX6_2 = SHX29_1
      SHX7_2 = SHX30_1
      SHX6_2 = SHX6_2 / SHX7_2
      SHX31_1 = SHX6_2
    end
    while true do
      SHX6_2 = SHX0_1.x
      SHX7_2 = SHX1_1
      SHX6_2 = SHX6_2 + SHX7_2
      if not (SHX4_2 < SHX6_2) then
        break
      end
      if SHX5_2 then
        SHX6_2 = SHX2_2
        if SHX6_2 < 0.0 then
          SHX6_2 = 360.0 + SHX6_2
        else
          SHX7_2 = 360.0
          if SHX6_2 > SHX7_2 then
            SHX6_2 = SHX6_2 - 360.0
          end
        end
        SHX7_2 = pairs
        SHX8_2 = SHX26_1
        SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
        for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
          SHX13_2 = math
          SHX13_2 = SHX13_2.abs
          SHX14_2 = SHX6_2 - SHX12_2
          SHX13_2 = SHX13_2(SHX14_2)
          SHX14_2 = SHX4_1
          SHX14_2 = SHX14_2 / 2.0
          if SHX13_2 < SHX14_2 then
            SHX13_2 = DrawSprite
            SHX14_2 = "cmg_gang"
            SHX15_2 = "ping_thick"
            SHX16_2 = SHX4_2
            SHX17_2 = SHX0_1.y
            SHX17_2 = -0.01 + SHX17_2
            SHX17_2 = SHX17_2 - 0.0075
            SHX18_2 = SHX31_1
            SHX19_2 = 0.03
            SHX18_2 = SHX19_2 / SHX18_2
            SHX18_2 = SHX18_2 * 0.75
            SHX19_2 = 0.0225
            SHX20_2 = 0
            SHX21_2 = 255
            SHX22_2 = 255
            SHX23_2 = 255
            SHX24_2 = 255
            SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
          end
        end
      end
      SHX6_2 = SHX2_2 % 90.0
      if 0 == SHX6_2 then
        SHX6_2 = SHX10_1
        if SHX6_2 then
          SHX6_2 = DrawRect
          SHX7_2 = SHX4_2
          SHX8_2 = SHX0_1.y
          SHX9_2 = SHX11_1.w
          SHX10_2 = SHX11_1.h
          SHX11_2 = SHX12_1.r
          SHX12_2 = SHX12_1.g
          SHX13_2 = SHX12_1.b
          SHX14_2 = SHX12_1.a
          SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        end
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.DrawText
        SHX7_2 = SHX4_2
        SHX8_2 = SHX0_1.y
        SHX9_2 = SHX8_1
        SHX8_2 = SHX8_2 + SHX9_2
        SHX9_2 = SHX27_1
        SHX10_2 = SHX2_2
        SHX9_2 = SHX9_2(SHX10_2)
        SHX10_2 = SHX7_1
        SHX11_2 = 0
        SHX12_2 = 0
        SHX13_2 = SHX9_1
        SHX14_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      else
        SHX6_2 = SHX2_2 % 45.0
        if 0 == SHX6_2 then
          SHX6_2 = SHX13_1
          if SHX6_2 then
            SHX6_2 = SHX18_1
            if SHX6_2 then
              SHX6_2 = DrawRect
              SHX7_2 = SHX4_2
              SHX8_2 = SHX0_1.y
              SHX9_2 = SHX19_1.w
              SHX10_2 = SHX19_1.h
              SHX11_2 = SHX20_1.r
              SHX12_2 = SHX20_1.g
              SHX13_2 = SHX20_1.b
              SHX14_2 = SHX20_1.a
              SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            end
            SHX6_2 = SHX14_1
            if SHX6_2 then
              SHX6_2 = CMG
              SHX6_2 = SHX6_2.DrawText
              SHX7_2 = SHX4_2
              SHX8_2 = SHX0_1.y
              SHX9_2 = SHX16_1
              SHX8_2 = SHX8_2 + SHX9_2
              SHX9_2 = SHX27_1
              SHX10_2 = SHX2_2
              SHX9_2 = SHX9_2(SHX10_2)
              SHX10_2 = SHX15_1
              SHX11_2 = 0
              SHX12_2 = 0
              SHX13_2 = SHX17_1
              SHX14_2 = true
              SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            end
        end
        else
          SHX6_2 = DrawRect
          SHX7_2 = SHX4_2
          SHX8_2 = SHX0_1.y
          SHX9_2 = SHX6_1.w
          SHX10_2 = SHX6_1.h
          SHX11_2 = SHX5_1.r
          SHX12_2 = SHX5_1.g
          SHX13_2 = SHX5_1.b
          SHX14_2 = SHX5_1.a
          SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        end
      end
      SHX6_2 = SHX4_1
      SHX2_2 = SHX2_2 + SHX6_2
      SHX6_2 = SHX4_1
      SHX6_2 = SHX0_2 * SHX6_2
      SHX4_2 = SHX4_2 + SHX6_2
    end
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.DrawText
    SHX7_2 = SHX0_1.x
    SHX8_2 = SHX1_1
    SHX8_2 = SHX8_2 / 2
    SHX7_2 = SHX7_2 + SHX8_2
    SHX8_2 = SHX0_1.y
    SHX9_2 = SHX22_1
    SHX8_2 = SHX8_2 - SHX9_2
    SHX9_2 = tostring
    SHX10_2 = SHX28_1
    SHX11_2 = SHX1_2
    SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX10_2(SHX11_2)
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    SHX10_2 = SHX21_1
    SHX11_2 = 0
    SHX12_2 = 0
    SHX13_2 = SHX23_1
    SHX14_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX6_2 = DrawRect
    SHX7_2 = SHX0_1.x
    SHX8_2 = SHX1_1
    SHX8_2 = SHX8_2 / 2
    SHX7_2 = SHX7_2 + SHX8_2
    SHX8_2 = SHX0_1.y
    SHX9_2 = SHX24_1.w
    SHX10_2 = SHX24_1.h
    SHX11_2 = SHX25_1.r
    SHX12_2 = SHX25_1.g
    SHX13_2 = SHX25_1.b
    SHX14_2 = SHX25_1.a
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    if SHX5_2 then
      SHX6_2 = table
      SHX6_2 = SHX6_2.wipe
      SHX7_2 = SHX26_1
      SHX6_2(SHX7_2)
    end
  end
end
SHX33_1 = CMG
SHX33_1 = SHX33_1.createThreadOnTick
SHX34_1 = SHX32_1
SHX35_1 = "Compass"
SHX33_1(SHX34_1, SHX35_1)
SHX33_1 = CMG
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX26_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX33_1.addCompassPing = SHX34_1
