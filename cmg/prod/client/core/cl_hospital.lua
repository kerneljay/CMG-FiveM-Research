-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1
SHX0_1 = GetGameTimer
SHX0_1 = SHX0_1()
SHX0_1 = SHX0_1 - 30000
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = 1833.0328369141
SHX4_1 = 3682.8110351563
SHX5_1 = 33.270057678223
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.sandy = SHX2_1
SHX2_1 = vector3
SHX3_1 = -251.9546661377
SHX4_1 = 6334.146484375
SHX5_1 = 31.427177429199
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.paleto = SHX2_1
SHX2_1 = vector3
SHX3_1 = -436.04296875
SHX4_1 = -326.27416992188
SHX5_1 = 33.910766601562
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.mountzenah = SHX2_1
SHX2_1 = vector3
SHX3_1 = -2158.7416992188
SHX4_1 = 5235.0043945312
SHX5_1 = 17.791783828735
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.vipisland = SHX2_1
SHX2_1 = vector3
SHX3_1 = -1963.4949951172
SHX4_1 = 3028.5361328125
SHX5_1 = 31.820279846191
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.mpstrainingrounds = SHX2_1
SHX2_1 = vector3
SHX3_1 = 310.47421264648
SHX4_1 = -566.21301269531
SHX5_1 = 42.396602630615
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.pillbox = SHX2_1
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = 2117668672
SHX5_1 = vector3
SHX6_1 = 1777.61
SHX7_1 = 2559.03
SHX8_1 = 45.36013
SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX3_1[4] = SHX7_1
SHX3_1[5] = SHX8_1
SHX3_1[6] = SHX9_1
SHX3_1[7] = SHX10_1
SHX3_1[8] = SHX11_1
SHX3_1[9] = SHX12_1
SHX3_1[10] = SHX13_1
SHX4_1 = {}
SHX5_1 = 2117668672
SHX6_1 = vector3
SHX7_1 = 1777.61
SHX8_1 = 2561.433
SHX9_1 = 45.36013
SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX4_1[1] = SHX5_1
SHX4_1[2] = SHX6_1
SHX4_1[3] = SHX7_1
SHX4_1[4] = SHX8_1
SHX4_1[5] = SHX9_1
SHX4_1[6] = SHX10_1
SHX4_1[7] = SHX11_1
SHX4_1[8] = SHX12_1
SHX4_1[9] = SHX13_1
SHX5_1 = {}
SHX6_1 = 2117668672
SHX7_1 = vector3
SHX8_1 = 1777.61
SHX9_1 = 2563.435
SHX10_1 = 45.36013
SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX5_1[3] = SHX8_1
SHX5_1[4] = SHX9_1
SHX5_1[5] = SHX10_1
SHX5_1[6] = SHX11_1
SHX5_1[7] = SHX12_1
SHX5_1[8] = SHX13_1
SHX6_1 = {}
SHX7_1 = 2117668672
SHX8_1 = vector3
SHX9_1 = 1781.709
SHX10_1 = 2565.437
SHX11_1 = 45.36013
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX6_1[1] = SHX7_1
SHX6_1[2] = SHX8_1
SHX6_1[3] = SHX9_1
SHX6_1[4] = SHX10_1
SHX6_1[5] = SHX11_1
SHX6_1[6] = SHX12_1
SHX6_1[7] = SHX13_1
SHX7_1 = {}
SHX8_1 = 2117668672
SHX9_1 = vector3
SHX10_1 = 1781.709
SHX11_1 = 2563.435
SHX12_1 = 45.36013
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX7_1[3] = SHX10_1
SHX7_1[4] = SHX11_1
SHX7_1[5] = SHX12_1
SHX7_1[6] = SHX13_1
SHX8_1 = {}
SHX9_1 = 2117668672
SHX10_1 = vector3
SHX11_1 = 1781.709
SHX12_1 = 2561.433
SHX13_1 = 45.36013
SHX10_1, SHX11_1, SHX12_1, SHX13_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX8_1[3] = SHX11_1
SHX8_1[4] = SHX12_1
SHX8_1[5] = SHX13_1
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX3_1 = false
SHX4_1 = nil
SHX5_1 = 0
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = globalInPrison
  if SHX1_2 then
    SHX1_2 = SHX3_1
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.DrawText3D
      SHX2_2 = SHX0_2[2]
      SHX3_2 = "Press [E] to lay on the bed"
      SHX4_2 = 0.45
      SHX5_2 = 4
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = IsControlJustPressed
      SHX2_2 = 0
      SHX3_2 = 51
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if SHX1_2 then
        SHX1_2 = true
        SHX3_1 = SHX1_2
        SHX1_2 = GetGameTimer
        SHX1_2 = SHX1_2()
        SHX5_1 = SHX1_2
        SHX1_2 = PlayerPedId
        SHX1_2 = SHX1_2()
        SHX2_2 = SetEntityCoordsNoOffset
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2[2]
        SHX4_2 = SHX4_2.x
        SHX5_2 = SHX0_2[2]
        SHX5_2 = SHX5_2.y
        SHX6_2 = SHX0_2[2]
        SHX6_2 = SHX6_2.z
        SHX6_2 = SHX6_2 + 1.0
        SHX7_2 = true
        SHX8_2 = false
        SHX9_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX2_2 = GetClosestObjectOfType
        SHX3_2 = SHX0_2[2]
        SHX3_2 = SHX3_2.x
        SHX4_2 = SHX0_2[2]
        SHX4_2 = SHX4_2.y
        SHX5_2 = SHX0_2[2]
        SHX5_2 = SHX5_2.z
        SHX6_2 = 1.5
        SHX7_2 = SHX0_2[1]
        SHX8_2 = false
        SHX9_2 = false
        SHX10_2 = false
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        if 0 ~= SHX2_2 then
          SHX3_2 = SetEntityHeading
          SHX4_2 = SHX1_2
          SHX5_2 = GetEntityHeading
          SHX6_2 = SHX2_2
          SHX5_2 = SHX5_2(SHX6_2)
          SHX5_2 = SHX5_2 + 180.0
          SHX3_2(SHX4_2, SHX5_2)
        end
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.loadAnimDict
        SHX4_2 = "lying@on_grass"
        SHX3_2(SHX4_2)
        SHX3_2 = TaskPlayAnim
        SHX4_2 = SHX1_2
        SHX5_2 = "lying@on_grass"
        SHX6_2 = "base"
        SHX7_2 = 8.0
        SHX8_2 = 8.0
        SHX9_2 = -1
        SHX10_2 = 1
        SHX11_2 = 0.0
        SHX12_2 = false
        SHX13_2 = false
        SHX14_2 = false
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        SHX3_2 = RemoveAnimDict
        SHX4_2 = "lying@on_grass"
        SHX3_2(SHX4_2)
        SHX3_2 = Citizen
        SHX3_2 = SHX3_2.CreateThread
        function SHX4_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
          SHX0_3 = Citizen
          SHX0_3 = SHX0_3.Wait
          SHX1_3 = 0
          SHX0_3(SHX1_3)
          SHX0_3 = SHX0_2
          SHX4_1 = SHX0_3
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.startCircularProgressBar
          SHX1_3 = ""
          SHX2_3 = 60000
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
        SHX3_2(SHX4_2)
      end
    end
  end
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = SHX4_1
    if SHX0_2 then
      SHX0_2 = PlayerPedId
      SHX0_2 = SHX0_2()
      SHX1_2 = IsEntityPlayingAnim
      SHX2_2 = SHX0_2
      SHX3_2 = "lying@on_grass"
      SHX4_2 = "base"
      SHX5_2 = 3
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if not SHX1_2 then
        SHX1_2 = GetClosestObjectOfType
        SHX2_2 = SHX4_1
        SHX2_2 = SHX2_2[2]
        SHX2_2 = SHX2_2.x
        SHX3_2 = SHX4_1
        SHX3_2 = SHX3_2[2]
        SHX3_2 = SHX3_2.y
        SHX4_2 = SHX4_1
        SHX4_2 = SHX4_2[2]
        SHX4_2 = SHX4_2.z
        SHX5_2 = 1.5
        SHX6_2 = SHX4_1
        SHX6_2 = SHX6_2[1]
        SHX7_2 = false
        SHX8_2 = false
        SHX9_2 = false
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        if 0 ~= SHX1_2 then
          SHX2_2 = GetOffsetFromEntityInWorldCoords
          SHX3_2 = SHX1_2
          SHX4_2 = 1.0
          SHX5_2 = 0.0
          SHX6_2 = 0.0
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX3_2 = SetEntityCoordsNoOffset
          SHX4_2 = SHX0_2
          SHX5_2 = SHX2_2.x
          SHX6_2 = SHX2_2.y
          SHX7_2 = SHX2_2.z
          SHX7_2 = SHX7_2 + 0.5
          SHX8_2 = true
          SHX9_2 = false
          SHX10_2 = false
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        end
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.stopCircularProgressBar
        SHX2_2()
        SHX2_2 = false
        SHX3_1 = SHX2_2
        SHX2_2 = nil
        SHX4_1 = SHX2_2
        SHX2_2 = 0
        SHX5_1 = SHX2_2
      else
        SHX1_2 = SHX5_1
        if SHX1_2 > 0 then
          SHX1_2 = GetGameTimer
          SHX1_2 = SHX1_2()
          SHX2_2 = SHX5_1
          SHX1_2 = SHX1_2 - SHX2_2
          SHX2_2 = 60000
          if SHX1_2 > SHX2_2 then
            SHX1_2 = SetEntityHealth
            SHX2_2 = SHX0_2
            SHX3_2 = 200
            SHX1_2(SHX2_2, SHX3_2)
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.notify
            SHX2_2 = "~g~Healed, free of charge by the NHS."
            SHX1_2(SHX2_2)
            SHX1_2 = 0
            SHX5_1 = SHX1_2
          end
        end
      end
    end
  end
