local canStart = true
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function getIdentity(source, callback)
  local identifier = GetPlayerIdentifiers(source)[1]
  MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = @identifier", {['@identifier'] = identifier},
  function(result)
    if result[1]['firstname'] ~= nil then
      local data = {
        identifier    = result[1]['identifier'],
        firstname     = result[1]['firstname'],
        lastname      = result[1]['lastname'],
        dateofbirth   = result[1]['dateofbirth'],
        sex           = result[1]['sex'],
        height        = result[1]['height']
      }
      callback(data)
    else
      local data = {
        identifier    = '',
        firstname     = '',
        lastname      = '',
        dateofbirth   = '',
        sex           = '',
        height        = ''
      }
      callback(data)
    end
  end)
end


ESX.RegisterServerCallback('gunrange2:canshoot',function(source,cb)
	if canStart then
		cb(true)
	else
		cb(false)
	end
end)

RegisterNetEvent('gunrange2:startShooting')
AddEventHandler('gunrange2:startShooting',function(wTime,targets)
	canStart = false
		SetTimeout((wTime*targets),function()
		canStart = true
	end)
end)


RegisterNetEvent('gunrange2:showresulttoNearbyPlayers')
AddEventHandler('gunrange2:showresulttoNearbyPlayers',function(difficulty,points,targets)
	getIdentity(source, function(data)
		TriggerClientEvent('gunrange2:sendresultsforplayers',-1,data.firstname,data.lastname,difficulty,points,targets)
	end)
end)


