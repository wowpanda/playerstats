local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

U_ = Config.lang2

_source = source

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
		
if not IsDuplicityVersion then		
if Config.noPirates == true then --double check, if he has a bypass, he will get kicked when he is spawned.
TriggerServerEvent("kickForPirates")
	end
end
if Config.NoHacks == true then
if CanPlayOnline == 0 then
TriggerServerEvent("kickForBanned")
	end
end

	end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

if IsControlJustPressed(0, Keys['F10']) then

if Config.Mpos == 'left-top' then
MenuPos = 0.100
elseif Config.Mpos == 'right-top' then
MenuPos = 0.600
elseif Config.Mpos == 'center-top' then
MenuPos = 0.350
else
	print(">>>>")
	print(">>>>ERROR, Mpos has a unexceptable value!")
	print(">>>>")
end

if draw == true then
	draw = false
else
	draw = true

TriggerServerEvent("getPing")



RegisterNetEvent("receivePing")



AddEventHandler("receivePing", function (myping)

function drawPing(r, g, b, a)
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(U_.titleping.. " ".. myping)
  DrawText(MenuPos, 0.10)
  return myping
end
x, y = GetScreenResolution()
txt = U_.resolution.." ".. x.." x ".. y
		
function drawReso(r, g, b, a)
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(txt)
  DrawText(MenuPos, 0.15)   --100, 350, 600
  return txt
end 

coords = GetEntityCoords(GetPlayerPed(-1))

function drawCoordsX(r, g, b, a)
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(U_.position.." 'x': "..x2)
  DrawText(MenuPos, 0.20)
  return coords
end

function drawCoordsY(r, g, b, a)
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(U_.position.." 'y': "..y2)
  DrawText(MenuPos, 0.25)
  return coords
end

function drawCoordsZ(r, g, b, a)
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(U_.position.." 'z': "..z2)
  DrawText(MenuPos, 0.30)
  return coords
end

status = IsPlayerOnline(source)
if status == 1 then
cStatus = U_.connected
else
cStatus = U_.disconnected
end
function drawStatusOnOff(r, g, b, a)
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(cStatus)
  DrawText(MenuPos, 0.35)
  return cStatus
end
if IsDuplicityVersion then --gives output true if is duplicity or false if not.
LPStatus = U_.legal 
else	
LPStatus = U_.illegal
end

function drawVers(r, g, b, a)
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(LPStatus)
  DrawText(MenuPos, 0.40)
  return LPStatus
end
if CanPlayOnline == 0 then
BStatus = U_.banned
if Config.noHacks == true then --doublecheck system
TriggerServerEvent("kickForBanned")
end

else
BStatus = U_.not_banned
end

function drawBanned(r, g, b, a)
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(BStatus)
  DrawText(MenuPos, 0.45)
  return BStatus
end


if IsPedInAnyVehicle(PlayerPedId(), false) then
    invehicle = U_.in_vehicle
else
	invehicle = U_.out_of_vehicle
end

function drawMeans(r, g, b, a)
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(invehicle)
  DrawText(MenuPos, 0.50)
  return invehicle
end

function drawKeys(r, g, b, a)
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(U_.pressing.. " " ..keys.."~s~")
  DrawText(MenuPos, 0.55)
  return keys
end

function drawID(r, g, b, a)
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(U_.titleID.." "..GetPlayerServerId(source).."~s~")
  DrawText(MenuPos, 0.60)
  return GetPlayerServerId(source)
end

function drawNames(r, g, b, a)
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(U_.PlayerName.." "..NetworkPlayerGetName(source)..""..U_.System..""..ScGetNickname(source).."~s~")
  DrawText(MenuPos, 0.65)
  return keys
end

function drawZones(r, g, b, a)
if Config.Zones == true then
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.4, 0.4)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(U_.zone_name..""..zones.."~s~")
  DrawText(MenuPos, 0.70)
  return zones
	end
end

function drawCopyright(r, g, b, a)
  SetTextFont(8)
  SetTextProportional(1)
  SetTextScale(0.3, 0.3)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString("©Made by Real-RP")
  DrawText(0.0, 0.0)
  return nil
