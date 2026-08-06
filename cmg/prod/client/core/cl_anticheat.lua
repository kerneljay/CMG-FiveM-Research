-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1
SHX0_1 = nil
SHX1_1 = false
SHX2_1 = DecorRegister
SHX3_1 = "4538025922"
SHX4_1 = 3
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = {}
SHX3_1 = -162568007
SHX4_1 = -626868057
SHX5_1 = -1295441017
SHX6_1 = 2048634396
SHX7_1 = 1179345070
SHX8_1 = 184307568
SHX9_1 = 1281745250
SHX10_1 = -2048287007
SHX11_1 = 1645180079
SHX12_1 = 1199077562
SHX13_1 = 1200087339
SHX14_1 = 541935057
SHX15_1 = 224399950
SHX16_1 = -1637862878
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX2_1[9] = SHX11_1
SHX2_1[10] = SHX12_1
SHX2_1[11] = SHX13_1
SHX2_1[12] = SHX14_1
SHX2_1[13] = SHX15_1
SHX2_1[14] = SHX16_1
SHX3_1 = Citizen
SHX3_1 = SHX3_1.CreateThread
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isPlayerInBankHeistSetup
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.inEvent
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.getPlayerBucket
        SHX0_2 = SHX0_2()
        if 333 ~= SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.isInCayoPerico
          SHX0_2 = SHX0_2()
          SHX1_2 = pairs
          SHX2_2 = CMG
          SHX2_2 = SHX2_2.getAllVehicles
          SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX2_2()
          SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
            SHX7_2 = NetworkGetEntityIsNetworked
            SHX8_2 = SHX6_2
            SHX7_2 = SHX7_2(SHX8_2)
            if not SHX7_2 then
              SHX7_2 = DecorGetInt
              SHX8_2 = SHX6_2
              SHX9_2 = "4538025922"
              SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
              SHX8_2 = SHX6_2 % 1926
              if SHX7_2 ~= SHX8_2 then
                SHX7_2 = GetEntityModel
                SHX8_2 = SHX6_2
                SHX7_2 = SHX7_2(SHX8_2)
                SHX8_2 = IsThisModelATrain
                SHX9_2 = SHX7_2
                SHX8_2 = SHX8_2(SHX9_2)
                if not SHX8_2 then
                  SHX8_2 = CMG
                  SHX8_2 = SHX8_2.isDevMode
                  SHX8_2 = SHX8_2()
                  if SHX8_2 then
                    SHX8_2 = print
                    SHX9_2 = string
                    SHX9_2 = SHX9_2.format
                    SHX10_2 = "[Debug] Deleting vehicle %s not spawned by script"
                    SHX11_2 = SHX6_2
                    SHX9_2, SHX10_2, SHX11_2 = SHX9_2(SHX10_2, SHX11_2)
                    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
                  end
                  SHX8_2 = DeleteEntity
                  SHX9_2 = SHX6_2
                  SHX8_2(SHX9_2)
                end
              end
            elseif not SHX0_2 then
              SHX7_2 = NetworkHasControlOfEntity
              SHX8_2 = SHX6_2
              SHX7_2 = SHX7_2(SHX8_2)
              if SHX7_2 then
                SHX7_2 = GetEntityCoords
                SHX8_2 = SHX6_2
                SHX9_2 = true
                SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
                SHX8_2 = SHX7_2.z
                if SHX8_2 < -50.0 then
                  SHX8_2 = SHX7_2.y
                  SHX9_2 = 7700.0
                  if not (SHX8_2 > SHX9_2) then
                    SHX8_2 = SHX7_2.y
                    SHX9_2 = -4000.0
                    if not (SHX8_2 < SHX9_2) then
                      SHX8_2 = SHX7_2.x
                      SHX9_2 = 4400.0
                      if not (SHX8_2 > SHX9_2) then
                        SHX8_2 = SHX7_2.x
                        SHX9_2 = -3600.0
                        if not (SHX8_2 < SHX9_2) then
                          goto SHX_LABEL_108
                        end
                      end
                    end
                  end
                  SHX8_2 = GetEntityModel
                  SHX9_2 = SHX6_2
                  SHX8_2 = SHX8_2(SHX9_2)
                  SHX9_2 = IsThisModelABoat
                  SHX10_2 = SHX8_2
                  SHX9_2 = SHX9_2(SHX10_2)
                  if not SHX9_2 then
                    SHX9_2 = IsThisModelAJetski
                    SHX10_2 = SHX8_2
                    SHX9_2 = SHX9_2(SHX10_2)
                    if not SHX9_2 then
                      SHX9_2 = DeleteEntity
                      SHX10_2 = SHX6_2
                      SHX9_2(SHX10_2)
                    end
                  end
                end
              end
            end
            -- [FIX IF ERROR] Move ::SHX_LABEL_108:: outside nested blocks until all 'goto SHX_LABEL_108' can see it
            ::SHX_LABEL_108::
          end
        end
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 500
    SHX0_2(SHX1_2)
  end
end
SHX3_1(SHX4_1)
SHX3_1 = CMG
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = DecorSetInt
  SHX2_2 = SHX0_2
  SHX3_2 = "4538025922"
  SHX4_2 = SHX0_2 % 1926
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX3_1.initLocalVehicle = SHX4_1
SHX3_1 = false
SHX4_1 = SetWeaponDamageModifier
SHX5_1 = -1553120962
SHX6_1 = 0.0
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = SetWeaponDamageModifier
SHX5_1 = 133987706
SHX6_1 = 0.0
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = SetWeaponDamageModifier
SHX5_1 = -1323279794
SHX6_1 = 0.0
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = SetWeaponDamageModifier
SHX5_1 = -1569615261
SHX6_1 = 0.5
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = SetWeaponDamageModifier
SHX5_1 = 126349499
SHX6_1 = 0.0
SHX4_1(SHX5_1, SHX6_1)
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2 = SHX2_2()
  if 0 == SHX2_2 then
    SHX3_2 = GetSelectedPedWeapon
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.hasNewPlayerProtection
    SHX4_2 = SHX4_2()
    if SHX4_2 then
      SHX4_2 = SetPlayerMeleeWeaponDamageModifier
      SHX5_2 = SHX1_2
      SHX6_2 = 0.0
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = SetPlayerWeaponDamageModifier
      SHX5_2 = SHX1_2
      SHX6_2 = 0.0
      SHX4_2(SHX5_2, SHX6_2)
    elseif 126349499 == SHX3_2 then
      SHX4_2 = SetPlayerWeaponDamageModifier
      SHX5_2 = SHX1_2
      SHX6_2 = 0.0
      SHX4_2(SHX5_2, SHX6_2)
    else
      SHX4_2 = SetPlayerWeaponDamageModifier
      SHX5_2 = SHX1_2
      SHX6_2 = 1.0
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = SetWeaponDamageModifier
      SHX5_2 = SHX3_2
      SHX6_2 = 1.0
      SHX4_2(SHX5_2, SHX6_2)
    end
    SHX4_2 = SHX3_1
    if not SHX4_2 then
      SHX4_2 = GetUsingseethrough
      SHX4_2 = SHX4_2()
      if SHX4_2 then
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.isPlayerInPoliceHeli
        SHX4_2 = SHX4_2()
        if not SHX4_2 then
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.isPlayerInDrone
          SHX4_2 = SHX4_2()
          if not SHX4_2 then
            SHX4_2 = CMG
            SHX4_2 = SHX4_2.isPlayerUsingRobot
            SHX4_2 = SHX4_2()
            if not SHX4_2 then
              SHX4_2 = CMG
              SHX4_2 = SHX4_2.isUsingPoliceRobot
              SHX4_2 = SHX4_2()
              if not SHX4_2 then
                SHX4_2 = TriggerServerEvent
                SHX5_2 = "58d77596cf"
                SHX4_2(SHX5_2)
                SHX4_2 = true
                SHX3_1 = SHX4_2
              end
            end
          end
        end
      end
    end
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.inArena
  SHX3_2 = SHX3_2()
  if not SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.inArenaWarmup
    SHX3_2 = SHX3_2()
    if not SHX3_2 then
      SHX3_2 = SetPedInfiniteAmmoClip
      SHX4_2 = SHX0_2
      SHX5_2 = false
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = pairs
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getCachedWeaponStore
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2()
      SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
        SHX9_2 = SetPedInfiniteAmmo
        SHX10_2 = SHX0_2
        SHX11_2 = false
        SHX12_2 = SHX8_2.weaponHash
        SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      end
    end
  end
  SHX3_2 = SetEntityInvincible
  SHX4_2 = SHX2_2
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ToggleUsePickupsForPlayer
  SHX4_2 = SHX1_2
  SHX5_2 = 483577702
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = ToggleUsePickupsForPlayer
  SHX4_2 = SHX1_2
  SHX5_2 = -1888453608
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = ToggleUsePickupsForPlayer
  SHX4_2 = SHX1_2
  SHX5_2 = -105925489
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = ToggleUsePickupsForPlayer
  SHX4_2 = SHX1_2
  SHX5_2 = 1426343849
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.InvokeNative
  SHX4_2 = -2380603657403713716
  SHX5_2 = 2047
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetLocalPlayerCanCollectPortablePickups
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = SetPlayerHealthRechargeMultiplier
  SHX4_2 = SHX1_2
  SHX5_2 = 0.0
  SHX3_2(SHX4_2, SHX5_2)
end
SHX5_1 = CMG
SHX5_1 = SHX5_1.createThreadOnTick
SHX6_1 = SHX4_1
SHX7_1 = "AntiCheat Defaults Tick"
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = {}
SHX5_1.chat = true
SHX5_1.spawnmanager = true
SHX5_1.sql = true
SHX5_1.prometheus = true
SHX5_1.cmg = true
SHX5_1.surgery = true
SHX5_1.CMGMLOs = true
SHX5_1.CMGVeh = true
SHX5_1.CMGVehiclesEscrow = true
SHX5_1.CMGTexture = true
SHX5_1.CMGMap = true
SHX5_1.CMGSounds = true
SHX5_1.CMGFirearms = true
SHX5_1.cmg_clothing_pack1 = true
SHX5_1.cmg_clothing_pack2 = true
SHX5_1.cmg_clothing_pack3 = true
SHX5_1.cmg_clothing_pack4 = true
SHX5_1.cmgpack = true
SHX5_1.misc_clothing = true
SHX5_1.cmgui = true
SHX5_1.cmgload = true
SHX5_1.CMGPrison = true
SHX5_1["pma-voice"] = true
SHX5_1.cmgescr1 = true
SHX5_1.cmgescr2 = true
SHX5_1.cmgescr3 = true
SHX5_1["cfx-gabz-mapdata"] = true
SHX5_1["cfx-gabz-records"] = true
SHX5_1["cfx-gabz-carmeet"] = true
SHX5_1["cfx-gabz-arcade"] = true
SHX5_1["cfx-gabz-import"] = true
SHX5_1["cfx-gabz-studio"] = true
SHX5_1["cfx-gabz-hayes"] = true
SHX5_1["cfx-gabz-catcafe"] = true
SHX5_1["cfx-gabz-diner"] = true
SHX5_1["cfx-gabz-vagos"] = true
SHX5_1["cfx-gabz-weedcamp"] = true
SHX5_1.loaf_lib = true
SHX5_1["lb-phone_prop"] = true
SHX5_1["lb-phone"] = true
SHX5_1["lb-tablet-prop"] = true
SHX5_1["lb-tablet"] = true
SHX5_1["lb-picchat"] = true
SHX5_1["lb-racing"] = true
SHX5_1["lb-games"] = true
SHX5_1.cmgbank = true
SHX5_1.offshore = true
SHX5_1.vigilante = true
SHX5_1.trapping = true
SHX5_1.hacking = true
SHX5_1.gulag = true
SHX5_1["cfx-nteam-milehigh"] = true
SHX5_1["cfx-gabz-247"] = true
SHX5_1["cfx-gabz-fleeca"] = true
SHX5_1["cfx-gabz-pacificbank"] = true
SHX5_1["map4all-parkranger"] = true
SHX5_1["cfx-gabz-parkranger"] = true
SHX5_1.ykn_gravestone_garage = true
SHX5_1["imperial-manor"] = true
SHX5_1.tstudio_jurassic_jackpot = true
SHX5_1.Grapeseed_MC_Clubhouse = true
SHX5_1["k4mb1-casino"] = true
SHX5_1["k4mb1-casinopenthouse"] = true
SHX5_1.tstudio_audioocclusion = true
SHX5_1.tstudio_doortuning = true
SHX5_1.tstudio_zmapdata = true
SHX5_1.tstudio_redstuner = true
SHX5_1.rcore_lunapark_assets = true
SHX5_1.rcore_lunapark = true
SHX5_1.tstudio_aldentes = true
SHX5_1.holdem_props = true
SHX5_1.tcp = true
SHX5_1.blackjack = true
SHX5_1.roulette = true
SHX5_1.texasholdem = true
SHX5_1.casinoutils = true
SHX5_1.rcore_pool = true
SHX5_1.rcore_minigolf_assets = true
SHX5_1.rcore_minigolf = true
SHX5_1.fiv3devs_mapdata = true
SHX5_1.fiv3devs_pillbox = true
SHX5_1.pvpmaps = true
SHX5_1.pvpmaps2 = true
SHX5_1.asylum = true
SHX5_1.boxing = true
SHX5_1.clubhouse_harmony = true
SHX5_1.skelly = true
SHX5_1.christmas2025 = true
SHX5_1.halloween2025 = true
SHX5_1.a19 = true
SHX5_1.gdc = true
SHX5_1.blackbunker = true
SHX5_1.markers = true
SHX5_1.exclusiveshells = true
SHX5_1.garageshells = true
SHX5_1.illegalshells = true
SHX5_1.miscshells = true
SHX5_1.startershells = true
SHX5_1.drug_props = true
SHX5_1.bzzz_weedpack_v2 = true
SHX5_1.foodpack1 = true
SHX5_1.garden = true
SHX5_1.watering = true
SHX5_1.lucianos = true
SHX5_1.plastercasts = true
SHX5_1.medicprops = true
SHX5_1.emergency_pack = true
SHX5_1.drugspack = true
SHX5_1.vending = true
SHX5_1.prison = true
SHX5_1.prison_church = true
SHX5_1.prison_escape = true
SHX5_1.prison_tower = true
SHX5_1.prison_study = true
SHX5_1.prison_escape_anims = true
SHX5_1.lsrecycle = true
SHX5_1.fireworks_emotes = true
SHX5_1.roleplay_emotes = true
SHX5_1.carry_emotes = true
SHX5_1.trash_emotes = true
SHX5_1.vehicle_emotes = true
SHX5_1.punish_emotes = true
SHX6_1 = AddEventHandler
SHX7_1 = "onClientResourceStart"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = #SHX0_2
  if SHX1_2 >= 30 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "d750e699a1"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX5_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "e744d8fa9f"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = false
