-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1
SHX0_1 = {}
SHX1_1 = -1352468814
SHX0_1[SHX1_1] = "trflat"
SHX1_1 = -877478386
SHX0_1[SHX1_1] = "TRAILERS"
SHX1_1 = -2140210194
SHX0_1[SHX1_1] = "DockTrailer"
SHX1_1 = 1050873897
SHX0_1[SHX1_1] = "heli1"
SHX1_1 = 1850558926
SHX0_1[SHX1_1] = "militaire1"
SHX1_1 = -1461353326
SHX0_1[SHX1_1] = "bvttanker"
SHX1_1 = 2091594960
SHX0_1[SHX1_1] = "tr4"
SHX1_1 = RegisterNetEvent
SHX2_1 = "38e29030b0"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getAllVehicles
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX1_2()
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = NetworkHasControlOfEntity
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = GetPedInVehicleSeat
      SHX7_2 = SHX5_2
      SHX8_2 = -1
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      if 0 == SHX6_2 then
        SHX6_2 = GetVehiclePedIsIn
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.getPlayerPed
        SHX7_2 = SHX7_2()
        SHX8_2 = true
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        if SHX5_2 ~= SHX6_2 then
          SHX6_2 = GetEntityModel
          SHX7_2 = SHX5_2
          SHX6_2 = SHX6_2(SHX7_2)
          SHX7_2 = SHX0_1
          SHX6_2 = SHX7_2[SHX6_2]
          if nil == SHX6_2 then
            SHX6_2 = GetEntityModel
            SHX7_2 = SHX5_2
            SHX6_2 = SHX6_2(SHX7_2)
            if -291165322 ~= SHX6_2 then
              SHX6_2 = DeleteEntity
              SHX7_2 = SHX5_2
              SHX6_2(SHX7_2)
            end
          end
        end
      end
    end
  end
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = RegisterNetEvent
SHX2_1 = "e2ed727de4"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getAllVehicles
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX1_2()
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = NetworkHasControlOfEntity
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = GetPedInVehicleSeat
      SHX7_2 = SHX5_2
      SHX8_2 = -1
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      if 0 == SHX6_2 then
        SHX6_2 = GetVehiclePedIsIn
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.getPlayerPed
        SHX7_2 = SHX7_2()
        SHX8_2 = true
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        if SHX5_2 ~= SHX6_2 then
          SHX6_2 = GetVehicleEngineHealth
          SHX7_2 = SHX5_2
          SHX6_2 = SHX6_2(SHX7_2)
          SHX7_2 = 200.0
          if SHX6_2 <= SHX7_2 then
            SHX6_2 = GetEntityModel
            SHX7_2 = SHX5_2
            SHX6_2 = SHX6_2(SHX7_2)
            SHX7_2 = SHX0_1
            SHX6_2 = SHX7_2[SHX6_2]
            if false == SHX6_2 then
              SHX6_2 = DeleteEntity
              SHX7_2 = SHX5_2
              SHX6_2(SHX7_2)
            end
          end
        end
      end
    end
  end
  SHX0_2 = pairs
  SHX1_2 = GetGamePool
  SHX2_2 = "CPed"
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX1_2(SHX2_2)
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = NetworkHasControlOfEntity
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = GetPedType
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if 28 == SHX6_2 then
        SHX6_2 = IsPedDeadOrDying
        SHX7_2 = SHX5_2
        SHX8_2 = true
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        if SHX6_2 then
          SHX6_2 = DeletePed
          SHX7_2 = SHX5_2
          SHX6_2(SHX7_2)
        end
      end
    end
  end
end
SHX1_1(SHX2_1, SHX3_1)
