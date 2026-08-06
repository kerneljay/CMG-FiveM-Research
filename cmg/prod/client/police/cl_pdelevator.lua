-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1096.1197509766
SHX4_1 = -850.44573974609
SHX5_1 = 4.8845114707947
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor -1"
SHX2_1 = {}
SHX3_1 = 2
SHX4_1 = 3
SHX5_1 = 4
SHX6_1 = 5
SHX7_1 = 6
SHX8_1 = 7
SHX9_1 = 8
SHX10_1 = 9
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Holding Cells, Identification Rooms, Interrogation Rooms, Garage"
SHX0_1[1] = SHX1_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1096.1131591797
SHX4_1 = -850.54858398438
SHX5_1 = 10.2770795822
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor -2"
SHX2_1 = {}
SHX3_1 = 1
SHX4_1 = 3
SHX5_1 = 4
SHX6_1 = 5
SHX7_1 = 6
SHX8_1 = 7
SHX9_1 = 8
SHX10_1 = 9
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Laboratory, Evidence Rooms"
SHX0_1[2] = SHX1_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1096.0910644531
SHX4_1 = -850.46240234375
SHX5_1 = 13.687476158
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor -3"
SHX2_1 = {}
SHX3_1 = 1
SHX4_1 = 2
SHX5_1 = 4
SHX6_1 = 5
SHX7_1 = 6
SHX8_1 = 7
SHX9_1 = 8
SHX10_1 = 9
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Garage, Armoury"
SHX0_1[3] = SHX1_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1096.3427734375
SHX4_1 = -850.41583251953
SHX5_1 = 19.001399993896
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor 1"
SHX2_1 = {}
SHX3_1 = 1
SHX4_1 = 2
SHX5_1 = 3
SHX6_1 = 5
SHX7_1 = 6
SHX8_1 = 7
SHX9_1 = 8
SHX10_1 = 9
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Lobby, Paperwork, Interview Rooms, Conference Hall"
SHX0_1[4] = SHX1_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1096.3331298828
SHX4_1 = -850.19696044922
SHX5_1 = 23.038097381592
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor 2"
SHX2_1 = {}
SHX3_1 = 1
SHX4_1 = 2
SHX5_1 = 3
SHX6_1 = 4
SHX7_1 = 6
SHX8_1 = 7
SHX9_1 = 8
SHX10_1 = 9
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Public Space, Cafe"
SHX0_1[5] = SHX1_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1096.2581787109
SHX4_1 = -850.19952392578
SHX5_1 = 26.827362060547
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor 3"
SHX2_1 = {}
SHX3_1 = 1
SHX4_1 = 2
SHX5_1 = 3
SHX6_1 = 4
SHX7_1 = 5
SHX8_1 = 7
SHX9_1 = 8
SHX10_1 = 9
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Gym, Division Offices, Cloakrooms, Briefing Room"
SHX0_1[6] = SHX1_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1096.2662353516
SHX4_1 = -850.17083740234
SHX5_1 = 30.756698608398
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor 4"
SHX2_1 = {}
SHX3_1 = 1
SHX4_1 = 2
SHX5_1 = 3
SHX6_1 = 4
SHX7_1 = 5
SHX8_1 = 6
SHX9_1 = 8
SHX10_1 = 9
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Ops Center, Gold Command Office, Office Staff"
SHX0_1[7] = SHX1_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1095.9621582031
SHX4_1 = -850.63787841797
SHX5_1 = 34.360549926758
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor 5"
SHX2_1 = {}
SHX3_1 = 1
SHX4_1 = 2
SHX5_1 = 3
SHX6_1 = 4
SHX7_1 = 5
SHX8_1 = 6
SHX9_1 = 7
SHX10_1 = 9
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Silver Command Office, Captains Office, Office Staff"
SHX0_1[8] = SHX1_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1096.4049072266
SHX4_1 = -849.94915771484
SHX5_1 = 38.242813110352
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor 6"
SHX2_1 = {}
SHX3_1 = 1
SHX4_1 = 2
SHX5_1 = 3
SHX6_1 = 4
SHX7_1 = 5
SHX8_1 = 6
SHX9_1 = 7
SHX10_1 = 8
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Helipad, Rooftop"
SHX0_1[9] = SHX1_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1065.8210449219
SHX4_1 = -834.02844238281
SHX5_1 = 5.4801788330078
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor -1"
SHX2_1 = {}
SHX3_1 = 11
SHX4_1 = 12
SHX5_1 = 13
SHX6_1 = 14
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Holding Cells, Identification Rooms, Interrogation Rooms, Garage"
SHX0_1[10] = SHX1_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1065.8479003906
SHX4_1 = -834.02172851563
SHX5_1 = 11.037246704102
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor -2"
SHX2_1 = {}
SHX3_1 = 10
SHX4_1 = 12
SHX5_1 = 13
SHX6_1 = 14
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Laboratory, Evidence Rooms"
SHX0_1[11] = SHX1_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1065.9549560547
SHX4_1 = -833.87341308594
SHX5_1 = 14.883050918579
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor -3"
SHX2_1 = {}
SHX3_1 = 10
SHX4_1 = 11
SHX5_1 = 13
SHX6_1 = 14
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Garage, Armoury"
SHX0_1[12] = SHX1_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1065.8916015625
SHX4_1 = -833.84100341797
SHX5_1 = 19.035511016846
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor 1"
SHX2_1 = {}
SHX3_1 = 10
SHX4_1 = 11
SHX5_1 = 12
SHX6_1 = 14
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Lobby, Paperwork, Interview Rooms, Conference Hall"
SHX0_1[13] = SHX1_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -1065.9194335938
SHX4_1 = -833.87164306641
SHX5_1 = 27.036159515381
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.name = "Floor 3"
SHX2_1 = {}
SHX3_1 = 10
SHX4_1 = 11
SHX5_1 = 12
SHX6_1 = 13
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX1_1.otherLocs = SHX2_1
SHX1_1.desc = "Gym, Division Offices, Cloakrooms, Briefing Room"
SHX0_1[14] = SHX1_1
SHX1_1 = 2
SHX2_1 = RMenu
SHX2_1 = SHX2_1.Add
SHX3_1 = "cmgpdelevators"
SHX4_1 = "main"
SHX5_1 = RageUI
SHX5_1 = SHX5_1.CreateMenu
SHX6_1 = "CMG Elevators"
SHX7_1 = "~b~Vespucci PD"
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1, SHX10_1 = SHX9_1()
SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX2_1 = RageUI
SHX2_1 = SHX2_1.CreateWhile
SHX3_1 = 1.0
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "cmgpdelevators"
SHX7_1 = "main"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = nil
function SHX6_1()
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
  SHX3_2 = "cmgpdelevators"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = 1
    SHX2_3 = SHX1_1
    SHX1_3 = SHX0_1
    SHX1_3 = SHX1_3[SHX2_3]
    SHX1_3 = SHX1_3.otherLocs
    SHX1_3 = #SHX1_3
    SHX2_3 = 1
    for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
      SHX5_3 = SHX1_1
      SHX4_3 = SHX0_1
      SHX4_3 = SHX4_3[SHX5_3]
      SHX4_3 = SHX4_3.otherLocs
      SHX4_3 = SHX4_3[SHX3_3]
      SHX5_3 = RageUI
      SHX5_3 = SHX5_3.Button
      SHX6_3 = SHX0_1
      SHX6_3 = SHX6_3[SHX4_3]
      SHX6_3 = SHX6_3.name
      SHX7_3 = SHX0_1
      SHX7_3 = SHX7_3[SHX4_3]
      SHX7_3 = SHX7_3.desc
      SHX8_3 = true
      function SHX9_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4
        if SHX2_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.getPlayerPed
          SHX3_4 = SHX3_4()
          SHX4_4 = DoScreenFadeOut
          SHX5_4 = 500
          SHX4_4(SHX5_4)
          SHX4_4 = Citizen
          SHX4_4 = SHX4_4.Wait
          SHX5_4 = 500
          SHX4_4(SHX5_4)
          SHX5_4 = SHX4_3
          SHX4_4 = SHX0_1
          SHX4_4 = SHX4_4[SHX5_4]
          SHX4_4 = SHX4_4.coords
          SHX5_4 = SetEntityCoords
          SHX6_4 = SHX3_4
          SHX7_4 = SHX4_4.x
          SHX8_4 = SHX4_4.y
          SHX9_4 = SHX4_4.z
          SHX10_4 = false
          SHX11_4 = false
          SHX12_4 = false
          SHX13_4 = false
          SHX5_4(SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4)
          SHX5_4 = SetEntityHeading
          SHX6_4 = SHX3_4
          SHX7_4 = 35.0
          SHX5_4(SHX6_4, SHX7_4)
          SHX5_4 = DoScreenFadeIn
          SHX6_4 = 700
          SHX5_4(SHX6_4)
          SHX5_4 = Citizen
          SHX5_4 = SHX5_4.Wait
          SHX6_4 = 500
          SHX5_4(SHX6_4)
        end
      end
      SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3)
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
end
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1)
SHX2_1 = AddEventHandler
SHX3_1 = "CMG:onClientSpawn"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Visible
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "cmgpdelevators"
      SHX4_3 = "main"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = true
      SHX0_3(SHX1_3, SHX2_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Visible
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "cmgpdelevators"
      SHX4_3 = "main"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = false
      SHX0_3(SHX1_3, SHX2_3)
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX0_3 = RMenu
      SHX1_3 = SHX0_3
      SHX0_3 = SHX0_3.Get
      SHX2_3 = "cmgpdelevators"
      SHX3_3 = "main"
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX1_3 = SHX0_3
      SHX0_3 = SHX0_3.SetSubtitle
      SHX2_3 = string
      SHX2_3 = SHX2_3.format
      SHX3_3 = "~w~You are on ~b~%s"
      SHX5_3 = SHX1_1
      SHX4_3 = SHX0_1
      SHX4_3 = SHX4_3[SHX5_3]
      SHX4_3 = SHX4_3.name
      SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3, SHX4_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    SHX5_2 = pairs
    SHX6_2 = SHX0_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "pdelevator_"
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2.coords
      SHX14_2 = 1.5
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.addMarker
      SHX12_2 = SHX10_2.coords
      SHX12_2 = SHX12_2.x
      SHX13_2 = SHX10_2.coords
      SHX13_2 = SHX13_2.y
      SHX14_2 = SHX10_2.coords
      SHX14_2 = SHX14_2.z
      SHX14_2 = SHX14_2 - 0.98
      SHX15_2 = 1.0001
      SHX16_2 = 1.0001
      SHX17_2 = 0.5001
      SHX18_2 = 255
      SHX19_2 = 255
      SHX20_2 = 255
      SHX21_2 = 200
      SHX22_2 = 20.0
      SHX23_2 = 27
      SHX24_2 = true
      SHX25_2 = false
      SHX26_2 = false
      SHX27_2 = nil
      SHX28_2 = nil
      SHX29_2 = 0.0
      SHX30_2 = 0.0
      SHX31_2 = 0.0
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
    end
  end
end
SHX2_1(SHX3_1, SHX4_1)