SHX7_1 = false
SHX8_1 = AddEventHandler
SHX9_1 = "esx:getSharedObject"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX6_1
  if true == SHX1_2 then
    SHX1_2 = CancelEvent
    SHX1_2()
    SHX1_2 = SHX0_2
    SHX2_2 = nil
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "28293849cf"
  SHX3_2 = "esx:getSharedObject"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = true
  SHX6_1 = SHX1_2
  SHX1_2 = SHX0_2
  SHX2_2 = nil
  SHX1_2(SHX2_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = {}
SHX9_1 = "ambulancier:selfRespawn"
SHX10_1 = "bank:transfer"
SHX11_1 = "esx_ambulancejob:revive"
SHX12_1 = "esx-qalle-jail:openJailMenu"
SHX13_1 = "esx_jailer:wysylandoo"
SHX14_1 = "esx_society:openBossMenu"
SHX15_1 = "esx:spawnVehicle"
SHX16_1 = "esx_status:set"
SHX17_1 = "HCheat:TempDisableDetection"
SHX18_1 = "UnJP"
SHX19_1 = "bank:transfer"
SHX20_1 = "esx_skin:openSaveableMenu"
SHX21_1 = "esx_society:openBossMenu"
SHX22_1 = "esx_status:set"
SHX23_1 = "esx_ambulancejob:revive"
SHX24_1 = "ambulancier:selfRespawn"
SHX25_1 = "esx-qalle-jail:openJailMenu"
SHX26_1 = "UnJP"
SHX27_1 = "esx_inventoryhud:openPlayerInventory"
SHX28_1 = "HCheat:TempDisableDetection"
SHX29_1 = "esx_policejob:handcuff"
SHX30_1 = "esx:getSharedObject"
SHX31_1 = "esx:teleport"
SHX32_1 = "esx_spectate:spectate"
SHX33_1 = "helpcode"
SHX34_1 = "helpCode"
SHX35_1 = "32d3e79c27"
SHX36_1 = "7c02964cf5"
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX8_1[3] = SHX11_1
SHX8_1[4] = SHX12_1
SHX8_1[5] = SHX13_1
SHX8_1[6] = SHX14_1
SHX8_1[7] = SHX15_1
SHX8_1[8] = SHX16_1
SHX8_1[9] = SHX17_1
SHX8_1[10] = SHX18_1
SHX8_1[11] = SHX19_1
SHX8_1[12] = SHX20_1
SHX8_1[13] = SHX21_1
SHX8_1[14] = SHX22_1
SHX8_1[15] = SHX23_1
SHX8_1[16] = SHX24_1
SHX8_1[17] = SHX25_1
SHX8_1[18] = SHX26_1
SHX8_1[19] = SHX27_1
SHX8_1[20] = SHX28_1
SHX8_1[21] = SHX29_1
SHX8_1[22] = SHX30_1
SHX8_1[23] = SHX31_1
SHX8_1[24] = SHX32_1
SHX8_1[25] = SHX33_1
SHX8_1[26] = SHX34_1
SHX8_1[27] = SHX35_1
SHX8_1[28] = SHX36_1
SHX9_1 = ipairs
SHX10_1 = SHX8_1
SHX9_1, SHX10_1, SHX11_1, SHX12_1 = SHX9_1(SHX10_1)
for SHX13_1, SHX14_1 in SHX9_1, SHX10_1, SHX11_1, SHX12_1 do
  SHX15_1 = AddEventHandler
  SHX16_1 = SHX14_1
  function SHX17_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2, SHX2_2
    SHX0_2 = SHX7_1
    if true == SHX0_2 then
      SHX0_2 = CancelEvent
      SHX0_2()
      return
    end
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "28293849cf"
    SHX2_2 = SHX14_1
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = true
    SHX7_1 = SHX0_2
  end
  SHX15_1(SHX16_1, SHX17_1)
end
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX1_1
  if not SHX2_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "c9c6eee377"
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = true
    SHX1_1 = SHX2_2
  end
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.getCustomization
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX0_1.modelHash
  SHX2_2 = SHX0_2.modelHash
  if SHX1_2 ~= SHX2_2 then
    SHX1_2 = SHX9_1
    SHX2_2 = SHX0_1
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = 0
  SHX2_2 = 11
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    if 5 ~= SHX4_2 then
      SHX5_2 = SHX0_1.components
      SHX5_2 = SHX5_2[SHX4_2]
      SHX6_2 = SHX0_2.components
      SHX6_2 = SHX6_2[SHX4_2]
      if SHX5_2 and SHX6_2 then
        SHX7_2 = SHX5_2.collectionName
        SHX8_2 = SHX6_2.collectionName
        if SHX7_2 == SHX8_2 then
          SHX7_2 = SHX5_2.collectionIndex
          SHX8_2 = SHX6_2.collectionIndex
          if SHX7_2 == SHX8_2 then
            goto SHX_LABEL_42
          end
        end
        SHX7_2 = SHX9_1
        SHX8_2 = SHX0_1
        SHX9_2 = SHX0_2
        SHX7_2(SHX8_2, SHX9_2)
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_42:: outside nested blocks until all 'goto SHX_LABEL_42' can see it
    ::SHX_LABEL_42::
  end
end
SHX11_1 = Citizen
SHX11_1 = SHX11_1.CreateThread
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  while true do
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
    SHX0_2 = PlayerId
    SHX0_2 = SHX0_2()
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = GetPlayerWeaponDamageModifier
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = GetPlayerWeaponDefenseModifier
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = GetPlayerWeaponDefenseModifier_2
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = GetPlayerVehicleDamageModifier
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = GetPlayerVehicleDefenseModifier
    SHX7_2 = SHX0_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = GetCurrentPedWeapon
    SHX8_2 = SHX1_2
    SHX9_2 = 0
    SHX10_2 = true
    SHX7_2, SHX8_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX9_2 = GetWeaponDamageModifier
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = GetPlayerMeleeWeaponDamageModifier
    SHX11_2 = PlayerId
    SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2()
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    if SHX2_2 > 1.0 then
      SHX11_2 = TriggerServerEvent
      SHX12_2 = "c103fac35f"
      SHX13_2 = "PlayerWeaponDamageModifier"
      SHX14_2 = SHX2_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
    if SHX3_2 > 1.0 then
      SHX11_2 = TriggerServerEvent
      SHX12_2 = "c103fac35f"
      SHX13_2 = "PlayerWeaponDefenseModifier"
      SHX14_2 = SHX3_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
    if SHX4_2 > 1.0 then
      SHX11_2 = TriggerServerEvent
      SHX12_2 = "c103fac35f"
      SHX13_2 = "PlayerWeaponDefenseModifier_2"
      SHX14_2 = SHX4_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
    if SHX5_2 > 1.0 then
      SHX11_2 = TriggerServerEvent
      SHX12_2 = "c103fac35f"
      SHX13_2 = "PlayerVehicleDamageModifier"
      SHX14_2 = SHX5_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
    if SHX6_2 > 1.0 then
      SHX11_2 = TriggerServerEvent
      SHX12_2 = "c103fac35f"
      SHX13_2 = "PlayerVehicleDefenseModifier"
      SHX14_2 = SHX6_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
    if SHX9_2 > 1.0 then
      SHX11_2 = TriggerServerEvent
      SHX12_2 = "c103fac35f"
      SHX13_2 = "GetWeaponDamageModifier"
      SHX14_2 = SHX9_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
    if SHX10_2 > 1.0 then
      SHX11_2 = TriggerServerEvent
      SHX12_2 = "c103fac35f"
      SHX13_2 = "GetPlayerMeleeWeaponDamageModifier"
      SHX14_2 = SHX10_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
    SHX11_2 = RemoveAllPickupsOfType
    SHX12_2 = 483577702
    SHX11_2(SHX12_2)
    SHX11_2 = RemoveAllPickupsOfType
    SHX12_2 = -1888453608
    SHX11_2(SHX12_2)
    SHX11_2 = SHX10_1
    SHX11_2()
  end
end
SHX11_1(SHX12_1)
SHX11_1 = CMG
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = GetGroundZFor_3dCoord
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX5_2 = 0.0
  SHX6_2 = false
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX1_2
  SHX4_2 = SHX2_2
  return SHX3_2, SHX4_2
end
SHX11_1.isPlayerAboveGround = SHX12_1
SHX11_1 = 0
SHX12_1 = 0
SHX13_1 = 0
SHX14_1 = 0
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = GetVehicleNumberOfWheels
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = 0.0
  SHX3_2 = 0
  SHX4_2 = SHX1_2 - 1
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = GetVehicleWheelSpeed
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX2_2 < SHX7_2 then
      SHX2_2 = SHX7_2
    end
  end
  return SHX2_2
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = GetGamePool
  SHX3_2 = "CObject"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2(SHX3_2)
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = GetEntityAttachedTo
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 == SHX0_2 then
      SHX7_2 = DeleteEntity
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
end
SHX17_1 = GetEntityCoords
SHX18_1 = PlayerPedId
SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1 = SHX18_1()
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1)
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX17_1
  SHX2_2 = SHX2_2 - SHX1_2
  SHX2_2 = #SHX2_2
  SHX17_1 = SHX1_2
  SHX3_2 = 0.4
  if SHX2_2 > SHX3_2 then
    SHX3_2 = IsPedFalling
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.hasClientPermission
      SHX4_2 = "admin.tickets"
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = IsPedInParachuteFreeFall
        SHX4_2 = SHX0_2
        SHX3_2 = SHX3_2(SHX4_2)
        if not SHX3_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.isCarrying
          SHX3_2 = SHX3_2()
          if not SHX3_2 then
            SHX3_2 = CMG
            SHX3_2 = SHX3_2.isPiggyBackActive
            SHX3_2 = SHX3_2()
            if not SHX3_2 then
              SHX3_2 = CMG
              SHX3_2 = SHX3_2.takeHostageInProgress
              SHX3_2 = SHX3_2()
              if not SHX3_2 then
                SHX3_2 = GetPedParachuteState
                SHX4_2 = SHX0_2
                SHX3_2 = SHX3_2(SHX4_2)
                if SHX3_2 <= 0 then
                  SHX3_2 = IsPedRagdoll
                  SHX4_2 = SHX0_2
                  SHX3_2 = SHX3_2(SHX4_2)
                  if not SHX3_2 then
                    SHX3_2 = IsPedRunning
                    SHX4_2 = SHX0_2
                    SHX3_2 = SHX3_2(SHX4_2)
                    if not SHX3_2 then
                      SHX3_2 = CMG
                      SHX3_2 = SHX3_2.isPlayerRappeling
                      SHX3_2 = SHX3_2()
                      if not SHX3_2 then
                        SHX3_2 = CMG
                        SHX3_2 = SHX3_2.isPlayerAboveGround
                        SHX3_2 = SHX3_2()
                        if not SHX3_2 then
                          SHX3_2 = CMG
                          SHX3_2 = SHX3_2.isPlayerHidingInBoot
                          SHX3_2 = SHX3_2()
                          if not SHX3_2 then
                            SHX3_2 = CMG
                            SHX3_2 = SHX3_2.isSpectatingEvent
                            SHX3_2 = SHX3_2()
                            if not SHX3_2 then
                              SHX3_2 = CMG
                              SHX3_2 = SHX3_2.isInBattleGroundsPlaneIntro
                              SHX3_2 = SHX3_2()
                              if not SHX3_2 then
                                SHX3_2 = CMG
                                SHX3_2 = SHX3_2.isCurrentEmoteAttachingPed
                                SHX3_2 = SHX3_2()
                                if not SHX3_2 then
                                  SHX3_2 = IsPedInAnyVehicle
                                  SHX4_2 = SHX0_2
                                  SHX5_2 = true
                                  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
                                  if not SHX3_2 then
                                    SHX3_2 = SHX11_1
                                    SHX3_2 = SHX3_2 + 1
                                    SHX11_1 = SHX3_2
                                    SHX3_2 = SHX11_1
                                    if SHX3_2 > 100 then
                                      SHX3_2 = TriggerServerEvent
                                      SHX4_2 = "14c26e54a6"
                                      SHX5_2 = false
                                      SHX3_2(SHX4_2, SHX5_2)
                                      SHX3_2 = 0
                                      SHX11_1 = SHX3_2
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerVehicle
  SHX3_2, SHX4_2 = SHX3_2()
  SHX5_2 = DoesEntityExist
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 and SHX4_2 then
    SHX5_2 = 0.2
    if SHX2_2 > SHX5_2 then
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.hasClientPermission
      SHX6_2 = "admin.tickets"
      SHX5_2 = SHX5_2(SHX6_2)
      if not SHX5_2 then
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.isInBattleGroundsPlaneIntro
        SHX5_2 = SHX5_2()
        if not SHX5_2 then
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.inEvent
          SHX5_2 = SHX5_2()
          if not SHX5_2 then
            SHX5_2 = SHX13_1
            if SHX5_2 ~= SHX3_2 then
              SHX5_2 = 0
              SHX12_1 = SHX5_2
              SHX13_1 = SHX3_2
            end
            SHX5_2 = SHX15_1
            SHX6_2 = SHX3_2
            SHX5_2 = SHX5_2(SHX6_2)
            SHX6_2 = GetEntitySpeed
            SHX7_2 = SHX3_2
            SHX6_2 = SHX6_2(SHX7_2)
            if SHX5_2 < 5.0 then
              SHX7_2 = 2.5
              if SHX6_2 < SHX7_2 then
                SHX7_2 = SHX12_1
                SHX7_2 = SHX7_2 + 1
                SHX12_1 = SHX7_2
                SHX7_2 = SHX16_1
                SHX7_2()
                SHX7_2 = SHX12_1
                if SHX7_2 > 100 then
                  SHX7_2 = GetGameTimer
                  SHX7_2 = SHX7_2()
                  SHX8_2 = SHX14_1
                  SHX7_2 = SHX7_2 - SHX8_2
                  SHX8_2 = 4000
                  if SHX7_2 > SHX8_2 then
                    SHX7_2 = TriggerServerEvent
                    SHX8_2 = "14c26e54a6"
                    SHX9_2 = true
                    SHX7_2(SHX8_2, SHX9_2)
                    SHX7_2 = 0
                    SHX12_1 = SHX7_2
                    SHX7_2 = GetGameTimer
                    SHX7_2 = SHX7_2()
                    SHX14_1 = SHX7_2
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
SHX19_1 = CMG
SHX19_1 = SHX19_1.createThreadOnTick
SHX20_1 = SHX18_1
SHX21_1 = "AntiCheat Speed Check Tick"
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = {}
SHX20_1 = "notification_buffer"
SHX21_1 = "text_buffer"
SHX22_1 = "preview_text_buffer"
SHX19_1[1] = SHX20_1
SHX19_1[2] = SHX21_1
SHX19_1[3] = SHX22_1
SHX20_1 = {}
SHX20_1.businessDriveSpeedBoost = 2
SHX20_1.CMGVehAC = 3
SHX20_1.lastSpeed = 1
SHX20_1.hasHeadbag = 2
SHX20_1.lootbucket = 3
SHX20_1.towedByAA = 2
SHX20_1.HosePitch = 1
SHX20_1.cinematicMode = 2
SHX20_1.subwoofer = 2
SHX20_1.has_stretcher_inside = 2
SHX20_1.inside_ambulance_netid = 3
SHX20_1.isFlagged = 2
SHX20_1.InitedELS = 2
SHX20_1.vRP_owner = 3
SHX20_1.cmg_uuid = 3
SHX20_1.lootid = 3
SHX20_1.lsAudioId = 3
SHX20_1.biometricLock = 2
SHX20_1.smokeType = 3
SHX20_1.smokeActive = 2
SHX21_1 = {}
SHX22_1 = {}
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX21_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    return
  end
  SHX1_2 = pairs
  SHX2_2 = SHX20_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = DecorExistOn
    SHX7_2 = SHX0_2
    SHX8_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if SHX6_2 then
      SHX6_2 = table
      SHX6_2 = SHX6_2.insert
      SHX7_2 = SHX22_1
      SHX8_2 = SHX5_2
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
  SHX1_2 = SHX22_1
  SHX1_2 = #SHX1_2
  if SHX1_2 > 0 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "778408e37d"
    SHX3_2 = SHX0_2
    SHX4_2 = SHX22_1
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = SHX21_1
    SHX1_2[SHX0_2] = true
    SHX1_2 = table
    SHX1_2 = SHX1_2.clear
    SHX2_2 = SHX22_1
    SHX1_2(SHX2_2)
  end
