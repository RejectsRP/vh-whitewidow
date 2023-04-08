local QBCore = exports['qb-core']:GetCoreObject()

-- Create blip
-- CreateThread(function() 
--     WhiteWidow = AddBlipForCoord(194.88, -242.92, 54.07)
--     SetBlipSprite (WhiteWidow, 469)
--     SetBlipDisplay(WhiteWidow, 4)
--     SetBlipScale  (WhiteWidow, 0.75)
--     SetBlipAsShortRange(WhiteWidow, true)
--     SetBlipColour(WhiteWidow, 25)
--     BeginTextCommandSetBlipName("STRING")
--     AddTextComponentSubstringPlayerName("White Widow")
--     EndTextCommandSetBlipName(WhiteWidow)
-- end)

-- Brownie Item --
QBCore.Functions.CreateUseableItem("ww-infusedbrownie", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    
    local src = source
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("vh-whitewidow:client:eatweedbrownie", src)
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)
-- End Brownie --

-- Cookie Item --
QBCore.Functions.CreateUseableItem("ww-infusedcookie", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("vh-whitewidow:client:eatweedcookie", src)
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

-- Gummy Item --
QBCore.Functions.CreateUseableItem("weedgummy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    
    local src = source
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("vh-whitewidow:client:eatweedgummy", src)
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)
-- End Gummy --

-- THIS NEEDS REDONE. IT IS SET TO PAY THE CUSTOMER, NOT BILL THE CUSTOMER
RegisterServerEvent("vh-whitewidow:server:Charge", function(citizen, price)
    local src = source
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(citizen))
    local amount = tonumber(price)
    local commission = amount * 0.12 -- AMOUNT THE EMPLOYEE RECEIVES AS COMMISSION (12% BY DEFAULT)
    if billed ~= nil then
        -- if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
            if amount and amount > 0 then
                -- TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                TriggerEvent('qb-phone:server:CreateInvoice', billed, biller, amount)
                TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                -- print("full")
                -- billed.Functions.RemoveMoney('cash', amount, "whitewidow-payment")
                -- exports['Renewed-Banking']:AddAccountMoney('whitewidow', amount)
                -- exports['Renewed-Banking']:handleTransaction('whitewidow', 'White Widow', amount, 'Player was charges via Autopay..Commsion sent to employee', billed, biller, withdraw, transID)
                -- biller.Functions.AddMoney('bank', commission)
                -- TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, '$'..amount..' payment received.', 'success') -- CUSTOMER NOTIFICATION OF PAYMENT
                -- TriggerClientEvent('QBCore:Notify', biller.PlayerData.source, '$'..amount..' payment sent, commission received successfully.', 'success') -- EMPLOYEE NOTIFICATION OF PAYMENT
            else TriggerClientEvent('QBCore:Notify', src, 'Must Be A Valid Amount Above 0', 'error') end
        -- else TriggerClientEvent('QBCore:Notify', src, 'You cannot pay yourself...', 'error') end
    else TriggerClientEvent('QBCore:Notify', src, 'Person not available', 'error') end
end)



-- Create Joints as Items --
QBCore.Functions.CreateUseableItem("ww-purplestankjoint", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.GetItemByName("lighter") or Player.Functions.GetItemByName("zippo") then
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:UsePurpleStankJoint", src)
        end    
    else
        TriggerClientEvent("QBCore:Notify", source, "You don't have a lighter", "error")
    end
end)

QBCore.Functions.CreateUseableItem("ww-lsconfidentialjoint", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.GetItemByName("lighter") or Player.Functions.GetItemByName("zippo") then
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:UseLSConfidentialJoint", src)
        end    
    else
        TriggerClientEvent("QBCore:Notify", source, "You don't have a lighter", "error")
    end
end)

QBCore.Functions.CreateUseableItem("ww-lsstrawberrybananajoint", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.GetItemByName("lighter") or Player.Functions.GetItemByName("zippo") then
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:UseLSStrawberryBananaJoint", src)
        end    
    else
        TriggerClientEvent("QBCore:Notify", source, "You don't have a lighter", "error")
    end
end)

QBCore.Functions.CreateUseableItem("ww-cbdzkittlesjoint", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.GetItemByName("lighter") or Player.Functions.GetItemByName("zippo") then
        if Player.Functions.RemoveItem(item.name, 1, item.slot) then
            TriggerClientEvent("consumables:client:UseCBDZkittlesJoint", src)
        end    
    else
        TriggerClientEvent("QBCore:Notify", source, "You don't have a lighter", "error")
    end
end)

-- Bag of Gummies
QBCore.Functions.CreateUseableItem("infusedgummies", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("vh-whitewidow:client:RemoveGummy", src, item)
end)
-- End Item Creation --

-- Gummies -- 
-- Create the gummy
QBCore.Functions.CreateUseableItem("infusedgummy", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("vh-whitewidow:client:eatweedgummy", src)
    end
end)

-- Gummy Pack Damage
RegisterNetEvent('vh-whitewidow:server:RemoveGummy', function(hp, data) -- remove gummy from pack
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if hp == 1 then
        Player.Functions.RemoveItem('infusedgummies', 1, data.slot)
        TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items["infusedgummies"], "remove")
    else
        Player.PlayerData.items[data.slot].info.uses = Player.PlayerData.items[data.slot].info.uses - 1
        Player.Functions.SetInventory(Player.PlayerData.items)
    end
end)

RegisterNetEvent("vh-whitewidow:server:AddGummy", function(hp, data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("infusedgummy", 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items["infusedgummy"], "add", 1)
end)