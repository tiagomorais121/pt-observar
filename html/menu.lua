PT                           = {}
PT.UI                        = {}
PT.UI.Menu                   = {}
PT.UI.Menu.RegisteredTypes   = {}
PT.UI.Menu.Opened            = {}

local Chunks = {}

RegisterNUICallback('__chunk', function(data, cb)
	Chunks[data.id] = Chunks[data.id] or ''
	Chunks[data.id] = Chunks[data.id] .. data.chunk

	if data['end'] then
		local msg = json.decode(Chunks[data.id])
		TriggerEvent(GetCurrentResourceName() .. ':message:' .. data.__type, msg)
		Chunks[data.id] = nil
	end

	cb('')
end)


function PT.UI.Menu.RegisterType(type, open, close)
	PT.UI.Menu.RegisteredTypes[type] = {
		open   = open,
		close  = close
	}
end

function PT.UI.Menu.Open(type, namespace, name, data, submit, cancel, change, close)
	local menu = {}

	menu.type      = type
	menu.namespace = namespace
	menu.name      = name
	menu.data      = data
	menu.submit    = submit
	menu.cancel    = cancel
	menu.change    = change

	menu.close = function()

		PT.UI.Menu.RegisteredTypes[type].close(namespace, name)

		for i=1, #PT.UI.Menu.Opened, 1 do
			if PT.UI.Menu.Opened[i] then
				if PT.UI.Menu.Opened[i].type == type and PT.UI.Menu.Opened[i].namespace == namespace and PT.UI.Menu.Opened[i].name == name then
					PT.UI.Menu.Opened[i] = nil
				end
			end
		end

		if close then
			close()
		end

	end

	menu.update = function(query, newData)

		for i=1, #menu.data.elements, 1 do
			local match = true

			for k,v in pairs(query) do
				if menu.data.elements[i][k] ~= v then
					match = false
				end
			end

			if match then
				for k,v in pairs(newData) do
					menu.data.elements[i][k] = v
				end
			end
		end

	end

	menu.refresh = function()
		PT.UI.Menu.RegisteredTypes[type].open(namespace, name, menu.data)
	end

	menu.setElement = function(i, key, val)
		menu.data.elements[i][key] = val
	end

	menu.setElements = function(newElements)
		menu.data.elements = newElements
	end

	menu.setTitle = function(val)
		menu.data.title = val
	end

	menu.removeElement = function(query)
		for i=1, #menu.data.elements, 1 do
			for k,v in pairs(query) do
				if menu.data.elements[i] then
					if menu.data.elements[i][k] == v then
						table.remove(menu.data.elements, i)
						break
					end
				end

			end
		end
	end

	table.insert(PT.UI.Menu.Opened, menu)
	PT.UI.Menu.RegisteredTypes[type].open(namespace, name, data)

	return menu
end

function PT.UI.Menu.Close(type, namespace, name)
	for i=1, #PT.UI.Menu.Opened, 1 do
		if PT.UI.Menu.Opened[i] then
			if PT.UI.Menu.Opened[i].type == type and PT.UI.Menu.Opened[i].namespace == namespace and PT.UI.Menu.Opened[i].name == name then
				PT.UI.Menu.Opened[i].close()
				PT.UI.Menu.Opened[i] = nil
			end
		end
	end
end

function PT.UI.Menu.CloseAll()
	for i=1, #PT.UI.Menu.Opened, 1 do
		if PT.UI.Menu.Opened[i] then
			PT.UI.Menu.Opened[i].close()
			PT.UI.Menu.Opened[i] = nil
		end
	end
end

function PT.UI.Menu.GetOpened(type, namespace, name)
	for i=1, #PT.UI.Menu.Opened, 1 do
		if PT.UI.Menu.Opened[i] then
			if PT.UI.Menu.Opened[i].type == type and PT.UI.Menu.Opened[i].namespace == namespace and PT.UI.Menu.Opened[i].name == name then
				return PT.UI.Menu.Opened[i]
			end
		end
	end
end

function PT.UI.Menu.GetOpenedMenus()
	return PT.UI.Menu.Opened
end

function PT.UI.Menu.IsOpen(type, namespace, name)
	return PT.UI.Menu.GetOpened(type, namespace, name) ~= nil
end

Citizen.CreateThread(function()

	local GUI, MenuType = {}, 'default'
	GUI.Time = 0

	local openMenu = function(namespace, name, data)
		SendNUIMessage({
			action = 'openMenu',
			namespace = namespace,
			name = name,
			data = data
		})
	end

	local closeMenu = function(namespace, name)
		SendNUIMessage({
			action = 'closeMenu',
			namespace = namespace,
			name = name,
			data = data
		})
	end

	PT.UI.Menu.RegisterType(MenuType, openMenu, closeMenu)

	AddEventHandler('pt-observar:message:menu_submit', function(data)
		local menu = PT.UI.Menu.GetOpened(MenuType, data._namespace, data._name)

		if menu.submit ~= nil then
			menu.submit(data, menu)
		end
	end)

	AddEventHandler('pt-observar:message:menu_cancel', function(data)
		local menu = PT.UI.Menu.GetOpened(MenuType, data._namespace, data._name)

		if menu.cancel ~= nil then
			menu.cancel(data, menu)
		end
	end)

	AddEventHandler('pt-observar:message:menu_change', function(data)
		local menu = PT.UI.Menu.GetOpened(MenuType, data._namespace, data._name)

		for i=1, #data.elements, 1 do
			menu.setElement(i, 'value', data.elements[i].value)

			if data.elements[i].selected then
				menu.setElement(i, 'selected', true)
			else
				menu.setElement(i, 'selected', false)
			end
		end

		if menu.change ~= nil then
			menu.change(data, menu)
		end
	end)

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(10)

			if IsControlPressed(0, 18) and IsInputDisabled(0) and (GetGameTimer() - GUI.Time) > 150 then
				SendNUIMessage({action = 'controlPressed', control = 'ENTER'})
				GUI.Time = GetGameTimer()
			end

			if IsControlPressed(0, 177) and IsInputDisabled(0) and (GetGameTimer() - GUI.Time) > 150 then
				SendNUIMessage({action  = 'controlPressed', control = 'BACKSPACE'})
				GUI.Time = GetGameTimer()
			end

			if IsControlPressed(0, 27) and IsInputDisabled(0) and (GetGameTimer() - GUI.Time) > 200 then
				SendNUIMessage({action  = 'controlPressed', control = 'TOP'})
				GUI.Time = GetGameTimer()
			end

			if IsControlPressed(0, 173) and IsInputDisabled(0) and (GetGameTimer() - GUI.Time) > 200 then
				SendNUIMessage({action  = 'controlPressed', control = 'DOWN'})
				GUI.Time = GetGameTimer()
			end

			if IsControlPressed(0, 174) and IsInputDisabled(0) and (GetGameTimer() - GUI.Time) > 150 then
				SendNUIMessage({action  = 'controlPressed', control = 'LEFT'})
				GUI.Time = GetGameTimer()
			end

			if IsControlPressed(0, 175) and IsInputDisabled(0) and (GetGameTimer() - GUI.Time) > 150 then
				SendNUIMessage({action  = 'controlPressed', control = 'RIGHT'})
				GUI.Time = GetGameTimer()
			end
		end
	end)
end)
