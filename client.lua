ESX = nil

RegisterNetEvent('jonathan_basicneeds:onEatpill')
AddEventHandler('jonathan_basicneeds:onEatpill', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_choc_meto'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict("mp_suicide", function()
				TaskPlayAnim(playerPed, "mp_suicide", "pill", 8.0, -8, -1, 49, 0, 0, 0, 0)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(100)
	end

	PlayerLoaded = true
	ESX.PlayerData = ESX.GetPlayerData()
end)


RegisterNetEvent('jonathan:heal')
AddEventHandler('jonathan:heal', function()

local playerPed = PlayerPedId()
local health = GetEntityHealth(playerPed)
local maxhealth = GetEntityMaxHealth(playerPed)

if health >0 and health  < maxhealth then 
local heal = math.min(maxhealth, math.floor(health + (maxhealth /(1/(Config.heal1*0.01)))))

print("補血") 


  if health > maxhealth then 
  health = maxhealth 
  print("生命值已滿")
  end 

SetEntityHealth(playerPed, heal)
  end

end)

RegisterNetEvent('jonathan:heal2')
AddEventHandler('jonathan:heal2', function()

local playerPed = PlayerPedId()
local health = GetEntityHealth(playerPed)
local maxhealth = GetEntityMaxHealth(playerPed)

if health >0 and health  < maxhealth then 
local heal = math.min(maxhealth, math.floor(health + (maxhealth /(1/(Config.heal2*0.01)))))

print("補血")


  if health > maxhealth then 
  health = maxhealth 
  print("生命值已滿")

  end 

SetEntityHealth(playerPed, heal)
 print("治癒了")
  end

end)

RegisterNetEvent('jonathan:heal3')
AddEventHandler('jonathan:heal3', function()

local playerPed = PlayerPedId()
local health = GetEntityHealth(playerPed)
local maxhealth = GetEntityMaxHealth(playerPed)

  if health >0 and health  < maxhealth then 
AddArmourToPed(playerPed, Config.heal3)
  else
AddArmourToPed(playerPed, Config.heal3)

  end

end)
RegisterNetEvent('jonathan:heal4')
AddEventHandler('jonathan:heal4', function()

local playerPed = PlayerPedId()
local health = GetEntityHealth(playerPed)
local maxhealth = GetEntityMaxHealth(playerPed)

  if health >0 and health  < maxhealth then 
AddArmourToPed(playerPed, 100*Config.heal4)
  else
AddArmourToPed(playerPed, 100*Config.heal4)
  end
end) 