end
SHX8_1 = AddEventHandler
SHX9_1 = "CMG:onClientSpawn"
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_PICKUP~ to recieve medical attention."
      SHX0_3(SHX1_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX1_3 = IsControlJustPressed
      SHX2_3 = 1
      SHX3_3 = 51
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = SHX0_3.hospitalName
        if "vipisland" == SHX1_3 then
          SHX1_3 = CMG
          SHX1_3 = SHX1_3.isPlatClub
          SHX1_3 = SHX1_3()
          if not SHX1_3 then
            SHX1_3 = notify
            SHX2_3 = "~y~You need to be a subscriber of CMG Platinum to use this location."
            SHX1_3(SHX2_3)
            SHX1_3 = notify
            SHX2_3 = "~y~Available @ store.cmgstudios.net"
            SHX1_3(SHX2_3)
            return
          end
        end
        SHX1_3 = SHX0_3.hospitalName
        if "mpstrainingrounds" == SHX1_3 then
          SHX1_3 = CMG
          SHX1_3 = SHX1_3.getPlayerBucket
          SHX1_3 = SHX1_3()
          SHX2_3 = CMG
          SHX2_3 = SHX2_3.getTrainingGroundsBucket
          SHX2_3 = SHX2_3()
          if SHX1_3 ~= SHX2_3 then
            SHX1_3 = notify
            SHX2_3 = "~r~You must be in training grounds to use this heal point."
            SHX1_3(SHX2_3)
            return
          end
        end
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerPed
        SHX1_3 = SHX1_3()
        SHX2_3 = tCMG
        SHX2_3 = SHX2_3.isInComa
        SHX2_3 = SHX2_3()
        if SHX2_3 then
          SHX2_3 = CMG
          SHX2_3 = SHX2_3.isCarrying
          SHX2_3 = SHX2_3()
          if not SHX2_3 then
            goto SHX_LABEL_106
          end
        end
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.getPlayerVehicle
        SHX2_3 = SHX2_3()
        if 0 == SHX2_3 then
          SHX2_3 = CMG
          SHX2_3 = SHX2_3.getPlayerCombatTimer
          SHX2_3 = SHX2_3()
          if 0 == SHX2_3 then
            SHX2_3 = GetGameTimer
            SHX2_3 = SHX2_3()
            SHX3_3 = SHX0_1
            SHX3_3 = SHX3_3 + 30000
            if SHX2_3 > SHX3_3 then
              SHX2_3 = tCMG
              SHX2_3 = SHX2_3.isInComa
              SHX2_3 = SHX2_3()
              if SHX2_3 then
                SHX2_3 = TriggerServerEvent
                SHX3_3 = "a5747e8851"
                SHX2_3(SHX3_3)
              else
                SHX2_3 = TriggerServerEvent
                SHX3_3 = "d864a7ba56"
                SHX2_3(SHX3_3)
              end
              SHX2_3 = SetEntityHealth
              SHX3_3 = SHX1_3
              SHX4_3 = 200
              SHX2_3(SHX3_3, SHX4_3)
              SHX2_3 = tCMG
              SHX2_3 = SHX2_3.notify
              SHX3_3 = "~g~Healed, free of charge by the NHS."
              SHX2_3(SHX3_3)
              SHX2_3 = GetGameTimer
              SHX2_3 = SHX2_3()
              SHX0_1 = SHX2_3
            else
              SHX2_3 = tCMG
              SHX2_3 = SHX2_3.notify
              SHX3_3 = "~r~Healing cooldown, come back later."
              SHX2_3(SHX3_3)
            end
          else
            SHX2_3 = tCMG
            SHX2_3 = SHX2_3.notify
            SHX3_3 = "~r~You can not heal whilst in combat."
            SHX2_3(SHX3_3)
          end
        else
          SHX2_3 = tCMG
          SHX2_3 = SHX2_3.notify
          SHX3_3 = "~r~You can not heal whilst in a vehicle."
          SHX2_3(SHX3_3)
          goto SHX_LABEL_110
          -- [FIX IF ERROR] Move ::SHX_LABEL_106:: outside nested blocks until all 'goto SHX_LABEL_106' can see it
          ::SHX_LABEL_106::
          SHX2_3 = tCMG
          SHX2_3 = SHX2_3.notify
          SHX3_3 = "~r~You are bleeding out, call a doctor ASAP!"
          SHX2_3(SHX3_3)
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_110:: outside nested blocks until all 'goto SHX_LABEL_110' can see it
      ::SHX_LABEL_110::
    end
    SHX5_2 = pairs
    SHX6_2 = SHX1_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.addMarker
      SHX12_2 = SHX10_2.x
      SHX13_2 = SHX10_2.y
      SHX14_2 = SHX10_2.z
      SHX15_2 = 1.0
      SHX16_2 = 1.0
      SHX17_2 = 1.0
      SHX18_2 = 0
      SHX19_2 = 0
      SHX20_2 = 255
      SHX21_2 = 100
      SHX22_2 = 50
      SHX23_2 = 27
      SHX24_2 = false
      SHX25_2 = false
      SHX26_2 = true
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = SHX9_2
      SHX13_2 = "_hospital"
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2
      SHX14_2 = 2.0
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX19_2 = {}
      SHX19_2.hospitalName = SHX9_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    end
    SHX5_2 = pairs
    SHX6_2 = SHX2_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "hospitalBed_"
      SHX13_2 = tostring
      SHX14_2 = SHX9_2
      SHX13_2 = SHX13_2(SHX14_2)
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2[2]
      SHX14_2 = 1.25
      SHX15_2 = 5.0
      function SHX16_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      function SHX17_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX18_2 = SHX6_1
      SHX19_2 = SHX10_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    end
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.createThreadOnTick
    SHX6_2 = SHX7_1
    SHX7_2 = "Hospital Bed"
    SHX5_2(SHX6_2, SHX7_2)
  end
end
SHX8_1(SHX9_1, SHX10_1)
