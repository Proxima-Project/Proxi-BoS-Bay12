/obj/item/clothing/under/lordan
	name = "lordania uniform parent object"
	desc = "You shouldn't be seeing this."
	icon = 'maps/torch/bos/icons/obj/obj_under_lordania.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/torch/bos/icons/mob/onmob_under_lordania.dmi')
	siemens_coefficient = 0.8
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/bos/icons/mob/species/unathi/onmob_under_unathi.dmi'
		)


//Utility

/obj/item/clothing/under/lordan/utility
	name = "marine urban utility uniform"
	desc = "The utility uniform of the LSS Marine Corps, made from durable material."
	icon_state = "greyutility"
	item_state = "greyutility"
	worn_state = "greyutility"
	armor = list(
		melee = ARMOR_MELEE_MINOR,
		energy = ARMOR_ENERGY_MINOR
		)

/obj/item/clothing/under/lordan/utility/tan
	name = "marine tan utility uniform"
	desc = "A tan version of the LSS Marine utility uniform, made from durable material."
	icon_state = "tanutility"
	item_state = "tanutility"
	worn_state = "tanutility"

/obj/item/clothing/under/lordan/utility/tan/command
	accessories = list(/obj/item/clothing/accessory/lordan/department/command/marine)

/obj/item/clothing/under/lordan/utility/green
	name = "marine utility uniform"
	desc = "A green version of the LSS Marine utility uniform, made from durable material."
	icon_state = "greenutility"
	item_state = "greenutility"
	worn_state = "greenutility"

/obj/item/clothing/under/lordan/utility/green/command
	accessories = list(/obj/item/clothing/accessory/lordan/department/command/marine)

/obj/item/clothing/under/lordan/utility/green/engineering
	accessories = list(/obj/item/clothing/accessory/lordan/department/engineering/marine)

/obj/item/clothing/under/lordan/utility/green/medical
	accessories = list(/obj/item/clothing/accessory/lordan/department/medical/marine)

/obj/item/clothing/under/lordan/utility/fleet
	name = "lordanian fleet utility uniform"
	desc = "The utility uniform of the LSS Fleet, made from an insulated material."
	icon_state = "navyutility"
	item_state = "navyutility"
	worn_state = "navyutility"

/obj/item/clothing/under/lordan/utility/fleet/command
	accessories = list(/obj/item/clothing/accessory/lordan/department/command/fleet)

/obj/item/clothing/under/lordan/utility/fleet/command/pilot
	accessories = list(/obj/item/clothing/accessory/lordan/specialty/pilot)

/obj/item/clothing/under/lordan/utility/fleet/engineering
	accessories = list(/obj/item/clothing/accessory/lordan/department/engineering/fleet)

/obj/item/clothing/under/lordan/utility/fleet/security
	accessories = list(/obj/item/clothing/accessory/lordan/department/security/fleet)

/obj/item/clothing/under/lordan/utility/fleet/medical
	accessories = list(/obj/item/clothing/accessory/lordan/department/medical/fleet)

/obj/item/clothing/under/lordan/utility/fleet/supply
	accessories = list(/obj/item/clothing/accessory/lordan/department/supply/fleet)

/obj/item/clothing/under/lordan/utility/fleet/service
	accessories = list(/obj/item/clothing/accessory/lordan/department/service/fleet)

/obj/item/clothing/under/lordan/utility/fleet/exploration
	accessories = list(/obj/item/clothing/accessory/lordan/department/exploration/fleet)

/obj/item/clothing/under/lordan/utility/fleet/combat
	name = "fleet fatigues"
	desc = "Alternative utility uniform of the LSS Fleet, for when coveralls are impractical."
	icon_state = "navycombat"
	worn_state = "navycombat"
	armor = list(
		melee = ARMOR_MELEE_SMALL,
		bullet = ARMOR_BALLISTIC_SMALL,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_MINOR
		)

/obj/item/clothing/under/lordan/utility/fleet/combat/security
	accessories = list(/obj/item/clothing/accessory/lordan/department/security/fleet)

/obj/item/clothing/under/lordan/utility/fleet/combat/medical
	accessories = list(/obj/item/clothing/accessory/lordan/department/medical/fleet, /obj/item/clothing/accessory/armband/medblue)

/obj/item/clothing/under/lordan/utility/fleet/combat/command
	accessories = list(/obj/item/clothing/accessory/lordan/department/command/fleet)

/obj/item/clothing/under/lordan/utility/fleet/combat/exploration
	accessories = list(/obj/item/clothing/accessory/lordan/department/exploration/fleet)

//Service

