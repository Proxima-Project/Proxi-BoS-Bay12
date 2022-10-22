/obj/item/clothing/accessory/haori_coiscin
	name = "old haori"
	desc = "An old haori with an unknown symbol on its back."
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	icon_state = "voxcoat"
	inv_overlay = 'customs/icons/obj/custom_items_obj_inv_accessory.dmi'
	slot = ACCESSORY_SLOT_DECOR
	accessory_icons = list(slot_w_uniform_str = 'customs/icons/mob/custom_items_mob.dmi', slot_wear_suit_str = 'customs/icons/mob/custom_items_mob.dmi')

/obj/item/clothing/accessory/katana_coiscin
	name = "katana and tanto"
	desc = "A cracked katana and a tanto with glyphs of the Vox language, as a symbol of the once greatness of the Vox Empire."
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	icon_state = "katana"
	item_state = "katana"
	inv_overlay = 'customs/icons/obj/custom_items_obj_inv_accessory.dmi'
	force = 10
	slot = ACCESSORY_SLOT_DECOR
	accessory_icons = list(slot_w_uniform_str = 'customs/icons/mob/custom_items_mob.dmi', slot_wear_suit_str = 'customs/icons/mob/custom_items_mob.dmi')
	item_icons = list(
		slot_l_hand_str = 'customs/icons/mob/custom_items_lhand.dmi',
		slot_r_hand_str = 'customs/icons/mob/custom_items_rhand.dmi',
		)

/obj/item/clothing/under/coiscin
	name = "kimono"
	desc = "An old and already well-worn kimono, but the quality of the fabric is still amazing, and tactile sensations give a pleasant feeling to the owner of this thing. An incomprehensible symbol is visible on the back."
	icon_state = "kimono"
	worn_state = "kimono"
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	item_icons = list(slot_w_uniform_str = 'customs/icons/mob/custom_items_mob.dmi')
	species_restricted = list(SPECIES_VOX)
	sprite_sheets = list(
		SPECIES_VOX = 'customs/icons/mob/custom_items_mob.dmi')

/obj/item/music_player/boombox/coiscin
	name = "electric guitar"
	desc = "black electronic guitar with synthesizer module, on the back wall you can see the mark «From B.S. to Yaka»."
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	icon_state = "guitar"
	item_state = "guitar"
	tape = /obj/item/music_tape/custom/coiscin

	item_icons = list(
		slot_l_hand_str = 'customs/icons/mob/custom_items_lhand.dmi',
		slot_r_hand_str = 'customs/icons/mob/custom_items_rhand.dmi',
		slot_back_str = 'customs/icons/mob/custom_items_mob.dmi',
		)

	sprite_sheets = list(
		SPECIES_VOX = 'customs/icons/mob/custom_items_mob.dmi')

	slot_flags = SLOT_BACK
	w_class = ITEM_SIZE_LARGE

	throwforce = 10
	throw_speed = 2
	throw_range = 10
	force = 10


/obj/item/music_tape/custom/coiscin
	name = "draftbook page"
	desc = "A draft of a song with its words, notes, chords and other useful features for musicians."
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	icon_state = "page"
	w_class = ITEM_SIZE_TINY

/obj/item/music_tape/custom/coiscin/Initialize()
	. = ..()
	if(random_color)
		icon_state = "page"

/obj/item/notebook_coiscin
	name = "draftbook"
	desc = "A black notebook with inserted pages, an intimidating mask is depicted on the front side, and on the first page there is a small text in the vox dialect."
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	icon_state = "note"
	randpixel = 0
	throwforce = 1
	w_class = ITEM_SIZE_SMALL
	throw_speed = 3
	throw_range = 7
	layer = BELOW_OBJ_LAYER
	var/amount = 30					//How much paper is in the bin.

/obj/item/notebook_coiscin/attackby(obj/item/i as obj, mob/user as mob)
	if(istype(i, /obj/item/music_tape/custom/coiscin))
		if(!user.unEquip(i, src))
			return
		to_chat(user, "<span class='notice'>You put [i] in [src].</span>")
		amount++

/obj/item/notebook_coiscin/examine(mob/user, distance)
	. = ..()
	if(distance <= 1)
		if(amount)
			to_chat(user, "<span class='notice'>There " + (amount > 1 ? "are [amount] papers" : "is one paper") + " in the note.</span>")
		else
			to_chat(user, "<span class='notice'>There are no papers in the note.</span>")

/obj/item/notebook_coiscin/MouseDrop(mob/user as mob)
	if((user == usr && (!( usr.restrained() ) && (!( usr.stat ) && (usr.contents.Find(src) || in_range(src, usr))))))
		if(!istype(usr, /mob/living/carbon/slime) && !istype(usr, /mob/living/simple_animal))
			if( !usr.get_active_hand() )		//if active hand is empty
				var/mob/living/carbon/human/H = user
				var/obj/item/organ/external/temp = H.organs_by_name[BP_R_HAND]

				if (H.hand)
					temp = H.organs_by_name[BP_L_HAND]
				if(temp && !temp.is_usable())
					to_chat(user, "<span class='notice'>You try to move your [temp.name], but cannot!</span>")
					return
	if(amount >= 1)
		amount--
		var/obj/item/music_tape/custom/coiscin/P
		P = new /obj/item/music_tape/custom/coiscin
		user.put_in_hands(P)
		to_chat(user, "<span class='notice'>You take [P] out of the [src].</span>")
	else
		to_chat(user, "<span class='notice'>[src] is empty!</span>")

	add_fingerprint(user)
	return



/obj/item/clothingbag/coiscin
	name = "clothing bag"
	desc = "Roar's property"

/obj/item/clothingbag/coiscin/Initialize()
	. = ..()
	new /obj/item/clothing/under/coiscin(src)
	new /obj/item/clothing/accessory/haori_coiscin(src)
	new /obj/item/clothing/accessory/katana_coiscin(src)
	new /obj/item/music_player/boombox/coiscin(src)
	new /obj/item/notebook_coiscin(src)