end
SHX24_1 = Citizen
SHX24_1 = SHX24_1.CreateThread
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX20_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DecorRegister
    SHX7_2 = SHX4_2
    SHX8_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2)
  end
  while true do
    SHX0_2 = pairs
    SHX1_2 = SHX19_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = GetLabelText
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if "NULL" ~= SHX6_2 then
        SHX6_2 = TriggerServerEvent
        SHX7_2 = "931db808c1"
        SHX8_2 = SHX5_2
        SHX6_2(SHX7_2, SHX8_2)
      end
    end
    SHX0_2 = SHX23_1
    SHX1_2 = PlayerPedId
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX1_2()
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2, SHX1_2 = SHX0_2()
    if 0 ~= SHX0_2 and SHX1_2 then
      SHX2_2 = SHX23_1
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
    SHX2_2 = Wait
    SHX3_2 = 10000
    SHX2_2(SHX3_2)
  end
end
SHX24_1(SHX25_1)
SHX24_1 = Citizen
SHX24_1 = SHX24_1.CreateThread
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  while true do
    SHX0_2 = HasPedGotWeapon
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = -2093086099
    SHX3_2 = false
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    if SHX0_2 then
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "3f71c3e3da"
      SHX0_2(SHX1_2)
      return
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX24_1(SHX25_1)
SHX24_1 = 200
SHX25_1 = 0
SHX26_1 = CMG
SHX26_1 = SHX26_1.patchFunction
SHX27_1 = "SetPlayerModel"
SHX28_1 = SetPlayerModel
function SHX29_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = PlayerId
  SHX3_2 = SHX3_2()
  if SHX1_2 == SHX3_2 then
    SHX3_2 = 200
    SHX24_1 = SHX3_2
  end
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX26_1 = CMG
SHX26_1 = SHX26_1.patchFunction
SHX27_1 = "SetEntityHealth"
SHX28_1 = SetEntityHealth
function SHX29_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  if SHX1_2 == SHX3_2 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.min
    SHX4_2 = math
    SHX4_2 = SHX4_2.max
    SHX5_2 = SHX2_2
    SHX6_2 = 0
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX5_2 = 200
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX24_1 = SHX3_2
  end
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX26_1 = CMG
SHX26_1 = SHX26_1.patchFunction
SHX27_1 = "NetworkResurrectLocalPlayer"
SHX28_1 = NetworkResurrectLocalPlayer
function SHX29_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX7_2 = 200
  SHX24_1 = SHX7_2
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2
  SHX10_2 = SHX3_2
  SHX11_2 = SHX4_2
  SHX12_2 = SHX5_2
  SHX13_2 = SHX6_2
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX26_1 = CMG
SHX26_1 = SHX26_1.patchFunction
SHX27_1 = "ResurrectPed"
SHX28_1 = ResurrectPed
function SHX29_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  if SHX1_2 == SHX2_2 then
    SHX2_2 = 200
    SHX24_1 = SHX2_2
  end
  SHX2_2 = SHX0_2
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
SHX26_1(SHX27_1, SHX28_1, SHX29_1)
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = IsEntityDead
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isQuittingGame
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = GetEntityHealth
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = SHX24_1
      SHX2_2 = SHX1_2 - SHX2_2
      if SHX2_2 > 2 then
        SHX2_2 = GetGameTimer
        SHX2_2 = SHX2_2()
        SHX3_2 = SHX25_1
        SHX2_2 = SHX2_2 - SHX3_2
        SHX3_2 = 30000
        if SHX2_2 > SHX3_2 then
          SHX2_2 = TriggerServerEvent
          SHX3_2 = "f4ad66ccb9"
          SHX4_2 = SHX1_2
          SHX5_2 = SHX24_1
          SHX2_2(SHX3_2, SHX4_2, SHX5_2)
          SHX2_2 = GetGameTimer
          SHX2_2 = SHX2_2()
          SHX25_1 = SHX2_2
        end
      end
      SHX24_1 = SHX1_2
    end
  end
end
SHX27_1 = {}
SHX28_1 = -1
SHX29_1 = 0
SHX30_1 = CMG
SHX30_1 = SHX30_1.patchFunction
SHX31_1 = "CreateCam"
SHX32_1 = CreateCam
function SHX33_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetFrameCount
  SHX4_2 = SHX4_2()
  SHX29_1 = SHX4_2
  SHX4_2 = SHX27_1
  SHX4_2[SHX3_2] = true
  return SHX3_2
end
SHX30_1(SHX31_1, SHX32_1, SHX33_1)
SHX30_1 = CMG
SHX30_1 = SHX30_1.patchFunction
SHX31_1 = "CreateCamWithParams"
SHX32_1 = CreateCamWithParams
function SHX33_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX11_2 = SHX0_2
  SHX12_2 = SHX1_2
  SHX13_2 = SHX2_2
  SHX14_2 = SHX3_2
  SHX15_2 = SHX4_2
  SHX16_2 = SHX5_2
  SHX17_2 = SHX6_2
  SHX18_2 = SHX7_2
  SHX19_2 = SHX8_2
  SHX20_2 = SHX9_2
  SHX21_2 = SHX10_2
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX12_2 = GetFrameCount
  SHX12_2 = SHX12_2()
  SHX29_1 = SHX12_2
  SHX12_2 = SHX27_1
  SHX12_2[SHX11_2] = true
  return SHX11_2
end
SHX30_1(SHX31_1, SHX32_1, SHX33_1)
SHX30_1 = CMG
SHX30_1 = SHX30_1.patchFunction
SHX31_1 = "CreateCamera"
SHX32_1 = CreateCamera
function SHX33_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetFrameCount
  SHX4_2 = SHX4_2()
  SHX29_1 = SHX4_2
  SHX4_2 = SHX27_1
  SHX4_2[SHX3_2] = true
  return SHX3_2
end
SHX30_1(SHX31_1, SHX32_1, SHX33_1)
SHX30_1 = CMG
SHX30_1 = SHX30_1.patchFunction
SHX31_1 = "CreateCameraWithParams"
SHX32_1 = CreateCameraWithParams
function SHX33_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX11_2 = SHX0_2
  SHX12_2 = SHX1_2
  SHX13_2 = SHX2_2
  SHX14_2 = SHX3_2
  SHX15_2 = SHX4_2
  SHX16_2 = SHX5_2
  SHX17_2 = SHX6_2
  SHX18_2 = SHX7_2
  SHX19_2 = SHX8_2
  SHX20_2 = SHX9_2
  SHX21_2 = SHX10_2
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX12_2 = GetFrameCount
  SHX12_2 = SHX12_2()
  SHX29_1 = SHX12_2
  SHX12_2 = SHX27_1
  SHX12_2[SHX11_2] = true
  return SHX11_2
end
SHX30_1(SHX31_1, SHX32_1, SHX33_1)
SHX30_1 = CMG
SHX30_1 = SHX30_1.patchFunction
SHX31_1 = "SetCamParams"
SHX32_1 = SetCamParams
function SHX33_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX13_2 = SHX0_2
  SHX14_2 = SHX1_2
  SHX15_2 = SHX2_2
  SHX16_2 = SHX3_2
  SHX17_2 = SHX4_2
  SHX18_2 = SHX5_2
  SHX19_2 = SHX6_2
  SHX20_2 = SHX7_2
  SHX21_2 = SHX8_2
  SHX22_2 = SHX9_2
  SHX23_2 = SHX10_2
  SHX24_2 = SHX11_2
  SHX25_2 = SHX12_2
  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
  SHX13_2 = GetFrameCount
  SHX13_2 = SHX13_2()
  SHX29_1 = SHX13_2
  SHX13_2 = Citizen
  SHX13_2 = SHX13_2.CreateThread
  function SHX14_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = Citizen
    SHX0_3 = SHX0_3.Wait
    SHX1_3 = 0
    SHX0_3(SHX1_3)
    SHX0_3 = GetRenderingCam
    SHX0_3 = SHX0_3()
    if -1 ~= SHX0_3 then
      SHX1_3 = SHX27_1
      SHX1_3[SHX0_3] = true
    end
  end
  SHX13_2(SHX14_2)
