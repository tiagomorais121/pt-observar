local InSpectatorMode	= false
local TargetSpectate	= nil
local LastPosition		= nil
local polarAngleDeg		= 0;
local azimuthAngleDeg	= 90;
local radius			= -3.5;
local cam 				= nil
local PlayerDate		= {}
local ShowInfos			= false
local group

ServerCallbacks = {}
CurrentRequestId = 0

function TriggerServerCallback(name, cb, ...)
	ServerCallbacks[CurrentRequestId] = cb

	TriggerServerEvent('triggerServerCallback', name, CurrentRequestId, ...)

	if CurrentRequestId < 65535 then
		CurrentRequestId = CurrentRequestId + 1
	else
		CurrentRequestId = 0
	end
end

RegisterNetEvent('serverCallback')
AddEventHandler('serverCallback', function(requestId, ...)
	ServerCallbacks[requestId](...)
	ServerCallbacks[requestId] = nil
end)

function polar3DToWorld3D(entityPosition, radius, polarAngleDeg, azimuthAngleDeg)
	-- convert degrees to radians
	local polarAngleRad   = polarAngleDeg   * math.pi / 180.0
	local azimuthAngleRad = azimuthAngleDeg * math.pi / 180.0

	local pos = {
		x = entityPosition.x + radius * (math.sin(azimuthAngleRad) * math.cos(polarAngleRad)),
		y = entityPosition.y - radius * (math.sin(azimuthAngleRad) * math.sin(polarAngleRad)),
		z = entityPosition.z - radius * math.cos(azimuthAngleRad)
	}

	return pos
end

function spectate(target)
	print("a")

	TriggerServerCallback('pt-observar:getPlayerData', function(player)
		print("b")
		if not InSpectatorMode then
			LastPosition = GetEntityCoords(GetPlayerPed(-1))
		end

		local playerPed = GetPlayerPed(-1)

		SetEntityCollision(playerPed, false, false)
		SetEntityVisible(playerPed, false)

		PlayerData = player
		if ShowInfos then
			SendNUIMessage({
				type = 'infos',
				data = PlayerData
			})	
		end

		Citizen.CreateThread(function()

			if not DoesCamExist(cam) then
				cam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)
			end

			SetCamActive(cam, true)
			RenderScriptCams(true, false, 0, true, true)

			InSpectatorMode = true
			TargetSpectate  = target

		end)
	end, target)

end

function resetNormalCamera()
	InSpectatorMode = false
	TargetSpectate  = nil
	local playerPed = GetPlayerPed(-1)

	SetCamActive(cam,  false)
	RenderScriptCams(false, false, 0, true, true)

	SetEntityCollision(playerPed, true, true)
	SetEntityVisible(playerPed, true)
	SetEntityCoords(playerPed, LastPosition.x, LastPosition.y, LastPosition.z)
end

function GetPlayers(onlyOtherPlayers, returnKeyValue, returnPeds)
	local players, myPlayer = {}, PlayerId()

	for k,player in ipairs(GetActivePlayers()) do
		local ped = GetPlayerPed(player)

		if DoesEntityExist(ped) and ((onlyOtherPlayers and player ~= myPlayer) or not onlyOtherPlayers) then
			if returnKeyValue then
				players[player] = ped
			else
				table.insert(players, returnPeds and ped or player)
			end
		end
	end

	return players
end

function getPlayersList()

	local players = GetPlayers()
	local data = {}

	for i=1, #players, 1 do

		local _data = {
			id = GetPlayerServerId(players[i]),
			name = GetPlayerName(players[i])
		}
		table.insert(data, _data)
	end
	return data
end

function OpenAdminActionMenu(player)

    TriggerServerCallback('pt-observar:getOtherPlayerData', function(data)

      print(json.encode(data))
      local sexLabel    = nil
      local sex         = nil
      local dobLabel    = nil
      local heightLabel = nil
      local idLabel     = nil
	  local Inventory	= nil

	  local blackMoney = data.blackMoney
	  local Money = data.money
	  local Bank = data.bank
      local jobLabel = 'Trabalho : ' .. data.job

      if data.sex ~= nil then
        if (data.sex == 'm') or (data.sex == 'M') then
          sex = 'Homem'
		elseif (data.sex == 'f') or (data.sex == 'F') then
          sex = 'Feminino'
		elseif (data.sex == 'i') or (data.sex == 'I') then
			sex = 'Indefinido'
        end
        sexLabel = 'Sexo : ' .. sex
      else
        sexLabel = 'Sexo : Desconhecido'
      end
	  	  
      if data.dob ~= nil then
        dobLabel = 'Idade : ' .. data.dob
      else
        dobLabel = 'Idade : Desconhecida'
      end

      if data.height ~= nil then
        heightLabel = 'Altura : ' .. data.height
      else
        heightLabel = 'Altura : Desconhecida'
      end

      local elements = {
        {label = 'Nome: ' .. data.firstname .. " " .. data.lastname, value = nil},
        {label = 'Dinheiro: '.. Money, value = nil, itemType = 'item_account', amount = Money},
        {label = 'Banco: '.. Bank, value = nil, itemType = 'item_account', amount = Bank},
        {label = 'Dinheiro Sujo: '.. blackMoney, value = nil, itemType = 'item_account', amount = blackMoney},
		{label = jobLabel,    value = nil},
		{label = sexLabel,    value = nil},
        {label = "Nome do Jogador:" .. data.name,     value = nil},
    }
	
    table.insert(elements, {label = '--- Inventario ---', value = nil})

	for k, v in pairs(data.inventory) do
		table.insert(elements, {
			label          = v.label .. ' x ' .. v.amount,
			value          = nil,
			itemType       = 'item_standard',
			amount         = v.amount,
		})
	end
	
    table.insert(elements, {label = '--- Armas ---', value = nil})

	for k, v in pairs(data.weapons) do
      table.insert(elements, {
        label          = k,
        value          = nil,
        itemType       = 'item_weapon',
        amount         = v.ammo,
      })
	end

      PT.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'citizen_interaction',
        {
          title    = 'Controlo de Jogador',
          align    = 'top-left',
          elements = elements,
        },
        function(data, menu)

        end,
        function(data, menu)
          menu.close()
        end
      )

    end, GetPlayerServerId(player))