end
 
 
Citizen.CreateThread(function()
    while true do
	Wait(1)
	if draw == false then
		return Wait(1) --needed to for less lags.
	else
		drawPing(185, 185, 185, 255)
		drawReso(185, 185, 185, 255)
		drawCoordsX(185, 185, 185, 255)
		drawCoordsY(185, 185, 185, 255)
		drawCoordsZ(185, 185, 185, 255)
		drawStatusOnOff(185, 185, 185, 255)
		drawVers(185, 185, 185, 255)
		drawBanned(185, 185, 185, 255)
		drawMeans(185, 185, 185, 255)
		drawKeys(185, 185, 185, 255)
		drawID(185, 185, 185, 255)
		drawNames(185, 185, 185, 255)
		drawZones(185, 185, 185, 255)
		drawCopyright(185, 185, 185, 255)
		end
	end				
end)	
    while draw == false do
        Citizen.Wait(0)
			CancelEvent()
					end
				end)
			end
		end
	end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

if IsControlJustPressed(0, Keys['F10']) then



if warned == true then
DisplayRadar(true)
return nil
else
warned = true
Notification(U_.attemption)
DisplayRadar(false)
end

		end
	end
end)


function Notification(message)
  Citizen.CreateThread(function()

    SetNotificationTextEntry('STRING')
    AddTextComponentString(message)
    DrawNotification(false, false)
	end)
end



if Config.lang == 'en' then
U_ = {}

U_.titleping = "Last Ping:"
U_.resolution = "Screen Resolution:"
U_.position = "position"
U_.connected = "Connected: ~g~true~s~"
U_.disconnected = "Connected: ~r~false~s~"
U_.legal = "legal or pirate: ~g~legal~s~"
U_.illegal = "legal or pirate: ~r~pirate!~s~"
U_.banned = "bann status: you are ~r~banned~s~ on Rockstar games or Social Club."
U_.not_banned = "bann status: you are ~g~not~s~ banned anywhere"
U_.in_vehicle = "means of ~y~movement~s~: Any vehicle"
U_.out_of_vehicle = "means of ~y~movement~s~: on feet"
U_.pressing = "currently pressing: ~y~"
U_.titleID = "Player ID: ~b~"
U_.PlayerName = "Player Name: ~b~"
U_.System = "~s~, System Identification: ~b~"
U_.zone_name = "Zone Name: ~o~"
U_.attemption = "~r~ATTEMPTION! ~b~Don't open this too often. This will take a little amount of your performance!~s~"
elseif Config.lang == 'de' then
U_ = {}

U_.titleping = "Letzter Ping:"
U_.resolution = "Auflösung:"
U_.position = "Position"
U_.connected = "Verbunden: ~g~Ja~s~"
U_.disconnected = "Verbunden: ~r~Nein~s~"
U_.legal = "Legal oder Duplikat: ~g~Legal~s~"
U_.illegal = "Legal oder Duplikat: ~r~Duplikat!~s~"
U_.banned = "Bann Status: Du bist ~r~gebannt~s~ auf Rockstar Games oder Social Club."
U_.not_banned = "Bann Status: Du bist ~g~nicht~s~ gebannt auf den Gta Plattformen"
U_.in_vehicle = "aktuelles ~y~Fortbewegungsmittel~s~: Ein Fahrzeug"
U_.out_of_vehicle = "aktuelles ~y~Fortbewegungsmittel~s~: Zu Fuß"
U_.pressing = "Aktuel am drücken: ~y~"
U_.titleID = "Spieler ID: ~b~"
U_.PlayerName = "Spieler Name: ~b~"
U_.System = "~s~, System Identifikation: ~b~"
U_.zone_name = "Zonen Name: ~o~"
U_.attemption = "~r~ACHTUNG! ~b~Öffne dieses Menu nicht zu oft. Dieses Menu nutzt deine performance!~s~"
else
print("ERROR: translate string couldn't found. Please change it to a valid value!")
U_ = {}

U_.titleping = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.resolution = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.position = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.connected = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.disconnected = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.legal = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.illegal ="~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.banned = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.not_banned = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.in_vehicle = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.out_of_vehicle = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.pressing = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.titleID = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.PlayerName = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.System = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.zone_name = "~r~ERROR~s~ string: expected something else (#string.err.val)"
U_.attemption = "~r~ERROR~s~ string: expected something else (#string.err.val)"

end
