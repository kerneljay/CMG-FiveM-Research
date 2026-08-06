-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = false
SHX1_1 = AddEventHandler
SHX2_1 = "3b69022dfc"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX0_1 = SHX0_2
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = AddEventHandler
SHX2_1 = "04311f0e28"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX0_1 = SHX0_2
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = false
SHX2_1 = AddEventHandler
SHX3_1 = "81a637c0d3"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX1_1 = SHX0_2
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = AddEventHandler
SHX3_1 = "71e40f05bd"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX1_1 = SHX0_2
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = AddEventHandler
SHX3_1 = "gameEventTriggered"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = GameEventTriggered
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX2_1(SHX3_1, SHX4_1)
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  return SHX1_2(SHX2_2)
end
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = string
  SHX2_2 = SHX2_2.pack
  SHX3_2 = "i4"
  SHX4_2 = SHX1_2 or SHX4_2
  if not SHX1_2 then
    SHX4_2 = 0
  end
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = string
  SHX3_2 = SHX3_2.unpack
  SHX4_2 = "f"
  SHX5_2 = SHX2_2
  return SHX3_2(SHX4_2, SHX5_2)
end
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = 1 == SHX1_2
  return SHX1_2
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = SHX2_1
  SHX2_2 = SHX0_2[1]
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX2_1
  SHX3_2 = SHX0_2[2]
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX3_1
  SHX4_2 = SHX0_2[3]
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX4_1
  SHX5_2 = SHX0_2[6]
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX2_1
  SHX6_2 = SHX0_2[7]
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SHX4_1
  SHX7_2 = SHX0_2[11]
  SHX6_2 = SHX6_2(SHX7_2)
  if SHX4_2 then
    SHX7_2 = PlayerPedId
    SHX7_2 = SHX7_2()
    if SHX2_2 == SHX7_2 then
      SHX7_2 = IsEntityAPed
      SHX8_2 = SHX1_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = PlayerPedId
        SHX7_2 = SHX7_2()
        if SHX1_2 ~= SHX7_2 then
          SHX7_2 = TriggerEvent
          SHX8_2 = "2244097108"
          SHX9_2 = SHX1_2
          SHX7_2(SHX8_2, SHX9_2)
        end
      end
    end
  end
  SHX7_2 = PlayerPedId
  SHX7_2 = SHX7_2()
  if SHX1_2 == SHX7_2 then
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getPedServerId
    SHX8_2 = SHX2_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 and SHX3_2 > 0.0 then
      SHX8_2 = GetEntityCoords
      SHX9_2 = SHX2_2
      SHX10_2 = true
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.getPlayerCoords
      SHX9_2 = SHX9_2()
      SHX8_2 = SHX8_2 - SHX9_2
      SHX8_2 = #SHX8_2
      SHX9_2 = TriggerServerEvent
      SHX10_2 = "c17d6a6309"
      SHX11_2 = SHX7_2
      SHX12_2 = SHX3_2
      SHX13_2 = SHX5_2
      SHX14_2 = SHX4_2
      SHX15_2 = SHX6_2
      SHX16_2 = SHX8_2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    end
    if SHX5_2 and 0 ~= SHX5_2 and SHX3_2 > 0.0 and not SHX4_2 then
      SHX8_2 = GetWeapontypeGroup
      SHX9_2 = SHX5_2
      SHX8_2 = SHX8_2(SHX9_2)
      SHX9_2 = {}
      SHX10_2 = 416676503
      SHX9_2[SHX10_2] = true
      SHX10_2 = 3337201093
      SHX9_2[SHX10_2] = true
      SHX10_2 = 860033945
      SHX9_2[SHX10_2] = true
      SHX10_2 = 970310034
      SHX9_2[SHX10_2] = true
      SHX10_2 = 1159398588
      SHX9_2[SHX10_2] = true
      SHX10_2 = 3082541095
      SHX9_2[SHX10_2] = true
      SHX10_2 = 2725924767
      SHX9_2[SHX10_2] = true
      SHX10_2 = SHX9_2[SHX8_2]
      if SHX10_2 then
        SHX10_2 = TriggerEvent
        SHX11_2 = "91ac1508c7"
        SHX12_2 = SHX5_2
        SHX10_2(SHX11_2, SHX12_2)
      end
    end
  end
