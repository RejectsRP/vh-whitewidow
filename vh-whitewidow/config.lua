Config = {}
Config.debugPoly = false -- set true to show polyzones for testing

-- Job Vehicle
Config.JobVehicle = "cheetah2" -- not yet implemented
Config.VehicleSpawnLocation = vector4(364.88, -826.07, 29.29, 178.79) -- not yet implemented

-- Database query
Config.SQL = 'oxmysql' --- oxmysql or ghmattisql

-- Edible Stress Amounts
Config.BrownieMinStress = 15 -- min amount of stress to be relieved per tick
Config.BrownieMaxStress = 20 -- max amount of stress to be relieved per tick
Config.GummyMinStress = 15 -- min amount of stress to be relieved per tick
Config.GummyMaxStress = 20 -- max amount of stress to be relieved per tick
Config.CookieMinStress = 15 -- min amount of stress to be relieved per tick
Config.CookieMaxStress = 20 -- max amount of stress to be relieved per tick

-- Multiply ReliefCount by ReliefInterval for total seconds
Config.BrownieMaxReliefCount = 10 -- times you will relieve stress
Config.BrownieReliefInterval = 30 -- seconds between stress relief
Config.GummyMaxReliefCount = 10 -- times you will relieve stress
Config.GummyReliefInterval = 30 -- seconds between stress relief
Config.CookieMaxReliefCount = 10 -- times you will relieve stress
Config.CookieReliefInterval = 30 -- seconds between stress relief

-- Joints
Config.JointMaxReliefCount = 3 -- times you will relieve stress from custom joints
Config.JointReliefInterval = 10 -- seconds between stress relief from custom joints

Config.NormalJointMinStress = 2 -- min stress relieved per tick
Config.NormalJointMaxStress = 3 -- max stress relieved per tick

Config.CarameloMinStressRelief = 5 -- min stress relieved per tick
Config.CarameloMaxStressRelief = 6 -- max stress relieved per tick

Config.MedicalMinStressRelief = 5 -- min stress relieved per tick
Config.MedicalMaxStressRelief = 6 -- max stress relieved per tick
Config.MedicalHealingAmount = 10 -- amount to heal per tick

Config.HeavenMinStressRelief = 10 -- min stress relieved per tick
Config.HeavenMaxStressRelief = 13 -- max stress relieved per tick

-- Shop Items
Config.Items = {
label = "Shop",
    slots = 10,
    items = {
        [1] = {
            name = "zippo",
            price = 0,
            amount = 20,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "empty_weed_bag",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "rolling_paper",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        -- ==========================================================
        -- These will be taken out once harvesting is implemented
        -- ==========================================================
            [4] = {
                name = "ww-purplestankbud",
                price = 0,
                amount = 50,
                info = {},
                type = "item",
                slot = 4,
            },
            [5] = {
                name = "ww-lsconfidentialbud",
                price = 0,
                amount = 50,
                info = {},
                type = "item",
                slot = 5,
            },
            [6] = {
                name = "ww-lsstrawberrybananabud",
                price = 0,
                amount = 50,
                info = {},
                type = "item",
                slot = 6,
            },
            [7] = {
                name = "ww-cbdzkittlesbud",
                price = 0,
                amount = 50,
                info = {},
                type = "item",
                slot = 7,
            },
        -- ==========================================================
        [8] = {
            name = "ww-cookiemix",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "ww-browniemix",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "ww-gummymix",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "ww-bkdistillate",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "ww-cldistillate",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "ww-gbdistillate",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 13,
        },
    },
}



Config.WeedStrains = {
    [1] = {
        strain = "purplestank",
        bud = "ww-purplestankbud",
        flower = "ww-purplestankflower", 
        joint = "ww-purplestankjoint"
    },
    [2] = {
        strain = "lsconfidential",
        bud = "ww-lsconfidentialbud",
        flower = "ww-lsconfidentialflower", 
        joint = "ww-lsconfidentialjoint"
    },
    [3] = {
        strain = "lsstrawberrybanana",
        bud = "ww-lsstrawberrybananabud",
        flower = "ww-lsstrawberrybananaflower", 
        joint = "ww-lsstrawberrybananajoint"
    },
    [4] = {
        strain = "cbdzkittles",
        bud = "ww-cbdzkittlesbud",
        flower = "ww-cbdzkittlesflower", 
        joint = "ww-cbdzkittlesjoint"
    },
}