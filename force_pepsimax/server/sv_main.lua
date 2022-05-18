ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj  
end)  

RegisterNetEvent("force_pepsimax:givePepsi")
AddEventHandler("force_pepsimax:givePepsi", function()
    local player = ESX.GetPlayerFromId(source)

    player.addInventoryItem("pepsi", 1)
end)