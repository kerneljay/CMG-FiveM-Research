-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1
SHX0_1 = 7.0
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = {}
SHX5_1 = 18
SHX6_1 = false
SHX7_1 = 30.0
SHX8_1 = {}
SHX9_1 = {}
SHX10_1 = {}
SHX11_1 = {}
SHX12_1 = false
SHX13_1 = nil
SHX14_1 = 30.0
SHX15_1 = {}
SHX15_1.metpd = 9
SHX15_1.nhs = 18
SHX15_1.lfb = 6
SHX15_1.borderforce = 2
SHX15_1.hmp = 11
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = "metpd"
    return SHX0_2
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "nhs.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = "nhs"
      return SHX0_2
    else
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasClientPermission
      SHX1_2 = "lfb.onduty.permission"
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        SHX0_2 = "lfb"
        return SHX0_2
      else
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasClientPermission
        SHX1_2 = "prisonguard.onduty.permission"
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 then
          SHX0_2 = "hmp"
          return SHX0_2
        else
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.hasClientPermission
          SHX1_2 = "borderforce.onduty.permission"
          SHX0_2 = SHX0_2(SHX1_2)
          if SHX0_2 then
            SHX0_2 = "borderforce"
            return SHX0_2
          end
        end
      end
    end
  end
  SHX0_2 = nil
  return SHX0_2
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX13_1
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.clientGetUserIdFromSource
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getJobType
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX13_1
  SHX2_2 = SHX2_2 == SHX3_2
  return SHX2_2
end
SHX18_1 = CMG
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX8_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX2_2 = GetPlayerServerId
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX1_2 = SHX2_2
    if SHX1_2 > 0 then
      SHX2_2 = SHX8_1
      SHX2_2[SHX0_2] = SHX1_2
    end
  end
  return SHX1_2
end
SHX18_1.getPlayerServerId = SHX19_1
SHX18_1 = RegisterNetEvent
SHX19_1 = "onPlayerDropped"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX8_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX6_2 == SHX0_2 then
      SHX7_2 = SHX8_1
      SHX7_2[SHX5_2] = nil
    end
  end
end
SHX18_1(SHX19_1, SHX20_1)
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.doesPlayerHaveRadioItem
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.clientGetUserIdFromSource
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getJobType
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      SHX2_2 = "" == SHX2_2
      return SHX2_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isStaffedOnClient
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isInSpectate
    SHX0_2 = SHX0_2()
  end
  return SHX0_2
end
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = Player
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = SHX1_2.state
  SHX1_2 = SHX1_2.newPlayerProtection
  SHX1_2 = true == SHX1_2
  return SHX1_2
end
function SHX21_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = SHX11_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    SHX3_2 = 30.0
    if SHX3_2 then
      goto SHX_LABEL_9
    end
  end
  SHX3_2 = SHX0_1
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  if SHX1_2 < SHX3_2 then
    if SHX2_2 then
      SHX4_2 = SHX6_1
      if SHX4_2 then
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.isPlayerInSelectedGang
        SHX5_2 = SHX0_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          SHX4_2 = SHX18_1
          SHX5_2 = SHX0_2
          SHX4_2 = SHX4_2(SHX5_2)
          if SHX4_2 then
            goto SHX_LABEL_39
          end
        end
      end
      SHX4_2 = SHX12_1
      if SHX4_2 then
        SHX4_2 = SHX17_1
        SHX5_2 = SHX0_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          goto SHX_LABEL_39
        end
      end
      SHX4_2 = SHX19_1
      SHX4_2 = SHX4_2()
      if SHX4_2 then
        -- [FIX IF ERROR] Move ::SHX_LABEL_39:: outside nested blocks until all 'goto SHX_LABEL_39' can see it
        ::SHX_LABEL_39::
        SHX4_2 = true
        return SHX4_2
      else
        SHX4_2 = HasEntityClearLosToEntity
        SHX5_2 = PlayerPedId
        SHX5_2 = SHX5_2()
        SHX6_2 = GetPlayerPed
        SHX7_2 = SHX2_2
        SHX6_2 = SHX6_2(SHX7_2)
        SHX7_2 = 17
        return SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      end
    end
    SHX4_2 = true
    return SHX4_2
  else
    SHX4_2 = SHX6_1
    if SHX4_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.isPlayerInSelectedGang
      SHX5_2 = SHX0_2
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        SHX4_2 = SHX18_1
        SHX5_2 = SHX0_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          SHX4_2 = SHX7_1
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.getGangPublicNameViewDistanceFloor
          SHX5_2 = SHX5_2()
          if SHX4_2 < SHX5_2 then
            SHX4_2 = SHX5_2
          end
          if SHX1_2 < SHX4_2 then
            SHX6_2 = true
            return SHX6_2
          end
      end
    end
    else
      SHX4_2 = SHX12_1
      if SHX4_2 then
        SHX4_2 = SHX17_1
        SHX5_2 = SHX0_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          SHX4_2 = SHX14_1
          if SHX1_2 < SHX4_2 then
            SHX4_2 = true
            return SHX4_2
          end
        end
      end
    end
  end
  SHX4_2 = false
  return SHX4_2
