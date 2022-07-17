#define MINES_MIN 50
#define MINES_MAX 100

/datum/round_aspect/traps
	name = "Минное поле"
	chance = 25
	weight = ASPECT_WEIGHT_TRAPS
	announce_text = "<span class=\"warning\">Недавно прохоидили учения, и после них в техах полно опасностей. Будьте осторожны!</span>"

/datum/round_aspect/traps/get_desc_msg()
	return SPAN_WARNING("Теха стали более опасными...")

/datum/round_aspect/traps/do_preload_thing()
	. = ..()
	var/area/maintarea = /area/maintenance
	var/turf/T
	var/list/turf/avalible_turfs = get_subarea_turfs(maintarea, list(/proc/is_turf_no_mines_and_walls))
	for(var/j in 1 to rand(MINES_MIN, MINES_MAX))
		T = pick(avalible_turfs)
		var/obj/item/mine/mine = new(T)
		if(prob(50))
			mine.activate()

#undef MINES_MIN
#undef MINES_MAX
