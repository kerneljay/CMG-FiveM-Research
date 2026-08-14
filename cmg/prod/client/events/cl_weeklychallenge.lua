local weeklyChallengeConfig = CMG.loadModule("cfg/cfg_weeklychallenge")

local weeklyTaskOptions = {}
local dailyTaskOptions = {}
local taskProgressCalculators = {}

local currentChallengeData = nil
local resetTimerStartedAt = 0
local resetTimerLengthSeconds = 0

local function registerTaskProgressCalculator(taskId, calculator)
  taskProgressCalculators[taskId] = calculator
end

RegisterNetEvent("3e20320f87", function(newWeeklyTaskOptions, newDailyTaskOptions, secondsUntilReset)
  weeklyTaskOptions = newWeeklyTaskOptions
  dailyTaskOptions = newDailyTaskOptions
  resetTimerStartedAt = GetGameTimer()
  resetTimerLengthSeconds = secondsUntilReset
end)

function CMG.getSecondsUntilChallengesReset()
  local secondsPassed = math.floor((GetGameTimer() - resetTimerStartedAt) / 1000)
  return math.max(resetTimerLengthSeconds - secondsPassed, 0)
end

local function addChallengeTasksToPauseMenu(challengeData, uiTasks, selectedTaskOptions, rewardAmount)
  for taskId, taskOptions in pairs(selectedTaskOptions) do
    local taskConfig = weeklyChallengeConfig.tasks[taskId]
    local calculateProgress = taskProgressCalculators[taskId]

    if taskConfig and calculateProgress then
      local completedAmount, requiredAmount = calculateProgress(challengeData.tasks[taskId], taskOptions)

      table.insert(uiTasks, {
        title = string.format(taskConfig.title, table.unpack(taskOptions)),
        numCompleted = completedAmount,
        numRequired = requiredAmount,
        rewardAmount = getMoneyStringFormatted(rewardAmount),
        canClaim = challengeData.completed[taskId] or false,
        isClaimed = challengeData.claimed[taskId] or false,
        taskId = taskId
      })
    end
  end
end

local function sendWeeklyChallengesToPauseMenu()
  if not currentChallengeData then
    return
  end

  local pauseMenuPayload = {
    weeklyTasks = {},
    dailyTasks = {}
  }

  addChallengeTasksToPauseMenu(
    currentChallengeData.weekly,
    pauseMenuPayload.weeklyTasks,
    weeklyTaskOptions,
    weeklyChallengeConfig.rewardForEachTask
  )

  addChallengeTasksToPauseMenu(
    currentChallengeData.daily,
    pauseMenuPayload.dailyTasks,
    dailyTaskOptions,
    weeklyChallengeConfig.rewardForEachDailyTask
  )

  CMG.uiSendMessage({
    type = "PAUSE_MENU_SET_WEEKLY_CHALLENGES",
    info = pauseMenuPayload
  })
end

RegisterNetEvent("d957aef202", function(newChallengeData)
  currentChallengeData = newChallengeData

  if CMG.isPauseMenuOpen() then
    sendWeeklyChallengesToPauseMenu()
  end
end)

AddEventHandler("7ad2e2f656", function()
  sendWeeklyChallengesToPauseMenu()
end)

CMG.uiRegisterCallback("claimWeeklyRewards", function(data)
  if data.isDaily then
    TriggerServerEvent("bcd86a8e73", data.taskId)
  else
    TriggerServerEvent("17a84553d6", data.taskId)
  end
end)

local function countTableEntries(progress)
  if progress then
    return table.count(progress) or 0
  end

  return 0
end

local function getProgressCount(progress)
  if progress and progress.count then
    return progress.count
  end

  return 0
end

local function getProgressAmount(progress)
  if progress and progress.amount then
    return progress.amount
  end

  return 0
end

local function getProgressDistance(progress)
  if progress and progress.distance then
    return progress.distance
  end

  return 0
end

local function firstRequiredAmount(taskOptions)
  return taskOptions[1]
end

registerTaskProgressCalculator("drive_distance", function(progress, taskOptions)
  return getProgressDistance(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("kill_people", function(progress, taskOptions)
  return countTableEntries(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("lockpick_vehicle", function(progress, taskOptions)
  return countTableEntries(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("capture_turfs", function(progress, taskOptions)
  return getProgressCount(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("rob_store", function(progress, taskOptions)
  return getProgressCount(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("redzone_kills", function(progress, taskOptions)
  return countTableEntries(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("cpr_revives", function(progress, taskOptions)
  return countTableEntries(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("loot_airdrop", function(progress, taskOptions)
  return countTableEntries(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("break_handcuffs", function(progress, taskOptions)
  return getProgressCount(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("take_lsd", function(progress, taskOptions)
  return getProgressCount(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("repair_vehicles", function(progress, taskOptions)
  return getProgressCount(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("loot_bags", function(progress, taskOptions)
  return countTableEntries(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("scuba_treasure", function(progress, taskOptions)
  return getProgressCount(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("wager_wins", function(progress, taskOptions)
  return getProgressCount(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("fire_kills", function(progress, taskOptions)
  return countTableEntries(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("bolt_cut", function(progress, taskOptions)
  return countTableEntries(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("shave_people", function(progress, taskOptions)
  return countTableEntries(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("dumpster_dive", function(progress, taskOptions)
  return getProgressCount(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("clean_dirty_cash", function(progress, taskOptions)
  return getProgressAmount(progress), firstRequiredAmount(taskOptions)
end)

registerTaskProgressCalculator("rob_atms", function(progress, taskOptions)
  return getProgressCount(progress), firstRequiredAmount(taskOptions)
end)