end
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isEventPlayerTagEnabled
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isDisplayVisible
    SHX1_2 = "ids"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerPed
      SHX0_2 = SHX0_2()
      SHX1_2 = ipairs
      SHX2_2 = GetActivePlayers
      SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX2_2()
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = GetPlayerPed
        SHX8_2 = SHX6_2
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 ~= SHX0_2 then
          SHX8_2 = SHX1_1
          SHX8_2 = SHX8_2[SHX6_2]
          if SHX8_2 then
            SHX8_2 = CMG
            SHX8_2 = SHX8_2.getPlayerServerId
            SHX9_2 = SHX6_2
            SHX8_2 = SHX8_2(SHX9_2)
            if SHX8_2 then
              SHX9_2 = CMG
              SHX9_2 = SHX9_2.isPlayerTaggedForBounty
              SHX10_2 = SHX8_2
              SHX9_2 = SHX9_2(SHX10_2)
              SHX10_2 = SHX21_1
              SHX11_2 = SHX8_2
              SHX12_2 = SHX1_1
              SHX12_2 = SHX12_2[SHX6_2]
              SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
              if SHX10_2 or SHX9_2 then
                SHX10_2 = SHX3_1
                SHX10_2 = SHX10_2[SHX6_2]
                SHX11_2 = NetworkIsPlayerTalking
                SHX12_2 = SHX6_2
                SHX11_2 = SHX11_2(SHX12_2)
                if SHX11_2 then
                  SHX11_2 = SetMpGamerTagAlpha
                  SHX12_2 = SHX10_2
                  SHX13_2 = 4
                  SHX14_2 = 255
                  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                  SHX11_2 = SHX20_1
                  SHX12_2 = SHX8_2
                  SHX11_2 = SHX11_2(SHX12_2)
                  if SHX11_2 then
                    SHX11_2 = SHX9_1
                    SHX11_2 = SHX11_2[SHX8_2]
                    if not SHX11_2 then
                      SHX11_2 = SetMpGamerTagColour
                      SHX12_2 = SHX10_2
                      SHX13_2 = 0
                      SHX14_2 = SHX5_1
                      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                  end
                  else
                    SHX11_2 = SetMpGamerTagColour
                    SHX12_2 = SHX10_2
                    SHX13_2 = 0
                    SHX14_2 = 9
                    SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                  end
                  SHX11_2 = SetMpGamerTagColour
                  SHX12_2 = SHX10_2
                  SHX13_2 = 4
                  SHX14_2 = 0
                  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                  SHX11_2 = SetMpGamerTagVisibility
                  SHX12_2 = SHX10_2
                  SHX13_2 = 4
                  SHX14_2 = true
                  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                else
                  SHX11_2 = SHX9_1
                  SHX11_2 = SHX11_2[SHX8_2]
                  if SHX11_2 then
                    SHX12_2 = SetMpGamerTagColour
                    SHX13_2 = SHX10_2
                    SHX14_2 = 0
                    SHX15_2 = SHX11_2[2]
                    SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                  else
                    SHX12_2 = SHX20_1
                    SHX13_2 = SHX8_2
                    SHX12_2 = SHX12_2(SHX13_2)
                    if SHX12_2 then
                      SHX12_2 = SetMpGamerTagColour
                      SHX13_2 = SHX10_2
                      SHX14_2 = 0
                      SHX15_2 = SHX5_1
                      SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                    else
                      SHX12_2 = SHX11_1
                      SHX12_2 = SHX12_2[SHX8_2]
                      if "Enemy" == SHX12_2 then
                        SHX12_2 = SetMpGamerTagColour
                        SHX13_2 = SHX10_2
                        SHX14_2 = 0
                        SHX15_2 = 6
                        SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                      else
                        SHX12_2 = SHX11_1
                        SHX12_2 = SHX12_2[SHX8_2]
                        if "Friendly" == SHX12_2 then
                          SHX12_2 = SetMpGamerTagColour
                          SHX13_2 = SHX10_2
                          SHX14_2 = 0
                          SHX15_2 = 18
                          SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                        else
                          SHX12_2 = CMG
                          SHX12_2 = SHX12_2.isPlayerInSelectedGang
                          SHX13_2 = SHX8_2
                          SHX12_2, SHX13_2 = SHX12_2(SHX13_2)
                          SHX14_2 = SHX6_1
                          if SHX14_2 and SHX12_2 then
                            SHX14_2 = SHX18_1
                            SHX15_2 = SHX8_2
                            SHX14_2 = SHX14_2(SHX15_2)
                            if SHX14_2 then
                              SHX14_2 = SetMpGamerTagColour
                              SHX15_2 = SHX10_2
                              SHX16_2 = 0
                              SHX17_2 = SHX13_2.hud
                              SHX14_2(SHX15_2, SHX16_2, SHX17_2)
                          end
                          else
                            SHX14_2 = SHX12_1
                            if SHX14_2 then
                              SHX14_2 = SHX17_1
                              SHX15_2 = SHX8_2
                              SHX14_2 = SHX14_2(SHX15_2)
                              if SHX14_2 then
                                SHX14_2 = SetMpGamerTagColour
                                SHX15_2 = SHX10_2
                                SHX16_2 = 0
                                SHX18_2 = SHX13_1
                                SHX17_2 = SHX15_1
                                SHX17_2 = SHX17_2[SHX18_2]
                                if not SHX17_2 then
                                  SHX17_2 = 0
                                end
                                SHX14_2(SHX15_2, SHX16_2, SHX17_2)
                            end
                            else
                              SHX14_2 = SetMpGamerTagColour
                              SHX15_2 = SHX10_2
                              SHX16_2 = 0
                              SHX17_2 = 0
                              SHX14_2(SHX15_2, SHX16_2, SHX17_2)
                            end
                          end
                        end
                      end
                    end
                  end
                  SHX12_2 = SetMpGamerTagColour
                  SHX13_2 = SHX10_2
                  SHX14_2 = 4
                  SHX15_2 = 0
                  SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                  SHX12_2 = SetMpGamerTagVisibility
                  SHX13_2 = SHX10_2
                  SHX14_2 = 4
                  SHX15_2 = false
                  SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                end
                SHX11_2 = SetMpGamerTagVisibility
                SHX12_2 = SHX10_2
                SHX13_2 = 19
                SHX14_2 = SHX9_2
                SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                SHX11_2 = SetMpGamerTagColour
                SHX12_2 = SHX10_2
                SHX13_2 = 19
                SHX14_2 = 125
                SHX11_2(SHX12_2, SHX13_2, SHX14_2)
              end
            end
          end
        end
      end
    end
  end
