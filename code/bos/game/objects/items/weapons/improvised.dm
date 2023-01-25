/obj/item/material/sword/improvised
	name = "wrenchblade"
	desc = "A large blade welded onto a wrench-based hilt. Functions as a sword, you suppose."
	icon = 'icons/bos/obj/weapons.dmi'
	icon_state = "wrenchsword"
	item_state = "machete"
	max_force = 23
	armor_penetration = 10
	worth_multiplier = 10

/obj/item/material/knife/combat/improvised
	name = "spiked crowbar"
	desc = "A snapped crowbar with blade-like protrusions on all sides. Functions like an ill-advised knife."
	icon = 'icons/bos/obj/weapons.dmi'
	icon_state = "spiked_crowbar"
	item_state = "crowbar"
	max_force = 23
	force_multiplier = 0.5
	base_parry_chance = 19
	w_class = ITEM_SIZE_NORMAL
	melee_accuracy_bonus = -20
	throwforce = 10
	throw_range = 3
