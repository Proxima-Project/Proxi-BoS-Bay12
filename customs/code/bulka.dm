/obj/item/document_coiscin/not_coiscin_its_bulka
	name = "photo"
	desc = "A photo of the Earth."
	info = "Nothing is ever really lost to us as long as we remember it. - written on the back"
	doc_type = "earth"
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	icon_state = "bulka_photo"
	item_state = "bulka_photo"
	w_class = ITEM_SIZE_TINY

/obj/item/document_coiscin/not_coiscin_its_bulka/attack_self(mob/user as mob)
	show(user)
	user.visible_message(
		SPAN_ITALIC("[user] looks at the [src]."),
		SPAN_ITALIC("You look at the [src] and see a picture."),
		5
	)
	to_chat(user, info || SPAN_WARNING("[src] is completely blank!"))