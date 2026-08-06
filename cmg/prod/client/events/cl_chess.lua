-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_chess"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = nil
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.bViewingBoard
  if SHX1_2 then
    SHX1_2 = SendNUIMessage
    SHX2_2 = {}
    SHX2_2.updateChessBoard = true
    SHX3_2 = SHX0_2.boardFEN
    SHX2_2.fen = SHX3_2
    SHX1_2(SHX2_2)
  end
end
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = SHX0_2.boardObjects
  if SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX0_2.boardObjects
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = pairs
      SHX8_2 = SHX6_2
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
      for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
        if 0 ~= SHX12_2 then
          SHX13_2 = DeleteEntity
          SHX14_2 = SHX12_2
          SHX13_2(SHX14_2)
        end
      end
    end
  end
end
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX2_2 = SHX1_2.insideRadius
  if not SHX2_2 then
    return
  end
  SHX2_2 = SHX4_1
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = {}
  SHX3_2 = {}
  SHX4_2 = {}
  SHX5_2 = {}
  SHX6_2 = {}
  SHX7_2 = {}
  SHX8_2 = {}
  SHX9_2 = {}
  SHX10_2 = {}
  SHX2_2[1] = SHX3_2
  SHX2_2[2] = SHX4_2
  SHX2_2[3] = SHX5_2
  SHX2_2[4] = SHX6_2
  SHX2_2[5] = SHX7_2
  SHX2_2[6] = SHX8_2
  SHX2_2[7] = SHX9_2
  SHX2_2[8] = SHX10_2
  SHX1_2.boardObjects = SHX2_2
  SHX2_2 = SHX1_2.boardObject
  if 0 == SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.loadModel
    SHX3_2 = 1235783144
    SHX2_2(SHX3_2)
    SHX2_2 = CreateObject
    SHX3_2 = 1235783144
    SHX4_2 = SHX0_1.locations
    SHX4_2 = SHX4_2[SHX0_2]
    SHX4_2 = SHX4_2.originPosition
    SHX4_2 = SHX4_2.x
    SHX4_2 = SHX4_2 + 10.1
    SHX5_2 = SHX0_1.locations
    SHX5_2 = SHX5_2[SHX0_2]
    SHX5_2 = SHX5_2.originPosition
    SHX5_2 = SHX5_2.y
    SHX5_2 = SHX5_2 + 9.25
    SHX6_2 = SHX0_1.locations
    SHX6_2 = SHX6_2[SHX0_2]
    SHX6_2 = SHX6_2.originPosition
    SHX6_2 = SHX6_2.z
    SHX6_2 = SHX6_2 - 42.85
    SHX7_2 = false
    SHX8_2 = false
    SHX9_2 = false
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX1_2.boardObject = SHX2_2
    SHX2_2 = FreezeEntityPosition
    SHX3_2 = SHX1_2.boardObject
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SetEntityLodDist
    SHX3_2 = SHX1_2.boardObject
    SHX4_2 = 200
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SetModelAsNoLongerNeeded
    SHX3_2 = 1235783144
    SHX2_2(SHX3_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.parseChessFEN
  SHX3_2 = SHX1_2.boardFEN
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = pairs
  SHX4_2 = SHX2_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = pairs
    SHX10_2 = SHX8_2
    SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
    for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
      SHX15_2 = SHX0_1.pieceToArchetypeMap
      SHX15_2 = SHX15_2[SHX14_2]
      if SHX15_2 then
        SHX16_2 = CMG
        SHX16_2 = SHX16_2.loadModel
        SHX17_2 = SHX15_2
        SHX16_2(SHX17_2)
        SHX16_2 = SHX0_1.locations
        SHX16_2 = SHX16_2[SHX0_2]
        SHX16_2 = SHX16_2.originPosition
        SHX17_2 = vector3
        SHX18_2 = SHX0_1.squareSize
        SHX18_2 = SHX7_2 * SHX18_2
        SHX19_2 = SHX0_1.squareSize
        SHX19_2 = SHX13_2 * SHX19_2
        SHX20_2 = 0.0
        SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2)
        SHX16_2 = SHX16_2 + SHX17_2
        SHX17_2 = SHX0_1.archetypeToOffsetMap
        SHX17_2 = SHX17_2[SHX15_2]
        SHX16_2 = SHX16_2 - SHX17_2
        SHX17_2 = CreateObjectNoOffset
        SHX18_2 = SHX15_2
        SHX19_2 = SHX16_2.x
        SHX20_2 = SHX16_2.y
        SHX21_2 = SHX16_2.z
        SHX22_2 = false
        SHX23_2 = false
        SHX24_2 = false
        SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
        SHX18_2 = SetEntityHeading
        SHX19_2 = SHX17_2
        SHX20_2 = GetEntityHeading
        SHX21_2 = SHX17_2
        SHX20_2 = SHX20_2(SHX21_2)
        SHX21_2 = SHX0_1.archetypeToHeadingsMap
        SHX21_2 = SHX21_2[SHX15_2]
        SHX20_2 = SHX20_2 + SHX21_2
        SHX18_2(SHX19_2, SHX20_2)
        SHX18_2 = FreezeEntityPosition
        SHX19_2 = SHX17_2
        SHX20_2 = true
        SHX18_2(SHX19_2, SHX20_2)
        SHX18_2 = SetEntityLodDist
        SHX19_2 = SHX17_2
        SHX20_2 = 200
        SHX18_2(SHX19_2, SHX20_2)
        SHX18_2 = table
        SHX18_2 = SHX18_2.insert
        SHX19_2 = SHX1_2.boardObjects
        SHX19_2 = SHX19_2[SHX7_2]
        SHX20_2 = SHX17_2
        SHX18_2(SHX19_2, SHX20_2)
        SHX18_2 = SetModelAsNoLongerNeeded
        SHX19_2 = SHX15_2
        SHX18_2(SHX19_2)
      end
    end
  end
