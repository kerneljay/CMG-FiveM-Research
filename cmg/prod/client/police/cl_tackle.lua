-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1
SHX0_1 = {}
SHX0_1.ESC = 322
SHX0_1.F1 = 288
SHX0_1.F2 = 289
SHX0_1.F3 = 170
SHX0_1.F5 = 166
SHX0_1.F6 = 167
SHX0_1.F7 = 168
SHX0_1.F8 = 169
SHX0_1.F9 = 56
SHX0_1.F10 = 57
SHX0_1["~"] = 243
SHX0_1["1"] = 157
SHX0_1["2"] = 158
SHX0_1["3"] = 160
SHX0_1["4"] = 164
SHX0_1["5"] = 165
SHX0_1["6"] = 159
SHX0_1["7"] = 161
SHX0_1["8"] = 162
SHX0_1["9"] = 163
SHX0_1["-"] = 84
SHX0_1["="] = 83
SHX0_1.BACKSPACE = 177
SHX0_1.TAB = 37
SHX0_1.Q = 44
SHX0_1.W = 32
SHX0_1.E = 38
SHX0_1.R = 45
SHX0_1.T = 245
SHX0_1.Y = 246
SHX0_1.U = 303
SHX0_1.P = 199
SHX0_1["["] = 39
SHX0_1["]"] = 40
SHX0_1.ENTER = 18
SHX0_1.CAPS = 137
SHX0_1.A = 34
SHX0_1.S = 8
SHX0_1.D = 9
SHX0_1.F = 23
SHX0_1.G = 47
SHX0_1.H = 74
SHX0_1.K = 311
SHX0_1.L = 182
SHX0_1.LEFTSHIFT = 21
SHX0_1.Z = 20
SHX0_1.X = 73
SHX0_1.C = 26
SHX0_1.V = 0
SHX0_1.B = 29
SHX0_1.N = 249
SHX0_1.M = 244
SHX0_1[","] = 82
SHX0_1["."] = 81
SHX0_1.LEFTCTRL = 36
SHX0_1.LEFTALT = 19
SHX0_1.SPACE = 22
SHX0_1.RIGHTCTRL = 70
SHX0_1.HOME = 213
SHX0_1.PAGEUP = 10
SHX0_1.PAGEDOWN = 11
SHX0_1.DELETE = 178
SHX0_1.LEFT = 174
SHX0_1.RIGHT = 175
SHX0_1.TOP = 27
SHX0_1.DOWN = 173
SHX0_1.NENTER = 201
SHX0_1.N4 = 108
SHX0_1.N5 = 60
SHX0_1.N6 = 107
SHX0_1["N+"] = 96
SHX0_1["N-"] = 97
SHX0_1.N7 = 117
SHX0_1.N8 = 61
SHX0_1.N9 = 118
SHX1_1 = false
SHX2_1 = false
SHX3_1 = "missmic2ig_11"
SHX4_1 = "mic_2_ig_11_intro_goon"
SHX5_1 = "mic_2_ig_11_intro_p_one"
SHX6_1 = 0
SHX7_1 = false
SHX8_1 = RegisterNetEvent
SHX9_1 = "8913dc97ca"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = true
  SHX2_1 = SHX1_2
  SHX1_2 = TriggerEvent
  SHX2_2 = "56e6172373"
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = GetPlayerPed
  SHX3_2 = GetPlayerFromServerId
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX3_2(SHX4_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX3_2 = RequestAnimDict
  SHX4_2 = SHX3_1
  SHX3_2(SHX4_2)
  while true do
    SHX3_2 = HasAnimDictLoaded
    SHX4_2 = SHX3_1
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 10
    SHX3_2(SHX4_2)
  end
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.setCanAnim
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = AttachEntityToEntity
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX2_2
  SHX6_2 = 11816
  SHX7_2 = 0.25
  SHX8_2 = 0.5
  SHX9_2 = 0.0
  SHX10_2 = 0.5
  SHX11_2 = 0.5
  SHX12_2 = 180.0
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = 2
  SHX18_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX1_2
  SHX5_2 = SHX3_1
  SHX6_2 = SHX5_1
  SHX7_2 = 8.0
  SHX8_2 = -8.0
  SHX9_2 = 3000
  SHX10_2 = 0
  SHX11_2 = 0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = RemoveAnimDict
  SHX4_2 = SHX3_1
  SHX3_2(SHX4_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 3000
  SHX3_2(SHX4_2)
  SHX3_2 = DetachEntity
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = true
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.setCanAnim
  SHX4_2 = true
  SHX3_2(SHX4_2)
  SHX3_2 = true
  SHX7_1 = SHX3_2
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 3000
  SHX3_2(SHX4_2)
  SHX3_2 = false
  SHX7_1 = SHX3_2
  SHX3_2 = false
  SHX2_1 = SHX3_2
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  return SHX0_2
end
SHX8_1.isPedBeingTackled = SHX9_1
SHX8_1 = RegisterNetEvent
SHX9_1 = "11c53fdb49"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = RequestAnimDict
  SHX2_2 = SHX3_1
  SHX1_2(SHX2_2)
  while true do
    SHX1_2 = HasAnimDictLoaded
    SHX2_2 = SHX3_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 10
    SHX1_2(SHX2_2)
  end
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = SHX3_1
  SHX4_2 = SHX4_1
  SHX5_2 = 8.0
  SHX6_2 = -8.0
  SHX7_2 = 3000
  SHX8_2 = 0
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = SHX3_1
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 3000
  SHX1_2(SHX2_2)
  SHX1_2 = false
  SHX1_1 = SHX1_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = true
  SHX1_2(SHX2_2)
end
SHX8_1(SHX9_1, SHX10_1)
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if "metpd" ~= SHX0_2 then
    SHX3_2 = true
    return SHX3_2
  end
  if "CID" == SHX1_2 then
    SHX3_2 = GetPlayerPed
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if 0 ~= SHX3_2 then
      SHX4_2 = GetPedDrawableVariation
      SHX5_2 = SHX3_2
      SHX6_2 = 9
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.doesClothingDrawableRequirePermission
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.getModelGender
      SHX7_2 = SHX3_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX7_2 = "Vests"
      SHX8_2 = SHX4_2
      SHX9_2 = "police"
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      if not SHX5_2 then
        SHX5_2 = true
        return SHX5_2
      end
    end
  end
  SHX3_2 = false
  return SHX3_2
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = 2.0
  SHX1_2 = nil
  SHX2_2 = ipairs
  SHX3_2 = GetActivePlayers
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX3_2()
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = PlayerId
    SHX8_2 = SHX8_2()
    if SHX7_2 ~= SHX8_2 then
      SHX8_2 = GetPlayerServerId
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.clientGetUserIdFromSource
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.getJobType
      SHX11_2 = SHX9_2
      SHX10_2, SHX11_2 = SHX10_2(SHX11_2)
      SHX12_2 = SHX8_1
      SHX13_2 = SHX10_2
      SHX14_2 = SHX11_2
      SHX15_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      if SHX12_2 and "hmp" ~= SHX10_2 and "borderforce" ~= SHX10_2 then
        SHX12_2 = GetEntityCoords
        SHX13_2 = GetPlayerPed
        SHX14_2 = SHX7_2
        SHX13_2 = SHX13_2(SHX14_2)
        SHX14_2 = true
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
        SHX13_2 = CMG
        SHX13_2 = SHX13_2.getPlayerCoords
        SHX13_2 = SHX13_2()
        SHX13_2 = SHX12_2 - SHX13_2
        SHX13_2 = #SHX13_2
        if SHX0_2 > SHX13_2 then
          SHX0_2 = SHX13_2
          SHX1_2 = SHX8_2
        end
      end
    end
  end
  return SHX1_2
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX7_1
  if SHX0_2 then
    SHX0_2 = SetPedToRagdoll
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = 1000
    SHX3_2 = 1000
    SHX4_2 = 0
    SHX5_2 = false
    SHX6_2 = false
    SHX7_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "prisonguard.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isPlayerNearPrison
      SHX0_2 = SHX0_2()
      if SHX0_2 then
        goto SHX_LABEL_38
      end
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "borderforce.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      goto SHX_LABEL_107
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_38:: outside nested blocks until all 'goto SHX_LABEL_38' can see it
  ::SHX_LABEL_38::
  SHX0_2 = IsControlPressed
  SHX1_2 = 0
  SHX2_2 = SHX0_1.LEFTSHIFT
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = SHX0_1.G
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX1_1
      if not SHX0_2 then
        SHX0_2 = GetGameTimer
        SHX0_2 = SHX0_2()
        SHX1_2 = SHX6_1
        SHX0_2 = SHX0_2 - SHX1_2
        SHX1_2 = 10000
        if SHX0_2 > SHX1_2 then
          SHX0_2 = GetEntityHealth
          SHX1_2 = PlayerPedId
          SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX1_2()
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if SHX0_2 > 102 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.isKnockedOut
            SHX0_2 = SHX0_2()
            if not SHX0_2 then
              SHX0_2 = SHX9_1
              SHX0_2 = SHX0_2()
              if SHX0_2 then
                SHX1_2 = SHX1_1
                if not SHX1_2 then
                  SHX1_2 = SHX2_1
                  if not SHX1_2 then
                    SHX1_2 = IsPedInAnyVehicle
                    SHX2_2 = CMG
                    SHX2_2 = SHX2_2.getPlayerPed
                    SHX2_2 = SHX2_2()
                    SHX3_2 = true
                    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
                    if not SHX1_2 then
                      SHX1_2 = IsPedInAnyVehicle
                      SHX2_2 = GetPlayerPed
                      SHX3_2 = SHX0_2
                      SHX2_2 = SHX2_2(SHX3_2)
                      SHX3_2 = true
                      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
                      if not SHX1_2 then
                        SHX1_2 = true
                        SHX1_1 = SHX1_2
                        SHX1_2 = GetGameTimer
                        SHX1_2 = SHX1_2()
                        SHX6_1 = SHX1_2
                        SHX1_2 = TriggerServerEvent
                        SHX2_2 = "e17f0a16fb"
                        SHX3_2 = SHX0_2
                        SHX1_2(SHX2_2, SHX3_2)
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
  -- [FIX IF ERROR] Move ::SHX_LABEL_107:: outside nested blocks until all 'goto SHX_LABEL_107' can see it
  ::SHX_LABEL_107::
end
SHX11_1 = CMG
SHX11_1 = SHX11_1.createThreadOnTick
SHX12_1 = SHX10_1
SHX13_1 = "Tackling"
SHX11_1(SHX12_1, SHX13_1)
