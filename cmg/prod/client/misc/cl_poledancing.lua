-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
SHX0_1 = {}
SHX0_1.enabled = true
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = vector3
SHX4_1 = 88.950886535645
SHX5_1 = -1314.8494140625
SHX6_1 = 21.245265960693
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.coords = SHX3_1
SHX2_1.number = "3"
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 104.18
SHX6_1 = -1293.94
SHX7_1 = 29.26
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.coords = SHX4_1
SHX3_1.number = "1"
SHX4_1 = {}
SHX5_1 = vector3
SHX6_1 = 102.24
SHX7_1 = -1290.54
SHX8_1 = 29.26
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.coords = SHX5_1
SHX4_1.number = "2"
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX0_1.locations = SHX1_1
SHX1_1 = {}
SHX1_1.Choose_Favorite = "What button do you want to use for %s?"
SHX1_1.Select_Favorite = "Add a quick bind animation"
SHX1_1.Manage_Favorites = "Manage quick bind animations"
SHX1_1.Close = "Cancel"
SHX1_1.Updated_Favorites = "Updated quick bind animations."
SHX1_1["Remove?"] = "Remove \"%s\" as a quick bind animation?"
SHX1_1.Yes = "Yes"
SHX1_1.No = "No"
SHX1_1.Animations = "Animations"
SHX1_1.Synced = "Synced animations"
SHX1_1.Sync_Request = "Do you want to %s %s?"
SHX1_1.Pole_Dance = "[~r~E~w~] Poledance"
SHX1_1.Noone_Close = "No one close."
SHX1_1.Not_In_Car = "You're not in a vehicle!"
SHX2_1 = false
SHX3_1 = AddEventHandler
SHX4_1 = "CMG:onClientSpawn"
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  if SHX1_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX0_1.locations
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
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
        SHX0_3 = false
        SHX2_1 = SHX0_3
      end
      function SHX10_2(SHX0_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
        SHX1_3 = SHX0_1.locations
        SHX2_3 = SHX0_3.poleId
        SHX1_3 = SHX1_3[SHX2_3]
        SHX1_3 = SHX1_3.number
        SHX2_3 = SHX2_1
        if not SHX2_3 then
          SHX2_3 = CMG
          SHX2_3 = SHX2_3.DrawText3D
          SHX3_3 = SHX7_2.coords
          SHX4_3 = SHX1_1.Pole_Dance
          SHX5_3 = 0.35
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
          SHX2_3 = IsControlJustReleased
          SHX3_3 = 0
          SHX4_3 = 51
          SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
          if SHX2_3 then
            SHX2_3 = CMG
            SHX2_3 = SHX2_3.loadAnimDict
            SHX3_3 = "mini@strip_club@pole_dance@pole_dance"
            SHX4_3 = SHX1_3
            SHX3_3 = SHX3_3 .. SHX4_3
            SHX2_3(SHX3_3)
            SHX2_3 = NetworkCreateSynchronisedScene
            SHX3_3 = SHX7_2.coords
            SHX3_3 = SHX3_3.x
            SHX4_3 = SHX7_2.coords
            SHX4_3 = SHX4_3.y
            SHX5_3 = SHX7_2.coords
            SHX5_3 = SHX5_3.z
            SHX6_3 = 0.0
            SHX7_3 = 0.0
            SHX8_3 = 0.0
            SHX9_3 = 2
            SHX10_3 = false
            SHX11_3 = false
            SHX12_3 = 1065353216
            SHX13_3 = 0
            SHX14_3 = 1.3
            SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
            SHX3_3 = NetworkAddPedToSynchronisedScene
            SHX4_3 = CMG
            SHX4_3 = SHX4_3.getPlayerPed
            SHX4_3 = SHX4_3()
            SHX5_3 = SHX2_3
            SHX6_3 = "mini@strip_club@pole_dance@pole_dance"
            SHX7_3 = SHX1_3
            SHX6_3 = SHX6_3 .. SHX7_3
            SHX7_3 = "pd_dance_0"
            SHX8_3 = SHX1_3
            SHX7_3 = SHX7_3 .. SHX8_3
            SHX8_3 = 1.5
            SHX9_3 = -4.0
            SHX10_3 = 1
            SHX11_3 = 1
            SHX12_3 = 1148846080
            SHX13_3 = 0
            SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
            SHX3_3 = NetworkStartSynchronisedScene
            SHX4_3 = SHX2_3
            SHX3_3(SHX4_3)
            SHX3_3 = RemoveAnimDict
            SHX4_3 = "mini@strip_club@pole_dance@pole_dance"
            SHX3_3(SHX4_3)
            SHX3_3 = true
            SHX2_1 = SHX3_3
          end
        end
      end
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "poledance_"
      SHX13_2 = SHX6_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX7_2.coords
      SHX14_2 = 2.25
      SHX15_2 = 6
      SHX16_2 = SHX8_2
      SHX17_2 = SHX9_2
      SHX18_2 = SHX10_2
      SHX19_2 = {}
      SHX19_2.poleId = SHX6_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    end
  end
end
SHX3_1(SHX4_1, SHX5_1)
