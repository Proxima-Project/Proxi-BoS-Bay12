/obj/item/clothing/head/dickmask
	name = "cock mask"
	desc = "Famous for its touching story of the cock mask, a lot of ICCG people died that night, when you put it on, you just want to take a bat and smash someone's skull to rhythmic music"
	icon = 'icons/bos/obj/clothing/obj_head.dmi'
	item_icons = list(slot_head_str = 'icons/bos/mob/onmob/onmob_head.dmi')
	icon_state = "dick_mask"
	flags_inv = BLOCKHAIR
	body_parts_covered = HEAD|FACE

/obj/item/clothing/head/helmet/biker
	icon = 'icons/bos/obj/clothing/obj_head.dmi'
	item_icons = list(slot_head_str = 'icons/bos/mob/onmob/onmob_head.dmi')
	flags_inv = BLOCKHAIR
	body_parts_covered = HEAD|FACE
	var/icon_state_open


/obj/item/clothing/head/helmet/biker/attack_self(mob/user as mob)
	if(icon_state == initial(icon_state))
		icon_state = icon_state_open
		to_chat(user, "You raise the visor on your helmet")
	else
		icon_state = initial(icon_state)
		to_chat(user, "You lower the visor on your helmet")

/obj/item/clothing/head/helmet/biker/integral
	name = "integral helmet"
	desc = "A standard road motorcycle helmet, the shell is quite strong and can help a little in battle"
	icon_state = "intergralhelmet"
	icon_state_open = "intergralhelmet_open"

/obj/item/clothing/head/helmet/biker/cross
	name = "cross helmet"
	desc = "a cross motorcycle helmet, the package includes glasses and a can of Space Bull"
	icon_state = "crosshelmet"
	icon_state_open = "crosshelmet_open"

/obj/item/clothing/head/santa_hat_blue
	name = "Santa's hat"
	desc = "Hoo-hoo ho..."
	icon = 'icons/bos/obj/clothing/obj_head.dmi'
	icon_state = "cap_santa"
	item_icons = list(slot_head_str = 'icons/bos/mob/onmob/onmob_head.dmi')
	flags_inv = BLOCKHAIR
