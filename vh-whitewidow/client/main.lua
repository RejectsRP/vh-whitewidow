local QBCore = exports["qb-core"]:GetCoreObject()

isLoggedIn = true
PlayerJob = {}
onDuty = false
vehSpawnLocation = Config.VehicleSpawnLocation
SmokingWeed = false
RelieveCount = 0

-- Create blip
Citizen.CreateThread(function()
    WhiteWidow = AddBlipForCoord(194.88, -242.92, 54.07)
    SetBlipSprite (WhiteWidow, 469)
    SetBlipDisplay(WhiteWidow, 4)
    SetBlipScale  (WhiteWidow, 0.9)
    SetBlipAsShortRange(WhiteWidow, true)
    SetBlipColour(WhiteWidow, 25)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("White Widow")
    EndTextCommandSetBlipName(WhiteWidow)
end)

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "whitewidow" then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
	onDuty = duty	
end)

RegisterNetEvent("vh-whitewidow:client:OpenClockIn", function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job 
		if PlayerData.job.name == 'whitewidow' then 
    		TriggerServerEvent("QBCore:ToggleDuty")
		else
			QBCore.Functions.Notify("You don't work here...")
		end
	end)
end)

RegisterNetEvent("vh-whitewidow:client:OpenTray", function()
	TriggerEvent("inventory:client:SetCurrentStash", "wwTray1")
	TriggerServerEvent("inventory:server:OpenInventory", "stash", "wwTray1", {
		maxweight = 50000,
		slots = 10,
	})
end)

RegisterNetEvent("vh-whitewidow:client:OpenCounterStorage", function()
	if onDuty and QBCore.Functions.GetPlayerData(src).job.name == 'whitewidow' then 
		TriggerEvent("inventory:client:SetCurrentStash", "DayStorage")
		TriggerServerEvent("inventory:server:OpenInventory", "stash", "DayStorage", {
			maxweight = 600000,
			slots = 40,
		})
	elseif not onDuty and QBCore.Functions.GetPlayerData(src).job.name == 'whitewidow' then 
		QBCore.Functions.Notify("You must be on duty to access this", "error")
	elseif QBCore.Functions.GetPlayerData(src).job.name ~= 'whitewidow' then 
		QBCore.Functions.Notify("You must work here to access this", "error")
	end
end)

RegisterNetEvent("vh-whitewidow:client:OpenShop", function()
	if onDuty and QBCore.Functions.GetPlayerData(src).job.name == 'whitewidow' then
		TriggerServerEvent("inventory:server:OpenInventory", "shop", "whitewidow", Config.Items)
	elseif not onDuty and QBCore.Functions.GetPlayerData(src).job.name == 'whitewidow' then 
		QBCore.Functions.Notify("You must be on duty to access this")
	elseif QBCore.Functions.GetPlayerData(src).job.name ~= 'whitewidow' then 
		QBCore.Functions.Notify("You must work here to access this")
	end
end)

RegisterNetEvent("vh-whitewidow:client:OpenSafe", function()
	if onDuty and QBCore.Functions.GetPlayerData(src).job.name == 'whitewidow' then 
		TriggerEvent("inventory:client:SetCurrentStash", "WidowSafe")
		TriggerServerEvent("inventory:server:OpenInventory", "stash", "WidowSafe", {
			maxweight = 1200000,
			slots = 50,
		})
	elseif not onDuty and QBCore.Functions.GetPlayerData(src).job.name == 'whitewidow' then 
		QBCore.Functions.Notify("You must be on duty to access this")
	elseif QBCore.Functions.GetPlayerData(src).job.name ~= 'whitewidow' then 
		QBCore.Functions.Notify("You must work here to access this")
	end
end)

RegisterNetEvent("vh-whitewidow:client:OpenHerbStorage", function()
	if onDuty and QBCore.Functions.GetPlayerData(src).job.name == 'whitewidow' then 
		TriggerEvent("inventory:client:SetCurrentStash", "HerbStorage")
		TriggerServerEvent("inventory:server:OpenInventory", "stash", "HerbStorage", {
			maxweight = 1200000,
			slots = 50,
		})
	elseif not onDuty and QBCore.Functions.GetPlayerData(src).job.name == 'whitewidow' then 
		QBCore.Functions.Notify("You must be on duty to access this")
	elseif QBCore.Functions.GetPlayerData(src).job.name ~= 'whitewidow' then 
		QBCore.Functions.Notify("You must work here to access this")
	end
end)

