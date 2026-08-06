-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1
SHX0_1 = {}
SHX1_1 = tostring
SHX2_1 = "X"
SHX3_1 = math
SHX3_1 = SHX3_1.random
SHX4_1 = 21202574
SHX5_1 = 49202574
SHX3_1 = SHX3_1(SHX4_1, SHX5_1)
SHX2_1 = SHX2_1 .. SHX3_1
SHX1_1 = SHX1_1(SHX2_1)
SHX0_1.serialNumber = SHX1_1
SHX1_1 = tostring
SHX2_1 = math
SHX2_1 = SHX2_1.random
SHX3_1 = 95
SHX4_1 = 99
SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1 = SHX2_1(SHX3_1, SHX4_1)
SHX1_1 = SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX0_1.batteryStatus = SHX1_1
SHX0_1.cartridges = 2
SHX1_1 = {}
SHX1_1.active = false
SHX1_1.ped = 0
SHX1_1.serverId = 0
SHX0_1.reactivate1 = SHX1_1
SHX1_1 = {}
SHX1_1.active = false
SHX1_1.ped = 0
SHX1_1.serverId = 0
SHX0_1.reactivate2 = SHX1_1
SHX1_1 = {}
SHX2_1 = 911657153
SHX3_1 = 1843015545
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX0_1.hashes = SHX1_1
SHX1_1 = true
SHX2_1 = false
SHX3_1 = nil
SHX4_1 = TriggerEvent
SHX5_1 = "chat:addSuggestion"
SHX6_1 = "/rt"
SHX7_1 = "Reload your Taser"
SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX4_1 = RegisterNetEvent
SHX5_1 = "4a97bda3f9"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = true
  SHX2_1 = SHX1_2
  SHX3_1 = SHX0_2
