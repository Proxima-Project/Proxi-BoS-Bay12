/datum/design/item/stock_part/hyper_capacitor
	id = "hyper_capacitor"
	req_tech = list(TECH_POWER = 5, TECH_MATERIAL = 4, TECH_ESOTERIC = 4) //Esoteric tech req.
	materials = list(MATERIAL_STEEL = 500, MATERIAL_GLASS = 500, MATERIAL_GOLD = 300, MATERIAL_DIAMOND = 150) //These parts *ARE* expensive and rare.
	build_path = /obj/item/stock_parts/capacitor/hyper
	sort_string = "CAAAD"

/datum/design/item/stock_part/hyper
	id = "hyper_mani"
	req_tech = list(TECH_MATERIAL = 5, TECH_DATA = 2, TECH_ESOTERIC = 4)
	materials = list(MATERIAL_STEEL = 300, MATERIAL_GOLD = 300, MATERIAL_DIAMOND = 150)
	build_path = /obj/item/stock_parts/manipulator/hyper
	sort_string = "CAABD"

/datum/design/item/stock_part/hyper_matter_bin
	id = "hyper_matter_bin"
	req_tech = list(TECH_MATERIAL = 5, TECH_ESOTERIC = 4)
	materials = list(MATERIAL_STEEL = 800, MATERIAL_GOLD = 300, MATERIAL_DIAMOND = 150)
	build_path = /obj/item/stock_parts/matter_bin/hyper
	sort_string = "CAACD"

/datum/design/item/stock_part/hyper_micro_laser
	id = "hyper_micro_laser"
	req_tech = list(TECH_MAGNET = 5, TECH_MATERIAL = 5, TECH_ESOTERIC = 4)
	materials = list(MATERIAL_STEEL = 100, MATERIAL_GLASS = 200, MATERIAL_URANIUM = 300, MATERIAL_GOLD = 300, MATERIAL_DIAMOND = 150)
	build_path = /obj/item/stock_parts/micro_laser/hyper
	sort_string = "CAADD"

/datum/design/item/stock_part/hyper_sensor
	id = "hyper_sensor"
	req_tech = list(TECH_MAGNET = 5, TECH_MATERIAL = 3, TECH_ESOTERIC = 4)
	materials = list(MATERIAL_STEEL = 500, MATERIAL_GLASS = 200, MATERIAL_SILVER = 300, MATERIAL_GOLD = 300, MATERIAL_DIAMOND = 150)
	build_path = /obj/item/stock_parts/scanning_module/hyper
	sort_string = "CAAED"
