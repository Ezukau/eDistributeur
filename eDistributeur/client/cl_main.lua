ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
    end
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()

    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

Citizen.CreateThread(function()
    while true do
        local wait = 1000

        local object, dst = ESX.Game.GetClosestObject()
        local model = GetEntityModel(object)
        local distriCoca = {992069095}
        local coord = GetEntityCoords(object)

        for _,v in pairs(distriCoca) do
            if model == v then
                if dst <= 2 then
                    wait = 0
                    DrawMarker(0, coord.x, coord.y, coord.z + 1.5, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.2, 0.2, 0.2, 255, 20, 20, 180, false, true, p19, false)
                end
                if dst <= 1 then
                    wait = 0
                    ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour payer "..Config.Coca.Prix.."$ : (~r~"..Config.Coca.itemLabel.."~s~)")
                    if IsControlJustPressed(1, 51) then

                        TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_ATM", 0, false)
                        SetEntityHeading(PlayerPedId(), GetEntityHeading(object))
                        FreezeEntityPosition(PlayerPedId(), true)
                        Citizen.Wait(Config.Cooldown * 1000)
                        TriggerServerEvent("eDistributeur:Achat", Config.Coca.Prix, Config.Coca.itemName)
                        FreezeEntityPosition(PlayerPedId(), false)
                        ClearPedTasksImmediately(PlayerPedId())

                    end
                end
            end
        end
        Citizen.Wait(wait)
    end
end)

Citizen.CreateThread(function()
    while true do
        local wait = 1000

        local object, dst = ESX.Game.GetClosestObject()
        local model = GetEntityModel(object)
        local distriSprunk = {1114264700}
        local coord = GetEntityCoords(object)

        for _,v in pairs(distriSprunk) do
            if model == v then
                if dst <= 2 then
                    wait = 0
                    DrawMarker(0, coord.x, coord.y, coord.z + 1.5, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.2, 0.2, 0.2, 93, 242, 93, 180, false, true, p19, false)
                end
                if dst <= 1 then
                    wait = 0
                    ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour payer "..Config.Sprunk.Prix.."$ : (~g~"..Config.Sprunk.itemLabel.."~s~)")
                    if IsControlJustPressed(1, 51) then

                        TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_ATM", 0, false)
                        SetEntityHeading(PlayerPedId(), GetEntityHeading(object))
                        FreezeEntityPosition(PlayerPedId(), true)
                        Citizen.Wait(Config.Cooldown * 1000)
                        TriggerServerEvent("eDistributeur:Achat", Config.Sprunk.Prix, Config.Sprunk.itemName)
                        FreezeEntityPosition(PlayerPedId(), false)
                        ClearPedTasksImmediately(PlayerPedId())

                    end
                end
            end
        end
        Citizen.Wait(wait)
    end
end)

Citizen.CreateThread(function()
    while true do
        local wait = 1000

        local object, dst = ESX.Game.GetClosestObject()
        local model = GetEntityModel(object)
        local distriBean = {690372739}
        local coord = GetEntityCoords(object)

        for _,v in pairs(distriBean) do
            if model == v then
                if dst <= 2 then
                    wait = 0
                    DrawMarker(0, coord.x, coord.y, coord.z + 2.3, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.2, 0.2, 0.2, 231, 183, 45, 180, false, true, p19, false)
                end
                if dst <= 1.5 then
                    wait = 0
                    ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour payer "..Config.BeanMachine.Prix.."$ : (~y~"..Config.BeanMachine.itemLabel.."~s~)")
                    if IsControlJustPressed(1, 51) then

                        TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_ATM", 0, false)
                        SetEntityHeading(PlayerPedId(), GetEntityHeading(object))
                        FreezeEntityPosition(PlayerPedId(), true)
                        Citizen.Wait(Config.Cooldown * 1000)
                        TriggerServerEvent("eDistributeur:Achat", Config.BeanMachine.Prix, Config.BeanMachine.itemName)
                        FreezeEntityPosition(PlayerPedId(), false)
                        ClearPedTasksImmediately(PlayerPedId())

                    end
                end
            end
        end
        Citizen.Wait(wait)
    end
end)

Citizen.CreateThread(function()
    while true do
        local wait = 1000

        local object, dst = ESX.Game.GetClosestObject()
        local model = GetEntityModel(object)
        local distriWater = {1099892058}
        local coord = GetEntityCoords(object)

        for _,v in pairs(distriWater) do
            if model == v then
                if dst <= 2 then
                    wait = 0
                    DrawMarker(0, coord.x, coord.y, coord.z + 2.3, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.2, 0.2, 0.2, 64, 176, 253, 180, false, true, p19, false)
                end
                if dst <= 1.5 then
                    wait = 0
                    ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour payer "..Config.Eau.Prix.."$ : (~b~"..Config.Eau.itemLabel.."~s~)")
                    if IsControlJustPressed(1, 51) then

                        TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_ATM", 0, false)
                        SetEntityHeading(PlayerPedId(), GetEntityHeading(object))
                        FreezeEntityPosition(PlayerPedId(), true)
                        Citizen.Wait(Config.Cooldown * 1000)
                        TriggerServerEvent("eDistributeur:Achat", Config.Eau.Prix, Config.Eau.itemName)
                        FreezeEntityPosition(PlayerPedId(), false)
                        ClearPedTasksImmediately(PlayerPedId())
                        
                    end
                end
            end
        end
        Citizen.Wait(wait)
    end
end)