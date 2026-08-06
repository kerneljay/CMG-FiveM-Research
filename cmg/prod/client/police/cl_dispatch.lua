-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1
function SHX0_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = GetStreetNameAtCoord
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = GetStreetNameFromHashKey
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetNameOfZone
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = GetLabelText
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX2_2
  SHX6_2 = ", "
  SHX7_2 = SHX4_2
  SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
  return SHX5_2
end
SHX1_1 = CMG
SHX1_1 = SHX1_1.RegisterClientCallback
SHX2_1 = "4bdccf1c50"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = {}
  SHX1_2.position = SHX0_2
  SHX2_2 = SHX0_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2.streetName = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getModelGender
  SHX2_2 = SHX2_2()
  SHX1_2.gender = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isPlayerInRedZone
  SHX2_2 = SHX2_2()
  SHX1_2.inRedzone = SHX2_2
  return SHX1_2
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = {}
SHX2_1 = -755518101
SHX1_1[SHX2_1] = "DIGISCANNER"
SHX2_1 = -37788308
SHX1_1[SHX2_1] = "FIREEXTINGUISHER"
SHX2_1 = 1175761940
SHX1_1[SHX2_1] = "HACKINGDEVICE"
SHX2_1 = -1569042529
SHX1_1[SHX2_1] = "HEAVY"
SHX2_1 = -728555052
SHX1_1[SHX2_1] = "MELEE"
SHX2_1 = -535475913
SHX1_1[SHX2_1] = "METALDETECTOR"
SHX2_1 = 1159398588
SHX1_1[SHX2_1] = "MG"
SHX2_1 = -801780072
SHX1_1[SHX2_1] = "NIGHTVISION"
SHX2_1 = 431593103
SHX1_1[SHX2_1] = "PARACHUTE"
SHX2_1 = 1595662460
SHX1_1[SHX2_1] = "PETROLCAN"
SHX2_1 = 416676503
SHX1_1[SHX2_1] = "PISTOL"
SHX2_1 = 970310034
SHX1_1[SHX2_1] = "RIFLE"
SHX2_1 = 860033945
SHX1_1[SHX2_1] = "SHOTGUN"
SHX2_1 = -957766203
SHX1_1[SHX2_1] = "SMG"
SHX2_1 = -1212426201
SHX1_1[SHX2_1] = "SNIPER"
SHX2_1 = 690389602
SHX1_1[SHX2_1] = "STUNGUN"
SHX2_1 = 1548507267
SHX1_1[SHX2_1] = "THROWN"
SHX2_1 = 75159441
SHX1_1[SHX2_1] = "TRANQILIZER"
SHX2_1 = -1609580060
SHX1_1[SHX2_1] = "UNARMED"
SHX2_1 = {}
SHX3_1 = "DIGISCANNER"
SHX4_1 = "FIREEXTINGUISHER"
SHX5_1 = "HACKINGDEVICE"
SHX6_1 = "METALDETECTOR"
SHX7_1 = "NIGHTVISION"
SHX8_1 = "PARACHUTE"
SHX9_1 = "PETROLCAN"
SHX10_1 = "STUNGUN"
SHX11_1 = "TRANQILIZER"
SHX12_1 = "UNARMED"
SHX13_1 = "UNKNOWN"
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX2_1[9] = SHX11_1
SHX2_1[10] = SHX12_1
SHX2_1[11] = SHX13_1
SHX3_1 = {}
SHX3_1.DIGISCANNER = "Digiscanner"
SHX3_1.FIREEXTINGUISHER = "Fire Extinguisher"
SHX3_1.HACKINGDEVICE = "Hacking Device"
SHX3_1.HEAVY = "Heavy"
SHX3_1.MELEE = "Melee"
SHX3_1.METALDETECTOR = "Metal Detector"
SHX3_1.MG = "Machine Gun"
SHX3_1.NIGHTVISION = "Night Vision"
SHX3_1.PARACHUTE = "Parachute"
SHX3_1.PETROLCAN = "Petrol Can"
SHX3_1.PISTOL = "Pistol"
SHX3_1.RIFLE = "Rifle"
SHX3_1.SHOTGUN = "Shotgun"
SHX3_1.SMG = "SMG"
SHX3_1.SNIPER = "Sniper"
SHX3_1.STUNGUN = "Stun Gun"
SHX3_1.THROWN = "Thrown"
SHX3_1.TRANQILIZER = "Tranquilizer"
SHX3_1.UNARMED = "Unarmed"
SHX3_1.UNKNOWN = "Firearm"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetWeapontypeGroup
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_1
  SHX1_2 = SHX2_2[SHX1_2]
  if not SHX1_2 then
    SHX1_2 = "UNKNOWN"
  end
  return SHX1_2
