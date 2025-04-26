Citizen.CreateThread(function()
    local animDict = "missminuteman_1ig_2"
    local animName = "handsup_enter"
    local playerPed = PlayerPedId()
    local handsUp = false

    -- Cargar el diccionario de animaciones
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(100)
    end

    -- Bucle principal
    while true do
        Citizen.Wait(0)

        if IsControlJustPressed(0, 323) then -- Tecla X
            if not handsUp then
                TaskPlayAnim(playerPed, animDict, animName, 8.0, -8.0, -1, 50, 0, false, false, false)
                handsUp = true
            else
                ClearPedTasks(playerPed)
                handsUp = false
            end
        end
    end
end)