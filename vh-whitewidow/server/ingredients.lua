local QBCore = exports['qb-core']:GetCoreObject()
-- ================================================================================================
-- GRINDING BUD
-- ================================================================================================
-- Purple Stank
    QBCore.Functions.CreateCallback("vh-whitewidow:server:GrindPurpleStank", function(source, cb)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local weed = Player.Functions.GetItemByName("ww-purplestankbud")

        if weed ~= nil then 
            cb(true)
        else
            cb(false)
        end
    end)

    RegisterNetEvent("vh-whitewidow:server:RewardPurpleStankFlower", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local PSbud = Player.Functions.GetItemByName("ww-purplestankbud")
        local PSflower = Player.Functions.GetItemByName("ww-purplestankflower")
        
        -- Remove Items
        Player.Functions.RemoveItem("ww-purplestankbud", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-purplestankbud"], 'remove', 1)
        -- Adding Items
        Player.Functions.AddItem("ww-purplestankflower", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-purplestankflower"], 'add', 5)
    end)

-- LS Confidential
    QBCore.Functions.CreateCallback("vh-whitewidow:server:GrindLSConfidential", function(source, cb)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local weed = Player.Functions.GetItemByName("ww-lsconfidentialbud")

        if weed ~= nil then 
            cb(true)
        else
            cb(false)
        end
    end)

    RegisterNetEvent("vh-whitewidow:server:RewardLSConfidentialFlower", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        
        -- Remove Items
        Player.Functions.RemoveItem("ww-lsconfidentialbud", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-lsconfidentialbud"], 'remove', 1)
        -- Adding Items
        Player.Functions.AddItem("ww-lsconfidentialflower", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-lsconfidentialflower"], 'add', 5)
    end)
-- LS Strawberry Banana
    QBCore.Functions.CreateCallback("vh-whitewidow:server:GrindLSStrawberryBanana", function(source, cb)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local weed = Player.Functions.GetItemByName("ww-lsstrawberrybananabud")

        if weed ~= nil then 
            cb(true)
        else
            cb(false)
        end
    end)

    RegisterNetEvent("vh-whitewidow:server:RewardLSStrawberryBananaFlower", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        
        -- Remove Items
        Player.Functions.RemoveItem("ww-lsstrawberrybananabud", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-lsstrawberrybananabud"], 'remove', 1)
        -- Adding Items
        Player.Functions.AddItem("ww-lsstrawberrybananaflower", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-lsstrawberrybananaflower"], 'add', 5)
    end)
-- CBD Zkittles
    QBCore.Functions.CreateCallback("vh-whitewidow:server:GrindCBDZkittles", function(source, cb)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local weed = Player.Functions.GetItemByName("ww-cbdzkittlesbud")

        if weed ~= nil then 
            cb(true)
        else
            cb(false)
        end
    end)

    RegisterNetEvent("vh-whitewidow:server:RewardCBDZkittlesFlower", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        
        -- Remove Items
        Player.Functions.RemoveItem("ww-cbdzkittlesbud", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-cbdzkittlesbud"], 'remove', 1)
        -- Adding Items
        Player.Functions.AddItem("ww-cbdzkittlesflower", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-cbdzkittlesflower"], 'add', 5)
    end)
-- ================================================================================================
-- ROLLING JOINTS
-- ================================================================================================
-- Purple Stank
    QBCore.Functions.CreateCallback("vh-whitewidow:server:RollPurpleStank", function(source, cb)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local paper = Player.Functions.GetItemByName("rolling_paper")
        local flower = Player.Functions.GetItemByName("ww-purplestankflower")

        if paper ~= nil and flower ~= nil then
            if paper.amount >= 5 and flower.amount >= 5 then
                cb(true)
            else
                cb(false)
            end
        else
            cb(false)
        end
    end)

    RegisterNetEvent("vh-whitewidow:server:RewardPurpleStankJoints", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        
        -- Remove Items
        Player.Functions.RemoveItem("rolling_paper", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["rolling_paper"], 'remove', 5)
        Player.Functions.RemoveItem("ww-purplestankflower", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-purplestankflower"], 'remove', 5)
        -- Award Items
        Player.Functions.AddItem("ww-purplestankjoint", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-purplestankjoint"], 'add', 5)
    end)

-- LS Confidential
    QBCore.Functions.CreateCallback("vh-whitewidow:server:RollLSConfidential", function(source, cb)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local paper = Player.Functions.GetItemByName("rolling_paper")
        local flower = Player.Functions.GetItemByName("ww-lsconfidentialflower")

        if paper ~= nil and flower ~= nil then
            if paper.amount >= 5 and flower.amount >= 5 then
                cb(true)
            else
                cb(false)
            end
        else
            cb(false)
        end
    end)

    RegisterNetEvent("vh-whitewidow:server:RewardLSConfidentialJoints", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        
        -- Remove Items
        Player.Functions.RemoveItem("rolling_paper", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["rolling_paper"], 'remove', 5)
        Player.Functions.RemoveItem("ww-lsconfidentialflower", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-lsconfidentialflower"], 'remove', 5)
        -- Award Items
        Player.Functions.AddItem("ww-lsconfidentialjoint", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-lsconfidentialjoint"], 'add', 5)
    end)

-- LS Strawberry Banana
    QBCore.Functions.CreateCallback("vh-whitewidow:server:RollLSStrawberryBanana", function(source, cb)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local paper = Player.Functions.GetItemByName("rolling_paper")
        local flower = Player.Functions.GetItemByName("ww-lsstrawberrybananaflower")

        if paper ~= nil and flower ~= nil then
            if paper.amount >= 5 and flower.amount >= 5 then
                cb(true)
            else
                cb(false)
            end
        else
            cb(false)
        end
    end)

    RegisterNetEvent("vh-whitewidow:server:RewardLSStrawberryBananaJoints", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        
        -- Remove Items
        Player.Functions.RemoveItem("rolling_paper", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["rolling_paper"], 'remove', 5)
        Player.Functions.RemoveItem("ww-lsstrawberrybananaflower", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-lsstrawberrybananaflower"], 'remove', 5)
        -- Award Items
        Player.Functions.AddItem("ww-lsstrawberrybananajoint", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-lsstrawberrybananajoint"], 'add', 5)
    end)

-- CBD Zkittles
    QBCore.Functions.CreateCallback("vh-whitewidow:server:RollCBDZkittles", function(source, cb)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local paper = Player.Functions.GetItemByName("rolling_paper")
        local flower = Player.Functions.GetItemByName("ww-cbdzkittlesflower")

        if paper ~= nil and flower ~= nil then
            if paper.amount >= 5 and flower.amount >= 5 then
                cb(true)
            else
                cb(false)
            end
        else
            cb(false)
        end
    end)

    RegisterNetEvent("vh-whitewidow:server:RewardCBDZkittlesJoints", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        
        -- Remove Items
        Player.Functions.RemoveItem("rolling_paper", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["rolling_paper"], 'remove', 5)
        Player.Functions.RemoveItem("ww-cbdzkittlesflower", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-cbdzkittlesflower"], 'remove', 5)
        -- Award Items
        Player.Functions.AddItem("ww-cbdzkittlesjoint", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-cbdzkittlesjoint"], 'add', 5)
    end)

-- ================================================================================================
-- EDIBLES
-- ================================================================================================
-- Gummies
    QBCore.Functions.CreateCallback("vh-whitewidow:server:MakeInfusedGummy", function(source, cb)
        local Player = QBCore.Functions.GetPlayer(source)
        local edible = Player.Functions.GetItemByName("ww-gummymix")
        local distillate = Player.Functions.GetItemByName("ww-cldistillate")
    
        if edible ~= nil and distillate ~= nil then
            cb(true)
        else
            cb(false)
        end
    end)

    RegisterNetEvent("vh-whitewidow:server:RewardInfusedGummy", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        
        -- Remove Items
        Player.Functions.RemoveItem("ww-gummymix", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-gummymix"], 'remove', 1)
        Player.Functions.RemoveItem("ww-cldistillate", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-cldistillate"], 'remove', 1)
        -- Add Items
        Player.Functions.AddItem("infusedgummy", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["infusedgummy"], 'add', 5)
    end)

-- Brownies
    QBCore.Functions.CreateCallback("vh-whitewidow:server:MakeInfusedBrownie", function(source, cb)
        local Player = QBCore.Functions.GetPlayer(source)
        local edible = Player.Functions.GetItemByName("ww-browniemix")
        local distillate = Player.Functions.GetItemByName("ww-gbdistillate")

        if edible ~= nil and distillate ~= nil then
            cb(true)
        else
            cb(false)
        end
    end)

    RegisterNetEvent("vh-whitewidow:server:RewardInfusedBrownie", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        
        -- Remove Items
        Player.Functions.RemoveItem("ww-browniemix", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-browniemix"], 'remove', 1)
        Player.Functions.RemoveItem("ww-gbdistillate", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-gbdistillate"], 'remove', 1)
        -- Add Items
        Player.Functions.AddItem("ww-infusedbrownie", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-infusedbrownie"], 'add', 5)
    end)

-- Cookies
    QBCore.Functions.CreateCallback("vh-whitewidow:server:MakeInfusedCookie", function(source, cb)
        local Player = QBCore.Functions.GetPlayer(source)
        local edible = Player.Functions.GetItemByName("ww-cookiemix")
        local distillate = Player.Functions.GetItemByName("ww-bkdistillate")

        if edible ~= nil and distillate ~= nil then
            cb(true)
        else
            cb(false)
        end
    end)

    RegisterNetEvent("vh-whitewidow:server:RewardInfusedCookie", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        
        -- Remove Items
        Player.Functions.RemoveItem("ww-cookiemix", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-cookiemix"], 'remove', 1)
        Player.Functions.RemoveItem("ww-bkdistillate", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-bkdistillate"], 'remove', 1)
        -- Add Items
        Player.Functions.AddItem("ww-infusedcookie", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ww-infusedcookie"], 'add', 5)
    end)

-- Gummy Pack
    QBCore.Functions.CreateCallback("vh-whitewidow:server:GummyPack", function(source, cb)
        local Player = QBCore.Functions.GetPlayer(source)
        local ingredients = Player.Functions.GetItemByName("infusedgummy")

        if ingredients ~= nil then
            if ingredients.amount >= 5 then
                cb(true)
            else
                cb(false)
            end
        else
            cb(false)
        end
    end)

    RegisterNetEvent("vh-whitewidow:server:RewardGummyPack", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        -- Remove Items
        Player.Functions.RemoveItem("infusedgummy", 5)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["infusedgummy"], 'remove', 5)
        -- Add Items
        Player.Functions.AddItem("infusedgummies", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["infusedgummies"], 'add', 1)
    end)