/obj/structure/vox_monolith
	name = "monolith of Kritiki"
	desc = "A structure built in honor and glory of Auralis, proclaiming the prophecy '𒄃𒄉𒃼𒃴𒃮𒂀'"
	icon = 'icons/bos/obj/vox_monolith.dmi'
	icon_state = "monolith_kritika"
	layer = ABOVE_HUMAN_LAYER
	density = TRUE
	anchored = TRUE

/obj/structure/vox_monolith/codex
	name = "monolith of Chakala"
	icon_state = "monolith_chakala"

/obj/structure/vox_monolith/guard
	name = "monolith of Kihikihi"
	icon_state = "monolith_kihikihi"

/obj/structure/table/vox
	name = "the Altar of Eternity"
	desc = "A structure built in honor and glory of Auralis, proclaiming the prophecy '𒄃𒄉𒃼𒃴𒃮𒂀'"
	icon = 'icons/bos/obj/vox_altar.dmi'
	icon_state = "altar"
	throwpass = TRUE
	can_reinforce = FALSE
	can_plate = FALSE
	material = null


/obj/structure/table/vox/attackby(obj/item/W, mob/user, click_params)
	if(istype(W, /obj/item/hand)) //playing cards
		var/obj/item/hand/H = W
		if(H.cards && H.cards.len == 1)
			usr.visible_message("\The [user] plays \the [H.cards[1].name].")
		return

	// Handle dismantling or placing things on the table from here on.
	if(isrobot(user))
		return

	if(W.loc != user) // This should stop mounted modules ending up outside the module.
		return

	if (istype(W, /obj/item/natural_weapon))
		return ..()

	if(user.unEquip(W, src.loc))
		auto_align(W, click_params)
		return 1

	return

/obj/structure/table/vox/MouseDrop_T()
	return

/obj/structure/table/vox/update_desc()
	return

/obj/structure/table/vox/break_to_parts(full_return)
	return

/obj/structure/table/vox/on_update_icon()
	return

/obj/structure/table/vox/update_connections()
	return

/obj/structure/cult/altar/bookcasevox
	name = "the Lectern of Eternity"
	icon = 'icons/bos/obj/vox_altar.dmi'
	desc = "A structure built in honor and glory of Auralis, proclaiming the prophecy '𒄃𒄉𒃼𒃴𒃮𒂀'"
	icon_state = "bookcase"

/obj/item/storage/bible/vox
	name = "the Talons of the Kritiki"
	desc = "Postulates of the great leader and warrior, Auralis Kritiki"
	icon = 'icons/bos/obj/vox_altar.dmi'
	icon_state ="bibleforce"
	deity_name = "Auralis Reverence"

/obj/item/storage/bible/vox/codex
	name = "the Light of the Chakala"
	desc = "Postulates of the smartest scientist and philosopher, Auralis Chakala"
	icon_state ="biblecodex"

/obj/item/storage/bible/vox/guard
	name = "the Mantle of the Kihikihi"
	desc = "Postulates of a fair and generous judge and guardians, Auralis Kihikihi"
	icon_state ="bibleguard"