-- Grinding
RegisterNetEvent("vh-whitewidow:client:OpenHerbGrinding", function()
	-- if onDuty and QBCore.Functions.GetPlayerData(src).job.name == 'whitewidow' then 
		exports["qb-menu"]:openMenu({
			{
				header = "Grinding Station",
				isMenuHeader = true, -- Set to true to make a nonclickable title
				icon = "fas fa-cannabis", -- Set this to any fontawesome icon!
			},
			{
				header = "Purple Stank",
				txt = "Requires 1 bud of Purple Stank",
				params = {
					event = "vh-whitewidow:client:GrindBud",
					args = {
					    strain = "purplestank",
					}
				}
			},
			{
				header = "LS Confidential",
				txt = "Requires 1 bud of LS Confidential",
				params = {
					event = "vh-whitewidow:client:GrindBud",
					args = {
					    strain = "lsconfidential",
					}
				}
			},
			{
				header = "LS Strawberry Banana",
				txt = "Requires 1 bud of LS Strawberry Banana",
				params = {
					event = "vh-whitewidow:client:GrindBud",
					args = {
					    strain = "lsstrawberrybanana",
					}
				}
			},
			{
				header = "CBD Zkittles",
				txt = "Requires 1 bud of CBD Zkittles",
				params = {
					event = "vh-whitewidow:client:GrindBud",
					args = {
					    strain = "cbdzkittles",
					}
				}
			},
		})
	-- elseif not onDuty and QBCore.Functions.GetPlayerData(src).job.name == 'whitewidow' then 
	-- 	QBCore.Functions.Notify("You must be on duty to access this")
	-- elseif QBCore.Functions.GetPlayerData(src).job.name ~= 'whitewidow' then 
	-- 	QBCore.Functions.Notify("You must work here to access this")
	-- end
end)

RegisterNetEvent("vh-whitewidow:client:GrindBud", function(data)
	local strain = data.strain
	print("strain: " .. strain)

	if strain == "purplestank" then 
		QBCore.Functions.TriggerCallback('vh-whitewidow:server:GrindPurpleStank', function(HasItems)  
			if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Grinding Purple Stank...", 5000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent("vh-whitewidow:server:RewardPurpleStankFlower")
					QBCore.Functions.Notify("You ground five servings of Purple Stank", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled...", "error")
				end)
			else
				QBCore.Functions.Notify("You don\'t have the ingredients to make this", "error")
			end
		end)
	elseif strain == "lsconfidential" then
		QBCore.Functions.TriggerCallback('vh-whitewidow:server:GrindLSConfidential', function(HasItems)  
			if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Grinding LS Confidential...", 5000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent("vh-whitewidow:server:RewardLSConfidentialFlower")
					QBCore.Functions.Notify("You ground five servings of LS Confidential", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled...", "error")
				end)
			else
				QBCore.Functions.Notify("You don't have the ingredients to make this", "error")
			end
		end)
	elseif strain == "lsstrawberrybanana" then 
		QBCore.Functions.TriggerCallback('vh-whitewidow:server:GrindLSStrawberryBanana', function(HasItems)  
			if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Grinding LS Strawberry Banana...", 5000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent("vh-whitewidow:server:RewardLSStrawberryBananaFlower")
					QBCore.Functions.Notify("You ground five servings of LS Strawberry Banana", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled...", "error")
				end)
			else
				QBCore.Functions.Notify("You don\'t have the ingredients to make this", "error")
			end
		end)	
	elseif strain == "cbdzkittles" then 
		QBCore.Functions.TriggerCallback('vh-whitewidow:server:GrindCBDZkittles', function(HasItems)  
			if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Grinding CBD Zkittles...", 5000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent("vh-whitewidow:server:RewardCBDZkittlesFlower")
					QBCore.Functions.Notify("You ground five servings of CBD Zkittles", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled...", "error")
				end)
			else
				QBCore.Functions.Notify("You don\'t have the ingredients to make this", "error")
			end
		end)
	else
		QBCore.Functions.Notify("Something isn't right.", "error")
	end
end)

