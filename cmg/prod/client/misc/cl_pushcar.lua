-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1
SHX0_1 = {}
SHX0_1.DamageNeeded = 200.0
SHX0_1.MaxWidth = 5.0
SHX0_1.MaxHeight = 5.0
SHX0_1.MaxLength = 5.0
SHX1_1 = false
SHX2_1 = {}
SHX2_1.ESC = 322
SHX2_1.F1 = 288
SHX2_1.F2 = 289
SHX2_1.F3 = 170
SHX2_1.F5 = 166
SHX2_1.F6 = 167
SHX2_1.F7 = 168
SHX2_1.F8 = 169
SHX2_1.F9 = 56
SHX2_1.F10 = 57
SHX2_1["~"] = 243
SHX2_1["1"] = 157
SHX2_1["2"] = 158
SHX2_1["3"] = 160
SHX2_1["4"] = 164
SHX2_1["5"] = 165
SHX2_1["6"] = 159
SHX2_1["7"] = 161
SHX2_1["8"] = 162
SHX2_1["9"] = 163
SHX2_1["-"] = 84
SHX2_1["="] = 83
SHX2_1.BACKSPACE = 177
SHX2_1.TAB = 37
SHX2_1.Q = 44
SHX2_1.W = 32
SHX2_1.E = 38
SHX2_1.R = 45
SHX2_1.T = 245
SHX2_1.Y = 246
SHX2_1.U = 303
SHX2_1.P = 199
SHX2_1["["] = 39
SHX2_1["]"] = 40
SHX2_1.ENTER = 18
SHX2_1.CAPS = 137
SHX2_1.A = 34
SHX2_1.S = 8
SHX2_1.D = 9
SHX2_1.F = 23
SHX2_1.G = 47
SHX2_1.H = 74
SHX2_1.K = 311
SHX2_1.L = 182
SHX2_1.LEFTSHIFT = 21
SHX2_1.Z = 20
SHX2_1.X = 73
SHX2_1.C = 26
SHX2_1.V = 0
SHX2_1.B = 29
SHX2_1.N = 249
SHX2_1.M = 244
SHX2_1[","] = 82
SHX2_1["."] = 81
SHX2_1.LEFTCTRL = 36
SHX2_1.LEFTALT = 19
SHX2_1.SPACE = 22
SHX2_1.RIGHTCTRL = 70
SHX2_1.HOME = 213
SHX2_1.PAGEUP = 10
SHX2_1.PAGEDOWN = 11
SHX2_1.DELETE = 178
SHX2_1.LEFT = 174
SHX2_1.RIGHT = 175
SHX2_1.TOP = 27
SHX2_1.DOWN = 173
SHX2_1.NENTER = 201
SHX2_1.N4 = 108
SHX2_1.N5 = 60
SHX2_1.N6 = 107
SHX2_1["N+"] = 96
SHX2_1["N-"] = 97
SHX2_1.N7 = 117
SHX2_1.N8 = 61
SHX2_1.N9 = 118
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX1_2 = GetEntityForwardVector
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = -SHX1_2
  SHX2_2 = {}
  SHX3_2 = "wheel_lr"
  SHX4_2 = "wheel_rr"
  SHX2_2[1] = SHX3_2
  SHX2_2[2] = SHX4_2
  SHX3_2 = ipairs
  SHX4_2 = SHX2_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = GetEntityBoneIndexByName
    SHX10_2 = SHX0_2
    SHX11_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX10_2 = GetWorldPositionOfEntityBone
    SHX11_2 = SHX0_2
    SHX12_2 = SHX9_2
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    SHX11_2 = SHX1_2 * 4.0
    SHX11_2 = SHX10_2 + SHX11_2
    SHX12_2 = _ENV
    SHX13_2 = "StartExpensiveSynchronousShapeTestLosProbe"
    SHX12_2 = SHX12_2[SHX13_2]
    SHX13_2 = SHX10_2.x
    SHX14_2 = SHX10_2.y
    SHX15_2 = SHX10_2.z
    SHX16_2 = SHX11_2.x
    SHX17_2 = SHX11_2.y
    SHX18_2 = SHX11_2.z
    SHX19_2 = -1
    SHX20_2 = SHX0_2
    SHX21_2 = 1
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX13_2 = GetShapeTestResult
    SHX14_2 = SHX12_2
    SHX13_2, SHX14_2 = SHX13_2(SHX14_2)
    if 1 == SHX14_2 then
      SHX15_2 = true
      return SHX15_2
    end
  end
  SHX3_2 = GetEntityModel
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 ~= SHX3_2 then
    SHX4_2 = vector3
    SHX5_2 = 0.0
    SHX6_2 = 0.0
    SHX7_2 = 0.0
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX5_2 = vector3
    SHX6_2 = 5.0
    SHX7_2 = 5.0
    SHX8_2 = 5.0
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX6_2 = GetModelDimensions
    SHX7_2 = SHX3_2
    SHX8_2 = SHX4_2
    SHX9_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX7_2 = GetOffsetFromEntityInWorldCoords
    SHX8_2 = SHX0_2
    SHX9_2 = 0.0
    SHX10_2 = SHX6_2.y
    SHX10_2 = SHX10_2 - 0.3
    SHX11_2 = SHX6_2.z
    SHX11_2 = SHX11_2 + 1.0
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX8_2 = GetEntityCoords
    SHX9_2 = SHX0_2
    SHX10_2 = true
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX9_2 = _ENV
    SHX10_2 = "StartExpensiveSynchronousShapeTestLosProbe"
    SHX9_2 = SHX9_2[SHX10_2]
    SHX10_2 = SHX7_2.x
    SHX11_2 = SHX7_2.y
    SHX12_2 = SHX7_2.z
    SHX13_2 = SHX8_2.x
    SHX14_2 = SHX8_2.y
    SHX15_2 = SHX8_2.z
    SHX16_2 = -1
    SHX17_2 = SHX0_2
    SHX18_2 = 1
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX10_2 = GetShapeTestResult
    SHX11_2 = SHX9_2
    SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX10_2(SHX11_2)
    if 0 ~= SHX14_2 and SHX14_2 ~= SHX0_2 then
      SHX15_2 = PlayerPedId
      SHX15_2 = SHX15_2()
      if SHX14_2 ~= SHX15_2 then
        SHX15_2 = true
        return SHX15_2
      end
    end
  end
  SHX4_2 = false
  return SHX4_2
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX0_2 = SHX1_1
  if SHX0_2 then
    return
  end
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetVehiclePedIsIn
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = GetEntityCoords
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = GetEntityCoords
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = GetEntityCoords
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = SHX3_2 - SHX4_2
    SHX5_2 = #SHX5_2
    SHX6_2 = IsVehicleSeatFree
    SHX7_2 = SHX1_2
    SHX8_2 = -1
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if SHX6_2 then
      SHX6_2 = GetVehicleEngineHealth
      SHX7_2 = SHX1_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX7_2 = SHX0_1.DamageNeeded
      if SHX6_2 <= SHX7_2 then
        SHX6_2 = IsEntityInWater
        SHX7_2 = SHX1_2
        SHX6_2 = SHX6_2(SHX7_2)
        if not SHX6_2 then
          if SHX5_2 < 10 then
            SHX6_2 = CMG
            SHX6_2 = SHX6_2.DrawText3D
            SHX7_2 = SHX2_2
            SHX8_2 = "Press [~g~SHIFT~w~] and [~g~E~w~] to push the vehicle"
            SHX9_2 = 0.2
            SHX6_2(SHX7_2, SHX8_2, SHX9_2)
          end
      end
    end
    else
      SHX6_2 = GetVehiclePedIsTryingToEnter
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.getPlayerPed
      SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2 = SHX7_2()
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
      SHX1_2 = SHX6_2
    end
    SHX6_2 = IsControlPressed
    SHX7_2 = 0
    SHX8_2 = SHX2_1.LEFTSHIFT
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if SHX6_2 then
      SHX6_2 = GetEntityHealth
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.getPlayerPed
      SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2 = SHX7_2()
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
      if SHX6_2 > 102 then
        SHX6_2 = IsVehicleSeatFree
        SHX7_2 = SHX1_2
        SHX8_2 = -1
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        if SHX6_2 then
          SHX6_2 = IsEntityAttachedToEntity
          SHX7_2 = SHX0_2
          SHX8_2 = SHX1_2
          SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
          if not SHX6_2 then
            SHX6_2 = IsControlJustPressed
            SHX7_2 = 0
            SHX8_2 = SHX2_1.E
            SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
            if SHX6_2 then
              SHX6_2 = GetVehicleEngineHealth
              SHX7_2 = SHX1_2
              SHX6_2 = SHX6_2(SHX7_2)
              SHX7_2 = SHX0_1.DamageNeeded
              if SHX6_2 <= SHX7_2 then
                SHX6_2 = tCMG
                SHX6_2 = SHX6_2.canAnim
                SHX6_2 = SHX6_2()
                if SHX6_2 then
                  SHX6_2 = tCMG
                  SHX6_2 = SHX6_2.isTazed
                  SHX6_2 = SHX6_2()
                  if not SHX6_2 then
                    SHX6_2 = GetEntityCoords
                    SHX7_2 = SHX1_2
                    SHX6_2 = SHX6_2(SHX7_2)
                    SHX3_2 = SHX6_2
                    SHX6_2 = GetEntityCoords
                    SHX7_2 = CMG
                    SHX7_2 = SHX7_2.getPlayerPed
                    SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2 = SHX7_2()
                    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
                    SHX4_2 = SHX6_2
                    SHX6_2 = SHX3_2 - SHX4_2
                    SHX5_2 = #SHX6_2
                    if SHX5_2 < 10 then
                      SHX6_2 = SHX3_1
                      SHX7_2 = SHX1_2
                      SHX6_2 = SHX6_2(SHX7_2)
                      if not SHX6_2 then
                        SHX6_2 = false
                        SHX7_2 = GetEntityCoords
                        SHX8_2 = SHX0_2
                        SHX7_2 = SHX7_2(SHX8_2)
                        SHX2_2 = SHX7_2
                        SHX7_2 = GetEntityCoords
                        SHX8_2 = SHX1_2
                        SHX7_2 = SHX7_2(SHX8_2)
                        SHX8_2 = GetEntityForwardVector
                        SHX9_2 = SHX1_2
                        SHX8_2 = SHX8_2(SHX9_2)
                        SHX7_2 = SHX7_2 + SHX8_2
                        SHX8_2 = GetEntityCoords
                        SHX9_2 = SHX0_2
                        SHX8_2 = SHX8_2(SHX9_2)
                        SHX7_2 = SHX7_2 - SHX8_2
                        SHX7_2 = #SHX7_2
                        SHX8_2 = GetEntityCoords
                        SHX9_2 = SHX1_2
                        SHX8_2 = SHX8_2(SHX9_2)
                        SHX9_2 = GetEntityForwardVector
                        SHX10_2 = SHX1_2
                        SHX9_2 = SHX9_2(SHX10_2)
                        SHX9_2 = SHX9_2 * -1
                        SHX8_2 = SHX8_2 + SHX9_2
                        SHX9_2 = GetEntityCoords
                        SHX10_2 = SHX0_2
                        SHX9_2 = SHX9_2(SHX10_2)
                        SHX8_2 = SHX8_2 - SHX9_2
                        SHX8_2 = #SHX8_2
                        if SHX7_2 > SHX8_2 then
                          SHX6_2 = false
                        else
                          SHX6_2 = true
                        end
                        SHX7_2 = vector3
                        SHX8_2 = 0.0
                        SHX9_2 = 0.0
                        SHX10_2 = 0.0
                        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
                        SHX8_2 = vector3
                        SHX9_2 = 5.0
                        SHX10_2 = 5.0
                        SHX11_2 = 5.0
                        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
                        SHX9_2 = GetModelDimensions
                        SHX10_2 = GetEntityModel
                        SHX11_2 = SHX1_2
                        SHX10_2 = SHX10_2(SHX11_2)
                        SHX11_2 = SHX7_2
                        SHX12_2 = SHX8_2
                        SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
                        if SHX6_2 then
                          SHX10_2 = AttachEntityToEntity
                          SHX11_2 = CMG
                          SHX11_2 = SHX11_2.getPlayerPed
                          SHX11_2 = SHX11_2()
                          SHX12_2 = SHX1_2
                          SHX13_2 = GetPedBoneIndex
                          SHX14_2 = PlayerPedId
                          SHX14_2 = SHX14_2()
                          SHX15_2 = 6286
                          SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
                          SHX14_2 = 0.0
                          SHX15_2 = SHX9_2.y
                          SHX15_2 = SHX15_2 * -1
                          SHX15_2 = SHX15_2 + 0.1
                          SHX16_2 = SHX9_2.z
                          SHX16_2 = SHX16_2 + 1.0
                          SHX17_2 = 0.0
                          SHX18_2 = 0.0
                          SHX19_2 = 180.0
                          SHX20_2 = true
                          SHX21_2 = false
                          SHX22_2 = false
                          SHX23_2 = true
                          SHX24_2 = 0
                          SHX25_2 = true
                          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
                        else
                          SHX10_2 = AttachEntityToEntity
                          SHX11_2 = CMG
                          SHX11_2 = SHX11_2.getPlayerPed
                          SHX11_2 = SHX11_2()
                          SHX12_2 = SHX1_2
                          SHX13_2 = -1
                          SHX14_2 = 0.0
                          SHX15_2 = SHX9_2.y
                          SHX15_2 = SHX15_2 - 0.3
                          SHX16_2 = SHX9_2.z
                          SHX16_2 = SHX16_2 + 1.0
                          SHX17_2 = 0.0
                          SHX18_2 = 0.0
                          SHX19_2 = 0.0
                          SHX20_2 = true
                          SHX21_2 = false
                          SHX22_2 = false
                          SHX23_2 = true
                          SHX24_2 = 0
                          SHX25_2 = true
                          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
                        end
                        SHX10_2 = "missfinale_c2ig_11"
                        SHX11_2 = RequestAnimDict
                        SHX12_2 = SHX10_2
                        SHX11_2(SHX12_2)
                        while true do
                          SHX11_2 = HasAnimDictLoaded
                          SHX12_2 = SHX10_2
                          SHX11_2 = SHX11_2(SHX12_2)
                          if SHX11_2 then
                            break
                          end
                          SHX11_2 = Citizen
                          SHX11_2 = SHX11_2.Wait
                          SHX12_2 = 100
                          SHX11_2(SHX12_2)
                        end
                        SHX11_2 = TaskPlayAnim
                        SHX12_2 = SHX0_2
                        SHX13_2 = "missfinale_c2ig_11"
                        SHX14_2 = "pushcar_offcliff_m"
                        SHX15_2 = 2.0
                        SHX16_2 = -8.0
                        SHX17_2 = -1
                        SHX18_2 = 35
                        SHX19_2 = 0
                        SHX20_2 = false
                        SHX21_2 = false
                        SHX22_2 = false
                        SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
                        SHX11_2 = RemoveAnimDict
                        SHX12_2 = SHX10_2
                        SHX11_2(SHX12_2)
                        SHX11_2 = Citizen
                        SHX11_2 = SHX11_2.Wait
                        SHX12_2 = 200
                        SHX11_2(SHX12_2)
                        SHX11_2 = SHX1_2
                        SHX12_2 = true
                        SHX1_1 = SHX12_2
                        SHX12_2 = Citizen
                        SHX12_2 = SHX12_2.CreateThread
                        function SHX13_2()
                          -- [AI CLEANUP] Decompiled Lua - Fix these:
                          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                          -- 3. Replace goto/label with while/repeat-until where possible
                          -- 4. Remove decompiler comments, add meaningful ones
                          -- 5. Fix indentation and formatting
                          
                          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
                          while true do
                            SHX0_3 = Citizen
                            SHX0_3 = SHX0_3.Wait
                            SHX1_3 = 5
                            SHX0_3(SHX1_3)
                            SHX0_3 = IsDisabledControlPressed
                            SHX1_3 = 0
                            SHX2_3 = SHX2_1.A
                            SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                            if SHX0_3 then
                              SHX0_3 = TaskVehicleTempAction
                              SHX1_3 = CMG
                              SHX1_3 = SHX1_3.getPlayerPed
                              SHX1_3 = SHX1_3()
                              SHX2_3 = SHX11_2
                              SHX3_3 = 11
                              SHX4_3 = 1000
                              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
                            end
                            SHX0_3 = IsDisabledControlPressed
                            SHX1_3 = 0
                            SHX2_3 = SHX2_1.D
                            SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                            if SHX0_3 then
                              SHX0_3 = TaskVehicleTempAction
                              SHX1_3 = CMG
                              SHX1_3 = SHX1_3.getPlayerPed
                              SHX1_3 = SHX1_3()
                              SHX2_3 = SHX11_2
                              SHX3_3 = 10
                              SHX4_3 = 1000
                              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
                            end
                            SHX0_3 = SHX6_2
                            if SHX0_3 then
                              SHX0_3 = SetVehicleForwardSpeed
                              SHX1_3 = SHX11_2
                              SHX2_3 = -1.0
                              SHX0_3(SHX1_3, SHX2_3)
                            else
                              SHX0_3 = SetVehicleForwardSpeed
                              SHX1_3 = SHX11_2
                              SHX2_3 = 1.0
                              SHX0_3(SHX1_3, SHX2_3)
                            end
                            SHX0_3 = HasEntityCollidedWithAnything
                            SHX1_3 = SHX11_2
                            SHX0_3 = SHX0_3(SHX1_3)
                            if SHX0_3 then
                              SHX0_3 = SetVehicleOnGroundProperly
                              SHX1_3 = SHX11_2
                              SHX0_3(SHX1_3)
                            end
                            SHX0_3 = IsDisabledControlPressed
                            SHX1_3 = 0
                            SHX2_3 = SHX2_1.E
                            SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                            if SHX0_3 then
                              SHX0_3 = IsEntityInWater
                              SHX1_3 = SHX11_2
                              SHX0_3 = SHX0_3(SHX1_3)
                              if not SHX0_3 then
                                goto SHX_LABEL_80
                              end
                            end
                            SHX0_3 = DetachEntity
                            SHX1_3 = SHX0_2
                            SHX2_3 = false
                            SHX3_3 = false
                            SHX0_3(SHX1_3, SHX2_3, SHX3_3)
                            SHX0_3 = StopAnimTask
                            SHX1_3 = SHX0_2
                            SHX2_3 = "missfinale_c2ig_11"
                            SHX3_3 = "pushcar_offcliff_m"
                            SHX4_3 = 2.0
                            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
                            SHX0_3 = FreezeEntityPosition
                            SHX1_3 = SHX0_2
                            SHX2_3 = false
                            SHX0_3(SHX1_3, SHX2_3)
                            do break end
                            -- [FIX IF ERROR] Move ::SHX_LABEL_80:: outside nested blocks until all 'goto SHX_LABEL_80' can see it
                            ::SHX_LABEL_80::
                          end
                          SHX0_3 = false
                          SHX1_1 = SHX0_3
                        end
                        SHX12_2(SHX13_2)
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
  end
end
SHX5_1 = CMG
SHX5_1 = SHX5_1.createThreadOnTick
SHX6_1 = SHX4_1
SHX7_1 = "Push Car"
SHX5_1(SHX6_1, SHX7_1)
