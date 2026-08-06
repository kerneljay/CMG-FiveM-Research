-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_trade"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = false
function SHX2_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.action = SHX0_2
  SHX3_2.payload = SHX1_2
  SHX2_2(SHX3_2)
end
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX1_1
  if SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX1_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hideHud
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "APP_TOGGLE"
  SHX1_2.app = "Trade"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = true
  SHX2_2 = true
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX2_1
  SHX1_2 = "TRADE_CONFIG"
  SHX2_2 = {}
  SHX3_2 = SHX0_1.requireGreenzone
  SHX3_2 = true == SHX3_2
  SHX2_2.requireGreenzone = SHX3_2
  SHX3_2 = SHX0_1.strings
  SHX2_2.strings = SHX3_2
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX2_1
  SHX1_2 = "TRADE_SEARCH_RESULT"
  SHX2_2 = {}
  SHX3_2 = {}
  SHX2_2.players = SHX3_2
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX2_1
  SHX1_2 = "TRADE_RECEIVED_CODES"
  SHX2_2 = {}
  SHX3_2 = {}
  SHX2_2.codes = SHX3_2
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "fbcf63271b"
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "51e7a220eb"
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "a059ad9b7e"
  SHX0_2(SHX1_2)
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = false
  SHX1_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showHud
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "APP_TOGGLE"
  SHX1_2.app = ""
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX5_1 = CMG
SHX5_1 = SHX5_1.registerCommand
SHX6_1 = "trade"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.requireGreenzone
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isInGreenzone
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.notify
      SHX1_2 = "~r~You must be in a greenzone to open a secure trade."
      SHX0_2(SHX1_2)
      return
    end
  end
  SHX0_2 = SHX3_1
  SHX0_2()
end
SHX8_1 = false
SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "ba8e9e6cb6"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX3_1
  SHX1_2()
  SHX1_2 = SHX2_1
  SHX2_2 = "TRADE_OPEN_REQUEST"
  SHX3_2 = {}
  SHX3_2.id = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "ef22611740"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_2 = SHX2_1
    SHX2_2 = "TRADE_TRADES"
    SHX3_2 = {}
    if SHX0_2 then
      SHX4_2 = SHX0_2.trades
      if SHX4_2 then
        goto SHX_LABEL_15
      end
    end
    SHX4_2 = {}
    -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
    ::SHX_LABEL_15::
    SHX3_2.trades = SHX4_2
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "910d817f7c"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_2 = SHX2_1
    SHX2_2 = "TRADE_NOTIFY"
    SHX3_2 = {}
    SHX3_2.success = true
    SHX4_2 = tostring
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = " sent you a trade offer."
    SHX4_2 = SHX4_2 .. SHX5_2
    SHX3_2.message = SHX4_2
    SHX1_2(SHX2_2, SHX3_2)
  else
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.notify
    SHX2_2 = "~g~"
    SHX3_2 = tostring
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = " ~w~sent you a trade offer. Type ~g~/trade~w~ to view it."
    SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
    SHX1_2(SHX2_2)
  end
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "8065ef8ec9"
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX1_1
  if SHX2_2 then
    SHX2_2 = SHX2_1
    SHX3_2 = "TRADE_CLOSED"
    SHX4_2 = {}
    SHX4_2.id = SHX0_2
    SHX4_2.reason = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "51e7a220eb"
    SHX2_2(SHX3_2)
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "a059ad9b7e"
    SHX2_2(SHX3_2)
  end
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "b9cdb13387"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX2_1
  SHX2_2 = "TRADE_SEARCH_RESULT"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.players = SHX4_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "fe689155ce"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  if SHX0_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2.vehicles
    SHX1_2 = SHX1_2(SHX2_2)
    if "table" == SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getTradeVehicleGrouping
      SHX1_2 = SHX1_2()
      SHX2_2 = {}
      SHX3_2 = ipairs
      SHX4_2 = SHX0_2.vehicles
      SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
      for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
        SHX9_2 = SHX1_2.byUuid
        SHX10_2 = tostring
        SHX11_2 = SHX8_2.uuid
        SHX10_2 = SHX10_2(SHX11_2)
        SHX9_2 = SHX9_2[SHX10_2]
        if SHX9_2 then
          SHX10_2 = SHX9_2.name
          if SHX10_2 then
            SHX10_2 = SHX9_2.name
            if "" ~= SHX10_2 then
              SHX10_2 = SHX9_2.name
              SHX8_2.name = SHX10_2
            end
          end
          SHX10_2 = SHX9_2.garage
          SHX8_2.garage = SHX10_2
          SHX10_2 = SHX1_2.folderOf
          SHX11_2 = tostring
          SHX12_2 = SHX8_2.uuid
          SHX11_2 = SHX11_2(SHX12_2)
          SHX10_2 = SHX10_2[SHX11_2]
          SHX8_2.folder = SHX10_2
          SHX10_2 = #SHX2_2
          SHX10_2 = SHX10_2 + 1
          SHX2_2[SHX10_2] = SHX8_2
        end
      end
      SHX0_2.vehicles = SHX2_2
    end
  end
  SHX1_2 = SHX2_1
  SHX2_2 = "TRADE_OWNED_ASSETS"
  SHX3_2 = SHX0_2 or SHX3_2
  if not SHX0_2 then
    SHX3_2 = {}
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "9fde748e2f"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX2_1
  SHX2_2 = "TRADE_NEARBY"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.players = SHX4_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "37caf2095f"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX2_1
  SHX2_2 = "TRADE_HISTORY"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.history = SHX4_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "d814734263"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX2_1
  SHX2_2 = "TRADE_RECEIVED_CODES"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.codes = SHX4_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "4f46039970"
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX1_1
  if SHX2_2 then
    SHX2_2 = SHX2_1
    SHX3_2 = "TRADE_NOTIFY"
    SHX4_2 = {}
    SHX5_2 = true == SHX0_2
    SHX4_2.success = SHX5_2
    SHX4_2.message = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    if SHX0_2 then
      SHX3_2 = "~g~"
      if SHX3_2 then
        goto SHX_LABEL_24
      end
    end
    SHX3_2 = "~r~"
    -- [FIX IF ERROR] Move ::SHX_LABEL_24:: outside nested blocks until all 'goto SHX_LABEL_24' can see it
    ::SHX_LABEL_24::
    SHX4_2 = tostring
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX3_2 = SHX3_2 .. SHX4_2
    SHX2_2(SHX3_2)
  end
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
SHX5_1 = SHX5_1.uiRegisterCallback
SHX6_1 = "tradeClose"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  SHX0_2()
  SHX0_2 = {}
  return SHX0_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
