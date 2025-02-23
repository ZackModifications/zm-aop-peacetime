local aop = "Los Santos" -- Default AOP
local peacetime = false  -- Default Peacetime Status

RegisterCommand("setaop", function(source, args, rawCommand)
    local player = source
    if #args > 0 then
        aop = table.concat(args, " ")
        TriggerClientEvent("chat:addMessage", -1, {
            args = {"^1[AOP]", "The Area of Patrol is now: " .. aop}
        })
        TriggerClientEvent("updateAOP", -1, aop) -- Update clients
    else
        TriggerClientEvent("chat:addMessage", player, {
            args = {"^1[AOP]", "Usage: /setaop [area]"}
        })
    end
end, false)

RegisterCommand("aop", function(source, args, rawCommand)
    local player = source
    TriggerClientEvent("chat:addMessage", player, {
        args = {"^1[AOP]", "Current Area of Patrol: " .. aop}
    })
end, false)

RegisterCommand("togglepeacetime", function(source, args, rawCommand)
    local player = source
    peacetime = not peacetime
    local status = peacetime and "ENABLED" or "DISABLED"
    TriggerClientEvent("chat:addMessage", -1, {
        args = {"^1[PEACETIME]", "Peacetime is now: " .. status}
    })
    TriggerClientEvent("updatePeacetime", -1, peacetime)
end, false)

RegisterNetEvent("updateAOPDisplay")
AddEventHandler("updateAOPDisplay", function()
    TriggerClientEvent("updateAOP", source, aop)
end)