end
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if "CEventNetworkEntityDamage" == SHX0_2 then
    SHX2_2 = SHX5_1
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
end
GameEventTriggered = SHX6_1
SHX6_1 = {}
SHX7_1 = AddEventHandler
SHX8_1 = "entityDamaged"
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  if SHX1_2 == SHX2_2 and SHX0_2 ~= SHX2_2 then
    SHX3_2 = IsEntityAPed
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = GetEntityHealth
        SHX4_2 = SHX0_2
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 > 105 then
          SHX4_2 = SHX6_1
          SHX4_2 = SHX4_2[SHX0_2]
          if SHX4_2 ~= SHX3_2 then
            SHX4_2 = SHX6_1
            SHX4_2[SHX0_2] = SHX3_2
            SHX4_2 = Citizen
            SHX4_2 = SHX4_2.Wait
            SHX5_2 = 0
            SHX4_2(SHX5_2)
            SHX4_2 = TriggerEvent
            SHX5_2 = "2286c4bb78"
            SHX6_2 = SHX0_2
            SHX4_2(SHX5_2, SHX6_2)
          end
        end
    end
  end
  elseif SHX0_2 == SHX2_2 and SHX1_2 ~= SHX2_2 then
    SHX3_2 = IsEntityAPed
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = GetEntityHealth
        SHX4_2 = SHX0_2
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 > 105 then
          SHX4_2 = SHX6_1
          SHX4_2 = SHX4_2[SHX0_2]
          if SHX4_2 ~= SHX3_2 then
            SHX4_2 = SHX6_1
            SHX4_2[SHX0_2] = SHX3_2
            SHX4_2 = Citizen
            SHX4_2 = SHX4_2.Wait
            SHX5_2 = 0
            SHX4_2(SHX5_2)
            SHX4_2 = TriggerEvent
            SHX5_2 = "1e1208e937"
            SHX6_2 = SHX1_2
            SHX4_2(SHX5_2, SHX6_2)
          end
        end
      end
    end
  end
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = CreateThread
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = RequestScriptAudioBank
  SHX1_2 = "DLC_HITMARKERS\\HITMARKERS_ONE"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = RequestScriptAudioBank
    SHX1_2 = "DLC_HITMARKERS\\HITMARKERS_ONE"
    SHX2_2 = false
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = HasStreamedTextureDictLoaded
  SHX1_2 = "hitmarker"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = RequestStreamedTextureDict
    SHX1_2 = "hitmarker"
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    while true do
      SHX0_2 = HasStreamedTextureDictLoaded
      SHX1_2 = "hitmarker"
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        break
      end
      SHX0_2 = Wait
      SHX1_2 = 0
      SHX0_2(SHX1_2)
    end
  end
end
SHX7_1(SHX8_1)
SHX7_1 = 0
SHX8_1 = RegisterNetEvent
SHX9_1 = "9204cb8453"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isPlusClub
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.isPlatClub
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        goto SHX_LABEL_23
      end
    end
    SHX1_2 = PlaySoundFrontend
    SHX2_2 = -1
    SHX3_2 = "hitmarker"
    SHX4_2 = "hitmarkers"
    SHX5_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = 500
    SHX7_1 = SHX1_2
  else
    -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
    ::SHX_LABEL_23::
    SHX1_2 = SHX0_1
    if SHX1_2 then
      if SHX0_2 then
        SHX1_2 = SendNUIMessage
        SHX2_2 = {}
        SHX2_2.transactionType = "headshot"
        SHX1_2(SHX2_2)
      else
        SHX1_2 = SendNUIMessage
        SHX2_2 = {}
        SHX2_2.transactionType = "bodyshot"
        SHX1_2(SHX2_2)
      end
    end
  end
end
SHX8_1(SHX9_1, SHX10_1)
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = SHX7_1
  if SHX0_2 >= 0 then
    SHX0_2 = DrawSprite
    SHX1_2 = "hitmarker"
    SHX2_2 = "hitmarker"
    SHX3_2 = 0.5
    SHX4_2 = 0.5
    SHX5_2 = 0.0125
    SHX6_2 = 0.02
    SHX7_2 = 0.0
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX0_2 = HideHudComponentThisFrame
    SHX1_2 = 14
    SHX0_2(SHX1_2)
  end
end
SHX9_1 = CMG
SHX9_1 = SHX9_1.createThreadOnTick
SHX10_1 = SHX8_1
SHX11_1 = "Hit Markers"
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = CreateThread
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = SHX7_1
    if SHX0_2 >= 0 then
      SHX0_2 = SHX7_1
      SHX0_2 = SHX0_2 - 100
      SHX7_1 = SHX0_2
    end
    SHX0_2 = Wait
    SHX1_2 = 100
    SHX0_2(SHX1_2)
  end
end
SHX9_1(SHX10_1)
