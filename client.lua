RegisterNetEvent("updateAOP")
AddEventHandler("updateAOP", function(newAOP)
    SendNUIMessage({
        action = "updateAOP",
        aop = newAOP
    })
end)

RegisterNetEvent("updatePeacetime")
AddEventHandler("updatePeacetime", function(status)
    SendNUIMessage({
        action = "updatePeacetime",
        peacetime = status
    })
end)
