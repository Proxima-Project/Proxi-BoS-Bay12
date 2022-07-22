/datum/round_aspect/medieval
	name = "Средневековье"
	chance = 5
	weight = ASPECT_WEIGHT_MEDIEVAL
	announce_text = "<span class=\"info\">Поставки оружия уже на несколько месяцев задерживаются. Они там в ОперШтабе вообще живые?</span>"
	have_preload_proc = FALSE
	have_inround_proc = TRUE
	inround_timeout = 2 SECONDS

/datum/round_aspect/medieval/get_desc_msg()
	return SPAN_WARNING("На Антаресе нет огнестрельного и энергетического оружия.")

/datum/round_aspect/medieval/do_inround_thing()
	SSsupply.change_price_for(/decl/hierarchy/supply_pack/security, 50)

	for(var/obj/item/gun/gun in world)
		if(!is_station_area(get_area(gun)))
			continue
		qdel(gun)

	for(var/obj/item/gunbox/box in world)
		if(!is_station_area(get_area(box)))
			continue
		qdel(box)

	SET_FLAGS(SSaspect.flags, SS_NO_FIRE)
	SSaspect.wait = initial(SSaspect.wait)
