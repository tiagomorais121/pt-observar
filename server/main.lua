local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.bindInterface("vRP","PT-Observar")

ServerCallbacks = {}

RegisterServerEvent('triggerServerCallback')
AddEventHandler('triggerServerCallback', function(name, requestId, ...)
    local _source = source
    TriggerServerCallback(name, requestID, _source, function(...)
        TriggerClientEvent('serverCallback', _source, requestId, ...)
    end, ...)
end)

function RegisterServerCallback(name, cb)
    ServerCallbacks[name] = cb
end
function TriggerServerCallback(name, requestId, source, cb, ...)
    if ServerCallbacks[name] ~= nil then
        ServerCallbacks[name](source, cb, ...)
    end
end

RegisterCommand("Observar", function(source, args, user)
    local user_id = vRP.getUserId({source})
    if vRP.hasPermission({user_id, "admin.admin"}) then
        TriggerClientEvent('pt-observar:spectate', source, target)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Permissoes Insuficientes' })
    end
end)

RegisterServerEvent('pt-observar:kick')
AddEventHandler('pt-observar:kick', function(target, msg)
	DropPlayer(target, msg)
end)

RegisterServerCallback('pt-observar:getPlayerData', function(source, cb)
	local user_id = vRP.getUserId({source})
    local data = vRP.getUserDataTable({user_id})
    local inventory = data.inventory

    for k, v in pairs(inventory) do
        inventory[k] = {
            amount = v.amount,
            label = vRP.getItemName({k})
        }
    end

	cb({
		identifier   = user_id,
		accounts     = {bank = vRP.getBankMoney({user_id}), blackMoney = vRP.getInventoryItemAmount({user_id,"dirty_money"})},
		inventory    = inventory,
		job          = vRP.getUserGroupByType({user_id,"job"}),
		loadout      = data.weapons,
		money        = vRP.getMoney({user_id})
	})
end)

RegisterServerCallback('pt-observar:getOtherPlayerData', function(source, cb, target)
        
        local user_id = vRP.getUserId({target})
        if user_id ~= nil then
            vRP.getUserIdentity({user_id,function (identity)
                local user = user_id
                local data = vRP.getUserDataTable({user_id})
                local inventory = data.inventory
                local weapons = data.weapons
                local ped = data.customization.modelhash
                print(ped)
                local firstname = identity.firstname
                local lastname = identity.name
                local dob = identity.age
                local height = "0 Centimetros"
                local money = vRP.getMoney({user_id})
                local bank = vRP.getBankMoney({user_id})


                if ped == "1885233650" then
                    sex = "M"
                elseif ped == "2627665880" then
                    sex = "F"
                end

                for k, v in pairs(inventory) do
                    inventory[k] = {
                        amount = v.amount,
                        label = vRP.getItemName({k})
                    }
                end
                
                local data = {
                    name = GetPlayerName(target),
                    job = vRP.getUserGroupByType({user_id,"job"}),
                    inventory = inventory,
                    weapons = weapons,
                    firstname = firstname,
                    lastname = lastname,
                    sex = sex,
                    dob = dob,
                    height = height,
                    money = money,
                    blackMoney = vRP.getInventoryItemAmount({user_id,"dirty_money"}),
                    bank = bank
                }
                cb(data)
            end})
        end
end)
