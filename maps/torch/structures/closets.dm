/*
 * Torch Excavation
 */

/obj/structure/closet/toolcloset/excavation
	name = "excavation equipment closet"
	desc = "It's a storage unit for excavation equipment."
	closet_appearance = /decl/closet_appearance/secure_closet/engineering/tools

/obj/structure/closet/toolcloset/excavation/WillContain()
	return list(
		/obj/item/storage/belt/archaeology,
		/obj/item/storage/excavation,
		/obj/item/device/flashlight/lantern,
		/obj/item/device/ano_scanner,
		/obj/item/device/depth_scanner,
		/obj/item/device/core_sampler,
		/obj/item/device/gps,
		/obj/item/pinpointer/radio,
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/glasses/science,
		/obj/item/pickaxe,
		/obj/item/device/measuring_tape,
		/obj/item/pickaxe/xeno/hand,
		/obj/item/storage/bag/fossils,
		/obj/item/hand_labeler,
		/obj/item/taperoll/research,
		/obj/item/device/spaceflare
	)

/obj/structure/closet/wardrobe/ptgear
	name = "pt gear wardrobe"
	closet_appearance = /decl/closet_appearance/wardrobe/white

/obj/structure/closet/wardrobe/ptgear/WillContain()
	return list(
		/obj/item/clothing/under/solgov/pt/expeditionary = 4,
		/obj/item/clothing/shoes/white = 2,
		/obj/item/clothing/shoes/black = 2)

/obj/random/torchcloset //Random closets taking into account torch-specific ones
	name = "random closet"
	desc = "This is a random closet."

/obj/random/torchcloset/spawn_choices()
	return list(/obj/structure/closet,
				/obj/structure/closet/firecloset,
				/obj/structure/closet/emcloset,
				/obj/structure/closet/jcloset_torch,
				/obj/structure/closet/athletic_mixed,
				/obj/structure/closet/toolcloset,
				/obj/structure/closet/toolcloset/excavation,
				/obj/structure/closet/l3closet/general,
				/obj/structure/closet/cabinet,
				/obj/structure/closet/crate,
				/obj/structure/closet/crate/freezer,
				/obj/structure/closet/crate/freezer/rations,
				/obj/structure/closet/crate/internals,
				/obj/structure/closet/crate/trashcart,
				/obj/structure/closet/crate/medical,
				/obj/structure/closet/boxinggloves,
				/obj/structure/closet/secure_closet/crew,
				/obj/structure/closet/secure_closet/crew/research,
				/obj/structure/closet/secure_closet/guncabinet,
				/obj/structure/largecrate,
				/obj/structure/closet/wardrobe/xenos,
				/obj/structure/closet/wardrobe/mixed,
				/obj/structure/closet/wardrobe/suit)

/obj/structure/closet/secure_closet/brig/WillContain()
	return null

//INFANTRY LOCKERS HERE - YAWET330 CHANGES BELOW AS FOLLOWS: SIDEARMS

/obj/structure/closet/secure_closet/infantry
	name = "marine locker"
	req_access = list(access_marines)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/security/warden

/obj/structure/closet/secure_closet/infantry/WillContain()
	return list(
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/device/flashlight/maglight,
		/obj/item/material/knife/combat,
		/obj/item/clothing/glasses/tacgoggles,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/suit/armor/pcarrier/light,
		/obj/item/extinguisher/mini,
		/obj/item/device/gps,
		/obj/item/storage/box/flares,
//		/obj/item/gunbox/infantry,
//		/obj/item/gunbox/sidearm/infantry
		)

/obj/structure/closet/secure_closet/martech
	name = "technician's locker"
	req_access = list(access_martech)
	closet_appearance = /decl/closet_appearance/secure_closet/engineering

/obj/structure/closet/secure_closet/inftech/WillContain()
	return list(
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/device/flashlight/maglight,
		/obj/item/material/knife/combat,
		/obj/item/clothing/glasses/tacgoggles,
		/obj/item/storage/belt/utility,
		/obj/item/storage/backpack/weldpack,
		/obj/item/storage/box/flares,
		/obj/item/device/gps,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/suit/armor/pcarrier/light,
//		/obj/item/gunbox/inftech,
//		/obj/item/gunbox/sidearm/infantry
		)

//demolocker
/obj/structure/closet/secure_closet/inftech/ammo
	name = "technician's support locker"
	req_access = list(access_martech)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/security/warden