SHX5_1 = SHX5_1.uiRegisterCallback
SHX6_1 = "tradeRequestAssets"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "51e7a220eb"
  SHX0_2(SHX1_2)
  SHX0_2 = {}
  return SHX0_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
SHX5_1 = SHX5_1.uiRegisterCallback
SHX6_1 = "tradeRequestNearby"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "a059ad9b7e"
  SHX0_2(SHX1_2)
  SHX0_2 = {}
  return SHX0_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
SHX5_1 = SHX5_1.uiRegisterCallback
SHX6_1 = "tradeRequestHistory"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "2fd1627707"
  SHX0_2(SHX1_2)
  SHX0_2 = {}
  return SHX0_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
SHX5_1 = SHX5_1.uiRegisterCallback
SHX6_1 = "tradeSearchPlayers"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.query
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" == SHX2_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "a1240f68eb"
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = {}
  return SHX2_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
SHX5_1 = SHX5_1.uiRegisterCallback
SHX6_1 = "tradeSendRequest"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.userId
    if not SHX1_2 then
      SHX1_2 = SHX0_2.permId
    end
  end
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "74b159a53a"
    SHX4_2 = tonumber
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      SHX4_2 = SHX1_2
    end
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = {}
  return SHX2_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
SHX5_1 = SHX5_1.uiRegisterCallback
SHX6_1 = "tradeAddEntry"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "707df9c39b"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = {}
  return SHX1_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
SHX5_1 = SHX5_1.uiRegisterCallback
SHX6_1 = "tradeRemoveEntry"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = SHX0_2.entryId
    if SHX1_2 then
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "d934a3fb01"
      SHX3_2 = SHX0_2
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
  SHX1_2 = {}
  return SHX1_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
SHX5_1 = SHX5_1.uiRegisterCallback
SHX6_1 = "tradeSetLock"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "fe062b772b"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = {}
  return SHX1_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
SHX5_1 = SHX5_1.uiRegisterCallback
SHX6_1 = "tradeConfirm"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "060631779e"
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.sessionId
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = {}
  return SHX1_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
SHX5_1 = SHX5_1.uiRegisterCallback
SHX6_1 = "tradeCancel"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "208a35e0a1"
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.sessionId
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = {}
  return SHX1_2
end
SHX5_1(SHX6_1, SHX7_1)