end
SHX5_1 = nil
SHX6_1 = AddEventHandler
SHX7_1 = "CEventGunShot"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  if SHX1_2 ~= SHX2_2 then
    return
  end
  SHX2_2 = 0.01
  SHX3_2 = math
  SHX3_2 = SHX3_2.random
  SHX3_2 = SHX3_2()
  if SHX2_2 < SHX3_2 then
    return
  end
  SHX3_2 = SHX5_1
  if SHX3_2 then
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX5_1
    SHX3_2 = SHX3_2 - SHX4_2
    SHX4_2 = 60000
    if SHX3_2 < SHX4_2 then
      return
    end
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.isAimTraining
  SHX3_2 = SHX3_2()
  if not SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.inArena
    SHX3_2 = SHX3_2()
    if not SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.isPlayerInRedZone
      SHX3_2 = SHX3_2()
      if not SHX3_2 then
        goto SHX_LABEL_41
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
  ::SHX_LABEL_41::
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.hasClientPermission
  SHX4_2 = "vigilante.onduty.permission"
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getClientFaction
  SHX3_2 = SHX3_2()
  if SHX3_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.TriggerServerCallback
  SHX4_2 = "c71a5ac32d"
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 ~= SHX3_2 then
    return
  end
  SHX4_2 = GetSelectedPedWeapon
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX4_1
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = GetEntityCoords
  SHX7_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = table
  SHX7_2 = SHX7_2.has
  SHX8_2 = SHX2_1
  SHX9_2 = SHX5_2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  if SHX7_2 then
    return
  end
  SHX7_2 = SHX0_1
  SHX8_2 = SHX6_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = {}
  SHX8_2.priority = "high"
  SHX8_2.title = "Gun shots"
  SHX9_2 = "Report of gun shots heard at "
  SHX10_2 = SHX7_2
  SHX11_2 = ". Possible armed suspect(s) in the area."
  SHX9_2 = SHX9_2 .. SHX10_2 .. SHX11_2
  SHX8_2.description = SHX9_2
  SHX8_2.time = 300
  SHX8_2.job = "police"
  SHX9_2 = {}
  SHX9_2.label = SHX7_2
  SHX10_2 = vector2
  SHX11_2 = SHX6_2.x
  SHX12_2 = SHX6_2.y
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX9_2.coords = SHX10_2
  SHX8_2.location = SHX9_2
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getModelGender
  SHX9_2 = SHX9_2()
  SHX8_2.gender = SHX9_2
  SHX9_2 = {}
  SHX10_2 = {}
  SHX10_2.icon = "fa-solid fa-circle-question"
  SHX10_2.label = "Suspect"
  SHX11_2 = "is armed with a "
  SHX12_2 = SHX3_1
  SHX12_2 = SHX12_2[SHX5_2]
  SHX11_2 = SHX11_2 .. SHX12_2
  SHX10_2.value = SHX11_2
  SHX9_2[1] = SHX10_2
  SHX8_2.fields = SHX9_2
  SHX9_2 = TriggerServerEvent
  SHX10_2 = "a29fe1820a"
  SHX11_2 = SHX8_2
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = GetGameTimer
  SHX9_2 = SHX9_2()
  SHX5_1 = SHX9_2
end
SHX6_1(SHX7_1, SHX8_1)
