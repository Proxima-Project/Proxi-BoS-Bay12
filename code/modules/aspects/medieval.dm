/datum/round_aspect/medieval
	name = "Средневековье"
	chance = 5
	weight = ASPECT_WEIGHT_MEDIEVAL
	announce_text = "<span class=\"info\">Пушек нету и похуй</span>"

/datum/round_aspect/medieval/get_desc_msg()
	return SPAN_WARNING("Да прибудет робаст.")

/datum/round_aspect/medieval/do_preload_thing()
	. = ..()
	SSsupply.change_price_for(/decl/hierarchy/supply_pack/security, 50)

	for(var/obj/item/gun/gun in world)
		if(!is_station_area(get_area(gun)))
			continue
		qdel(gun)

	for(var/obj/item/gunbox/box in world)
		if(!is_station_area(get_area(box)))
			continue
		qdel(box)
