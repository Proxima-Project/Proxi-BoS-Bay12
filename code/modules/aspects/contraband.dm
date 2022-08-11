#define CONTR_MIN 70
#define CONTR_MAX 120

/datum/round_aspect/contraband
	name = "Контрабанда"
	chance = 15
	weight = ASPECT_WEIGHT_CONTRABAND
	announce_text = "<span class=\"info\">Недавно была получена информация о большом схроне контрабанды на Антарес - но на месте ничего не нашли. Вероятно контрабандисты всё уже перепрятали, но делали они это, наверняка, в спешке...</span>"

/datum/round_aspect/contraband/get_desc_msg()
	return SPAN_WARNING("Тоннели стали более интересными...")

/datum/round_aspect/contraband/do_preload_thing()
	. = ..()
	var/area/maintarea = /area/maintenance
	var/turf/T
	var/list/turf/avalible_turfs = get_subarea_turfs(maintarea, list(/proc/is_turf_no_mines_and_walls))
	var/list/contraband_common_list = list(/obj/random/lilgun, /obj/random/contraband, /obj/random/contraband, /obj/random/contraband)
	var/list/contraband_rare_list = list(/obj/item/device/personal_shield, /obj/item/device/multitool/hacktool, /obj/item/stamp/chameleon, /obj/item/device/radio/uplink, /obj/item/device/encryptionkey/syndicate, /obj/item/device/chameleon, /obj/item/card/emag, /obj/item/storage/box/syndie_kit/toxin, /obj/item/storage/box/syndie_kit/spy, /obj/item/device/uplink_service/fake_command_report, /obj/item/storage/pill_bottle/three_eye, /obj/item/grenade/spawnergrenade/spesscarp, /obj/item/grenade/frag, /obj/item/storage/backpack/dufflebag/syndie/c4, /obj/item/clothing/mask/chameleon/voice, /obj/item/supply_beacon, /obj/item/device/flashlight/flashdark)
	for(var/j in 1 to rand(CONTR_MIN, CONTR_MAX))
		T = pick(avalible_turfs)
		if(prob(85))
			var/contraband_common = pick(contraband_common_list)
			new contraband_common (T)
		else
			var/contraband_rare = pick(contraband_rare_list)
			new contraband_rare (T)

#undef CONTR_MIN
#undef CONTR_MAX
