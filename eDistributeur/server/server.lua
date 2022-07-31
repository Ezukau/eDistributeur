ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("eDistributeur:Achat")
AddEventHandler("eDistributeur:Achat", function(Prix, itemName)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local playerMoney = xPlayer.getMoney()

    if playerMoney >= Prix then
        xPlayer.removeMoney(Prix)
        xPlayer.addInventoryItem(itemName, 1)
    else
        TriggerClientEvent('esx:showNotification', source, '~r~Vous n\'avez pas assez d\'argent !')
    end

end)
