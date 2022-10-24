/mob/living/simple_animal/passive/cat/caracal
	name = "space caracal"
	desc = "A caracal with very floppy ears."
	icon = 'icons/bos/mob/cat.dmi'
	icon_state = "floppa"
	item_state = "floppa"
	icon_living = "floppa"
	icon_dead = "floppa_dead"
	speak_emote = list("шлёпает ушами")
	ai_holder = /datum/ai_holder/simple_animal/passive/caracal
	say_list_type = /datum/say_list/caracal
	//if(speak_emote)
	//playsound(loc, pick(list('proxima/sound/floppa/flop11.ogg','proxima/sound/floppa/flop12.ogg','proxima/sound/floppa/flop21.ogg','proxima/sound/floppa/flop22.ogg','proxima/sound/floppa/flop31.ogg','proxima/sound/floppa/flop32.ogg','proxima/sound/floppa/flop4.ogg','proxima/sound/floppa/flop51.ogg','proxima/sound/floppa/flop52.ogg','proxima/sound/floppa/flop61.ogg','proxima/sound/floppa/flop62.ogg','proxima/sound/floppa/flop7.ogg')), 50, 1)//
/datum/ai_holder/simple_animal/passive/caracal
	can_flee = TRUE

/datum/say_list/caracal
	emote_hear = list("yawn", "lick his paws")
	emote_see = list("shakes his head", "flop his ears")


/mob/living/simple_animal/passive/cat/caracal/grisha
	name = "Bolshoy Grigoriy"
	desc = "That's Bolshoy Grigoriy, a big Terran cat. His mere presence inspires fear."
	mob_size = MOB_LARGE

/mob/living/simple_animal/passive/cat/caracal/grisha/attackby(obj/item/W, mob/user)
	if(istype(W, /obj/item/reagent_containers/food/snacks/dumpling) && (src.health != 0))
		set_dir(get_dir(src, user))
		qdel(W)
		visible_emote(pick("eat dumpling with big joy!",
						   "eat dumpling and lick his lips!",
						   "eat dumpling and fast flop with his ears!"))
	if(istype(W, /obj/item/reagent_containers/food/snacks/boileddumplings) && (src.health != 0))
		set_dir(get_dir(src, user))
		qdel(W)
		visible_emote("eat all of the dumplings in few seconds with gigantic happines!")