end
SHX23_1 = CMG
SHX23_1 = SHX23_1.createThreadOnTick
SHX24_1 = SHX22_1
SHX25_1 = "Gamer Tags Customisation"
SHX23_1(SHX24_1, SHX25_1)
function SHX23_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = IsEntityVisible
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = true
    return SHX2_2
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.clientGetUserIdFromSource
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX3_2 = fullPlayerListData
    SHX3_2 = SHX3_2[SHX2_2]
    if SHX3_2 then
      goto SHX_LABEL_20
    end
  end
  SHX3_2 = true
  return SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
  SHX3_2 = fullPlayerListData
  SHX3_2 = SHX3_2[SHX2_2]
  SHX3_2 = SHX3_2[5]
  SHX3_2 = not SHX3_2
  return SHX3_2
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
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  while true do
    SHX0_2 = {}
    SHX1_1 = SHX0_2
    SHX0_2 = {}
    SHX2_1 = SHX0_2
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.inArena
    SHX0_2 = SHX0_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isEventPlayerTagEnabled
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2 = SHX1_2()
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getPlayerCoords
      SHX2_2 = SHX2_2()
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.isInSpectate
      SHX3_2 = SHX3_2()
      if SHX3_2 then
        SHX3_2 = GetFinalRenderedCamCoord
        SHX3_2 = SHX3_2()
        SHX2_2 = SHX3_2
      end
      SHX3_2 = ipairs
      SHX4_2 = GetActivePlayers
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX4_2()
      SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
        SHX9_2 = GetPlayerPed
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.getPlayerServerId
        SHX11_2 = SHX8_2
        SHX10_2 = SHX10_2(SHX11_2)
        if SHX9_2 ~= SHX1_2 then
          SHX11_2 = SHX23_1
          SHX12_2 = SHX9_2
          SHX13_2 = SHX10_2
          SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
          if SHX11_2 then
            if SHX0_2 then
              SHX11_2 = SHX10_1
              SHX11_2 = SHX11_2[SHX10_2]
              if not SHX11_2 then
                goto SHX_LABEL_71
              end
            end
            SHX11_2 = GetEntityCoords
            SHX12_2 = SHX9_2
            SHX11_2 = SHX11_2(SHX12_2)
            SHX12_2 = SHX1_1
            SHX13_2 = SHX2_2 - SHX11_2
            SHX13_2 = #SHX13_2
            SHX12_2[SHX8_2] = SHX13_2
            SHX12_2 = DecorGetBool
            SHX13_2 = SHX9_2
            SHX14_2 = "a99d39faff"
            SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
            if SHX12_2 then
              SHX12_2 = SHX2_1
              SHX12_2[SHX8_2] = true
            end
          end
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_71:: outside nested blocks until all 'goto SHX_LABEL_71' can see it
        ::SHX_LABEL_71::
      end
      SHX3_2 = SHX19_1
      SHX3_2 = SHX3_2()
      if not SHX3_2 and not SHX0_2 then
        SHX3_2 = 7.0
        SHX0_1 = SHX3_2
      end
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 1000
    SHX1_2(SHX2_2)
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
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasGangNamesEnabled
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isEmergencyService
      SHX0_2 = SHX0_2()
      SHX0_2 = not SHX0_2
    end
    SHX6_1 = SHX0_2
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.areEmergencyServiceNamesDisabled
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.inEvent
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = SHX16_1
        SHX0_2 = SHX0_2()
        SHX13_1 = SHX0_2
        SHX0_2 = SHX13_1
        SHX0_2 = nil ~= SHX0_2
        SHX12_1 = SHX0_2
    end
    else
      SHX0_2 = nil
      SHX13_1 = SHX0_2
      SHX0_2 = false
      SHX12_1 = SHX0_2
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isDisplayVisible
    SHX1_2 = "ids"
    SHX0_2 = SHX0_2(SHX1_2)
    SHX1_2 = ipairs
    SHX2_2 = GetActivePlayers
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX2_2()
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX1_1
      SHX7_2 = SHX7_2[SHX6_2]
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.getPlayerServerId
      SHX9_2 = SHX6_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX7_2 and SHX8_2 then
        SHX9_2 = SHX21_1
        SHX10_2 = SHX8_2
        SHX11_2 = SHX7_2
        SHX12_2 = SHX6_2
        SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
        if not SHX9_2 then
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.shouldShowTagForBounty
          SHX10_2 = SHX8_2
          SHX9_2 = SHX9_2(SHX10_2)
        end
        if SHX9_2 and SHX0_2 then
          SHX9_2 = nil
          SHX10_2 = SHX6_1
          if SHX10_2 then
            SHX10_2 = CMG
            SHX10_2 = SHX10_2.isPlayerInSelectedGang
            SHX11_2 = SHX8_2
            SHX10_2 = SHX10_2(SHX11_2)
            if SHX10_2 then
              SHX10_2 = SHX18_1
              SHX11_2 = SHX8_2
              SHX10_2 = SHX10_2(SHX11_2)
              if SHX10_2 then
                SHX10_2 = CMG
                SHX10_2 = SHX10_2.getPlayerName
                SHX11_2 = SHX6_2
                SHX10_2 = SHX10_2(SHX11_2)
                SHX9_2 = SHX10_2
            end
          end
          else
            SHX10_2 = SHX12_1
            if SHX10_2 then
              SHX10_2 = SHX17_1
              SHX11_2 = SHX8_2
              SHX10_2 = SHX10_2(SHX11_2)
              if SHX10_2 then
                SHX10_2 = CMG
                SHX10_2 = SHX10_2.getPlayerName
                SHX11_2 = SHX6_2
                SHX10_2 = SHX10_2(SHX11_2)
                SHX9_2 = SHX10_2
                SHX10_2 = Player
                SHX11_2 = SHX8_2
                SHX10_2 = SHX10_2(SHX11_2)
                SHX10_2 = SHX10_2.state
                SHX10_2 = SHX10_2.onDutyCallsign
                if SHX10_2 and "" ~= SHX10_2 then
                  SHX11_2 = "["
                  SHX12_2 = SHX10_2
                  SHX13_2 = "] "
                  SHX14_2 = SHX9_2
                  SHX11_2 = SHX11_2 .. SHX12_2 .. SHX13_2 .. SHX14_2
                  SHX9_2 = SHX11_2
                end
            end
            else
              SHX10_2 = tostring
              SHX11_2 = CMG
              SHX11_2 = SHX11_2.getPlayerServerId
              SHX12_2 = SHX6_2
              SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX11_2(SHX12_2)
              SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
              SHX9_2 = SHX10_2
              SHX10_2 = SHX2_1
              SHX10_2 = SHX10_2[SHX6_2]
              if SHX10_2 then
                SHX10_2 = SHX9_2
                SHX11_2 = " [Cinematic Mode]"
                SHX10_2 = SHX10_2 .. SHX11_2
                SHX9_2 = SHX10_2
              end
            end
          end
          SHX10_2 = SHX11_1
          SHX10_2 = SHX10_2[SHX8_2]
          if "Enemy" == SHX10_2 then
            SHX10_2 = "[Enemy Gang Member] "
            SHX11_2 = SHX9_2
            SHX10_2 = SHX10_2 .. SHX11_2
            SHX9_2 = SHX10_2
          else
            SHX10_2 = SHX11_1
            SHX10_2 = SHX10_2[SHX8_2]
            if "Neutral" == SHX10_2 then
              SHX10_2 = "[Neutral Gang Member] "
              SHX11_2 = SHX9_2
              SHX10_2 = SHX10_2 .. SHX11_2
              SHX9_2 = SHX10_2
            else
              SHX10_2 = SHX11_1
              SHX10_2 = SHX10_2[SHX8_2]
              if "Friendly" == SHX10_2 then
                SHX10_2 = "[Friendly Gang Member] "
                SHX11_2 = SHX9_2
                SHX10_2 = SHX10_2 .. SHX11_2
                SHX9_2 = SHX10_2
              end
            end
          end
          SHX10_2 = SHX9_1
          SHX10_2 = SHX10_2[SHX8_2]
          if SHX10_2 then
            SHX11_2 = "["
            SHX12_2 = SHX10_2[1]
            SHX13_2 = "] "
            SHX14_2 = CMG
            SHX14_2 = SHX14_2.getPlayerName
            SHX15_2 = SHX6_2
            SHX14_2 = SHX14_2(SHX15_2)
            SHX11_2 = SHX11_2 .. SHX12_2 .. SHX13_2 .. SHX14_2
            SHX9_2 = SHX11_2
          else
            SHX11_2 = SHX20_1
            SHX12_2 = SHX8_2
            SHX11_2 = SHX11_2(SHX12_2)
            if SHX11_2 then
              SHX11_2 = "[New Player] "
              SHX12_2 = SHX9_2
              SHX11_2 = SHX11_2 .. SHX12_2
              SHX9_2 = SHX11_2
            end
          end
          SHX11_2 = SHX10_1
          SHX11_2 = SHX11_2[SHX8_2]
          if SHX11_2 then
            SHX9_2 = SHX11_2
          end
          SHX12_2 = SHX4_1
          SHX12_2 = SHX12_2[SHX6_2]
          if SHX12_2 ~= SHX9_2 then
            SHX12_2 = SHX3_1
            SHX12_2 = SHX12_2[SHX6_2]
            if SHX12_2 then
              SHX12_2 = RemoveMpGamerTag
              SHX13_2 = SHX3_1
              SHX13_2 = SHX13_2[SHX6_2]
              SHX12_2(SHX13_2)
            end
          end
          SHX12_2 = SHX3_1
          SHX13_2 = CreateFakeMpGamerTag
          SHX14_2 = GetPlayerPed
          SHX15_2 = SHX6_2
          SHX14_2 = SHX14_2(SHX15_2)
          SHX15_2 = SHX9_2
          SHX16_2 = false
          SHX17_2 = false
          SHX18_2 = ""
          SHX19_2 = 0
          SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
          SHX12_2[SHX6_2] = SHX13_2
          SHX12_2 = SetMpGamerTagVisibility
          SHX13_2 = SHX3_1
          SHX13_2 = SHX13_2[SHX6_2]
          SHX14_2 = 3
          SHX15_2 = true
          SHX12_2(SHX13_2, SHX14_2, SHX15_2)
          SHX12_2 = SHX4_1
          SHX12_2[SHX6_2] = SHX9_2
      end
      else
        SHX9_2 = SHX3_1
        SHX9_2 = SHX9_2[SHX6_2]
        if SHX9_2 then
          SHX9_2 = RemoveMpGamerTag
          SHX10_2 = SHX3_1
          SHX10_2 = SHX10_2[SHX6_2]
          SHX9_2(SHX10_2)
          SHX9_2 = SHX3_1
          SHX9_2[SHX6_2] = nil
          SHX9_2 = SHX4_1
          SHX9_2[SHX6_2] = nil
        end
      end
      SHX9_2 = Wait
      SHX10_2 = 0
      SHX9_2(SHX10_2)
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX24_1(SHX25_1)
SHX24_1 = SetMpGamerTagsUseVehicleBehavior
SHX25_1 = false
SHX24_1(SHX25_1)
SHX24_1 = SetMpGamerTagsVisibleDistance
SHX25_1 = 500.0
SHX24_1(SHX25_1)
SHX24_1 = CMG
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if -1 == SHX0_2 then
    SHX1_2 = SetMpGamerTagsVisibleDistance
    SHX2_2 = 500.0
    SHX1_2(SHX2_2)
    SHX1_2 = 7.0
    SHX0_1 = SHX1_2
  else
    SHX1_2 = SetMpGamerTagsVisibleDistance
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    SHX0_1 = SHX0_2
  end
