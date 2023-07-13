/obj/item/gun/projectile/shotgun/pump/mirania
	name = "KS-23M Racist"
	desc = "Originaly, modification of old Hephaestus KS-23, made in Mirania."
	icon = 'icons/bos/obj/guns/ks_23m.dmi'
	icon_state = "KS-23M"
	item_state = "cshotgun"
	wielded_item_state = "cshotgun-wielded"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 3)
	max_shells = 3
	ammo_type = /obj/item/ammo_casing/shotgun/pellet/giant
	one_hand_penalty = 9
	bulk = 8
	screen_shake = 6

/obj/item/gun/projectile/shotgun/pump/mirania/update_icon()
	return
