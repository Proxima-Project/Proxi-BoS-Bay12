/obj/item/clothing/suit/armor/pcarrier/grey
	name = "grey plate carrier"
	desc = "A lightweight grey plate carrier vest. It can be equipped with armor plates, but provides no protection of its own."
	icon = 'icons/boh/obj/clothing/obj_modular_armor.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/boh/mob/onmob/onmob_modular_armor.dmi')
	icon_state = "pcarrier_grey"

/obj/item/clothing/suit/armor/pcarrier/grey/light
	accessories = list(/obj/item/clothing/accessory/armor_plate)

/obj/item/clothing/suit/armor/pcarrier/grey/light/civ
	accessories = list(/obj/item/clothing/accessory/armor_plate, /obj/item/clothing/accessory/armor_tag/civ)

/obj/item/clothing/suit/armor/pcarrier/grey/light/med
	accessories = list(/obj/item/clothing/accessory/armor_plate, /obj/item/clothing/accessory/armor_tag/civ/med)
