--All client-side functions outsourced from the Core to the lib will be stored here for compatability, e.g:

ESX.Game.GetShapeTestResultSync = xLib.Raycast.GetShapeTestResult
ESX.Game.RaycastScreen = xLib.Raycast.FromScreen
ESX.Game.StartRaycasting = xLib.Raycast.Start
---@param raycast table The raycast object returned from ESX.Game.StartRaycasting
ESX.Game.StopRaycasting = function(raycast)
    if raycast and raycast.active then
        raycast:Stop()
    end
end
---@param raycast table The raycast object returned from ESX.Game.StartRaycasting
ESX.Game.IsRaycastActive = function(raycast)
    if raycast and raycast.active then
        return raycast:IsActive()
    end
    return false
end
---@param raycast table The raycast object returned from ESX.Game.StartRaycasting
ESX.Game.GetRaycastResult = function(raycast)
    if raycast and raycast.active then
        return raycast.result
    end
    return nil
end