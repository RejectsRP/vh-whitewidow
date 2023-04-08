local QBCore = exports["qb-core"]:GetCoreObject()

local OnEdibles = false 
local RelieveCount = 0
local gummyHp = 5
local gummyData = {}

-- Effects
-- Trippy Effect
local function AlienEffect()
    StartScreenEffect("DrugsMichaelAliensFightIn", 3.0, 0)
    Wait(math.random(20000, 22000))
    StartScreenEffect("DrugsMichaelAliensFight", 3.0, 0)
    Wait(math.random(20000, 22000))
    StartScreenEffect("DrugsMichaelAliensFightOut", 3.0, 0)
    StopScreenEffect("DrugsMichaelAliensFightIn")
    StopScreenEffect("DrugsMichaelAliensFight")
    StopScreenEffect("DrugsMichaelAliensFightOut")
end

-- Weed Brownie --
RegisterNetEvent("vh-whitewidow:client:eatweedbrownie", function()
    OnEdibles = true
    
    CreateThread(function()
        while OnEdibles do
            Citizen.Wait(Config.BrownieReliefInterval * 1000)
            TriggerServerEvent('hud:server:RelieveStress', math.random(Config.BrownieMinStress, Config.BrownieMaxStress))
            RelieveCount = RelieveCount + 1
            if RelieveCount == Config.BrownieMaxReliefCount then
                if OnEdibles then
                    OnEdibles = false
                    RelieveCount = 0
                end
            end
        end
    end)
end)

-- Weed Cookie --
RegisterNetEvent("vh-whitewidow:client:eatweedcookie", function()
    OnEdibles = true
    
    CreateThread(function()
        while OnEdibles do
            Citizen.Wait(Config.CookieReliefInterval * 1000)
            TriggerServerEvent('hud:server:RelieveStress', math.random(Config.CookieMinStress, Config.CookieMaxStress))
            RelieveCount = RelieveCount + 1
            if RelieveCount == Config.CookieMaxReliefCount then
                if OnEdibles then
                    OnEdibles = false
                    RelieveCount = 0
                end
            end
        end
    end)
end)

-- Weed Gummy --
RegisterNetEvent("vh-whitewidow:client:eatweedgummy", function()
    OnEdibles = true
    
    CreateThread(function()
        while OnEdibles do
            Citizen.Wait(Config.GummyReliefInterval * 1000)
            TriggerServerEvent('hud:server:RelieveStress', math.random(Config.GummyMinStress, Config.GummyMaxStress))
            RelieveCount = RelieveCount + 1
            if RelieveCount == Config.GummyMaxReliefCount then
                if OnEdibles then
                    OnEdibles = false
                    RelieveCount = 0
                end
            end
        end
    end)
    
    QBCore.Functions.Progressbar("eat_gummy", "Eating a Gummy...", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {
        TriggerEvent('animations:client:EmoteCommandStart', {"eat"})
    }, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify("You start to feel tingles of relaxation.", "primary", 7000)
    end, function()
        QBCore.Functions.Notify("Cancelled...", "error")
    end)
end)

-- Joints --
RegisterNetEvent('consumables:client:UsePurpleStankJoint', function()
    QBCore.Functions.Progressbar("smoke_joint", "Lighting joint..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ww-purplestankjoint"], "remove")
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            TriggerEvent('animations:client:EmoteCommandStart', {"smoke3"})
        else
            TriggerEvent('animations:client:EmoteCommandStart', {"smokeweed"})
        end
        TriggerEvent("evidence:client:SetStatus", "weedsmell", 300)
        TriggerEvent('animations:client:SmokePurpleStank')
        exports['ps-buffs']:SwimmingBuffEffect(60 * 1000, 1.5)
        AlienEffect()
    end, function()
        QBCore.Functions.Notify("Cancelled...", "error")
    end)
end)

RegisterNetEvent('consumables:client:UseLSConfidentialJoint', function()
    QBCore.Functions.Progressbar("smoke_joint", "Lighting joint..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ww-lsconfidentialjoint"], "remove")
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            TriggerEvent('animations:client:EmoteCommandStart', {"smoke3"})
        else
            TriggerEvent('animations:client:EmoteCommandStart', {"smokeweed"})
        end
        TriggerEvent("evidence:client:SetStatus", "weedsmell", 300)
        TriggerEvent('animations:client:SmokeLSConfidential')
        exports['ps-buffs']:StaminaBuffEffect(60 * 1000, 1.5) -- (time, value(float))
        AlienEffect()
    end, function()
        QBCore.Functions.Notify("Cancelled...", "error")
    end)
end)

RegisterNetEvent('consumables:client:UseLSStrawberryBananaJoint', function()
    QBCore.Functions.Progressbar("smoke_joint", "Lighting joint..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ww-lsstrawberrybananajoint"], "remove")
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            TriggerEvent('animations:client:EmoteCommandStart', {"smoke3"})
        else
            TriggerEvent('animations:client:EmoteCommandStart', {"smokeweed"})
        end
        TriggerEvent("evidence:client:SetStatus", "weedsmell", 300)
        TriggerEvent('animations:client:SmokeLSStrawberryBanana')
        exports['ps-buffs']:AddArmorBuff(30000, 5)
        AlienEffect()
    end, function()
        QBCore.Functions.Notify("Cancelled...", "error")
    end)
end)

RegisterNetEvent('consumables:client:UseCBDZkittlesJoint', function()
    QBCore.Functions.Progressbar("smoke_joint", "Lighting joint..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ww-cbdzkittlesjoint"], "remove")
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            TriggerEvent('animations:client:EmoteCommandStart', {"smoke3"})
        else
            TriggerEvent('animations:client:EmoteCommandStart', {"smokeweed"})
        end
        TriggerEvent("evidence:client:SetStatus", "weedsmell", 300)
        TriggerEvent('animations:client:SmokeCBDZkittles')
        exports['ps-buffs']:AddHealthBuff(35000, 3)
    end, function()
        QBCore.Functions.Notify("Cancelled...", "error")
    end)
end)

RegisterNetEvent("vh-whitewidow:client:RemoveGummy", function(ItemData)
    LocalPlayer.state:set("inv_busy", true, true)
    QBCore.Functions.Progressbar("remove_gummy", "Removing a Gummy...", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,  
    }, {
        animDict = "amb@world_human_clipboard@male@idle_a",
        anim = "idle_c",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(playerPed, "amb@world_human_clipboard@male@idle_a", "idle_c", 1.0)
        gummyHp = ItemData.info.uses
        gummyData = ItemData
        TriggerServerEvent("vh-whitewidow:server:AddGummy") -- give gummy to the player
        TriggerServerEvent("vh-whitewidow:server:RemoveGummy", gummyHp, gummyData) -- remove gummy from the pack
    end, function()
        QBCore.Functions.Notify("Cancelled...", "error")
    end)
    LocalPlayer.state:set("inv_busy", false, true)
end)