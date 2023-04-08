**vh-whitewidow**

An open-source White Widow job using qb-target.

Dependencies
 - ps-buffs
 - ps-objects
 - qb-target
 - Requires White Widow MLO which can be **PURCHASED** here: https://jenscreations.tebex.io/package/5169767


## Create job for QBCore
```
['whitewidow'] = {
    label = 'White Widow',
    defaultDuty = false,
    offDutyPay = false,
    grades = {
        ['0'] = {
            name = 'Trainee',
            payment = 250
        },
        ['1'] = {
            name = 'Budtender',
            payment = 400
        },
        ['2'] = {
            name = 'Manager',
            payment = 550
        },
        ['3'] = {
            name = 'Owner',
            isboss = true,
            bankAuth = true,
            payment = 650
        },
    },
},
```

## Items for QBCore.shared.items.lua
```
	-- White Widow
	['zippo'] 				 	 	 = {['name'] = 'zippo', 			  	  		['label'] = 'Zippo', 					['weight'] = 0, 		["degrade"] = 1.0,		['type'] = 'item', 		['image'] = 'zippo.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A reliable flame any time every time.',  ["created"] = nil, 		["decay"] = 28.0,	},
	['infusedgummies'] 				 = {['name'] = 'infusedgummies', 				['label'] = 'Infused Gummies', 			['weight'] = 250, 		["degrade"] = 1.0,		['type'] = 'item', 		['image'] = 'ww-infusedgummies.png', 				['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'THC-infused gummies for longer-term stress relief',  ["created"] = nil, ["decay"] = 28.0,	},
	['infusedgummy'] 			 	 = {['name'] = 'infusedgummy', 			  		['label'] = 'Infused Gummy', 			['weight'] = 50, 		['type'] = 'item', 		['image'] = 'ww-infusedgummy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Infused Gummy from White Widow'},
	['ww-infusedbrownie'] 			 = {['name'] = 'ww-infusedbrownie', 			['label'] = 'Infused Brownie', 			['weight'] = 50, 		['type'] = 'item', 		['image'] = 'ww-infusedbrownie.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Infused Brownie from White Widow'},
	['ww-infusedcookie'] 			 = {['name'] = 'ww-infusedcookie', 			  	['label'] = 'Infused Cookie', 			['weight'] = 50, 		['type'] = 'item', 		['image'] = 'ww-infusedcookie.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Infused Cookie from White Widow'},
	['ww-purplestankbud'] 			 = {['name'] = 'ww-purplestankbud', 			['label'] = 'Purple Stank Bud', 		['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'ww-purplestankbud.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A sticky nug of Purple Stank'},
	['ww-purplestankflower'] 		 = {['name'] = 'ww-purplestankflower', 			['label'] = 'Purple Stank Flower', 		['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'ww-purplestankflower.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Freshly Ground Purple Stank'},
	['ww-purplestankjoint'] 		 = {['name'] = 'ww-purplestankjoint', 			['label'] = 'Purple Stank Joint', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'ww-purplestankjoint.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Nicely rolled joint of Purple Stank.'},
	['ww-lsconfidentialbud'] 		 = {['name'] = 'ww-lsconfidentialbud', 			['label'] = 'LS Confidential Bud', 		['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'ww-lsconfidentialbud.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A sticky nug of LS Confidential'},
	['ww-lsconfidentialflower'] 	 = {['name'] = 'ww-lsconfidentialflower', 		['label'] = 'LS Confidential Flower', 	['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'ww-lsconfidentialflower.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Freshly Ground LS Confidential'},
	['ww-lsconfidentialjoint'] 		 = {['name'] = 'ww-lsconfidentialjoint', 		['label'] = 'LS Confidential Joint', 	['weight'] = 500, 		['type'] = 'item', 		['image'] = 'ww-lsconfidentialjoint.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Nicely rolled joint of LS Confidential.'},
	['ww-lsstrawberrybananabud'] 	 = {['name'] = 'ww-lsstrawberrybananabud', 		['label'] = 'LS Strawberry Banana Bud', ['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'ww-lsconfidentialbud.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A sticky nug of LS Strawberry Banana'},
	['ww-lsstrawberrybananaflower']  = {['name'] = 'ww-lsstrawberrybananaflower', 	['label'] = 'LS Strawberry Banana Flower',['weight'] = 2000, 	['type'] = 'item', 		['image'] = 'ww-lsstrawberrybananaflower.png',['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Freshly Ground LS Strawberry Banana'},
	['ww-lsstrawberrybananajoint'] 	 = {['name'] = 'ww-lsstrawberrybananajoint', 	['label'] = 'LS Strawberry Banana Joint', ['weight'] = 500, 	['type'] = 'item', 		['image'] = 'ww-lsstrawberrybananajoint.png', ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Nicely rolled joint of LS Strawberry Banana.'},
	['ww-cbdzkittlesbud'] 	 		 = {['name'] = 'ww-cbdzkittlesbud', 			['label'] = 'CBD Zkittles Bud', 		['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'ww-cbdzkittlesbud.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A sticky nug of CBD Zkittles'},
	['ww-cbdzkittlesflower']  		 = {['name'] = 'ww-cbdzkittlesflower', 			['label'] = 'CBD Zkittles Flower',		['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'ww-cbdzkittlesflower.png',		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Freshly Ground CBD Zkittles'},
	['ww-cbdzkittlesjoint'] 	 	 = {['name'] = 'ww-cbdzkittlesjoint', 			['label'] = 'CBD Zkittles Joint', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'ww-cbdzkittlesjoint.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Nicely rolled joint of CBD Zkittles.'},

	['ww-cookiemix'] 			 	 = {['name'] = 'ww-cookiemix', 					['label'] = 'Cookie Mix', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'ww-cookiemix.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Cooking ingredient for edible production.'},
	['ww-browniemix'] 			 	 = {['name'] = 'ww-browniemix', 				['label'] = 'Brownie Mix', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'ww-browniemix.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Cooking ingredient for edible production.'},
	['ww-gummymix'] 			 	 = {['name'] = 'ww-gummymix', 					['label'] = 'Gummy Mix', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'ww-gummymix.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Cooking ingredient for edible production.'},
	['ww-bkdistillate'] 			 = {['name'] = 'ww-bkdistillate', 				['label'] = 'Banana Kush Distillate', 	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'ww-bkdistillate.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Cooking ingredient for edible production.'},
	['ww-cldistillate'] 			 = {['name'] = 'ww-cldistillate', 				['label'] = 'Cherry Lemon Distillate', 	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'ww-cldistillate.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Cooking ingredient for edible production.'},
	['ww-gbdistillate'] 			 = {['name'] = 'ww-gbdistillate', 				['label'] = 'Gorilla Butter Distillate',['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'ww-gbdistillate.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Cooking ingredient for edible production.'},
```

## Move images from vh-whitewidow.images to your inventory folder.