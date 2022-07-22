/datum/round_aspect/economy_depression
	name = "Экономический Кризис"
	chance = 15
	weight = ASPECT_WEIGHT_DEPRESSION
	announce_text = "<span class=\"warning\">Из-за действий Лорд-Протектора экономика буквально рухнула! Тут бы на еду хотя бы нашкребсти...</span>"

/datum/round_aspect/economy_depression/get_desc_msg()
	return SPAN_WARNING("Все цены были увеличены.")

/datum/round_aspect/economy_depression/do_preload_thing()
	. = ..()
	SSsupply.change_price_for(/decl/hierarchy/supply_pack, rand(4, 8))
	for(var/obj/machinery/vending/vendomat in world)
		if(!is_station_area(get_area(vendomat)))
			continue
		QDEL_NULL_LIST(vendomat.product_records)
		vendomat.product_records	= list()
		for(var/i in vendomat.prices)
			vendomat.prices[i] *= 50

		vendomat.build_inventory(TRUE)
