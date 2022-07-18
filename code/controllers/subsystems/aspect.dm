SUBSYSTEM_DEF(aspect)
	name = "Aspects"
	wait = 2 SECONDS
	runlevels = RUNLEVEL_SETUP | RUNLEVEL_GAME
	priority = SS_PRIORITY_ASPECT
	var/datum/round_aspect/choosen_aspect = null

/datum/controller/subsystem/aspect/UpdateStat(text)
	var/aspname = "Не выбран"
	var/asppreload = "null"
	var/aspinround = "null"
	if(choosen_aspect)
		aspname = choosen_aspect.name
		aspinround = choosen_aspect.have_inround_proc ? "Да" : "Нет"
		asppreload = choosen_aspect.have_preload_proc ? "Да" : "Нет"


	..("Аспект: [aspname] | Действует(перед раундом: [asppreload], в раунде [aspinround])")

/datum/controller/subsystem/aspect/fire(resumed)
	switch(GAME_STATE)
		if(RUNLEVEL_SETUP)
			if(!choosen_aspect)
				get_new_aspect(length(SSticker.ready_players()))
			init_aspect()
		if(RUNLEVEL_GAME)
			if(choosen_aspect)
				choosen_aspect.do_inround_thing()
		else
			return

/datum/controller/subsystem/aspect/proc/get_new_aspect(var/players)
	if(choosen_aspect)
		qdel(choosen_aspect)
	var/list/aspects = typesof(/datum/round_aspect)
	var/final_aspect = /datum/round_aspect
	var/maxprobchance = ASPECT_WEIGHT_MINIMAL // start from minimal
	var/probchance
	var/datum/round_aspect/localasp
	for(var/datum/round_aspect/aspect as anything in aspects)
		localasp = new aspect
		if(localasp.check())
			probchance = localasp.get_weight(players)
			maxprobchance = max(probchance, maxprobchance)
			if(probchance == maxprobchance)
				final_aspect = aspect
		qdel(localasp)

	choosen_aspect = new final_aspect

/datum/controller/subsystem/aspect/proc/force_set_aspect(var/datum/round_aspect/aspect)
	if(choosen_aspect)
		qdel(choosen_aspect)
	choosen_aspect = new aspect

/datum/controller/subsystem/aspect/proc/init_aspect()
	if(choosen_aspect && !choosen_aspect.initialized)
		if(choosen_aspect.have_preload_proc)
			choosen_aspect.do_preload_thing()
		if(choosen_aspect.have_inround_proc)
			CLEAR_FLAGS(flags, SS_NO_FIRE)
			wait = choosen_aspect.inround_timeout
		else
			SET_FLAGS(flags, SS_NO_FIRE)
			wait = initial(wait)

		choosen_aspect.announce_aspect()
		choosen_aspect.initialized = TRUE

/datum/round_aspect
	var/name = "Самый обычный"
	var/chance = 100 // procents
	var/weight = ASPECT_WEIGHT_NORMAL // only when nothing
	var/need_ready_players = 0 // как много игроков должны прожать реди
	var/make_announce = TRUE // анонсировать ли аспект
	var/have_preload_proc = TRUE // Флажочек
	var/have_inround_proc = FALSE // Еще флажочек
	var/inround_timeout = 5 MINUTES // Период срабатывания do_inround_thing если включен have_inround_proc
	var/preload_maked = FALSE
	var/initialized = FALSE

	var/announce_text = "<span class=\"info\">Эта чудная смена пройдет как обычно. <span class=\"italic\">Может быть...</span></span>"

/datum/round_aspect/proc/get_weight(var/players)
	if(players <= need_ready_players)
		return ASPECT_WEIGHT_MINIMAL// minimal weight
	return weight

/datum/round_aspect/proc/check()
	return prob(chance)

/datum/round_aspect/proc/get_desc_msg()
	return SPAN_INFO("Абсолютно обычная, ничем не примечательная смена. Удачного вечера, господа.")

/datum/round_aspect/proc/announce_aspect()
	if(make_announce)
		to_world(announce_text)
		to_world(get_desc_msg())

/datum/round_aspect/proc/do_preload_thing()
	preload_maked = TRUE

/datum/round_aspect/proc/do_inround_thing()
	return

/mob/new_player/Login()
	. = ..()
	if(SSaspect.choosen_aspect)
		to_chat(src, SSaspect.choosen_aspect.announce_text)
		to_chat(src, SSaspect.choosen_aspect.get_desc_msg())
