#define PORTAL_MIN_TIME 5 MINUTES
#define PORTAL_MAX_TIME 10 MINUTES

/datum/round_aspect/bluespace
	name = "Блю-Спейс"
	chance = 10
	weight = ASPECT_WEIGHT_BLUESPACE
	announce_text = "<span class=\"info\">Из-за необьяснимой аномалии на судне начали появляться неопознанные порталы.</span>"
	have_inround_proc = TRUE
	have_preload_proc = FALSE
	inround_timeout = 1 MINUTE

/datum/round_aspect/bluespace/get_desc_msg()
	return SPAN_WARNING("Остерегайтесь порталов, они могут привести вас куда угодно...")

/datum/round_aspect/bluespace/do_inround_thing()
	. = ..()
	var/turf/selected_turf = pick_area_and_turf(GLOB.is_station_but_not_space_or_shuttle_area)
	var/turf/target_turf
	if(prob(50))
		target_turf = pick_area_and_turf(list(/proc/always_true))
	else
		target_turf = pick_area_and_turf(GLOB.is_station_but_not_space_or_shuttle_area)

	new /obj/effect/portal(selected_turf, target_turf, rand(PORTAL_MIN_TIME, PORTAL_MAX_TIME))

#undef PORTAL_MIN_TIME
#undef PORTAL_MAX_TIME
