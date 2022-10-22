/obj/item/organ/internal/brain/slime
	name = "slime core"
	desc = "A complex, organic knot of jelly and crystalline particles."
	icon = 'icons/mob/simple_animal/slimes.dmi'
	icon_state = "green slime extract"
	damage_reduction = 1 // You can't gib slime by puching it in their face

/obj/item/organ/internal/brain/slime/can_recover()
	return 0
