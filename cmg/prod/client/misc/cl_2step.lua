-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1
SHX0_1 = {}
SHX1_1 = false
SHX2_1 = false
SHX3_1 = Citizen
SHX3_1 = SHX3_1.CreateThread
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = GetVehiclePedIsIn
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerPed
    SHX2_2 = SHX2_2()
    SHX3_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if 0 ~= SHX1_2 then
      SHX2_2 = GetPedInVehicleSeat
      SHX3_2 = SHX1_2
      SHX4_2 = -1
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 == SHX0_2 then
        SHX2_2 = tCMG
        SHX2_2 = SHX2_2.getVehicleInfos
        SHX3_2 = SHX1_2
        SHX2_2 = SHX2_2(SHX3_2)
        SHX3_2 = DecorGetInt
        SHX4_2 = SHX1_2
        SHX5_2 = "0a6cf607ed"
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.getClientUserId
        SHX4_2 = SHX4_2()
        if SHX2_2 == SHX4_2 and SHX3_2 > 0 then
          SHX4_2 = SHX0_1
          SHX4_2 = SHX4_2[SHX3_2]
          if nil ~= SHX4_2 then
            SHX4_2 = SHX0_1
            SHX4_2 = SHX4_2[SHX3_2]
            if 0 ~= SHX4_2 then
              SHX4_2 = true
              SHX1_1 = SHX4_2
              while true do
                SHX4_2 = GetVehiclePedIsIn
                SHX5_2 = CMG
                SHX5_2 = SHX5_2.getPlayerPed
                SHX5_2 = SHX5_2()
                SHX6_2 = false
                SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
                if 0 == SHX4_2 then
                  break
                end
                SHX4_2 = SHX2_1
                if false ~= SHX4_2 then
                  break
                end
                SHX4_2 = Wait
                SHX5_2 = 100
                SHX4_2(SHX5_2)
              end
              SHX4_2 = false
              SHX2_1 = SHX4_2
              SHX4_2 = false
              SHX1_1 = SHX4_2
            end
          end
        end
      end
    end
    SHX2_2 = Wait
    SHX3_2 = 1000
    SHX2_2(SHX3_2)
  end
end
SHX3_1(SHX4_1)
SHX3_1 = false
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = IsControlPressed
    SHX1_2 = 1
    SHX2_2 = 71
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = IsControlPressed
      SHX1_2 = 1
      SHX2_2 = 72
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
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
          SHX2_2 = GetEntityCoords
          SHX3_2 = SHX1_2
          SHX2_2 = SHX2_2(SHX3_2)
          SHX3_2 = GetVehicleCurrentRpm
          SHX4_2 = GetVehiclePedIsIn
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.getPlayerPed
          SHX5_2 = SHX5_2()
          SHX6_2 = false
          SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2)
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX4_2 = math
          SHX4_2 = SHX4_2.random
          SHX5_2 = 25
          SHX6_2 = 200
          SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
          SHX5_2 = GetPedInVehicleSeat
          SHX6_2 = SHX1_2
          SHX7_2 = -1
          SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
          if SHX5_2 == SHX0_2 then
            SHX5_2 = SHX3_1
            if not SHX5_2 then
              SHX5_2 = true
              SHX3_1 = SHX5_2
              SHX5_2 = Citizen
              SHX5_2 = SHX5_2.CreateThread
              function SHX6_2()
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
                SHX0_3 = SHX3_2
                SHX1_3 = 0.75
                if SHX0_3 > SHX1_3 then
                  SHX0_3 = CMG
                  SHX0_3 = SHX0_3.playVehicleFlameExhaustEffect
                  SHX1_3 = SHX1_2
                  SHX0_3(SHX1_3)
                  SHX0_3 = AddExplosion
                  SHX1_3 = SHX2_2.x
                  SHX2_3 = SHX2_2.y
                  SHX3_3 = SHX2_2.z
                  SHX4_3 = 61
                  SHX5_3 = 0.0
                  SHX6_3 = true
                  SHX7_3 = true
                  SHX8_3 = 0.0
                  SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
                  SHX0_3 = SetVehicleTurboPressure
                  SHX1_3 = SHX1_2
                  SHX2_3 = 25
                  SHX0_3(SHX1_3, SHX2_3)
                  SHX0_3 = Wait
                  SHX1_3 = SHX4_2
                  SHX0_3(SHX1_3)
                end
                SHX0_3 = false
                SHX3_1 = SHX0_3
              end
              SHX5_2(SHX6_2)
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
SHX7_1 = "Vehicle AntiLag"
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = true
  SHX2_1 = SHX2_2
  SHX2_2 = SHX0_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX5_1.setVehicleAntiLag = SHX6_1