end

RegisterNetEvent('pt-observar:spectate')
AddEventHandler('pt-observar:spectate', function()

	SetNuiFocus(true, true)

	SendNUIMessage({
		type = 'show',
		data = getPlayersList(),
		player = GetPlayerServerId(PlayerId())
	})

end)

RegisterNUICallback('select', function(data, cb)
	print("select UI " .. json.encode(data))
	spectate(data.id)
	SetNuiFocus(false)
end)

RegisterNUICallback('close', function(data, cb)
	print("closing UI")
	SetNuiFocus(false)
end)

RegisterNUICallback('quit', function(data, cb)
	SetNuiFocus(false)
	resetNormalCamera()
end)

RegisterNUICallback('kick', function(data, cb)
	SetNuiFocus(false)
	TriggerServerEvent('pt-observar:kick', data.id, data.reason)
	TriggerEvent('pt-observar:spectate')
end)



Citizen.CreateThread(function()

  	while true do

		Wait(0)

		if InSpectatorMode then

			local targetPlayerId = GetPlayerFromServerId(TargetSpectate)
			local playerPed	  = GetPlayerPed(-1)
			local targetPed	  = GetPlayerPed(targetPlayerId)
			local coords	 = GetEntityCoords(targetPed)

			for i=0, 32, 1 do
				if i ~= PlayerId() then
					local otherPlayerPed = GetPlayerPed(i)
					SetEntityNoCollisionEntity(playerPed,  otherPlayerPed,  true)
					SetEntityVisible(playerPed, false)
				end
			end

			if IsControlPressed(2, 241) then
				radius = radius + 2.0;
			end

			if IsControlPressed(2, 242) then
				radius = radius - 2.0;
			end

			if radius > -1 then
				radius = -1
			end

			local xMagnitude = GetDisabledControlNormal(0, 1);
			local yMagnitude = GetDisabledControlNormal(0, 2);

			polarAngleDeg = polarAngleDeg + xMagnitude * 10;

			if polarAngleDeg >= 360 then
				polarAngleDeg = 0
			end

			azimuthAngleDeg = azimuthAngleDeg + yMagnitude * 10;

			if azimuthAngleDeg >= 360 then
				azimuthAngleDeg = 0;
			end

			local nextCamLocation = polar3DToWorld3D(coords, radius, polarAngleDeg, azimuthAngleDeg)

			SetCamCoord(cam,  nextCamLocation.x,  nextCamLocation.y,  nextCamLocation.z)
			PointCamAtEntity(cam,  targetPed)
			SetEntityCoords(playerPed,  coords.x, coords.y, coords.z + 10)

			if IsControlPressed(2, 47) then
			OpenAdminActionMenu(targetPlayerId)
			end
			
-- taken from Easy Admin (thx to Bluethefurry)  --
			local text = {}
			-- cheat checks
			local targetGod = GetPlayerInvincible(targetPlayerId)
			if targetGod then
				table.insert(text,"Godmode: ~r~Found~w~")
			else
				table.insert(text,"Godmode: ~g~Not Found~w~")
			end
			if not CanPedRagdoll(targetPed) and not IsPedInAnyVehicle(targetPed, false) and (GetPedParachuteState(targetPed) == -1 or GetPedParachuteState(targetPed) == 0) and not IsPedInParachuteFreeFall(targetPed) then
				table.insert(text,"~r~Anti-Ragdoll~w~")
			end
			-- health info
			table.insert(text,"Health"..": "..GetEntityHealth(targetPed).."/"..GetEntityMaxHealth(targetPed))
			table.insert(text,"Armor"..": "..GetPedArmour(targetPed))

			for i,theText in pairs(text) do
				SetTextFont(0)
				SetTextProportional(1)
				SetTextScale(0.0, 0.30)
				SetTextDropshadow(0, 0, 0, 0, 255)
				SetTextEdge(1, 0, 0, 0, 255)
				SetTextDropShadow()
				SetTextOutline()
				SetTextEntry("STRING")
				AddTextComponentString(theText)
				EndTextCommandDisplayText(0.3, 0.7+(i/30))
			end
-- end of taken from easyadmin -- 
		end

  	end
end)