end
SHX6_1 = RegisterNetEvent
SHX7_1 = "a641ace444"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = SHX2_2.bViewingBoard
  if SHX3_2 then
    SHX3_2 = SendNUIMessage
    SHX4_2 = {}
    SHX4_2.transactionType = "chess_move"
    SHX3_2(SHX4_2)
  end
  SHX2_2.boardFEN = SHX1_2
  SHX3_2 = SHX3_1
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = SHX5_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "36e0214c1e"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX1_2 then
    SHX2_2.bPlayingActive = false
  end
  SHX2_2.playingSide = SHX1_2
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "a8fdaf5c82"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2.bPlayingActive = SHX1_2
end
SHX6_1(SHX7_1, SHX8_1)
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = SHX0_1.locations
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.originPosition
  SHX2_2 = vector3
  SHX3_2 = 10.0
  SHX4_2 = 10.0
  SHX5_2 = 20.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX1_2 + SHX2_2
  SHX2_2 = SetCamParams
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2 = SHX3_2.spectatingCamera
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = -90.0
  SHX8_2 = 0.0
  SHX9_2 = 90.0
  SHX10_2 = 50.0
  SHX11_2 = 1000
  SHX12_2 = 0
  SHX13_2 = 0
  SHX14_2 = 2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
end
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = SHX1_1
  SHX3_2 = {}
  SHX3_2.boardFEN = nil
  SHX3_2.boardObject = 0
  SHX4_2 = {}
  SHX3_2.boardObjects = SHX4_2
  SHX3_2.playingSide = nil
  SHX3_2.playingActive = false
  SHX3_2.bViewingBoard = false
  SHX3_2.spectatingCamera = 0
  SHX3_2.insideStartMarker = false
  SHX3_2.insideRadius = false
  SHX2_2[SHX0_2] = SHX3_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createArea
  SHX4_2 = "chess_white_"
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX5_2 = SHX1_2.whitePosition
  SHX6_2 = 1.5
  SHX7_2 = 6
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX2_2.insideStartMarker = true
  end
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX2_2.insideStartMarker = false
  end
  function SHX10_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX2_2.playingSide
    if not SHX0_3 then
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to play as white"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "5f8c0ed877"
        SHX2_3 = SHX0_2
        SHX0_3(SHX1_3, SHX2_3)
      end
    else
      SHX0_3 = SHX2_2.playingSide
      if "w" == SHX0_3 then
        SHX0_3 = drawNativeNotification
        SHX1_3 = [[
Press ~INPUT_CONTEXT~ to resign.
Press ~INPUT_INTERACTION_MENU~ to toggle board]]
        SHX0_3(SHX1_3)
        SHX0_3 = IsControlJustPressed
        SHX1_3 = 0
        SHX2_3 = 51
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = SHX2_2.bViewingBoard
          if not SHX0_3 then
            SHX0_3 = TriggerServerEvent
            SHX1_3 = "a7db4cf034"
            SHX2_3 = SHX0_2
            SHX0_3(SHX1_3, SHX2_3)
          end
        end
      end
    end
  end
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.addMarker
  SHX4_2 = SHX1_2.whitePosition
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX1_2.whitePosition
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX1_2.whitePosition
  SHX6_2 = SHX6_2.z
  SHX7_2 = 1.0
  SHX8_2 = 1.0
  SHX9_2 = 1.0
  SHX10_2 = 255
  SHX11_2 = 0
  SHX12_2 = 0
  SHX13_2 = 170
  SHX14_2 = 50
  SHX15_2 = 27
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createArea
  SHX4_2 = "chess_black_"
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX5_2 = SHX1_2.blackPosition
  SHX6_2 = 1.5
  SHX7_2 = 6
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX2_2.insideStartMarker = true
  end
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX2_2.insideStartMarker = false
  end
  function SHX10_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX2_2.playingSide
    if not SHX0_3 then
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to play as black"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "467142150f"
        SHX2_3 = SHX0_2
        SHX0_3(SHX1_3, SHX2_3)
      end
    else
      SHX0_3 = SHX2_2.playingSide
      if "b" == SHX0_3 then
        SHX0_3 = drawNativeNotification
        SHX1_3 = [[
Press ~INPUT_CONTEXT~ to resign.
Press ~INPUT_INTERACTION_MENU~ to toggle board]]
        SHX0_3(SHX1_3)
        SHX0_3 = IsControlJustPressed
        SHX1_3 = 0
        SHX2_3 = 51
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = SHX2_2.bViewingBoard
          if not SHX0_3 then
            SHX0_3 = TriggerServerEvent
            SHX1_3 = "a7db4cf034"
            SHX2_3 = SHX0_2
            SHX0_3(SHX1_3, SHX2_3)
          end
        end
      end
    end
  end
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.addMarker
  SHX4_2 = SHX1_2.blackPosition
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX1_2.blackPosition
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX1_2.blackPosition
  SHX6_2 = SHX6_2.z
  SHX7_2 = 1.0
  SHX8_2 = 1.0
  SHX9_2 = 1.0
  SHX10_2 = 255
  SHX11_2 = 0
  SHX12_2 = 0
  SHX13_2 = 170
  SHX14_2 = 50
  SHX15_2 = 27
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createArea
  SHX4_2 = "chess_spectate_"
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX5_2 = SHX1_2.spectatePosition
  SHX6_2 = 2.0
  SHX7_2 = 6
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX10_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = SHX2_2.spectatingCamera
    if 0 == SHX0_3 then
      SHX0_3 = SHX2_2.playingSide
      if not SHX0_3 then
        SHX0_3 = drawNativeNotification
        SHX1_3 = [[
Press ~INPUT_CONTEXT~ to spectate the board
Press ~INPUT_MELEE_ATTACK_LIGHT~ to reset the board]]
        SHX0_3(SHX1_3)
        SHX0_3 = IsControlJustPressed
        SHX1_3 = 0
        SHX2_3 = 51
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = GetGameplayCamCoord
          SHX0_3 = SHX0_3()
          SHX1_3 = GetGameplayCamRot
          SHX2_3 = 2
          SHX1_3 = SHX1_3(SHX2_3)
          SHX2_3 = CreateCamWithParams
          SHX3_3 = "DEFAULT_SCRIPTED_CAMERA"
          SHX4_3 = SHX0_3.x
          SHX5_3 = SHX0_3.y
          SHX6_3 = SHX0_3.z
          SHX7_3 = SHX1_3.x
          SHX8_3 = SHX1_3.y
          SHX9_3 = SHX1_3.z
          SHX10_3 = 50.0
          SHX11_3 = true
          SHX12_3 = 2
          SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
          SHX2_2.spectatingCamera = SHX2_3
          SHX2_3 = RenderScriptCams
          SHX3_3 = true
          SHX4_3 = true
          SHX5_3 = 1000
          SHX6_3 = true
          SHX7_3 = true
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
          SHX2_3 = SHX6_1
          SHX3_3 = SHX0_2
          SHX2_3(SHX3_3)
          SHX2_3 = CMG
          SHX2_3 = SHX2_3.hideAllDisplays
          SHX3_3 = "chess"
          SHX2_3(SHX3_3)
        end
        SHX0_3 = DisableControlAction
        SHX1_3 = 0
        SHX2_3 = 140
        SHX3_3 = true
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        SHX0_3 = IsDisabledControlPressed
        SHX1_3 = 0
        SHX2_3 = 140
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = TriggerServerEvent
          SHX1_3 = "a07cde6467"
          SHX2_3 = SHX0_2
          SHX0_3(SHX1_3, SHX2_3)
        end
      end
    end
  end
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.addMarker
  SHX4_2 = SHX1_2.spectatePosition
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX1_2.spectatePosition
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX1_2.spectatePosition
  SHX6_2 = SHX6_2.z
  SHX7_2 = 1.0
  SHX8_2 = 1.0
  SHX9_2 = 1.0
  SHX10_2 = 0
  SHX11_2 = 0
  SHX12_2 = 255
  SHX13_2 = 170
  SHX14_2 = 50
  SHX15_2 = 27
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.addBlip
  SHX4_2 = SHX1_2.spectatePosition
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX1_2.spectatePosition
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX1_2.spectatePosition
  SHX6_2 = SHX6_2.z
  SHX7_2 = 183
  SHX8_2 = 13
  SHX9_2 = "Chess"
  SHX10_2 = 1.0
  SHX11_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = Citizen
    SHX0_3 = SHX0_3.Wait
    SHX1_3 = 2000
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.createArea
    SHX1_3 = "chess_radius_"
    SHX2_3 = SHX0_2
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX2_3 = SHX1_2.spectatePosition
    SHX3_3 = 250.0
    SHX4_3 = 100.0
    function SHX5_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4
      SHX0_4 = SHX0_2
      SHX2_1 = SHX0_4
      SHX2_2.insideRadius = true
      SHX0_4 = SHX2_2.boardFEN
      if SHX0_4 then
        SHX0_4 = SHX5_1
        SHX1_4 = SHX0_2
        SHX2_4 = SHX2_2
        SHX0_4(SHX1_4, SHX2_4)
      end
    end
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX2_2.insideRadius = false
      SHX0_4 = SHX4_1
      SHX1_4 = SHX2_2
      SHX0_4(SHX1_4)
      SHX0_4 = SHX2_2.boardObject
      if 0 ~= SHX0_4 then
        SHX0_4 = DeleteEntity
        SHX1_4 = SHX2_2.boardObject
        SHX0_4(SHX1_4)
        SHX2_2.boardObject = 0
      end
      SHX0_4 = nil
      SHX2_1 = SHX0_4
    end
    function SHX7_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX8_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
  end
  SHX3_2(SHX4_2)