end
SHX24_1.setPlayerNameDistance = SHX25_1
SHX24_1 = CMG
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  return SHX0_2
end
SHX24_1.getPlayerNameDistance = SHX25_1
SHX24_1 = CMG
function SHX25_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX10_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX24_1.setGameTagNameOverride = SHX25_1
SHX24_1 = CMG
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.clear
  SHX1_2 = SHX10_1
  SHX0_2(SHX1_2)
end
SHX24_1.clearAllGameTagNameOverrides = SHX25_1
SHX24_1 = RegisterCommand
SHX25_1 = "farids"
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hasClientPermission
  SHX3_2 = "admin.farids"
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isStaffedOnClient
    SHX2_2 = SHX2_2()
    if SHX2_2 then
      SHX2_2 = SHX1_2[1]
      if nil ~= SHX2_2 then
        SHX3_2 = tonumber
        SHX4_2 = SHX2_2
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 then
          SHX3_2 = tonumber
          SHX4_2 = SHX2_2
          SHX3_2 = SHX3_2(SHX4_2)
          SHX3_2 = SHX3_2 + 0.1
          SHX0_1 = SHX3_2
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.setPlayerNameDistance
          SHX4_2 = SHX0_1
          SHX3_2(SHX4_2)
      end
      else
        SHX3_2 = tCMG
        SHX3_2 = SHX3_2.notify
        SHX4_2 = "~r~Please enter a valid range! (/farids [range])"
        SHX3_2(SHX4_2)
      end
    end
  end
