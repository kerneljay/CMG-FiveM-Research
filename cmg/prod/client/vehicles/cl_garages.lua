-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1
SHX0_1 = DecorRegister
SHX1_1 = "ac76c9d452"
SHX2_1 = 3
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = DecorRegister
SHX1_1 = "0a6cf607ed"
SHX2_1 = 3
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = DecorRegister
SHX1_1 = "5f7af1c5ce"
SHX2_1 = 3
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = DecorRegister
SHX1_1 = "6939027d97"
SHX2_1 = 3
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = DecorRegister
SHX1_1 = "12da94aa7e"
SHX2_1 = 3
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RequestScriptAudioBank
SHX1_1 = "DLC_ALARM\\ALARMPACK_ONE"
SHX2_1 = false
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_garages"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_lscustoms"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = CMG
SHX2_1 = SHX2_1.loadModule
SHX3_1 = "cfg/cfg_vehicles"
SHX2_1 = SHX2_1(SHX3_1)
SHX3_1 = 0
SHX4_1 = {}
SHX5_1 = 0
SHX6_1 = ""
SHX7_1 = ""
SHX8_1 = 0
SHX9_1 = nil
SHX10_1 = ""
SHX11_1 = nil
SHX12_1 = nil
SHX13_1 = {}
SHX14_1 = 0
SHX15_1 = 0
SHX16_1 = {}
SHX17_1 = false
SHX18_1 = {}
SHX19_1 = {}
SHX20_1 = {}
SHX21_1 = {}
SHX22_1 = {}
SHX23_1 = nil
SHX24_1 = nil
SHX25_1 = vector3
SHX26_1 = 0.0
SHX27_1 = 0.0
SHX28_1 = 0.0
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX26_1 = {}
SHX27_1 = {}
SHX27_1.income = 0
SHX27_1.outcome = 0
SHX28_1 = {}
SHX29_1 = false
SHX30_1 = false
SHX31_1 = {}
SHX32_1 = {}
SHX33_1 = nil
SHX34_1 = {}
SHX35_1 = {}
SHX35_1[0] = ""
SHX35_1[1] = ""
SHX35_1[2] = ""
SHX35_1[3] = ""
SHX35_1[4] = ""
SHX35_1[5] = ""
SHX35_1[6] = "bnr34ffeng"
SHX35_1[7] = "ta028viper"
SHX35_1[8] = "rotary7"
SHX35_1[9] = "lgcy12ferf40"
SHX35_1[10] = "v6audiea839"
SHX35_1[11] = "n55b30t0"
SHX35_1[12] = "fordvoodoo"
SHX35_1[13] = "ta103ninjah2r"
SHX35_1[14] = "gb811s2"
SHX35_1[15] = "gbarcherpro2"
SHX35_1[16] = "gbargento2f"
SHX35_1[17] = "gbargento7f"
SHX35_1[18] = "gbargento7fs"
SHX35_1[19] = "gbbanshees2"
SHX35_1[20] = "gbbisonhf"
SHX35_1[21] = "gbbisonstx"
SHX35_1[22] = "gbbriosof"
SHX35_1[23] = "gbcheetahs"
SHX35_1[24] = "gbclubxr"
SHX35_1[25] = "gbcometcl"
SHX35_1[26] = "gbcomets1t"
SHX35_1[27] = "gbcomets2r"
SHX35_1[28] = "gbcomets2rc"
SHX35_1[29] = "gbcyphergts"
SHX35_1[30] = "gbdominatorgsx"
SHX35_1[31] = "gbechelon"
SHX35_1[32] = "gbeon"
SHX35_1[33] = "gbgresleypol"
SHX35_1[34] = "gbgresleystx"
SHX35_1[35] = "gbharmann"
SHX35_1[36] = "gbhedrakombi"
SHX35_1[37] = "gbkomodagt"
SHX35_1[38] = "gbmilano"
SHX35_1[39] = "gbmogulrs"
SHX35_1[40] = "gbmojave"
SHX35_1[41] = "gbmugello"
SHX35_1[42] = "gbpolargento7f"
SHX35_1[43] = "gbpolbanshees2"
SHX35_1[44] = "gbpolbisonhf"
SHX35_1[45] = "gbpolbisonstx"
SHX35_1[46] = "gbpolclubxr"
SHX35_1[47] = "gbpolcometcl"
SHX35_1[48] = "gbpolcomets2r"
SHX35_1[49] = "gbpoldominatorgsx"
SHX35_1[50] = "gbpolechelon"
SHX35_1[51] = "gbpoleon"
SHX35_1[52] = "gbpolhedra"
SHX35_1[53] = "gbpolprospero"
SHX35_1[54] = "gbpolsentinelgts"
SHX35_1[55] = "gbpolsolace"
SHX35_1[56] = "gbpolstanierle"
SHX35_1[57] = "gbpolstarlight"
SHX35_1[58] = "gbpolsultanrsx"
SHX35_1[59] = "gbpoltahomagt"
SHX35_1[60] = "gbpoltr3s"
SHX35_1[61] = "gbpolturismogt"
SHX35_1[62] = "gbprospero"
SHX35_1[63] = "gbromulus"
SHX35_1[64] = "gbronin"
SHX35_1[65] = "gbrumina"
SHX35_1[66] = "gbsapphire"
SHX35_1[67] = "gbschlagenr"
SHX35_1[68] = "gbschrauber"
SHX35_1[69] = "gbschwartzers"
SHX35_1[70] = "gbsentinelgts"
SHX35_1[71] = "gbsolace"
SHX35_1[72] = "gbsolacev"
SHX35_1[73] = "gbstanierle"
SHX35_1[74] = "gbstarlight"
SHX35_1[75] = "gbsultanrsx"
SHX35_1[76] = "gbtahomagt"
SHX35_1[77] = "gbtaxieon"
SHX35_1[78] = "gbtr3s"
SHX35_1[79] = "gbturismogt"
SHX35_1[80] = "gbturismogts"
SHX35_1[81] = "gbvivant"
SHX36_1 = {}
SHX37_1 = {}
SHX38_1 = nil
SHX39_1 = 0
SHX40_1 = 0
SHX41_1 = {}
SHX42_1 = {}
SHX43_1 = {}
SHX44_1 = {}
SHX45_1 = 10000
SHX46_1 = 1
SHX47_1 = 1
SHX48_1 = 1
SHX49_1 = true
SHX50_1 = nil
SHX51_1 = 0
SHX52_1 = CMG
function SHX53_1()
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
SHX52_1.getLastSpawnedGarageVehicleTime = SHX53_1
SHX52_1 = AddEventHandler
SHX53_1 = "CMG:onClientSpawn"
function SHX54_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "CMG:CMG.refreshPlayerGaragePermissions"
    SHX2_2(SHX3_2)
  end
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "f7c0db0592"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX4_1 = SHX0_2
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "d9cdde6632"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX43_1
    SHX7_2[SHX5_2] = SHX6_2
  end
  SHX1_2 = {}
  SHX44_1 = SHX1_2
  SHX1_2 = pairs
  SHX2_2 = SHX43_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = pairs
    SHX8_2 = SHX6_2.vehicles
    if not SHX8_2 then
      SHX8_2 = {}
    end
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX12_2 = SHX44_1
      SHX12_2[SHX11_2] = SHX5_2
    end
  end
  SHX1_2 = {}
  SHX2_2 = ipairs
  SHX3_2 = SHX41_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.isGangGarage
    if SHX8_2 then
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX1_2
      SHX10_2 = SHX6_2
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX2_2 = #SHX1_2
  SHX3_2 = 1
  SHX4_2 = -1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = table
    SHX6_2 = SHX6_2.remove
    SHX7_2 = SHX41_1
    SHX8_2 = SHX1_2[SHX5_2]
    SHX6_2(SHX7_2, SHX8_2)
  end
  SHX2_2 = pairs
  SHX3_2 = SHX43_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.gangName
    if not SHX8_2 then
      SHX8_2 = "Gang "
      SHX9_2 = SHX6_2
      SHX8_2 = SHX8_2 .. SHX9_2
    end
    SHX9_2 = {}
    SHX10_2 = SHX8_2
    SHX11_2 = " Garage"
    SHX10_2 = SHX10_2 .. SHX11_2
    SHX9_2.type = SHX10_2
    SHX9_2.class = "vehicle"
    SHX10_2 = {}
    SHX9_2.vehicles = SHX10_2
    SHX9_2.isGangGarage = true
    SHX9_2.gangId = SHX6_2
    SHX10_2 = pairs
    SHX11_2 = SHX7_2.vehicles
    if not SHX11_2 then
      SHX11_2 = {}
    end
    SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
    for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
      SHX16_2 = CMG
      SHX16_2 = SHX16_2.getVehicleNameFromId
      SHX17_2 = SHX15_2.vehicleId
      SHX16_2 = SHX16_2(SHX17_2)
      SHX17_2 = table
      SHX17_2 = SHX17_2.insert
      SHX18_2 = SHX9_2.vehicles
      SHX19_2 = {}
      SHX19_2.uuid = SHX14_2
      SHX20_2 = SHX15_2.vehicleId
      SHX19_2.vehicleId = SHX20_2
      SHX20_2 = SHX16_2 or SHX20_2
      if not SHX16_2 then
        SHX20_2 = SHX15_2.vehicleId
      end
      SHX19_2.name = SHX20_2
      SHX20_2 = SHX15_2.fuel
      SHX19_2.fuel = SHX20_2
      SHX17_2(SHX18_2, SHX19_2)
    end
    SHX10_2 = table
    SHX10_2 = SHX10_2.sort
    SHX11_2 = SHX9_2.vehicles
    function SHX12_2(SHX0_3, SHX1_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX2_3, SHX3_3
      SHX2_3 = SHX0_3.name
      SHX3_3 = SHX1_3.name
      SHX2_3 = SHX2_3 < SHX3_3
      return SHX2_3
    end
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = SHX9_2.vehicles
    SHX10_2 = #SHX10_2
    if SHX10_2 > 0 then
      SHX10_2 = table
      SHX10_2 = SHX10_2.insert
      SHX11_2 = SHX41_1
      SHX12_2 = SHX9_2
      SHX10_2(SHX11_2, SHX12_2)
    end
  end
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "758f696f69"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX18_1 = SHX0_2
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "4074c74728"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.unpackTable
  SHX2_2 = SHX0_2
  SHX3_2 = {}
  SHX4_2 = "uuid"
  SHX5_2 = "vehicleName"
  SHX6_2 = "rentedBy"
  SHX7_2 = "hoursLeft"
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX3_2[3] = SHX6_2
  SHX3_2[4] = SHX7_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX19_1 = SHX1_2
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "ffdf8f478c"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = {}
  SHX20_1 = SHX1_2
  SHX1_2 = ipairs
  SHX2_2 = SHX0_2 or SHX2_2
  if not SHX0_2 then
    SHX2_2 = {}
  end
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX20_1
    SHX7_2[SHX6_2] = true
  end
end
SHX52_1(SHX53_1, SHX54_1)
function SHX52_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX20_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = true == SHX1_2
  return SHX1_2
end
SHX53_1 = "~r~This vehicle is scheduled for auction."
SHX54_1 = RegisterNetEvent
SHX55_1 = "710b16ba26"
function SHX56_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX21_1 = SHX0_2
end
SHX54_1(SHX55_1, SHX56_1)
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = notify
  SHX1_2 = "~y~You have outstanding debt on vehicle payment plans. Please ensure you make weekly payments."
  SHX0_2(SHX1_2)
end
SHX55_1 = RegisterNetEvent
SHX56_1 = "6495e4bcfd"
function SHX57_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX22_1 = SHX0_2
  if SHX1_2 then
    SHX2_2 = SetTimeout
    SHX3_2 = 10000
    SHX4_2 = SHX54_1
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SetTimeout
    SHX3_2 = 30000
    SHX4_2 = SHX54_1
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = RegisterNetEvent
SHX56_1 = "47267c0d5c"
function SHX57_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX19_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX0_2.uuid
  SHX2_2 = SHX8_1
  if SHX1_2 == SHX2_2 then
    SHX1_2 = RageUI
    SHX1_2 = SHX1_2.IsAnyMenuOfTypeVisible
    SHX2_2 = "garages"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = RageUI
      SHX1_2 = SHX1_2.Visible
      SHX2_2 = RMenu
      SHX3_2 = SHX2_2
      SHX2_2 = SHX2_2.Get
      SHX4_2 = "garages"
      SHX5_2 = "mainmenu"
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = RegisterNetEvent
SHX56_1 = "52c5e9ab6d"
function SHX57_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX18_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = RegisterNetEvent
SHX56_1 = "f70e91482e"
function SHX57_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX36_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = RegisterNetEvent
SHX56_1 = "72ce12449f"
function SHX57_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX37_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = RegisterNetEvent
SHX56_1 = "66ab2aef34"
function SHX57_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX4_2 = SHX40_1
  if SHX4_2 == SHX0_2 then
    SHX4_2 = {}
    SHX5_2 = SHX1_2
    SHX6_2 = SHX2_2
    SHX7_2 = SHX3_2
    SHX4_2[1] = SHX5_2
    SHX4_2[2] = SHX6_2
    SHX4_2[3] = SHX7_2
    SHX38_1 = SHX4_2
  end
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = RegisterNetEvent
SHX56_1 = "514c94a95c"
function SHX57_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX19_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.uuid
    if SHX7_2 == SHX0_2 then
      SHX7_2 = SHX19_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2.hoursLeft
      if SHX7_2 > 1 then
        SHX7_2 = SHX19_1
        SHX7_2 = SHX7_2[SHX5_2]
        SHX8_2 = SHX19_1
        SHX8_2 = SHX8_2[SHX5_2]
        SHX8_2 = SHX8_2.hoursLeft
        SHX8_2 = SHX8_2 - 1
        SHX7_2.hoursLeft = SHX8_2
      else
        SHX7_2 = SHX19_1
        SHX7_2[SHX5_2] = nil
      end
    end
  end
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = RegisterNetEvent
SHX56_1 = "c05ba37ff7"
function SHX57_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX18_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.uuid
    if SHX7_2 == SHX0_2 then
      SHX7_2 = SHX18_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2.hoursLeft
      if SHX7_2 > 1 then
        SHX7_2 = SHX18_1
        SHX7_2 = SHX7_2[SHX5_2]
        SHX8_2 = SHX18_1
        SHX8_2 = SHX8_2[SHX5_2]
        SHX8_2 = SHX8_2.hoursLeft
        SHX8_2 = SHX8_2 - 1
        SHX7_2.hoursLeft = SHX8_2
      else
        SHX7_2 = SHX18_1
        SHX7_2[SHX5_2] = nil
      end
    end
  end
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = RegisterNetEvent
SHX56_1 = "b4785de6ec"
function SHX57_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX19_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.uuid
    if SHX7_2 == SHX0_2 then
      SHX7_2 = SHX19_1
      SHX7_2[SHX5_2] = nil
    end
  end
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = RegisterNetEvent
SHX56_1 = "f61fc6bcb1"
function SHX57_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX18_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.uuid
    if SHX7_2 == SHX0_2 then
      SHX7_2 = SHX18_1
      SHX7_2[SHX5_2] = nil
    end
  end
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = CMG
function SHX56_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX42_1
  SHX1_2 = SHX1_2[SHX0_2]
  return SHX1_2
end
SHX55_1.getVehicleInfoFromUUID = SHX56_1
SHX55_1 = CMG
function SHX56_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX42_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.vehicleId
    if SHX7_2 == SHX0_2 then
      SHX7_2 = true
      return SHX7_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX55_1.hasLiveVehicleId = SHX56_1
SHX55_1 = CMG
function SHX56_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX42_1
  return SHX0_2
end
SHX55_1.getVehicleInfoLookup = SHX56_1
function SHX55_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if SHX1_2 and "" ~= SHX1_2 then
    SHX2_2 = string
    SHX2_2 = SHX2_2.lower
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = string
    SHX3_2 = SHX3_2.lower
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX2_2 ~= SHX3_2 then
      return SHX1_2
    end
  end
  SHX2_2 = GetHashKey
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = IsModelInCdimage
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = GetLabelText
    SHX4_2 = GetDisplayNameFromVehicleModel
    SHX5_2 = SHX2_2
    SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 and "" ~= SHX3_2 and "NULL" ~= SHX3_2 then
      return SHX3_2
    end
  end
  SHX3_2 = SHX1_2 or SHX3_2
  if nil == SHX1_2 or "" == SHX1_2 or not SHX1_2 then
    SHX3_2 = SHX0_2
  end
  return SHX3_2
end
SHX56_1 = CMG
function SHX57_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX41_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = pairs
    SHX8_2 = SHX6_2.vehicles
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX14_2 = SHX12_2.uuid
      SHX13_2 = SHX31_1
      SHX13_2 = SHX13_2[SHX14_2]
      SHX14_2 = SHX13_2 or SHX14_2
      if not SHX13_2 or "" == SHX13_2 or not SHX13_2 then
        SHX14_2 = SHX55_1
        SHX15_2 = SHX12_2.vehicleId
        SHX16_2 = SHX12_2.name
        SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
      end
      SHX15_2 = tostring
      SHX16_2 = SHX12_2.uuid
      SHX15_2 = SHX15_2(SHX16_2)
      SHX16_2 = {}
      SHX17_2 = SHX6_2.type
      SHX16_2.garage = SHX17_2
      SHX16_2.name = SHX14_2
      SHX0_2[SHX15_2] = SHX16_2
    end
  end
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX26_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = pairs
    SHX9_2 = SHX7_2
    SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
    for SHX12_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
      SHX13_2 = tostring
      SHX14_2 = SHX12_2
      SHX13_2 = SHX13_2(SHX14_2)
      SHX1_2[SHX13_2] = SHX6_2
    end
  end
  SHX2_2 = {}
  SHX2_2.byUuid = SHX0_2
  SHX2_2.folderOf = SHX1_2
  return SHX2_2
end
SHX56_1.getTradeVehicleGrouping = SHX57_1
function SHX56_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX42_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = string
    SHX7_2 = SHX7_2.lower
    SHX8_2 = SHX6_2.vehicleId
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = string
    SHX8_2 = SHX8_2.lower
    SHX9_2 = SHX0_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX7_2 == SHX8_2 then
      return SHX5_2
    end
  end
  SHX1_2 = nil
  return SHX1_2
end
function SHX57_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX2_2 = pairs
  SHX3_2 = SHX0_1.garages
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = pairs
    SHX9_2 = SHX7_2
    SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
    for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
      SHX14_2 = string
      SHX14_2 = SHX14_2.lower
      SHX15_2 = SHX12_2
      SHX14_2 = SHX14_2(SHX15_2)
      SHX15_2 = string
      SHX15_2 = SHX15_2.lower
      SHX16_2 = SHX1_2.vehicleId
      SHX15_2 = SHX15_2(SHX16_2)
      if SHX14_2 == SHX15_2 then
        SHX14_2 = nil
        SHX15_2 = pairs
        SHX16_2 = SHX41_1
        SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX15_2(SHX16_2)
        for SHX19_2, SHX20_2 in SHX15_2, SHX16_2, SHX17_2, SHX18_2 do
          SHX21_2 = SHX20_2.type
          if SHX21_2 == SHX6_2 then
            SHX14_2 = SHX20_2
            break
          end
        end
        if not SHX14_2 then
          SHX15_2 = {}
          SHX15_2.type = SHX6_2
          SHX16_2 = SHX7_2._config
          SHX16_2 = SHX16_2.type
          SHX15_2.class = SHX16_2
          SHX16_2 = {}
          SHX15_2.vehicles = SHX16_2
          SHX14_2 = SHX15_2
          SHX15_2 = table
          SHX15_2 = SHX15_2.insert
          SHX16_2 = SHX41_1
          SHX17_2 = SHX14_2
          SHX15_2(SHX16_2, SHX17_2)
        end
        SHX15_2 = {}
        SHX15_2.uuid = SHX0_2
        SHX16_2 = SHX1_2.vehicleId
        SHX15_2.vehicleId = SHX16_2
        SHX16_2 = SHX13_2.name
        SHX15_2.name = SHX16_2
        SHX16_2 = SHX1_2.fuel
        SHX15_2.fuel = SHX16_2
        SHX16_2 = table
        SHX16_2 = SHX16_2.insert
        SHX17_2 = SHX14_2.vehicles
        SHX18_2 = SHX15_2
        SHX16_2(SHX17_2, SHX18_2)
        SHX16_2 = SHX42_1
        SHX16_2[SHX0_2] = SHX15_2
        break
      end
    end
  end
end
SHX58_1 = RegisterNetEvent
SHX59_1 = "d7e6bd6cc0"
function SHX60_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = {}
  SHX42_1 = SHX1_2
  SHX1_2 = {}
  SHX41_1 = SHX1_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX57_1
    SHX8_2 = SHX5_2
    SHX9_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX1_2 = table
  SHX1_2 = SHX1_2.sort
  SHX2_2 = SHX41_1
  function SHX3_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.type
    SHX3_3 = SHX1_3.type
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = pairs
  SHX2_2 = SHX41_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.sort
    SHX8_2 = SHX6_2.vehicles
    function SHX9_2(SHX0_3, SHX1_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX2_3, SHX3_3
      SHX2_3 = SHX0_3.name
      SHX3_3 = SHX1_3.name
      SHX2_3 = SHX2_3 < SHX3_3
      return SHX2_3
    end
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getCustomFolders
  SHX1_2 = SHX1_2()
  SHX2_2 = GetResourceKvpInt
  SHX3_2 = "cmg_garagefolders_version"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = table
  SHX3_2 = SHX3_2.count
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 > 0 then
    if 0 == SHX2_2 then
      SHX3_2 = table
      SHX3_2 = SHX3_2.copy
      SHX4_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX4_2 = pairs
      SHX5_2 = SHX3_2
      SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
      for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
        SHX10_2 = {}
        SHX11_2 = pairs
        SHX12_2 = SHX9_2
        SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
        for SHX15_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
          SHX16_2 = SHX56_1
          SHX17_2 = SHX15_2
          SHX16_2 = SHX16_2(SHX17_2)
          if SHX16_2 then
            SHX10_2[SHX16_2] = true
          end
        end
        SHX3_2[SHX8_2] = SHX10_2
      end
      SHX1_2 = SHX3_2
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.saveCustomFolders
      SHX5_2 = 1
      SHX4_2(SHX5_2)
    end
    if 1 == SHX2_2 then
      SHX3_2 = table
      SHX3_2 = SHX3_2.copy
      SHX4_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX4_2 = pairs
      SHX5_2 = SHX3_2
      SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
      for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
        SHX10_2 = {}
        SHX11_2 = 0
        SHX12_2 = pairs
        SHX13_2 = SHX9_2
        SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2)
        for SHX16_2 in SHX12_2, SHX13_2, SHX14_2, SHX15_2 do
          SHX10_2[SHX16_2] = SHX11_2
          SHX11_2 = SHX11_2 + 1
        end
        SHX3_2[SHX8_2] = SHX10_2
      end
      SHX1_2 = SHX3_2
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.saveCustomFolders
      SHX5_2 = 2
      SHX4_2(SHX5_2)
    end
  end
  SHX26_1 = SHX1_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getGarageSettings
  SHX3_2 = SHX3_2()
  SHX28_1 = SHX3_2
end
SHX58_1(SHX59_1, SHX60_1)
SHX58_1 = RegisterNetEvent
SHX59_1 = "5ab691b0b2"
function SHX60_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = SHX42_1
  SHX1_2[SHX0_2] = nil
  SHX1_2 = pairs
  SHX2_2 = SHX41_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = false
    SHX8_2 = pairs
    SHX9_2 = SHX6_2.vehicles
    SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
    for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
      SHX14_2 = SHX13_2.uuid
      if SHX14_2 == SHX0_2 then
        SHX7_2 = true
        SHX14_2 = table
        SHX14_2 = SHX14_2.remove
        SHX15_2 = SHX6_2.vehicles
        SHX16_2 = SHX12_2
        SHX14_2(SHX15_2, SHX16_2)
        break
      end
    end
    if SHX7_2 then
      SHX8_2 = SHX6_2.vehicles
      SHX8_2 = #SHX8_2
      if 0 == SHX8_2 then
        SHX8_2 = table
        SHX8_2 = SHX8_2.remove
        SHX9_2 = SHX41_1
        SHX10_2 = SHX5_2
        SHX8_2(SHX9_2, SHX10_2)
        break
      end
    end
  end
end
SHX58_1(SHX59_1, SHX60_1)
SHX58_1 = RegisterNetEvent
SHX59_1 = "e3d9da6250"
function SHX60_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX3_2 = SHX57_1
  SHX4_2 = SHX0_2
  SHX5_2 = {}
  SHX5_2.vehicleId = SHX1_2
  SHX5_2.fuel = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = pairs
  SHX4_2 = SHX41_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = false
    SHX10_2 = pairs
    SHX11_2 = SHX8_2.vehicles
    SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
    for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
      SHX16_2 = SHX15_2.uuid
      if SHX16_2 == SHX0_2 then
        SHX9_2 = true
        SHX16_2 = table
        SHX16_2 = SHX16_2.sort
        SHX17_2 = SHX8_2.vehicles
        function SHX18_2(SHX0_3, SHX1_3)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX2_3, SHX3_3
          SHX2_3 = SHX0_3.name
          SHX3_3 = SHX1_3.name
          SHX2_3 = SHX2_3 < SHX3_3
          return SHX2_3
        end
        SHX16_2(SHX17_2, SHX18_2)
        break
      end
    end
    if SHX9_2 then
      SHX10_2 = table
      SHX10_2 = SHX10_2.sort
      SHX11_2 = SHX41_1
      function SHX12_2(SHX0_3, SHX1_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX2_3, SHX3_3
        SHX2_3 = SHX0_3.type
        SHX3_3 = SHX1_3.type
        SHX2_3 = SHX2_3 < SHX3_3
        return SHX2_3
      end
      SHX10_2(SHX11_2, SHX12_2)
      break
    end
  end
end
SHX58_1(SHX59_1, SHX60_1)
function SHX58_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX4_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = true
    return SHX1_2
  else
    SHX1_2 = false
    return SHX1_2
  end
end
SHX59_1 = CMG
SHX59_1 = SHX59_1.RegisterClientCallback
SHX60_1 = "90da0d8135"
function SHX61_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.copy
  SHX1_2 = SHX41_1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX58_1
    SHX8_2 = SHX6_2.type
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = pairs
      SHX8_2 = SHX6_2.vehicles
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
      for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
        SHX14_2 = SHX12_2.uuid
        SHX13_2 = SHX31_1
        SHX13_2 = SHX13_2[SHX14_2]
        if SHX13_2 then
          SHX14_2 = SHX12_2.uuid
          SHX13_2 = SHX31_1
          SHX13_2 = SHX13_2[SHX14_2]
          SHX12_2.name = SHX13_2
        end
      end
    else
      SHX7_2 = {}
      SHX6_2.vehicles = SHX7_2
    end
  end
  return SHX0_2
end
SHX59_1(SHX60_1, SHX61_1)
SHX59_1 = CMG
SHX59_1 = SHX59_1.RegisterClientCallback
SHX60_1 = "c1d4a26d0d"
function SHX61_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetInteriorFromEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 and 0 ~= SHX1_2 then
    SHX2_2 = true
    return SHX2_2
  else
    SHX2_2 = false
    return SHX2_2
  end
end
SHX59_1(SHX60_1, SHX61_1)
function SHX59_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX58_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = RageUI
    SHX1_2 = SHX1_2.Visible
    SHX2_2 = RMenu
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.Get
    SHX4_2 = "garages"
    SHX5_2 = "mainmenu"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  end
end
function SHX60_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "garages"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX61_1 = {}
SHX62_1 = {}
SHX63_1 = 0
SHX64_1 = CMG
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX63_1
  SHX0_2 = SHX0_2 - SHX1_2
  SHX1_2 = 1000
  SHX0_2 = SHX0_2 < SHX1_2
  return SHX0_2
end
SHX64_1.isInsideGarageArea = SHX65_1
function SHX64_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX0_2.garageId
  SHX1_2 = SHX61_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    return
  end
  SHX1_2 = PlaySound
  SHX2_2 = -1
  SHX3_2 = "Hit"
  SHX4_2 = "RESPAWN_SOUNDSET"
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2 = SHX0_1.garages
  SHX2_2 = SHX0_2.garageType
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2._config
  SHX1_2 = SHX1_2.type
  SHX10_1 = SHX1_2
  SHX1_2 = SHX59_1
  SHX2_2 = SHX0_2.garageType
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.position
  SHX25_1 = SHX1_2
  SHX2_2 = SHX0_2.garageId
  SHX1_2 = SHX61_1
  SHX1_2[SHX2_2] = true
end
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX0_2.garageId
  SHX1_2 = SHX61_1
  SHX1_2 = SHX1_2[SHX2_2]
  if not SHX1_2 then
    return
  end
  SHX1_2 = PlaySound
  SHX2_2 = -1
  SHX3_2 = "Hit"
  SHX4_2 = "RESPAWN_SOUNDSET"
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2 = SHX60_1
  SHX1_2()
  SHX1_2 = table
  SHX1_2 = SHX1_2.clear
  SHX2_2 = SHX62_1
  SHX1_2(SHX2_2)
  SHX2_2 = SHX0_2.garageId
  SHX1_2 = SHX61_1
  SHX1_2[SHX2_2] = false
  SHX1_2 = nil
  SHX11_1 = SHX1_2
  SHX1_2 = nil
  SHX12_1 = SHX1_2
end
function SHX66_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = NetworkHasControlOfEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = NetworkGetNetworkIdFromEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "79ec855d76"
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
function SHX67_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = SHX0_2.distance
  SHX2_2 = 1.5
  if SHX1_2 < SHX2_2 then
    SHX2_2 = SHX0_2.garageId
    SHX1_2 = SHX61_1
    SHX1_2 = SHX1_2[SHX2_2]
    if not SHX1_2 then
      SHX1_2 = SHX64_1
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
    end
  else
    SHX2_2 = SHX0_2.garageId
    SHX1_2 = SHX61_1
    SHX1_2 = SHX1_2[SHX2_2]
    if SHX1_2 then
      SHX1_2 = SHX65_1
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = SHX0_2.type
  if "vehicle" == SHX1_2 then
    SHX1_2 = SHX0_2.disableDelete
    if not SHX1_2 then
      goto SHX_LABEL_29
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
  ::SHX_LABEL_29::
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX63_1
  SHX2_2 = SHX1_2 - SHX2_2
  SHX3_2 = 1000
  if SHX2_2 < SHX3_2 then
    return
  end
  SHX2_2 = pairs
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getAllVehicles
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX3_2()
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = GetEntityCoords
    SHX9_2 = SHX7_2
    SHX10_2 = true
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX9_2 = SHX0_2.position
    SHX8_2 = SHX8_2 - SHX9_2
    SHX8_2 = #SHX8_2
    if SHX8_2 < 5.0 then
      SHX8_2 = NetworkGetEntityIsNetworked
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        SHX8_2 = SHX62_1
        SHX8_2 = SHX8_2[SHX7_2]
        if not SHX8_2 then
          SHX8_2 = 0
        end
        SHX8_2 = SHX8_2 + 1
        SHX9_2 = GetPedInVehicleSeat
        SHX10_2 = SHX7_2
        SHX11_2 = -1
        SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
        if 0 == SHX9_2 then
          SHX9_2 = 2
          if SHX9_2 then
            goto SHX_LABEL_76
          end
        end
        SHX9_2 = 10
        -- [FIX IF ERROR] Move ::SHX_LABEL_76:: outside nested blocks until all 'goto SHX_LABEL_76' can see it
        ::SHX_LABEL_76::
        if SHX8_2 > SHX9_2 then
          SHX10_2 = SHX66_1
          SHX11_2 = SHX7_2
          SHX10_2(SHX11_2)
        end
        SHX10_2 = SHX62_1
        SHX10_2[SHX7_2] = SHX8_2
      end
    end
  end
  SHX63_1 = SHX1_2
end
SHX68_1 = CMG
function SHX69_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX62_1
  SHX1_2[SHX0_2] = nil
end
SHX68_1.clearBlockingVehicleCounter = SHX69_1
SHX68_1 = CMG
function SHX69_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX4_2 = SHX0_1.garages
  SHX4_2 = SHX4_2[SHX0_2]
  SHX5_2 = assert
  SHX6_2 = SHX4_2
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = "Garage type %s is not defined in garages.lua config"
  SHX9_2 = SHX0_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX5_2 = SHX4_2._config
  SHX6_2 = assert
  SHX7_2 = SHX5_2
  SHX8_2 = string
  SHX8_2 = SHX8_2.format
  SHX9_2 = "Garage type %s does not have a config entry"
  SHX10_2 = SHX0_2
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.generateUUID
  SHX7_2 = "garages"
  SHX8_2 = 5
  SHX9_2 = "alphanumeric"
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = {}
  SHX8_2 = SHX34_1
  SHX8_2[SHX6_2] = SHX7_2
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.createArea
  SHX9_2 = "garage_"
  SHX10_2 = SHX6_2
  SHX9_2 = SHX9_2 .. SHX10_2
  SHX10_2 = SHX1_2
  SHX11_2 = 10.0
  SHX12_2 = 6
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX14_2 = SHX65_1
  SHX15_2 = SHX67_1
  SHX16_2 = {}
  SHX16_2.garageType = SHX0_2
  SHX16_2.garageId = SHX6_2
  SHX16_2.position = SHX1_2
  SHX17_2 = SHX5_2.type
  SHX16_2.type = SHX17_2
  SHX16_2.disableDelete = SHX3_2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX7_2.areaId = SHX8_2
  SHX8_2 = tCMG
  SHX8_2 = SHX8_2.addPropMarker
  SHX9_2 = "bzzz_marker_garage_green_anim"
  SHX10_2 = SHX1_2.x
  SHX11_2 = SHX1_2.y
  SHX12_2 = SHX1_2.z
  SHX13_2 = 50.0
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX7_2.marker = SHX8_2
  if SHX2_2 then
    SHX8_2 = tCMG
    SHX8_2 = SHX8_2.addBlip
    SHX9_2 = SHX1_2.x
    SHX10_2 = SHX1_2.y
    SHX11_2 = SHX1_2.z
    SHX12_2 = SHX5_2.blipid
    SHX13_2 = SHX5_2.blipcolor
    SHX14_2 = SHX0_2
    SHX15_2 = 0.7
    SHX16_2 = false
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX7_2.blip = SHX8_2
  end
  return SHX6_2
end
SHX68_1.createGarage = SHX69_1
SHX68_1 = CMG
function SHX69_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX34_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.removeArea
  SHX3_2 = SHX1_2.areaId
  SHX2_2(SHX3_2)
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.removeMarker
  SHX3_2 = SHX1_2.marker
  SHX2_2(SHX3_2)
  SHX2_2 = SHX1_2.blip
  if SHX2_2 then
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.removeBlip
    SHX3_2 = SHX1_2.blip
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX34_1
  SHX2_2[SHX0_2] = nil
end
SHX68_1.deleteGarage = SHX69_1
SHX68_1 = CreateThread
function SHX69_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.garages
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = pairs
    SHX7_2 = SHX5_2
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      if "_config" == SHX10_2 then
        SHX11_2 = pairs
        SHX12_2 = SHX0_1.garageInstances
        SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
        for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
          SHX17_2 = table
          SHX17_2 = SHX17_2.unpack
          SHX18_2 = SHX16_2
          SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX17_2(SHX18_2)
          if SHX4_2 == SHX17_2 then
            SHX21_2 = CMG
            SHX21_2 = SHX21_2.createGarage
            SHX22_2 = SHX4_2
            SHX23_2 = SHX18_2
            SHX24_2 = SHX19_2
            SHX25_2 = SHX20_2
            SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2)
          end
        end
      end
    end
  end
end
SHX68_1(SHX69_1)
SHX68_1 = 0
SHX69_1 = 0.0
function SHX70_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = DeleteVehicle
  SHX2_2 = GetVehiclePedIsIn
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = false
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = GetHashKey
    SHX1_3 = SHX0_2
    SHX0_3 = SHX0_3(SHX1_3)
    SHX1_3 = RequestModel
    SHX2_3 = SHX0_3
    SHX1_3(SHX2_3)
    SHX1_3 = 0
    while true do
      SHX2_3 = HasModelLoaded
      SHX3_3 = SHX0_3
      SHX2_3 = SHX2_3(SHX3_3)
      if SHX2_3 then
        break
      end
      SHX2_3 = 200
      if not (SHX1_3 < SHX2_3) then
        break
      end
      SHX2_3 = drawNativeText
      SHX3_3 = "~r~Downloading vehicle model"
      SHX2_3(SHX3_3)
      SHX2_3 = Wait
      SHX3_3 = 0
      SHX2_3(SHX3_3)
      SHX1_3 = SHX1_3 + 1
    end
    SHX2_3 = HasModelLoaded
    SHX3_3 = SHX0_3
    SHX2_3 = SHX2_3(SHX3_3)
    if SHX2_3 then
      SHX2_3 = CreateVehicle
      SHX3_3 = SHX0_3
      SHX4_3 = SHX25_1.x
      SHX5_3 = SHX25_1.y
      SHX6_3 = SHX25_1.z
      SHX7_3 = SHX69_1
      SHX8_3 = false
      SHX9_3 = false
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.initLocalVehicle
      SHX4_3 = SHX2_3
      SHX3_3(SHX4_3)
      SHX3_3 = SetEntityAsMissionEntity
      SHX4_3 = SHX2_3
      SHX5_3 = false
      SHX6_3 = false
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = FreezeEntityPosition
      SHX4_3 = SHX2_3
      SHX5_3 = true
      SHX3_3(SHX4_3, SHX5_3)
      SHX3_3 = SetEntityInvincible
      SHX4_3 = SHX2_3
      SHX5_3 = true
      SHX3_3(SHX4_3, SHX5_3)
      SHX3_3 = SetVehicleDoorsLocked
      SHX4_3 = SHX2_3
      SHX5_3 = 4
      SHX3_3(SHX4_3, SHX5_3)
      SHX3_3 = SetModelAsNoLongerNeeded
      SHX4_3 = SHX0_3
      SHX3_3(SHX4_3)
      SHX3_3 = SHX68_1
      if 0 ~= SHX3_3 then
        SHX3_3 = DestroyCam
        SHX4_3 = SHX68_1
        SHX5_3 = false
        SHX3_3(SHX4_3, SHX5_3)
        SHX3_3 = 0
        SHX68_1 = SHX3_3
      end
      SHX3_3 = SetEntityAlpha
      SHX4_3 = CMG
      SHX4_3 = SHX4_3.getPlayerPed
      SHX4_3 = SHX4_3()
      SHX5_3 = 0
      SHX6_3 = false
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = FreezeEntityPosition
      SHX4_3 = CMG
      SHX4_3 = SHX4_3.getPlayerPed
      SHX4_3 = SHX4_3()
      SHX5_3 = true
      SHX3_3(SHX4_3, SHX5_3)
      SHX3_3 = SetEntityCollision
      SHX4_3 = CMG
      SHX4_3 = SHX4_3.getPlayerPed
      SHX4_3 = SHX4_3()
      SHX5_3 = false
      SHX6_3 = false
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = SetEntityCollision
      SHX4_3 = SHX2_3
      SHX5_3 = false
      SHX6_3 = false
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = GetEntityCoords
      SHX4_3 = CMG
      SHX4_3 = SHX4_3.getPlayerPed
      SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3 = SHX4_3()
      SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX4_3 = GetEntityRotation
      SHX5_3 = CMG
      SHX5_3 = SHX5_3.getPlayerPed
      SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3 = SHX5_3()
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX5_3 = CreateCam
      SHX6_3 = "DEFAULT_SCRIPTED_CAMERA"
      SHX7_3 = true
      SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
      SHX6_3 = vector3
      SHX7_3 = SHX3_3.x
      SHX8_3 = SHX3_3.y
      SHX9_3 = SHX3_3.z
      SHX9_3 = SHX9_3 + 2.0
      SHX6_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      SHX7_3 = GetEntityForwardVector
      SHX8_3 = CMG
      SHX8_3 = SHX8_3.getPlayerPed
      SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3 = SHX8_3()
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX7_3 = SHX7_3 * 5.0
      SHX6_3 = SHX6_3 - SHX7_3
      SHX7_3 = SetCamActive
      SHX8_3 = SHX5_3
      SHX9_3 = true
      SHX7_3(SHX8_3, SHX9_3)
      SHX7_3 = RenderScriptCams
      SHX8_3 = true
      SHX9_3 = true
      SHX10_3 = 500
      SHX11_3 = true
      SHX12_3 = false
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX7_3 = SetCamCoord
      SHX8_3 = SHX5_3
      SHX9_3 = SHX6_3.x
      SHX10_3 = SHX6_3.y
      SHX11_3 = SHX6_3.z
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX7_3 = SetCamRot
      SHX8_3 = SHX5_3
      SHX9_3 = -20.0
      SHX10_3 = SHX4_3.y
      SHX11_3 = SHX4_3.z
      SHX12_3 = 2
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX68_1 = SHX5_3
      SHX7_3 = Citizen
      SHX7_3 = SHX7_3.CreateThread
      function SHX8_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4, SHX2_4
        while true do
          SHX0_4 = DoesEntityExist
          SHX1_4 = SHX2_3
          SHX0_4 = SHX0_4(SHX1_4)
          if not SHX0_4 then
            break
          end
          SHX0_4 = Citizen
          SHX0_4 = SHX0_4.Wait
          SHX1_4 = 25
          SHX0_4(SHX1_4)
          SHX0_4 = SHX69_1
          SHX0_4 = SHX0_4 + 1
          SHX0_4 = SHX0_4 % 360
          SHX69_1 = SHX0_4
          SHX0_4 = SetEntityHeading
          SHX1_4 = SHX2_3
          SHX2_4 = SHX69_1
          SHX0_4(SHX1_4, SHX2_4)
        end
      end
      SHX7_3(SHX8_3)
      SHX7_3 = false
      SHX29_1 = SHX7_3
      SHX7_3 = true
      SHX17_1 = SHX7_3
      SHX14_1 = SHX2_3
    else
      SHX2_3 = tCMG
      SHX2_3 = SHX2_3.notify
      SHX3_3 = "~r~Failed to load vehicle."
      SHX2_3(SHX3_3)
      SHX2_3 = -1
      return SHX2_3
    end
  end
  SHX1_2(SHX2_2)
end
SHX71_1 = CMG
function SHX72_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX17_1
  return SHX0_2
end
SHX71_1.isPreviewingVehicle = SHX72_1
function SHX71_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = AddBlipForEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SetBlipSprite
  SHX3_2 = SHX1_2
  SHX4_2 = 56
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipDisplay
  SHX3_2 = SHX1_2
  SHX4_2 = 4
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipScale
  SHX3_2 = SHX1_2
  SHX4_2 = 1.0
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipColour
  SHX3_2 = SHX1_2
  SHX4_2 = 2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipAsShortRange
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX72_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = GetGameTimer
    SHX0_3 = SHX0_3()
    while true do
      SHX1_3 = NetworkGetEntityIsNetworked
      SHX2_3 = SHX1_2
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        SHX1_3 = NetworkGetNetworkIdFromEntity
        SHX2_3 = SHX1_2
        SHX1_3 = SHX1_3(SHX2_3)
        if 0 ~= SHX1_3 then
          break
        end
      end
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX1_3 = SHX1_3 - SHX0_3
      SHX2_3 = 10000
      if SHX1_3 > SHX2_3 then
        break
      end
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
    SHX1_3 = NetworkGetNetworkIdFromEntity
    SHX2_3 = SHX1_2
    SHX1_3 = SHX1_3(SHX2_3)
    if 0 ~= SHX1_3 then
      SHX2_3 = TriggerServerEvent
      SHX3_3 = "bf7c06a813"
      SHX4_3 = SHX0_2
      SHX5_3 = SHX1_3
      SHX6_3 = SHX2_2
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX3_2(SHX4_2)
end
function SHX73_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getAllVehicles
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX2_2()
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = DecorGetInt
    SHX8_2 = SHX6_2
    SHX9_2 = "ac76c9d452"
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = DecorGetInt
    SHX9_2 = SHX6_2
    SHX10_2 = "0a6cf607ed"
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX7_2 > 0 then
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.getClientUserId
      SHX9_2 = SHX9_2()
      if SHX7_2 == SHX9_2 and SHX8_2 > 0 then
        SHX9_2 = CMG
        SHX9_2 = SHX9_2.getVehicleIdFromModel
        SHX10_2 = GetEntityModel
        SHX11_2 = SHX6_2
        SHX10_2, SHX11_2, SHX12_2 = SHX10_2(SHX11_2)
        SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
        if SHX9_2 then
          SHX10_2 = {}
          SHX11_2 = SHX9_2
          SHX12_2 = SHX6_2
          SHX10_2[1] = SHX11_2
          SHX10_2[2] = SHX12_2
          SHX0_2[SHX8_2] = SHX10_2
        end
      end
    end
  end
  return SHX0_2
end
function SHX74_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = true
  SHX2_2 = SetTimeout
  SHX3_2 = 5000
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX1_2 = SHX0_3
  end
  SHX2_2(SHX3_2, SHX4_2)
  while SHX1_2 do
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = SetLocalPlayerAsGhost
      SHX3_2 = true
      SHX2_2(SHX3_2)
      SHX2_2 = SetNetworkVehicleAsGhost
      SHX3_2 = SHX0_2
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = SetEntityAlpha
      SHX3_2 = SHX0_2
      SHX4_2 = 220
      SHX5_2 = false
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SetLocalPlayerAsGhost
  SHX3_2 = false
  SHX2_2(SHX3_2)
  SHX2_2 = SetNetworkVehicleAsGhost
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetEntityAlpha
  SHX3_2 = SHX0_2
  SHX4_2 = 255
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = ResetEntityAlpha
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
end
function SHX75_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX42_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    return SHX1_2
  end
  SHX2_2 = tonumber
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = SHX0_2
  end
  SHX3_2 = SHX42_1
  SHX1_2 = SHX3_2[SHX2_2]
  if SHX1_2 then
    return SHX1_2
  end
  SHX3_2 = SHX44_1
  SHX3_2 = SHX3_2[SHX0_2]
  if not SHX3_2 then
    SHX3_2 = SHX44_1
    SHX3_2 = SHX3_2[SHX2_2]
  end
  if not SHX3_2 then
    SHX4_2 = nil
    return SHX4_2
  end
  SHX4_2 = SHX43_1
  SHX4_2 = SHX4_2[SHX3_2]
  if SHX4_2 then
    SHX5_2 = SHX4_2.vehicles
    if SHX5_2 then
      goto SHX_LABEL_36
    end
  end
  SHX5_2 = nil
  return SHX5_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_36:: outside nested blocks until all 'goto SHX_LABEL_36' can see it
  ::SHX_LABEL_36::
  SHX5_2 = SHX4_2.vehicles
  SHX5_2 = SHX5_2[SHX0_2]
  if not SHX5_2 then
    SHX5_2 = SHX4_2.vehicles
    SHX5_2 = SHX5_2[SHX2_2]
  end
  if not SHX5_2 then
    SHX6_2 = nil
    return SHX6_2
  end
  SHX6_2 = {}
  SHX6_2.uuid = SHX0_2
  SHX7_2 = SHX5_2.vehicleId
  SHX6_2.vehicleId = SHX7_2
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getVehicleNameFromId
  SHX8_2 = SHX5_2.vehicleId
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    SHX7_2 = SHX5_2.vehicleId
  end
  SHX6_2.name = SHX7_2
  SHX7_2 = SHX5_2.fuel
  SHX6_2.fuel = SHX7_2
  return SHX6_2
end
function SHX76_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" == SHX2_2 then
    SHX2_2 = SHX1_2.vehicle
    if SHX2_2 then
      goto SHX_LABEL_11
    end
  end
  SHX2_2 = nil
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX2_2 = SHX1_2.vehicle
  SHX3_2 = type
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "string" == SHX3_2 then
    SHX3_2 = string
    SHX3_2 = SHX3_2.lower
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX3_2
  end
  SHX3_2 = {}
  SHX3_2.uuid = SHX0_2
  SHX3_2.vehicleId = SHX2_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getVehicleNameFromId
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = SHX2_2
  end
  SHX3_2.name = SHX4_2
  SHX4_2 = tonumber
  SHX5_2 = SHX1_2.fuel
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = 0
  end
  SHX3_2.fuel = SHX4_2
  return SHX3_2
end
SHX77_1 = RegisterNetEvent
SHX78_1 = "0cd4f2f872"
function SHX79_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2
  SHX7_2 = true == SHX6_2
  SHX8_2 = SHX60_1
  SHX8_2()
  SHX8_2 = GetVehiclePedIsIn
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2 = SHX9_2()
  SHX10_2 = false
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = SHX5_1
  if SHX8_2 == SHX9_2 then
    SHX8_2 = DeleteEntity
    SHX9_2 = SHX5_1
    SHX8_2(SHX9_2)
  end
  SHX8_2 = tCMG
  SHX8_2 = SHX8_2.notify
  SHX9_2 = "~g~Loading vehicle, please wait."
  SHX8_2(SHX9_2)
  SHX8_2 = SHX75_1
  SHX9_2 = SHX0_2
  SHX8_2 = SHX8_2(SHX9_2)
  if not SHX8_2 then
    SHX9_2 = SHX76_1
    SHX10_2 = SHX0_2
    SHX11_2 = SHX1_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX8_2 = SHX9_2
  end
  if not SHX8_2 then
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.notify
    SHX10_2 = "~r~Could not load vehicle data for spawn."
    SHX9_2(SHX10_2)
    return
  end
  SHX9_2 = SHX8_2.vehicleId
  SHX10_2 = SHX73_1
  SHX10_2 = SHX10_2()
  SHX10_2 = SHX10_2[SHX0_2]
  if not SHX10_2 then
    SHX10_2 = SHX73_1
    SHX10_2 = SHX10_2()
    SHX11_2 = tonumber
    SHX12_2 = SHX0_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX10_2 = SHX10_2[SHX11_2]
  end
  if nil ~= SHX10_2 then
    SHX11_2 = DoesEntityExist
    SHX12_2 = SHX10_2[2]
    SHX11_2 = SHX11_2(SHX12_2)
    if SHX11_2 then
      goto SHX_LABEL_379
    end
  end
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.loadModel
  SHX12_2 = SHX9_2
  SHX11_2 = SHX11_2(SHX12_2)
  if nil == SHX11_2 then
    SHX12_2 = tCMG
    SHX12_2 = SHX12_2.notify
    SHX13_2 = "~r~Vehicle does not exist, if you believe this is an error contact a Car Dev on discord."
    SHX12_2(SHX13_2)
    return
  end
  SHX12_2 = GetGameTimer
  SHX12_2 = SHX12_2()
  SHX3_1 = SHX12_2
  SHX12_2 = nil
  if SHX3_2 then
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.getPosition
    SHX13_2 = SHX13_2()
    SHX14_2 = vector3
    SHX15_2 = 0.0
    SHX16_2 = 0.0
    SHX17_2 = 0.0
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
    SHX15_2 = GetNthClosestVehicleNode
    SHX16_2 = SHX13_2.x
    SHX17_2 = SHX13_2.y
    SHX18_2 = SHX13_2.z
    SHX19_2 = 0
    SHX20_2 = SHX14_2
    SHX21_2 = 8
    SHX22_2 = 8
    SHX23_2 = 8
    SHX15_2, SHX16_2, SHX17_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    SHX18_2 = GetNthClosestVehicleNode
    SHX19_2 = SHX13_2.x
    SHX20_2 = SHX13_2.y
    SHX21_2 = SHX13_2.z
    SHX22_2 = 15
    SHX18_2, SHX19_2, SHX20_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX21_2 = GetPointOnRoadSide
    SHX22_2 = SHX13_2.x
    SHX23_2 = SHX13_2.y
    SHX24_2 = SHX13_2.z
    SHX25_2 = 0.0
    SHX21_2, SHX22_2, SHX23_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX24_2 = tostring
    SHX25_2 = SHX22_2
    SHX24_2 = SHX24_2(SHX25_2)
    if "vector3(0, 0, 0)" == SHX24_2 then
      goto SHX_LABEL_332
    end
    SHX24_2 = tostring
    SHX25_2 = SHX19_2
    SHX24_2 = SHX24_2(SHX25_2)
    if "vector3(0, 0, 0)" == SHX24_2 then
      goto SHX_LABEL_332
    end
    SHX24_2 = CMG
    SHX24_2 = SHX24_2.requestEntitySpawn
    SHX25_2 = "garages_valet"
    SHX26_2 = SHX0_2
    SHX27_2 = SHX19_2
    SHX24_2(SHX25_2, SHX26_2, SHX27_2)
    SHX24_2 = CMG
    SHX24_2 = SHX24_2.spawnVehicle
    SHX25_2 = SHX11_2
    SHX26_2 = SHX19_2.x
    SHX27_2 = SHX19_2.y
    SHX28_2 = SHX19_2.z
    SHX28_2 = SHX28_2 + 0.5
    SHX29_2 = SHX17_2 or SHX29_2
    if not SHX17_2 then
      SHX29_2 = 0.0
    end
    SHX30_2 = false
    SHX31_2 = true
    SHX32_2 = true
    SHX24_2 = SHX24_2(SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
    SHX12_2 = SHX24_2
    SHX24_2 = TriggerServerEvent
    SHX25_2 = "1e0bbaf6cd"
    SHX26_2 = SHX9_2
    SHX27_2 = "garage_valet"
    SHX24_2(SHX25_2, SHX26_2, SHX27_2)
    SHX24_2 = CMG
    SHX24_2 = SHX24_2.loadModel
    SHX25_2 = 1142162924
    SHX24_2(SHX25_2)
    SHX24_2 = SendNUIMessage
    SHX25_2 = {}
    SHX26_2 = "MPCT_AKAA_0"
    SHX27_2 = math
    SHX27_2 = SHX27_2.random
    SHX28_2 = 1
    SHX29_2 = 5
    SHX27_2 = SHX27_2(SHX28_2, SHX29_2)
    SHX26_2 = SHX26_2 .. SHX27_2
    SHX25_2.transactionType = SHX26_2
    SHX24_2(SHX25_2)
    SHX24_2 = CreatePedInsideVehicle
    SHX25_2 = SHX12_2
    SHX26_2 = 4
    SHX27_2 = 1142162924
    SHX28_2 = -1
    SHX29_2 = false
    SHX30_2 = false
    SHX24_2 = SHX24_2(SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
    SHX25_2 = SetModelAsNoLongerNeeded
    SHX26_2 = 1142162924
    SHX25_2(SHX26_2)
    SHX25_2 = TaskVehicleDriveToCoord
    SHX26_2 = SHX24_2
    SHX27_2 = SHX12_2
    SHX28_2 = SHX22_2.x
    SHX29_2 = SHX22_2.y
    SHX30_2 = SHX22_2.z
    SHX31_2 = 15.0
    SHX32_2 = 1.0
    SHX33_2 = SHX11_2
    SHX34_2 = 786603
    SHX35_2 = 5.0
    SHX36_2 = 0.0
    SHX25_2(SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
    SHX25_2 = SHX71_1
    SHX26_2 = SHX12_2
    SHX25_2(SHX26_2)
    SHX25_2 = SetTimeout
    SHX26_2 = 5000
    function SHX27_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      while true do
        SHX0_3 = GetEntitySpeed
        SHX1_3 = SHX12_2
        SHX0_3 = SHX0_3(SHX1_3)
        if not (SHX0_3 > 5.0) then
          break
        end
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.Wait
        SHX1_3 = 500
        SHX0_3(SHX1_3)
      end
      SHX0_3 = TaskLeaveVehicle
      SHX1_3 = SHX24_2
      SHX2_3 = SHX12_2
      SHX3_3 = 64
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = TaskWanderStandard
      SHX1_3 = SHX24_2
      SHX2_3 = 10.0
      SHX3_3 = 10
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = Wait
      SHX1_3 = 10000
      SHX0_3(SHX1_3)
      SHX0_3 = DeletePed
      SHX1_3 = SHX24_2
      SHX0_3(SHX1_3)
    end
    SHX25_2(SHX26_2, SHX27_2)
    SHX25_2 = print
    SHX26_2 = "[CMG] Spawned vehicle with spawncode:"
    SHX27_2 = tostring
    SHX28_2 = SHX9_2
    SHX27_2 = SHX27_2(SHX28_2)
    SHX26_2 = SHX26_2 .. SHX27_2
    SHX25_2(SHX26_2)
    SHX25_2 = CMG
    SHX25_2 = SHX25_2.getClientUserId
    SHX25_2 = SHX25_2()
    if SHX25_2 then
      SHX26_2 = DecorSetInt
      SHX27_2 = SHX12_2
      SHX28_2 = "ac76c9d452"
      SHX29_2 = SHX25_2
      SHX26_2(SHX27_2, SHX28_2, SHX29_2)
    end
    SHX26_2 = DecorSetInt
    SHX27_2 = SHX12_2
    SHX28_2 = "0a6cf607ed"
    SHX29_2 = SHX0_2
    SHX26_2(SHX27_2, SHX28_2, SHX29_2)
    SHX26_2 = CMG
    SHX26_2 = SHX26_2.setVehicleFuel
    SHX27_2 = SHX12_2
    SHX28_2 = SHX8_2.fuel
    SHX26_2(SHX27_2, SHX28_2)
    while true do
      SHX26_2 = CMG
      SHX26_2 = SHX26_2.getPlayerVehicle
      SHX26_2 = SHX26_2()
      if SHX26_2 == SHX12_2 then
        break
      end
      SHX26_2 = Wait
      SHX27_2 = 100
      SHX26_2(SHX27_2)
    end
    SHX26_2 = tCMG
    SHX26_2 = SHX26_2.applyModsOnVehicle
    SHX27_2 = SHX1_2
    SHX28_2 = SHX0_2
    SHX29_2 = SHX12_2
    SHX26_2(SHX27_2, SHX28_2, SHX29_2)
    SHX26_2 = SHX72_1
    SHX27_2 = SHX2_2
    SHX28_2 = SHX12_2
    SHX29_2 = SHX0_2
    SHX26_2(SHX27_2, SHX28_2, SHX29_2)
    SHX26_2 = table
    SHX26_2 = SHX26_2.insert
    SHX27_2 = SHX16_1
    SHX28_2 = SHX12_2
    SHX26_2(SHX27_2, SHX28_2)
  else
    SHX13_2 = SHX4_2 or SHX13_2
    if not SHX4_2 then
      SHX13_2 = CMG
      SHX13_2 = SHX13_2.getPosition
      SHX13_2 = SHX13_2()
    end
    SHX14_2 = CMG
    SHX14_2 = SHX14_2.requestEntitySpawn
    SHX15_2 = "garages_normal"
    SHX16_2 = SHX0_2
    SHX14_2(SHX15_2, SHX16_2)
    SHX14_2 = CMG
    SHX14_2 = SHX14_2.spawnVehicle
    SHX15_2 = SHX11_2
    SHX16_2 = SHX13_2.x
    SHX17_2 = SHX13_2.y
    SHX18_2 = SHX13_2.z
    SHX18_2 = SHX18_2 + 0.5
    SHX19_2 = GetEntityHeading
    SHX20_2 = PlayerPedId
    SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2 = SHX20_2()
    SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
    SHX20_2 = true
    SHX21_2 = true
    SHX22_2 = true
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX12_2 = SHX14_2
    SHX14_2 = TriggerServerEvent
    SHX15_2 = "1e0bbaf6cd"
    SHX16_2 = SHX9_2
    SHX17_2 = "garage"
    SHX14_2(SHX15_2, SHX16_2, SHX17_2)
    SHX14_2 = SHX71_1
    SHX15_2 = SHX12_2
    SHX14_2(SHX15_2)
    SHX14_2 = print
    SHX15_2 = "[CMG] Spawned vehicle with spawncode:"
    SHX16_2 = tostring
    SHX17_2 = SHX9_2
    SHX16_2 = SHX16_2(SHX17_2)
    SHX15_2 = SHX15_2 .. SHX16_2
    SHX14_2(SHX15_2)
    SHX14_2 = CMG
    SHX14_2 = SHX14_2.getClientUserId
    SHX14_2 = SHX14_2()
    if SHX14_2 then
      SHX15_2 = DecorSetInt
      SHX16_2 = SHX12_2
      SHX17_2 = "ac76c9d452"
      SHX18_2 = SHX14_2
      SHX15_2(SHX16_2, SHX17_2, SHX18_2)
    end
    SHX15_2 = DecorSetInt
    SHX16_2 = SHX12_2
    SHX17_2 = "0a6cf607ed"
    SHX18_2 = SHX0_2
    SHX15_2(SHX16_2, SHX17_2, SHX18_2)
    SHX15_2 = CMG
    SHX15_2 = SHX15_2.setVehicleFuel
    SHX16_2 = SHX12_2
    SHX17_2 = SHX8_2.fuel
    SHX15_2(SHX16_2, SHX17_2)
    SHX15_2 = Citizen
    SHX15_2 = SHX15_2.CreateThreadNow
    function SHX16_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX74_1
      SHX1_3 = SHX12_2
      SHX0_3(SHX1_3)
    end
    SHX15_2(SHX16_2)
    SHX15_2 = tCMG
    SHX15_2 = SHX15_2.applyModsOnVehicle
    SHX16_2 = SHX1_2
    SHX17_2 = SHX0_2
    SHX18_2 = SHX12_2
    SHX15_2(SHX16_2, SHX17_2, SHX18_2)
    SHX15_2 = SHX72_1
    SHX16_2 = SHX2_2
    SHX17_2 = SHX12_2
    SHX18_2 = SHX0_2
    SHX15_2(SHX16_2, SHX17_2, SHX18_2)
    SHX15_2 = table
    SHX15_2 = SHX15_2.insert
    SHX16_2 = SHX16_1
    SHX17_2 = SHX12_2
    SHX15_2(SHX16_2, SHX17_2)
    if SHX7_2 then
      SHX15_2 = Citizen
      SHX15_2 = SHX15_2.CreateThread
      function SHX16_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.Wait
        SHX1_3 = 500
        SHX0_3(SHX1_3)
        SHX0_3 = DoesEntityExist
        SHX1_3 = SHX12_2
        SHX0_3 = SHX0_3(SHX1_3)
        if SHX0_3 then
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.enterRemoteLsCustomsFromGarage
          SHX1_3 = SHX12_2
          SHX2_3 = SHX25_1
          SHX3_3 = GetEntityHeading
          SHX4_3 = PlayerPedId
          SHX4_3 = SHX4_3()
          SHX3_3, SHX4_3 = SHX3_3(SHX4_3)
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        end
      end
      SHX15_2(SHX16_2)
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_332:: outside nested blocks until all 'goto SHX_LABEL_332' can see it
  ::SHX_LABEL_332::
  SHX13_2 = SetModelAsNoLongerNeeded
  SHX14_2 = SHX11_2
  SHX13_2(SHX14_2)
  if SHX5_2 then
    SHX13_2 = Citizen
    SHX13_2 = SHX13_2.CreateThread
    function SHX14_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.notifyPicture
      SHX1_3 = "polnotification"
      SHX2_3 = "lockpick"
      SHX3_3 = "~y~Your vehicle has been lockpicked since it was last taken out of the garage."
      SHX4_3 = "Garage Notification"
      SHX5_3 = "~r~Lockpick Alert"
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    SHX13_2(SHX14_2)
  end
  while true do
    SHX13_2 = DoesEntityExist
    SHX14_2 = SHX12_2
    SHX13_2 = SHX13_2(SHX14_2)
    if not SHX13_2 then
      break
    end
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.getVehicleFuel
    SHX14_2 = SHX12_2
    SHX13_2 = SHX13_2(SHX14_2)
    SHX14_2 = SHX8_2.fuel
    if SHX14_2 ~= SHX13_2 then
      SHX14_2 = TriggerServerEvent
      SHX15_2 = "486c23d750"
      SHX16_2 = SHX0_2
      SHX17_2 = math
      SHX17_2 = SHX17_2.floor
      SHX18_2 = SHX13_2 * 1000
      SHX17_2 = SHX17_2(SHX18_2)
      SHX17_2 = SHX17_2 / 1000
      SHX14_2(SHX15_2, SHX16_2, SHX17_2)
      SHX8_2.fuel = SHX13_2
      SHX14_2 = SetEntityInvincible
      SHX15_2 = SHX12_2
      SHX16_2 = false
      SHX14_2(SHX15_2, SHX16_2)
      SHX14_2 = SetEntityCanBeDamaged
      SHX15_2 = SHX12_2
      SHX16_2 = true
      SHX14_2(SHX15_2, SHX16_2)
    end
    SHX14_2 = Wait
    SHX15_2 = 60000
    SHX14_2(SHX15_2)
  end
  goto SHX_LABEL_383
  -- [FIX IF ERROR] Move ::SHX_LABEL_379:: outside nested blocks until all 'goto SHX_LABEL_379' can see it
  ::SHX_LABEL_379::
  SHX11_2 = tCMG
  SHX11_2 = SHX11_2.notify
  SHX12_2 = "This vehicle is already out."
  SHX11_2(SHX12_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_383:: outside nested blocks until all 'goto SHX_LABEL_383' can see it
  ::SHX_LABEL_383::
end
SHX77_1(SHX78_1, SHX79_1)
SHX77_1 = CMG
function SHX78_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = fullPlayerListData
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = fullPlayerListData
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2[1]
  if not SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = GetPlayerFromServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 < 0 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = GetPlayerPed
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    SHX4_2 = false
    return SHX4_2
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerCoords
  SHX4_2 = SHX4_2()
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX3_2
  SHX7_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX4_2 = SHX4_2 - SHX5_2
  SHX4_2 = #SHX4_2
  SHX4_2 = SHX4_2 < 5.0
  return SHX4_2
end
SHX77_1.isUserOnlineAndNearby = SHX78_1
function SHX77_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX17_1
  if SHX0_2 then
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 177
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = DeleteVehicle
      SHX1_2 = SHX14_1
      SHX0_2(SHX1_2)
      SHX0_2 = 0
      SHX14_1 = SHX0_2
      SHX0_2 = 0
      SHX15_1 = SHX0_2
      SHX0_2 = false
      SHX17_1 = SHX0_2
      SHX0_2 = DestroyCam
      SHX1_2 = SHX68_1
      SHX2_2 = false
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = RenderScriptCams
      SHX1_2 = false
      SHX2_2 = false
      SHX3_2 = 1
      SHX4_2 = true
      SHX5_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX0_2 = 0
      SHX68_1 = SHX0_2
      SHX0_2 = SetFocusEntity
      SHX1_2 = GetPlayerPed
      SHX2_2 = PlayerId
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2()
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX0_2 = SetEntityAlpha
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2 = SHX1_2()
      SHX2_2 = 255
      SHX3_2 = false
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = FreezeEntityPosition
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2 = SHX1_2()
      SHX2_2 = false
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = SetEntityCollision
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2 = SHX1_2()
      SHX2_2 = true
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    end
  end
  SHX0_2 = SHX50_1
  if SHX0_2 then
    SHX0_2 = SHX50_1.sellerUserId
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isUserOnlineAndNearby
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = nil
      SHX50_1 = SHX1_2
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "17e8eb1c8c"
      SHX1_2(SHX2_2)
      SHX1_2 = RageUI
      SHX1_2 = SHX1_2.CloseAll
      SHX1_2()
      return
    end
  end
end
SHX78_1 = CMG
SHX78_1 = SHX78_1.createThreadOnTick
SHX79_1 = SHX77_1
SHX80_1 = "Preview Garage"
SHX78_1(SHX79_1, SHX80_1)
function SHX78_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = "surprise" == SHX0_2
  return SHX1_2
end
function SHX79_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.garages
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = pairs
    SHX8_2 = SHX6_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      if "_config" ~= SHX11_2 and SHX11_2 == SHX0_2 then
        SHX12_2 = SHX58_1
        SHX13_2 = SHX5_2
        SHX12_2 = SHX12_2(SHX13_2)
        if SHX12_2 then
          SHX12_2 = SHX10_1
          SHX13_2 = SHX6_2._config
          SHX13_2 = SHX13_2.type
          if SHX12_2 == SHX13_2 then
            SHX12_2 = true
            return SHX12_2
          end
        end
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX80_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX42_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX0_2
    SHX9_2 = {}
    SHX9_2.uuid = SHX5_2
    SHX9_2.info = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX1_2 = table
  SHX1_2 = SHX1_2.sort
  SHX2_2 = SHX0_2
  function SHX3_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.info
    SHX2_3 = SHX2_3.name
    SHX3_3 = SHX1_3.info
    SHX3_3 = SHX3_3.name
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  return SHX0_2
end
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "mainmenu"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateMenu
SHX85_1 = ""
SHX86_1 = ""
SHX87_1 = CMG
SHX87_1 = SHX87_1.getRageUIMenuWidth
SHX87_1 = SHX87_1()
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuHeight
SHX88_1 = SHX88_1()
SHX89_1 = "cmg_garageui"
SHX90_1 = "cmg_garageui"
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX82_1 = SHX81_1
SHX81_1 = SHX81_1.Get
SHX83_1 = "garages"
SHX84_1 = "mainmenu"
SHX81_1 = SHX81_1(SHX82_1, SHX83_1, SHX84_1)
SHX82_1 = SHX81_1
SHX81_1 = SHX81_1.SetSubtitle
SHX83_1 = "~b~Garages"
SHX81_1(SHX82_1, SHX83_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "rentmanager"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "mainmenu"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Rent Management Menu"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "rentedout"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "rentmanager"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Vehicles Rented Out"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "rentedin"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "rentmanager"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Vehicles Renting"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "paymentplanmanager"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "mainmenu"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Payment Plan Management Menu"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "paymentplanout"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "paymentplanmanager"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Vehicles Payment Planned Out"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "paymentplanin"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "paymentplanmanager"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Vehicles Payment Planned In"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "paymentplansummary"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "paymentplanmanager"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Payment Plan Summary"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "paymentplaninfo"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "paymentplanin"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Vehicles Payment Plan Info"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "recentlogs"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "mainmenu"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Recent Logs"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "rentedinfo"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "rentedin"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Vehicles Rent Info"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "listgarages"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "mainmenu"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Garage Management Menu"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "vehiclemenu"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "listgarages"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Vehicle Management Menu"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "spawnmenu"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "vehiclemenu"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Spawn Management Menu"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "paymentplan"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "spawnmenu"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Payment Plan Menu"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "paymentplanoffer"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateMenu
SHX85_1 = ""
SHX86_1 = "~b~Payment Plan Offer"
SHX87_1 = CMG
SHX87_1 = SHX87_1.getRageUIMenuWidth
SHX87_1 = SHX87_1()
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuHeight
SHX88_1 = SHX88_1()
SHX89_1 = "cmg_garageui"
SHX90_1 = "cmg_garageui"
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "customfolders"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "listgarages"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Custom Folders Management Menu"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "settings"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "mainmenu"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Settings"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "viewall"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "settings"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~All Vehicles"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "rentonlymenu"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateSubMenu
SHX85_1 = RMenu
SHX86_1 = SHX85_1
SHX85_1 = SHX85_1.Get
SHX87_1 = "garages"
SHX88_1 = "viewall"
SHX85_1 = SHX85_1(SHX86_1, SHX87_1, SHX88_1)
SHX86_1 = ""
SHX87_1 = "~b~Vehicle Management Menu"
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuWidth
SHX88_1 = SHX88_1()
SHX89_1 = CMG
SHX89_1 = SHX89_1.getRageUIMenuHeight
SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX89_1()
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX81_1 = SHX81_1.Add
SHX82_1 = "garages"
SHX83_1 = "confirm"
SHX84_1 = RageUI
SHX84_1 = SHX84_1.CreateMenu
SHX85_1 = ""
SHX86_1 = ""
SHX87_1 = CMG
SHX87_1 = SHX87_1.getRageUIMenuWidth
SHX87_1 = SHX87_1()
SHX88_1 = CMG
SHX88_1 = SHX88_1.getRageUIMenuHeight
SHX88_1 = SHX88_1()
SHX89_1 = "cmg_garageui"
SHX90_1 = "cmg_garageui"
SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX84_1(SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1)
SHX81_1(SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX81_1 = RMenu
SHX82_1 = SHX81_1
SHX81_1 = SHX81_1.Get
SHX83_1 = "garages"
SHX84_1 = "confirm"
SHX81_1 = SHX81_1(SHX82_1, SHX83_1, SHX84_1)
SHX82_1 = SHX81_1
SHX81_1 = SHX81_1.SetSubtitle
SHX83_1 = "~b~Are you sure you want to DELETE this vehicle?"
SHX81_1(SHX82_1, SHX83_1)
function SHX81_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "[Create Custom Folder]"
  SHX2_2 = ""
  SHX3_2 = {}
  SHX3_2.RightLabel = "\226\134\146\226\134\146\226\134\146"
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.GetRageInputText
      SHX4_3 = "Enter folder name:"
      SHX3_3 = SHX3_3(SHX4_3)
      if "" ~= SHX3_3 then
        SHX4_3 = SHX26_1
        SHX4_3 = SHX4_3[SHX3_3]
        if nil == SHX4_3 then
          SHX4_3 = pairs
          SHX5_3 = SHX26_1
          SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX4_3(SHX5_3)
          for SHX8_3 in SHX4_3, SHX5_3, SHX6_3, SHX7_3 do
            SHX9_3 = string
            SHX9_3 = SHX9_3.lower
            SHX10_3 = SHX8_3
            SHX9_3 = SHX9_3(SHX10_3)
            SHX10_3 = string
            SHX10_3 = SHX10_3.lower
            SHX11_3 = SHX3_3
            SHX10_3 = SHX10_3(SHX11_3)
            if SHX9_3 == SHX10_3 then
              SHX9_3 = notify
              SHX10_3 = "~r~A folder with this name already exists."
              SHX9_3(SHX10_3)
              return
            end
          end
          SHX4_3 = CMG
          SHX4_3 = SHX4_3.createCustomFolder
          SHX5_3 = SHX3_3
          SHX4_3(SHX5_3)
        else
          SHX4_3 = tCMG
          SHX4_3 = SHX4_3.notify
          SHX5_3 = "~r~Folder already exists."
          SHX4_3(SHX5_3)
        end
      else
        SHX4_3 = tCMG
        SHX4_3 = SHX4_3.notify
        SHX5_3 = "~r~Invalid folder name."
        SHX4_3(SHX5_3)
      end
    end
  end
  SHX6_2 = RMenu
  SHX7_2 = SHX6_2
  SHX6_2 = SHX6_2.Get
  SHX8_2 = "garages"
  SHX9_2 = "customfolders"
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "[Delete Custom Folder]"
  SHX2_2 = ""
  SHX3_2 = {}
  SHX3_2.RightLabel = "\226\134\146\226\134\146\226\134\146"
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.GetRageInputText
      SHX4_3 = "Enter folder name:"
      SHX3_3 = SHX3_3(SHX4_3)
      if "" ~= SHX3_3 then
        SHX4_3 = CMG
        SHX4_3 = SHX4_3.deleteCustomFolder
        SHX5_3 = SHX3_3
        SHX4_3(SHX5_3)
      else
        SHX4_3 = tCMG
        SHX4_3 = SHX4_3.notify
        SHX5_3 = "~r~Invalid folder name."
        SHX4_3(SHX5_3)
      end
    end
  end
  SHX6_2 = RMenu
  SHX7_2 = SHX6_2
  SHX6_2 = SHX6_2.Get
  SHX8_2 = "garages"
  SHX9_2 = "customfolders"
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX0_2 = pairsByKeys
  SHX1_2 = SHX26_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = RageUI
    SHX5_2 = SHX5_2.ButtonWithStyle
    SHX6_2 = SHX4_2
    SHX7_2 = ""
    SHX8_2 = {}
    SHX8_2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX9_2 = true
    function SHX10_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3
      if SHX2_3 then
        SHX3_3 = nil
        SHX9_1 = SHX3_3
        SHX3_3 = SHX4_2
        SHX24_1 = SHX3_3
      end
    end
    SHX11_2 = RMenu
    SHX12_2 = SHX11_2
    SHX11_2 = SHX11_2.Get
    SHX13_2 = "garages"
    SHX14_2 = "vehiclemenu"
    SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
end
function SHX82_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX3_2 = SHX0_2[SHX1_2]
  SHX4_2 = 10000
  SHX5_2 = pairs
  SHX6_2 = SHX0_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    if SHX9_2 ~= SHX1_2 then
      if SHX2_2 then
        SHX11_2 = 1
        if SHX11_2 then
          goto SHX_LABEL_15
        end
      end
      SHX11_2 = -1
      -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
      ::SHX_LABEL_15::
      SHX11_2 = SHX10_2 + SHX11_2
      SHX12_2 = math
      SHX12_2 = SHX12_2.abs
      SHX13_2 = SHX0_2[SHX1_2]
      SHX13_2 = SHX13_2 - SHX11_2
      SHX12_2 = SHX12_2(SHX13_2)
      if SHX2_2 then
        SHX13_2 = SHX0_2[SHX1_2]
        if SHX11_2 > SHX13_2 then
          goto SHX_LABEL_33
        end
      end
      if not SHX2_2 then
        SHX13_2 = SHX0_2[SHX1_2]
        -- [FIX IF ERROR] Move ::SHX_LABEL_33:: outside nested blocks until all 'goto SHX_LABEL_33' can see it
        ::SHX_LABEL_33::
        if SHX11_2 < SHX13_2 and SHX4_2 > SHX12_2 then
          SHX3_2 = SHX11_2
          SHX4_2 = SHX12_2
        end
      end
    end
  end
  return SHX3_2
end
function SHX83_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  if not SHX1_2 then
    SHX2_2 = SHX28_1
    SHX3_2 = "hideCustomFolderVehiclesFromOriginalGarages"
    SHX2_2 = SHX2_2[SHX3_2]
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.isVehicleInAnyCustomFolder
      SHX3_2 = SHX0_2.uuid
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        return
      end
    end
  end
  SHX2_2 = SHX78_1
  SHX3_2 = SHX0_2.vehicleId
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.hasClientPermission
    SHX3_2 = "admin.tickets"
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      return
    end
  end
  SHX2_2 = ""
  SHX3_2 = SHX0_2.fuel
  if SHX3_2 <= 20 then
    SHX2_2 = "~r~"
  else
    SHX3_2 = SHX0_2.fuel
    if SHX3_2 <= 50 then
      SHX2_2 = "~y~"
    else
      SHX3_2 = SHX0_2.fuel
      if SHX3_2 <= 100 then
        SHX2_2 = "~g~"
      end
    end
  end
  SHX4_2 = SHX0_2.uuid
  SHX3_2 = SHX31_1
  SHX3_2 = SHX3_2[SHX4_2]
  if not SHX3_2 then
    SHX3_2 = SHX0_2.name
  end
  SHX4_2 = SHX2_2
  SHX5_2 = "Fuel "
  SHX6_2 = tostring
  SHX7_2 = math
  SHX7_2 = SHX7_2.floor
  SHX8_2 = SHX0_2.fuel
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX7_2(SHX8_2)
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX7_2 = "%"
  SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2
  SHX5_2 = SHX38_1
  if SHX5_2 then
    SHX5_2 = SHX4_2
    SHX6_2 = " | Boot "
    SHX7_2 = tostring
    SHX8_2 = SHX38_1
    SHX8_2 = SHX8_2[1]
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = "/"
    SHX9_2 = tostring
    SHX10_2 = SHX38_1
    SHX10_2 = SHX10_2[2]
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = "kg"
    SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2 .. SHX9_2 .. SHX10_2
    SHX4_2 = SHX5_2
    SHX5_2 = SHX38_1
    SHX5_2 = SHX5_2[3]
    if SHX5_2 then
      SHX5_2 = SHX4_2
      SHX6_2 = " | Has Dirty Cash"
      SHX5_2 = SHX5_2 .. SHX6_2
      SHX4_2 = SHX5_2
    end
  end
  SHX5_2 = RageUI
  SHX5_2 = SHX5_2.ButtonWithStyle
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2
  SHX8_2 = {}
  SHX8_2.RightLabel = "\226\134\146\226\134\146\226\134\146"
  SHX9_2 = true
  function SHX10_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    if SHX1_3 then
      SHX3_3 = SHX14_1
      if 0 ~= SHX3_3 then
        SHX3_3 = SHX15_1
        SHX4_3 = SHX0_2.vehicleId
        if SHX3_3 == SHX4_3 then
          goto SHX_LABEL_23
        end
      end
      SHX3_3 = SHX29_1
      if not SHX3_3 then
        SHX3_3 = DeleteVehicle
        SHX4_3 = SHX14_1
        SHX3_3(SHX4_3)
        SHX3_3 = true
        SHX29_1 = SHX3_3
        SHX3_3 = SHX70_1
        SHX4_3 = SHX0_2.vehicleId
        SHX3_3(SHX4_3)
        SHX3_3 = SHX0_2.vehicleId
        SHX15_1 = SHX3_3
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
      ::SHX_LABEL_23::
      SHX3_3 = SHX40_1
      SHX4_3 = SHX0_2.uuid
      if SHX3_3 ~= SHX4_3 then
        SHX3_3 = SHX0_2.uuid
        SHX40_1 = SHX3_3
        SHX3_3 = GetGameTimer
        SHX3_3 = SHX3_3()
        SHX39_1 = SHX3_3
        SHX3_3 = nil
        SHX38_1 = SHX3_3
      end
      SHX3_3 = SHX39_1
      if 0 ~= SHX3_3 then
        SHX3_3 = GetGameTimer
        SHX3_3 = SHX3_3()
        SHX4_3 = SHX39_1
        SHX3_3 = SHX3_3 - SHX4_3
        SHX4_3 = 250
        if SHX3_3 > SHX4_3 then
          SHX3_3 = 0
          SHX39_1 = SHX3_3
          SHX3_3 = nil
          SHX38_1 = SHX3_3
          SHX3_3 = TriggerServerEvent
          SHX4_3 = "a5ea65d755"
          SHX5_3 = SHX0_2.vehicleId
          SHX6_3 = SHX0_2.uuid
          SHX3_3(SHX4_3, SHX5_3, SHX6_3)
        end
      end
      SHX3_3 = SHX1_2
      if SHX3_3 then
        SHX3_3 = IsControlPressed
        SHX4_3 = 0
        SHX5_3 = 209
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
        if SHX3_3 then
          SHX4_3 = SHX24_1
          SHX3_3 = SHX26_1
          SHX3_3 = SHX3_3[SHX4_3]
          SHX4_3 = nil
          SHX5_3 = IsControlJustPressed
          SHX6_3 = 0
          SHX7_3 = 188
          SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
          if SHX5_3 then
            SHX4_3 = true
          else
            SHX5_3 = IsControlJustPressed
            SHX6_3 = 0
            SHX7_3 = 187
            SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
            if SHX5_3 then
              SHX4_3 = false
            end
          end
          SHX5_3 = type
          SHX6_3 = SHX4_3
          SHX5_3 = SHX5_3(SHX6_3)
          if "boolean" == SHX5_3 then
            SHX5_3 = SHX82_1
            SHX6_3 = SHX3_3
            SHX7_3 = SHX0_2.uuid
            SHX8_3 = SHX4_3
            SHX5_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
            SHX6_3 = SHX0_2.uuid
            SHX6_3 = SHX3_3[SHX6_3]
            if SHX5_3 ~= SHX6_3 then
              SHX6_3 = pairs
              SHX7_3 = SHX3_3
              SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3)
              for SHX10_3, SHX11_3 in SHX6_3, SHX7_3, SHX8_3, SHX9_3 do
                if not SHX4_3 or not (SHX11_3 >= SHX5_3) then
                  if not (not SHX4_3 and SHX11_3 <= SHX5_3) then
                    goto SHX_LABEL_120
                  end
                  SHX12_3 = SHX0_2.uuid
                  if SHX10_3 == SHX12_3 then
                    goto SHX_LABEL_120
                  end
                end
                if SHX4_3 then
                  SHX12_3 = 1
                  if SHX12_3 then
                    goto SHX_LABEL_117
                  end
                end
                SHX12_3 = -1
                -- [FIX IF ERROR] Move ::SHX_LABEL_117:: outside nested blocks until all 'goto SHX_LABEL_117' can see it
                ::SHX_LABEL_117::
                SHX12_3 = SHX11_3 + SHX12_3
                SHX3_3[SHX10_3] = SHX12_3
                -- [FIX IF ERROR] Move ::SHX_LABEL_120:: outside nested blocks until all 'goto SHX_LABEL_120' can see it
                ::SHX_LABEL_120::
              end
              SHX6_3 = SHX0_2.uuid
              SHX3_3[SHX6_3] = SHX5_3
              SHX6_3 = CMG
              SHX6_3 = SHX6_3.saveCustomFolders
              SHX6_3()
            end
          end
        end
      end
    end
    if SHX2_3 then
      SHX3_3 = SHX0_2.vehicleId
      SHX6_1 = SHX3_3
      SHX3_3 = SHX0_2.uuid
      SHX8_1 = SHX3_3
      SHX4_3 = SHX0_2.vehicleId
      SHX3_3 = SHX36_1
      SHX3_3 = SHX3_3[SHX4_3]
      if not SHX3_3 then
        SHX3_3 = TriggerServerEvent
        SHX4_3 = "e7f85609de"
        SHX5_3 = SHX0_2.vehicleId
        SHX3_3(SHX4_3, SHX5_3)
      end
      SHX4_3 = SHX0_2.uuid
      SHX3_3 = SHX37_1
      SHX3_3 = SHX3_3[SHX4_3]
      if not SHX3_3 then
        SHX3_3 = TriggerServerEvent
        SHX4_3 = "8f66b92a5f"
        SHX5_3 = SHX0_2.uuid
        SHX3_3(SHX4_3, SHX5_3)
      end
      SHX3_3 = SHX3_2
      SHX7_1 = SHX3_3
      SHX3_3 = SHX1_2
      if not SHX3_3 then
        SHX3_3 = nil
        SHX24_1 = SHX3_3
      end
    end
  end
  SHX11_2 = RMenu
  SHX12_2 = SHX11_2
  SHX11_2 = SHX11_2.Get
  SHX13_2 = "garages"
  SHX14_2 = "spawnmenu"
  SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
end
SHX84_1 = {}
function SHX85_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX84_1
  SHX1_2[SHX0_2] = true
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX84_1
  SHX2_2[SHX0_2] = nil
  if not SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = SetModelAsNoLongerNeeded
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = IsModelValid
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = HasModelLoaded
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
  end
  return SHX2_2
end
function SHX86_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX75_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.notify
    SHX4_2 = "~r~Vehicle data is out of date. Close and reopen the garage menu."
    SHX3_2(SHX4_2)
    return
  end
  SHX4_2 = SHX2_2.vehicleId
  SHX3_2 = SHX84_1
  SHX3_2 = SHX3_2[SHX4_2]
  if SHX3_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~Vehicle is being downloaded, please wait."
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = SHX85_1
  SHX4_2 = SHX2_2.vehicleId
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "3cee06ce88"
    SHX5_2 = SHX2_2.vehicleId
    SHX6_2 = SHX0_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    return
  end
  SHX3_2 = SHX73_1
  SHX3_2 = SHX3_2()
  SHX3_2 = SHX3_2[SHX0_2]
  if nil ~= SHX3_2 then
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX3_2[2]
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      goto SHX_LABEL_47
    end
  end
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "0cd4f2f872"
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  goto SHX_LABEL_51
  -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
  ::SHX_LABEL_47::
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.notify
  SHX5_2 = "Vehicle is already out!"
  SHX4_2(SHX5_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_51:: outside nested blocks until all 'goto SHX_LABEL_51' can see it
  ::SHX_LABEL_51::
end
SHX87_1 = RageUI
SHX87_1 = SHX87_1.CreateWhile
SHX88_1 = 1.0
SHX89_1 = RMenu
SHX90_1 = SHX89_1
SHX89_1 = SHX89_1.Get
SHX91_1 = "garages"
SHX92_1 = "mainmenu"
SHX89_1 = SHX89_1(SHX90_1, SHX91_1, SHX92_1)
SHX90_1 = nil
function SHX91_1()
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
  SHX3_2 = "garages"
  SHX4_2 = "mainmenu"
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
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Garages"
    SHX2_3 = SHX7_1
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
    SHX8_3 = "garages"
    SHX9_3 = "listgarages"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Store Vehicle"
    SHX2_3 = SHX7_1
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = GetVehiclePedIsIn
        SHX4_4 = CMG
        SHX4_4 = SHX4_4.getPlayerPed
        SHX4_4 = SHX4_4()
        SHX5_4 = false
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
        SHX4_4 = DoesEntityExist
        SHX5_4 = SHX3_4
        SHX4_4 = SHX4_4(SHX5_4)
        if SHX4_4 then
          SHX4_4 = DecorGetInt
          SHX5_4 = SHX3_4
          SHX6_4 = "ac76c9d452"
          SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
          SHX5_4 = DecorGetInt
          SHX6_4 = SHX3_4
          SHX7_4 = "0a6cf607ed"
          SHX5_4 = SHX5_4(SHX6_4, SHX7_4)
          SHX6_4 = CMG
          SHX6_4 = SHX6_4.getClientUserId
          SHX6_4 = SHX6_4()
          if SHX4_4 == SHX6_4 and SHX5_4 > 0 then
            SHX33_1 = SHX5_4
          end
          SHX6_4 = DeleteEntity
          SHX7_4 = SHX3_4
          SHX6_4(SHX7_4)
        end
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "garages"
    SHX9_3 = "mainmenu"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = SHX33_1
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Spawn Last Vehicle"
      SHX2_3 = "Spawns the last owned vehicle that was spawned or stored via the garage menu"
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
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.getPlayerCombatTimer
          SHX3_4 = SHX3_4()
          if SHX3_4 > 0 then
            SHX3_4 = notify
            SHX4_4 = "~r~You can not spawn a vehicle with a combat timer."
            SHX3_4(SHX4_4)
            return
          end
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.isInCustomRace
          SHX3_4 = SHX3_4()
          if SHX3_4 then
            SHX3_4 = notify
            SHX4_4 = "~r~You can not spawn new vehicles in a race."
            SHX3_4(SHX4_4)
            return
          end
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.getVehicleInfoFromUUID
          SHX4_4 = SHX33_1
          SHX3_4 = SHX3_4(SHX4_4)
          if SHX3_4 then
            SHX4_4 = SHX3_4.vehicleId
            if SHX4_4 then
              SHX4_4 = SHX79_1
              SHX5_4 = SHX3_4.vehicleId
              SHX4_4 = SHX4_4(SHX5_4)
              if SHX4_4 then
                SHX4_4 = Citizen
                SHX4_4 = SHX4_4.CreateThreadNow
                function SHX5_4()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_5, SHX1_5
                  SHX0_5 = SHX86_1
                  SHX1_5 = SHX33_1
                  SHX0_5(SHX1_5)
                end
                SHX4_4(SHX5_4)
              else
                SHX4_4 = notify
                SHX5_4 = "~r~The last vehicle can not be spawned from this type of garage."
                SHX4_4(SHX5_4)
              end
          end
          else
            SHX4_4 = notify
            SHX5_4 = "~r~Can not spawn this vehicle. Do you still own it?"
            SHX4_4(SHX5_4)
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Rent Manager"
    SHX2_3 = SHX7_1
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
    SHX8_3 = "garages"
    SHX9_3 = "rentmanager"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Payment Plan Manager"
    SHX2_3 = SHX7_1
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
    SHX8_3 = "garages"
    SHX9_3 = "paymentplanmanager"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "View Recent Logs"
    SHX2_3 = "View logs from the past month."
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
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "6463b9ec47"
        SHX3_4(SHX4_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "garages"
    SHX9_3 = "recentlogs"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Settings"
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
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "garages"
    SHX9_3 = "settings"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~y~Fuel all vehicles. (\194\16325,000)"
    SHX2_3 = SHX7_1
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
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.isPlusClub
        SHX3_4 = SHX3_4()
        if not SHX3_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.isPlatClub
          SHX3_4 = SHX3_4()
          if not SHX3_4 then
            goto SHX_LABEL_36
          end
        end
        SHX3_4 = SHX30_1
        if not SHX3_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "bf584d3fa8"
          SHX3_4(SHX4_4)
          SHX3_4 = true
          SHX30_1 = SHX3_4
          SHX3_4 = SendNUIMessage
          SHX4_4 = {}
          SHX4_4.transactionType = "playMoney"
          SHX3_4(SHX4_4)
          SHX3_4 = SetTimeout
          SHX4_4 = 60000
          function SHX5_4()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_5, SHX1_5
            SHX0_5 = false
            SHX30_1 = SHX0_5
          end
          SHX3_4(SHX4_4, SHX5_4)
        else
          SHX3_4 = tCMG
          SHX3_4 = SHX3_4.notify
          SHX4_4 = "~r~You've done this too recently, try again later."
          SHX3_4(SHX4_4)
          goto SHX_LABEL_44
          -- [FIX IF ERROR] Move ::SHX_LABEL_36:: outside nested blocks until all 'goto SHX_LABEL_36' can see it
          ::SHX_LABEL_36::
          SHX3_4 = tCMG
          SHX3_4 = SHX3_4.notify
          SHX4_4 = "~y~You need to be a subscriber of CMG Plus or CMG Platinum to use this feature."
          SHX3_4(SHX4_4)
          SHX3_4 = tCMG
          SHX3_4 = SHX3_4.notify
          SHX4_4 = "~y~Available @ store.cmgstudios.net"
          SHX3_4(SHX4_4)
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_44:: outside nested blocks until all 'goto SHX_LABEL_44' can see it
      ::SHX_LABEL_44::
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
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "garages"
  SHX4_2 = "rentmanager"
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
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Vehicles Rented Out"
    SHX2_3 = SHX7_1
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
    SHX8_3 = "garages"
    SHX9_3 = "rentedout"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Vehicles Rented In"
    SHX2_3 = SHX7_1
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
    SHX8_3 = "garages"
    SHX9_3 = "rentedin"
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
  SHX3_2 = "garages"
  SHX4_2 = "paymentplanmanager"
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
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Vehicles Payment Planned Out"
    SHX2_3 = SHX7_1
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
    SHX8_3 = "garages"
    SHX9_3 = "paymentplanout"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Vehicles Payment Planned In"
    SHX2_3 = SHX7_1
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
    SHX8_3 = "garages"
    SHX9_3 = "paymentplanin"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Payment Plan Summary"
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
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "2f22f5216b"
        SHX3_4(SHX4_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "garages"
    SHX9_3 = "paymentplansummary"
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
  SHX3_2 = "garages"
  SHX4_2 = "paymentplansummary"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~g~Estimated income of \194\163"
    SHX2_3 = getMoneyStringFormatted
    SHX3_3 = SHX27_1.income
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = " per week"
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Estimated outflow of \194\163"
    SHX2_3 = getMoneyStringFormatted
    SHX3_3 = SHX27_1.outcome
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = " per week"
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX0_3(SHX1_3)
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
  SHX3_2 = "garages"
  SHX4_2 = "paymentplanout"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3
    SHX0_3 = pairs
    SHX1_3 = SHX21_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX7_3 = SHX5_3.uuid
      SHX6_3 = SHX31_1
      SHX6_3 = SHX6_3[SHX7_3]
      if not SHX6_3 then
        SHX6_3 = SHX5_3.vehicleName
      end
      SHX7_3 = SHX5_3.paymentPlannedBy
      SHX8_3 = RageUI
      SHX8_3 = SHX8_3.ButtonWithStyle
      SHX9_3 = SHX6_3
      SHX10_3 = "Payment Planned to "
      SHX11_3 = SHX7_3
      SHX10_3 = SHX10_3 .. SHX11_3
      SHX11_3 = {}
      SHX11_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX12_3 = true
      function SHX13_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if SHX2_4 then
          SHX3_4 = nil
          SHX23_1 = SHX3_4
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "8e0470d982"
          SHX5_4 = SHX5_3.uuid
          SHX6_4 = SHX6_3
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        end
      end
      SHX14_3 = RMenu
      SHX15_3 = SHX14_3
      SHX14_3 = SHX14_3.Get
      SHX16_3 = "garages"
      SHX17_3 = "paymentplaninfo"
      SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX14_3(SHX15_3, SHX16_3, SHX17_3)
      SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
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
  SHX3_2 = "garages"
  SHX4_2 = "paymentplanin"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3
    SHX0_3 = pairs
    SHX1_3 = SHX22_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX7_3 = SHX5_3.uuid
      SHX6_3 = SHX31_1
      SHX6_3 = SHX6_3[SHX7_3]
      if not SHX6_3 then
        SHX6_3 = SHX5_3.vehicleName
      end
      SHX7_3 = SHX5_3.paymentPlannedBy
      SHX8_3 = RageUI
      SHX8_3 = SHX8_3.ButtonWithStyle
      SHX9_3 = SHX6_3
      SHX10_3 = "Payment Planned from "
      SHX11_3 = SHX7_3
      SHX10_3 = SHX10_3 .. SHX11_3
      SHX11_3 = {}
      SHX11_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX12_3 = true
      function SHX13_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if SHX2_4 then
          SHX3_4 = nil
          SHX23_1 = SHX3_4
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "8e0470d982"
          SHX5_4 = SHX5_3.uuid
          SHX6_4 = SHX6_3
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        end
      end
      SHX14_3 = RMenu
      SHX15_3 = SHX14_3
      SHX14_3 = SHX14_3.Get
      SHX16_3 = "garages"
      SHX17_3 = "paymentplaninfo"
      SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX14_3(SHX15_3, SHX16_3, SHX17_3)
      SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
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
  SHX3_2 = "garages"
  SHX4_2 = "recentlogs"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = pairs
    SHX1_3 = SHX32_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = string
      SHX6_3 = SHX6_3.sub
      SHX7_3 = SHX5_3
      SHX8_3 = 1
      SHX9_3 = 50
      SHX6_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      SHX7_3 = #SHX6_3
      if SHX7_3 >= 50 then
        SHX7_3 = SHX6_3
        SHX8_3 = "..."
        SHX7_3 = SHX7_3 .. SHX8_3
        SHX6_3 = SHX7_3
      end
      SHX7_3 = RageUI
      SHX7_3 = SHX7_3.ButtonWithStyle
      SHX8_3 = SHX6_3
      SHX9_3 = SHX5_3
      SHX10_3 = {}
      SHX11_3 = true
      function SHX12_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
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
  SHX3_2 = "garages"
  SHX4_2 = "rentedout"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3
    SHX0_3 = pairs
    SHX1_3 = SHX19_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX7_3 = SHX5_3.uuid
      SHX6_3 = SHX31_1
      SHX6_3 = SHX6_3[SHX7_3]
      if not SHX6_3 then
        SHX6_3 = SHX5_3.vehicleName
      end
      SHX7_3 = SHX5_3.rentedBy
      SHX8_3 = SHX5_3.hoursLeft
      SHX9_3 = RageUI
      SHX9_3 = SHX9_3.ButtonWithStyle
      SHX10_3 = SHX6_3
      SHX11_3 = "Rented to "
      SHX12_3 = SHX7_3
      SHX13_3 = " - "
      SHX14_3 = SHX8_3
      SHX15_3 = " hours left!"
      SHX11_3 = SHX11_3 .. SHX12_3 .. SHX13_3 .. SHX14_3 .. SHX15_3
      SHX12_3 = {}
      SHX12_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX13_3 = true
      function SHX14_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX5_3
          SHX13_1 = SHX3_4
          SHX13_1.type = "rentingout"
        end
      end
      SHX15_3 = RMenu
      SHX16_3 = SHX15_3
      SHX15_3 = SHX15_3.Get
      SHX17_3 = "garages"
      SHX18_3 = "rentedinfo"
      SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX15_3(SHX16_3, SHX17_3, SHX18_3)
      SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
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
  SHX3_2 = "garages"
  SHX4_2 = "rentedin"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3
    SHX0_3 = pairs
    SHX1_3 = SHX18_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX7_3 = SHX5_3.uuid
      SHX6_3 = SHX31_1
      SHX6_3 = SHX6_3[SHX7_3]
      if not SHX6_3 then
        SHX6_3 = SHX5_3.vehicleName
      end
      SHX7_3 = SHX5_3.rentedBy
      SHX8_3 = SHX5_3.hoursLeft
      SHX9_3 = RageUI
      SHX9_3 = SHX9_3.ButtonWithStyle
      SHX10_3 = SHX6_3
      SHX11_3 = "Rented from "
      SHX12_3 = SHX7_3
      SHX13_3 = " - "
      SHX14_3 = SHX8_3
      SHX15_3 = " hours left!"
      SHX11_3 = SHX11_3 .. SHX12_3 .. SHX13_3 .. SHX14_3 .. SHX15_3
      SHX12_3 = {}
      SHX12_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX13_3 = true
      function SHX14_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX5_3
          SHX13_1 = SHX3_4
          SHX13_1.type = "rentingin"
        end
      end
      SHX15_3 = RMenu
      SHX16_3 = SHX15_3
      SHX15_3 = SHX15_3.Get
      SHX17_3 = "garages"
      SHX18_3 = "rentedinfo"
      SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX15_3(SHX16_3, SHX17_3, SHX18_3)
      SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
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
  SHX3_2 = "garages"
  SHX4_2 = "rentedinfo"
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
    SHX0_3 = SHX13_1.uuid
    SHX1_3 = SHX13_1.vehicleName
    SHX2_3 = SHX13_1.rentedBy
    SHX3_3 = SHX13_1.hoursLeft
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.Separator
    SHX5_3 = "~y~Rent Info"
    SHX4_3(SHX5_3)
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.Separator
    SHX5_3 = "---------"
    SHX4_3(SHX5_3)
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.Separator
    SHX5_3 = "Vehicle: "
    SHX6_3 = SHX1_3
    SHX5_3 = SHX5_3 .. SHX6_3
    SHX4_3(SHX5_3)
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.Separator
    SHX5_3 = "Rented from: "
    SHX6_3 = SHX2_3
    SHX5_3 = SHX5_3 .. SHX6_3
    SHX4_3(SHX5_3)
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.Separator
    SHX5_3 = "Hours Left: "
    SHX6_3 = SHX3_3
    SHX5_3 = SHX5_3 .. SHX6_3
    SHX4_3(SHX5_3)
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.ButtonWithStyle
    SHX5_3 = "Request Rent Cancellation"
    SHX6_3 = ""
    SHX7_3 = {}
    SHX7_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX8_3 = true
    function SHX9_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "3f4752da34"
        SHX5_4 = SHX1_3
        SHX6_4 = SHX0_3
        SHX7_4 = SHX13_1.type
        SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
      end
    end
    SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
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
  SHX3_2 = "garages"
  SHX4_2 = "paymentplaninfo"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = SHX23_1
    if not SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~y~Fetching information..."
      SHX0_3(SHX1_3)
      return
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Vehicle: "
    SHX2_3 = SHX23_1.vehicleName
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    SHX0_3 = SHX23_1.sellerUserId
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getClientUserId
    SHX1_3 = SHX1_3()
    SHX0_3 = SHX0_3 == SHX1_3
    if SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~y~Buying Player: "
      SHX3_3 = SHX23_1.buyerName
      SHX4_3 = " ("
      SHX5_3 = tostring
      SHX6_3 = SHX23_1.buyerUserId
      SHX5_3 = SHX5_3(SHX6_3)
      SHX6_3 = ")"
      SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3 .. SHX6_3
      SHX1_3(SHX2_3)
    else
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~y~Selling Player: "
      SHX3_3 = SHX23_1.sellerName
      SHX4_3 = " ("
      SHX5_3 = tostring
      SHX6_3 = SHX23_1.sellerUserId
      SHX5_3 = SHX5_3(SHX6_3)
      SHX6_3 = ")"
      SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3 .. SHX6_3
      SHX1_3(SHX2_3)
    end
    SHX1_3 = SHX23_1.hasPaidThisWeek
    if SHX1_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~g~The payment for this week is completed!"
      SHX1_3(SHX2_3)
    else
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~r~The payment for this week is outstanding."
      SHX1_3(SHX2_3)
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Total Price"
    SHX3_3 = "The total amount of money that has to be paid."
    SHX4_3 = {}
    SHX5_3 = "\194\163"
    SHX6_3 = getMoneyStringFormatted
    SHX7_3 = SHX23_1.totalPrice
    SHX6_3 = SHX6_3(SHX7_3)
    SHX5_3 = SHX5_3 .. SHX6_3
    SHX4_3.RightLabel = SHX5_3
    SHX5_3 = true
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Amount Paid"
    SHX3_3 = "The amount of money that has been paid so far."
    SHX4_3 = {}
    SHX5_3 = "\194\163"
    SHX6_3 = getMoneyStringFormatted
    SHX7_3 = SHX23_1.amountPaid
    SHX6_3 = SHX6_3(SHX7_3)
    SHX5_3 = SHX5_3 .. SHX6_3
    SHX4_3.RightLabel = SHX5_3
    SHX5_3 = true
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Weeks Remaining"
    SHX3_3 = "The amount of weeks left until the payment plan is paid off."
    SHX4_3 = {}
    SHX5_3 = tostring
    SHX6_3 = SHX23_1.weeksRemaining
    SHX5_3 = SHX5_3(SHX6_3)
    SHX6_3 = " week"
    SHX7_3 = SHX23_1.weeksRemaining
    if SHX7_3 > 1 then
      SHX7_3 = "s"
      if SHX7_3 then
        goto SHX_LABEL_107
      end
    end
    SHX7_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_107:: outside nested blocks until all 'goto SHX_LABEL_107' can see it
    ::SHX_LABEL_107::
    SHX5_3 = SHX5_3 .. SHX6_3 .. SHX7_3
    SHX4_3.RightLabel = SHX5_3
    SHX5_3 = true
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Missed Weeks Remaining"
    SHX3_3 = "The amount of weeks a missed payment is allowed."
    SHX4_3 = {}
    SHX5_3 = tostring
    SHX6_3 = SHX23_1.missedWeeksRemaining
    SHX5_3 = SHX5_3(SHX6_3)
    SHX6_3 = " week"
    SHX7_3 = SHX23_1.missedWeeksRemaining
    if SHX7_3 > 1 then
      SHX7_3 = "s"
      if SHX7_3 then
        goto SHX_LABEL_129
      end
    end
    SHX7_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_129:: outside nested blocks until all 'goto SHX_LABEL_129' can see it
    ::SHX_LABEL_129::
    SHX5_3 = SHX5_3 .. SHX6_3 .. SHX7_3
    SHX4_3.RightLabel = SHX5_3
    SHX5_3 = true
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Week Start Time"
    SHX3_3 = "The time that is considered the start of the week."
    SHX4_3 = {}
    SHX5_3 = SHX23_1.weekStartTime
    SHX4_3.RightLabel = SHX5_3
    SHX5_3 = true
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Last Payment Time"
    SHX3_3 = "The time the payment plan last had a payment."
    SHX4_3 = {}
    SHX5_3 = SHX23_1.lastPaymentTime
    SHX4_3.RightLabel = SHX5_3
    SHX5_3 = true
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Failed Return Date"
    SHX3_3 = "The time the vehicle would be returned if no further payments were made (within the hour)."
    SHX4_3 = {}
    SHX5_3 = SHX23_1.estimatedReturnDate
    SHX4_3.RightLabel = SHX5_3
    SHX5_3 = true
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    if not SHX0_3 then
      SHX1_3 = SHX23_1.hasPaidThisWeek
      if not SHX1_3 then
        SHX1_3 = RageUI
        SHX1_3 = SHX1_3.ButtonWithStyle
        SHX2_3 = "~g~Pay Debt This week"
        SHX3_3 = "You will make a payment of \194\163"
        SHX4_3 = getMoneyStringFormatted
        SHX5_3 = SHX23_1.amountPayThisWeek
        SHX4_3 = SHX4_3(SHX5_3)
        SHX5_3 = " this week."
        SHX3_3 = SHX3_3 .. SHX4_3 .. SHX5_3
        SHX4_3 = {}
        SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX5_3 = true
        function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX2_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "54e798dce5"
            SHX5_4 = SHX23_1.vehicleUUID
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      else
        SHX1_3 = RageUI
        SHX1_3 = SHX1_3.ButtonWithStyle
        SHX2_3 = "~y~Pay Week In Advance"
        SHX3_3 = "You will make a payment of \194\163"
        SHX4_3 = getMoneyStringFormatted
        SHX5_3 = SHX23_1.amountPayThisWeek
        SHX4_3 = SHX4_3(SHX5_3)
        SHX5_3 = " for the next week."
        SHX3_3 = SHX3_3 .. SHX4_3 .. SHX5_3
        SHX4_3 = {}
        SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX5_3 = true
        function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX2_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "54e798dce5"
            SHX5_4 = SHX23_1.vehicleUUID
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      end
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.ButtonWithStyle
      SHX2_3 = "~r~Request Payment Plan Cancellation"
      SHX3_3 = "~r~This will cancel the payment plan and return the vehicle back to the seller. You will not receive any money back from doing this."
      SHX4_3 = {}
      SHX5_3 = true
      function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "ce91f872d5"
          SHX5_4 = SHX23_1.vehicleUUID
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
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
  SHX3_2 = "garages"
  SHX4_2 = "listgarages"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
    SHX0_3 = SHX28_1.showCustomFoldersInGarageMenu
    if not SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "[Custom Folders]"
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
        
      end
      SHX6_3 = RMenu
      SHX7_3 = SHX6_3
      SHX6_3 = SHX6_3.Get
      SHX8_3 = "garages"
      SHX9_3 = "customfolders"
      SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
    else
      SHX0_3 = SHX81_1
      SHX0_3()
    end
    SHX0_3 = pairs
    SHX1_3 = SHX41_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX58_1
      SHX7_3 = SHX5_3.type
      SHX6_3 = SHX6_3(SHX7_3)
      if not SHX6_3 then
        SHX6_3 = SHX5_3.isGangGarage
        if not SHX6_3 then
          goto SHX_LABEL_53
        end
      end
      SHX6_3 = SHX10_1
      SHX7_3 = SHX5_3.class
      if SHX6_3 == SHX7_3 then
        SHX6_3 = RageUI
        SHX6_3 = SHX6_3.ButtonWithStyle
        SHX7_3 = SHX5_3.type
        SHX8_3 = ""
        SHX9_3 = {}
        SHX9_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX10_3 = true
        function SHX11_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4
          if SHX2_4 then
            SHX3_4 = SHX5_3
            SHX9_1 = SHX3_4
            SHX3_4 = nil
            SHX24_1 = SHX3_4
            SHX3_4 = CreateThread
            function SHX4_4()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_5, SHX1_5, SHX2_5, SHX3_5
              SHX0_5 = SHX5_3.type
              SHX1_5 = CMG
              SHX1_5 = SHX1_5.TriggerServerCallback
              SHX2_5 = "d189dbfff3"
              SHX3_5 = SHX0_5
              SHX1_5 = SHX1_5(SHX2_5, SHX3_5)
              SHX2_5 = SHX9_1
              if SHX2_5 then
                SHX2_5 = SHX9_1.type
                if SHX2_5 == SHX0_5 then
                  SHX11_1 = SHX1_5
                  SHX12_1 = SHX0_5
                end
              end
            end
            SHX3_4(SHX4_4)
          end
        end
        SHX12_3 = RMenu
        SHX13_3 = SHX12_3
        SHX12_3 = SHX12_3.Get
        SHX14_3 = "garages"
        SHX15_3 = "vehiclemenu"
        SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
        SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_53:: outside nested blocks until all 'goto SHX_LABEL_53' can see it
      ::SHX_LABEL_53::
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
  SHX3_2 = "garages"
  SHX4_2 = "customfolders"
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
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX81_1
    SHX0_3()
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
  SHX3_2 = "garages"
  SHX4_2 = "spawnmenu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3
    SHX0_3 = SHX9_1
    if SHX0_3 then
      SHX0_3 = SHX9_1.isGangGarage
    end
    if not SHX0_3 then
      SHX1_3 = SHX79_1
      SHX2_3 = SHX6_1
      SHX1_3 = SHX1_3(SHX2_3)
      if not SHX1_3 then
        SHX1_3 = RageUI
        SHX1_3 = SHX1_3.Visible
        SHX2_3 = RMenu
        SHX3_3 = SHX2_3
        SHX2_3 = SHX2_3.Get
        SHX4_3 = "garages"
        SHX5_3 = "mainmenu"
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
        SHX3_3 = true
        SHX1_3(SHX2_3, SHX3_3)
        return
      end
    end
    SHX1_3 = SHX7_1
    SHX3_3 = SHX6_1
    SHX2_3 = SHX36_1
    SHX2_3 = SHX2_3[SHX3_3]
    if SHX2_3 then
      SHX2_3 = SHX1_3
      SHX3_3 = " | "
      SHX4_3 = "Rarity (1:"
      SHX5_3 = tostring
      SHX7_3 = SHX6_1
      SHX6_3 = SHX36_1
      SHX6_3 = SHX6_3[SHX7_3]
      SHX5_3 = SHX5_3(SHX6_3)
      SHX6_3 = ")"
      SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3 .. SHX6_3
      SHX1_3 = SHX2_3
    end
    SHX3_3 = SHX8_1
    SHX2_3 = SHX37_1
    SHX2_3 = SHX2_3[SHX3_3]
    if SHX2_3 then
      SHX2_3 = SHX1_3
      SHX3_3 = " | Milage ("
      SHX4_3 = tostring
      SHX6_3 = SHX8_1
      SHX5_3 = SHX37_1
      SHX5_3 = SHX5_3[SHX6_3]
      SHX4_3 = SHX4_3(SHX5_3)
      SHX5_3 = " miles)"
      SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3
      SHX1_3 = SHX2_3
    end
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Spawn Vehicle"
    SHX4_3 = SHX1_3
    SHX5_3 = {}
    SHX5_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX6_3 = CMG
    SHX6_3 = SHX6_3.isInsideNoVehicleZone
    SHX6_3 = SHX6_3()
    SHX6_3 = not SHX6_3
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.getPlayerCombatTimer
        SHX3_4 = SHX3_4()
        if SHX3_4 > 0 then
          SHX3_4 = notify
          SHX4_4 = "~r~You can not spawn a vehicle with a combat timer."
          SHX3_4(SHX4_4)
          return
        end
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.isInCustomRace
        SHX3_4 = SHX3_4()
        if SHX3_4 then
          SHX3_4 = notify
          SHX4_4 = "~r~You can not spawn new vehicles in a race."
          SHX3_4(SHX4_4)
          return
        end
        SHX3_4 = pairs
        SHX4_4 = SHX16_1
        SHX3_4, SHX4_4, SHX5_4, SHX6_4 = SHX3_4(SHX4_4)
        for SHX7_4, SHX8_4 in SHX3_4, SHX4_4, SHX5_4, SHX6_4 do
          SHX9_4 = DoesEntityExist
          SHX10_4 = SHX8_4
          SHX9_4 = SHX9_4(SHX10_4)
          if not SHX9_4 then
            SHX9_4 = table
            SHX9_4 = SHX9_4.remove
            SHX10_4 = SHX16_1
            SHX11_4 = SHX7_4
            SHX9_4(SHX10_4, SHX11_4)
          end
        end
        SHX3_4 = SHX16_1
        SHX3_4 = #SHX3_4
        if SHX3_4 <= 5 then
          SHX3_4 = DeleteVehicle
          SHX4_4 = SHX14_1
          SHX3_4(SHX4_4)
          SHX3_4 = 0
          SHX14_1 = SHX3_4
          SHX3_4 = 0
          SHX15_1 = SHX3_4
          SHX3_4 = false
          SHX17_1 = SHX3_4
          SHX3_4 = DestroyCam
          SHX4_4 = SHX68_1
          SHX5_4 = false
          SHX3_4(SHX4_4, SHX5_4)
          SHX3_4 = RenderScriptCams
          SHX4_4 = false
          SHX5_4 = false
          SHX6_4 = 1
          SHX7_4 = true
          SHX8_4 = true
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
          SHX3_4 = 0
          SHX68_1 = SHX3_4
          SHX3_4 = SetFocusEntity
          SHX4_4 = GetPlayerPed
          SHX5_4 = PlayerId
          SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4 = SHX5_4()
          SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
          SHX3_4 = SetEntityAlpha
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = 255
          SHX6_4 = false
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          SHX3_4 = FreezeEntityPosition
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = false
          SHX3_4(SHX4_4, SHX5_4)
          SHX3_4 = SetEntityCollision
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = true
          SHX6_4 = true
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          SHX3_4 = Citizen
          SHX3_4 = SHX3_4.CreateThreadNow
          function SHX4_4()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_5, SHX1_5
            SHX0_5 = SHX86_1
            SHX1_5 = SHX8_1
            SHX0_5(SHX1_5)
          end
          SHX3_4(SHX4_4)
          SHX3_4 = SHX8_1
          SHX33_1 = SHX3_4
        else
          SHX3_4 = tCMG
          SHX3_4 = SHX3_4.notify
          SHX4_4 = "~r~You may only take out a maximum of 5 vehicles at a time."
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = SHX10_1
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.hasClientSkill
    SHX3_3 = "mechanic_remote_ls_customs"
    SHX2_3 = "vehicle" == SHX2_3 and SHX2_3
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.ButtonWithStyle
    SHX4_3 = "LS Customs"
    SHX5_3 = "(Skill Required)"
    SHX6_3 = {}
    SHX6_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX7_3 = SHX2_3 or SHX7_3
    if SHX2_3 then
      SHX7_3 = CMG
      SHX7_3 = SHX7_3.isInsideNoVehicleZone
      SHX7_3 = SHX7_3()
      SHX7_3 = not SHX7_3
    end
    function SHX8_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.getPlayerCombatTimer
        SHX3_4 = SHX3_4()
        if SHX3_4 > 0 then
          SHX3_4 = notify
          SHX4_4 = "~r~You can not spawn a vehicle with a combat timer."
          SHX3_4(SHX4_4)
          return
        end
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.isInCustomRace
        SHX3_4 = SHX3_4()
        if SHX3_4 then
          SHX3_4 = notify
          SHX4_4 = "~r~You can not spawn new vehicles in a race."
          SHX3_4(SHX4_4)
          return
        end
        SHX3_4 = pairs
        SHX4_4 = SHX16_1
        SHX3_4, SHX4_4, SHX5_4, SHX6_4 = SHX3_4(SHX4_4)
        for SHX7_4, SHX8_4 in SHX3_4, SHX4_4, SHX5_4, SHX6_4 do
          SHX9_4 = DoesEntityExist
          SHX10_4 = SHX8_4
          SHX9_4 = SHX9_4(SHX10_4)
          if not SHX9_4 then
            SHX9_4 = table
            SHX9_4 = SHX9_4.remove
            SHX10_4 = SHX16_1
            SHX11_4 = SHX7_4
            SHX9_4(SHX10_4, SHX11_4)
          end
        end
        SHX3_4 = SHX16_1
        SHX3_4 = #SHX3_4
        if SHX3_4 <= 5 then
          SHX3_4 = DeleteVehicle
          SHX4_4 = SHX14_1
          SHX3_4(SHX4_4)
          SHX3_4 = 0
          SHX14_1 = SHX3_4
          SHX3_4 = 0
          SHX15_1 = SHX3_4
          SHX3_4 = false
          SHX17_1 = SHX3_4
          SHX3_4 = DestroyCam
          SHX4_4 = SHX68_1
          SHX5_4 = false
          SHX3_4(SHX4_4, SHX5_4)
          SHX3_4 = RenderScriptCams
          SHX4_4 = false
          SHX5_4 = false
          SHX6_4 = 1
          SHX7_4 = true
          SHX8_4 = true
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
          SHX3_4 = 0
          SHX68_1 = SHX3_4
          SHX3_4 = SetFocusEntity
          SHX4_4 = GetPlayerPed
          SHX5_4 = PlayerId
          SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4 = SHX5_4()
          SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
          SHX3_4 = SetEntityAlpha
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = 255
          SHX6_4 = false
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          SHX3_4 = FreezeEntityPosition
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = false
          SHX3_4(SHX4_4, SHX5_4)
          SHX3_4 = SetEntityCollision
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = true
          SHX6_4 = true
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          SHX3_4 = Citizen
          SHX3_4 = SHX3_4.CreateThreadNow
          function SHX4_4()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_5, SHX1_5, SHX2_5
            SHX0_5 = SHX86_1
            SHX1_5 = SHX8_1
            SHX2_5 = {}
            SHX2_5.remoteLsCustoms = true
            SHX0_5(SHX1_5, SHX2_5)
          end
          SHX3_4(SHX4_4)
          SHX3_4 = SHX8_1
          SHX33_1 = SHX3_4
        else
          SHX3_4 = tCMG
          SHX3_4 = SHX3_4.notify
          SHX4_4 = "~r~You may only take out a maximum of 5 vehicles at a time."
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.ButtonWithStyle
    SHX4_3 = "Open Boot"
    SHX5_3 = SHX1_3
    SHX6_3 = {}
    SHX6_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX7_3 = CMG
    SHX7_3 = SHX7_3.isInGreenzone
    SHX7_3 = SHX7_3()
    function SHX8_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.getPlayerCombatTimer
        SHX3_4 = SHX3_4()
        if SHX3_4 > 0 then
          SHX3_4 = notify
          SHX4_4 = "~r~You can not open the boot with a combat timer."
          SHX3_4(SHX4_4)
          return
        end
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.isInCustomRace
        SHX3_4 = SHX3_4()
        if SHX3_4 then
          SHX3_4 = notify
          SHX4_4 = "~r~You can not open the boot in a race."
          SHX3_4(SHX4_4)
          return
        end
        SHX3_4 = SHX73_1
        SHX3_4 = SHX3_4()
        SHX4_4 = SHX8_1
        SHX3_4 = SHX3_4[SHX4_4]
        if SHX3_4 then
          SHX4_4 = DoesEntityExist
          SHX5_4 = SHX3_4[2]
          SHX4_4 = SHX4_4(SHX5_4)
          if SHX4_4 then
            SHX4_4 = notify
            SHX5_4 = "~r~You can not open the boot of a vehicle that is already out!"
            SHX4_4(SHX5_4)
            return
          end
        end
        SHX4_4 = CMG
        SHX4_4 = SHX4_4.setOpeningBootFromGarage
        SHX4_4()
        SHX4_4 = TriggerServerEvent
        SHX5_4 = "c28fbcd83a"
        SHX6_4 = SHX8_1
        SHX4_4(SHX5_4, SHX6_4)
      end
    end
    SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    if SHX0_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.hasGangPermission
      SHX4_3 = "removegarage"
      SHX3_3 = SHX3_3(SHX4_3)
      SHX4_3 = RageUI
      SHX4_3 = SHX4_3.ButtonWithStyle
      SHX5_3 = "Remove from Gang Garage"
      SHX6_3 = SHX1_3
      SHX7_3 = {}
      SHX7_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX8_3 = SHX3_3
      function SHX9_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = SHX3_3
          if SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "00689ace60"
            SHX5_4 = SHX8_1
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
      end
      SHX10_3 = RMenu
      SHX11_3 = SHX10_3
      SHX10_3 = SHX10_3.Get
      SHX12_3 = "garages"
      SHX13_3 = "spawnmenu"
      SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX10_3(SHX11_3, SHX12_3, SHX13_3)
      SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
    end
    if not SHX0_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.canVehicleBeSold
      SHX4_3 = SHX6_1
      SHX3_3 = SHX3_3(SHX4_3)
      if SHX3_3 then
        SHX3_3 = SHX52_1
        SHX4_3 = SHX8_1
        SHX3_3 = SHX3_3(SHX4_3)
        SHX3_3 = not SHX3_3
      end
      SHX4_3 = SHX52_1
      SHX5_3 = SHX8_1
      SHX4_3 = SHX4_3(SHX5_3)
      if SHX4_3 then
        SHX4_3 = SHX53_1
        if SHX4_3 then
          goto SHX_LABEL_147
        end
      end
      SHX4_3 = SHX1_3
      -- [FIX IF ERROR] Move ::SHX_LABEL_147:: outside nested blocks until all 'goto SHX_LABEL_147' can see it
      ::SHX_LABEL_147::
      SHX5_3 = RageUI
      SHX5_3 = SHX5_3.ButtonWithStyle
      SHX6_3 = "Sell Vehicle to Player"
      SHX7_3 = SHX4_3
      SHX8_3 = {}
      SHX8_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX9_3 = SHX3_3
      function SHX10_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = SHX3_3
          if SHX3_4 then
            SHX3_4 = CMG
            SHX3_4 = SHX3_4.displaySellDisclaimer
            SHX4_4 = "vehicle"
            function SHX5_4()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_5, SHX1_5, SHX2_5
              SHX0_5 = TriggerServerEvent
              SHX1_5 = "0d3561179d"
              SHX2_5 = SHX8_1
              SHX0_5(SHX1_5, SHX2_5)
            end
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
      end
      SHX11_3 = RMenu
      SHX12_3 = SHX11_3
      SHX11_3 = SHX11_3.Get
      SHX13_3 = "garages"
      SHX14_3 = "spawnmenu"
      SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX11_3(SHX12_3, SHX13_3, SHX14_3)
      SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
      SHX5_3 = RageUI
      SHX5_3 = SHX5_3.ButtonWithStyle
      SHX6_3 = "Rent Vehicle to Player"
      SHX7_3 = SHX1_3
      SHX8_3 = {}
      SHX8_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX9_3 = CMG
      SHX9_3 = SHX9_3.canVehicleBeRented
      SHX10_3 = SHX6_1
      SHX9_3 = SHX9_3(SHX10_3)
      function SHX10_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.canVehicleBeRented
          SHX4_4 = SHX6_1
          SHX3_4 = SHX3_4(SHX4_4)
          if SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "6cf393ee47"
            SHX5_4 = SHX8_1
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
      end
      SHX11_3 = RMenu
      SHX12_3 = SHX11_3
      SHX11_3 = SHX11_3.Get
      SHX13_3 = "garages"
      SHX14_3 = "spawnmenu"
      SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX11_3(SHX12_3, SHX13_3, SHX14_3)
      SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
      SHX5_3 = CMG
      SHX5_3 = SHX5_3.canVehicleBeRented
      SHX6_3 = SHX6_1
      SHX5_3 = SHX5_3(SHX6_3)
      if SHX5_3 then
        SHX5_3 = SHX52_1
        SHX6_3 = SHX8_1
        SHX5_3 = SHX5_3(SHX6_3)
        SHX5_3 = not SHX5_3
      end
      SHX6_3 = SHX52_1
      SHX7_3 = SHX8_1
      SHX6_3 = SHX6_3(SHX7_3)
      if SHX6_3 then
        SHX6_3 = SHX53_1
        if SHX6_3 then
          goto SHX_LABEL_199
        end
      end
      SHX6_3 = SHX1_3
      -- [FIX IF ERROR] Move ::SHX_LABEL_199:: outside nested blocks until all 'goto SHX_LABEL_199' can see it
      ::SHX_LABEL_199::
      SHX7_3 = RageUI
      SHX7_3 = SHX7_3.ButtonWithStyle
      SHX8_3 = "Payment Plan Vehicle to Player"
      SHX9_3 = SHX6_3
      SHX10_3 = {}
      SHX10_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX11_3 = SHX5_3
      function SHX12_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX13_3 = RMenu
      SHX14_3 = SHX13_3
      SHX13_3 = SHX13_3.Get
      SHX15_3 = "garages"
      SHX16_3 = "paymentplan"
      SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
      SHX7_3 = RageUI
      SHX7_3 = SHX7_3.ButtonWithStyle
      SHX8_3 = "Crush Vehicle"
      SHX9_3 = "This will ~r~DELETE ~w~this vehicle from your garage!"
      SHX10_3 = {}
      SHX10_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX11_3 = CMG
      SHX11_3 = SHX11_3.canVehicleBeSold
      SHX12_3 = SHX6_1
      SHX11_3 = SHX11_3(SHX12_3)
      function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
      end
      SHX13_3 = RMenu
      SHX14_3 = SHX13_3
      SHX13_3 = SHX13_3.Get
      SHX15_3 = "garages"
      SHX16_3 = "confirm"
      SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
      SHX7_3 = RageUI
      SHX7_3 = SHX7_3.ButtonWithStyle
      SHX8_3 = "Add to custom folder"
      SHX9_3 = SHX1_3
      SHX10_3 = {}
      SHX10_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX11_3 = true
      function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
        if SHX2_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.GetRageInputText
          SHX4_4 = "Enter folder name:"
          SHX3_4 = SHX3_4(SHX4_4)
          if SHX3_4 then
            SHX4_4 = CMG
            SHX4_4 = SHX4_4.addCarToCustomFolder
            SHX5_4 = SHX8_1
            SHX6_4 = SHX7_1
            SHX7_4 = SHX3_4
            SHX4_4(SHX5_4, SHX6_4, SHX7_4)
          end
        end
      end
      SHX13_3 = RMenu
      SHX14_3 = SHX13_3
      SHX13_3 = SHX13_3.Get
      SHX15_3 = "garages"
      SHX16_3 = "spawnmenu"
      SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
      SHX7_3 = RageUI
      SHX7_3 = SHX7_3.ButtonWithStyle
      SHX8_3 = "Remove from custom folder"
      SHX9_3 = SHX1_3
      SHX10_3 = {}
      SHX10_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX11_3 = true
      function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if SHX2_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.GetRageInputText
          SHX4_4 = "Enter folder name:"
          SHX3_4 = SHX3_4(SHX4_4)
          if SHX3_4 then
            SHX4_4 = CMG
            SHX4_4 = SHX4_4.removeCarFromCustomFolder
            SHX5_4 = SHX8_1
            SHX6_4 = SHX3_4
            SHX4_4(SHX5_4, SHX6_4)
          end
        end
      end
      SHX13_3 = RMenu
      SHX14_3 = SHX13_3
      SHX13_3 = SHX13_3.Get
      SHX15_3 = "garages"
      SHX16_3 = "spawnmenu"
      SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
      SHX7_3 = RageUI
      SHX7_3 = SHX7_3.ButtonWithStyle
      SHX8_3 = "Assign Custom Name"
      SHX9_3 = "Assigns a custom name for this vehicle that is only visible to you"
      SHX10_3 = {}
      SHX10_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX11_3 = true
      function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
        if SHX2_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.GetRageInputText
          SHX4_4 = "Enter custom name (blank to remove)"
          SHX3_4 = SHX3_4(SHX4_4)
          if SHX3_4 then
            SHX4_4 = #SHX3_4
            if SHX4_4 >= 2 then
              SHX5_4 = SHX8_1
              SHX4_4 = SHX31_1
              SHX4_4[SHX5_4] = SHX3_4
              SHX4_4 = notify
              SHX5_4 = "~g~Custom name set to "
              SHX6_4 = SHX3_4
              SHX7_4 = "."
              SHX5_4 = SHX5_4 .. SHX6_4 .. SHX7_4
              SHX4_4(SHX5_4)
          end
          else
            SHX5_4 = SHX8_1
            SHX4_4 = SHX31_1
            SHX4_4[SHX5_4] = nil
            SHX4_4 = notify
            SHX5_4 = "~g~Custom name removed."
            SHX4_4(SHX5_4)
          end
          SHX4_4 = SetResourceKvp
          SHX5_4 = "cmg_custom_vehicle_names"
          SHX6_4 = json
          SHX6_4 = SHX6_4.encode
          SHX7_4 = SHX31_1
          SHX6_4, SHX7_4 = SHX6_4(SHX7_4)
          SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        end
      end
      SHX13_3 = RMenu
      SHX14_3 = SHX13_3
      SHX13_3 = SHX13_3.Get
      SHX15_3 = "garages"
      SHX16_3 = "spawnmenu"
      SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
    end
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.ButtonWithStyle
    SHX4_3 = "View Remote Dashcam"
    SHX5_3 = SHX1_3
    SHX6_3 = {}
    SHX6_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX7_3 = true
    function SHX8_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "7444109bf3"
        SHX5_4 = SHX8_1
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.ButtonWithStyle
    SHX4_3 = "Display Vehicle Blip"
    SHX5_3 = SHX1_3
    SHX6_3 = {}
    SHX6_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX7_3 = true
    function SHX8_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "a30d55e751"
        SHX5_4 = SHX8_1
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    if not SHX0_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.hasGangPermission
      SHX4_3 = "addgarage"
      SHX3_3 = SHX3_3(SHX4_3)
      if SHX3_3 then
        SHX3_3 = CMG
        SHX3_3 = SHX3_3.canVehicleBeSold
        SHX4_3 = SHX6_1
        SHX3_3 = SHX3_3(SHX4_3)
        if SHX3_3 then
          SHX3_3 = CMG
          SHX3_3 = SHX3_3.canVehicleBeRented
          SHX4_3 = SHX6_1
          SHX3_3 = SHX3_3(SHX4_3)
          if SHX3_3 then
            SHX4_3 = SHX8_1
            SHX3_3 = SHX44_1
            SHX3_3 = SHX3_3[SHX4_3]
            SHX3_3 = not SHX3_3
          end
        end
      end
      SHX4_3 = RageUI
      SHX4_3 = SHX4_3.ButtonWithStyle
      SHX5_3 = "~p~Move to Gang Garage"
      SHX6_3 = SHX1_3
      SHX7_3 = {}
      SHX7_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX8_3 = SHX3_3
      function SHX9_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = SHX3_3
          if SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "987b362726"
            SHX5_4 = SHX8_1
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
      end
      SHX10_3 = RMenu
      SHX11_3 = SHX10_3
      SHX10_3 = SHX10_3.Get
      SHX12_3 = "garages"
      SHX13_3 = "spawnmenu"
      SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX10_3(SHX11_3, SHX12_3, SHX13_3)
      SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
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
  SHX3_2 = "garages"
  SHX4_2 = "paymentplan"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Vehicle: "
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.getVehicleNameFromId
    SHX3_3 = SHX6_1
    SHX2_3 = SHX2_3(SHX3_3)
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    function SHX0_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = SHX45_1
      SHX1_4 = SHX51_1
      SHX0_4 = SHX0_4 - SHX1_4
      return SHX0_4
    end
    function SHX1_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4
      SHX0_4 = SHX49_1
      if SHX0_4 then
        SHX0_4 = math
        SHX0_4 = SHX0_4.ceil
        SHX1_4 = SHX0_3
        SHX1_4 = SHX1_4()
        SHX2_4 = SHX46_1
        SHX1_4 = SHX1_4 / SHX2_4
        SHX0_4 = SHX0_4(SHX1_4)
        SHX47_1 = SHX0_4
      else
        SHX0_4 = math
        SHX0_4 = SHX0_4.ceil
        SHX1_4 = SHX0_3
        SHX1_4 = SHX1_4()
        SHX2_4 = SHX47_1
        SHX1_4 = SHX1_4 / SHX2_4
        SHX0_4 = SHX0_4(SHX1_4)
        SHX46_1 = SHX0_4
        SHX0_4 = SHX46_1
        if SHX0_4 > 26 then
          SHX0_4 = 1
          SHX46_1 = SHX0_4
          SHX0_4 = true
          SHX49_1 = SHX0_4
          SHX0_4 = SHX1_3
          SHX0_4()
        end
      end
    end
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Total Price"
    SHX4_3 = "The total amount of money that will have to be paid before ownership is transferred."
    SHX5_3 = {}
    SHX6_3 = "\194\163"
    SHX7_3 = getMoneyStringFormatted
    SHX8_3 = SHX45_1
    SHX7_3 = SHX7_3(SHX8_3)
    SHX6_3 = SHX6_3 .. SHX7_3
    SHX5_3.RightLabel = SHX6_3
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter Total Price"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if SHX1_5 then
            SHX2_5 = math
            SHX2_5 = SHX2_5.type
            SHX3_5 = SHX1_5
            SHX2_5 = SHX2_5(SHX3_5)
            if "integer" == SHX2_5 then
              SHX2_5 = 10000
              if SHX1_5 >= SHX2_5 then
                SHX2_5 = 10000000000
                if SHX1_5 <= SHX2_5 then
                  SHX45_1 = SHX1_5
                  SHX2_5 = math
                  SHX2_5 = SHX2_5.min
                  SHX3_5 = SHX51_1
                  SHX4_5 = math
                  SHX4_5 = SHX4_5.floor
                  SHX5_5 = SHX1_5 / 2
                  SHX4_5, SHX5_5 = SHX4_5(SHX5_5)
                  SHX2_5 = SHX2_5(SHX3_5, SHX4_5, SHX5_5)
                  SHX51_1 = SHX2_5
                  SHX2_5 = SHX1_3
                  SHX2_5()
              end
            end
          end
          else
            SHX2_5 = notify
            SHX3_5 = "~r~Total price must be a whole number between \194\16310,000 and \194\16310,000,000,000."
            SHX2_5(SHX3_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Weeks To Pay"
    SHX4_3 = "The amount of weeks the player has to pay off the plan. Automatically calculated if Pay Amount Per Week is set."
    SHX5_3 = {}
    SHX6_3 = tostring
    SHX7_3 = SHX46_1
    SHX6_3 = SHX6_3(SHX7_3)
    SHX7_3 = " week"
    SHX8_3 = SHX46_1
    if SHX8_3 > 1 then
      SHX8_3 = "s"
      if SHX8_3 then
        goto SHX_LABEL_44
      end
    end
    SHX8_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_44:: outside nested blocks until all 'goto SHX_LABEL_44' can see it
    ::SHX_LABEL_44::
    SHX6_3 = SHX6_3 .. SHX7_3 .. SHX8_3
    SHX5_3.RightLabel = SHX6_3
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter Weeks To Pay"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if SHX1_5 then
            SHX2_5 = math
            SHX2_5 = SHX2_5.type
            SHX3_5 = SHX1_5
            SHX2_5 = SHX2_5(SHX3_5)
            if "integer" == SHX2_5 and SHX1_5 >= 1 and SHX1_5 <= 26 then
              SHX46_1 = SHX1_5
              SHX2_5 = math
              SHX2_5 = SHX2_5.ceil
              SHX3_5 = SHX0_3
              SHX3_5 = SHX3_5()
              SHX3_5 = SHX3_5 / SHX1_5
              SHX2_5 = SHX2_5(SHX3_5)
              SHX47_1 = SHX2_5
              SHX2_5 = true
              SHX49_1 = SHX2_5
          end
          else
            SHX2_5 = notify
            SHX3_5 = "~r~Total amount of weeks must be a whole number between 1 week and 26 weeks."
            SHX2_5(SHX3_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Pay Amount Per Week"
    SHX4_3 = "The amount of money to pay each week. Automatically calculated if Weekly Pay Amount is set."
    SHX5_3 = {}
    SHX6_3 = "\194\163"
    SHX7_3 = getMoneyStringFormatted
    SHX8_3 = SHX47_1
    SHX7_3 = SHX7_3(SHX8_3)
    SHX6_3 = SHX6_3 .. SHX7_3
    SHX5_3.RightLabel = SHX6_3
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter Amount Per Week"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5, SHX7_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if SHX1_5 then
            SHX2_5 = math
            SHX2_5 = SHX2_5.type
            SHX3_5 = SHX1_5
            SHX2_5 = SHX2_5(SHX3_5)
            if "integer" == SHX2_5 then
              SHX2_5 = math
              SHX2_5 = SHX2_5.ceil
              SHX3_5 = SHX0_3
              SHX3_5 = SHX3_5()
              SHX3_5 = SHX3_5 / 26
              SHX2_5 = SHX2_5(SHX3_5)
              if SHX1_5 >= SHX2_5 then
                SHX2_5 = SHX0_3
                SHX2_5 = SHX2_5()
                if SHX1_5 <= SHX2_5 then
                  SHX47_1 = SHX1_5
                  SHX2_5 = math
                  SHX2_5 = SHX2_5.ceil
                  SHX3_5 = SHX0_3
                  SHX3_5 = SHX3_5()
                  SHX3_5 = SHX3_5 / SHX1_5
                  SHX2_5 = SHX2_5(SHX3_5)
                  SHX46_1 = SHX2_5
                  SHX2_5 = false
                  SHX49_1 = SHX2_5
              end
            end
          end
          else
            SHX2_5 = notify
            SHX3_5 = "~r~Pay amount per week must be a whole number between \194\163"
            SHX4_5 = getMoneyStringFormatted
            SHX5_5 = math
            SHX5_5 = SHX5_5.ceil
            SHX6_5 = SHX0_3
            SHX6_5 = SHX6_5()
            SHX6_5 = SHX6_5 / 26
            SHX5_5, SHX6_5, SHX7_5 = SHX5_5(SHX6_5)
            SHX4_5 = SHX4_5(SHX5_5, SHX6_5, SHX7_5)
            SHX5_5 = " and \194\163"
            SHX6_5 = getMoneyStringFormatted
            SHX7_5 = SHX0_3
            SHX7_5 = SHX7_5()
            SHX6_5 = SHX6_5(SHX7_5)
            SHX7_5 = "."
            SHX3_5 = SHX3_5 .. SHX4_5 .. SHX5_5 .. SHX6_5 .. SHX7_5
            SHX2_5(SHX3_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Maximum Missed Payments"
    SHX4_3 = "The maximum amount of missed payments in weeks allowed before the payment plan is automatically cancelled."
    SHX5_3 = {}
    SHX6_3 = tostring
    SHX7_3 = SHX48_1
    SHX6_3 = SHX6_3(SHX7_3)
    SHX7_3 = " week"
    SHX8_3 = SHX48_1
    if SHX8_3 > 1 then
      SHX8_3 = "s"
      if SHX8_3 then
        goto SHX_LABEL_81
      end
    end
    SHX8_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_81:: outside nested blocks until all 'goto SHX_LABEL_81' can see it
    ::SHX_LABEL_81::
    SHX6_3 = SHX6_3 .. SHX7_3 .. SHX8_3
    SHX5_3.RightLabel = SHX6_3
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter Maximum Missed Payments"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if SHX1_5 then
            SHX2_5 = math
            SHX2_5 = SHX2_5.type
            SHX3_5 = SHX1_5
            SHX2_5 = SHX2_5(SHX3_5)
            if "integer" == SHX2_5 and SHX1_5 >= 1 and SHX1_5 <= 4 then
              SHX48_1 = SHX1_5
          end
          else
            SHX2_5 = notify
            SHX3_5 = "~r~Total price must be a whole number between 1 week and 4 weeks."
            SHX2_5(SHX3_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Initial Deposit"
    SHX4_3 = "The amount that has to be paid when accepting the offer. Counts towards the total."
    SHX5_3 = {}
    SHX6_3 = "\194\163"
    SHX7_3 = getMoneyStringFormatted
    SHX8_3 = SHX51_1
    SHX7_3 = SHX7_3(SHX8_3)
    SHX6_3 = SHX6_3 .. SHX7_3
    SHX5_3.RightLabel = SHX6_3
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter Initial Deposit"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if SHX1_5 then
            SHX2_5 = math
            SHX2_5 = SHX2_5.type
            SHX3_5 = SHX1_5
            SHX2_5 = SHX2_5(SHX3_5)
            if "integer" == SHX2_5 and SHX1_5 >= 0 then
              SHX2_5 = SHX45_1
              SHX2_5 = SHX2_5 / 2
              if SHX1_5 <= SHX2_5 then
                SHX51_1 = SHX1_5
                SHX2_5 = SHX1_3
                SHX2_5()
            end
          end
          else
            SHX2_5 = notify
            SHX3_5 = "~r~Initial deposit must be a whole number between \194\1630 and \194\163"
            SHX4_5 = getMoneyStringFormatted
            SHX5_5 = math
            SHX5_5 = SHX5_5.floor
            SHX6_5 = SHX45_1
            SHX6_5 = SHX6_5 / 2
            SHX5_5, SHX6_5 = SHX5_5(SHX6_5)
            SHX4_5 = SHX4_5(SHX5_5, SHX6_5)
            SHX5_5 = "."
            SHX3_5 = SHX3_5 .. SHX4_5 .. SHX5_5
            SHX2_5(SHX3_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "~g~Submit To Nearby"
    SHX4_3 = ""
    SHX5_3 = {}
    SHX5_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "1fb9ace400"
        SHX5_4 = SHX8_1
        SHX6_4 = SHX45_1
        SHX7_4 = SHX46_1
        SHX8_4 = SHX48_1
        SHX9_4 = SHX51_1
        SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
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
  SHX3_2 = "garages"
  SHX4_2 = "paymentplanoffer"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = SHX50_1
    if not SHX0_3 then
      return
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Vehicle Offered: "
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.getVehicleNameFromId
    SHX3_3 = SHX50_1.vehicleId
    SHX2_3 = SHX2_3(SHX3_3)
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Total Price"
    SHX2_3 = "The total amount of money that you will have to be pay before ownership is transferred."
    SHX3_3 = {}
    SHX4_3 = "\194\163"
    SHX5_3 = getMoneyStringFormatted
    SHX6_3 = SHX50_1.totalPrice
    SHX5_3 = SHX5_3(SHX6_3)
    SHX4_3 = SHX4_3 .. SHX5_3
    SHX3_3.RightLabel = SHX4_3
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
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Weeks To Pay"
    SHX2_3 = "The amount of weeks you have to pay off the plan."
    SHX3_3 = {}
    SHX4_3 = tostring
    SHX5_3 = SHX50_1.numWeeks
    SHX4_3 = SHX4_3(SHX5_3)
    SHX5_3 = " week"
    SHX6_3 = SHX50_1.numWeeks
    if SHX6_3 > 1 then
      SHX6_3 = "s"
      if SHX6_3 then
        goto SHX_LABEL_46
      end
    end
    SHX6_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_46:: outside nested blocks until all 'goto SHX_LABEL_46' can see it
    ::SHX_LABEL_46::
    SHX4_3 = SHX4_3 .. SHX5_3 .. SHX6_3
    SHX3_3.RightLabel = SHX4_3
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
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = SHX50_1.totalPrice
    SHX1_3 = SHX50_1.initialDeposit
    SHX0_3 = SHX0_3 - SHX1_3
    SHX1_3 = math
    SHX1_3 = SHX1_3.ceil
    SHX2_3 = SHX50_1.numWeeks
    SHX2_3 = SHX0_3 / SHX2_3
    SHX1_3 = SHX1_3(SHX2_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Pay Amount Per Week"
    SHX4_3 = "The amount of money you have to pay each week."
    SHX5_3 = {}
    SHX6_3 = "\194\163"
    SHX7_3 = getMoneyStringFormatted
    SHX8_3 = SHX1_3
    SHX7_3 = SHX7_3(SHX8_3)
    SHX6_3 = SHX6_3 .. SHX7_3
    SHX5_3.RightLabel = SHX6_3
    SHX6_3 = true
    function SHX7_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Maximum Missed Payments"
    SHX4_3 = "The maximum amount of missed payments in weeks allowed before the payment plan is automatically cancelled."
    SHX5_3 = {}
    SHX6_3 = tostring
    SHX7_3 = SHX50_1.maxMissedWeeks
    SHX6_3 = SHX6_3(SHX7_3)
    SHX7_3 = " week"
    SHX8_3 = SHX50_1.maxMissedWeeks
    if SHX8_3 > 1 then
      SHX8_3 = "s"
      if SHX8_3 then
        goto SHX_LABEL_93
      end
    end
    SHX8_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_93:: outside nested blocks until all 'goto SHX_LABEL_93' can see it
    ::SHX_LABEL_93::
    SHX6_3 = SHX6_3 .. SHX7_3 .. SHX8_3
    SHX5_3.RightLabel = SHX6_3
    SHX6_3 = true
    function SHX7_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Initial Deposit"
    SHX4_3 = "The amount that has to be paid when accepting the offer. Counts towards the total."
    SHX5_3 = {}
    SHX6_3 = "\194\163"
    SHX7_3 = getMoneyStringFormatted
    SHX8_3 = SHX50_1.initialDeposit
    SHX7_3 = SHX7_3(SHX8_3)
    SHX6_3 = SHX6_3 .. SHX7_3
    SHX5_3.RightLabel = SHX6_3
    SHX6_3 = true
    function SHX7_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "~g~Accept Payment Plan"
    SHX4_3 = ""
    SHX5_3 = {}
    SHX5_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = nil
        SHX50_1 = SHX3_4
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "2c17720884"
        SHX3_4(SHX4_4)
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
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
  SHX3_2 = "garages"
  SHX4_2 = "vehiclemenu"
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
    SHX0_3 = SHX9_1
    if SHX0_3 then
      SHX0_3 = SHX9_1.isGangGarage
      if SHX0_3 then
        SHX0_3 = SHX9_1.gangId
        SHX1_3 = SHX43_1
        SHX1_3 = SHX1_3[SHX0_3]
        if SHX1_3 then
          SHX2_3 = table
          SHX2_3 = SHX2_3.count
          SHX3_3 = SHX1_3.vehicles
          if not SHX3_3 then
            SHX3_3 = {}
          end
          SHX2_3 = SHX2_3(SHX3_3)
          SHX3_3 = SHX1_3.maxSlots
          if not SHX3_3 then
            SHX3_3 = 0
          end
          if SHX2_3 >= SHX3_3 then
            SHX4_3 = RageUI
            SHX4_3 = SHX4_3.Separator
            SHX5_3 = string
            SHX5_3 = SHX5_3.format
            SHX6_3 = "~r~Gang Garage Slots: %d/%d"
            SHX7_3 = SHX2_3
            SHX8_3 = SHX3_3
            SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
            SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
          else
            SHX4_3 = RageUI
            SHX4_3 = SHX4_3.Separator
            SHX5_3 = string
            SHX5_3 = SHX5_3.format
            SHX6_3 = "~s~Gang Garage Slots: ~b~%d~s~/~b~%d"
            SHX7_3 = SHX2_3
            SHX8_3 = SHX3_3
            SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
            SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
          end
        end
    end
    else
      SHX0_3 = SHX9_1
      if SHX0_3 then
        SHX0_3 = SHX11_1
        if SHX0_3 then
          SHX0_3 = SHX12_1
          SHX1_3 = SHX9_1.type
          if SHX0_3 == SHX1_3 then
            SHX0_3 = SHX11_1.current
            SHX1_3 = SHX11_1.cap
            if SHX0_3 > SHX1_3 then
              SHX2_3 = RageUI
              SHX2_3 = SHX2_3.Separator
              SHX3_3 = string
              SHX3_3 = SHX3_3.format
              SHX4_3 = "~r~Unique Slots | %s: %d/%d"
              SHX5_3 = SHX9_1.type
              SHX6_3 = SHX0_3
              SHX7_3 = SHX1_3
              SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
              SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
            else
              SHX2_3 = RageUI
              SHX2_3 = SHX2_3.Separator
              SHX3_3 = string
              SHX3_3 = SHX3_3.format
              SHX4_3 = "~s~Unique Slots | %s: ~b~%d~s~/~b~%d"
              SHX5_3 = SHX9_1.type
              SHX6_3 = SHX0_3
              SHX7_3 = SHX1_3
              SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
              SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
            end
          end
        end
      end
    end
    SHX0_3 = SHX9_1
    if SHX0_3 then
      SHX0_3 = pairs
      SHX1_3 = SHX9_1.vehicles
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = SHX83_1
        SHX7_3 = SHX5_3
        SHX8_3 = false
        SHX6_3(SHX7_3, SHX8_3)
      end
    end
    SHX1_3 = SHX24_1
    SHX0_3 = SHX26_1
    SHX0_3 = SHX0_3[SHX1_3]
    if SHX0_3 then
      SHX1_3 = {}
      SHX2_3 = pairs
      SHX3_3 = SHX0_3
      SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
      for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
        SHX8_3 = tonumber
        SHX9_3 = SHX6_3
        SHX8_3 = SHX8_3(SHX9_3)
        SHX9_3 = SHX42_1
        SHX8_3 = SHX9_3[SHX8_3]
        if SHX8_3 then
          SHX9_3 = SHX79_1
          SHX10_3 = SHX8_3.vehicleId
          SHX9_3 = SHX9_3(SHX10_3)
          if SHX9_3 then
            SHX9_3 = table
            SHX9_3 = SHX9_3.insert
            SHX10_3 = SHX1_3
            SHX11_3 = {}
            SHX11_3.priority = SHX7_3
            SHX11_3.vehicleInfo = SHX8_3
            SHX9_3(SHX10_3, SHX11_3)
          end
        end
      end
      SHX2_3 = table
      SHX2_3 = SHX2_3.sort
      SHX3_3 = SHX1_3
      function SHX4_3(SHX0_4, SHX1_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX2_4, SHX3_4
        SHX2_4 = SHX0_4.priority
        SHX3_4 = SHX1_4.priority
        SHX2_4 = SHX2_4 > SHX3_4
        return SHX2_4
      end
      SHX2_3(SHX3_3, SHX4_3)
      SHX2_3 = pairs
      SHX3_3 = SHX1_3
      SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
      for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
        SHX8_3 = SHX83_1
        SHX9_3 = SHX7_3.vehicleInfo
        SHX10_3 = true
        SHX8_3(SHX9_3, SHX10_3)
      end
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
  SHX3_2 = "garages"
  SHX4_2 = "confirm"
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
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "No"
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
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = tCMG
        SHX3_4 = SHX3_4.notify
        SHX4_4 = "~y~Cancelled!"
        SHX3_4(SHX4_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "garages"
    SHX9_3 = "spawnmenu"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Yes"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = GetVehiclePedIsIn
        SHX4_4 = CMG
        SHX4_4 = SHX4_4.getPlayerPed
        SHX4_4 = SHX4_4()
        SHX5_4 = false
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
        SHX4_4 = DoesEntityExist
        SHX5_4 = SHX3_4
        SHX4_4 = SHX4_4(SHX5_4)
        if SHX4_4 then
          SHX4_4 = DeleteEntity
          SHX5_4 = SHX3_4
          SHX4_4(SHX5_4)
        end
        SHX4_4 = CMG
        SHX4_4 = SHX4_4.GetRageInputText
        SHX5_4 = "Please type CONFIRM in all caps to confirm the crushing of this vehicle"
        SHX4_4 = SHX4_4(SHX5_4)
        if "CONFIRM" == SHX4_4 then
          SHX4_4 = TriggerServerEvent
          SHX5_4 = "54472a6cb5"
          SHX6_4 = SHX8_1
          SHX4_4(SHX5_4, SHX6_4)
        else
          SHX4_4 = tCMG
          SHX4_4 = SHX4_4.notify
          SHX5_4 = "~r~Cancelled vehicle crush!"
          SHX4_4(SHX5_4)
        end
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "garages"
    SHX9_3 = "spawnmenu"
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
  SHX3_2 = "garages"
  SHX4_2 = "settings"
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
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Hide custom folder vehicles"
    SHX2_3 = "This hides these vehicles from their original garage."
    SHX3_3 = SHX28_1
    SHX4_3 = "hideCustomFolderVehiclesFromOriginalGarages"
    SHX3_3 = SHX3_3[SHX4_3]
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = SHX28_1
      SHX1_4 = "hideCustomFolderVehiclesFromOriginalGarages"
      SHX0_4[SHX1_4] = true
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.saveGarageSettings
      SHX0_4()
    end
    function SHX7_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = SHX28_1
      SHX1_4 = "hideCustomFolderVehiclesFromOriginalGarages"
      SHX0_4[SHX1_4] = false
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.saveGarageSettings
      SHX0_4()
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Show Custom Folders In Garage Menu"
    SHX2_3 = "~y~This removes the [Custom Folders] menu item, and puts custom folders in the root garages menu."
    SHX3_3 = SHX28_1.showCustomFoldersInGarageMenu
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX28_1.showCustomFoldersInGarageMenu = true
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.saveGarageSettings
      SHX0_4()
    end
    function SHX7_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX28_1.showCustomFoldersInGarageMenu = false
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.saveGarageSettings
      SHX0_4()
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "View All Vehicles"
    SHX2_3 = "View vehicles for the purpose of selling and renting."
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
    SHX8_3 = "garages"
    SHX9_3 = "viewall"
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
  SHX3_2 = "garages"
  SHX4_2 = "viewall"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3
    SHX0_3 = pairs
    SHX1_3 = SHX80_1
    SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX1_3()
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX5_3.info
      SHX7_3 = SHX6_3.uuid
      SHX6_3 = SHX31_1
      SHX6_3 = SHX6_3[SHX7_3]
      if not SHX6_3 then
        SHX6_3 = SHX5_3.info
        SHX6_3 = SHX6_3.name
      end
      SHX7_3 = RageUI
      SHX7_3 = SHX7_3.ButtonWithStyle
      SHX8_3 = SHX6_3
      SHX9_3 = ""
      SHX10_3 = {}
      SHX10_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX11_3 = true
      function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX5_3.uuid
          SHX8_1 = SHX3_4
          SHX3_4 = SHX5_3.info
          SHX3_4 = SHX3_4.vehicleId
          SHX6_1 = SHX3_4
        end
      end
      SHX13_3 = RMenu
      SHX14_3 = SHX13_3
      SHX13_3 = SHX13_3.Get
      SHX15_3 = "garages"
      SHX16_3 = "rentonlymenu"
      SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
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
  SHX3_2 = "garages"
  SHX4_2 = "rentonlymenu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.canVehicleBeSold
    SHX1_3 = SHX6_1
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = SHX52_1
      SHX1_3 = SHX8_1
      SHX0_3 = SHX0_3(SHX1_3)
      SHX0_3 = not SHX0_3
    end
    SHX1_3 = SHX52_1
    SHX2_3 = SHX8_1
    SHX1_3 = SHX1_3(SHX2_3)
    if SHX1_3 then
      SHX1_3 = SHX53_1
      if SHX1_3 then
        goto SHX_LABEL_20
      end
    end
    SHX1_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
    ::SHX_LABEL_20::
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Sell Vehicle to Player"
    SHX4_3 = SHX1_3
    SHX5_3 = {}
    SHX5_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX6_3 = SHX0_3
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4
      if SHX2_4 then
        SHX3_4 = SHX0_3
        if SHX3_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "0d3561179d"
          SHX5_4 = SHX8_1
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
    end
    SHX8_3 = RMenu
    SHX9_3 = SHX8_3
    SHX8_3 = SHX8_3.Get
    SHX10_3 = "garages"
    SHX11_3 = "viewall"
    SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Rent Vehicle to Player"
    SHX4_3 = ""
    SHX5_3 = {}
    SHX5_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX6_3 = CMG
    SHX6_3 = SHX6_3.canVehicleBeRented
    SHX7_3 = SHX6_1
    SHX6_3 = SHX6_3(SHX7_3)
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.canVehicleBeRented
        SHX4_4 = SHX6_1
        SHX3_4 = SHX3_4(SHX4_4)
        if SHX3_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "6cf393ee47"
          SHX5_4 = SHX8_1
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
    end
    SHX8_3 = RMenu
    SHX9_3 = SHX8_3
    SHX8_3 = SHX8_3.Get
    SHX10_3 = "garages"
    SHX11_3 = "viewall"
    SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.canVehicleBeRented
    SHX3_3 = SHX6_1
    SHX2_3 = SHX2_3(SHX3_3)
    if SHX2_3 then
      SHX2_3 = SHX52_1
      SHX3_3 = SHX8_1
      SHX2_3 = SHX2_3(SHX3_3)
      SHX2_3 = not SHX2_3
    end
    SHX3_3 = SHX52_1
    SHX4_3 = SHX8_1
    SHX3_3 = SHX3_3(SHX4_3)
    if SHX3_3 then
      SHX3_3 = SHX53_1
      if SHX3_3 then
        goto SHX_LABEL_72
      end
    end
    SHX3_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_72:: outside nested blocks until all 'goto SHX_LABEL_72' can see it
    ::SHX_LABEL_72::
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.ButtonWithStyle
    SHX5_3 = "Payment Plan Vehicle to Player"
    SHX6_3 = SHX3_3
    SHX7_3 = {}
    SHX7_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX8_3 = SHX2_3
    function SHX9_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX10_3 = RMenu
    SHX11_3 = SHX10_3
    SHX10_3 = SHX10_3.Get
    SHX12_3 = "garages"
    SHX13_3 = "paymentplan"
    SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX10_3(SHX11_3, SHX12_3, SHX13_3)
    SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
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
SHX87_1(SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX87_1 = RMenu
SHX87_1 = SHX87_1.Add
SHX88_1 = "disclaimer"
SHX89_1 = "main"
SHX90_1 = RageUI
SHX90_1 = SHX90_1.CreateMenu
SHX91_1 = ""
SHX92_1 = "~b~Terms And Conditions"
SHX93_1 = CMG
SHX93_1 = SHX93_1.getRageUIMenuWidth
SHX93_1 = SHX93_1()
SHX94_1 = CMG
SHX94_1 = SHX94_1.getRageUIMenuHeight
SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX94_1()
SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX90_1(SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX87_1(SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX87_1 = CMG
function SHX88_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = false
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  SHX4_2 = RageUI
  SHX4_2 = SHX4_2.Visible
  SHX5_2 = RMenu
  SHX6_2 = SHX5_2
  SHX5_2 = SHX5_2.Get
  SHX7_2 = "disclaimer"
  SHX8_2 = "main"
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  while true do
    SHX4_2 = RageUI
    SHX4_2 = SHX4_2.Visible
    SHX5_2 = RMenu
    SHX6_2 = SHX5_2
    SHX5_2 = SHX5_2.Get
    SHX7_2 = "disclaimer"
    SHX8_2 = "main"
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    if not SHX4_2 or SHX2_2 then
      break
    end
    SHX4_2 = math
    SHX4_2 = SHX4_2.floor
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX3_2
    SHX5_2 = SHX5_2 / 1000
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = math
    SHX5_2 = SHX5_2.max
    SHX6_2 = 0
    SHX7_2 = 3
    SHX7_2 = SHX7_2 - SHX4_2
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX6_2 = RageUI
    SHX6_2 = SHX6_2.IsVisible
    SHX7_2 = RMenu
    SHX8_2 = SHX7_2
    SHX7_2 = SHX7_2.Get
    SHX9_2 = "disclaimer"
    SHX10_2 = "main"
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX8_2 = true
    SHX9_2 = true
    SHX10_2 = true
    function SHX11_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~y~Terms of selling the "
      SHX2_3 = SHX0_2
      SHX3_3 = ":"
      SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
      SHX0_3(SHX1_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "Any agreements made between you and the buyer are not covered by CMG"
      SHX0_3(SHX1_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "You forfeit any right to claim the "
      SHX2_3 = SHX0_2
      SHX3_3 = " back after payment"
      SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
      SHX0_3(SHX1_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "You agree the buyer has full discretion over the "
      SHX2_3 = SHX0_2
      SHX3_3 = " hereafter"
      SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
      SHX0_3(SHX1_3)
      SHX0_3 = SHX5_2
      if SHX0_3 > 0 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = "~r~I agree to the above"
        SHX2_3 = ""
        SHX3_3 = {}
        SHX4_3 = tostring
        SHX5_3 = SHX5_2
        SHX4_3 = SHX4_3(SHX5_3)
        SHX3_3.RightLabel = SHX4_3
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
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      else
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = "~g~I agree to the above"
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
          
          local SHX3_4
          if SHX2_4 then
            SHX3_4 = true
            SHX2_2 = SHX3_4
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      end
    end
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  if SHX2_2 then
    SHX4_2 = SHX1_2
    SHX4_2()
  else
    SHX4_2 = notify
    SHX5_2 = "~r~Sell ended as you did not agree to the terms."
    SHX4_2(SHX5_2)
  end
end
SHX87_1.displaySellDisclaimer = SHX88_1
SHX87_1 = tCMG
function SHX88_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if SHX0_2 then
    SHX1_2 = DecorExistOn
    SHX2_2 = SHX0_2
    SHX3_2 = "ac76c9d452"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = DecorGetInt
      SHX2_2 = SHX0_2
      SHX3_2 = "ac76c9d452"
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getVehicleIdFromModel
      SHX3_2 = GetEntityModel
      SHX4_2 = SHX0_2
      SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX3_2 = SHX1_2
        SHX4_2 = SHX2_2
        return SHX3_2, SHX4_2
      end
    end
  end
end
SHX87_1.getVehicleInfos = SHX88_1
SHX87_1 = tCMG
function SHX88_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getObjectId
  SHX2_2 = SHX0_2
  SHX3_2 = "tCMG.getNetworkedVehicleInfos"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX2_2 = DecorExistOn
    SHX3_2 = SHX1_2
    SHX4_2 = "ac76c9d452"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = DecorGetInt
      SHX3_2 = SHX1_2
      SHX4_2 = "ac76c9d452"
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getVehicleIdFromModel
      SHX4_2 = GetEntityModel
      SHX5_2 = SHX1_2
      SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = DecorGetInt
      SHX5_2 = SHX1_2
      SHX6_2 = "0a6cf607ed"
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX3_2 and SHX4_2 > 0 then
        SHX5_2 = SHX2_2
        SHX6_2 = SHX3_2
        SHX7_2 = SHX4_2
        return SHX5_2, SHX6_2, SHX7_2
      end
    end
  end
end
SHX87_1.getNetworkedVehicleInfos = SHX88_1
function SHX87_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX3_2 = 0
  SHX4_2 = GetNumModColors
  SHX5_2 = SHX0_2
  SHX6_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2 - 1
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SetVehicleModColor_1
    SHX8_2 = SHX2_2
    SHX9_2 = SHX0_2
    SHX10_2 = SHX6_2
    SHX11_2 = 0
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX7_2 = GetVehicleColours
    SHX8_2 = SHX2_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 == SHX1_2 then
      return
    end
  end
  SHX3_2 = GetVehicleColours
  SHX4_2 = SHX2_2
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
  SHX5_2 = SetVehicleColours
  SHX6_2 = SHX2_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
end
function SHX88_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = 0
  SHX4_2 = GetNumModColors
  SHX5_2 = SHX0_2
  SHX6_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2 - 1
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SetVehicleModColor_2
    SHX8_2 = SHX2_2
    SHX9_2 = SHX0_2
    SHX10_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = GetVehicleColours
    SHX8_2 = SHX2_2
    SHX7_2, SHX8_2 = SHX7_2(SHX8_2)
    if SHX8_2 == SHX1_2 then
      return
    end
  end
  SHX3_2 = SetVehicleColours
  SHX4_2 = SHX2_2
  SHX5_2 = GetVehicleColours
  SHX6_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX89_1 = CMG
function SHX90_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = 0
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.chrome
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SHX87_1
      SHX10_2 = 5
      SHX11_2 = tonumber
      SHX12_2 = SHX7_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = SHX1_2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.classic
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SHX87_1
      SHX10_2 = 0
      SHX11_2 = tonumber
      SHX12_2 = SHX7_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = SHX1_2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.matte
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SHX87_1
      SHX10_2 = 3
      SHX11_2 = tonumber
      SHX12_2 = SHX7_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = SHX1_2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.metals
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SHX87_1
      SHX10_2 = 4
      SHX11_2 = tonumber
      SHX12_2 = SHX7_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = SHX1_2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.metallic
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SHX87_1
      SHX10_2 = 1
      SHX11_2 = tonumber
      SHX12_2 = SHX7_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = SHX1_2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.util
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = tonumber
      SHX10_2 = SHX7_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX2_2 = SHX9_2 or SHX2_2
      if not SHX9_2 then
        SHX2_2 = 0
      end
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.chameleon
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = tonumber
      SHX10_2 = SHX7_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX2_2 = SHX9_2 or SHX2_2
      if not SHX9_2 then
        SHX2_2 = 0
      end
    end
  end
  SHX3_2 = SHX0_2.primaryrgb
  if SHX3_2 then
    SHX4_2 = SHX3_2.blue
    if SHX4_2 then
      SHX4_2 = SHX3_2.red
      if SHX4_2 then
        SHX4_2 = SHX3_2.green
        if SHX4_2 then
          SHX4_2 = SHX3_2.active
          if SHX4_2 then
            SHX4_2 = SetVehicleCustomPrimaryColour
            SHX5_2 = SHX1_2
            SHX6_2 = SHX3_2.red
            SHX7_2 = SHX3_2.green
            SHX8_2 = SHX3_2.blue
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        end
      end
    end
  end
  elseif 0 ~= SHX2_2 then
    SHX4_2 = GetVehicleColours
    SHX5_2 = SHX1_2
    SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
    SHX6_2 = SetVehicleColours
    SHX7_2 = SHX1_2
    SHX8_2 = SHX2_2
    SHX9_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  end
end
SHX89_1.applyPrimaryVehicleColours = SHX90_1
SHX89_1 = CMG
function SHX90_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = 0
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.chrome2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SHX88_1
      SHX10_2 = 5
      SHX11_2 = tonumber
      SHX12_2 = SHX7_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = SHX1_2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.classic2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SHX88_1
      SHX10_2 = 0
      SHX11_2 = tonumber
      SHX12_2 = SHX7_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = SHX1_2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.matte2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SHX88_1
      SHX10_2 = 3
      SHX11_2 = tonumber
      SHX12_2 = SHX7_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = SHX1_2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.metal2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SHX88_1
      SHX10_2 = 4
      SHX11_2 = tonumber
      SHX12_2 = SHX7_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = SHX1_2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.metallic2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SHX88_1
      SHX10_2 = 1
      SHX11_2 = tonumber
      SHX12_2 = SHX7_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = SHX1_2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
  end
  if 0 ~= SHX2_2 then
    SHX3_2 = GetVehicleColours
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SetVehicleColours
    SHX5_2 = SHX1_2
    SHX6_2 = SHX3_2
    SHX7_2 = SHX2_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX89_1.applySecondaryVehicleColours = SHX90_1
function SHX89_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = {}
  SHX3_2 = 0
  SHX4_2 = 49
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = GetVehicleMod
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 >= 0 then
      SHX8_2 = GetModTextLabel
      SHX9_2 = SHX0_2
      SHX10_2 = SHX6_2
      SHX11_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      if SHX8_2 then
        SHX9_2 = table
        SHX9_2 = SHX9_2.insert
        SHX10_2 = SHX2_2
        SHX11_2 = SHX8_2
        SHX9_2(SHX10_2, SHX11_2)
        if SHX1_2 then
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.drawDebugText
          SHX10_2 = "VMT: %s Index: %s Name: %s"
          SHX11_2 = SHX6_2
          SHX12_2 = SHX7_2
          SHX13_2 = SHX8_2
          SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        end
      end
    end
  end
  if not SHX1_2 then
    SHX3_2 = #SHX2_2
    if SHX3_2 > 0 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getVehicleIdFromModel
      SHX4_2 = GetEntityModel
      SHX5_2 = SHX0_2
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX4_2(SHX5_2)
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      if SHX3_2 then
        SHX4_2 = TriggerServerEvent
        SHX5_2 = "02b1617ec9"
        SHX6_2 = SHX3_2
        SHX7_2 = SHX2_2
        SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      end
    end
  end
end
SHX90_1 = tCMG
function SHX91_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.windowtint
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWindowTint
      SHX10_2 = SHX2_2
      SHX11_2 = tonumber
      SHX12_2 = SHX7_2
      SHX11_2 = SHX11_2(SHX12_2)
      if not SHX11_2 then
        SHX11_2 = 0
      end
      SHX9_2(SHX10_2, SHX11_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = SetVehicleModKit
  SHX4_2 = SHX2_2
  SHX5_2 = 0
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.sportwheels
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 0
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 23
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.musclewheels
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 1
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 23
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.lowriderwheels
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 2
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 23
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.highendwheels
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 7
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 23
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.suvwheels
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 3
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 23
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.offroadwheels
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 4
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 23
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.tunerwheels
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 6
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 23
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.bennysonewheels
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 8
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 23
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.bennystwowheels
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 9
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 23
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.openwheels
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 10
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 23
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.streetwheels
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 11
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 23
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.trackwheels
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 12
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 23
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.frontwheel
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 6
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 23
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = GetVehicleModVariation
      SHX14_2 = SHX2_2
      SHX15_2 = 23
      SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.backwheel
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleWheelType
      SHX10_2 = SHX2_2
      SHX11_2 = 6
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.setVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 24
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = GetVehicleModVariation
      SHX14_2 = SHX2_2
      SHX15_2 = 24
      SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.wheelaccessories
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 and "[0,0,0]" ~= SHX7_2 then
      SHX9_2 = SetVehicleModKit
      SHX10_2 = SHX2_2
      SHX11_2 = 0
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = ToggleVehicleMod
      SHX10_2 = SHX2_2
      SHX11_2 = 20
      SHX12_2 = true
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX10_2 = SHX7_2
      SHX9_2 = SHX7_2.gsub
      SHX11_2 = "%["
      SHX12_2 = ""
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX7_2 = SHX9_2
      SHX10_2 = SHX7_2
      SHX9_2 = SHX7_2.gsub
      SHX11_2 = "]"
      SHX12_2 = ""
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX7_2 = SHX9_2
      SHX9_2 = stringsplit
      SHX10_2 = SHX7_2
      SHX11_2 = ","
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX10_2 = SetVehicleTyreSmokeColor
      SHX11_2 = SHX2_2
      SHX12_2 = tonumber
      SHX13_2 = SHX9_2[1]
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX13_2 = tonumber
      SHX14_2 = SHX9_2[2]
      SHX13_2 = SHX13_2(SHX14_2)
      if not SHX13_2 then
        SHX13_2 = 0
      end
      SHX14_2 = tonumber
      SHX15_2 = SHX9_2[3]
      SHX14_2 = SHX14_2(SHX15_2)
      if not SHX14_2 then
        SHX14_2 = 0
      end
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    end
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.applyPrimaryVehicleColours
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.applySecondaryVehicleColours
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.pearlescent
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = GetVehicleExtraColours
      SHX10_2 = SHX2_2
      SHX9_2, SHX10_2 = SHX9_2(SHX10_2)
      SHX11_2 = SetVehicleExtraColours
      SHX12_2 = SHX2_2
      SHX13_2 = tonumber
      SHX14_2 = SHX7_2
      SHX13_2 = SHX13_2(SHX14_2)
      if not SHX13_2 then
        SHX13_2 = 0
      end
      SHX14_2 = SHX10_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.wheelcolor
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = SetVehicleExtraColours
      SHX10_2 = SHX2_2
      SHX11_2 = GetVehicleExtraColours
      SHX12_2 = SHX2_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0
      end
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = 0
  SHX4_2 = pairs
  SHX5_2 = SHX0_2.interiorcolour
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    if true == SHX9_2 then
      SHX10_2 = tonumber
      SHX11_2 = SHX8_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX3_2 = SHX10_2 or SHX3_2
      if not SHX10_2 then
        SHX3_2 = 0
      end
    end
  end
  SHX4_2 = SetVehicleInteriorColor
  SHX5_2 = SHX2_2
  SHX6_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = 0
  SHX5_2 = pairs
  SHX6_2 = SHX0_2.dashboardcolour
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    if true == SHX10_2 then
      SHX11_2 = tonumber
      SHX12_2 = SHX9_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX4_2 = SHX11_2 or SHX4_2
      if not SHX11_2 then
        SHX4_2 = 0
      end
    end
  end
  SHX5_2 = SetVehicleDashboardColor
  SHX6_2 = SHX2_2
  SHX7_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = GetVehiclePedIsIn
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerPed
  SHX6_2 = SHX6_2()
  SHX7_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX2_2 = SHX5_2
  SHX5_2 = SetVehicleModKit
  SHX6_2 = SHX2_2
  SHX7_2 = 0
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = 0
  SHX6_2 = 48
  SHX7_2 = 1
  for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = tostring
    SHX10_2 = "mod_"
    SHX11_2 = SHX8_2
    SHX10_2 = SHX10_2 .. SHX11_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX9_2 = SHX0_2[SHX9_2]
    if nil ~= SHX9_2 then
      SHX9_2 = pairs
      SHX10_2 = tostring
      SHX11_2 = "mod_"
      SHX12_2 = SHX8_2
      SHX11_2 = SHX11_2 .. SHX12_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX10_2 = SHX0_2[SHX10_2]
      SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
      for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
        if true == SHX14_2 then
          SHX15_2 = Wait
          SHX16_2 = 0
          SHX15_2(SHX16_2)
          SHX15_2 = tonumber
          SHX16_2 = SHX13_2
          SHX15_2 = SHX15_2(SHX16_2)
          if 18 == SHX8_2 then
            SHX16_2 = ToggleVehicleMod
            SHX17_2 = SHX2_2
            SHX18_2 = 18
            SHX19_2 = true
            SHX16_2(SHX17_2, SHX18_2, SHX19_2)
          elseif 22 == SHX8_2 then
            SHX16_2 = ToggleVehicleMod
            SHX17_2 = SHX2_2
            SHX18_2 = 22
            SHX19_2 = SHX15_2 > 0
            SHX16_2(SHX17_2, SHX18_2, SHX19_2)
          else
            SHX16_2 = CMG
            SHX16_2 = SHX16_2.setVehicleMod
            SHX17_2 = SHX2_2
            SHX18_2 = SHX8_2
            SHX19_2 = SHX15_2 or SHX19_2
            if not SHX15_2 then
              SHX19_2 = 0
            end
            SHX20_2 = false
            SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2)
          end
        end
      end
    end
  end
  SHX5_2 = Wait
  SHX6_2 = 0
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.setVehicleIdNitro
  SHX6_2 = SHX1_2
  SHX7_2 = SHX0_2.nitro
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = pairs
  SHX6_2 = SHX0_2.antilag
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    if true == SHX10_2 then
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.setVehicleAntiLag
      SHX12_2 = SHX1_2
      SHX13_2 = tonumber
      SHX14_2 = SHX9_2
      SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX13_2(SHX14_2)
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    end
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.setVehicleIdDriftSuspension
  SHX6_2 = SHX1_2
  SHX7_2 = SHX0_2.driftsuspension
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = pairs
  SHX6_2 = SHX0_2.driftsmoke
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    if true == SHX10_2 then
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.setVehicleIdDriftSmoke
      SHX12_2 = SHX1_2
      SHX13_2 = tonumber
      SHX14_2 = SHX9_2
      SHX13_2 = SHX13_2(SHX14_2)
      if not SHX13_2 then
        SHX13_2 = 0
      end
      SHX11_2(SHX12_2, SHX13_2)
    end
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.setVehicleIdPlaneSmoke
  SHX6_2 = SHX2_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX0_2.planesmokes
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.setVehicleIdBiometricLock
  SHX6_2 = SHX2_2
  SHX7_2 = SHX0_2.security
  SHX8_2 = SHX0_2.biometric_users
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.setVehicleIdStancer
  SHX6_2 = SHX2_2
  SHX7_2 = SHX0_2.stancer
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = Wait
  SHX6_2 = 0
  SHX5_2(SHX6_2)
  SHX5_2 = pcall
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SetVehicleNumberPlateText
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getPlayerVehicle
    SHX1_3 = SHX1_3()
    SHX2_3 = SHX0_2.vehicle_plate
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    SHX6_2 = print
    SHX7_2 = "Failed to set the licence plate of your vehicle, please report to a developer. Plate:"
    SHX8_2 = SHX0_2.vehicle_plate
    SHX6_2(SHX7_2, SHX8_2)
  end
  SHX6_2 = Wait
  SHX7_2 = 0
  SHX6_2(SHX7_2)
  SHX6_2 = pairs
  SHX7_2 = SHX0_2.sounds
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    if true == SHX11_2 then
      SHX12_2 = CMG
      SHX12_2 = SHX12_2.getVehicleSoundNameFromId
      SHX13_2 = tonumber
      SHX14_2 = SHX10_2
      SHX13_2 = SHX13_2(SHX14_2)
      if not SHX13_2 then
        SHX13_2 = 0
      end
      SHX12_2 = SHX12_2(SHX13_2)
      SHX13_2 = GetVehiclePedIsIn
      SHX14_2 = CMG
      SHX14_2 = SHX14_2.getPlayerPed
      SHX14_2 = SHX14_2()
      SHX15_2 = false
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX14_2 = ForceVehicleEngineAudio
      SHX15_2 = SHX13_2
      SHX16_2 = SHX12_2
      SHX14_2(SHX15_2, SHX16_2)
      SHX14_2 = SetTimeout
      SHX15_2 = 500
      function SHX16_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3
        SHX0_3 = SetVehicleRadioEnabled
        SHX1_3 = SHX13_2
        SHX2_3 = false
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = SetVehRadioStation
        SHX1_3 = SHX13_2
        SHX2_3 = "OFF"
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX14_2(SHX15_2, SHX16_2)
      SHX14_2 = DecorSetInt
      SHX15_2 = SHX13_2
      SHX16_2 = "6939027d97"
      SHX17_2 = tonumber
      SHX18_2 = SHX10_2
      SHX17_2 = SHX17_2(SHX18_2)
      if not SHX17_2 then
        SHX17_2 = 0
      end
      SHX14_2(SHX15_2, SHX16_2, SHX17_2)
    end
  end
  SHX6_2 = Wait
  SHX7_2 = 0
  SHX6_2(SHX7_2)
  SHX6_2 = pairs
  SHX7_2 = SHX0_2.bulletproof_tires
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    if true == SHX11_2 then
      SHX12_2 = DecorSetBool
      SHX13_2 = GetVehiclePedIsIn
      SHX14_2 = CMG
      SHX14_2 = SHX14_2.getPlayerPed
      SHX14_2 = SHX14_2()
      SHX15_2 = false
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX14_2 = "bb6df5797c"
      SHX15_2 = true
      SHX12_2(SHX13_2, SHX14_2, SHX15_2)
    end
  end
  SHX6_2 = Wait
  SHX7_2 = 0
  SHX6_2(SHX7_2)
  SHX6_2 = pairs
  SHX7_2 = SHX0_2.plate_colour
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    if true == SHX11_2 then
      SHX12_2 = SetVehicleNumberPlateTextIndex
      SHX13_2 = GetVehiclePedIsIn
      SHX14_2 = CMG
      SHX14_2 = SHX14_2.getPlayerPed
      SHX14_2 = SHX14_2()
      SHX15_2 = false
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX14_2 = tonumber
      SHX15_2 = SHX10_2
      SHX14_2 = SHX14_2(SHX15_2)
      if not SHX14_2 then
        SHX14_2 = 0
      end
      SHX12_2(SHX13_2, SHX14_2)
    end
  end
  SHX6_2 = Wait
  SHX7_2 = 0
  SHX6_2(SHX7_2)
  SHX6_2 = pairs
  SHX7_2 = SHX0_2.neonlayout
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = tonumber
    SHX13_2 = SHX10_2
    SHX12_2 = SHX12_2(SHX13_2)
    if true == SHX11_2 and SHX12_2 and SHX12_2 > 0 then
      if 1 == SHX12_2 then
        SHX13_2 = SetVehicleNeonLightEnabled
        SHX14_2 = SHX2_2
        SHX15_2 = 0
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SetVehicleNeonLightEnabled
        SHX14_2 = SHX2_2
        SHX15_2 = 1
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SetVehicleNeonLightEnabled
        SHX14_2 = SHX2_2
        SHX15_2 = 2
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SetVehicleNeonLightEnabled
        SHX14_2 = SHX2_2
        SHX15_2 = 3
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      elseif 2 == SHX12_2 then
        SHX13_2 = SetVehicleNeonLightEnabled
        SHX14_2 = SHX2_2
        SHX15_2 = 2
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SetVehicleNeonLightEnabled
        SHX14_2 = SHX2_2
        SHX15_2 = 3
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      elseif 3 == SHX12_2 then
        SHX13_2 = SetVehicleNeonLightEnabled
        SHX14_2 = SHX2_2
        SHX15_2 = 0
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SetVehicleNeonLightEnabled
        SHX14_2 = SHX2_2
        SHX15_2 = 1
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SetVehicleNeonLightEnabled
        SHX14_2 = SHX2_2
        SHX15_2 = 2
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      elseif 4 == SHX12_2 then
        SHX13_2 = SetVehicleNeonLightEnabled
        SHX14_2 = SHX2_2
        SHX15_2 = 0
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SetVehicleNeonLightEnabled
        SHX14_2 = SHX2_2
        SHX15_2 = 1
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SetVehicleNeonLightEnabled
        SHX14_2 = SHX2_2
        SHX15_2 = 3
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      end
      SHX13_2 = SHX0_2.neoncolour
      if SHX13_2 then
        SHX13_2 = pairs
        SHX14_2 = SHX0_2.neoncolour
        SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX13_2(SHX14_2)
        for SHX17_2, SHX18_2 in SHX13_2, SHX14_2, SHX15_2, SHX16_2 do
          if true == SHX18_2 then
            SHX19_2 = table
            SHX19_2 = SHX19_2.unpack
            SHX20_2 = SHX1_1.neonColours
            SHX20_2 = SHX20_2[SHX17_2]
            SHX19_2, SHX20_2, SHX21_2 = SHX19_2(SHX20_2)
            SHX22_2 = SetVehicleNeonLightsColour
            SHX23_2 = GetVehiclePedIsIn
            SHX24_2 = CMG
            SHX24_2 = SHX24_2.getPlayerPed
            SHX24_2 = SHX24_2()
            SHX25_2 = false
            SHX23_2 = SHX23_2(SHX24_2, SHX25_2)
            SHX24_2 = SHX19_2
            SHX25_2 = SHX20_2
            SHX26_2 = SHX21_2
            SHX22_2(SHX23_2, SHX24_2, SHX25_2, SHX26_2)
          end
        end
      end
    end
  end
  SHX6_2 = Wait
  SHX7_2 = 0
  SHX6_2(SHX7_2)
  SHX6_2 = pairs
  SHX7_2 = SHX0_2.xenonlights
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    if true == SHX11_2 then
      SHX12_2 = SetVehicleXenonLightsColor
      SHX13_2 = GetVehiclePedIsIn
      SHX14_2 = CMG
      SHX14_2 = SHX14_2.getPlayerPed
      SHX14_2 = SHX14_2()
      SHX15_2 = false
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX14_2 = tonumber
      SHX15_2 = SHX10_2
      SHX14_2 = SHX14_2(SHX15_2)
      if not SHX14_2 then
        SHX14_2 = 0
      end
      SHX12_2(SHX13_2, SHX14_2)
    end
  end
  SHX6_2 = Wait
  SHX7_2 = 0
  SHX6_2(SHX7_2)
  SHX6_2 = pairs
  SHX7_2 = SHX0_2.liveries
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    if true == SHX11_2 then
      SHX12_2 = SetVehicleLivery
      SHX13_2 = GetVehiclePedIsIn
      SHX14_2 = CMG
      SHX14_2 = SHX14_2.getPlayerPed
      SHX14_2 = SHX14_2()
      SHX15_2 = false
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX14_2 = tonumber
      SHX15_2 = SHX10_2
      SHX14_2 = SHX14_2(SHX15_2)
      if not SHX14_2 then
        SHX14_2 = 0
      end
      SHX12_2(SHX13_2, SHX14_2)
    end
  end
  SHX6_2 = Wait
  SHX7_2 = 0
  SHX6_2(SHX7_2)
  SHX6_2 = pairs
  SHX7_2 = SHX0_2.extras
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    if true == SHX11_2 then
      SHX12_2 = SetVehicleExtra
      SHX13_2 = GetVehiclePedIsIn
      SHX14_2 = CMG
      SHX14_2 = SHX14_2.getPlayerPed
      SHX14_2 = SHX14_2()
      SHX15_2 = false
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX14_2 = tonumber
      SHX15_2 = SHX10_2
      SHX14_2 = SHX14_2(SHX15_2)
      if not SHX14_2 then
        SHX14_2 = 0
      end
      SHX15_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2)
    elseif false == SHX11_2 then
      SHX12_2 = SetVehicleExtra
      SHX13_2 = GetVehiclePedIsIn
      SHX14_2 = CMG
      SHX14_2 = SHX14_2.getPlayerPed
      SHX14_2 = SHX14_2()
      SHX15_2 = false
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX14_2 = tonumber
      SHX15_2 = SHX10_2
      SHX14_2 = SHX14_2(SHX15_2)
      if not SHX14_2 then
        SHX14_2 = 0
      end
      SHX15_2 = true
      SHX12_2(SHX13_2, SHX14_2, SHX15_2)
    end
  end
  SHX6_2 = Wait
  SHX7_2 = 0
  SHX6_2(SHX7_2)
  SHX6_2 = SHX42_1
  SHX6_2 = SHX6_2[SHX1_2]
  if SHX6_2 then
    SHX6_2 = SHX42_1
    SHX6_2 = SHX6_2[SHX1_2]
    SHX7_2 = SHX0_2.fuel
    SHX6_2.fuel = SHX7_2
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerVehicle
  SHX6_2 = SHX6_2()
  SHX7_2 = SHX89_1
  SHX8_2 = SHX6_2
  SHX9_2 = false
  SHX7_2(SHX8_2, SHX9_2)
end
SHX90_1.applyModsOnVehicle = SHX91_1
SHX90_1 = CMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX35_1
  SHX1_2 = SHX1_2[SHX0_2]
  return SHX1_2
end
SHX90_1.getVehicleSoundNameFromId = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX73_1
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SetVehicleHasBeenOwnedByPlayer
    SHX3_2 = SHX1_2[2]
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX1_2[2]
    SHX2_2(SHX3_2)
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    SHX3_2 = "Vehicle stored."
    SHX2_2(SHX3_2)
  end
end
SHX90_1.despawnGarageVehicle = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPosition
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX1_2.x
  SHX3_2 = SHX1_2.y
  SHX4_2 = SHX1_2.z
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerPed
  SHX5_2 = SHX5_2()
  SHX6_2 = IsPedSittingInAnyVehicle
  SHX7_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2)
  if SHX6_2 then
    SHX6_2 = GetVehiclePedIsIn
    SHX7_2 = SHX5_2
    SHX8_2 = true
    return SHX6_2(SHX7_2, SHX8_2)
  else
    SHX6_2 = GetClosestVehicle
    SHX7_2 = SHX2_2 + 1.0E-4
    SHX8_2 = SHX3_2 + 1.0E-4
    SHX9_2 = SHX4_2 + 1.0E-4
    SHX10_2 = SHX0_2 + 1.0E-4
    SHX11_2 = 0
    SHX12_2 = 12295
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = IsEntityAVehicle
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if not SHX7_2 then
      SHX7_2 = GetClosestVehicle
      SHX8_2 = SHX2_2 + 1.0E-4
      SHX9_2 = SHX3_2 + 1.0E-4
      SHX10_2 = SHX4_2 + 1.0E-4
      SHX11_2 = SHX0_2 + 1.0E-4
      SHX12_2 = 0
      SHX13_2 = 7
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX6_2 = SHX7_2
    end
    SHX7_2 = IsEntityAVehicle
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if not SHX7_2 then
      SHX7_2 = GetClosestVehicle
      SHX8_2 = SHX2_2 + 1.0E-4
      SHX9_2 = SHX3_2 + 1.0E-4
      SHX10_2 = SHX4_2 + 1.0E-4
      SHX11_2 = SHX0_2 + 1.0E-4
      SHX12_2 = 0
      SHX13_2 = 16384
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX6_2 = SHX7_2
    end
    if 0 == SHX6_2 then
      SHX7_2 = GetVehiclePedIsIn
      SHX8_2 = SHX5_2
      SHX9_2 = true
      return SHX7_2(SHX8_2, SHX9_2)
    else
      return SHX6_2
    end
  end
end
SHX90_1.getNearestVehicle = SHX91_1
SHX90_1 = CMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = 100
  SHX3_2 = 100
  SHX4_2 = pairs
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getAllVehicles
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2()
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = GetEntityCoords
    SHX11_2 = SHX9_2
    SHX10_2 = SHX10_2(SHX11_2)
    SHX11_2 = SHX1_2 - SHX10_2
    SHX11_2 = #SHX11_2
    if SHX3_2 > SHX11_2 then
      SHX3_2 = SHX11_2
      SHX2_2 = SHX9_2
    end
  end
  if SHX0_2 >= SHX3_2 then
    return SHX2_2
  else
    SHX4_2 = 0
    return SHX4_2
  end
end
SHX90_1.getClosestVehicle = SHX91_1
SHX90_1 = CMG
function SHX91_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX2_2 = 0
  SHX3_2 = 1000000.0
  SHX4_2 = -1
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerCoords
  SHX5_2 = SHX5_2()
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getClosestVehicle
  SHX7_2 = SHX0_2
  SHX6_2 = SHX6_2(SHX7_2)
  if 0 ~= SHX6_2 then
    SHX7_2 = GetEntityModel
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = GetVehicleModelNumberOfSeats
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 > 0 then
      SHX9_2 = -1
      SHX10_2 = SHX8_2 - 2
      SHX11_2 = 1
      for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
        SHX13_2 = GetPedInVehicleSeat
        SHX14_2 = SHX6_2
        SHX15_2 = SHX12_2
        SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
        if 0 ~= SHX13_2 then
          SHX14_2 = GetPedBoneIndex
          SHX15_2 = SHX13_2
          SHX16_2 = 0
          SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
          if SHX14_2 > -1 then
            SHX15_2 = GetWorldPositionOfEntityBone
            SHX16_2 = SHX13_2
            SHX17_2 = SHX14_2
            SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
            if SHX1_2 then
              SHX16_2 = SHX5_2.xy
              SHX17_2 = SHX15_2.xy
              SHX16_2 = SHX16_2 - SHX17_2
              SHX16_2 = #SHX16_2
              if SHX16_2 then
                goto SHX_LABEL_54
              end
            end
            SHX16_2 = SHX5_2 - SHX15_2
            SHX16_2 = #SHX16_2
            -- [FIX IF ERROR] Move ::SHX_LABEL_54:: outside nested blocks until all 'goto SHX_LABEL_54' can see it
            ::SHX_LABEL_54::
            if SHX3_2 > SHX16_2 then
              SHX2_2 = SHX13_2
              SHX3_2 = SHX16_2
              SHX4_2 = SHX12_2
            end
          end
        end
      end
    end
  end
  SHX7_2 = SHX6_2
  SHX8_2 = SHX2_2
  SHX9_2 = SHX4_2
  SHX10_2 = SHX3_2
  return SHX7_2, SHX8_2, SHX9_2, SHX10_2
end
SHX90_1.getClosestVehicleIncludingPed = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.getNearestVehicle
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = IsEntityAVehicle
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = SetVehicleFixed
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
end
SHX90_1.fixeNearestVehicle = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.getNearestVehicle
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = IsEntityAVehicle
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = SetVehicleOnGroundProperly
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
end
SHX90_1.replaceNearestVehicle = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX0_2 + 1.0E-4
  SHX1_2 = SHX1_2 + 1.0E-4
  SHX2_2 = SHX2_2 + 1.0E-4
  SHX3_2 = _ENV
  SHX4_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  SHX3_2 = SHX3_2[SHX4_2]
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2 + 4
  SHX10_2 = 10
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.getPlayerPed
  SHX11_2 = SHX11_2()
  SHX12_2 = 0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = GetShapeTestResult
  SHX5_2 = SHX3_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2)
  return SHX8_2
end
SHX90_1.getVehicleAtPosition = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = nil
  SHX2_2 = nil
  SHX3_2 = nil
  SHX4_2 = GetEntityCoords
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerPed
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX5_2()
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = pairs
  SHX6_2 = SHX73_1
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX6_2()
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = GetEntityCoords
    SHX12_2 = SHX10_2[2]
    SHX13_2 = true
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = SHX11_2 - SHX4_2
    SHX11_2 = #SHX11_2
    SHX12_2 = SHX0_2 + 1.0E-4
    if SHX11_2 <= SHX12_2 and (not SHX1_2 or SHX1_2 > SHX11_2) then
      SHX1_2 = SHX11_2
      SHX2_2 = SHX9_2
      SHX3_2 = SHX10_2[2]
    end
  end
  if SHX2_2 then
    SHX5_2 = DecorGetInt
    SHX6_2 = SHX3_2
    SHX7_2 = "ac76c9d452"
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX6_2 = true
    SHX7_2 = SHX2_2
    SHX8_2 = SHX5_2
    return SHX6_2, SHX7_2, SHX8_2
  end
  SHX5_2 = false
  return SHX5_2
end
SHX90_1.getNearestOwnedVehicle = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = nil
  SHX2_2 = nil
  SHX3_2 = pairs
  SHX4_2 = SHX73_1
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX4_2()
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = GetEntityCoords
    SHX10_2 = SHX8_2[2]
    SHX11_2 = true
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX10_2 = GetEntityCoords
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.getPlayerPed
    SHX11_2 = SHX11_2()
    SHX10_2 = SHX10_2(SHX11_2)
    SHX9_2 = SHX9_2 - SHX10_2
    SHX9_2 = #SHX9_2
    SHX10_2 = SHX0_2 + 1.0E-4
    if SHX9_2 <= SHX10_2 and (not SHX1_2 or SHX1_2 > SHX9_2) then
      SHX1_2 = SHX9_2
      SHX2_2 = SHX7_2
    end
  end
  if SHX2_2 then
    SHX3_2 = true
    SHX4_2 = SHX2_2
    return SHX3_2, SHX4_2
  end
  SHX3_2 = false
  return SHX3_2
end
SHX90_1.getCurrentOwnedVehicle = SHX91_1
SHX90_1 = tCMG
function SHX91_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = pairs
  SHX1_2 = SHX73_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX1_2()
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = IsEntityAVehicle
    SHX7_2 = SHX5_2[2]
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = table
      SHX6_2 = SHX6_2.unpack
      SHX7_2 = GetEntityCoords
      SHX8_2 = SHX5_2[2]
      SHX9_2 = true
      SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX7_2(SHX8_2, SHX9_2)
      SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX9_2 = true
      SHX10_2 = SHX6_2
      SHX11_2 = SHX7_2
      SHX12_2 = SHX8_2
      return SHX9_2, SHX10_2, SHX11_2, SHX12_2
    end
  end
  SHX0_2 = false
  SHX1_2 = 0
  SHX2_2 = 0
  SHX3_2 = 0
  return SHX0_2, SHX1_2, SHX2_2, SHX3_2
end
SHX90_1.getAnyOwnedVehiclePosition = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX73_1
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = 0
  SHX3_2 = 0
  SHX4_2 = 0
  if SHX1_2 then
    SHX5_2 = table
    SHX5_2 = SHX5_2.unpack
    SHX6_2 = GetEntityCoords
    SHX7_2 = SHX1_2[2]
    SHX8_2 = true
    SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX4_2 = SHX7_2
    SHX3_2 = SHX6_2
    SHX2_2 = SHX5_2
  end
  SHX5_2 = SHX2_2
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2
  return SHX5_2, SHX6_2, SHX7_2
end
SHX90_1.getOwnedVehiclePosition = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX73_1
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX1_2[2]
    return SHX2_2
  end
end
SHX90_1.getOwnedVehicleHandle = SHX91_1
SHX90_1 = tCMG
function SHX91_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = IsPedSittingInAnyVehicle
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = GetVehiclePedIsIn
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.inEvent
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      SHX2_2 = TaskLeaveVehicle
      SHX3_2 = SHX0_2
      SHX4_2 = SHX1_2
      SHX5_2 = 4160
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    end
  end
end
SHX90_1.ejectVehicle = SHX91_1
SHX90_1 = tCMG
function SHX91_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = IsPedSittingInAnyVehicle
  SHX2_2 = SHX0_2
  return SHX1_2(SHX2_2)
end
SHX90_1.isInVehicle = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX73_1
  SHX2_2 = SHX2_2()
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX3_2 = SetVehicleDoorOpen
    SHX4_2 = SHX2_2[2]
    SHX5_2 = SHX1_2
    SHX6_2 = false
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX90_1.vc_openDoor = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX73_1
  SHX2_2 = SHX2_2()
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX3_2 = SetVehicleDoorShut
    SHX4_2 = SHX2_2[2]
    SHX5_2 = SHX1_2
    SHX6_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX90_1.vc_closeDoor = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX73_1
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = DetachVehicleFromTrailer
    SHX3_2 = SHX1_2[2]
    SHX2_2(SHX3_2)
  end
end
SHX90_1.vc_detachTrailer = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX73_1
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = GetEntityAttachedToTowTruck
    SHX3_2 = SHX1_2[2]
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = IsEntityAVehicle
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = DetachVehicleFromTowTruck
      SHX4_2 = SHX1_2[2]
      SHX5_2 = SHX2_2
      SHX3_2(SHX4_2, SHX5_2)
    end
  end
end
SHX90_1.vc_detachTowTruck = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX73_1
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = GetVehicleAttachedToCargobob
    SHX3_2 = SHX1_2[2]
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = IsEntityAVehicle
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = DetachVehicleFromCargobob
      SHX4_2 = SHX1_2[2]
      SHX5_2 = SHX2_2
      SHX3_2(SHX4_2, SHX5_2)
    end
  end
end
SHX90_1.vc_detachCargobob = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX73_1
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = GetIsVehicleEngineRunning
    SHX3_2 = SHX1_2[2]
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = SetVehicleEngineOn
    SHX4_2 = SHX1_2[2]
    SHX5_2 = not SHX2_2
    SHX6_2 = true
    SHX7_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    if SHX2_2 then
      SHX3_2 = SetVehicleUndriveable
      SHX4_2 = SHX1_2[2]
      SHX5_2 = true
      SHX3_2(SHX4_2, SHX5_2)
    else
      SHX3_2 = SetVehicleUndriveable
      SHX4_2 = SHX1_2[2]
      SHX5_2 = false
      SHX3_2(SHX4_2, SHX5_2)
    end
  end
end
SHX90_1.vc_toggleEngine = SHX91_1
SHX90_1 = tCMG
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX73_1
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX1_2[2]
    SHX3_2 = GetVehicleDoorLockStatus
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX3_2 = SHX3_2 >= 2
    SHX4_2 = NetworkGetNetworkIdFromEntity
    SHX5_2 = SHX2_2
    SHX4_2 = SHX4_2(SHX5_2)
    if 0 == SHX4_2 then
      SHX5_2 = tCMG
      SHX5_2 = SHX5_2.notify
      SHX6_2 = "~r~Failed to get ownership of vehicle to lock/unlock."
      SHX5_2(SHX6_2)
    else
      SHX5_2 = tCMG
      SHX5_2 = SHX5_2.notify
      SHX6_2 = "Vehicle "
      if SHX3_2 then
        SHX7_2 = "unlocked"
        if SHX7_2 then
          goto SHX_LABEL_33
        end
      end
      SHX7_2 = "locked"
      -- [FIX IF ERROR] Move ::SHX_LABEL_33:: outside nested blocks until all 'goto SHX_LABEL_33' can see it
      ::SHX_LABEL_33::
      SHX8_2 = "."
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
      SHX5_2(SHX6_2)
      SHX5_2 = NetworkHasControlOfEntity
      SHX6_2 = SHX2_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = TriggerEvent
        SHX6_2 = "126d6c2d61"
        SHX7_2 = SHX4_2
        SHX8_2 = not SHX3_2
        SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      else
        SHX5_2 = TriggerServerEvent
        SHX6_2 = "126d6c2d61"
        SHX7_2 = SHX4_2
        SHX8_2 = not SHX3_2
        SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      end
    end
  end
end
SHX90_1.vc_toggleLock = SHX91_1
SHX90_1 = RegisterNetEvent
SHX91_1 = "126d6c2d61"
function SHX92_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = NetworkDoesNetworkIdExist
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_2 = NetworkGetEntityFromNetworkId
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = NetworkHasControlOfEntity
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    return
  end
  if SHX1_2 then
    SHX3_2 = SetVehicleDoorsLocked
    SHX4_2 = SHX2_2
    SHX5_2 = 2
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = SetVehicleDoorsLockedForAllPlayers
    SHX4_2 = SHX2_2
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
  else
    SHX3_2 = SetVehicleDoorsLockedForAllPlayers
    SHX4_2 = SHX2_2
    SHX5_2 = false
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = SetVehicleDoorsLocked
    SHX4_2 = SHX2_2
    SHX5_2 = 1
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = SetVehicleDoorsLockedForPlayer
    SHX4_2 = SHX2_2
    SHX5_2 = PlayerId
    SHX5_2 = SHX5_2()
    SHX6_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX90_1(SHX91_1, SHX92_1)
SHX90_1 = RegisterNetEvent
SHX91_1 = "d105efe483"
function SHX92_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = IsPedInAnyVehicle
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = GetVehiclePedIsIn
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX2_2 = SetVehicleEngineHealth
    SHX3_2 = SHX1_2
    SHX4_2 = 9999
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SetVehiclePetrolTankHealth
    SHX3_2 = SHX1_2
    SHX4_2 = 9999
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SetVehicleFixed
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
end
SHX90_1(SHX91_1, SHX92_1)
SHX90_1 = RegisterNetEvent
SHX91_1 = "53092b8739"
function SHX92_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = IsPedInAnyVehicle
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = GetVehiclePedIsIn
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX2_2 = SetVehicleEngineHealth
    SHX3_2 = SHX1_2
    SHX4_2 = 9999
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SetVehiclePetrolTankHealth
    SHX3_2 = SHX1_2
    SHX4_2 = 9999
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SetVehicleFixed
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
end
SHX90_1(SHX91_1, SHX92_1)
SHX90_1 = RegisterCommand
SHX91_1 = "callanambulance"
function SHX92_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.notify
  SHX1_2 = "~y~CALL AN AMBULANCE"
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.notify
  SHX1_2 = "~y~CALL AN AMBULANCE!"
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.notify
  SHX1_2 = "~r~BUT NOT FOR ME."
  SHX0_2(SHX1_2)
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.transactionType = "callanambulance"
  SHX0_2(SHX1_2)
end
SHX93_1 = false
SHX90_1(SHX91_1, SHX92_1, SHX93_1)
function SHX90_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "superadmin.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = true
    return SHX0_2
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "admin.spawncar"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isPurge
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = true
      return SHX0_2
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "admin.eventbucket"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getEventBucketId
    SHX0_2 = SHX0_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerBucket
    SHX1_2 = SHX1_2()
    if SHX0_2 == SHX1_2 then
      SHX0_2 = true
      return SHX0_2
    end
  end
  SHX0_2 = false
  return SHX0_2
end
SHX91_1 = RegisterCommand
SHX92_1 = "car"
function SHX93_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = SHX90_1
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX2_2 = GetEntityCoords
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerPed
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2()
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX3_2 = vector3
    SHX4_2 = -1341.9575195313
    SHX5_2 = -3032.8686523438
    SHX6_2 = 13.944421768188
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX4_2 = SHX1_2[1]
    if nil == SHX4_2 then
      SHX5_2 = tCMG
      SHX5_2 = SHX5_2.notify
      SHX6_2 = "~r~No vehicle spawncode specified."
      SHX5_2(SHX6_2)
      return
    end
    if "vwpolo" == SHX4_2 then
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getClientUserId
      SHX5_2 = SHX5_2()
      if 1 ~= SHX5_2 then
        SHX5_2 = tCMG
        SHX5_2 = SHX5_2.teleport
        SHX6_2 = -807.62481689453
        SHX7_2 = 172.82191467285
        SHX8_2 = 76.740547180176
        SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    end
    else
      SHX5_2 = string
      SHX5_2 = SHX5_2.lower
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if "lloydzlego" ~= SHX5_2 then
        SHX5_2 = string
        SHX5_2 = SHX5_2.lower
        SHX6_2 = SHX4_2
        SHX5_2 = SHX5_2(SHX6_2)
        if "lloydzlego2" ~= SHX5_2 then
          goto SHX_LABEL_59
        end
      end
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getClientUserId
      SHX5_2 = SHX5_2()
      if 71 ~= SHX5_2 then
        SHX5_2 = tCMG
        SHX5_2 = SHX5_2.notify
        SHX6_2 = "~y~Oak's words echoed... There's a time and place for everything, but not now."
        SHX5_2(SHX6_2)
      else
        -- [FIX IF ERROR] Move ::SHX_LABEL_59:: outside nested blocks until all 'goto SHX_LABEL_59' can see it
        ::SHX_LABEL_59::
        if "redarrow2" == SHX4_2 then
          SHX5_2 = tCMG
          SHX5_2 = SHX5_2.notify
          SHX6_2 = "~y~CALL AN AMBULANCE"
          SHX5_2(SHX6_2)
          SHX5_2 = tCMG
          SHX5_2 = SHX5_2.notify
          SHX6_2 = "~y~CALL AN AMBULANCE"
          SHX5_2(SHX6_2)
          SHX5_2 = tCMG
          SHX5_2 = SHX5_2.notify
          SHX6_2 = "~r~BUT NOT FOR ME."
          SHX5_2(SHX6_2)
          SHX5_2 = SendNUIMessage
          SHX6_2 = {}
          SHX6_2.transactionType = "callanambulance"
          SHX5_2(SHX6_2)
        else
          SHX5_2 = SHX2_2 - SHX3_2
          SHX5_2 = #SHX5_2
          SHX6_2 = 600.0
          if not (SHX5_2 < SHX6_2) then
            SHX5_2 = CMG
            SHX5_2 = SHX5_2.hasClientPermission
            SHX6_2 = "superadmin.permission"
            SHX5_2 = SHX5_2(SHX6_2)
            if not SHX5_2 then
              SHX5_2 = CMG
              SHX5_2 = SHX5_2.getPlayerBucket
              SHX5_2 = SHX5_2()
              SHX6_2 = CMG
              SHX6_2 = SHX6_2.getEventBucketId
              SHX6_2 = SHX6_2()
              if SHX5_2 ~= SHX6_2 then
                goto SHX_LABEL_163
              end
            end
          end
          SHX5_2 = TriggerServerEvent
          SHX6_2 = "1e0bbaf6cd"
          SHX7_2 = SHX4_2
          SHX8_2 = "/car"
          SHX5_2(SHX6_2, SHX7_2, SHX8_2)
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.requestEntitySpawn
          SHX6_2 = "carcommand"
          SHX7_2 = SHX4_2
          SHX5_2(SHX6_2, SHX7_2)
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.spawnVehicle
          SHX6_2 = SHX4_2
          SHX7_2 = SHX2_2.x
          SHX8_2 = SHX2_2.y
          SHX9_2 = SHX2_2.z
          SHX10_2 = GetEntityHeading
          SHX11_2 = CMG
          SHX11_2 = SHX11_2.getPlayerPed
          SHX11_2, SHX12_2, SHX13_2 = SHX11_2()
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX11_2 = true
          SHX12_2 = true
          SHX13_2 = true
          SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
          SHX6_2 = CMG
          SHX6_2 = SHX6_2.initLocalVehicle
          SHX7_2 = SHX5_2
          SHX6_2(SHX7_2)
          SHX6_2 = SetVehicleOnGroundProperly
          SHX7_2 = SHX5_2
          SHX6_2(SHX7_2)
          SHX6_2 = SetEntityInvincible
          SHX7_2 = SHX5_2
          SHX8_2 = false
          SHX6_2(SHX7_2, SHX8_2)
          SHX6_2 = CMG
          SHX6_2 = SHX6_2.applyMaxDefaultModsToVehicle
          SHX7_2 = SHX5_2
          SHX6_2(SHX7_2)
          SHX6_2 = SetPedIntoVehicle
          SHX7_2 = CMG
          SHX7_2 = SHX7_2.getPlayerPed
          SHX7_2 = SHX7_2()
          SHX8_2 = SHX5_2
          SHX9_2 = -1
          SHX6_2(SHX7_2, SHX8_2, SHX9_2)
          SHX6_2 = SetModelAsNoLongerNeeded
          SHX7_2 = GetHashKey
          SHX8_2 = SHX4_2
          SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX7_2(SHX8_2)
          SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
          SHX6_2 = SetVehRadioStation
          SHX7_2 = SHX5_2
          SHX8_2 = "OFF"
          SHX6_2(SHX7_2, SHX8_2)
          SHX6_2 = Wait
          SHX7_2 = 500
          SHX6_2(SHX7_2)
          SHX6_2 = SetVehRadioStation
          SHX7_2 = SHX5_2
          SHX8_2 = "OFF"
          SHX6_2(SHX7_2, SHX8_2)
          goto SHX_LABEL_167
          -- [FIX IF ERROR] Move ::SHX_LABEL_163:: outside nested blocks until all 'goto SHX_LABEL_163' can see it
          ::SHX_LABEL_163::
          SHX5_2 = tCMG
          SHX5_2 = SHX5_2.notify
          SHX6_2 = "~r~Vehicles may only be spawned at the airport for testing"
          SHX5_2(SHX6_2)
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_167:: outside nested blocks until all 'goto SHX_LABEL_167' can see it
  ::SHX_LABEL_167::
end
SHX94_1 = false
SHX91_1(SHX92_1, SHX93_1, SHX94_1)
SHX91_1 = RegisterCommand
SHX92_1 = "dv"
function SHX93_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "admin.tickets"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "eventadmin.whitelist"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      goto SHX_LABEL_35
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerBucket
    SHX0_2 = SHX0_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getEventBucketId
    SHX1_2 = SHX1_2()
    if SHX0_2 ~= SHX1_2 then
      goto SHX_LABEL_35
    end
  end
  SHX0_2 = GetVehiclePedIsIn
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = NetworkHasControlOfEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_35:: outside nested blocks until all 'goto SHX_LABEL_35' can see it
  ::SHX_LABEL_35::
end
SHX94_1 = false
SHX91_1(SHX92_1, SHX93_1, SHX94_1)
SHX91_1 = AddEventHandler
SHX92_1 = "918c11c450"
function SHX93_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = tonumber
  SHX2_2 = DecorGetInt
  SHX3_2 = SHX0_2
  SHX4_2 = "ac76c9d452"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX2_2 = DecorGetInt
  SHX3_2 = SHX0_2
  SHX4_2 = "0a6cf607ed"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX1_2 > 0 and SHX2_2 > 0 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadAnimDict
    SHX4_2 = "missexile3"
    SHX3_2(SHX4_2)
    SHX3_2 = TaskPlayAnim
    SHX4_2 = PlayerPedId
    SHX4_2 = SHX4_2()
    SHX5_2 = "missexile3"
    SHX6_2 = "ex03_dingy_search_case_base_michael"
    SHX7_2 = 1.0
    SHX8_2 = 8.0
    SHX9_2 = 12000
    SHX10_2 = 1
    SHX11_2 = 1.0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX3_2 = RemoveAnimDict
    SHX4_2 = "missexile3"
    SHX3_2(SHX4_2)
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "d9ee87e5cb"
    SHX5_2 = VehToNet
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  else
    SHX3_2 = IsEntityAVehicle
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = GetEntityAttachedTo
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      if 0 ~= SHX3_2 then
        SHX4_2 = IsEntityAVehicle
        SHX5_2 = SHX0_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          SHX4_2 = NetworkGetNetworkIdFromEntity
          SHX5_2 = SHX3_2
          SHX4_2 = SHX4_2(SHX5_2)
          if SHX4_2 > 0 then
            SHX5_2 = TriggerServerEvent
            SHX6_2 = "3395fde4e7"
            SHX7_2 = SHX4_2
            SHX5_2(SHX6_2, SHX7_2)
          end
        end
      end
    end
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.notify
    SHX4_2 = "~r~Vehicle is not owned by anyone"
    SHX3_2(SHX4_2)
  end
end
SHX91_1(SHX92_1, SHX93_1)
SHX91_1 = RegisterNetEvent
SHX92_1 = "3b617398d3"
function SHX93_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getObjectId
  SHX3_2 = SHX0_2
  SHX4_2 = "3b617398d3"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetNumberOfVehicleDoors
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = 0
  SHX5_2 = SHX3_2
  SHX6_2 = 1
  for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
    if SHX1_2 then
      SHX8_2 = SetVehicleDoorOpen
      SHX9_2 = SHX2_2
      SHX10_2 = SHX7_2
      SHX11_2 = false
      SHX12_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    else
      SHX8_2 = SetVehicleDoorShut
      SHX9_2 = SHX2_2
      SHX10_2 = SHX7_2
      SHX11_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    end
  end
end
SHX91_1(SHX92_1, SHX93_1)
SHX91_1 = {}
SHX92_1 = RegisterNetEvent
SHX93_1 = "7d90029b70"
function SHX94_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX4_2 = tonumber
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = 60000
  end
  SHX5_2 = 1000
  if SHX4_2 < SHX5_2 then
    SHX4_2 = 60000
  end
  SHX5_2 = FreezeEntityPosition
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerPed
  SHX6_2 = SHX6_2()
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = RequestAnimDict
  SHX6_2 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
  SHX5_2(SHX6_2)
  while true do
    SHX5_2 = HasAnimDictLoaded
    SHX6_2 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = true
  SHX6_2 = false
  SHX7_2 = GetGameTimer
  SHX7_2 = SHX7_2()
  SHX8_2 = tCMG
  SHX8_2 = SHX8_2.notify
  SHX9_2 = "~g~Lock Picking in progress, you can cancel with [Backspace]."
  SHX8_2(SHX9_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.CreateThread
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    while true do
      SHX0_3 = SHX5_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = IsEntityPlayingAnim
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.getPlayerPed
      SHX1_3 = SHX1_3()
      SHX2_3 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
      SHX3_3 = "machinic_loop_mechandplayer"
      SHX4_3 = 3
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      if not SHX0_3 then
        SHX0_3 = TaskPlayAnim
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerPed
        SHX1_3 = SHX1_3()
        SHX2_3 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
        SHX3_3 = "machinic_loop_mechandplayer"
        SHX4_3 = 8.0
        SHX5_3 = -8.0
        SHX6_3 = -1
        SHX7_3 = 1
        SHX8_3 = 0
        SHX9_3 = false
        SHX10_3 = false
        SHX11_3 = false
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      end
      SHX0_3 = math
      SHX0_3 = SHX0_3.floor
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX2_3 = SHX7_2
      SHX1_3 = SHX1_3 - SHX2_3
      SHX2_3 = SHX4_2
      SHX1_3 = SHX1_3 / SHX2_3
      SHX1_3 = SHX1_3 * 100
      SHX0_3 = SHX0_3(SHX1_3)
      SHX1_3 = drawNativeText
      SHX2_3 = "~y~Lock picking - "
      SHX3_3 = SHX0_3
      SHX4_3 = "%"
      SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3
      SHX1_3(SHX2_3)
      SHX1_3 = EnableControlAction
      SHX2_3 = 0
      SHX3_3 = 177
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = IsControlJustPressed
      SHX2_3 = 0
      SHX3_3 = 177
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if not SHX1_3 then
        SHX1_3 = IsDisabledControlJustPressed
        SHX2_3 = 0
        SHX3_3 = 177
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if not SHX1_3 then
          goto SHX_LABEL_88
        end
      end
      SHX1_3 = tCMG
      SHX1_3 = SHX1_3.notify
      SHX2_3 = "~r~Lock Picking cancelled."
      SHX1_3(SHX2_3)
      SHX1_3 = false
      SHX5_2 = SHX1_3
      SHX1_3 = true
      SHX6_2 = SHX1_3
      SHX1_3 = ClearPedTasks
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.getPlayerPed
      SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX2_3()
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX1_3 = FreezeEntityPosition
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.getPlayerPed
      SHX2_3 = SHX2_3()
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = TriggerServerEvent
      SHX2_3 = "24bc17d15e"
      SHX3_3 = SHX1_2
      SHX1_3(SHX2_3, SHX3_3)
      -- [FIX IF ERROR] Move ::SHX_LABEL_88:: outside nested blocks until all 'goto SHX_LABEL_88' can see it
      ::SHX_LABEL_88::
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
    SHX0_3 = RemoveAnimDict
    SHX1_3 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
    SHX0_3(SHX1_3)
  end
  SHX8_2(SHX9_2)
  SHX8_2 = Wait
  SHX9_2 = SHX4_2
  SHX8_2(SHX9_2)
  SHX8_2 = FreezeEntityPosition
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2 = SHX9_2()
  SHX10_2 = false
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = ClearPedTasks
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX9_2()
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX5_2 = false
  if SHX2_2 and not SHX6_2 then
    SHX8_2 = SHX91_1
    SHX8_2[SHX0_2] = true
    SHX8_2 = tonumber
    SHX9_2 = DecorGetInt
    SHX10_2 = SHX0_2
    SHX11_2 = "ac76c9d452"
    SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX9_2 = DecorGetInt
    SHX10_2 = SHX0_2
    SHX11_2 = "0a6cf607ed"
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    if SHX8_2 > 0 and SHX9_2 > 0 then
      SHX10_2 = TriggerServerEvent
      SHX11_2 = "c8979f62fb"
      SHX12_2 = SHX9_2
      SHX13_2 = SHX8_2
      SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    else
      SHX10_2 = tCMG
      SHX10_2 = SHX10_2.notify
      SHX11_2 = "~r~Vehicle is not owned by anyone"
      SHX10_2(SHX11_2)
    end
    SHX10_2 = NetworkGetNetworkIdFromEntity
    SHX11_2 = SHX0_2
    SHX10_2 = SHX10_2(SHX11_2)
    if 0 ~= SHX10_2 then
      SHX11_2 = NetworkHasControlOfEntity
      SHX12_2 = SHX0_2
      SHX11_2 = SHX11_2(SHX12_2)
      if SHX11_2 then
        SHX11_2 = TriggerEvent
        SHX12_2 = "126d6c2d61"
        SHX13_2 = SHX10_2
        SHX14_2 = false
        SHX11_2(SHX12_2, SHX13_2, SHX14_2)
      else
        SHX11_2 = TriggerServerEvent
        SHX12_2 = "126d6c2d61"
        SHX13_2 = SHX10_2
        SHX14_2 = false
        SHX11_2(SHX12_2, SHX13_2, SHX14_2)
      end
      SHX11_2 = TriggerServerEvent
      SHX12_2 = "3b617398d3"
      SHX13_2 = SHX10_2
      SHX11_2(SHX12_2, SHX13_2)
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.notify
      SHX12_2 = "Vehicle unlocked."
      SHX11_2(SHX12_2)
    end
  else
    SHX8_2 = tCMG
    SHX8_2 = SHX8_2.notify
    SHX9_2 = "~r~Failed to lockpick vehicle."
    SHX8_2(SHX9_2)
  end
end
SHX92_1(SHX93_1, SHX94_1)
SHX92_1 = {}
SHX93_1 = RegisterNetEvent
SHX94_1 = "49b4103abb"
function SHX95_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = tonumber
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = 60000
  end
  SHX3_2 = 1000
  if SHX2_2 < SHX3_2 then
    SHX2_2 = 60000
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getObjectId
  SHX4_2 = SHX0_2
  SHX5_2 = "49b4103abb"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX4_2 = GetSoundId
    SHX4_2 = SHX4_2()
    SHX5_2 = PlaySoundFromEntity
    SHX6_2 = SHX4_2
    SHX7_2 = "ALARM_ONE"
    SHX8_2 = SHX3_2
    SHX9_2 = "DLC_ALARM_SOUNDSET"
    SHX10_2 = false
    SHX11_2 = 0
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = SHX92_1
    SHX5_2[SHX0_2] = SHX4_2
    SHX5_2 = SetTimeout
    SHX6_2 = SHX2_2
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX1_3 = SHX0_2
      SHX0_3 = SHX92_1
      SHX0_3 = SHX0_3[SHX1_3]
      if SHX0_3 then
        SHX0_3 = StopSound
        SHX1_3 = SHX4_2
        SHX0_3(SHX1_3)
        SHX0_3 = ReleaseSoundId
        SHX1_3 = SHX4_2
        SHX0_3(SHX1_3)
        SHX1_3 = SHX0_2
        SHX0_3 = SHX92_1
        SHX0_3[SHX1_3] = nil
      end
    end
    SHX5_2(SHX6_2, SHX7_2)
  end
end
SHX93_1(SHX94_1, SHX95_1)
SHX93_1 = RegisterNetEvent
SHX94_1 = "4b7575ffbe"
function SHX95_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX92_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = StopSound
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
    SHX2_2 = ReleaseSoundId
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
    SHX2_2 = SHX92_1
    SHX2_2[SHX0_2] = nil
  end
end
SHX93_1(SHX94_1, SHX95_1)
SHX93_1 = AddEventHandler
SHX94_1 = "1631601e81"
function SHX95_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = DecorGetBool
  SHX2_2 = SHX0_2
  SHX3_2 = "6b6dade745"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = notify
    SHX2_2 = "~r~This vehicle has been towed by Mechanic and can't be lock picked."
    SHX1_2(SHX2_2)
    return
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "aa.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = notify
      SHX2_2 = "~r~This action is very illegal."
      SHX1_2(SHX2_2)
      return
    else
      SHX1_2 = tCMG
      SHX1_2 = SHX1_2.isInGreenzone
      SHX2_2 = false
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = notify
        SHX2_2 = "~r~You can not lockpick in a greenzone"
        SHX1_2(SHX2_2)
        return
      end
    end
  end
  SHX1_2 = DecorGetInt
  SHX2_2 = SHX0_2
  SHX3_2 = "0a6cf607ed"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 > 0 then
    SHX2_2 = SHX91_1
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "c8979f62fb"
      SHX4_2 = SHX1_2
      SHX2_2(SHX3_2, SHX4_2)
    else
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "bcccb7ede5"
      SHX4_2 = SHX0_2
      SHX5_2 = VehToNet
      SHX6_2 = SHX0_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = SHX1_2
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    end
  end
end
SHX93_1(SHX94_1, SHX95_1)
SHX93_1 = CMG
SHX94_1 = "clientVehicleWasLockpickedThisSession"
function SHX95_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX91_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = true == SHX1_2
  return SHX1_2
end
SHX93_1[SHX94_1] = SHX95_1
SHX93_1 = CMG
SHX94_1 = "getCustomFolders"
function SHX95_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = GetResourceKvpString
  SHX1_2 = "cmg_garagefolders"
  SHX0_2 = SHX0_2(SHX1_2)
  if nil == SHX0_2 or "null" == SHX0_2 then
    SHX0_2 = "{}"
  end
  SHX1_2 = json
  SHX1_2 = SHX1_2.decode
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = {}
  if SHX1_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX1_2
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = {}
      SHX10_2 = pairs
      SHX11_2 = SHX8_2
      SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
      for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
        SHX16_2 = tonumber
        SHX17_2 = SHX14_2
        SHX16_2 = SHX16_2(SHX17_2)
        if SHX16_2 then
          SHX16_2 = tonumber
          SHX17_2 = SHX14_2
          SHX16_2 = SHX16_2(SHX17_2)
          SHX9_2[SHX16_2] = SHX15_2
        end
      end
      SHX2_2[SHX7_2] = SHX9_2
    end
  end
  return SHX2_2
end
SHX93_1[SHX94_1] = SHX95_1
SHX93_1 = CMG
SHX94_1 = "isVehicleInAnyCustomFolder"
function SHX95_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX26_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2[SHX0_2]
    if SHX7_2 then
      SHX7_2 = true
      return SHX7_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX93_1[SHX94_1] = SHX95_1
SHX93_1 = CMG
SHX94_1 = "saveCustomFolders"
function SHX95_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SetResourceKvp
  SHX2_2 = "cmg_garagefolders"
  SHX3_2 = json
  SHX3_2 = SHX3_2.encode
  SHX4_2 = SHX26_1
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetResourceKvpInt
  SHX2_2 = "cmg_garagefolders_version"
  SHX3_2 = SHX0_2 or SHX3_2
  if not SHX0_2 then
    SHX3_2 = 2
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX93_1[SHX94_1] = SHX95_1
SHX93_1 = CMG
SHX94_1 = "addCarToCustomFolder"
function SHX95_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = SHX26_1
  SHX3_2 = SHX3_2[SHX2_2]
  if SHX3_2 then
    SHX3_2 = 0
    SHX4_2 = pairs
    SHX5_2 = SHX26_1
    SHX5_2 = SHX5_2[SHX2_2]
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      if SHX9_2 > SHX3_2 then
        SHX3_2 = SHX9_2
      end
    end
    SHX4_2 = SHX26_1
    SHX4_2 = SHX4_2[SHX2_2]
    SHX5_2 = SHX3_2 + 1
    SHX4_2[SHX0_2] = SHX5_2
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.saveCustomFolders
    SHX4_2()
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.notify
    SHX5_2 = "~g~Added vehicle to custom folder."
    SHX4_2(SHX5_2)
  else
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.notify
    SHX4_2 = "~r~Failed to add vehicle to folder, folder does not exist?"
    SHX3_2(SHX4_2)
  end
end
SHX93_1[SHX94_1] = SHX95_1
SHX93_1 = _ENV
SHX94_1 = "CMG"
SHX93_1 = SHX93_1[SHX94_1]
SHX94_1 = "removeCarFromCustomFolder"
function SHX95_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX26_1
  SHX2_2 = SHX2_2[SHX1_2]
  if SHX2_2 then
    SHX2_2 = SHX26_1
    SHX2_2 = SHX2_2[SHX1_2]
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX26_1
      SHX2_2 = SHX2_2[SHX1_2]
      SHX2_2[SHX0_2] = nil
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.saveCustomFolders
      SHX2_2()
      SHX2_2 = tCMG
      SHX2_2 = SHX2_2.notify
      SHX3_2 = "~g~Removed vehicle from custom folder."
      SHX2_2(SHX3_2)
    else
      SHX2_2 = tCMG
      SHX2_2 = SHX2_2.notify
      SHX3_2 = "~r~Failed to remove vehicle from folder, vehicle not in folder."
      SHX2_2(SHX3_2)
    end
  else
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    SHX3_2 = "~r~Failed to remove vehicle from folder, folder does not exist?"
    SHX2_2(SHX3_2)
  end
end
SHX93_1[SHX94_1] = SHX95_1
SHX93_1 = _ENV
SHX94_1 = "CMG"
SHX93_1 = SHX93_1[SHX94_1]
SHX94_1 = "createCustomFolder"
function SHX95_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX26_1
  SHX2_2 = {}
  SHX1_2[SHX0_2] = SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.saveCustomFolders
  SHX1_2()
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.notify
  SHX2_2 = "~g~Created "
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2(SHX2_2)
end
SHX93_1[SHX94_1] = SHX95_1
SHX93_1 = _ENV
SHX94_1 = "CMG"
SHX93_1 = SHX93_1[SHX94_1]
SHX94_1 = "deleteCustomFolder"
function SHX95_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX26_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = string
    SHX6_2 = SHX6_2.lower
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = string
    SHX7_2 = SHX7_2.lower
    SHX8_2 = SHX0_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX6_2 == SHX7_2 then
      SHX6_2 = SHX26_1
      SHX6_2[SHX5_2] = nil
    end
  end
  SHX1_2 = SHX26_1
  SHX1_2[SHX0_2] = nil
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.saveCustomFolders
  SHX1_2()
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.notify
  SHX2_2 = "~g~Deleted "
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2(SHX2_2)
end
SHX93_1[SHX94_1] = SHX95_1
SHX93_1 = _ENV
SHX94_1 = "CMG"
SHX93_1 = SHX93_1[SHX94_1]
SHX94_1 = "getGarageSettings"
function SHX95_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetResourceKvpString
  SHX1_2 = "cmg_garagesettings"
  SHX0_2 = SHX0_2(SHX1_2)
  if nil == SHX0_2 or "null" == SHX0_2 then
    SHX0_2 = "{}"
  end
  SHX1_2 = json
  SHX1_2 = SHX1_2.decode
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = {}
  end
  return SHX1_2
end
SHX93_1[SHX94_1] = SHX95_1
SHX93_1 = _ENV
SHX94_1 = "CMG"
SHX93_1 = SHX93_1[SHX94_1]
SHX94_1 = "saveGarageSettings"
function SHX95_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SetResourceKvp
  SHX1_2 = "cmg_garagesettings"
  SHX2_2 = json
  SHX2_2 = SHX2_2.encode
  SHX3_2 = SHX28_1
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX93_1[SHX94_1] = SHX95_1
SHX93_1 = _ENV
SHX94_1 = "CMG"
SHX93_1 = SHX93_1[SHX94_1]
SHX94_1 = "registerCommand"
SHX93_1 = SHX93_1[SHX94_1]
SHX94_1 = "cleanupgarages"
function SHX95_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  if 1 == SHX0_2 then
    SHX0_2 = {}
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.notify
    SHX2_2 = "~y~Y to OK, U to mark as removed"
    SHX1_2(SHX2_2)
    SHX1_2 = 1
    SHX2_2 = SHX0_1.garageInstances
    SHX2_2 = #SHX2_2
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = SHX0_1.garageInstances
      SHX5_2 = SHX5_2[SHX4_2]
      SHX6_2 = SHX5_2[1]
      SHX7_2 = SHX5_2[2]
      SHX8_2 = SHX5_2[3]
      SHX9_2 = print
      SHX10_2 = "Checking"
      SHX11_2 = SHX6_2
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = tCMG
      SHX9_2 = SHX9_2.teleport
      SHX10_2 = SHX7_2.x
      SHX11_2 = SHX7_2.y
      SHX12_2 = SHX7_2.z
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX9_2 = true
      while SHX9_2 do
        SHX10_2 = IsControlJustPressed
        SHX11_2 = 0
        SHX12_2 = 246
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        if SHX10_2 then
          SHX10_2 = tCMG
          SHX10_2 = SHX10_2.notify
          SHX11_2 = "~g~This garage is fine."
          SHX10_2(SHX11_2)
          SHX10_2 = table
          SHX10_2 = SHX10_2.insert
          SHX11_2 = SHX0_2
          SHX12_2 = "{\""
          SHX13_2 = SHX6_2
          SHX14_2 = "\", "
          SHX15_2 = tostring
          SHX16_2 = SHX7_2
          SHX15_2 = SHX15_2(SHX16_2)
          SHX16_2 = ", "
          SHX17_2 = tostring
          SHX18_2 = SHX8_2
          SHX17_2 = SHX17_2(SHX18_2)
          SHX18_2 = "},"
          SHX12_2 = SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2 .. SHX16_2 .. SHX17_2 .. SHX18_2
          SHX10_2(SHX11_2, SHX12_2)
          SHX9_2 = false
        else
          SHX10_2 = IsControlJustPressed
          SHX11_2 = 0
          SHX12_2 = 303
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
          if SHX10_2 then
            SHX10_2 = tCMG
            SHX10_2 = SHX10_2.notify
            SHX11_2 = "~g~Removing this garage."
            SHX10_2(SHX11_2)
            SHX9_2 = false
          end
        end
        SHX10_2 = Wait
        SHX11_2 = 0
        SHX10_2(SHX11_2)
      end
    end
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "0d535cac57"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX96_1 = false
SHX93_1(SHX94_1, SHX95_1, SHX96_1)
SHX93_1 = AddEventHandler
SHX94_1 = "9bf490d170"
function SHX95_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX2_2 = "MPCT_ALAA_0"
  SHX3_2 = math
  SHX3_2 = SHX3_2.random
  SHX4_2 = 1
  SHX5_2 = 5
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2.transactionType = SHX2_2
  SHX0_2(SHX1_2)
end
SHX93_1(SHX94_1, SHX95_1)
SHX93_1 = 0
function SHX94_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RenderScriptCams
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = 0
  SHX4_2 = false
  SHX5_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = DestroyCam
  SHX1_2 = SHX93_1
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = 0
  SHX93_1 = SHX0_2
  SHX0_2 = DoScreenFadeIn
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = ClearFocus
  SHX0_2()
end
SHX95_1 = RegisterNetEvent
SHX96_1 = "7444109bf3"
function SHX97_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = SHX93_1
  if 0 ~= SHX2_2 then
    SHX2_2 = DestroyCam
    SHX3_2 = SHX93_1
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
    return
  end
  SHX2_2 = DoScreenFadeOut
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = CreateCam
  SHX3_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX93_1 = SHX2_2
  SHX2_2 = SetCamActive
  SHX3_2 = SHX93_1
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetCamCoord
  SHX3_2 = SHX93_1
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RenderScriptCams
  SHX3_2 = true
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX7_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = SetFocusPosAndVel
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.CloseAll
  SHX2_2()
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = NetworkDoesEntityExistWithNetworkId
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX4_2 = 5000
    if SHX3_2 > SHX4_2 then
      SHX3_2 = SHX94_1
      SHX3_2()
      SHX3_2 = notify
      SHX4_2 = "~r~Can not view dashcam of vehicle."
      SHX3_2(SHX4_2)
      return
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = NetworkGetEntityFromNetworkId
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    SHX4_2 = SHX94_1
    SHX4_2()
    SHX4_2 = notify
    SHX5_2 = "~r~Can not view dashcam of vehicle."
    SHX4_2(SHX5_2)
    return
  end
  SHX4_2 = DoScreenFadeIn
  SHX5_2 = 0
  SHX4_2(SHX5_2)
  SHX4_2 = notify
  SHX5_2 = "~g~Viewing your vehicle dashcam."
  SHX4_2(SHX5_2)
  while true do
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      break
    end
    SHX4_2 = IsCamActive
    SHX5_2 = SHX93_1
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      break
    end
    SHX4_2 = IsControlJustPressed
    SHX5_2 = 0
    SHX6_2 = 177
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 then
      break
    end
    SHX4_2 = GetWorldPositionOfEntityBone
    SHX5_2 = SHX3_2
    SHX6_2 = GetEntityBoneIndexByName
    SHX7_2 = SHX3_2
    SHX8_2 = "windscreen"
    SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX5_2 = GetEntityRotation
    SHX6_2 = SHX3_2
    SHX7_2 = 2
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX6_2 = SetCamCoord
    SHX7_2 = SHX93_1
    SHX8_2 = SHX4_2.x
    SHX9_2 = SHX4_2.y
    SHX10_2 = SHX4_2.z
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX6_2 = SetFocusPosAndVel
    SHX7_2 = SHX4_2.x
    SHX8_2 = SHX4_2.y
    SHX9_2 = SHX4_2.z
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX6_2 = SetCamRot
    SHX7_2 = SHX93_1
    SHX8_2 = SHX5_2.x
    SHX9_2 = SHX5_2.y
    SHX10_2 = SHX5_2.z
    SHX11_2 = 2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX4_2 = notify
  SHX5_2 = "~r~Stopped viewing your vehicle dashcam."
  SHX4_2(SHX5_2)
  SHX4_2 = RenderScriptCams
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = 0
  SHX8_2 = false
  SHX9_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = DestroyCam
  SHX5_2 = SHX93_1
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = 0
  SHX93_1 = SHX4_2
end
SHX95_1(SHX96_1, SHX97_1)
SHX95_1 = nil
SHX96_1 = RegisterNetEvent
SHX97_1 = "a30d55e751"
function SHX98_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX95_1
  if 0 ~= SHX1_2 then
    SHX1_2 = RemoveBlip
    SHX2_2 = SHX95_1
    SHX1_2(SHX2_2)
  end
  if SHX0_2 then
    SHX1_2 = AddBlipForCoord
    SHX2_2 = SHX0_2.x
    SHX3_2 = SHX0_2.y
    SHX4_2 = SHX0_2.z
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX95_1 = SHX1_2
    SHX1_2 = SetBlipSprite
    SHX2_2 = SHX95_1
    SHX3_2 = 56
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SetBlipScale
    SHX2_2 = SHX95_1
    SHX3_2 = 1.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SetBlipColour
    SHX2_2 = SHX95_1
    SHX3_2 = 2
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX96_1(SHX97_1, SHX98_1)
SHX96_1 = 0
SHX97_1 = false
SHX98_1 = _ENV
SHX99_1 = "CMG"
SHX98_1 = SHX98_1[SHX99_1]
SHX99_1 = "inBiometricLockedVehicle"
function SHX100_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX97_1
  return SHX0_2
end
SHX98_1[SHX99_1] = SHX100_1
function SHX98_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = false
  SHX97_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2, SHX1_2 = SHX0_2()
  if 0 ~= SHX0_2 and SHX1_2 then
    SHX2_2 = DecorGetBool
    SHX3_2 = SHX0_2
    SHX4_2 = "9d5712766f"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getClientUserId
      SHX3_2 = SHX3_2()
      SHX4_2 = Entity
      SHX5_2 = SHX0_2
      SHX4_2 = SHX4_2(SHX5_2)
      SHX4_2 = SHX4_2.state
      SHX4_2 = SHX4_2.biometricUsers
      SHX5_2 = DecorGetInt
      SHX6_2 = SHX0_2
      SHX7_2 = "ac76c9d452"
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      if SHX3_2 ~= SHX5_2 then
        if SHX4_2 then
          SHX6_2 = table
          SHX6_2 = SHX6_2.has
          SHX7_2 = SHX4_2
          SHX8_2 = SHX3_2
          SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
          if SHX6_2 then
            goto SHX_LABEL_138
          end
        end
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 32
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 33
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 34
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 35
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 71
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 72
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 87
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 88
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 129
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 130
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 107
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 108
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 109
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 110
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 111
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 112
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 350
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 351
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = SetVehicleRocketBoostPercentage
        SHX7_2 = SHX0_2
        SHX8_2 = 0.0
        SHX6_2(SHX7_2, SHX8_2)
        SHX6_2 = drawNativeText
        SHX7_2 = "This vehicle is locked biometrically to the owner."
        SHX6_2(SHX7_2)
        SHX6_2 = true
        SHX97_1 = SHX6_2
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_138:: outside nested blocks until all 'goto SHX_LABEL_138' can see it
  ::SHX_LABEL_138::
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = GetIsTaskActive
  SHX4_2 = SHX2_2
  SHX5_2 = 160
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = GetVehiclePedIsEntering
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if 0 ~= SHX3_2 then
      SHX4_2 = GetVehicleDoorLockStatus
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      if 2 == SHX4_2 then
        SHX96_1 = SHX3_2
      elseif 1 == SHX4_2 then
        SHX5_2 = SHX96_1
        if SHX3_2 == SHX5_2 then
          SHX5_2 = ClearPedTasks
          SHX6_2 = SHX2_2
          SHX5_2(SHX6_2)
          SHX5_2 = 0
          SHX96_1 = SHX5_2
        end
      end
    end
  else
    SHX3_2 = 0
    SHX96_1 = SHX3_2
  end
end
SHX99_1 = DecorRegister
SHX100_1 = "9d5712766f"
SHX101_1 = 2
SHX99_1(SHX100_1, SHX101_1)
SHX99_1 = _ENV
SHX100_1 = "CMG"
SHX99_1 = SHX99_1[SHX100_1]
SHX99_1 = SHX99_1.createThreadOnTick
SHX100_1 = SHX98_1
SHX101_1 = "Biometric Lock"
SHX99_1(SHX100_1, SHX101_1)
SHX99_1 = _ENV
SHX100_1 = "CMG"
SHX99_1 = SHX99_1[SHX100_1]
SHX100_1 = "setVehicleIdBiometricLock"
function SHX101_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX1_2["21"]
  if SHX3_2 then
    SHX3_2 = DecorSetBool
    SHX4_2 = SHX0_2
    SHX5_2 = "9d5712766f"
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  if SHX2_2 then
    SHX3_2 = #SHX2_2
    if SHX3_2 > 0 then
      SHX3_2 = false
      SHX4_2 = NetworkGetEntityIsNetworked
      SHX5_2 = SHX0_2
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        SHX4_2 = NetworkGetNetworkIdFromEntity
        SHX5_2 = SHX0_2
        SHX4_2 = SHX4_2(SHX5_2)
        if 0 ~= SHX4_2 then
          goto SHX_LABEL_26
        end
      end
      SHX3_2 = true
      -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
      ::SHX_LABEL_26::
      SHX4_2 = Citizen
      SHX4_2 = SHX4_2.CreateThread
      function SHX5_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.Wait
        SHX1_3 = SHX3_2
        if SHX1_3 then
          SHX1_3 = 2500
          if SHX1_3 then
            goto SHX_LABEL_10
          end
        end
        SHX1_3 = 0
        -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
        ::SHX_LABEL_10::
        SHX0_3(SHX1_3)
        SHX0_3 = NetworkGetNetworkIdFromEntity
        SHX1_3 = SHX0_2
        SHX0_3 = SHX0_3(SHX1_3)
        SHX1_3 = TriggerServerEvent
        SHX2_3 = "ee931fcf36"
        SHX3_3 = SHX0_3
        SHX4_3 = SHX2_2
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      end
      SHX4_2(SHX5_2)
    end
  end
end
SHX99_1[SHX100_1] = SHX101_1
SHX99_1 = {}
SHX100_1 = _ENV
SHX101_1 = "Citizen"
SHX100_1 = SHX100_1[SHX101_1]
SHX101_1 = "CreateThread"
SHX100_1 = SHX100_1[SHX101_1]
function SHX101_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = GetResourceKvpString
  SHX1_2 = "cmg_custom_vehicle_names"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 and "" ~= SHX0_2 then
    SHX1_2 = json
    SHX1_2 = SHX1_2.decode
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX2_2 = pairs
      SHX3_2 = SHX1_2
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = tonumber
        SHX9_2 = SHX6_2
        SHX8_2 = SHX8_2(SHX9_2)
        SHX9_2 = SHX31_1
        SHX9_2[SHX8_2] = SHX7_2
      end
    end
  end
  while true do
    SHX1_2 = pairs
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getAllVehicles
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX2_2()
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX99_1
      SHX7_2 = SHX7_2[SHX6_2]
      if not SHX7_2 then
        SHX7_2 = DecorExistOn
        SHX8_2 = SHX6_2
        SHX9_2 = "6939027d97"
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
        if SHX7_2 then
          SHX7_2 = DecorGetInt
          SHX8_2 = SHX6_2
          SHX9_2 = "6939027d97"
          SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
          SHX8_2 = CMG
          SHX8_2 = SHX8_2.getVehicleSoundNameFromId
          SHX9_2 = SHX7_2
          SHX8_2 = SHX8_2(SHX9_2)
          SHX9_2 = ForceVehicleEngineAudio
          SHX10_2 = SHX6_2
          SHX11_2 = SHX8_2
          SHX9_2(SHX10_2, SHX11_2)
          SHX9_2 = SHX99_1
          SHX10_2 = GetGameTimer
          SHX10_2 = SHX10_2()
          SHX9_2[SHX6_2] = SHX10_2
        end
      end
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 2000
    SHX1_2(SHX2_2)
  end
end
SHX100_1(SHX101_1)
SHX100_1 = _ENV
SHX101_1 = "exports"
SHX100_1 = SHX100_1[SHX101_1]
SHX101_1 = "hasAppliedEngineAudio"
function SHX102_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX99_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    SHX3_2 = 5000
    SHX2_2 = SHX2_2 > SHX3_2
  end
  return SHX2_2
end
SHX100_1(SHX101_1, SHX102_1)
SHX100_1 = _ENV
SHX101_1 = "vector3"
SHX100_1 = SHX100_1[SHX101_1]
SHX101_1 = 0.0
SHX102_1 = 0.0
SHX103_1 = 0.0
SHX100_1 = SHX100_1(SHX101_1, SHX102_1, SHX103_1)
SHX101_1 = {}
SHX102_1 = _ENV
SHX103_1 = "Citizen"
SHX102_1 = SHX102_1[SHX103_1]
SHX103_1 = "CreateThread"
SHX102_1 = SHX102_1[SHX103_1]
function SHX103_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2, SHX1_2 = SHX0_2()
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerCoords
    SHX2_2 = SHX2_2()
    if 0 ~= SHX0_2 and SHX1_2 then
      SHX3_2 = DecorGetInt
      SHX4_2 = SHX0_2
      SHX5_2 = "ac76c9d452"
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getClientUserId
      SHX4_2 = SHX4_2()
      if SHX3_2 == SHX4_2 then
        SHX3_2 = GetEntityModel
        SHX4_2 = SHX0_2
        SHX3_2 = SHX3_2(SHX4_2)
        SHX4_2 = SHX100_1
        SHX4_2 = SHX4_2 - SHX2_2
        SHX4_2 = #SHX4_2
        if SHX4_2 < 120.0 then
          SHX5_2 = GetEntitySpeed
          SHX6_2 = SHX0_2
          SHX5_2 = SHX5_2(SHX6_2)
          if SHX5_2 > 5.0 then
            SHX5_2 = SHX101_1
            SHX5_2 = SHX5_2[SHX3_2]
            if not SHX5_2 then
              SHX6_2 = {}
              SHX6_2.meters = 0.0
              SHX6_2.secondsInVehicle = 0
              SHX5_2 = SHX6_2
              SHX6_2 = SHX101_1
              SHX6_2[SHX3_2] = SHX5_2
            end
            SHX6_2 = SHX5_2.meters
            SHX6_2 = SHX6_2 + SHX4_2
            SHX5_2.meters = SHX6_2
            SHX6_2 = SHX5_2.secondsInVehicle
            SHX6_2 = SHX6_2 + 1
            SHX5_2.secondsInVehicle = SHX6_2
            SHX6_2 = SHX5_2.secondsInVehicle
            if SHX6_2 >= 30 then
              SHX6_2 = SHX5_2.meters
              if SHX6_2 > 50.0 then
                SHX6_2 = DecorGetInt
                SHX7_2 = SHX0_2
                SHX8_2 = "0a6cf607ed"
                SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
                if SHX6_2 > 0 then
                  SHX7_2 = TriggerServerEvent
                  SHX8_2 = "589dcb122a"
                  SHX9_2 = SHX6_2
                  SHX10_2 = SHX5_2.meters
                  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
                end
              end
              SHX5_2.meters = 0.0
              SHX5_2.secondsInVehicle = 0
            end
          end
        end
        SHX100_1 = SHX2_2
      end
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 1000
    SHX3_2(SHX4_2)
  end
end
SHX102_1(SHX103_1)
function SHX102_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "number" == SHX1_2 and SHX0_2 >= 0 and SHX0_2 <= 50 then
    SHX1_2 = SHX0_2 / 100
    SHX2_2 = 1
    SHX1_2 = SHX2_2 - SHX1_2
    return SHX1_2
  end
  SHX1_2 = 1.0
  return SHX1_2
end
SHX103_1 = RegisterNetEvent
SHX104_1 = "1f270ab7bb"
function SHX105_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = TaskLookAtEntity
  SHX4_2 = SHX2_2
  SHX5_2 = SHX0_2
  SHX6_2 = -1
  SHX7_2 = 2048
  SHX8_2 = 3
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 3000
  SHX3_2(SHX4_2)
  SHX3_2 = SHX102_1
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.max
  SHX5_2 = 1000
  SHX6_2 = math
  SHX6_2 = SHX6_2.floor
  SHX7_2 = 12000 * SHX3_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX6_2(SHX7_2)
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.CreateThreadNow
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.startCircularProgressBar
    SHX1_3 = "Repairing vehicle"
    SHX2_3 = SHX4_2
    SHX3_3 = nil
    function SHX4_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX6_2(SHX7_2)
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.Wait
  SHX7_2 = 0
  SHX6_2(SHX7_2)
  while true do
    SHX6_2 = GetEntityHealth
    SHX7_2 = SHX2_2
    SHX6_2 = SHX6_2(SHX7_2)
    if not (SHX6_2 > 102) then
      break
    end
    SHX6_2 = GetGameTimer
    SHX6_2 = SHX6_2()
    SHX6_2 = SHX6_2 - SHX5_2
    if not (SHX4_2 > SHX6_2) then
      break
    end
    SHX6_2 = IsEntityPlayingAnim
    SHX7_2 = SHX2_2
    SHX8_2 = "mini@repair"
    SHX9_2 = "fixing_a_ped"
    SHX10_2 = 3
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    if not SHX6_2 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.loadAnimDict
      SHX7_2 = "mini@repair"
      SHX6_2(SHX7_2)
      SHX6_2 = TaskPlayAnim
      SHX7_2 = SHX2_2
      SHX8_2 = "mini@repair"
      SHX9_2 = "fixing_a_ped"
      SHX10_2 = 1.0
      SHX11_2 = 8.0
      SHX12_2 = -1
      SHX13_2 = 49
      SHX14_2 = 1.0
      SHX15_2 = false
      SHX16_2 = false
      SHX17_2 = false
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX6_2 = RemoveAnimDict
      SHX7_2 = "mini@repair"
      SHX6_2(SHX7_2)
    end
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.stopCircularProgressBar
  SHX6_2()
  SHX6_2 = ClearPedTasksImmediately
  SHX7_2 = SHX2_2
  SHX6_2(SHX7_2)
end
SHX103_1(SHX104_1, SHX105_1)
SHX103_1 = RegisterNetEvent
SHX104_1 = "68cd4709a6"
function SHX105_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = NetworkDoesNetworkIdExist
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = NetworkDoesEntityExistWithNetworkId
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = NetworkGetEntityFromNetworkId
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      if 0 ~= SHX2_2 then
        SHX3_2 = NetworkHasControlOfEntity
        SHX4_2 = SHX2_2
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 then
          SHX3_2 = SetVehicleDoorOpen
          SHX4_2 = SHX2_2
          SHX5_2 = 4
          SHX6_2 = false
          SHX7_2 = false
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX3_2 = FreezeEntityPosition
          SHX4_2 = SHX2_2
          SHX5_2 = true
          SHX3_2(SHX4_2, SHX5_2)
        end
        SHX3_2 = SHX102_1
        SHX4_2 = SHX1_2
        SHX3_2 = SHX3_2(SHX4_2)
        SHX4_2 = math
        SHX4_2 = SHX4_2.max
        SHX5_2 = 1000
        SHX6_2 = math
        SHX6_2 = SHX6_2.floor
        SHX7_2 = 12000 * SHX3_2
        SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
        SHX5_2 = Citizen
        SHX5_2 = SHX5_2.Wait
        SHX6_2 = 3000 + SHX4_2
        SHX5_2(SHX6_2)
        SHX5_2 = NetworkHasControlOfEntity
        SHX6_2 = SHX2_2
        SHX5_2 = SHX5_2(SHX6_2)
        if SHX5_2 then
          SHX5_2 = FreezeEntityPosition
          SHX6_2 = SHX2_2
          SHX7_2 = false
          SHX5_2(SHX6_2, SHX7_2)
          SHX5_2 = SetVehicleEngineHealth
          SHX6_2 = SHX2_2
          SHX7_2 = 9999
          SHX5_2(SHX6_2, SHX7_2)
          SHX5_2 = SetVehiclePetrolTankHealth
          SHX6_2 = SHX2_2
          SHX7_2 = 9999
          SHX5_2(SHX6_2, SHX7_2)
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.setVehicleFixedPreservingFuel
          SHX6_2 = SHX2_2
          SHX5_2(SHX6_2)
        end
      end
    end
  end
end
SHX103_1(SHX104_1, SHX105_1)
SHX103_1 = RegisterNetEvent
SHX104_1 = "a37e8d69f4"
function SHX105_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClosestVehicle
  SHX2_2 = 5.0
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 and 0 ~= SHX1_2 then
    SHX2_2 = GetPedInVehicleSeat
    SHX3_2 = SHX1_2
    SHX4_2 = -1
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if 0 == SHX2_2 then
      SHX3_2 = NetworkGetNetworkIdFromEntity
      SHX4_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2)
      if 0 ~= SHX3_2 then
        SHX4_2 = TriggerServerEvent
        SHX5_2 = "a37e8d69f4"
        SHX6_2 = SHX3_2
        SHX7_2 = SHX0_2
        SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      end
    else
      SHX3_2 = notify
      SHX4_2 = "~r~Can not repair vehicle with a person in the driver seat."
      SHX3_2(SHX4_2)
    end
  else
    SHX2_2 = notify
    SHX3_2 = "~r~No vehicle nearby to repair."
    SHX2_2(SHX3_2)
  end
end
SHX103_1(SHX104_1, SHX105_1)
SHX103_1 = RegisterNetEvent
SHX104_1 = "e271da7ccf"
function SHX105_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX2_2 = NetworkDoesNetworkIdExist
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_2 = NetworkGetEntityFromNetworkId
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = TaskLookAtEntity
  SHX5_2 = SHX3_2
  SHX6_2 = SHX2_2
  SHX7_2 = -1
  SHX8_2 = 2048
  SHX9_2 = 3
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 3000
  SHX4_2(SHX5_2)
  SHX4_2 = SHX102_1
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = math
  SHX5_2 = SHX5_2.max
  SHX6_2 = 1000
  SHX7_2 = math
  SHX7_2 = SHX7_2.floor
  SHX8_2 = 28000 * SHX4_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX7_2(SHX8_2)
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX6_2 = GetGameTimer
  SHX6_2 = SHX6_2()
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.CreateThreadNow
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.startCircularProgressBar
    SHX1_3 = "Repairing vehicle"
    SHX2_3 = SHX5_2
    SHX3_3 = nil
    function SHX4_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX7_2(SHX8_2)
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.Wait
  SHX8_2 = 0
  SHX7_2(SHX8_2)
  while true do
    SHX7_2 = GetEntityHealth
    SHX8_2 = SHX3_2
    SHX7_2 = SHX7_2(SHX8_2)
    if not (SHX7_2 > 102) then
      break
    end
    SHX7_2 = GetGameTimer
    SHX7_2 = SHX7_2()
    SHX7_2 = SHX7_2 - SHX6_2
    if not (SHX5_2 > SHX7_2) then
      break
    end
    SHX7_2 = IsEntityPlayingAnim
    SHX8_2 = SHX3_2
    SHX9_2 = "mini@repair"
    SHX10_2 = "fixing_a_ped"
    SHX11_2 = 3
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    if not SHX7_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.loadAnimDict
      SHX8_2 = "mini@repair"
      SHX7_2(SHX8_2)
      SHX7_2 = TaskPlayAnim
      SHX8_2 = SHX3_2
      SHX9_2 = "mini@repair"
      SHX10_2 = "fixing_a_ped"
      SHX11_2 = 1.0
      SHX12_2 = 8.0
      SHX13_2 = -1
      SHX14_2 = 49
      SHX15_2 = 1.0
      SHX16_2 = false
      SHX17_2 = false
      SHX18_2 = false
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX7_2 = RemoveAnimDict
      SHX8_2 = "mini@repair"
      SHX7_2(SHX8_2)
    end
    SHX7_2 = Citizen
    SHX7_2 = SHX7_2.Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
  end
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.stopCircularProgressBar
  SHX7_2()
  SHX7_2 = ClearPedTasksImmediately
  SHX8_2 = SHX3_2
  SHX7_2(SHX8_2)
end
SHX103_1(SHX104_1, SHX105_1)
SHX103_1 = RegisterNetEvent
SHX104_1 = "3afdeeb96c"
function SHX105_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = NetworkDoesNetworkIdExist
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_2 = NetworkGetEntityFromNetworkId
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = NetworkHasControlOfEntity
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = SetVehicleDoorOpen
    SHX4_2 = SHX2_2
    SHX5_2 = 4
    SHX6_2 = false
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX3_2 = FreezeEntityPosition
    SHX4_2 = SHX2_2
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SHX102_1
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.max
  SHX5_2 = 1000
  SHX6_2 = math
  SHX6_2 = SHX6_2.floor
  SHX7_2 = 28000 * SHX3_2
  SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.Wait
  SHX6_2 = 3000 + SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = NetworkHasControlOfEntity
  SHX6_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    SHX5_2 = FreezeEntityPosition
    SHX6_2 = SHX2_2
    SHX7_2 = false
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SetVehicleEngineHealth
    SHX6_2 = SHX2_2
    SHX7_2 = 9999
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SetVehiclePetrolTankHealth
    SHX6_2 = SHX2_2
    SHX7_2 = 9999
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.setVehicleFixedPreservingFuel
    SHX6_2 = SHX2_2
    SHX5_2(SHX6_2)
  end
end
SHX103_1(SHX104_1, SHX105_1)
SHX103_1 = RegisterNetEvent
SHX104_1 = "82540e2ca1"
function SHX105_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX50_1 = SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "garages"
  SHX5_2 = "paymentplanoffer"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
SHX103_1(SHX104_1, SHX105_1)
SHX103_1 = RegisterNetEvent
SHX104_1 = "e728b25029"
function SHX105_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX23_1
  if SHX1_2 then
    SHX1_2 = SHX23_1.vehicleName
    if SHX1_2 then
      SHX1_2 = SHX0_2.vehicleName
      if not SHX1_2 then
        SHX1_2 = SHX23_1.vehicleName
        SHX0_2.vehicleName = SHX1_2
      end
    end
  end
  SHX23_1 = SHX0_2
end
SHX103_1(SHX104_1, SHX105_1)
SHX103_1 = _ENV
SHX104_1 = "RMenu"
SHX103_1 = SHX103_1[SHX104_1]
SHX103_1 = SHX103_1.Add
SHX104_1 = "garages"
SHX105_1 = "inactivity"
SHX106_1 = _ENV
SHX107_1 = "RageUI"
SHX106_1 = SHX106_1[SHX107_1]
SHX106_1 = SHX106_1.CreateMenu
SHX107_1 = ""
SHX108_1 = "Vehicle Inactivity"
SHX109_1 = _ENV
SHX110_1 = "CMG"
SHX109_1 = SHX109_1[SHX110_1]
SHX109_1 = SHX109_1.getRageUIMenuWidth
SHX109_1 = SHX109_1()
SHX110_1 = _ENV
SHX111_1 = "CMG"
SHX110_1 = SHX110_1[SHX111_1]
SHX110_1 = SHX110_1.getRageUIMenuHeight
SHX110_1 = SHX110_1()
SHX111_1 = "cmg_garageui"
SHX112_1 = "cmg_garageui"
SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1 = SHX106_1(SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX103_1(SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1)
SHX103_1 = nil
SHX104_1 = nil
SHX105_1 = _ENV
SHX106_1 = "RageUI"
SHX105_1 = SHX105_1[SHX106_1]
SHX105_1 = SHX105_1.CreateWhile
SHX106_1 = 1.0
SHX107_1 = _ENV
SHX108_1 = "RMenu"
SHX107_1 = SHX107_1[SHX108_1]
SHX109_1 = "Get"
SHX108_1 = SHX107_1
SHX107_1 = SHX107_1[SHX109_1]
SHX109_1 = "garages"
SHX110_1 = "inactivity"
SHX107_1 = SHX107_1(SHX108_1, SHX109_1, SHX110_1)
SHX108_1 = nil
function SHX109_1()
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
  SHX3_2 = "garages"
  SHX4_2 = "inactivity"
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
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~The vehicle '"
    SHX2_3 = SHX103_1
    SHX3_3 = "' is inactive."
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~This occurs to vehicles which aren't used in 1 month."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~This improves load times and increases performance."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~To make the vehicle active click the button below."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~The vehicle will be spawnable from the next restart."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~g~Activate Vehicle"
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
        SHX4_4 = "9b0f552679"
        SHX5_4 = SHX104_1
        SHX3_4(SHX4_4, SHX5_4)
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
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
SHX105_1(SHX106_1, SHX107_1, SHX108_1, SHX109_1)
SHX105_1 = RegisterNetEvent
SHX106_1 = "a4cc02a91b"
function SHX107_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX27_1.income = SHX0_2
  SHX27_1.outcome = SHX1_2
end
SHX105_1(SHX106_1, SHX107_1)
SHX105_1 = RegisterNetEvent
SHX106_1 = "41a06d8fbd"
function SHX107_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX103_1 = SHX0_2
  SHX104_1 = SHX1_2
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Visible
  SHX3_2 = RMenu
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.Get
  SHX5_2 = "garages"
  SHX6_2 = "inactivity"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
end
SHX105_1(SHX106_1, SHX107_1)
SHX105_1 = RegisterNetEvent
SHX106_1 = "88f392bb4d"
function SHX107_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsAnyMenuOfTypeVisible
  SHX1_2 = "garages"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.CloseAll
    SHX0_2()
  end
end
SHX105_1(SHX106_1, SHX107_1)
SHX105_1 = RegisterNetEvent
SHX106_1 = "2648b1efcf"
function SHX107_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX32_1 = SHX0_2
end
SHX105_1(SHX106_1, SHX107_1)
function SHX105_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = "Not Set"
  SHX2_2 = DecorGetInt
  SHX3_2 = SHX0_2
  SHX4_2 = "ac76c9d452"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 > 0 then
    SHX3_2 = tostring
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX1_2 = SHX3_2
  end
  SHX3_2 = GetEntityModel
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getVehicleIdFromModel
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX5_2 = tostring
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX4_2 = SHX5_2
  end
  SHX5_2 = "Not Set"
  SHX6_2 = DecorGetInt
  SHX7_2 = SHX0_2
  SHX8_2 = "0a6cf607ed"
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if SHX6_2 > 0 then
    SHX7_2 = tostring
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX5_2 = SHX7_2
  end
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = [[
UserID: %s
Model: %s
UUID: %s]]
  SHX9_2 = SHX1_2
  SHX10_2 = SHX4_2
  SHX11_2 = SHX5_2
  return SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
SHX106_1 = _ENV
SHX107_1 = "CMG"
SHX106_1 = SHX106_1[SHX107_1]
SHX107_1 = "registerDevMenuEntityEditor"
SHX106_1 = SHX106_1[SHX107_1]
SHX107_1 = "Garages"
SHX108_1 = "vehicle"
SHX109_1 = SHX105_1
function SHX110_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX106_1(SHX107_1, SHX108_1, SHX109_1, SHX110_1)
SHX106_1 = _ENV
SHX107_1 = "CMG"
SHX106_1 = SHX106_1[SHX107_1]
SHX107_1 = "canVehicleBeSold"
function SHX108_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX2_1.whitelisted
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX1_2.blockSelling
    if SHX2_2 then
      SHX2_2 = false
      return SHX2_2
    end
  end
  SHX2_2 = true
  return SHX2_2
end
SHX106_1[SHX107_1] = SHX108_1
SHX106_1 = _ENV
SHX107_1 = "CMG"
SHX106_1 = SHX106_1[SHX107_1]
SHX107_1 = "canVehicleBeRented"
function SHX108_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX2_1.whitelisted
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX1_2.blockRenting
    if SHX2_2 then
      SHX2_2 = false
      return SHX2_2
    end
  end
  SHX2_2 = true
  return SHX2_2
end
SHX106_1[SHX107_1] = SHX108_1
SHX106_1 = _ENV
SHX107_1 = "CMG"
SHX106_1 = SHX106_1[SHX107_1]
SHX107_1 = "isVehicleRemoteControlled"
function SHX108_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX2_1.remoteControlledModels
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = false
  end
  return SHX1_2
end
SHX106_1[SHX107_1] = SHX108_1
SHX106_1 = _ENV
SHX107_1 = "CMG"
SHX106_1 = SHX106_1[SHX107_1]
SHX107_1 = "registerDevMenuState"
SHX106_1 = SHX106_1[SHX107_1]
SHX107_1 = "Garages"
SHX108_1 = {}
SHX109_1 = "drawVehicleModNames"
SHX110_1 = false
SHX108_1[SHX109_1] = SHX110_1
SHX109_1 = "drawHeadlightDebug"
SHX110_1 = false
SHX108_1[SHX109_1] = SHX110_1
SHX109_1 = "drawNearbyNodes"
SHX110_1 = false
SHX108_1[SHX109_1] = SHX110_1
SHX106_1 = SHX106_1(SHX107_1, SHX108_1)
SHX107_1 = _ENV
SHX108_1 = "CMG"
SHX107_1 = SHX107_1[SHX108_1]
SHX108_1 = "registerDevMenuItems"
SHX107_1 = SHX107_1[SHX108_1]
SHX108_1 = "Garages"
function SHX109_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Upload Current Vehicle Mods"
  SHX2_2 = "Uploads the mods for the vehicle to the server."
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.getPlayerVehicle
      SHX3_3 = SHX3_3()
      if 0 == SHX3_3 then
        SHX4_3 = notify
        SHX5_3 = "~r~You must be in a vehicle to use this."
        SHX4_3(SHX5_3)
      else
        SHX4_3 = SHX89_1
        SHX5_3 = SHX3_3
        SHX6_3 = false
        SHX4_3(SHX5_3, SHX6_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Draw Vehicle Mod Names"
  SHX2_2 = "Displays current vehicle mods on the screen"
  SHX3_2 = SHX106_1.drawVehicleModNames
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX106_1.drawVehicleModNames = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Draw Headlight Debug"
  SHX2_2 = "Displays debug information for headlights"
  SHX3_2 = SHX106_1.drawHeadlightDebug
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX106_1.drawHeadlightDebug = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Draw Nearby Nodes"
  SHX2_2 = "Draws Nearby Nodes"
  SHX3_2 = SHX106_1.drawNearbyNodes
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX106_1.drawNearbyNodes = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX107_1(SHX108_1, SHX109_1)
SHX107_1 = _ENV
SHX108_1 = "CMG"
SHX107_1 = SHX107_1[SHX108_1]
SHX108_1 = "registerDevMenuThread"
SHX107_1 = SHX107_1[SHX108_1]
SHX108_1 = "Garages"
function SHX109_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2
  SHX0_2 = SHX106_1.drawVehicleModNames
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2 = SHX0_2()
    if 0 ~= SHX0_2 then
      SHX1_2 = SHX89_1
      SHX2_2 = SHX0_2
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
  SHX0_2 = SHX106_1.drawNearbyNodes
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = 1
    SHX2_2 = 50
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = GetNthClosestVehicleNodeWithHeading
      SHX6_2 = SHX0_2.x
      SHX7_2 = SHX0_2.y
      SHX8_2 = SHX0_2.z
      SHX9_2 = SHX4_2
      SHX10_2 = nil
      SHX11_2 = 0.0
      SHX12_2 = 0
      SHX13_2 = 1
      SHX14_2 = 3.0
      SHX15_2 = 0.0
      SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      if SHX5_2 then
        SHX8_2 = vector3
        SHX9_2 = 0.0
        SHX10_2 = 0.0
        SHX11_2 = 0.2
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX6_2 = SHX6_2 + SHX8_2
        SHX8_2 = DrawMarker
        SHX9_2 = 28
        SHX10_2 = SHX6_2.x
        SHX11_2 = SHX6_2.y
        SHX12_2 = SHX6_2.z
        SHX13_2 = 0.0
        SHX14_2 = 0.0
        SHX15_2 = 0.0
        SHX16_2 = 0.0
        SHX17_2 = 0.0
        SHX18_2 = 0.0
        SHX19_2 = 1.5
        SHX20_2 = 1.5
        SHX21_2 = 1.5
        SHX22_2 = 255
        SHX23_2 = 0
        SHX24_2 = 0
        SHX25_2 = 100
        SHX26_2 = false
        SHX27_2 = false
        SHX28_2 = 2
        SHX29_2 = false
        SHX30_2 = nil
        SHX31_2 = nil
        SHX32_2 = false
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.drawHeadingFromPoint
        SHX9_2 = SHX6_2
        SHX10_2 = math
        SHX10_2 = SHX10_2.rad
        SHX11_2 = SHX7_2
        SHX10_2 = SHX10_2(SHX11_2)
        SHX11_2 = 5.0
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.DrawText3D
        SHX9_2 = SHX6_2
        SHX10_2 = tostring
        SHX11_2 = SHX4_2
        SHX10_2 = SHX10_2(SHX11_2)
        SHX11_2 = 0.5
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      end
    end
  end
end
SHX107_1(SHX108_1, SHX109_1)
SHX107_1 = 0
SHX108_1 = false
function SHX109_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2, SHX1_2 = SHX0_2()
  if 0 == SHX0_2 or not SHX1_2 then
    SHX2_2 = false
    SHX108_1 = SHX2_2
    return
  end
  SHX2_2 = GetVehicleLightsState
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2)
  if 1 == SHX4_2 then
    SHX5_2 = true
    if SHX5_2 then
      goto SHX_LABEL_20
      SHX4_2 = SHX5_2 or SHX4_2
    end
  end
  SHX4_2 = false
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
  SHX5_2 = SHX106_1.drawHeadlightDebug
  if SHX5_2 then
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.drawDebugText
    SHX6_2 = "---------- Headlights Fix ----------"
    SHX5_2(SHX6_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.drawDebugText
    SHX6_2 = "Valid: %s On: %s Full Bean: %s"
    SHX7_2 = SHX2_2
    SHX8_2 = SHX3_2
    SHX9_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.drawDebugText
    SHX6_2 = "Stored Full Beam: %s"
    SHX7_2 = SHX108_1
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX5_2 = IsControlJustReleased
  SHX6_2 = 0
  SHX7_2 = 74
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  if SHX5_2 then
    SHX5_2 = IsVehicleEngineOn
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = GetFrameCount
      SHX5_2 = SHX5_2()
      SHX107_1 = SHX5_2
    end
  end
  SHX5_2 = SHX108_1
  if SHX5_2 ~= SHX4_2 then
    SHX5_2 = SHX107_1
    SHX6_2 = GetFrameCount
    SHX6_2 = SHX6_2()
    SHX6_2 = SHX6_2 - 1
    if SHX5_2 == SHX6_2 then
      SHX108_1 = SHX4_2
      if SHX4_2 then
        SHX5_2 = SetVehicleFullbeam
        SHX6_2 = SHX0_2
        SHX7_2 = true
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = SetVehicleLights
        SHX6_2 = SHX0_2
        SHX7_2 = 3
        SHX5_2(SHX6_2, SHX7_2)
      end
    end
  end
end
SHX110_1 = _ENV
SHX111_1 = "CMG"
SHX110_1 = SHX110_1[SHX111_1]
SHX110_1 = SHX110_1.createThreadOnTick
SHX111_1 = SHX109_1
SHX112_1 = "Headlights Fix"
SHX110_1(SHX111_1, SHX112_1)
SHX110_1 = _ENV
SHX111_1 = "Citizen"
SHX110_1 = SHX110_1[SHX111_1]
SHX111_1 = "CreateThread"
SHX110_1 = SHX110_1[SHX111_1]
function SHX111_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = Wait
  SHX1_2 = 1000
  SHX0_2(SHX1_2)
  SHX0_2 = LoadResourceFile
  SHX1_2 = "CMGVeh"
  SHX2_2 = "ci/streamfiles.json"
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX1_2 = json
    SHX1_2 = SHX1_2.decode
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = {}
    end
    SHX2_2 = pairs
    SHX3_2 = SHX1_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.setStreamFilePreActivatedClient
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
end
SHX110_1(SHX111_1)
SHX110_1 = _ENV
SHX111_1 = "CMG"
SHX110_1 = SHX110_1[SHX111_1]
SHX111_1 = "registerStreamFileLoadedCallback"
SHX110_1 = SHX110_1[SHX111_1]
function SHX111_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = pairs
  SHX2_2 = GetGamePool
  SHX3_2 = "CVehicle"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX2_2(SHX3_2)
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = 0
    SHX8_2 = 49
    SHX9_2 = 1
    for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
      SHX11_2 = GetVehicleMod
      SHX12_2 = SHX6_2
      SHX13_2 = SHX10_2
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
      if SHX11_2 >= 0 then
        SHX12_2 = GetModTextLabel
        SHX13_2 = SHX6_2
        SHX14_2 = SHX10_2
        SHX15_2 = SHX11_2
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
        SHX13_2 = SHX0_2[SHX12_2]
        if SHX13_2 then
          SHX13_2 = SetVehicleMod
          SHX14_2 = SHX6_2
          SHX15_2 = SHX10_2
          SHX16_2 = -1
          SHX17_2 = false
          SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
          SHX13_2 = SetTimeout
          SHX14_2 = 1000
          function SHX15_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
            SHX0_3 = SetVehicleMod
            SHX1_3 = SHX6_2
            SHX2_3 = SHX10_2
            SHX3_3 = SHX11_2
            SHX4_3 = false
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
          end
          SHX13_2(SHX14_2, SHX15_2)
        end
      end
    end
  end
end
SHX110_1(SHX111_1)
