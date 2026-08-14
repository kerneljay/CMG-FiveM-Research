local casinoInteriorActive = false
local casinoCenter = vector3(967.20806884766, 36.561210632324, 80.994140625)

local casinoHiddenModels = {
  { position = vector3(948.56213378906, 64.546142578125, 81.000633239746), model = 112404821, radius = 5.0 },
  { position = vector3(994.34631347656, 60.418537139893, 81.00057220459), model = -1728077103, radius = 10.0 },
  { position = vector3(994.34631347656, 60.418537139893, 81.00057220459), model = 618005505, radius = 10.0 },
  { position = vector3(987.63366699219, 75.79020690918, 81.000640869141), model = 618005505, radius = 10.0 },
  { position = vector3(937.54364, 35.660938, 79.985603), model = 618005505, radius = 2.5 }
}

local function restoreCasinoModels()
  if not casinoInteriorActive then
    return
  end

  tCMG.setCanAnim(true)
  casinoInteriorActive = false

  for _, hiddenModel in ipairs(casinoHiddenModels) do
    RemoveModelHide(
      hiddenModel.position.x,
      hiddenModel.position.y,
      hiddenModel.position.z,
      hiddenModel.radius,
      hiddenModel.model,
      false
    )
  end
end

local function hideCasinoModels()
  if casinoInteriorActive then
    return
  end

  TriggerEvent("4d7b29b4ae")
  tCMG.setCanAnim(false)

  for _, hiddenModel in ipairs(casinoHiddenModels) do
    CreateModelHide(
      hiddenModel.position.x,
      hiddenModel.position.y,
      hiddenModel.position.z,
      hiddenModel.radius,
      hiddenModel.model,
      false
    )
  end

  casinoInteriorActive = true
end

local function refreshCasinoInteriorState()
  local playerPed = PlayerPedId()

  if GetRoomKeyFromEntity(playerPed) == 0 then
    restoreCasinoModels()
  else
    hideCasinoModels()
  end
end

AddEventHandler("CMG:onClientSpawn", function(_, hasSpawned)
  if not hasSpawned then
    return
  end

  CMG.createArea(
    "diamondcasino",
    casinoCenter,
    100.0,
    20,
    function()
      -- The original enter callback did not need to do anything.
    end,
    restoreCasinoModels,
    refreshCasinoInteriorState,
    {}
  )
end)

function CMG.isInsideDiamondCasino()
  return casinoInteriorActive
end

RegisterNetEvent("073b36674c", function()
  SendNUIMessage({
    transactionType = "playCasinoWin"
  })
end)

RegisterNetEvent("bf8af3c254", function()
  SendNUIMessage({
    transactionType = "playCasinoLose"
  })
end)

RMenu.Add(
  "cmg_threecardpoker",
  "instructions",
  RageUI.CreateMenu("", "", 0, CMG.getRageUIMenuHeight(), "casinoui_cards_three", "casinoui_cards_three")
)

local threeCardPokerMenu = RMenu:Get("cmg_threecardpoker", "instructions")
threeCardPokerMenu:SetSubtitle("~b~Three Card Poker Results")

local threeCardPokerResult = "..."

RageUI.CreateWhile(1.0, threeCardPokerMenu, nil, function()
  RageUI.IsVisible(threeCardPokerMenu, true, true, true, function()
    RageUI.FakeButtonWithStyle(
      "",
      threeCardPokerResult,
      { RightLabel = "→→→" },
      true,
      function()
        -- Display only.
      end,
      threeCardPokerMenu
    )
  end)
end)

RegisterNetEvent("66d19507ca", function(resultText)
  threeCardPokerResult = resultText
  RageUI.Visible(threeCardPokerMenu, true)

  SetTimeout(6000, function()
    RageUI.Visible(threeCardPokerMenu, false)
    threeCardPokerResult = "Pending"
  end)
end)

local casinoManagementPosition = vector3(965.10760498047, 22.450706481934, 80.00611114502)

RMenu.Add(
  "cmg_managecasino",
  "cmg_managecasino",
  RageUI.CreateMenu("", "", 0, CMG.getRageUIMenuHeight(), "shopui_title_casino", "shopui_title_casino")
)

local casinoManagementMenu = RMenu:Get("cmg_managecasino", "cmg_managecasino")
casinoManagementMenu:SetSubtitle("~b~Casino Management")

local function isCasinoManagementUser()
  local userId = CMG.getClientUserId()
  return userId == 1 or userId == 71
end

RageUI.CreateWhile(1.0, casinoManagementMenu, nil, function()
  RageUI.IsVisible(casinoManagementMenu, true, true, true, function()
    RageUI.Separator("Current Podium Car: " .. CMG.getPodiumVehicle())

    RageUI.ButtonWithStyle("Set new podium car", "", {}, true, function(_, _, selected)
      if selected then
        TriggerServerEvent("e0f84c33a1")
      end
    end)

    CMG.drawPaycheckButtonForCasinoOwner()
  end)
end)

local function openCasinoManagementMenu()
  if isCasinoManagementUser() then
    RageUI.Visible(casinoManagementMenu, true)
  end
end

local function closeCasinoManagementMenu()
  if isCasinoManagementUser() then
    RageUI.Visible(casinoManagementMenu, false)
  end
end

Citizen.CreateThread(function()
  tCMG.addMarker(
    casinoManagementPosition.x,
    casinoManagementPosition.y,
    casinoManagementPosition.z,
    1.0,
    1.0,
    1.0,
    0,
    255,
    50,
    170,
    50,
    27
  )

  CMG.createArea(
    "cmg_managecasino",
    casinoManagementPosition,
    1.5,
    5.0,
    openCasinoManagementMenu,
    closeCasinoManagementMenu,
    nil,
    nil
  )

  CMG.createNoVehicleZone(vector3(967.20806884766, 36.561210632324, 80.994140625), 80.0, true)
  CMG.createNoVehicleOverrideZone(vector3(940.56695556641, 8.0352802276611, 78.794975280762), 20.0)
end)
