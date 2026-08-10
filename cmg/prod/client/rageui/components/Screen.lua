--[[
    RageUI Loading Spinner Helpers
    ==============================

    LoadingPrompt(text, spinnerType)
      Shows GTA's busy/loading spinner.

    LoadingPromptHide()
      Hides it.
]]

function LoadingPrompt(text, spinnerType)
    if BusyspinnerIsOn() then
        BusyspinnerOff()
    end

    if text == nil then
        BeginTextCommandBusyspinnerOn(nil)
    else
        BeginTextCommandBusyspinnerOn("STRING")
        AddTextComponentSubstringPlayerName(text)
    end

    EndTextCommandBusyspinnerOn(spinnerType)
end

function LoadingPromptHide()
    if BusyspinnerIsOn() then
        BusyspinnerOff()
    end
end