end
SHX8_1 = Citizen
SHX8_1 = SHX8_1.CreateThread
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = AddTextEntryByHash
  SHX1_2 = 198910421
  SHX2_2 = [[
~INPUT_SELECT_WEAPON_UNARMED~ White View
~INPUT_SELECT_WEAPON_MELEE~ Black View
~INPUT_SELECT_WEAPON_SHOTGUN~ Birds View
~INPUT_FRONTEND_PAUSE_ALTERNATE~ Exit Spectate]]
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.locations
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX7_1
    SHX7_2 = SHX4_2
    SHX8_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2)
  end
end
SHX8_1(SHX9_1)
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.parseChessFEN
  SHX3_2 = SHX0_2.boardFEN
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX4_2 = SendNUIMessage
  SHX5_2 = {}
  SHX5_2.displayChessBoard = true
  SHX5_2.visible = SHX1_2
  SHX5_2.activeColour = SHX3_2
  SHX6_2 = SHX0_2.bPlayingActive
  SHX5_2.playingActive = SHX6_2
  SHX6_2 = SHX0_2.playingSide
  SHX5_2.playingSide = SHX6_2
  SHX4_2(SHX5_2)
  SHX4_2 = SHX3_1
  SHX5_2 = SHX0_2
  SHX4_2(SHX5_2)
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.bViewingBoard
  SHX1_2 = not SHX1_2
  SHX0_2.bViewingBoard = SHX1_2
  SHX1_2 = SetNuiFocus
  SHX2_2 = SHX0_2.bViewingBoard
  SHX3_2 = SHX0_2.bViewingBoard
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetNuiFocusKeepInput
  SHX2_2 = SHX0_2.bViewingBoard
  SHX1_2(SHX2_2)
  SHX1_2 = SHX8_1
  SHX2_2 = SHX0_2
  SHX3_2 = SHX0_2.bViewingBoard
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = SHX2_1
  if not SHX0_2 then
    return
  end
  SHX1_2 = SHX2_1
  SHX0_2 = SHX1_1
  SHX0_2 = SHX0_2[SHX1_2]
  SHX1_2 = SHX0_2.playingSide
  if SHX1_2 then
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.InvokeNative
    SHX2_2 = -6795882342541246497
    SHX3_2 = -1209618476
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX0_2.insideStartMarker
    if not SHX1_2 then
      SHX1_2 = drawNativeNotification
      SHX2_2 = "Press ~INPUT_INTERACTION_MENU~ to toggle board"
      SHX1_2(SHX2_2)
    end
    SHX1_2 = IsControlJustPressed
    SHX2_2 = 0
    SHX3_2 = 244
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = SHX9_1
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
    end
    SHX1_2 = SHX0_2.bPlayingActive
    if SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.parseChessFEN
      SHX2_2 = SHX0_2.boardFEN
      SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
      SHX3_2 = SHX0_2.playingSide
      if SHX2_2 == SHX3_2 then
        SHX3_2 = drawNativeText
        SHX4_2 = "~g~Your turn to make a move."
        SHX3_2(SHX4_2)
      else
        SHX3_2 = drawNativeText
        SHX4_2 = string
        SHX4_2 = SHX4_2.format
        SHX5_2 = "~y~%s is making their move."
        if "w" == SHX2_2 then
          SHX6_2 = "White"
          if SHX6_2 then
            goto SHX_LABEL_55
          end
        end
        SHX6_2 = "Black"
        -- [FIX IF ERROR] Move ::SHX_LABEL_55:: outside nested blocks until all 'goto SHX_LABEL_55' can see it
        ::SHX_LABEL_55::
        SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX4_2(SHX5_2, SHX6_2)
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      end
    else
      SHX1_2 = drawNativeText
      SHX2_2 = "~y~Waiting for other player to join..."
      SHX1_2(SHX2_2)
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerCoords
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX0_1.locations
    SHX3_2 = SHX2_1
    SHX2_2 = SHX2_2[SHX3_2]
    SHX2_2 = SHX2_2.originPosition
    SHX1_2 = SHX1_2 - SHX2_2
    SHX1_2 = #SHX1_2
    if SHX1_2 > 40.0 then
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "a7db4cf034"
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = SHX0_2.bViewingBoard
  if SHX1_2 then
    SHX1_2 = 0
    SHX2_2 = 6
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = DisableControlAction
      SHX6_2 = 0
      SHX7_2 = SHX4_2
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    end
    SHX1_2 = DisablePlayerFiring
    SHX2_2 = PlayerId
    SHX2_2 = SHX2_2()
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 24
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 25
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 200
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = IsDisabledControlJustReleased
    SHX2_2 = 0
    SHX3_2 = 200
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = SHX9_1
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = SHX0_2.spectatingCamera
  if 0 ~= SHX1_2 then
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.InvokeNative
    SHX2_2 = -6795882342541246497
    SHX3_2 = -1209618476
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = DisableAllControlActions
    SHX2_2 = 0
    SHX1_2(SHX2_2)
    SHX1_2 = BeginTextCommandDisplayHelp
    SHX2_2 = "STRING"
    SHX1_2(SHX2_2)
    SHX1_2 = AddTextComponentSubstringTextLabel
    SHX2_2 = "CHESS_SPECTATE"
    SHX1_2(SHX2_2)
    SHX1_2 = EndTextCommandDisplayHelp
    SHX2_2 = 0
    SHX3_2 = false
    SHX4_2 = false
    SHX5_2 = -1
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = IsDisabledControlJustPressed
    SHX2_2 = 0
    SHX3_2 = 157
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = SHX0_1.locations
      SHX2_2 = SHX2_1
      SHX1_2 = SHX1_2[SHX2_2]
      SHX1_2 = SHX1_2.originPosition
      SHX2_2 = vector3
      SHX3_2 = 24.0
      SHX4_2 = 10.0
      SHX5_2 = 10.0
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX1_2 + SHX2_2
      SHX2_2 = SetCamParams
      SHX3_2 = SHX0_2.spectatingCamera
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX7_2 = -45.0
      SHX8_2 = 0.0
      SHX9_2 = 90.0
      SHX10_2 = 50.0
      SHX11_2 = 1000
      SHX12_2 = 0
      SHX13_2 = 0
      SHX14_2 = 2
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    else
      SHX1_2 = IsDisabledControlJustPressed
      SHX2_2 = 0
      SHX3_2 = 158
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if SHX1_2 then
        SHX1_2 = SHX0_1.locations
        SHX2_2 = SHX2_1
        SHX1_2 = SHX1_2[SHX2_2]
        SHX1_2 = SHX1_2.originPosition
        SHX2_2 = vector3
        SHX3_2 = -3.0
        SHX4_2 = 10.0
        SHX5_2 = 10.0
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX1_2 = SHX1_2 + SHX2_2
        SHX2_2 = SetCamParams
        SHX3_2 = SHX0_2.spectatingCamera
        SHX4_2 = SHX1_2.x
        SHX5_2 = SHX1_2.y
        SHX6_2 = SHX1_2.z
        SHX7_2 = -45.0
        SHX8_2 = 0.0
        SHX9_2 = -90.0
        SHX10_2 = 50.0
        SHX11_2 = 1000
        SHX12_2 = 0
        SHX13_2 = 0
        SHX14_2 = 2
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      else
        SHX1_2 = IsDisabledControlJustPressed
        SHX2_2 = 0
        SHX3_2 = 160
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if SHX1_2 then
          SHX1_2 = SHX6_1
          SHX2_2 = SHX2_1
          SHX1_2(SHX2_2)
        else
          SHX1_2 = IsDisabledControlJustReleased
          SHX2_2 = 0
          SHX3_2 = 200
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          if SHX1_2 then
            SHX1_2 = RenderScriptCams
            SHX2_2 = false
            SHX3_2 = true
            SHX4_2 = 1000
            SHX5_2 = false
            SHX6_2 = false
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
            SHX1_2 = SetCamActive
            SHX2_2 = SHX0_2.spectatingCamera
            SHX3_2 = false
            SHX1_2(SHX2_2, SHX3_2)
            SHX1_2 = DestroyCam
            SHX2_2 = SHX0_2.spectatingCamera
            SHX3_2 = true
            SHX1_2(SHX2_2, SHX3_2)
            SHX0_2.spectatingCamera = 0
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.showAllDisplays
            SHX2_2 = "chess"
            SHX1_2(SHX2_2)
          end
        end
      end
    end
  end
