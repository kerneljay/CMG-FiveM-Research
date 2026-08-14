--[[
    LEVEL 1 BEGINNER GUIDE - Cayo Perico Loader

    Enables/disables the Cayo Perico island world, IPLs, audio zones, pathing,
    and minimap behavior.

    Public globals kept for compatibility:
      * TogglePerico()
      * EnableCayoPerico(updateState)
      * DisableCayoPerico(updateState)
      * CMG.isInCayoPerico()
]]

local cayoTerrainSlodIpls = {
  "xn_h4_islandx_terrain_01_slod",
  "xn_h4_islandx_terrain_02_slod",
  "xn_h4_islandx_terrain_04_slod",
  "xn_h4_islandx_terrain_05_slod",
  "xn_h4_islandx_terrain_06_slod"
}

local mainlandLodIpls = {
  "xn_ap1_lod",
  "xn_apa_ch2_lod",
  "xn_apa_ch2_lod2",
  "xn_apa_ch2_lod3",
  "xn_apa_ch2_lod4",
  "xn_apa_ss1_lod",
  "xn_bh1_lod",
  "xn_bkr_id1_lod",
  "xn_ch1_lod",
  "xn_ch2_lod",
  "xn_ch2_lod2",
  "xn_ch2_lod3",
  "xn_ch2_lod4",
  "xn_ch3_lod",
  "xn_cs1_lod",
  "xn_cs1_lod2",
  "xn_cs1_lod3",
  "xn_cs2_lod",
  "xn_cs2_lod2",
  "xn_cs3_lod",
  "xn_cs4_lod",
  "xn_cs5_lod",
  "xn_cs6_lod",
  "xn_dt1_lod",
  "xn_hei_ap1_lod",
  "xn_hei_bh1_lod",
  "xn_hei_ch1_lod",
  "xn_hei_ch2_lod",
  "xn_hei_ch2_lod2",
  "xn_hei_ch2_lod3",
  "xn_hei_ch2_lod4",
  "xn_hei_ch3_lod",
  "xn_hei_cs1_lod",
  "xn_hei_cs1_lod2",
  "xn_hei_cs1_lod3",
  "xn_hei_cs2_lod",
  "xn_hei_cs2_lod2",
  "xn_hei_cs3_lod",
  "xn_hei_cs4_lod",
  "xn_hei_cs6_lod",
  "xn_hei_dt1_lod",
  "xn_hei_hw1_lod",
  "xn_hei_id1_lod",
  "xn_hei_id2_lod",
  "xn_hei_kt1_lod",
  "xn_hei_po1_lod",
  "xn_hei_sc1_lod",
  "xn_hei_sm_lod",
  "xn_hei_ss1_lod",
  "xn_hei_vb_lod",
  "xn_hw1_lod",
  "xn_id1_lod",
  "xn_id2_lod",
  "xn_kt1_lod",
  "xn_lr_cs4_lod",
  "xn_lr_cs6_lod",
  "xn_lr_id1_lod",
  "xn_lr_sc1_lod",
  "xn_po1_lod",
  "xn_sc1_lod",
  "xn_sm_lod",
  "xn_sp1_lod",
  "xn_ss1_lod",
  "xn_vb_lod"
}

local isInCayoPerico = false
local minimapShouldShowIsland = false
local minimapCurrentlyShowingIsland = false

function CMG.isInCayoPerico()
  return isInCayoPerico
end

local function broadcastCayoState()
  TriggerEvent("IsInCayoPerico", isInCayoPerico)
  TriggerServerEvent("IsInCayoPerico", isInCayoPerico)
end

function TogglePerico()
  if isInCayoPerico then
    DisableCayoPerico(false)
  else
    EnableCayoPerico(false)
  end

  Wait(1000)
  DoScreenFadeIn(2000)

  isInCayoPerico = not isInCayoPerico
  broadcastCayoState()
end

function EnableCayoPerico(updateState)
  SetIslandHopperEnabled("HeistIsland", true)
  SetAiGlobalPathNodesType(1)
  Citizen.InvokeNative(6014969029414136234, false)
  SetScenarioGroupEnabled("Heist_Island_Peds", true)
  SetAudioFlag("PlayerOnDLCHeist4Island", true)
  SetAmbientZoneListStatePersistent("AZL_DLC_Hei4_Island_Zones", true, true)
  SetAmbientZoneListStatePersistent("AZL_DLC_Hei4_Island_Disabled_Zones", false, true)

  for _, iplName in ipairs(mainlandLodIpls) do
    RequestIpl(iplName)
  end

  for _, iplName in ipairs(cayoTerrainSlodIpls) do
    RemoveIpl(iplName)
  end

  if updateState then
    isInCayoPerico = true
    broadcastCayoState()
  end
end

function DisableCayoPerico(updateState)
  SetIslandHopperEnabled("HeistIsland", false)
  SetAiGlobalPathNodesType(0)
  Citizen.InvokeNative(6014969029414136234, true)
  SetScenarioGroupEnabled("Heist_Island_Peds", false)
  SetAudioFlag("PlayerOnDLCHeist4Island", false)
  SetAmbientZoneListStatePersistent("AZL_DLC_Hei4_Island_Zones", false, false)
  SetAmbientZoneListStatePersistent("AZL_DLC_Hei4_Island_Disabled_Zones", true, false)

  for _, iplName in ipairs(cayoTerrainSlodIpls) do
    RequestIpl(iplName)
  end

  for _, iplName in ipairs(mainlandLodIpls) do
    RemoveIpl(iplName)
  end

  if updateState then
    isInCayoPerico = false
    broadcastCayoState()
  end
end

Citizen.CreateThread(function()
  CMG.createArea(
    "cayo_island",
    vector3(5218.9399414062, -5393.2563476562, 67.318588256836),
    2142.0,
    1400.0,
    TogglePerico,
    TogglePerico,
    function()
    end
  )
end)

RegisterNetEvent("EnableCayoPerico", function()
  EnableCayoPerico(true)
end)

RegisterNetEvent("DisableCayoPerico", function()
  DisableCayoPerico(true)
end)

Citizen.CreateThread(function()
  while true do
    local playerCoords = GetEntityCoords(PlayerPedId())
    local nearCayoIsland = #(playerCoords - vector3(4858.0, -5171.0, 2.0)) < 2200.0

    if minimapShouldShowIsland ~= nearCayoIsland then
      minimapShouldShowIsland = nearCayoIsland
      minimapCurrentlyShowingIsland = nearCayoIsland
      SetToggleMinimapHeistIsland(minimapShouldShowIsland)
    end

    Wait(5000)
  end
end)

CreateThread(function()
  while true do
    local waitTime = 500

    if IsPauseMenuActive() then
      if not IsMinimapInInterior() then
        if minimapCurrentlyShowingIsland then
          minimapCurrentlyShowingIsland = false
          SetToggleMinimapHeistIsland(false)
        end

        SetRadarAsExteriorThisFrame()
        SetRadarAsInteriorThisFrame(-1062664944, 4700.0, -5145.0, 0, 0)
        waitTime = 0
      end
    elseif not minimapCurrentlyShowingIsland and minimapShouldShowIsland then
      minimapCurrentlyShowingIsland = true
      SetToggleMinimapHeistIsland(true)
    end

    Wait(waitTime)
  end
end)

Citizen.InvokeNative(3604191389194645194, false)