end
SHX27_1 = false
SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX24_1 = RegisterCommand
SHX25_1 = "faridsreset"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "admin.farids"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setPlayerNameDistance
    SHX1_2 = -1
    SHX0_2(SHX1_2)
  end
end
SHX27_1 = false
SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX24_1 = RegisterCommand
SHX25_1 = "hideids"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hideDisplay
  SHX1_2 = "ids"
  SHX2_2 = "user"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX27_1 = false
SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX24_1 = RegisterCommand
SHX25_1 = "showids"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showDisplay
  SHX1_2 = "ids"
  SHX2_2 = "user"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX27_1 = false
SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX24_1 = AddEventHandler
SHX25_1 = "1dcc710970"
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX7_1 = SHX0_2
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = AddStateBagChangeHandler
SHX25_1 = "staffRank"
SHX26_1 = nil
function SHX27_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = tonumber
  SHX4_2 = stringsplit
  SHX5_2 = SHX0_2
  SHX6_2 = ":"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2[2]
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX4_2 = SHX9_1
    SHX4_2[SHX3_2] = SHX2_2
  end
end
SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX24_1 = RegisterNetEvent
SHX25_1 = "onPlayerDropped"
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX9_1
  SHX1_2[SHX0_2] = nil
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = CMG
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX9_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = true
    if SHX1_2 then
      goto SHX_LABEL_9
    end
  end
  SHX1_2 = false
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  return SHX1_2
end
SHX24_1.isStaffRankShowingForPlayer = SHX25_1
SHX24_1 = CMG
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.clear
  SHX1_2 = SHX11_1
  SHX0_2(SHX1_2)
end
SHX24_1.clearEnemyGamerTags = SHX25_1
SHX24_1 = CMG
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX11_1
  SHX1_2[SHX0_2] = "Enemy"
end
SHX24_1.setPlayerGameTagAsEnemy = SHX25_1
SHX24_1 = CMG
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX11_1
  SHX1_2[SHX0_2] = "Neutral"
end
SHX24_1.setPlayerGameTagAsNeutral = SHX25_1
SHX24_1 = CMG
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX11_1
  SHX1_2[SHX0_2] = "Friendly"
end
SHX24_1.setPlayerGameTagAsFriendly = SHX25_1
