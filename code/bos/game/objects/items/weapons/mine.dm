/obj/item/mine
	name = "mine"
	icon = 'icons/bos/obj/mine.dmi'
	icon_state = "mine_not_act"
	var/active = FALSE

/obj/item/mine/on_update_icon()
	if(active)
		icon_state = "mine_act"
	else
		icon_state = "mine_not_act"
	. = ..()

/obj/item/mine/attackby(obj/item/W, mob/user)
	. = ..()
	if(isScrewdriver(W))
		var/mob/living/carbon/human/H = user
		if(!active)
			active = TRUE
			visible_message(SPAN_WARNING("[user] activated [src]!"))
			return
		if(H.skill_check(SKILL_ELECTRICAL, SKILL_ADEPT) && prob(20*H.get_skill_value(SKILL_HAULING)))
			visible_message(SPAN_WARNING("[user] started to deactivate [src]..."))
			if(do_after(H, 10 SECONDS, src, DO_USER_SAME_HAND | DO_PUBLIC_PROGRESS))
				active = FALSE
				visible_message(SPAN_INFO("With evident excitement [user] disarms [src]"))
				update_icon()
			else
				visible_message(SPAN_WARNING("[user] MAKES MISTAKE!!!"))
				detonate()
		else if(prob(50))
			visible_message(SPAN_WARNING("[user] MAKES MISTAKE!!!"))
			detonate()
	else
		visible_message(SPAN_WARNING("[user] MAKES MISTAKE!!!"))
		detonate()

/obj/item/mine/equipped(mob/user, slot)
	. = ..()
	if(active && prob(90))
		detonate()

/obj/item/mine/Move()
	if(active)
		detonate()
	else
		. = ..()

/obj/item/mine/proc/activate(mob/user)
	if(active)
		return

	if(user)
		msg_admin_attack("[user.name] ([user.ckey]) primed \a [src] (<A HREF='?_src_=holder;adminplayerobservecoodjump=1;X=[user.x];Y=[user.y];Z=[user.z]'>JMP</a>)")

	active = 1
	update_icon()

/obj/item/mine/proc/detonate()
	var/turf/T = get_turf(src)
	visible_message(SPAN_INFO("Click-Click..."))
	if(T)
		explosion(T, -1, -1, 1, 2)

	var/list/target_turfs = getcircle(loc, 3)
	var/fragments_per_projectile = round(5/target_turfs.len)

	for(var/turf/O in target_turfs)
		sleep(0)
		var/fragment_type = /obj/item/projectile/bullet/pellet/fragment
		var/obj/item/projectile/bullet/pellet/fragment/P = new fragment_type(T)
		P.pellets = fragments_per_projectile
		P.shot_from = src.name
		P.hitchance_mod = 50

		P.launch(O)
	qdel(src)


/obj/item/mine/Crossed(AM as mob|obj)
	if(!istype(AM, /mob/observer))
		if(active)
			detonate()
