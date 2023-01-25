//PLOT ARMOR

/obj/item/clothing/suit/space/booker
	name = "lord-protector armor"
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	icon_state = "inqarmor_alt"
	item_state = "inqarmor_alt"
	item_icons = list(slot_wear_suit_str = 'customs/icons/mob/custom_items_mob.dmi')
	item_state_slots = list(
		slot_l_hand_str = "space_suit_syndicate",
		slot_r_hand_str = "space_suit_syndicate",
	)
	desc = "If you can see the armor up close, it's probably a bad sign"
	w_class = ITEM_SIZE_NORMAL
	armor = list(
		melee = ARMOR_MELEE_SHIELDED,
		bullet = ARMOR_BALLISTIC_HEAVY,
		laser = ARMOR_LASER_HEAVY,
		energy = ARMOR_ENERGY_SHIELDED,
		bomb = ARMOR_BOMB_SHIELDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
)
/obj/item/clothing/head/helmet/space/booker
	name = "atmos patch"
	icon_state = "dermal"
	item_state = "dermal"
	desc = "This implant strengthens the skull and protects it from the atmosphere. A miracle of technology!"
	flags_inv = null
	armor = list(
		melee = ARMOR_MELEE_SHIELDED,
		bullet = ARMOR_BALLISTIC_HEAVY,
		laser = ARMOR_LASER_HEAVY,
		energy = ARMOR_ENERGY_SHIELDED,
		bomb = ARMOR_BOMB_SHIELDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
