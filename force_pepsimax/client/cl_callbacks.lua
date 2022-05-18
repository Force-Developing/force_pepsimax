RegisterNUICallback("SetNUIFocus", function(state)
    SetNuiFocus(state, state)
end)

RegisterNUICallback("GivePepsi", function()
    if not hasGottenPepsiMax then
        TriggerServerEvent("force_pepsimax:givePepsi")
        ESX.ShowNotification("Du fick en Pepsi Max.")
        hasGottenPepsiMax = true
    else
        ESX.ShowNotification("Du har redan fått en Pepsi Max.")
    end
end)