/obj/structure/closet/secure_closet/inftech/ammo/WillContain()
	return list(
		/obj/item/ammo_magazine/mil_rifle/sec/large,
		/obj/item/ammo_magazine/mil_rifle/sec/large,
		/obj/item/ammo_magazine/mil_rifle/sec/large,
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/ammo_casing/rocket/rcr,
		/obj/item/ammo_casing/rocket/rcr
		)

/obj/structure/closet/secure_closet/squad_lead
	name = "squad leader's locker"
	req_access = list(access_marlead)
	closet_appearance = /decl/closet_appearance/secure_closet/security/hos

/obj/structure/closet/secure_closet/squad_lead/WillContain()
	return list(
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/device/flashlight/maglight,
		/obj/item/material/knife/combat,
		/obj/item/clothing/glasses/tacgoggles,
		/obj/item/storage/firstaid/combat,
		/obj/item/lordbanner,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/suit/armor/pcarrier/medium,
		/obj/item/device/megaphone,
		/obj/item/device/gps,
		/obj/item/storage/box/flares,
//		/obj/item/gunbox/infcom,
//		/obj/item/gunbox/sidearm/infantry
		)

/obj/structure/closet/secure_closet/marmed
	name = "medic's locker"
	req_access = list(access_marmed)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/medical

/obj/structure/closet/secure_closet/infmed/WillContain()
	return list(
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/reagent_containers/syringe,
		/obj/item/storage/firstaid/combat,
		/obj/item/device/flashlight/maglight,
		/obj/item/material/knife/combat,
		/obj/item/rig_module/vision/medhud,
		/obj/item/rig_module/chem_dispenser/injector,
		/obj/item/bodybag/rescue,
		/obj/item/bodybag/rescue,
		/obj/item/clothing/glasses/tacgoggles,
		/obj/item/storage/belt/utility,
		/obj/item/storage/backpack/weldpack,
		/obj/item/storage/box/flares,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/suit/armor/pcarrier/light,
//		/obj/item/gunbox/infmed,
		/obj/item/device/gps,
		/obj/item/defibrillator/compact,
		/obj/item/reagent_containers/glass/bottle/antitoxin,
		/obj/item/reagent_containers/glass/bottle/inaprovaline,
//		/obj/item/gunbox/sidearm/infantry
		)

/////////
// Cadet Locker
/////////
/obj/structure/closet/secure_closet/security_torch/cadet
	name = "cadet locker"

/obj/structure/closet/secure_closet/security_torch/cadet/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/light/security,
		/obj/item/clothing/head/helmet,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/device/radio/headset/headset_sec/alt,
		/obj/item/device/flash,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/melee/baton/loaded,
//		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/taperoll/police,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/gloves/thick,
		/obj/item/device/holowarrant,
		/obj/item/device/flashlight/maglight,
		/obj/item/storage/belt/security)

/////////
// Triage Locker
////////
/obj/structure/closet/secure_closet/triagesec
	name = "triage locker"
	req_access = list(access_brig)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/medical

/obj/structure/closet/secure_closet/triagesec/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium/security,
		/obj/item/clothing/head/helmet,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/device/radio/headset/headset_sec/alt,
		/obj/item/storage/belt/holster/security,
		/obj/item/device/flash,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/device/hailer,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/gunbox,
		/obj/item/device/megaphone,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/gloves/thick/duty/solgov/sec,
		/obj/item/device/flashlight/maglight,
		/obj/item/storage/belt/security,
		/obj/item/material/knife/folding/swiss,
		/obj/item/storage/belt/medical/emt,
		/obj/item/clothing/mask/gas/half,
		/obj/item/storage/box/autoinjectors,
		/obj/item/device/scanner/health,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/storage/firstaid/adv,
		/obj/item/clothing/accessory/storage/holster/waist
	)

//inf
/obj/structure/closet/secure_closet/triagesec/inf
	name = "triage locker"
	req_access = list(access_marmed)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/medical

/obj/structure/closet/secure_closet/triagesec/inf/WillContain()
	return list(
		/obj/item/device/megaphone,
		/obj/item/clothing/gloves/latex,
		/obj/item/material/knife/folding/swiss,
		/obj/item/storage/belt/medical/emt,
		/obj/item/storage/box/autoinjectors,
		/obj/item/device/scanner/health,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/storage/firstaid/adv,
	)
