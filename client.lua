screensaverShowUp = 10

Citizen.CreateThread(function()
	while true do
		Wait(1000)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)

			if currentPos == prevPos then
				if time > 0 then
					time = time - 1
				else
					SendNUIMessage({
						action = "open"
					})
				end
			else
				time = screensaverShowUp
				SendNUIMessage({
					action = "close"
				})
			end

			prevPos = currentPos
		end
	end
end)