/obj/item/clothing/under/lordan/service
	name = "service uniform"
	desc = "A service uniform of some kind."
	icon_state = "greenservice"
	item_state = "greenservice"
	worn_state = "greenservice"
	siemens_coefficient = 0.9

/obj/item/clothing/under/lordan/service/green
	name = "marine service uniform"
	desc = "The service uniform of the LSS Marine Corps. Slimming."

/obj/item/clothing/under/lordan/service/green/officer
	name = "marine service uniform"
	desc = "The service uniform of the LSS Marine Corps. This one has gold trim."
	icon_state = "greenservice_com"
	item_state = "greenservice_com"
	worn_state = "greenservice_com"

/obj/item/clothing/under/lordan/service/skirt
	name = "marine service skirt"
	desc = "A feminine version of the LSS Marine Corps service uniform."
	icon_state = "greenservicefem"
	item_state = "greenservicefem"
	worn_state = "greenservicefem"

/obj/item/clothing/under/lordan/service/skirt/officer
	name = "marine service skirt"
	desc = "A feminine version of the LSS Marine Corps service uniform. This one has gold trim."
	icon_state = "greenservicefem_com"
	item_state = "greenservicefem_com"
	worn_state = "greenservicefem_com"

/obj/item/clothing/under/lordan/service/fleet
	name = "fleet service uniform"
	desc = "The service uniform of the LSS Fleet, made from immaculate white fabric."
	icon_state = "whiteservice"
	item_state = "nursesuit"
	worn_state = "whiteservice"
	accessories = list(/obj/item/clothing/accessory/navy)

/obj/item/clothing/under/lordan/service/fleet/skirt
	name = "fleet service skirt"
	desc = "The service uniform skirt of the LSS Fleet, made from immaculate white fabric."
	icon_state = "whiteservicefem"
	item_state = "nursesuit"
	worn_state = "whiteservicefem"

/obj/item/clothing/under/lordan/service/fleet/officer
	name = "fleet service uniform"
	desc = "The service uniform of the LSS Fleet, made from immaculate white fabric."
	icon_state = "whiteservice"
	item_state = "nursesuit"
	worn_state = "whiteservicecom"


/obj/item/clothing/under/lordan/service/fleet/skirt/officer
	name = "fleet service skirt"
	desc = "The service uniform skirt of the LSS Fleet, made from immaculate white fabric."
	icon_state = "whiteservicefem"
	item_state = "nursesuit"
	worn_state = "whiteservicefemcom"

//Dress

/obj/item/clothing/under/lordan/mildress
	name = "dress uniform"
	desc = "The dress uniform of the LSS Marine Corps, class given form."
	icon_state = "blackdress"
	item_state = "blackdress"
	worn_state = "blackdress"
	siemens_coefficient = 0.9

/obj/item/clothing/under/lordan/mildress/officer
	name = "dress uniform"
	desc = "The dress uniform of the LSS Marine Corps, class given form. This one has gold trim."
	icon_state = "blackdress_com"
	item_state = "blackdress_com"
	worn_state = "blackdress_com"

/obj/item/clothing/under/lordan/mildress/skirt
	name = "dress skirt uniform"
	desc = "The dress skirt uniform of the LSS Marine Corps, class given form."
	icon_state = "blackdressfem"
	item_state = "blackdressfem"
	worn_state = "blackdressfem"

/obj/item/clothing/under/lordan/mildress/skirt/officer
	name = "dress skirt uniform"
	desc = "The dress skirt uniform of the LSS Marine Corps, class given form. This one has gold trim."
	icon_state = "blackdressfem_com"
	item_state = "blackdressfem_com"
	worn_state = "blackdressfem_com"

/obj/item/clothing/under/lordan/dress/fleet
	name = "dress uniform"
	desc = "The dress uniform of the LSS Fleet, class given form."
	icon_state = "fldress"
	item_state = "fldress"
	worn_state = "fldress"

/obj/item/clothing/under/lordan/dress/fleet/skirt
	name = "dress skirt uniform"
	desc = "The dress skirt uniform of the LSS Fleet, class given form."
	icon_state = "fldressfem"
	item_state = "fldressfem"
	worn_state = "fldressfem"

/obj/item/clothing/under/lordan/dress/fleet/officer
	name = "dress uniform"
	desc = "The dress uniform of the LSS Fleet, class given form. This one has gold trim."
	icon_state = "fldress"
	item_state = "fldress"
	worn_state = "fldress_com"

/obj/item/clothing/under/lordan/dress/fleet/skirt/officer
	name = "dress skirt uniform"
	desc = "The dress skirt uniform of the LSS Fleet, class given form. This one has gold trim."
	icon_state = "fldressfem"
	item_state = "fldressfem"
	worn_state = "fldressfem_com"