end
SHX30_1(SHX31_1, SHX32_1, SHX33_1)
SHX30_1 = AddEventHandler
SHX31_1 = "CMG:hookA"
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetFrameCount
  SHX1_2 = SHX1_2()
  SHX29_1 = SHX1_2
  SHX1_2 = SHX27_1
  SHX1_2[SHX0_2] = true
end
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = AddEventHandler
SHX31_1 = "CMG:hookB"
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetFrameCount
  SHX0_2 = SHX0_2()
  SHX29_1 = SHX0_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = Citizen
    SHX0_3 = SHX0_3.Wait
    SHX1_3 = 0
    SHX0_3(SHX1_3)
    SHX0_3 = GetRenderingCam
    SHX0_3 = SHX0_3()
    if -1 ~= SHX0_3 then
      SHX1_3 = SHX27_1
      SHX1_3[SHX0_3] = true
    end
  end
  SHX0_2(SHX1_2)
end
SHX30_1(SHX31_1, SHX32_1)
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isInsideDiamondCasino
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = GetRenderingCam
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isPhoneOpen
  SHX1_2 = SHX1_2()
  if SHX1_2 and -1 ~= SHX0_2 then
    SHX1_2 = SHX27_1
    SHX1_2[SHX0_2] = true
    SHX1_2 = GetFrameCount
    SHX1_2 = SHX1_2()
    SHX29_1 = SHX1_2
  end
  if -1 ~= SHX0_2 then
    SHX1_2 = SHX27_1
    SHX1_2 = SHX1_2[SHX0_2]
    if not SHX1_2 then
      SHX1_2 = GetFrameCount
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX29_1
      SHX1_2 = SHX1_2 - SHX2_2
      if SHX1_2 > 3 then
        SHX1_2 = SHX28_1
        if SHX1_2 ~= SHX0_2 then
          SHX1_2 = TriggerServerEvent
          SHX2_2 = "8950382fbc"
          SHX3_2 = SHX0_2
          SHX1_2(SHX2_2, SHX3_2)
          SHX28_1 = SHX0_2
        end
      end
    end
  end
end
SHX31_1 = {}
SHX31_1.WEAPON_HARRYPOTTERWAND = true
SHX32_1 = 763451856
SHX31_1[SHX32_1] = true
SHX31_1.WEAPON_L104A1 = true
SHX31_1.WEAPON_PAINTBALL = true
SHX31_1.WEAPON_PLASMAP = true
SHX32_1 = CMG
SHX32_1 = SHX32_1.createCircularBuffer
SHX33_1 = 100
SHX34_1 = 0
SHX32_1 = SHX32_1(SHX33_1, SHX34_1)
SHX33_1 = CMG
SHX33_1 = SHX33_1.createCircularBuffer
SHX34_1 = 500
SHX35_1 = 0
SHX33_1 = SHX33_1(SHX34_1, SHX35_1)
SHX34_1 = false
SHX35_1 = 0
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = IsPedShooting
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = SHX32_1.put
    SHX2_2 = GetNetworkTime
    SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
  SHX1_2 = IsControlPressed
  SHX2_2 = 0
  SHX3_2 = 24
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = IsPedArmed
    SHX2_2 = SHX0_2
    SHX3_2 = 6
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = GetGameTimer
      SHX1_2 = SHX1_2()
      SHX35_1 = SHX1_2
    end
    SHX1_2 = SHX33_1.put
    SHX2_2 = GetNetworkTime
    SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = true
    SHX34_1 = SHX1_2
  else
    SHX1_2 = SHX34_1
    if SHX1_2 then
      SHX1_2 = SHX33_1.put
      SHX2_2 = GetNetworkTime
      SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = false
      SHX34_1 = SHX1_2
    else
      SHX1_2 = GetGameTimer
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX35_1
      SHX1_2 = SHX1_2 - SHX2_2
      SHX2_2 = 500
      if SHX1_2 < SHX2_2 then
        SHX1_2 = GetPedConfigFlag
        SHX2_2 = SHX0_2
        SHX3_2 = 78
        SHX4_2 = false
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        if SHX1_2 then
          SHX1_2 = SHX33_1.put
          SHX2_2 = GetNetworkTime
          SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
          SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        else
          SHX1_2 = 0
          SHX35_1 = SHX1_2
        end
      end
    end
  end
end
SHX37_1 = RegisterNetEvent
SHX38_1 = "8abfbe8340"
function SHX39_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX4_2 = GetNetworkTime
  SHX4_2 = SHX4_2()
  SHX4_2 = SHX4_2 - SHX1_2
  SHX5_2 = 5000
  if not (SHX4_2 > SHX5_2) then
    SHX4_2 = SHX31_1
    SHX4_2 = SHX4_2[SHX2_2]
    if not SHX4_2 then
      goto SHX_LABEL_13
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = GetFrameTime
  SHX5_2 = SHX5_2()
  SHX5_2 = SHX5_2 * 1000.0
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2 * 2
  SHX5_2 = math
  SHX5_2 = SHX5_2.floor
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX5_2 = SHX4_2 + SHX5_2
  SHX5_2 = SHX5_2 + 50
  SHX6_2 = false
  SHX7_2 = SHX32_1.iterator
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2()
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    SHX13_2 = math
    SHX13_2 = SHX13_2.abs
    SHX14_2 = SHX12_2 - SHX0_2
    SHX13_2 = SHX13_2(SHX14_2)
    if SHX5_2 >= SHX13_2 then
      SHX6_2 = true
      break
    end
  end
  if not SHX6_2 then
    SHX7_2 = SHX32_1.get
    SHX7_2 = SHX7_2()
    SHX8_2 = TriggerServerEvent
    SHX9_2 = "fee5e0be83"
    SHX10_2 = SHX2_2
    SHX11_2 = SHX0_2
    SHX12_2 = SHX7_2
    SHX13_2 = "Native"
    SHX14_2 = SHX3_2
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    return
  end
  SHX7_2 = false
  SHX8_2 = SHX33_1.iterator
  SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2()
  for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
    SHX14_2 = math
    SHX14_2 = SHX14_2.abs
    SHX15_2 = SHX13_2 - SHX0_2
    SHX14_2 = SHX14_2(SHX15_2)
    if SHX5_2 >= SHX14_2 then
      SHX7_2 = true
      break
    end
  end
  if not SHX7_2 then
    SHX8_2 = SHX33_1.get
    SHX8_2 = SHX8_2()
    SHX9_2 = TriggerServerEvent
    SHX10_2 = "fee5e0be83"
    SHX11_2 = SHX2_2
    SHX12_2 = SHX0_2
    SHX13_2 = SHX8_2
    SHX14_2 = "Control"
    SHX15_2 = SHX3_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    return
  end
end
SHX37_1(SHX38_1, SHX39_1)
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX26_1
  SHX0_2()
  SHX0_2 = false
  if SHX0_2 then
    SHX0_2 = SHX30_1
    SHX0_2()
  end
  SHX0_2 = SHX36_1
  SHX0_2()
end
SHX38_1 = CMG
SHX38_1 = SHX38_1.createThreadOnTick
SHX39_1 = SHX37_1
SHX40_1 = "AntiCheat Health Check Tick"
SHX38_1(SHX39_1, SHX40_1)
SHX38_1 = Citizen
SHX38_1 = SHX38_1.CreateThread
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = Wait
  SHX1_2 = 10000
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  while true do
    if SHX0_2 >= 100 then
      SHX1_2 = tCMG
      SHX1_2 = SHX1_2.isInComa
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        SHX1_2 = TriggerServerEvent
        SHX2_2 = "825a34ce28"
        SHX1_2(SHX2_2)
        SHX1_2 = Citizen
        SHX1_2 = SHX1_2.Wait
        SHX2_2 = 5000
        SHX1_2(SHX2_2)
      end
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isStaffedOnClient
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasSpawnProtection
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.hasNewPlayerProtection
        SHX1_2 = SHX1_2()
        if not SHX1_2 then
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.getTunableValue
          SHX2_2 = "detect_god_mode"
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX1_2 then
            SHX1_2 = PlayerPedId
            SHX1_2 = SHX1_2()
            SHX2_2 = GetEntityHealth
            SHX3_2 = SHX1_2
            SHX2_2 = SHX2_2(SHX3_2)
            if 0 ~= SHX1_2 then
              SHX3_2 = IsEntityDead
              SHX4_2 = SHX1_2
              SHX3_2 = SHX3_2(SHX4_2)
              if not SHX3_2 then
                SHX3_2 = SHX26_1
                SHX3_2()
                SHX3_2 = SetEntityHealth
                SHX4_2 = SHX1_2
                SHX5_2 = SHX2_2 - 2
                SHX3_2(SHX4_2, SHX5_2)
                SHX3_2 = Citizen
                SHX3_2 = SHX3_2.Wait
                SHX4_2 = 50
                SHX3_2(SHX4_2)
                SHX3_2 = DoesEntityExist
                SHX4_2 = SHX1_2
                SHX3_2 = SHX3_2(SHX4_2)
                if SHX3_2 then
                  SHX3_2 = GetEntityHealth
                  SHX4_2 = SHX1_2
                  SHX3_2 = SHX3_2(SHX4_2)
                  SHX4_2 = SHX2_2 - 2
                  if SHX3_2 > SHX4_2 then
                    SHX0_2 = SHX0_2 + 1
                  elseif SHX0_2 > 0 then
                    SHX0_2 = SHX0_2 - 1
                  end
                  SHX3_2 = SHX26_1
                  SHX3_2()
                  SHX3_2 = SetEntityHealth
                  SHX4_2 = SHX1_2
                  SHX5_2 = GetEntityHealth
                  SHX6_2 = SHX1_2
                  SHX5_2 = SHX5_2(SHX6_2)
                  SHX5_2 = SHX5_2 + 2
                  SHX3_2(SHX4_2, SHX5_2)
                end
            end
            else
              SHX3_2 = Citizen
              SHX3_2 = SHX3_2.Wait
              SHX4_2 = 0
              SHX3_2(SHX4_2)
            end
        end
      end
    end
    else
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.Wait
      SHX2_2 = 1000
      SHX1_2(SHX2_2)
    end
  end
end
SHX38_1(SHX39_1)
SHX38_1 = {}
SHX39_1 = -1569615261
SHX38_1[SHX39_1] = true
SHX39_1 = 883325847
SHX38_1[SHX39_1] = true
SHX39_1 = 126349499
SHX38_1[SHX39_1] = true
SHX39_1 = 0
SHX40_1 = true
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isAimTraining
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.inArena
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.inArenaWarmup
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        goto SHX_LABEL_17
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetSelectedPedWeapon
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX40_1
  if SHX2_2 then
    SHX2_2 = IsPedShooting
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = SHX38_1
      SHX2_2 = SHX2_2[SHX1_2]
      if not SHX2_2 then
        SHX2_2 = GetCurrentPedVehicleWeapon
        SHX3_2 = SHX0_2
        SHX2_2 = SHX2_2(SHX3_2)
        if not SHX2_2 then
          SHX2_2 = GetAmmoInClip
          SHX3_2 = SHX0_2
          SHX4_2 = SHX1_2
          SHX5_2 = 0
          SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
          SHX4_2 = GetMaxAmmoInClip
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX7_2 = false
          SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
          if SHX3_2 == SHX4_2 then
            SHX4_2 = SHX39_1
            if SHX4_2 == SHX1_2 then
              SHX4_2 = GetFollowPedCamViewMode
              SHX4_2 = SHX4_2()
              if 4 ~= SHX4_2 then
                SHX4_2 = TriggerServerEvent
                SHX5_2 = "0604fef3b6"
                SHX4_2(SHX5_2)
                SHX4_2 = false
                SHX40_1 = SHX4_2
                SHX4_2 = SetTimeout
                SHX5_2 = 60000
                function SHX6_2()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_3, SHX1_3
                  SHX0_3 = true
                  SHX40_1 = SHX0_3
                end
                SHX4_2(SHX5_2, SHX6_2)
              end
            end
          end
        end
      end
    end
  end
  SHX39_1 = SHX1_2
end
SHX42_1 = CMG
SHX42_1 = SHX42_1.createThreadOnTick
SHX43_1 = SHX41_1
SHX44_1 = "AntiCheat Infinite Ammo Tick"
SHX42_1(SHX43_1, SHX44_1)
SHX42_1 = vector3
SHX43_1 = 0.0
SHX44_1 = 0.0
SHX45_1 = 0.0
SHX42_1 = SHX42_1(SHX43_1, SHX44_1, SHX45_1)
SHX43_1 = 0
SHX44_1 = nil
SHX45_1 = 0
SHX46_1 = 0
SHX47_1 = vector3
SHX48_1 = 0.0
SHX49_1 = 0.0
SHX50_1 = 0.0
SHX47_1 = SHX47_1(SHX48_1, SHX49_1, SHX50_1)
SHX48_1 = 0
SHX49_1 = 0
function SHX50_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = type
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "vector3" == SHX3_2 then
    SHX47_1 = SHX0_2
  else
    SHX3_2 = vector3
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX6_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX47_1 = SHX3_2
  end
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  SHX48_1 = SHX3_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX47_1
  SHX3_2 = SHX3_2 - SHX4_2
  SHX3_2 = #SHX3_2
  SHX3_2 = SHX3_2 > 50.0
  return SHX3_2
