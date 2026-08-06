-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1
SHX0_1 = true
SHX1_1 = false
SHX2_1 = ""
SHX3_1 = ""
SHX4_1 = nil
SHX5_1 = nil
SHX6_1 = {}
SHX7_1 = false
SHX8_1 = false
SHX9_1 = 0
SHX10_1 = {}
SHX11_1 = vector3
SHX12_1 = -763.85
SHX13_1 = -2182.47
SHX14_1 = 15.26
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["New Empire Way"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 814.19
SHX13_1 = -2623.73
SHX14_1 = 52.42
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Elysian Fields FWY Bridge"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -498.72
SHX13_1 = -2265.92
SHX14_1 = 61.43
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["La Puerta FWY Bridge"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 1573.21
SHX13_1 = -983.65
SHX14_1 = 59.78
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Palomino FWY 1"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 1307.31
SHX13_1 = 599.01
SHX14_1 = 80.05
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Los Santos FWY 1"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 2118.76
SHX13_1 = 1362.79
SHX14_1 = 75.37
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Palomino FWY 2"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 2113.76
SHX13_1 = 2670.4
SHX14_1 = 50.46
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Senora FWY 1"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -2171.84
SHX13_1 = -345.79
SHX14_1 = 13.18
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["West Eclipse Blvd/Great Ocean HWY"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -2720.0
SHX13_1 = 2284.16
SHX14_1 = 19.15
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Great Ocean HWY/Route 68"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -396.31
SHX13_1 = 5976.88
SHX14_1 = 31.66
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Great Ocean HWY/Paleto Blvd"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 2793.14
SHX13_1 = 4408.23
SHX14_1 = 49.03
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["East Joshua Road/Senora FWY"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -1214.03
SHX13_1 = -697.71
SHX14_1 = 10.9
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Del Perro Fwy Tunnel"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 1064.87
SHX13_1 = -1540.35
SHX14_1 = 28.19
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Elysian Fields Fwy 1"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 317.39
SHX13_1 = 1003.02
SHX14_1 = 210.36
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Baytree Canyon Rd/Marlowe Dr"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -3103.37
SHX13_1 = 1184.33
SHX14_1 = 20.16
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Great Ocean Hway/Banham Canyon Dr"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 727.53
SHX13_1 = -2784.06
SHX14_1 = 6.25
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Buccaneer Way (Port)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -402.67
SHX13_1 = -784.82
SHX14_1 = 36.81
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["La Puerta Fwy 1"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -756.0
SHX13_1 = -1732.56
SHX14_1 = 29.15
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Dutch London St/La Puerta"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 2437.49
SHX13_1 = -183.21
SHX14_1 = 87.49
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Palamino Fwy 3"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -149.04
SHX13_1 = -1183.77
SHX14_1 = 37.13
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Olympic Fwy (Above Power St)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 230.74
SHX13_1 = -1236.45
SHX14_1 = 38.02
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Olympic Fwy (Above Strawberry Ave)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 902.12
SHX13_1 = 178.07
SHX14_1 = 75.03
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Los Santos Freeway 2"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -921.26
SHX13_1 = -542.54
SHX14_1 = 19.01
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Del Perro Fwy (Under Movie Star Way)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 864.89
SHX13_1 = -699.25
SHX14_1 = 42.49
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Del Perro Fwy 2"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -404.82
SHX13_1 = -1289.68
SHX14_1 = 21.19
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["La Puerta Fwy (Lower)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -386.18
SHX13_1 = -1829.63
SHX14_1 = 21.39
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Davis Ave/Alta St"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -1549.77
SHX13_1 = -801.19
SHX14_1 = 13.15
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Equality Way (Exit)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -1577.42
SHX13_1 = -726.07
SHX14_1 = 18.55
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Equality Way (on-slip)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -3029.89
SHX13_1 = 222.96
SHX14_1 = 15.89
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Great Ocean Hwy/Inseno Rd 1"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -2479.27
SHX13_1 = 3660.72
SHX14_1 = 13.55
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Great Ocean Hwy/Zancudo Road"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -2592.38
SHX13_1 = 3120.09
SHX14_1 = 14.76
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Great Ocean Hwy/Zancudo Tunnel"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -1903.28
SHX13_1 = 4614.71
SHX14_1 = 56.8
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Great Ocean Hwy/Raton Canyon Bridge"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -771.77
SHX13_1 = 5491.96
SHX14_1 = 34.46
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Great Ocean Hwy/Procopio Promenade"] = SHX11_1
SHX11_1 = "Great Ocean Hwy/Paleto Bay Petrol Station"
SHX12_1 = vector3
SHX13_1 = 179.73
SHX14_1 = 6582.76
SHX15_1 = 31.63
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX10_1[SHX11_1] = SHX12_1
SHX11_1 = vector3
SHX12_1 = 149.27
SHX13_1 = 6527.46
SHX14_1 = 31.46
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Great Ocean Hwy/Procopio Dr"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 2119.48
SHX13_1 = 6025.09
SHX14_1 = 50.85
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Senora Fwy/Braddock Pass (Tunnel)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 2399.84
SHX13_1 = 5788.28
SHX14_1 = 45.75
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Senora Fwy/Braddock Pass"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 2625.67
SHX13_1 = 5110.9
SHX14_1 = 44.64
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Senora Fwy/Union Rd"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 2680.09
SHX13_1 = 3178.76
SHX14_1 = 52.31
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Senora Fwy 2 (Petrol Station)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 2397.76
SHX13_1 = 1210.39
SHX14_1 = 58.92
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Senora Way/Palomino Fwy"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 1712.54
SHX13_1 = 1499.18
SHX14_1 = 84.7
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Los Santos Fwy 2"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 1880.95
SHX13_1 = 2103.13
SHX14_1 = 54.48
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Palomino Fwy (Senora Fwy on-slip)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 1811.66
SHX13_1 = 2130.67
SHX14_1 = 54.47
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Senora Fwy (Palomino Fwy on-slip)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 1769.02
SHX13_1 = 2052.5
SHX14_1 = 67.2
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Senora Fwy (Los Santos Fwy on-slip)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 1790.68
SHX13_1 = 1883.54
SHX14_1 = 79.1
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Los Santos Fwy (Senora Fwy on-slip)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 1786.31
SHX13_1 = 1601.29
SHX14_1 = 83.73
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Los Santos Fwy (Palomino Fwy on-slip)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 2447.68
SHX13_1 = 953.36
SHX14_1 = 87.08
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Palomino Fwy (Jct Senora Way)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 2585.63
SHX13_1 = 360.6
SHX14_1 = 108.24
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Palomino Fwy Petrol Station"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 770.69
SHX13_1 = -1195.34
SHX14_1 = 44.95
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Olympic Fwy (Over Popular St)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 1240.24
SHX13_1 = -2051.41
SHX14_1 = 44.14
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Elysian Fields Fwy/El Rancho Blvd"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = 688.11
SHX13_1 = -166.98
SHX14_1 = 48.05
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["Los Santos Fwy (Under Bridge St)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -623.16
SHX13_1 = -1720.22
SHX14_1 = 37.06
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["La Puerta Fwy (Over South Arsenal St)"] = SHX11_1
SHX11_1 = vector3
SHX12_1 = -163.66
SHX13_1 = -540.73
SHX14_1 = 28.02
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1["La Puerta Fwy/Del Perro Fwy on-slip"] = SHX11_1
SHX11_1 = CMG
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getFlatLicensePlate
  SHX2_2 = GetVehicleNumberPlateText
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    SHX1_2 = "N/A"
  end
  SHX2_2 = SHX6_1
  SHX2_2 = SHX2_2[SHX1_2]
  if SHX2_2 then
    SHX2_2 = true
    return SHX2_2
  else
    SHX2_2 = false
    return SHX2_2
  end
end
SHX11_1.isVehicleFlagged = SHX12_1
SHX11_1 = TriggerEvent
SHX12_1 = "chat:addSuggestion"
SHX13_1 = "/flagf"
SHX14_1 = "Flags the front vehicle"
SHX15_1 = {}
SHX16_1 = {}
SHX16_1.name = "Reason"
SHX16_1.help = "Flag reason"
SHX15_1[1] = SHX16_1
SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX11_1 = TriggerEvent
SHX12_1 = "chat:addSuggestion"
SHX13_1 = "/flagr"
SHX14_1 = "Flags the rear vehicle"
SHX15_1 = {}
SHX16_1 = {}
SHX16_1.name = "Reason"
SHX16_1.help = "Flag reason"
SHX15_1[1] = SHX16_1
SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX11_1 = RegisterCommand
SHX12_1 = "flagf"
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX2_1
  if "" ~= SHX2_2 then
    SHX2_2 = ""
    SHX3_2 = table
    SHX3_2 = SHX3_2.count
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if 0 ~= SHX3_2 then
      SHX3_2 = table
      SHX3_2 = SHX3_2.concat
      SHX4_2 = SHX1_2
      SHX5_2 = " "
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX2_2 = SHX3_2
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "49f6eff747"
      SHX5_2 = string
      SHX5_2 = SHX5_2.upper
      SHX6_2 = SHX2_1
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = SHX2_2
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    else
      SHX3_2 = tCMG
      SHX3_2 = SHX3_2.notify
      SHX4_2 = "~r~Error~w~: You must provide a valid flag reason."
      SHX3_2(SHX4_2)
    end
  end
end
SHX14_1 = false
SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX11_1 = RegisterCommand
SHX12_1 = "flagr"
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX3_1
  if "" ~= SHX2_2 then
    SHX2_2 = ""
    SHX3_2 = table
    SHX3_2 = SHX3_2.count
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if 0 ~= SHX3_2 then
      SHX3_2 = table
      SHX3_2 = SHX3_2.concat
      SHX4_2 = SHX1_2
      SHX5_2 = " "
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX2_2 = SHX3_2
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "49f6eff747"
      SHX5_2 = string
      SHX5_2 = SHX5_2.upper
      SHX6_2 = SHX3_1
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = SHX2_2
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    else
      SHX3_2 = tCMG
      SHX3_2 = SHX3_2.notify
      SHX4_2 = "~r~Error~w~: You must provide a valid flag reason."
      SHX3_2(SHX4_2)
    end
  end
end
SHX14_1 = false
SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX11_1 = RegisterCommand
SHX12_1 = "anpr"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  SHX0_2 = not SHX0_2
  SHX0_1 = SHX0_2
end
SHX14_1 = false
SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX11_1 = RegisterCommand
SHX12_1 = "lockanpr"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  SHX0_2 = not SHX0_2
  SHX1_1 = SHX0_2
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "ANPR display ~g~locked~w~."
    SHX0_2(SHX1_2)
  else
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "ANPR display ~r~unlocked~w~."
    SHX0_2(SHX1_2)
  end
end
SHX14_1 = false
SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX11_1 = false
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = IsPedInAnyVehicle
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = GetVehicleClass
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerVehicle
    SHX1_2, SHX2_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if 18 == SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasClientPermission
      SHX1_2 = "police.onduty.permission"
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        SHX0_2 = true
        return SHX0_2
      end
    end
  end
  SHX0_2 = false
  return SHX0_2
end
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = nil
  if "front" == SHX0_2 then
    SHX1_2 = 50.0
  elseif "rear" == SHX0_2 then
    SHX1_2 = -50.0
  end
  SHX2_2 = GetVehiclePedIsIn
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetOffsetFromEntityInWorldCoords
  SHX4_2 = SHX2_2
  SHX5_2 = 0.0
  SHX6_2 = 1.0
  SHX7_2 = 0.3
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = GetOffsetFromEntityInWorldCoords
  SHX5_2 = SHX2_2
  SHX6_2 = 0.0
  SHX7_2 = SHX1_2
  SHX8_2 = 0.0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = _ENV
  SHX6_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  SHX5_2 = SHX5_2[SHX6_2]
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX3_2.z
  SHX9_2 = SHX4_2.x
  SHX10_2 = SHX4_2.y
  SHX11_2 = SHX4_2.z
  SHX12_2 = 10
  SHX13_2 = SHX2_2
  SHX14_2 = 0
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX6_2 = GetShapeTestResult
  SHX7_2 = SHX5_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX6_2(SHX7_2)
  if SHX10_2 > 0 then
    SHX11_2 = IsEntityAVehicle
    SHX12_2 = SHX10_2
    SHX11_2 = SHX11_2(SHX12_2)
    if SHX11_2 then
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.getFlatLicensePlate
      SHX12_2 = GetVehicleNumberPlateText
      SHX13_2 = SHX10_2
      SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX12_2(SHX13_2)
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      if nil ~= SHX11_2 then
        SHX12_2 = SHX6_1
        SHX12_2 = SHX12_2[SHX11_2]
        if nil ~= SHX12_2 then
          SHX12_2 = SHX6_1
          SHX12_2 = SHX12_2[SHX11_2]
          SHX13_2 = SHX7_1
          if not SHX13_2 then
            SHX13_2 = PlaySoundFrontend
            SHX14_2 = -1
            SHX15_2 = "BEEP_GREEN"
            SHX16_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
            SHX17_2 = true
            SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
          end
          SHX13_2 = tCMG
          SHX13_2 = SHX13_2.notify
          SHX14_2 = string
          SHX14_2 = SHX14_2.format
          SHX15_2 = "~r~ANPR Alert~w~: Plate ~b~%s ~w~is flagged for:~b~~n~%s"
          SHX16_2 = SHX11_2
          SHX17_2 = SHX12_2
          SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
          SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
          SHX13_2 = true
          SHX7_1 = SHX13_2
          SHX13_2 = SetTimeout
          SHX14_2 = 10000
          function SHX15_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3
            SHX0_3 = false
            SHX7_1 = SHX0_3
          end
          SHX13_2(SHX14_2, SHX15_2)
        end
      end
      return SHX10_2
  end
  else
    SHX11_2 = nil
    return SHX11_2
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
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2, SHX2_2 = SHX1_2()
  if 0 ~= SHX1_2 and SHX2_2 then
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX9_1
    SHX3_2 = SHX3_2 - SHX4_2
    SHX4_2 = 10000
    if SHX3_2 > SHX4_2 then
      SHX3_2 = GetGameTimer
      SHX3_2 = SHX3_2()
      SHX9_1 = SHX3_2
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "920f4c13e9"
      SHX5_2 = SHX0_2[1]
      SHX3_2(SHX4_2, SHX5_2)
    end
  end
end
SHX15_1 = Citizen
SHX15_1 = SHX15_1.CreateThread
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = DecorRegister
  SHX1_2 = "4da4f2889b"
  SHX2_2 = 2
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = pairs
  SHX1_2 = SHX10_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createArea
    SHX7_2 = "anpr_"
    SHX8_2 = SHX4_2
    SHX7_2 = SHX7_2 .. SHX8_2
    SHX8_2 = SHX5_2
    SHX9_2 = 28.0
    SHX10_2 = 4.0
    SHX11_2 = SHX14_1
    function SHX12_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX13_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX14_2 = {}
    SHX15_2 = SHX4_2
    SHX14_2[1] = SHX15_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
  while true do
    SHX0_2 = SHX0_1
    if SHX0_2 then
      SHX0_2 = SHX12_1
      SHX0_2 = SHX0_2()
      SHX11_1 = SHX0_2
      SHX0_2 = SHX11_1
      if SHX0_2 then
        SHX0_2 = SHX13_1
        SHX1_2 = "front"
        SHX0_2 = SHX0_2(SHX1_2)
        SHX4_1 = SHX0_2
        SHX0_2 = SHX4_1
        if SHX0_2 then
          SHX0_2 = SHX1_1
          if not SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.getFlatLicensePlate
            SHX1_2 = GetVehicleNumberPlateText
            SHX2_2 = SHX4_1
            SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX1_2(SHX2_2)
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
            if not SHX0_2 then
              SHX0_2 = "N/A"
            end
            SHX2_1 = SHX0_2
            SHX0_2 = GetLabelText
            SHX1_2 = GetDisplayNameFromVehicleModel
            SHX2_2 = GetEntityModel
            SHX3_2 = SHX4_1
            SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX2_2(SHX3_2)
            SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
            SHX1_2 = math
            SHX1_2 = SHX1_2.ceil
            SHX2_2 = GetEntitySpeed
            SHX3_2 = SHX4_1
            SHX2_2 = SHX2_2(SHX3_2)
            SHX2_2 = SHX2_2 * 2.236936
            SHX1_2 = SHX1_2(SHX2_2)
            SHX2_2 = CMG
            SHX2_2 = SHX2_2.uiSendMessage
            SHX3_2 = {}
            SHX3_2.anprSetFront = true
            SHX4_2 = SHX2_1
            SHX3_2.plate = SHX4_2
            SHX3_2.model = SHX0_2
            SHX3_2.speed = SHX1_2
            SHX2_2(SHX3_2)
          end
        end
        SHX0_2 = SHX13_1
        SHX1_2 = "rear"
        SHX0_2 = SHX0_2(SHX1_2)
        SHX5_1 = SHX0_2
        SHX0_2 = SHX5_1
        if SHX0_2 then
          SHX0_2 = SHX1_1
          if not SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.getFlatLicensePlate
            SHX1_2 = GetVehicleNumberPlateText
            SHX2_2 = SHX5_1
            SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX1_2(SHX2_2)
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
            if not SHX0_2 then
              SHX0_2 = "N/A"
            end
            SHX3_1 = SHX0_2
            SHX0_2 = GetLabelText
            SHX1_2 = GetDisplayNameFromVehicleModel
            SHX2_2 = GetEntityModel
            SHX3_2 = SHX5_1
            SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX2_2(SHX3_2)
            SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
            SHX1_2 = math
            SHX1_2 = SHX1_2.ceil
            SHX2_2 = GetEntitySpeed
            SHX3_2 = SHX5_1
            SHX2_2 = SHX2_2(SHX3_2)
            SHX2_2 = SHX2_2 * 2.236936
            SHX1_2 = SHX1_2(SHX2_2)
            SHX2_2 = CMG
            SHX2_2 = SHX2_2.uiSendMessage
            SHX3_2 = {}
            SHX3_2.anprSetRear = true
            SHX4_2 = SHX3_1
            SHX3_2.plate = SHX4_2
            SHX3_2.model = SHX0_2
            SHX3_2.speed = SHX1_2
            SHX2_2(SHX3_2)
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 250
    SHX0_2(SHX1_2)
  end
end
SHX15_1(SHX16_1)
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = SHX11_1
    if SHX0_2 then
      SHX0_2 = SHX8_1
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.uiSendMessage
        SHX1_2 = {}
        SHX1_2.anprShow = true
        SHX0_2(SHX1_2)
        SHX0_2 = true
        SHX8_1 = SHX0_2
      end
  end
  else
    SHX0_2 = SHX8_1
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.uiSendMessage
      SHX1_2 = {}
      SHX1_2.anprHide = true
      SHX0_2(SHX1_2)
      SHX0_2 = false
      SHX8_1 = SHX0_2
    end
  end
end
SHX16_1 = CMG
SHX16_1 = SHX16_1.createThreadOnTick
SHX17_1 = SHX15_1
SHX18_1 = "ANPR"
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "42d0ce93ae"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX6_1 = SHX0_2
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "66486b9576"
function SHX18_1(SHX0_2, SHX1_2)
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
  if SHX2_2 then
    SHX2_2 = NetworkGetEntityFromNetworkId
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if 0 ~= SHX2_2 then
      SHX3_2 = NetworkHasControlOfEntity
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        if SHX1_2 then
          SHX3_2 = DecorSetBool
          SHX4_2 = SHX2_2
          SHX5_2 = "4da4f2889b"
          SHX6_2 = true
          SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        else
          SHX3_2 = DecorRemove
          SHX4_2 = SHX2_2
          SHX5_2 = "4da4f2889b"
          SHX3_2(SHX4_2, SHX5_2)
        end
      end
    end
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = false
SHX17_1 = RegisterNetEvent
SHX18_1 = "920f4c13e9"
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX6_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.uiSendMessage
    SHX3_2 = {}
    SHX3_2.anprSetFixed = true
    SHX3_2.plate = SHX0_2
    SHX3_2.location = SHX1_2
    SHX4_2 = string
    SHX4_2 = SHX4_2.sub
    SHX5_2 = SHX6_1
    SHX5_2 = SHX5_2[SHX0_2]
    SHX6_2 = 1
    SHX7_2 = 20
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX3_2.marker = SHX4_2
    SHX2_2(SHX3_2)
    SHX2_2 = SHX16_1
    if not SHX2_2 then
      SHX2_2 = true
      SHX16_1 = SHX2_2
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.uiSendMessage
      SHX3_2 = {}
      SHX3_2.anprFlashFixed = true
      SHX2_2(SHX3_2)
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.Wait
      SHX3_2 = 2000
      SHX2_2(SHX3_2)
      SHX2_2 = false
      SHX16_1 = SHX2_2
    end
  end
end
SHX17_1(SHX18_1, SHX19_1)
