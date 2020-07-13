ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('h4ci:giveparachute')
AddEventHandler('h4ci:giveparachute', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1000
    local xMoney = xPlayer.getMoney()

    if xPlayer.hasWeapon('GADGET_PARACHUTE') then
		TriggerClientEvent('esx:showNotification', source, "Sie haben bereits einen Fallschirm.")
	else
    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('GADGET_PARACHUTE', 42)
        TriggerClientEvent('esx:showNotification', source, "~g~Fallschirm erhalten! ~r~-1000$")
    else
         TriggerClientEvent('esx:showNotification', source, "Sie haben nicht genug ~r~Geld!")
    end
    end
end)