end
SHX51_1 = CMG
SHX51_1 = SHX51_1.patchFunction
SHX52_1 = "SetEntityCoords"
SHX53_1 = SetEntityCoords
function SHX54_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX9_2 = false
  SHX10_2 = SHX43_1
  if SHX1_2 ~= SHX10_2 then
    SHX10_2 = SHX45_1
    if SHX1_2 ~= SHX10_2 then
      goto SHX_LABEL_14
    end
  end
  SHX10_2 = SHX50_1
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX9_2 = SHX10_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX10_2 = SHX0_2
  SHX11_2 = SHX1_2
  SHX12_2 = SHX2_2
  SHX13_2 = SHX3_2
  SHX14_2 = SHX4_2
  SHX15_2 = SHX5_2
  SHX16_2 = SHX6_2
  SHX17_2 = SHX7_2
  SHX18_2 = SHX8_2
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  if SHX9_2 then
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.forceNearbyAreasReload
    SHX10_2()
  end
end
SHX51_1(SHX52_1, SHX53_1, SHX54_1)
SHX51_1 = CMG
SHX51_1 = SHX51_1.patchFunction
SHX52_1 = "SetEntityCoordsNoOffset"
SHX53_1 = SetEntityCoordsNoOffset
function SHX54_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX8_2 = false
  SHX9_2 = SHX43_1
  if SHX1_2 ~= SHX9_2 then
    SHX9_2 = SHX45_1
    if SHX1_2 ~= SHX9_2 then
      goto SHX_LABEL_14
    end
  end
  SHX9_2 = SHX50_1
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  SHX12_2 = SHX4_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = SHX9_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX9_2 = SHX0_2
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = SHX6_2
  SHX16_2 = SHX7_2
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  if SHX8_2 then
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.forceNearbyAreasReload
    SHX9_2()
  end
end
SHX51_1(SHX52_1, SHX53_1, SHX54_1)
SHX51_1 = CMG
SHX51_1 = SHX51_1.patchFunction
SHX52_1 = "NetworkResurrectLocalPlayer"
SHX53_1 = NetworkResurrectLocalPlayer
function SHX54_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX7_2 = SHX50_1
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2
  SHX10_2 = SHX3_2
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2
  SHX10_2 = SHX3_2
  SHX11_2 = SHX4_2
  SHX12_2 = SHX5_2
  SHX13_2 = SHX6_2
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
SHX51_1(SHX52_1, SHX53_1, SHX54_1)
SHX51_1 = CMG
SHX51_1 = SHX51_1.patchFunction
SHX52_1 = "StartPlayerTeleport"
SHX53_1 = StartPlayerTeleport
function SHX54_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX9_2 = SHX50_1
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  SHX12_2 = SHX4_2
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = SHX0_2
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = SHX6_2
  SHX16_2 = SHX7_2
  SHX17_2 = SHX8_2
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
end
SHX51_1(SHX52_1, SHX53_1, SHX54_1)
function SHX51_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.abs
  SHX3_2 = SHX0_2.x
  SHX2_2 = SHX2_2(SHX3_2)
  if not (SHX1_2 < SHX2_2) then
    SHX2_2 = math
    SHX2_2 = SHX2_2.abs
    SHX3_2 = SHX0_2.y
    SHX2_2 = SHX2_2(SHX3_2)
    if not (SHX1_2 < SHX2_2) then
      SHX2_2 = math
      SHX2_2 = SHX2_2.abs
      SHX3_2 = SHX0_2.z
      SHX2_2 = SHX2_2(SHX3_2)
      if not (SHX1_2 < SHX2_2) then
        goto SHX_LABEL_22
      end
    end
  end
  SHX2_2 = true
  return SHX2_2
  goto SHX_LABEL_24
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_24:: outside nested blocks until all 'goto SHX_LABEL_24' can see it
  ::SHX_LABEL_24::
end
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  if nil == SHX0_2 or 0 == SHX0_2 then
    return
  end
  SHX43_1 = SHX0_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = GetVehiclePedIsUsing
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX45_1
  if SHX3_2 ~= SHX2_2 then
    SHX46_1 = SHX1_2
  end
  SHX45_1 = SHX2_2
  SHX3_2 = false
  if 0 ~= SHX2_2 then
    SHX4_2 = GetPedInVehicleSeat
    SHX5_2 = SHX2_2
    SHX6_2 = -1
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX3_2 = SHX4_2 ~= SHX0_2
  end
  SHX4_2 = SHX44_1
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX0_2
  SHX7_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX44_1 = SHX5_2
  if not SHX4_2 then
    return
  end
  SHX5_2 = SHX44_1
  SHX5_2 = SHX4_2 - SHX5_2
  SHX5_2 = #SHX5_2
  if not (SHX5_2 < 50.0) and not SHX3_2 then
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.isCarrying
    SHX6_2 = SHX6_2()
    if not SHX6_2 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.isPiggyBackActive
      SHX6_2 = SHX6_2()
      if not SHX6_2 then
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.isPlayerHidingInBoot
        SHX6_2 = SHX6_2()
        if not SHX6_2 then
          SHX6_2 = GetEntityAttachedTo
          SHX7_2 = SHX0_2
          SHX6_2 = SHX6_2(SHX7_2)
          if 0 == SHX6_2 then
            goto SHX_LABEL_68
          end
        end
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_68:: outside nested blocks until all 'goto SHX_LABEL_68' can see it
  ::SHX_LABEL_68::
  SHX6_2 = SHX46_1
  SHX6_2 = SHX1_2 - SHX6_2
  SHX7_2 = 2000
  if not (SHX6_2 < SHX7_2) then
    SHX6_2 = SHX48_1
    SHX6_2 = SHX1_2 - SHX6_2
    SHX7_2 = 5000
    if not (SHX6_2 < SHX7_2) then
      goto SHX_LABEL_81
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_81:: outside nested blocks until all 'goto SHX_LABEL_81' can see it
  ::SHX_LABEL_81::
  SHX6_2 = SHX44_1
  SHX7_2 = SHX47_1
  SHX6_2 = SHX6_2 - SHX7_2
  SHX6_2 = #SHX6_2
  if not (SHX6_2 < 15.0) then
    SHX6_2 = SHX44_1
    SHX7_2 = SHX42_1
    SHX6_2 = SHX6_2 - SHX7_2
    SHX6_2 = #SHX6_2
    if not (SHX6_2 < 50.0) then
      SHX6_2 = SHX42_1
      SHX6_2 = SHX4_2 - SHX6_2
      SHX6_2 = #SHX6_2
      if not (SHX6_2 < 50.0) then
        goto SHX_LABEL_102
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_102:: outside nested blocks until all 'goto SHX_LABEL_102' can see it
  ::SHX_LABEL_102::
  SHX6_2 = SHX4_2.xy
  SHX7_2 = SHX44_1.xy
  SHX6_2 = SHX6_2 - SHX7_2
  SHX6_2 = #SHX6_2
  SHX7_2 = SHX4_2.z
  SHX8_2 = -180.0
  if SHX7_2 < SHX8_2 then
    SHX7_2 = 2500.0
    if SHX6_2 < SHX7_2 then
      return
    end
  end
  SHX7_2 = SHX44_1.z
  if SHX7_2 >= -52.0 then
    SHX7_2 = SHX44_1.z
    if SHX7_2 <= -48.0 and SHX6_2 < 10.0 then
      return
    end
  end
  SHX7_2 = GetEntityVelocity
  SHX8_2 = SHX0_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = SHX44_1
  SHX8_2 = SHX8_2 - SHX4_2
  SHX9_2 = GetFrameTime
  SHX9_2 = SHX9_2()
  SHX8_2 = SHX8_2 / SHX9_2
  SHX9_2 = SHX7_2 - SHX8_2
  SHX10_2 = SHX51_1
  SHX11_2 = SHX9_2
  SHX12_2 = 100.0
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  if SHX10_2 then
    SHX10_2 = SHX49_1
    SHX10_2 = SHX1_2 - SHX10_2
    SHX11_2 = 5000
    if SHX10_2 > SHX11_2 then
      SHX10_2 = TriggerServerEvent
      SHX11_2 = "5b43d997e4"
      SHX12_2 = SHX4_2
      SHX13_2 = SHX44_1
      SHX10_2(SHX11_2, SHX12_2, SHX13_2)
      SHX49_1 = SHX1_2
    end
  end
end
SHX53_1 = RegisterNetEvent
SHX54_1 = "3409ae98a5"
function SHX55_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX48_1 = SHX0_2
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = 0
SHX54_1 = 0
SHX55_1 = 0
SHX56_1 = 0
SHX57_1 = 0
SHX58_1 = 0
SHX59_1 = 0
SHX60_1 = CMG
SHX60_1 = SHX60_1.patchFunction
SHX61_1 = "SetVehicleFixed"
SHX62_1 = SetVehicleFixed
function SHX63_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX58_1
  if SHX1_2 == SHX2_2 then
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX57_1 = SHX2_2
  end
  SHX2_2 = SHX0_2
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
SHX60_1(SHX61_1, SHX62_1, SHX63_1)
SHX60_1 = RegisterNetEvent
SHX61_1 = "49e649276d"
function SHX62_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX0_2 = SHX0_2 + 5000
  SHX57_1 = SHX0_2
end
SHX60_1(SHX61_1, SHX62_1)
SHX60_1 = CMG
SHX60_1 = SHX60_1.patchFunction
SHX61_1 = "SetVehicleBodyHealth"
SHX62_1 = SetVehicleBodyHealth
function SHX63_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX58_1
  if SHX1_2 == SHX3_2 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.floor
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX53_1 = SHX3_2
  end
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX60_1(SHX61_1, SHX62_1, SHX63_1)
SHX60_1 = CMG
SHX60_1 = SHX60_1.patchFunction
SHX61_1 = "SetVehicleEngineHealth"
SHX62_1 = SetVehicleEngineHealth
function SHX63_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX58_1
  if SHX1_2 == SHX3_2 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.floor
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX54_1 = SHX3_2
  end
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX60_1(SHX61_1, SHX62_1, SHX63_1)
SHX60_1 = CMG
SHX60_1 = SHX60_1.patchFunction
SHX61_1 = "SetVehiclePetrolTankHealth"
SHX62_1 = SetVehiclePetrolTankHealth
function SHX63_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX58_1
  if SHX1_2 == SHX3_2 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.floor
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX55_1 = SHX3_2
  end
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX60_1(SHX61_1, SHX62_1, SHX63_1)
SHX60_1 = CMG
SHX60_1 = SHX60_1.patchFunction
SHX61_1 = "SetEntityHealth"
SHX62_1 = SetEntityHealth
function SHX63_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX58_1
  if SHX1_2 == SHX3_2 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.floor
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX54_1 = SHX3_2
  end
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX60_1(SHX61_1, SHX62_1, SHX63_1)
function SHX60_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = {}
  SHX2_2 = GetEntityModel
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetVehicleModelNumberOfSeats
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2 - 1
  SHX4_2 = 0
  SHX5_2 = SHX3_2
  SHX6_2 = 1
  for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = GetPedInVehicleSeat
    SHX9_2 = SHX0_2
    SHX10_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if 0 ~= SHX8_2 then
      SHX9_2 = IsPedAPlayer
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if SHX9_2 then
        SHX9_2 = NetworkGetPlayerIndexFromPed
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        if -1 ~= SHX9_2 then
          SHX10_2 = GetPlayerServerId
          SHX11_2 = SHX9_2
          SHX10_2 = SHX10_2(SHX11_2)
          SHX11_2 = table
          SHX11_2 = SHX11_2.insert
          SHX12_2 = SHX1_2
          SHX13_2 = {}
          SHX14_2 = SHX7_2
          SHX15_2 = SHX10_2
          SHX13_2[1] = SHX14_2
          SHX13_2[2] = SHX15_2
          SHX11_2(SHX12_2, SHX13_2)
        end
      end
    end
  end
  return SHX1_2
end
function SHX61_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if 0 == SHX0_2 or SHX0_2 < 0 and SHX1_2 < 0 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = math
  SHX2_2 = SHX2_2.abs
  SHX3_2 = SHX1_2 - SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 <= 4 then
    SHX3_2 = false
    return SHX3_2
  end
  if SHX2_2 <= 50 and 1000 ~= SHX0_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = SHX1_2 < SHX0_2
  return SHX3_2
