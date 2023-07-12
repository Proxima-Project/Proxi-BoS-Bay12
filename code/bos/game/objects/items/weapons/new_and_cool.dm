//SWORDS
////////


/// PARRY,ACCURACY > PENETRATION,DAMAGE
/obj/item/material/sword/bos
	name = "stab-sword"
	desc = "Good at parrying and accuracy, worse at cutting and penetration"
	icon = 'icons/bos/obj/NEW_AND_COOL.dmi'
	hitsound = list('sound/weapons/bos/woosh.ogg')
	icon_state = "sword"
	item_state = "sword"
	slot_flags = SLOT_BELT
	w_class = ITEM_SIZE_HUGE
	force = 15
	max_force = 10
	force_multiplier = 0.5
	armor_penetration = 5
	base_parry_chance = 45
	melee_accuracy_bonus = 30
	applies_material_colour = FALSE
	item_icons = list(
		slot_l_hand_str = 'icons/bos/mob/onmob/lefthand.dmi',
		slot_r_hand_str = 'icons/bos/mob/onmob/righthand.dmi',
		slot_belt_str = 'icons/mob/onmob/onmob_belt.dmi'
		)

/obj/item/material/sword/bos/blunted
	name = "blunted sword"
	desc = "Good at parrying and accuracy, worse at cutting and penetration. This one is blunted."
	sharp = FALSE
	edge = FALSE


///DAMAGE,ACCURACY > PENETRATION
/obj/item/material/sword/bos/bastard
	name = "bastard sword"
	desc = "A pretty good sword. Good at cutting, worse at penetration."
	icon_state = "big_sword"
	slot_flags = SLOT_BELT
	w_class = ITEM_SIZE_LARGE
	force = 25
	max_force = 20
	armor_penetration = 5
	base_parry_chance = 25
	melee_accuracy_bonus = 2

//DAMAGE, PENETRATION > PARRYING, ACCURACY
/obj/item/material/sword/bos/zvein
	name = "zveinhander sword"
	desc = "Good at penetration, worse at parrying and accuracy."
	icon_state = "zvein_sword"
	slot_flags = SLOT_BELT
	w_class = ITEM_SIZE_LARGE
	force = 30
	max_force = 25
	armor_penetration = 30
	base_parry_chance = 15
	melee_accuracy_bonus = -5


//KNIVES
////////

/obj/item/material/knife/bos
	name = "hunting knife"
	desc = "Yeah, that's definetly a knife."
	icon = 'icons/bos/obj/NEW_AND_COOL.dmi'
	icon_state = "knife"
	item_state = "knife"
	hitsound = list('sound/weapons/bos/hit.ogg', 'sound/weapons/bos/slash.ogg', 'sound/weapons/bos/meatslash.ogg', 'sound/weapons/bos/woosh.ogg')
	applies_material_colour = FALSE

/obj/item/material/knife/bos/military
	name = "military knife"
	icon_state = "knife2"

/obj/item/material/knife/bos/bowie
	name = "bowie knife"
	icon_state = "knife3"

/obj/item/material/knife/bos/katar
	name = "katar dagger"
	desc = "Yeah, that's definetly a dagger."
	icon_state = "knife4"

/obj/item/material/knife/bos/tanto
	name = "tanto knife"
	icon_state = "knife5"

/obj/item/material/knife/bos/specops
	name = "spec-ops knife"
	icon_state = "knife6"

/obj/item/material/knife/bos/dagger
	name = "dagger"
	desc = "Yeah, that's definetly a dagger."
	icon_state = "knife8"

/obj/item/material/knife/bos/gator
	name = "gator machete"
	desc = "Yeah, that's definetly a machete."
	icon_state = "knife9"

/obj/item/material/knife/bos/kukri
	name = "kukri knife"
	icon_state = "kukri"

/obj/item/material/knife/bos/hook
	name = "hook"
	desc = "Yeah, that's definetly a hook."
	icon_state = "hook"

/obj/item/material/knife/bos/razor
	name = "razor"
	desc = "Yeah, that's definetly a razor."
	icon_state = "razor"

/obj/item/material/knife/bos/kunai
	name = "kunai"
	desc = "Yeah, that's definetly a kunai."
	icon_state = "kunai"
	force = 20
	force_multiplier = 0.1
	thrown_force_multiplier = 1
	throw_speed = 8
	throw_range = 15
	w_class = ITEM_SIZE_TINY