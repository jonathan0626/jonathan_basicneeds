ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('item1', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('item1', 1)

	TriggerClientEvent('jonathan:heal', source)
	if Config.useanimation then
	TriggerClientEvent('jonathan_basicneeds:onEatpill', source)
	TriggerClientEvent('esx:showNotification', source, Config.not1)
	else
	TriggerClientEvent('esx:showNotification', source, Config.not1)
    end
end)
ESX.RegisterUsableItem('item2', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('item2', 1)

	TriggerClientEvent('jonathan:heal2', source)
	if Config.useanimation then
	TriggerClientEvent('jonathan_basicneeds:onEatpill', source)
	TriggerClientEvent('esx:showNotification', source, Config.not2)
	else
	TriggerClientEvent('esx:showNotification', source, Config.not2)
	end
end)
ESX.RegisterUsableItem('item3', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('item3', 1)

	TriggerClientEvent('jonathan:heal3', source)
	if Config.useanimation then
	TriggerClientEvent('jonathan_basicneeds:onEatpill', source)
	TriggerClientEvent('esx:showNotification', source, Config.not3)
	else
	TriggerClientEvent('esx:showNotification', source, Config.not3)
	end
end)
ESX.RegisterUsableItem('item4', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('item4', 1)

	TriggerClientEvent('jonathan:heal4', source)
	if Config.useanimation then
	TriggerClientEvent('jonathan_basicneeds:onEatpill', source)
	TriggerClientEvent('esx:showNotification', source, Config.not4)
	else
	TriggerClientEvent('esx:showNotification', source, Config.not4)	
	end
end)