end
function SHX62_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2, SHX1_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 and SHX1_2 then
      SHX2_2 = NetworkGetEntityIsNetworked
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = GetIsTaskActive
        SHX3_2 = PlayerPedId
        SHX3_2 = SHX3_2()
        SHX4_2 = 165
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        if not SHX2_2 then
          SHX2_2 = GetEntityType
          SHX3_2 = GetEntityAttachedTo
          SHX4_2 = SHX0_2
          SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX3_2(SHX4_2)
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
          if 2 ~= SHX2_2 then
            SHX2_2 = CMG
            SHX2_2 = SHX2_2.inEvent
            SHX2_2 = SHX2_2()
            if not SHX2_2 then
              SHX2_2 = CMG
              SHX2_2 = SHX2_2.isLbRacingActive
              SHX2_2 = SHX2_2()
              if not SHX2_2 then
                goto SHX_LABEL_53
              end
            end
          end
        end
      end
    end
  end
  SHX2_2 = 0
  SHX58_1 = SHX2_2
  SHX2_2 = 1000
  SHX53_1 = SHX2_2
  SHX2_2 = 1000
  SHX54_1 = SHX2_2
  SHX2_2 = 1000
  SHX55_1 = SHX2_2
  SHX2_2 = 1000
  SHX56_1 = SHX2_2
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_53:: outside nested blocks until all 'goto SHX_LABEL_53' can see it
  ::SHX_LABEL_53::
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = GetVehicleBodyHealth
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX3_2(SHX4_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = GetVehicleEngineHealth
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = GetVehiclePetrolTankHealth
  SHX6_2 = SHX0_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX5_2(SHX6_2)
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX5_2 = math
  SHX5_2 = SHX5_2.floor
  SHX6_2 = GetEntityHealth
  SHX7_2 = SHX0_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX6_2(SHX7_2)
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX6_2 = SHX61_1
  SHX7_2 = SHX2_2
  SHX8_2 = SHX53_1
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if not SHX6_2 then
    SHX6_2 = SHX61_1
    SHX7_2 = SHX3_2
    SHX8_2 = SHX54_1
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if not SHX6_2 then
      SHX6_2 = SHX61_1
      SHX7_2 = SHX4_2
      SHX8_2 = SHX55_1
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      if not SHX6_2 then
        SHX6_2 = SHX61_1
        SHX7_2 = SHX5_2
        SHX8_2 = SHX56_1
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        if not SHX6_2 then
          goto SHX_LABEL_160
        end
      end
    end
  end
  SHX6_2 = GetGameTimer
  SHX6_2 = SHX6_2()
  SHX7_2 = GetGameTimer
  SHX7_2 = SHX7_2()
  SHX8_2 = SHX57_1
  SHX7_2 = SHX7_2 - SHX8_2
  SHX8_2 = 1000
  if SHX7_2 > SHX8_2 then
    SHX7_2 = SHX58_1
    if SHX0_2 == SHX7_2 then
      SHX7_2 = SHX59_1
      SHX7_2 = SHX6_2 - SHX7_2
      SHX8_2 = 5000
      if SHX7_2 > SHX8_2 then
        SHX7_2 = GetEntityHealth
        SHX8_2 = PlayerPedId
        SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX8_2()
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
        if SHX7_2 > 102 then
          SHX7_2 = CMG
          SHX7_2 = SHX7_2.getLastSpawnedGarageVehicleTime
          SHX7_2 = SHX7_2()
          SHX7_2 = SHX6_2 - SHX7_2
          SHX8_2 = 5000
          if SHX7_2 > SHX8_2 then
            SHX7_2 = SHX60_1
            SHX8_2 = SHX0_2
            SHX7_2 = SHX7_2(SHX8_2)
            SHX8_2 = CMG
            SHX8_2 = SHX8_2.getVehicleIdFromModel
            SHX9_2 = GetEntityModel
            SHX10_2 = SHX0_2
            SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX9_2(SHX10_2)
            SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
            if not SHX8_2 then
              SHX8_2 = "N/A"
            end
            SHX9_2 = TriggerServerEvent
            SHX10_2 = "c1490664ed"
            SHX11_2 = SHX2_2
            SHX12_2 = SHX53_1
            SHX13_2 = SHX3_2
            SHX14_2 = SHX54_1
            SHX15_2 = SHX4_2
            SHX16_2 = SHX55_1
            SHX17_2 = SHX5_2
            SHX18_2 = SHX56_1
            SHX19_2 = SHX7_2
            SHX20_2 = SHX8_2
            SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
            SHX59_1 = SHX6_2
          end
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_160:: outside nested blocks until all 'goto SHX_LABEL_160' can see it
  ::SHX_LABEL_160::
  SHX53_1 = SHX2_2
  SHX54_1 = SHX3_2
  SHX55_1 = SHX4_2
  SHX56_1 = SHX5_2
  SHX58_1 = SHX0_2
end
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX52_1
  SHX0_2()
  SHX0_2 = SHX62_1
  SHX0_2()
end
SHX64_1 = AddEventHandler
SHX65_1 = "CMG:onClientSpawn"
function SHX66_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  if SHX1_2 then
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 60000
    SHX2_2(SHX3_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.createThreadOnTick
    SHX3_2 = SHX63_1
    SHX4_2 = "AntiCheat Teleport Tick"
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = _ENV
SHX65_1 = "Citizen"
SHX64_1 = SHX64_1[SHX65_1]
SHX64_1 = SHX64_1.CreateThread
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2 = SHX0_2()
    SHX1_2 = GetVehicleHasParachute
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = GetEntityModel
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = table
      SHX2_2 = SHX2_2.has
      SHX3_2 = SHX2_1
      SHX4_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if not SHX2_2 then
        SHX2_2 = TriggerServerEvent
        SHX3_2 = "8ca67c4052"
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.getVehicleIdFromModel
        SHX5_2 = SHX1_2
        SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 1000
    SHX1_2(SHX2_2)
  end
end
SHX64_1(SHX65_1)
SHX64_1 = 0
SHX65_1 = {}
SHX66_1 = _ENV
SHX67_1 = "CMG"
SHX66_1 = SHX66_1[SHX67_1]
SHX67_1 = "requestEntitySpawn"
function SHX68_1(SHX0_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX64_1
  SHX2_2 = SHX64_1
  SHX2_2 = SHX2_2 + 1
  SHX64_1 = SHX2_2
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "0624c04072"
  SHX4_2 = SHX1_2
  SHX5_2 = SHX0_2
  SHX6_2 = ...
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = SHX65_1
    SHX3_2 = SHX3_2[SHX1_2]
    if SHX3_2 then
      break
    end
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX4_2 = 2500
    if SHX3_2 > SHX4_2 then
      SHX3_2 = error
      SHX4_2 = "Failed to spawn entity."
      SHX3_2(SHX4_2)
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = SHX65_1
  SHX3_2[SHX1_2] = nil
end
SHX66_1[SHX67_1] = SHX68_1
SHX66_1 = RegisterNetEvent
SHX67_1 = "0624c04072"
function SHX68_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX65_1
  SHX1_2[SHX0_2] = true
end
SHX66_1(SHX67_1, SHX68_1)
SHX66_1 = _ENV
SHX67_1 = "Wait"
SHX66_1 = SHX66_1[SHX67_1]
SHX67_1 = 0
SHX66_1(SHX67_1)
SHX66_1 = _ENV
SHX67_1 = "CMG"
SHX66_1 = SHX66_1[SHX67_1]
SHX66_1 = SHX66_1.createCircularBuffer
SHX67_1 = 100
SHX68_1 = {}
SHX69_1 = ""
SHX70_1 = 0
SHX71_1 = 0
SHX68_1[1] = SHX69_1
SHX68_1[2] = SHX70_1
SHX68_1[3] = SHX71_1
SHX66_1 = SHX66_1(SHX67_1, SHX68_1)
SHX67_1 = 0
SHX68_1 = 0
SHX69_1 = 0
SHX70_1 = 0
SHX71_1 = 5000
SHX72_1 = {}
SHX73_1 = _ENV
SHX74_1 = "CMG"
SHX73_1 = SHX73_1[SHX74_1]
SHX74_1 = "uiRegisterCallback"
SHX73_1 = SHX73_1[SHX74_1]
SHX74_1 = "sendRecentPresses"
function SHX75_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = SHX67_1
  if 0 == SHX1_2 then
    return
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.recentPresses
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2[2]
    SHX8_2 = SHX67_1
    SHX7_2 = SHX7_2 + SHX8_2
    SHX8_2 = SHX66_1.put
    SHX9_2 = SHX6_2[1]
    SHX10_2 = SHX7_2
    SHX11_2 = SHX6_2[3]
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX8_2 = SHX70_1
    if 0 ~= SHX8_2 then
      SHX8_2 = math
      SHX8_2 = SHX8_2.abs
      SHX9_2 = SHX70_1
      SHX9_2 = SHX7_2 - SHX9_2
      SHX8_2 = SHX8_2(SHX9_2)
      SHX9_2 = SHX71_1
      if SHX8_2 < SHX9_2 then
        SHX8_2 = table
        SHX8_2 = SHX8_2.insert
        SHX9_2 = SHX72_1
        SHX10_2 = {}
        SHX11_2 = SHX6_2[1]
        SHX12_2 = SHX7_2
        SHX13_2 = SHX6_2[3]
        SHX10_2[1] = SHX11_2
        SHX10_2[2] = SHX12_2
        SHX10_2[3] = SHX13_2
        SHX8_2(SHX9_2, SHX10_2)
      end
    end
  end
  SHX1_2 = SHX69_1
  SHX1_2 = SHX1_2 + 1
  SHX69_1 = SHX1_2
end
SHX73_1(SHX74_1, SHX75_1)
SHX73_1 = {}
SHX74_1 = "LCONTROL"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "RCONTROL"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "LSHIFT"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "RSHIFT"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "W"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "A"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "S"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "D"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "SPACE"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "B0"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "B1"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "B2"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "N"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "C"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "R"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "Q"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "Z"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "X"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "TAB"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = "F"
SHX75_1 = true
SHX73_1[SHX74_1] = SHX75_1
SHX74_1 = _ENV
SHX75_1 = "CMG"
SHX74_1 = SHX74_1[SHX75_1]
SHX75_1 = "isKeyboardKeyCaptured"
function SHX76_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX73_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = not SHX1_2
  return SHX1_2
end
SHX74_1[SHX75_1] = SHX76_1
SHX74_1 = RegisterNetEvent
SHX75_1 = "8abfbe8340"
function SHX76_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getTunableValue
  SHX4_2 = "triggerbot_clicks_max_delay"
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getTunableValue
  SHX5_2 = "triggerbot_clicks_min_required"
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getTunableValue
  SHX6_2 = "triggerbot_clicks_history_msec"
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = {}
  SHX7_2 = GetGameTimer
  SHX7_2 = SHX7_2()
  SHX8_2 = SHX68_1
  SHX8_2 = SHX7_2 - SHX8_2
  SHX9_2 = 20000
  if SHX8_2 < SHX9_2 then
    return
  end
  SHX8_2 = SHX69_1
  while true do
    SHX9_2 = SHX69_1
    if SHX9_2 ~= SHX8_2 then
      break
    end
    SHX9_2 = Wait
    SHX10_2 = 0
    SHX9_2(SHX10_2)
  end
  SHX9_2 = GetGameTimer
  SHX9_2 = SHX9_2()
  SHX10_2 = {}
  SHX11_2 = SHX66_1.iterator
  SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2()
  for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
    SHX17_2 = SHX16_2[1]
    if "B0" == SHX17_2 then
      SHX18_2 = SHX16_2[2]
      SHX18_2 = SHX7_2 - SHX18_2
      if SHX5_2 > SHX18_2 then
        SHX18_2 = SHX16_2[3]
        if SHX3_2 > SHX18_2 then
          SHX18_2 = SHX16_2[3]
          if SHX18_2 >= 5 then
            SHX18_2 = table
            SHX18_2 = SHX18_2.insert
            SHX19_2 = SHX6_2
            SHX20_2 = SHX16_2[3]
            SHX18_2(SHX19_2, SHX20_2)
          end
        end
      end
    end
    SHX18_2 = CMG
    SHX18_2 = SHX18_2.hasClientGroup
    SHX19_2 = "keylog"
    SHX18_2 = SHX18_2(SHX19_2)
    if SHX18_2 then
      SHX18_2 = SHX16_2[2]
      SHX18_2 = SHX9_2 - SHX18_2
      SHX19_2 = SHX73_1
      SHX19_2 = SHX19_2[SHX17_2]
      if not SHX19_2 and SHX18_2 >= 0 then
        SHX19_2 = 2000
        if SHX18_2 <= SHX19_2 then
          SHX19_2 = table
          SHX19_2 = SHX19_2.insert
          SHX20_2 = SHX10_2
          SHX21_2 = SHX17_2
          SHX19_2(SHX20_2, SHX21_2)
        end
      end
    end
  end
  SHX11_2 = #SHX6_2
  if SHX4_2 <= SHX11_2 then
    SHX11_2 = TriggerServerEvent
    SHX12_2 = "6db9ca48ea"
    SHX13_2 = SHX6_2
    SHX11_2(SHX12_2, SHX13_2)
    SHX68_1 = SHX7_2
  end
  SHX11_2 = #SHX10_2
  if SHX11_2 > 0 then
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.getTunableValue
    SHX12_2 = "log_unwanted_buttons"
    SHX11_2 = SHX11_2(SHX12_2)
    if SHX11_2 then
      SHX11_2 = TriggerServerEvent
      SHX12_2 = "7011667ffc"
      SHX13_2 = SHX10_2
      SHX14_2 = SHX2_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
  end
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = _ENV
SHX75_1 = "Citizen"
SHX74_1 = SHX74_1[SHX75_1]
SHX74_1 = SHX74_1.CreateThread
function SHX75_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSendMessage
    SHX1_2 = {}
    SHX1_2.action = "fetchPerformanceCounter"
    SHX2_2 = {}
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX2_2.gameTime = SHX3_2
    SHX1_2.data = SHX2_2
    SHX0_2(SHX1_2)
    SHX0_2 = SHX72_1
    SHX0_2 = #SHX0_2
    if SHX0_2 > 0 then
      SHX0_2 = table
      SHX0_2 = SHX0_2.sort
      SHX1_2 = SHX72_1
      function SHX2_2(SHX0_3, SHX1_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX2_3, SHX3_3
        SHX2_3 = SHX0_3[2]
        SHX3_3 = SHX1_3[2]
        SHX2_3 = SHX2_3 < SHX3_3
        return SHX2_3
      end
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "8877db5ad1"
      SHX2_2 = SHX72_1
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = {}
      SHX72_1 = SHX0_2
    end
    SHX0_2 = Wait
    SHX1_2 = 10000
    SHX0_2(SHX1_2)
  end
end
SHX74_1(SHX75_1)
SHX74_1 = _ENV
SHX75_1 = "CMG"
SHX74_1 = SHX74_1[SHX75_1]
SHX75_1 = "uiRegisterCallback"
SHX74_1 = SHX74_1[SHX75_1]
SHX75_1 = "sendPerformanceCounter"
function SHX76_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2.performenceCounter
  if SHX1_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "3ec6910688"
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_2.gameTime
  SHX1_2 = SHX1_2 - SHX2_2
  SHX1_2 = SHX1_2 / 2
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX0_2.gameTime
  SHX4_2 = SHX0_2.performanceCounter
  SHX3_2 = SHX3_2 - SHX4_2
  SHX3_2 = SHX3_2 + SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX67_1 = SHX2_2
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = 0
SHX75_1 = 0
SHX76_1 = _ENV
SHX77_1 = "Citizen"
SHX76_1 = SHX76_1[SHX77_1]
SHX76_1 = SHX76_1.CreateThread
function SHX77_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.spawnVehicle
  SHX1_2 = "adder"
  SHX2_2 = 500.0
  SHX3_2 = 500.0
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX75_1 = SHX0_2
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = SHX75_1
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetEntityVisible
  SHX1_2 = SHX75_1
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SetEntityCollision
  SHX1_2 = SHX75_1
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SetVehicleDoorsLocked
  SHX1_2 = SHX75_1
  SHX2_2 = 2
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetVehicleDoorsLockedForAllPlayers
  SHX1_2 = SHX75_1
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = SHX75_1
    if 0 ~= SHX0_2 then
      SHX0_2 = GetVehicleDoorLockStatus
      SHX1_2 = SHX75_1
      SHX0_2 = SHX0_2(SHX1_2)
      if 2 ~= SHX0_2 then
        SHX1_2 = DoesEntityExist
        SHX2_2 = SHX75_1
        SHX1_2 = SHX1_2(SHX2_2)
        SHX2_2 = GetGameTimer
        SHX2_2 = SHX2_2()
        SHX3_2 = SHX74_1
        SHX3_2 = SHX2_2 - SHX3_2
        SHX4_2 = 20000
        if SHX3_2 > SHX4_2 then
          SHX3_2 = TriggerServerEvent
          SHX4_2 = "eaa4e1837c"
          SHX5_2 = SHX0_2
          SHX6_2 = SHX1_2
          SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          SHX3_2 = GetGameTimer
          SHX3_2 = SHX3_2()
          SHX74_1 = SHX3_2
        end
        if SHX1_2 then
          SHX3_2 = SetVehicleDoorsLocked
          SHX4_2 = SHX75_1
          SHX5_2 = 2
          SHX3_2(SHX4_2, SHX5_2)
        else
          SHX3_2 = 0
          SHX75_1 = SHX3_2
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX76_1(SHX77_1)
function SHX76_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.format
  SHX2_2 = "AC Token: %s"
  SHX3_2 = DecorGetInt
  SHX4_2 = SHX0_2
  SHX5_2 = "4538025922"
  SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
  return SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX77_1 = _ENV
SHX78_1 = "CMG"
SHX77_1 = SHX77_1[SHX78_1]
SHX78_1 = "registerDevMenuEntityEditor"
SHX77_1 = SHX77_1[SHX78_1]
SHX78_1 = "AntiCheat"
SHX79_1 = "vehicle"
SHX80_1 = SHX76_1
function SHX81_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX77_1(SHX78_1, SHX79_1, SHX80_1, SHX81_1)
SHX77_1 = {}
SHX78_1 = "LBUTTON"
SHX77_1[1] = SHX78_1
SHX78_1 = "RBUTTON"
SHX77_1[2] = SHX78_1
SHX78_1 = "CANCEL"
SHX77_1[3] = SHX78_1
SHX78_1 = "MBUTTON"
SHX77_1[4] = SHX78_1
SHX78_1 = "XBUTTON1"
SHX77_1[5] = SHX78_1
SHX78_1 = "XBUTTON2"
SHX77_1[6] = SHX78_1
SHX78_1 = "BACK"
SHX77_1[8] = SHX78_1
SHX78_1 = "TAB"
SHX77_1[9] = SHX78_1
SHX78_1 = "CLEAR"
SHX77_1[12] = SHX78_1
SHX78_1 = "RETURN"
SHX77_1[13] = SHX78_1
SHX78_1 = "SHIFT"
SHX77_1[16] = SHX78_1
SHX78_1 = "CONTROL"
SHX77_1[17] = SHX78_1
SHX78_1 = "MENU"
SHX77_1[18] = SHX78_1
SHX78_1 = "PAUSE"
SHX77_1[19] = SHX78_1
SHX78_1 = "CAPITAL"
SHX77_1[20] = SHX78_1
SHX78_1 = "KANA"
SHX77_1[21] = SHX78_1
SHX78_1 = "IME_ON"
SHX77_1[22] = SHX78_1
SHX78_1 = "JUNJA"
SHX77_1[23] = SHX78_1
SHX78_1 = "FINAL"
SHX77_1[24] = SHX78_1
SHX78_1 = "HANJA"
SHX77_1[25] = SHX78_1
SHX78_1 = "IME_OFF"
SHX77_1[26] = SHX78_1
SHX78_1 = "ESCAPE"
SHX77_1[27] = SHX78_1
SHX78_1 = "CONVERT"
SHX77_1[28] = SHX78_1
SHX78_1 = "NONCONVERT"
SHX77_1[29] = SHX78_1
SHX78_1 = "ACCEPT"
SHX77_1[30] = SHX78_1
SHX78_1 = "MODECHANGE"
SHX77_1[31] = SHX78_1
SHX78_1 = "SPACE"
SHX77_1[32] = SHX78_1
SHX78_1 = "PRIOR"
SHX77_1[33] = SHX78_1
SHX78_1 = "NEXT"
SHX77_1[34] = SHX78_1
SHX78_1 = "END"
SHX77_1[35] = SHX78_1
SHX78_1 = "HOME"
SHX77_1[36] = SHX78_1
SHX78_1 = "LEFT"
SHX77_1[37] = SHX78_1
SHX78_1 = "UP"
SHX77_1[38] = SHX78_1
SHX78_1 = "RIGHT"
SHX77_1[39] = SHX78_1
SHX78_1 = "DOWN"
SHX77_1[40] = SHX78_1
SHX78_1 = "SELECT"
SHX77_1[41] = SHX78_1
SHX78_1 = "PRINT"
SHX77_1[42] = SHX78_1
SHX78_1 = "EXECUTE"
SHX77_1[43] = SHX78_1
SHX78_1 = "SNAPSHOT"
SHX77_1[44] = SHX78_1
SHX78_1 = "INSERT"
SHX77_1[45] = SHX78_1
SHX78_1 = "DELETE"
SHX77_1[46] = SHX78_1
SHX78_1 = "HELP"
SHX77_1[47] = SHX78_1
SHX78_1 = "0"
SHX77_1[48] = SHX78_1
SHX78_1 = "1"
SHX77_1[49] = SHX78_1
SHX78_1 = "2"
SHX77_1[50] = SHX78_1
SHX78_1 = "3"
SHX77_1[51] = SHX78_1
SHX78_1 = "4"
SHX77_1[52] = SHX78_1
SHX78_1 = "5"
SHX77_1[53] = SHX78_1
SHX78_1 = "6"
SHX77_1[54] = SHX78_1
SHX78_1 = "7"
SHX77_1[55] = SHX78_1
SHX78_1 = "8"
SHX77_1[56] = SHX78_1
SHX78_1 = "9"
SHX77_1[57] = SHX78_1
SHX78_1 = "A"
SHX77_1[65] = SHX78_1
SHX78_1 = "B"
SHX77_1[66] = SHX78_1
SHX78_1 = "C"
SHX77_1[67] = SHX78_1
SHX78_1 = "D"
SHX77_1[68] = SHX78_1
SHX78_1 = "E"
SHX77_1[69] = SHX78_1
SHX78_1 = "F"
SHX77_1[70] = SHX78_1
SHX78_1 = "G"
SHX77_1[71] = SHX78_1
SHX78_1 = "H"
SHX77_1[72] = SHX78_1
SHX78_1 = "I"
SHX77_1[73] = SHX78_1
SHX78_1 = "J"
SHX77_1[74] = SHX78_1
SHX78_1 = "K"
SHX77_1[75] = SHX78_1
SHX78_1 = "L"
SHX77_1[76] = SHX78_1
SHX78_1 = "M"
SHX77_1[77] = SHX78_1
SHX78_1 = "N"
SHX77_1[78] = SHX78_1
SHX78_1 = "O"
SHX77_1[79] = SHX78_1
SHX78_1 = "P"
SHX77_1[80] = SHX78_1
SHX78_1 = "Q"
SHX77_1[81] = SHX78_1
SHX78_1 = "R"
SHX77_1[82] = SHX78_1
SHX78_1 = "S"
SHX77_1[83] = SHX78_1
SHX78_1 = "T"
SHX77_1[84] = SHX78_1
SHX78_1 = "U"
SHX77_1[85] = SHX78_1
SHX78_1 = "V"
SHX77_1[86] = SHX78_1
SHX78_1 = "W"
SHX77_1[87] = SHX78_1
SHX78_1 = "X"
SHX77_1[88] = SHX78_1
SHX78_1 = "Y"
SHX77_1[89] = SHX78_1
SHX78_1 = "Z"
SHX77_1[90] = SHX78_1
SHX78_1 = "LWIN"
SHX77_1[91] = SHX78_1
SHX78_1 = "RWIN"
SHX77_1[92] = SHX78_1
SHX78_1 = "APPS"
SHX77_1[93] = SHX78_1
SHX78_1 = "SLEEP"
SHX77_1[95] = SHX78_1
SHX78_1 = "NUMPAD0"
SHX77_1[96] = SHX78_1
SHX78_1 = "NUMPAD1"
SHX77_1[97] = SHX78_1
SHX78_1 = "NUMPAD2"
SHX77_1[98] = SHX78_1
SHX78_1 = "NUMPAD3"
SHX77_1[99] = SHX78_1
SHX78_1 = "NUMPAD4"
SHX77_1[100] = SHX78_1
SHX78_1 = "NUMPAD5"
SHX77_1[101] = SHX78_1
SHX78_1 = "NUMPAD6"
SHX77_1[102] = SHX78_1
SHX78_1 = "NUMPAD7"
SHX77_1[103] = SHX78_1
SHX78_1 = "NUMPAD8"
SHX77_1[104] = SHX78_1
SHX78_1 = "NUMPAD9"
SHX77_1[105] = SHX78_1
SHX78_1 = "MULTIPLY"
SHX77_1[106] = SHX78_1
SHX78_1 = "ADD"
SHX77_1[107] = SHX78_1
SHX78_1 = "SEPARATOR"
SHX77_1[108] = SHX78_1
SHX78_1 = "SUBTRACT"
SHX77_1[109] = SHX78_1
SHX78_1 = "DECIMAL"
SHX77_1[110] = SHX78_1
SHX78_1 = "DIVIDE"
SHX77_1[111] = SHX78_1
SHX78_1 = "F1"
SHX77_1[112] = SHX78_1
SHX78_1 = "F2"
SHX77_1[113] = SHX78_1
SHX78_1 = "F3"
SHX77_1[114] = SHX78_1
SHX78_1 = "F4"
SHX77_1[115] = SHX78_1
SHX78_1 = "F5"
SHX77_1[116] = SHX78_1
SHX78_1 = "F6"
SHX77_1[117] = SHX78_1
SHX78_1 = "F7"
SHX77_1[118] = SHX78_1
SHX78_1 = "F8"
SHX77_1[119] = SHX78_1
SHX78_1 = "F9"
SHX77_1[120] = SHX78_1
SHX78_1 = "F10"
SHX77_1[121] = SHX78_1
SHX78_1 = "F11"
SHX77_1[122] = SHX78_1
SHX78_1 = "F12"
SHX77_1[123] = SHX78_1
SHX78_1 = "F13"
SHX77_1[124] = SHX78_1
SHX78_1 = "F14"
SHX77_1[125] = SHX78_1
SHX78_1 = "F15"
SHX77_1[126] = SHX78_1
SHX78_1 = "F16"
SHX77_1[127] = SHX78_1
SHX78_1 = "F17"
SHX77_1[128] = SHX78_1
SHX78_1 = "F18"
SHX77_1[129] = SHX78_1
SHX78_1 = "F19"
SHX77_1[130] = SHX78_1
SHX78_1 = "F20"
SHX77_1[131] = SHX78_1
SHX78_1 = "F21"
SHX77_1[132] = SHX78_1
SHX78_1 = "F22"
SHX77_1[133] = SHX78_1
SHX78_1 = "F23"
SHX77_1[134] = SHX78_1
SHX78_1 = "F24"
SHX77_1[135] = SHX78_1
SHX78_1 = "NUMLOCK"
SHX77_1[144] = SHX78_1
SHX78_1 = "SCROLL"
SHX77_1[145] = SHX78_1
SHX78_1 = "LSHIFT"
SHX77_1[160] = SHX78_1
SHX78_1 = "RSHIFT"
SHX77_1[161] = SHX78_1
SHX78_1 = "LCONTROL"
SHX77_1[162] = SHX78_1
SHX78_1 = "RCONTROL"
SHX77_1[163] = SHX78_1
SHX78_1 = "LMENU"
SHX77_1[164] = SHX78_1
SHX78_1 = "RMENU"
SHX77_1[165] = SHX78_1
SHX78_1 = "BROWSER_BACK"
SHX77_1[166] = SHX78_1
SHX78_1 = "BROWSER_FORWARD"
SHX77_1[167] = SHX78_1
SHX78_1 = "BROWSER_REFRESH"
SHX77_1[168] = SHX78_1
SHX78_1 = "BROWSER_STOP"
SHX77_1[169] = SHX78_1
SHX78_1 = "BROWSER_SEARCH"
SHX77_1[170] = SHX78_1
SHX78_1 = "BROWSER_FAVORITES"
SHX77_1[171] = SHX78_1
SHX78_1 = "BROWSER_HOME"
SHX77_1[172] = SHX78_1
SHX78_1 = "VOLUME_MUTE"
SHX77_1[173] = SHX78_1
SHX78_1 = "VOLUME_DOWN"
SHX77_1[174] = SHX78_1
SHX78_1 = "VOLUME_UP"
SHX77_1[175] = SHX78_1
SHX78_1 = "MEDIA_NEXT_TRACK"
SHX77_1[176] = SHX78_1
SHX78_1 = "MEDIA_PREV_TRACK"
SHX77_1[177] = SHX78_1
SHX78_1 = "MEDIA_STOP"
SHX77_1[178] = SHX78_1
SHX78_1 = "MEDIA_PLAY_PAUSE"
SHX77_1[179] = SHX78_1
SHX78_1 = "LAUNCH_MAIL"
SHX77_1[180] = SHX78_1
SHX78_1 = "LAUNCH_MEDIA_SELECT"
SHX77_1[181] = SHX78_1
SHX78_1 = "LAUNCH_APP1"
SHX77_1[182] = SHX78_1
SHX78_1 = "LAUNCH_APP2"
SHX77_1[183] = SHX78_1
SHX78_1 = "OEM_1"
SHX77_1[186] = SHX78_1
SHX78_1 = "OEM_PLUS"
SHX77_1[187] = SHX78_1
SHX78_1 = "OEM_COMMA"
SHX77_1[188] = SHX78_1
SHX78_1 = "OEM_MINUS"
SHX77_1[189] = SHX78_1
SHX78_1 = "OEM_PERIOD"
SHX77_1[190] = SHX78_1
SHX78_1 = "OEM_2"
SHX77_1[191] = SHX78_1
SHX78_1 = "OEM_3"
SHX77_1[192] = SHX78_1
SHX78_1 = "OEM_4"
SHX77_1[219] = SHX78_1
SHX78_1 = "OEM_5"
SHX77_1[220] = SHX78_1
SHX78_1 = "OEM_6"
SHX77_1[221] = SHX78_1
SHX78_1 = "OEM_7"
SHX77_1[222] = SHX78_1
SHX78_1 = "OEM_8"
SHX77_1[223] = SHX78_1
SHX78_1 = "OEM_102"
SHX77_1[226] = SHX78_1
SHX78_1 = "PROCESSKEY"
SHX77_1[229] = SHX78_1
SHX78_1 = "PACKET"
SHX77_1[231] = SHX78_1
SHX78_1 = "ATTN"
SHX77_1[246] = SHX78_1
SHX78_1 = "CRSEL"
SHX77_1[247] = SHX78_1
SHX78_1 = "EXSEL"
SHX77_1[248] = SHX78_1
SHX78_1 = "EREOF"
SHX77_1[249] = SHX78_1
SHX78_1 = "PLAY"
SHX77_1[250] = SHX78_1
SHX78_1 = "ZOOM"
SHX77_1[251] = SHX78_1
SHX78_1 = "NONAME"
SHX77_1[252] = SHX78_1
SHX78_1 = "PA1"
SHX77_1[253] = SHX78_1
SHX78_1 = "OEM_CLEAR"
SHX77_1[254] = SHX78_1
SHX78_1 = {}
SHX79_1 = 0
SHX80_1 = 255
SHX81_1 = 1
for SHX82_1 = SHX79_1, SHX80_1, SHX81_1 do
  SHX83_1 = _ENV
  SHX84_1 = "table"
  SHX83_1 = SHX83_1[SHX84_1]
  SHX84_1 = "insert"
  SHX83_1 = SHX83_1[SHX84_1]
  SHX84_1 = SHX78_1
  SHX85_1 = 0
  SHX83_1(SHX84_1, SHX85_1)
end
SHX79_1 = {}
SHX80_1 = 0
SHX81_1 = false
function SHX82_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientGroup
  SHX1_2 = "keylog"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = SHX81_1
    if not SHX0_2 then
      return
    end
  end
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = 7
  SHX2_2 = 255
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = IsRawKeyDown
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = SHX78_1
      SHX5_2 = SHX5_2[SHX4_2]
      if 0 == SHX5_2 then
        SHX5_2 = SHX78_1
        SHX5_2[SHX4_2] = SHX0_2
      end
    else
      SHX5_2 = SHX78_1
      SHX5_2 = SHX5_2[SHX4_2]
      if 0 ~= SHX5_2 then
        SHX5_2 = SHX78_1
        SHX5_2 = SHX5_2[SHX4_2]
        SHX6_2 = SHX0_2 - SHX5_2
        SHX7_2 = SHX77_1
        SHX7_2 = SHX7_2[SHX4_2]
        if not SHX7_2 then
          SHX7_2 = string
          SHX7_2 = SHX7_2.format
          SHX8_2 = "VK_%s"
          SHX9_2 = SHX4_2
          SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
        end
        SHX8_2 = SHX66_1.put
        SHX9_2 = SHX7_2
        SHX10_2 = SHX5_2
        SHX11_2 = SHX6_2
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = table
        SHX8_2 = SHX8_2.insert
        SHX9_2 = SHX79_1
        SHX10_2 = {}
        SHX11_2 = SHX7_2
        SHX12_2 = SHX6_2
        SHX10_2[1] = SHX11_2
        SHX10_2[2] = SHX12_2
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = SHX78_1
        SHX8_2[SHX4_2] = 0
      end
    end
  end
  SHX1_2 = SHX81_1
  if SHX1_2 then
    SHX1_2 = SHX80_1
    SHX1_2 = SHX0_2 - SHX1_2
    SHX2_2 = 1000
    if SHX1_2 > SHX2_2 then
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "b64d75268d"
      SHX3_2 = SHX79_1
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = table
      SHX1_2 = SHX1_2.clear
      SHX2_2 = SHX79_1
      SHX1_2(SHX2_2)
      SHX80_1 = SHX0_2
    end
  end
end
SHX83_1 = _ENV
SHX84_1 = "CMG"
SHX83_1 = SHX83_1[SHX84_1]
SHX84_1 = "createThreadOnTick"
SHX83_1 = SHX83_1[SHX84_1]
SHX84_1 = SHX82_1
SHX85_1 = "AntiCheat Key Checks"
SHX83_1(SHX84_1, SHX85_1)
SHX83_1 = RegisterNetEvent
SHX84_1 = "5bb4fd310c"
function SHX85_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX81_1 = SHX0_2
  if not SHX0_2 then
    SHX1_2 = table
    SHX1_2 = SHX1_2.clear
    SHX2_2 = SHX79_1
    SHX1_2(SHX2_2)
  end
end
SHX83_1(SHX84_1, SHX85_1)
SHX83_1 = _ENV
SHX84_1 = "CMG"
SHX83_1 = SHX83_1[SHX84_1]
SHX83_1 = SHX83_1.patchFunction
SHX84_1 = "SetPlayerModel"
SHX85_1 = SetPlayerModel
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.forcePlayerInfoCacheRefresh
  SHX3_2()
  SHX3_2 = PlayerId
  SHX3_2 = SHX3_2()
  if SHX1_2 == SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.getCustomization
    SHX3_2 = SHX3_2()
    SHX0_1 = SHX3_2
  end
end
SHX83_1(SHX84_1, SHX85_1, SHX86_1)
SHX83_1 = _ENV
SHX84_1 = "CMG"
SHX83_1 = SHX83_1[SHX84_1]
SHX83_1 = SHX83_1.patchFunction
SHX84_1 = "SetPedComponentVariation"
SHX85_1 = _ENV
SHX86_1 = "SetPedComponentVariation"
SHX85_1 = SHX85_1[SHX86_1]
function SHX86_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX9_2 = SHX3_2
  SHX10_2 = SHX4_2
  SHX11_2 = SHX5_2
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = PlayerPedId
  SHX6_2 = SHX6_2()
  if SHX1_2 == SHX6_2 then
    SHX6_2 = SHX0_1
    if SHX6_2 then
      SHX6_2 = SHX0_1.components
      SHX7_2 = {}
      SHX8_2 = GetPedDrawableVariationCollectionName
      SHX9_2 = SHX1_2
      SHX10_2 = SHX2_2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX7_2.collectionName = SHX8_2
      SHX8_2 = _ENV
      SHX9_2 = "GetPedDrawableVariationCollectionLocalIndex"
      SHX8_2 = SHX8_2[SHX9_2]
      SHX9_2 = SHX1_2
      SHX10_2 = SHX2_2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX7_2.collectionIndex = SHX8_2
      SHX6_2[SHX2_2] = SHX7_2
    end
  end
end
SHX83_1(SHX84_1, SHX85_1, SHX86_1)
SHX83_1 = _ENV
SHX84_1 = "CMG"
SHX83_1 = SHX83_1[SHX84_1]
SHX83_1 = SHX83_1.patchFunction
SHX84_1 = "SetPedCollectionComponentVariation"
SHX85_1 = _ENV
SHX86_1 = "SetPedCollectionComponentVariation"
SHX85_1 = SHX85_1[SHX86_1]
function SHX86_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX7_2 = PlayerPedId
  SHX7_2 = SHX7_2()
  if SHX1_2 == SHX7_2 then
    SHX7_2 = SHX0_1
    if SHX7_2 then
      SHX7_2 = SHX0_1.components
      SHX8_2 = {}
      SHX8_2.collectionName = SHX3_2
      SHX8_2.collectionIndex = SHX4_2
      SHX7_2[SHX2_2] = SHX8_2
    end
  end
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2
  SHX10_2 = SHX3_2
  SHX11_2 = SHX4_2
  SHX12_2 = SHX5_2
  SHX13_2 = SHX6_2
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
SHX83_1(SHX84_1, SHX85_1, SHX86_1)
SHX83_1 = false
SHX84_1 = RegisterNetEvent
SHX85_1 = "080ad343ae"
function SHX86_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX83_1 = SHX0_2
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hideAllDisplays
    SHX2_2 = "anticheat_echo"
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.showWarningMessageAdvanced
    SHX2_2 = "Suspected of Cheating"
    SHX3_2 = [[
You have been suspected of cheating and have been placed in the shadow lobby
You must not disconnect from the server
Please check discord DMs for more information on how to proceed]]
    SHX4_2 = 1
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = IsDisabledControlJustPressed
      SHX1_3 = 2
      SHX2_3 = 215
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.showAllDisplays
        SHX1_3 = "anticheat_echo"
        SHX0_3(SHX1_3)
        SHX0_3 = true
        return SHX0_3
      end
      SHX0_3 = false
      return SHX0_3
    end
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  end
end
SHX84_1(SHX85_1, SHX86_1)
SHX84_1 = CreateThread
function SHX85_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = SHX83_1
    if SHX0_2 then
      SHX0_2 = DisablePlayerFiring
      SHX1_2 = PlayerId
      SHX1_2 = SHX1_2()
      SHX2_2 = true
      SHX0_2(SHX1_2, SHX2_2)
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX84_1(SHX85_1)