end
SHX4_1(SHX5_1, SHX6_1)
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = RequestStreamedTextureDict
  SHX2_2 = "CHAR_ANDREAS"
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  while true do
    SHX1_2 = HasStreamedTextureDictLoaded
    SHX2_2 = "CHAR_ANDREAS"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = BeginTextCommandThefeedPost
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringPlayerName
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandThefeedPostMessagetext
  SHX2_2 = "CHAR_ANDREAS"
  SHX3_2 = "CHAR_ANDREAS"
  SHX4_2 = false
  SHX5_2 = 1
  SHX6_2 = "Taser X2"
  SHX7_2 = "CID"
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2 = EndTextCommandThefeedPostTicker
  SHX2_2 = false
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
end
SHX5_1 = RegisterNetEvent
SHX6_1 = "2a61fb1af7"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isStaffedOnClient
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = SHX4_1
    SHX1_2 = "You are currently being ~b~activated~w~."
    SHX0_2(SHX1_2)
    SHX0_2 = TriggerEvent
    SHX1_2 = "TriggerTazer"
    SHX0_2(SHX1_2)
    SHX0_2 = SetPedToRagdoll
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = 5000
    SHX3_2 = 5000
    SHX4_2 = 0
    SHX5_2 = false
    SHX6_2 = false
    SHX7_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "e33e58b9e2"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX0_1.cartridges
  if 2 == SHX0_2 then
    SHX0_2 = SHX4_1
    SHX1_2 = [[
~r~MODE: ~w~ARC

~y~|25|     |25|

]]
    SHX0_2(SHX1_2)
  else
    SHX0_2 = SHX0_1.cartridges
    if 1 == SHX0_2 then
      SHX0_2 = SHX4_1
      SHX1_2 = [[
~r~MODE: ~w~ARC

~y~|25|         

]]
      SHX0_2(SHX1_2)
    else
      SHX0_2 = SHX4_1
      SHX1_2 = [[
~r~MODE: ~w~ARC

~y~             

]]
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "a77761c607"
  SHX2_2 = GetEntityCoords
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = "arcsound"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = false
  SHX1_1 = SHX0_2
  SHX0_2 = SetTimeout
  SHX1_2 = 4000
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = true
    SHX1_1 = SHX0_3
  end
  SHX0_2(SHX1_2, SHX2_2)
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "playTaserSoundClient"
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = GetEntityCoords
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX2_2 - SHX0_2
  SHX3_2 = #SHX3_2
  if SHX3_2 <= 15 then
    SHX4_2 = SendNUIMessage
    SHX5_2 = {}
    SHX5_2.transactionType = SHX1_2
    SHX4_2(SHX5_2)
  end
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "26fc9f8bca"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX2_1 = SHX0_2
  SHX0_2 = 0
  SHX3_1 = SHX0_2
  SHX0_2 = SHX4_1
  SHX1_2 = "Your taser ~b~barbs ~w~have been ~b~disconnected~w~."
  SHX0_2(SHX1_2)
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "e7da235078"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_1.reactivate1
  SHX1_2 = SHX1_2.serverId
  if SHX1_2 == SHX0_2 then
    SHX1_2 = {}
    SHX1_2.active = false
    SHX1_2.ped = 0
    SHX1_2.serverId = 0
    SHX0_1.reactivate1 = SHX1_2
    SHX1_2 = drawNativeNotification
    SHX2_2 = "Barbs Ripped Out - ~b~Cartridge 1"
    SHX1_2(SHX2_2)
  else
    SHX1_2 = SHX0_1.reactivate2
    SHX1_2 = SHX1_2.serverId
    if SHX1_2 == SHX0_2 then
      SHX1_2 = {}
      SHX1_2.active = false
      SHX1_2.ped = 0
      SHX1_2.serverId = 0
      SHX0_1.reactivate2 = SHX1_2
      SHX1_2 = drawNativeNotification
      SHX2_2 = "Barbs Ripped Out - ~b~Cartridge 2"
      SHX1_2(SHX2_2)
    end
  end
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = "weapons@pistol@ap_pistol_str"
SHX6_1 = "reload_aim"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.has
  SHX1_2 = SHX0_1.hashes
  SHX2_2 = GetSelectedPedWeapon
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX3_2()
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  if SHX0_2 then
    SHX0_2 = SHX0_1.cartridges
    if SHX0_2 < 2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.loadAnimDict
      SHX1_2 = SHX5_1
      SHX0_2(SHX1_2)
      SHX0_2 = TaskPlayAnim
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX5_1
      SHX3_2 = SHX6_1
      SHX4_2 = 8.0
      SHX5_2 = -8.0
      SHX6_2 = -1
      SHX7_2 = 49
      SHX8_2 = 1.0
      SHX9_2 = false
      SHX10_2 = false
      SHX11_2 = false
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX0_2 = SHX0_1.cartridges
      if 0 == SHX0_2 then
        SHX0_2 = 2
        if SHX0_2 then
          goto SHX_LABEL_40
        end
      end
      SHX0_2 = 1
      -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
      ::SHX_LABEL_40::
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.CreateThread
      function SHX2_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
        SHX0_3 = GetAnimDuration
        SHX1_3 = SHX5_1
        SHX2_3 = SHX6_1
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        SHX1_3 = Citizen
        SHX1_3 = SHX1_3.Wait
        SHX2_3 = math
        SHX2_3 = SHX2_3.floor
        SHX3_3 = SHX0_3 * 1000.0
        SHX2_3 = SHX2_3(SHX3_3)
        SHX3_3 = SHX0_2
        SHX2_3 = SHX2_3 * SHX3_3
        SHX1_3(SHX2_3)
        SHX1_3 = RemoveAnimDict
        SHX2_3 = SHX5_1
        SHX1_3(SHX2_3)
        SHX1_3 = StopAnimTask
        SHX2_3 = PlayerPedId
        SHX2_3 = SHX2_3()
        SHX3_3 = SHX5_1
        SHX4_3 = SHX6_1
        SHX5_3 = 1.0
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      end
      SHX1_2(SHX2_2)
    end
    SHX0_2 = MakePedReload
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX1_2()
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX0_2 = SHX0_1.cartridges
    if 0 == SHX0_2 then
      SHX0_1.cartridges = 2
      SHX0_2 = SHX0_1.reactivate1
      SHX0_2 = SHX0_2.active
      if SHX0_2 then
        SHX0_2 = TriggerServerEvent
        SHX1_2 = "47f611b0b4"
        SHX2_2 = SHX0_1.reactivate1
        SHX2_2 = SHX2_2.serverId
        SHX0_2(SHX1_2, SHX2_2)
      end
      SHX0_2 = SHX0_1.reactivate2
      SHX0_2 = SHX0_2.active
      if SHX0_2 then
        SHX0_2 = TriggerServerEvent
        SHX1_2 = "47f611b0b4"
        SHX2_2 = SHX0_1.reactivate2
        SHX2_2 = SHX2_2.serverId
        SHX0_2(SHX1_2, SHX2_2)
      end
      SHX0_2 = {}
      SHX0_2.active = false
      SHX0_2.ped = 0
      SHX0_2.serverId = 0
      SHX0_1.reactivate1 = SHX0_2
      SHX0_2 = {}
      SHX0_2.active = false
      SHX0_2.ped = 0
      SHX0_2.serverId = 0
      SHX0_1.reactivate2 = SHX0_2
      SHX0_2 = drawNativeNotification
      SHX1_2 = "Taser reload successful"
      SHX0_2(SHX1_2)
      SHX0_2 = SHX4_1
      SHX1_2 = [[
~r~MODE: ~w~MANUAL

~y~|25|     |25|

]]
      SHX0_2(SHX1_2)
    else
      SHX0_2 = SHX0_1.cartridges
      if 1 == SHX0_2 then
        SHX0_1.cartridges = 2
        SHX0_2 = {}
        SHX0_2.active = false
        SHX0_2.ped = 0
        SHX0_2.serverId = 0
        SHX0_1.reactivate1 = SHX0_2
        SHX0_2 = drawNativeNotification
        SHX1_2 = "Taser reload successful"
        SHX0_2(SHX1_2)
        SHX0_2 = SHX4_1
        SHX1_2 = [[
~r~MODE: ~w~ARC

~y~|25|     |25|

]]
        SHX0_2(SHX1_2)
      end
    end
  else
    SHX0_2 = SHX4_1
    SHX1_2 = "~r~Error! ~w~You are not holding a taser."
    SHX0_2(SHX1_2)
  end
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2.vehicle
  if 0 ~= SHX1_2 then
    SHX1_2 = SHX0_2.vehicle
    if nil ~= SHX1_2 then
      goto SHX_LABEL_249
    end
  end
  SHX1_2 = SHX0_1.reactivate1
  SHX1_2 = SHX1_2.active
  if SHX1_2 then
    SHX1_2 = GetEntityCoords
    SHX2_2 = SHX0_1.reactivate1
    SHX2_2 = SHX2_2.ped
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = SHX0_2.playerCoords
    SHX2_2 = SHX1_2 - SHX2_2
    SHX2_2 = #SHX2_2
    if SHX2_2 > 30.0 then
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "47f611b0b4"
      SHX4_2 = SHX0_1.reactivate1
      SHX4_2 = SHX4_2.serverId
      SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = {}
      SHX2_2.active = false
      SHX2_2.ped = 0
      SHX2_2.serverId = 0
      SHX0_1.reactivate1 = SHX2_2
      SHX2_2 = drawNativeNotification
      SHX3_2 = "Barbs Disconnected - ~b~Cartridge 1"
      SHX2_2(SHX3_2)
    end
  else
    SHX1_2 = SHX0_1.reactivate2
    SHX1_2 = SHX1_2.active
    if SHX1_2 then
      SHX1_2 = GetEntityCoords
      SHX2_2 = SHX0_1.reactivate2
      SHX2_2 = SHX2_2.ped
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = SHX0_2.playerCoords
      SHX2_2 = SHX1_2 - SHX2_2
      SHX2_2 = #SHX2_2
      if SHX2_2 > 30.0 then
        SHX2_2 = TriggerServerEvent
        SHX3_2 = "47f611b0b4"
        SHX4_2 = SHX0_1.reactivate2
        SHX4_2 = SHX4_2.serverId
        SHX2_2(SHX3_2, SHX4_2)
        SHX2_2 = {}
        SHX2_2.active = false
        SHX2_2.ped = 0
        SHX2_2.serverId = 0
        SHX0_1.reactivate2 = SHX2_2
        SHX2_2 = drawNativeNotification
        SHX3_2 = "Barbs Disconnected - ~b~Cartridge 2"
        SHX2_2(SHX3_2)
      end
    end
  end
  SHX1_2 = table
  SHX1_2 = SHX1_2.has
  SHX2_2 = SHX0_1.hashes
  SHX3_2 = SHX0_2.weapon
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = IsControlJustPressed
    SHX2_2 = 1
    SHX3_2 = 308
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = SHX0_1.reactivate1
      SHX1_2 = SHX1_2.active
      if true == SHX1_2 then
        SHX1_2 = drawNativeNotification
        SHX2_2 = "Reactivated cartridge: ~INPUT_SELECT_WEAPON_UNARMED~"
        SHX1_2(SHX2_2)
        SHX1_2 = TriggerServerEvent
        SHX2_2 = "a77761c607"
        SHX3_2 = SHX0_2.playerCoords
        SHX4_2 = "reactivate"
        SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        SHX1_2 = TriggerServerEvent
        SHX2_2 = "daa8f00d6a"
        SHX3_2 = SHX0_1.reactivate1
        SHX3_2 = SHX3_2.serverId
        SHX1_2(SHX2_2, SHX3_2)
      end
    else
      SHX1_2 = IsControlJustPressed
      SHX2_2 = 1
      SHX3_2 = 307
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if SHX1_2 then
        SHX1_2 = SHX0_1.reactivate2
        SHX1_2 = SHX1_2.active
        if true == SHX1_2 then
          SHX1_2 = drawNativeNotification
          SHX2_2 = "Reactivated cartridge: \t~INPUT_SELECT_WEAPON_MELEE~"
          SHX1_2(SHX2_2)
          SHX1_2 = TriggerServerEvent
          SHX2_2 = "a77761c607"
          SHX3_2 = SHX0_2.playerCoords
          SHX4_2 = "reactivate"
          SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          SHX1_2 = TriggerServerEvent
          SHX2_2 = "daa8f00d6a"
          SHX3_2 = SHX0_1.reactivate2
          SHX3_2 = SHX3_2.serverId
          SHX1_2(SHX2_2, SHX3_2)
        end
      else
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 121
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if SHX1_2 then
          SHX1_2 = SHX1_1
          if SHX1_2 then
            SHX1_2 = TriggerServerEvent
            SHX2_2 = "4ec155a0ea"
            SHX1_2(SHX2_2)
        end
        else
          SHX1_2 = IsControlJustPressed
          SHX2_2 = 0
          SHX3_2 = 45
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          if SHX1_2 then
            SHX1_2 = SHX7_1
            SHX1_2()
          end
        end
      end
    end
    SHX1_2 = SHX0_1.cartridges
    if SHX1_2 < 1 then
      SHX1_2 = SetPlayerCanDoDriveBy
      SHX2_2 = SHX0_2.playerPed
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = DisablePlayerFiring
      SHX2_2 = SHX0_2.playerPed
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = IsDisabledControlJustPressed
      SHX2_2 = 0
      SHX3_2 = 24
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if not SHX1_2 then
        SHX1_2 = IsDisabledControlJustPressed
        SHX2_2 = 0
        SHX3_2 = 257
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      end
      if SHX1_2 then
        SHX1_2 = notify
        SHX2_2 = "~r~Your taser is out of cartridges. Please reload the electroshock bullets."
        SHX1_2(SHX2_2)
        SHX1_2 = PlaySoundFrontend
        SHX2_2 = -1
        SHX3_2 = "HACKING_CLICK_BAD"
        SHX4_2 = ""
        SHX5_2 = false
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      end
    else
      SHX1_2 = IsPedShooting
      SHX2_2 = SHX0_2.playerPed
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = TriggerServerEvent
        SHX2_2 = "a77761c607"
        SHX3_2 = SHX0_2.playerCoords
        SHX4_2 = "taser"
        SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        SHX1_2 = SHX0_1.cartridges
        SHX1_2 = SHX1_2 - 1
        SHX0_1.cartridges = SHX1_2
        SHX1_2 = SHX0_1.cartridges
        if 0 == SHX1_2 then
          SHX1_2 = notify
          SHX2_2 = "~r~Your taser is out of cartridges. Please reload the electroshock bullets."
          SHX1_2(SHX2_2)
        end
        SHX1_2 = GetEntityPlayerIsFreeAimingAt
        SHX2_2 = SHX0_2.playerId
        SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
        if SHX1_2 then
          SHX3_2 = IsEntityAPed
          SHX4_2 = SHX0_2.playerPed
          SHX3_2 = SHX3_2(SHX4_2)
          if SHX3_2 then
            SHX3_2 = CMG
            SHX3_2 = SHX3_2.getPedServerId
            SHX4_2 = SHX2_2
            SHX3_2 = SHX3_2(SHX4_2)
            if nil ~= SHX3_2 then
              SHX4_2 = TriggerServerEvent
              SHX5_2 = "960b66cdca"
              SHX6_2 = SHX3_2
              SHX4_2(SHX5_2, SHX6_2)
              SHX4_2 = SHX0_1.cartridges
              if 1 == SHX4_2 then
                SHX4_2 = drawNativeNotification
                SHX5_2 = "Press ~INPUT_REPLAY_BACK~ to Reactivate"
                SHX4_2(SHX5_2)
                SHX4_2 = SHX4_1
                SHX5_2 = [[
~r~MODE: ~w~MANUAL

~y~|25|         

]]
                SHX4_2(SHX5_2)
                SHX4_2 = SHX0_1.reactivate1
                SHX4_2 = SHX4_2.active
                if not SHX4_2 then
                  SHX4_2 = SHX0_1.reactivate1
                  SHX4_2.active = true
                  SHX4_2 = SHX0_1.reactivate1
                  SHX4_2.ped = SHX2_2
                  SHX4_2 = SHX0_1.reactivate1
                  SHX4_2.serverId = SHX3_2
                end
              else
                SHX4_2 = drawNativeNotification
                SHX5_2 = "Press ~INPUT_REPLAY_ADVANCE~ to Reactivate"
                SHX4_2(SHX5_2)
                SHX4_2 = SHX4_1
                SHX5_2 = [[
~r~MODE: ~w~MANUAL

Reload Required]]
                SHX4_2(SHX5_2)
                SHX4_2 = SHX0_1.reactivate2
                SHX4_2 = SHX4_2.active
                if not SHX4_2 then
                  SHX4_2 = SHX0_1.reactivate2
                  SHX4_2.active = true
                  SHX4_2 = SHX0_1.reactivate2
                  SHX4_2.ped = SHX2_2
                  SHX4_2 = SHX0_1.reactivate2
                  SHX4_2.serverId = SHX3_2
                end
              end
            end
          end
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_249:: outside nested blocks until all 'goto SHX_LABEL_249' can see it
  ::SHX_LABEL_249::
