local QBCore = exports["qb-core"]:GetCoreObject()

Citizen.CreateThread(function()
    -- Registers
        exports['qb-target']:AddBoxZone("Register1", vector3(188.96, -241.06, 54.07), 0.7, 0.4, {
            name = "Register1",
            heading = 340,
            debugPoly = Config.debugPoly,
            minZ = 52.0,
            maxZ = 56.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "vh-whitewidow:client:BillPlayer",
                    icon = "fas fa-credit-card",
                    label = "Register",
                    job = "whitewidow",
                },
            },
            distance = 2.5
        })

        exports['qb-target']:AddBoxZone("Register2", vector3(188.05, -243.53, 54.07), 0.6, 0.4, {
            name = "Register2",
            heading = 340,
            debugPoly = Config.debugPoly,
            minZ = 52.0,
            maxZ = 56.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "vh-whitewidow:client:BillPlayer",
                    icon = "fas fa-credit-card",
                    label = "Register",
                    job = "whitewidow",
                },
            },
            distance = 2.5
        })

        exports['qb-target']:AddBoxZone("Tray1", vector3(188.51, -242.38, 54.07), 1.5, 0.75, {
            name = "Tray1",
            heading = 340,
            debugPoly = Config.debugPoly,
            minZ = 52.0,
            maxZ = 56.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "vh-whitewidow:client:OpenTray",
                    icon = "fas fa-regular fa-cash-register",
                    label = "Tray",
                },
            },
            distance = 2.5
        })

        exports['qb-target']:AddBoxZone("CounterStorage", vector3(185.45, -242.19, 54.07), 3.5, 0.5, {
            name = "CounterStorage",
            heading = 340,
            debugPoly = Config.debugPoly,
            minZ = 52.0,
            maxZ = 56.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "vh-whitewidow:client:OpenCounterStorage",
                    icon = "fas fa-box",
                    label = "Day Storage",
                    job = "whitewidow",
                },
            },
            distance = 2.5
        })

    -- Office Area
        exports['qb-target']:AddBoxZone("ClockIn", vector3(182.97, -250.79, 54.07), 0.85, 0.6, {
            name = "ClockIn",
            heading = 253,
            debugPoly = Config.debugPoly,
            minZ = 52.0,
            maxZ = 56.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "vh-whitewidow:client:OpenClockIn",
                    icon = "fas fa-solid fa-computer",
                    label = "Duty",
                    job = "whitewidow",
                },
            },
            distance = 2.5
        }) 

        exports['qb-target']:AddBoxZone("wwShop", vector3(180.68, -252.7, 54.07), 0.85, 0.6, {
            name = "wwShop",
            heading = 270,
            debugPoly = Config.debugPoly,
            minZ = 52.0,
            maxZ = 56.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "vh-whitewidow:client:OpenShop",
                    icon = "fas fa-regular fa-vault",
                    label = "Shop",
                    job = "whitewidow",
                },
            },
            distance = 2.5
        })

        exports['qb-target']:AddBoxZone("wwFoodPrep", vector3(178.52, -251.43, 54.07), 2.2, 1, {
            name = "wwFoodPrep",
            heading = 250,
            debugPoly = Config.debugPoly,
            minZ = 52.0,
            maxZ = 56.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "vh-whitewidow:client:OpenFoodPrep",
                    icon = "fas fa-cannabis",
                    label = "Prep Food",
                    job = "whitewidow",
                },
            },
            distance = 2.5
        })

        exports['qb-target']:AddBoxZone("wwSafe", vector3(184.25, -244.35, 54.07), 1.1, 0.8, {
            name = "wwSafe",
            heading = 251,
            debugPoly = Config.debugPoly,
            minZ = 52.0,
            maxZ = 56.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "vh-whitewidow:client:OpenSafe",
                    icon = "fas fa-solid fa-computer",
                    label = "Safe",
                    job = "whitewidow",
                },
            },
            distance = 2.5
        })

    -- Downstairs Area
        exports['qb-target']:AddBoxZone("wwHerbStorage", vector3(164.47, -232.78, 50.06), 3, 1, {
            name = "wwHerbStorage",
            heading = 340,
            debugPoly = Config.debugPoly,
            minZ = 48.0,
            maxZ = 52.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "vh-whitewidow:client:OpenHerbStorage",
                    icon = "fas fa-regular fa-vault",
                    label = "Herb Storage",
                    job = "whitewidow",
                },
            },
            distance = 2.5
        })

        exports['qb-target']:AddBoxZone("wwHerbGrinding", vector3(165.44, -235.78, 50.06), 3, 1, {
            name = "wwHerbGrinding",
            heading = 250,
            debugPoly = Config.debugPoly,
            minZ = 48.0,
            maxZ = 52.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "vh-whitewidow:client:OpenHerbGrinding",
                    icon = "fas fa-solid fa-fan",
                    label = "Herb Grinding",
                    job = "whitewidow",
                },
            },
            distance = 2.5
        })

        exports['qb-target']:AddBoxZone("wwRollingTable", vector3(174.05, -235.21, 50.06), 2, 0.8, {
            name = "wwRollingTable",
            heading = 250,
            debugPoly = Config.debugPoly,
            minZ = 48.0,
            maxZ = 52.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "vh-whitewidow:client:OpenRollingTable",
                    icon = "fas fa-cannabis",
                    label = "Rolling Table",
                    job = "whitewidow",
                },
            },
            distance = 2.5
        })

    -- Flower [Side(Row(# from Center))]
    -- R1
        exports['qb-target']:AddBoxZone("FlowerR11", vector3(166.25, -238.21, 50.06), 0.5, 0.5, {
            name = "FlowerR11",
            heading = 340,
            debugPoly = Config.debugPoly,
            minZ = 48.0,
            maxZ = 52.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "vh-whitewidow:client:HarvestPlant",
                    icon = "fas fa-solid fa-hand-scissors",
                    label = "Harvest Plant",
                    job = "whitewidow",
                },
            },
            distance = 2.5
        })

    -- L1
        exports['qb-target']:AddBoxZone("FlowerL11", vector3(169.62, -239.42, 50.06), 0.5, 0.5, {
            name = "FlowerL11",
            heading = 340,
            debugPoly = Config.debugPoly,
            minZ = 48.0,
            maxZ = 52.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "vh-whitewidow:client:HarvestPlant",
                    icon = "fas fa-solid fa-hand-scissors",
                    label = "Harvest Plant",
                    job = "whitewidow",
                },
            },
            distance = 2.5
        })    
end)