end
SHX11_1 = CMG
SHX11_1 = SHX11_1.createThreadOnTick
SHX12_1 = SHX10_1
SHX13_1 = "Chess Board"
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = CMG
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX1_2 = SHX2_1
    SHX0_2 = SHX1_1
    SHX0_2 = SHX0_2[SHX1_2]
    SHX0_2 = SHX0_2.playingSide
    SHX0_2 = nil ~= SHX0_2
    return SHX0_2
  else
    SHX0_2 = false
    return SHX0_2
  end
end
SHX11_1.inChessGame = SHX12_1
SHX11_1 = RegisterNUICallback
SHX12_1 = "chessUpdatedFEN"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX2_1
  if SHX1_2 then
    SHX2_2 = SHX2_1
    SHX1_2 = SHX1_1
    SHX1_2 = SHX1_2[SHX2_2]
    SHX2_2 = SHX1_2.bViewingBoard
    if SHX2_2 then
      SHX2_2 = SHX1_2.bPlayingActive
      if SHX2_2 then
        SHX2_2 = TriggerServerEvent
        SHX3_2 = "604b58a33c"
        SHX4_2 = SHX0_2
        SHX2_2(SHX3_2, SHX4_2)
      end
    end
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNUICallback
SHX12_1 = "chessPlayCheckSound"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX1_2 = SHX2_1
    SHX0_2 = SHX1_1
    SHX0_2 = SHX0_2[SHX1_2]
    SHX0_2 = SHX0_2.bViewingBoard
    if SHX0_2 then
      SHX0_2 = SendNUIMessage
      SHX1_2 = {}
      SHX1_2.transactionType = "chess_notify"
      SHX0_2(SHX1_2)
    end
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "29d5f19513"
function SHX13_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 5000
  SHX3_2(SHX4_2)
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX0_2]
  SHX4_2 = SHX3_2.bViewingBoard
  if SHX4_2 then
    SHX4_2 = SHX9_1
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerCoords
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX0_1.locations
  SHX5_2 = SHX5_2[SHX0_2]
  SHX5_2 = SHX5_2.originPosition
  SHX4_2 = SHX4_2 - SHX5_2
  SHX4_2 = #SHX4_2
  if SHX4_2 < 75.0 then
    if SHX1_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.announceMpBigMsg
      SHX5_2 = "STALEMATE"
      SHX6_2 = "The chess game has ended with a draw!"
      SHX7_2 = 10000
      SHX8_2 = true
      SHX9_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    else
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.announceMpBigMsg
      SHX5_2 = "CHECKMATE"
      SHX6_2 = string
      SHX6_2 = SHX6_2.format
      SHX7_2 = "%s has won the chess game!"
      SHX8_2 = SHX2_2
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX7_2 = 10000
      SHX8_2 = true
      SHX9_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    end
  end
  SHX4_2 = SHX3_2.boardObjects
  if SHX4_2 then
    SHX4_2 = pairs
    SHX5_2 = SHX3_2.boardObjects
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = pairs
      SHX11_2 = SHX9_2
      SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
      for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
        if 0 ~= SHX15_2 then
          SHX16_2 = GetEntityModel
          SHX17_2 = SHX15_2
          SHX16_2 = SHX16_2(SHX17_2)
          if "White" == SHX2_2 and -581108805 == SHX16_2 then
            SHX17_2 = CMG
            SHX17_2 = SHX17_2.startFireworksAtCoord
            SHX18_2 = GetEntityCoords
            SHX19_2 = SHX15_2
            SHX20_2 = true
            SHX18_2, SHX19_2, SHX20_2 = SHX18_2(SHX19_2, SHX20_2)
            SHX17_2(SHX18_2, SHX19_2, SHX20_2)
          elseif "Black" == SHX2_2 and -864843523 == SHX16_2 then
            SHX17_2 = CMG
            SHX17_2 = SHX17_2.startFireworksAtCoord
            SHX18_2 = GetEntityCoords
            SHX19_2 = SHX15_2
            SHX20_2 = true
            SHX18_2, SHX19_2, SHX20_2 = SHX18_2(SHX19_2, SHX20_2)
            SHX17_2(SHX18_2, SHX19_2, SHX20_2)
          end
        end
      end
    end
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = AddEventHandler
SHX12_1 = "onResourceStop"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 == SHX0_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX1_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX6_2.boardObject
      if 0 ~= SHX7_2 then
        SHX7_2 = DeleteEntity
        SHX8_2 = SHX6_2.boardObject
        SHX7_2(SHX8_2)
      end
      SHX7_2 = SHX4_1
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
end
SHX11_1(SHX12_1, SHX13_1)
