/obj/item/organ/internal/brain/slime
	name = "slime core"
	desc = "A complex, organic knot of jelly and crystalline particles."
	icon = 'icons/mob/simple_animal/slimes.dmi'
	icon_state = "green slime extract"

/obj/item/organ/internal/brain/slime/can_recover()
	return 0

/obj/item/organ/internal/stomach/slime
	name = "devour membrane"
	desc = "Plasma from a slime..."
	icon_state = "slimestomach"
	dead_icon = "slimestomach"
	damage_reduction = 0

/obj/item/organ/internal/stomach/New()
	ingested = new/datum/reagents/metabolism(240, owner, CHEM_INGEST)
	if(!ingested.my_atom)
		ingested.my_atom = src

/obj/item/organ/internal/stomach/get_devour_time(var/atom/movable/food)
	return isitem(food) ? null : DEVOUR_SLOW
