local QBCore = exports["qb-core"]:GetCoreObject()

RegisterNetEvent("vh-whitewidow:client:OpenFoodPrep", function()
    exports["qb-menu"]:openMenu({
        {
            header = "Food Prep",
            isMenuHeader = true, -- Set to true to make a nonclickable title
            icon = "fas fa-cannabis", -- Set this to any fontawesome icon!
        },
        {
            header = "Infused Gummies",
            txt = " - Gummy Mix & Cherry Lemon Distillate",
            params = {
                event = "vh-whitewidow:client:MakeEdible",
                args = {
                    food = "gummy",
                }
            }
        },
        {
            header = "Infused Brownies",
            txt = " - Brownie Mix & Gorilla Butter Distillate",
            params = {
                event = "vh-whitewidow:client:MakeEdible",
                args = {
                    food = "brownie",
                }
            }
        },
        {
            header = "Infused Cookies",
            txt = " - Cookie Mix & Banana Kush Distillate",
            params = {
                event = "vh-whitewidow:client:MakeEdible",
                args = {
                    food = "cookie",
                }
            }
        },
        {
            header = "Pack of Gummies",
            txt = " - 5 Infused Gummies",
            params = {
                event = "vh-whitewidow:client:MakeEdible",
                args = {
                    food = "gummypack",
                }
            }
        },
    })
end)

RegisterNetEvent("vh-whitewidow:client:MakeEdible", function(data)
    local food = data.food

    if food == "gummy" then 
        QBCore.Functions.TriggerCallback("vh-whitewidow:server:MakeInfusedGummy", function(HasItems)
            if HasItems then
                QBCore.Functions.Progressbar("pickup_sla", "Boiling Gelatin...", 8000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("vh-whitewidow:server:RewardInfusedGummy")
                    QBCore.Functions.Notify("You made a fresh batch of gummies", "success")
                end, function()
                    QBCore.Functions.Notify("Cancelled...", "error")
                end)
            else
                QBCore.Functions.Notify("You don't have the correct ingredients.", "error")
            end
        end)
    elseif food == "brownie" then 
        QBCore.Functions.TriggerCallback("vh-whitewidow:server:MakeInfusedBrownie", function(HasItems)
            if HasItems then
                QBCore.Functions.Progressbar("pickup_sla", "Baking Brownies...", 8000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("vh-whitewidow:server:RewardInfusedBrownie")
                    QBCore.Functions.Notify("You made a fresh batch of brownies", "success")
                end, function()
                    QBCore.Functions.Notify("Cancelled...", "error")
                end)
            else
                QBCore.Functions.Notify("You don't have the correct ingredients.", "error")
            end
        end)
    elseif food == "cookie" then 
        QBCore.Functions.TriggerCallback("vh-whitewidow:server:MakeInfusedCookie", function(HasItems)
            if HasItems then
                QBCore.Functions.Progressbar("pickup_sla", "Baking Cookies...", 8000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("vh-whitewidow:server:RewardInfusedCookie")
                    QBCore.Functions.Notify("You made a fresh batch of gummies", "success")
                end, function()
                    QBCore.Functions.Notify("Cancelled...", "error")
                end)
            else
                QBCore.Functions.Notify("You don't have the correct ingredients.", "error")
            end
        end)
    elseif food == "gummypack" then 
        QBCore.Functions.TriggerCallback("vh-whitewidow:server:GummyPack", function(HasItems)
            if HasItems then
                QBCore.Functions.Progressbar("pickup_sla", "Bagging Gummies...", 8000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "mp_common",
                    anim = "givetake1_a",
                    flags = 8,
                }, {}, {}, function() -- Done
                    TriggerServerEvent("vh-whitewidow:server:RewardGummyPack")
                    QBCore.Functions.Notify("You bagged a 5 pack of gummies.", "success")
                end, function()
                    QBCore.Functions.Notify("Cancelled...", "error")
                end)
            else
                QBCore.Functions.Notify("You don't have the correct ingredients.", "error")
            end
        end)
    else
        QBCore.Functions.Notify("Something went wrong.", "error")
    end
end)