-- Rolling
RegisterNetEvent("vh-whitewidow:client:OpenRollingTable", function()
	-- if onDuty and QBCore.Functions.GetPlayerData(src).job.name == 'whitewidow' then 
		exports["qb-menu"]:openMenu({
			{
				header = "Rolling Station",
				isMenuHeader = true, -- Set to true to make a nonclickable title
				icon = "fas fa-cannabis", -- Set this to any fontawesome icon!
			},
			{
				header = "Purple Stank",
				txt = " - 5 ground flower, 5 rolling paper",
				params = {
					event = "vh-whitewidow:client:RollJoint",
					args = {
					    strain = "purplestank",
					}
				}
			},
			{
				header = "LS Confidential",
				txt = " - 5 ground flower, 5 rolling paper",
				params = {
					event = "vh-whitewidow:client:RollJoint",
					args = {
					    strain = "lsconfidential",
					}
				}
			},
			{
				header = "LS Strawberry Banana",
				txt = " - 5 ground flower, 5 rolling paper",
				params = {
					event = "vh-whitewidow:client:RollJoint",
					args = {
					    strain = "lsstrawberrybanana",
					}
				}
			},
			{
				header = "CBD Zkittles",
				txt = " - 5 ground flower, 5 rolling paper",
				params = {
					event = "vh-whitewidow:client:RollJoint",
					args = {
					    strain = "cbdzkittles",
					}
				}
			},
		})
	-- elseif not onDuty and QBCore.Functions.GetPlayerData(src).job.name == 'whitewidow' then 
	-- 	QBCore.Functions.Notify("You must be on duty to access this")
	-- elseif QBCore.Functions.GetPlayerData(src).job.name ~= 'whitewidow' then 
	-- 	QBCore.Functions.Notify("You must work here to access this")
	-- end
end)

RegisterNetEvent("vh-whitewidow:client:RollJoint", function(data)
	local strain = data.strain -- "lsconfidential"
	
	if strain == "purplestank" then
		QBCore.Functions.TriggerCallback('vh-whitewidow:server:RollPurpleStank', function(HasItems)  
			if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Rolling Joint...", 5000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent("vh-whitewidow:server:RewardPurpleStankJoints")
					QBCore.Functions.Notify("You rolled five Purple Stank joints!", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled...", "error")
				end)
			else
				QBCore.Functions.Notify("You don\'t have the ingredients to make this", "error")
			end
		end)
	elseif strain == "lsconfidential" then
		QBCore.Functions.TriggerCallback('vh-whitewidow:server:RollLSConfidential', function(HasItems)  
			if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Rolling Joint...", 5000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent("vh-whitewidow:server:RewardLSConfidentialJoints")
					QBCore.Functions.Notify("You rolled five LS Confidential joints!", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled...", "error")
				end)
			else
				QBCore.Functions.Notify("You don\'t have the ingredients to make this", "error")
			end
		end)
	elseif strain == "lsstrawberrybanana" then 
		QBCore.Functions.TriggerCallback('vh-whitewidow:server:RollLSStrawberryBanana', function(HasItems)  
			if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Rolling Joint...", 5000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent("vh-whitewidow:server:RewardLSStrawberryBananaJoints")
					QBCore.Functions.Notify("You rolled five LS Strawberry Banana joints!", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled...", "error")
				end)
			else
				QBCore.Functions.Notify("You don\'t have the ingredients to make this", "error")
			end
		end)
	elseif strain == "cbdzkittles" then 
		QBCore.Functions.TriggerCallback('vh-whitewidow:server:RollCBDZkittles', function(HasItems)  
			if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Rolling Joint...", 5000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent("vh-whitewidow:server:RewardCBDZkittlesJoints")
					QBCore.Functions.Notify("You rolled five CBD Zkittles joints!", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled...", "error")
				end)
			else
				QBCore.Functions.Notify("You don\'t have the ingredients to make this", "error")
			end
		end)
	else
		QBCore.Functions.Notify("Something isn't right.", "error")
	end
end)

-- Billing --
RegisterNetEvent('vh-whitewidow:client:BillPlayer', function()
    local bill = exports['qb-input']:ShowInput({
        header = "Create Receipt",
            submitText = "Bill",
        inputs = {
            {
                text = "Server ID(#)",
                name = "citizenid",
                type = "text",
                isRequired = true
            },
            {
                text = "($) Bill Price",
                name = "billprice",
                type = "number",
                isRequired = true
            }
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then
            return
        end
        TriggerServerEvent("vh-whitewidow:server:Charge", bill.citizenid, bill.billprice)
    end
end)