end
SHX9_1 = CMG
SHX9_1 = SHX9_1.createThreadOnTick
SHX10_1 = SHX8_1
SHX11_1 = "Taser"
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = false
SHX10_1 = false
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX1_2
    if not (SHX0_2 > SHX3_2) then
      break
    end
    SHX3_2 = SHX9_1
    if SHX3_2 then
      break
    end
    SHX3_2 = PlayerPedId
    SHX3_2 = SHX3_2()
    SHX4_2 = IsPedRunning
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      SHX4_2 = IsPedJumping
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      if not SHX4_2 then
        SHX4_2 = GetEntitySpeed
        SHX5_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2)
        SHX5_2 = 2.2
        if not (SHX4_2 > SHX5_2) then
          goto SHX_LABEL_55
        end
      end
    end
    if 0 == SHX2_2 then
      SHX4_2 = GetGameTimer
      SHX4_2 = SHX4_2()
      SHX2_2 = SHX4_2
    else
      SHX4_2 = GetGameTimer
      SHX4_2 = SHX4_2()
      SHX4_2 = SHX4_2 - SHX2_2
      SHX5_2 = 500
      if SHX4_2 > SHX5_2 then
        SHX4_2 = SetPedToRagdoll
        SHX5_2 = SHX3_2
        SHX6_2 = 2500
        SHX7_2 = 2500
        SHX8_2 = 0
        SHX9_2 = false
        SHX10_2 = false
        SHX11_2 = false
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        goto SHX_LABEL_58
        -- [FIX IF ERROR] Move ::SHX_LABEL_55:: outside nested blocks until all 'goto SHX_LABEL_55' can see it
        ::SHX_LABEL_55::
        SHX4_2 = GetGameTimer
        SHX4_2 = SHX4_2()
        SHX2_2 = SHX4_2
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_58:: outside nested blocks until all 'goto SHX_LABEL_58' can see it
    ::SHX_LABEL_58::
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = true
  SHX10_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = RequestAnimSet
  SHX2_2 = "move_m@drunk@verydrunk"
  SHX1_2(SHX2_2)
  while true do
    SHX1_2 = HasAnimSetLoaded
    SHX2_2 = "move_m@drunk@verydrunk"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = SetPedMovementClipset
  SHX2_2 = SHX0_2
  SHX3_2 = "move_m@drunk@verydrunk"
  SHX4_2 = 1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = RemoveAnimSet
  SHX2_2 = "move_m@drunk@verydrunk"
  SHX1_2(SHX2_2)
  SHX1_2 = SetTimecycleModifier
  SHX2_2 = "spectator5"
  SHX1_2(SHX2_2)
  SHX1_2 = SetPedIsDrunk
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX11_1
  SHX2_2 = 15000
  SHX1_2(SHX2_2)
  SHX1_2 = SetPedMotionBlur
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX2_1
    if SHX0_3 then
      while true do
        SHX0_3 = SHX2_1
        if not SHX0_3 then
          break
        end
        SHX0_3 = DisableControlAction
        SHX1_3 = 0
        SHX2_3 = 140
        SHX3_3 = true
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        SHX0_3 = IsControlJustPressed
        SHX1_3 = 1
        SHX2_3 = 38
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = false
          SHX2_1 = SHX0_3
          SHX0_3 = SHX3_1
          if SHX0_3 then
            SHX0_3 = SHX3_1
            if SHX0_3 > 0 then
              SHX0_3 = TriggerServerEvent
              SHX1_3 = "778f5e4153"
              SHX2_3 = SHX3_1
              SHX0_3(SHX1_3, SHX2_3)
            end
          end
          SHX0_3 = 0
          SHX3_1 = SHX0_3
          SHX0_3 = SHX4_1
          SHX1_3 = "Your ~b~barbs ~w~have now been ~b~ripped out~w~."
          SHX0_3(SHX1_3)
        end
        SHX0_3 = Wait
        SHX1_3 = 0
        SHX0_3(SHX1_3)
      end
    end
  end
  SHX1_2(SHX2_2)
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    SHX3_2 = 60000
    if not (SHX2_2 < SHX3_2) then
      break
    end
    SHX2_2 = SHX9_1
    if SHX2_2 then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = ClearTimecycleModifier
  SHX2_2()
  SHX2_2 = ResetScenarioTypesEnabled
  SHX2_2()
  SHX2_2 = ResetPedMovementClipset
  SHX3_2 = SHX0_2
  SHX4_2 = 0
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetPedIsDrunk
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetPedMotionBlur
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX9_1 = SHX2_2
  SHX2_2 = false
  SHX10_1 = SHX2_2
end
SHX13_1 = CMG
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX9_1 = SHX0_2
end
SHX13_1.setStunExitsEarly = SHX14_1
SHX13_1 = CMG
function SHX14_1()
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
SHX13_1.hasCustomStunEffect = SHX14_1
SHX13_1 = Citizen
SHX13_1 = SHX13_1.CreateThread
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SetPedMinGroundTimeForStungun
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = 15000
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = IsPedBeingStunned
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = 0
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX12_1
      SHX0_2()
    end
    SHX0_2 = Wait
    SHX1_2 = 100
    SHX0_2(SHX1_2)
  end
end
SHX13_1(SHX14_1)
