Citizen.CreateThread(function()
    while ESX == nil do
        Citizen.Wait(1);

        ESX = exports["btrp_base"]:getSharedObject()  
    end 

    if ESX.IsPlayerLoaded() then
        ESX.PlayerData = ESX.GetPlayerData()
    end
end)

CreateThread(function()
    RegisterCommand("pepsi", function()
        SendNUIMessage({
            action = "OpenMenu"
        })
    end)
end)