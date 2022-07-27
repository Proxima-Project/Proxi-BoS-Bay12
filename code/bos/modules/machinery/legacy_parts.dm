//At first there was an idea to put this in original legacy_parts.dm but instead lets try it here since it will definetly break something in the future by mixing BoS and BoH/Bay.
//And this is supposed to be like that as well with Psi-Update but i had no idea at *that* moment, thank you.
//Rating 4 - Esoteric tech. Can  be achieved by Esoteric tech + Rating 3 parts. A bit better than R3.
/obj/item/stock_parts/scanning_module/hyper
	name = "hyper scanning module"
	desc = "A compact, high resolution phasic scanning module used in the construction of certain devices."
	icon = 'icons/bos/obj/stock_parts.dmi' //Custom way for since separated .dmi file of archotech update
	icon_state = "scan_module_hyper" //Note: I also put sprites for omni-parts but since the lack of ideas about omni-research i will stay on hyper/T4 components. Yikes!
	origin_tech = list(TECH_MAGNET = 5, TECH_ESOTERIC = 4)
	rating = 4
	matter = list(MATERIAL_STEEL = 50,MATERIAL_GLASS = 20)

/obj/item/stock_parts/manipulator/hyper
	name = "hyper-manipulator"
	desc = "A tiny little manipulator used in the construction of certain devices."
	icon = 'icons/bos/obj/stock_parts.dmi'
	icon_state = "hyper_mani"
	origin_tech = list(TECH_MATERIAL = 5, TECH_DATA = 2, TECH_ESOTERIC = 4)
	rating = 4
	matter = list(MATERIAL_STEEL = 30)

/obj/item/stock_parts/micro_laser/hyper
	name = "hyper-high-power micro-laser"
	icon = 'icons/bos/obj/stock_parts.dmi'
	icon_state = "hyper_micro_laser"
	desc = "A tiny laser used in certain devices."
	origin_tech = list(TECH_MAGNET = 5, TECH_ESOTERIC = 4)
	rating = 4
	matter = list(MATERIAL_STEEL = 10,MATERIAL_GLASS = 20)

/obj/item/stock_parts/matter_bin/hyper
	name = "hyper matter bin"
	desc = "A container for hold compressed matter awaiting re-construction."
	icon = 'icons/bos/obj/stock_parts.dmi'
	icon_state = "hyper_matter_bin"
	origin_tech = list(TECH_MATERIAL = 5, TECH_ESOTERIC = 4)
	rating = 4
	matter = list(MATERIAL_STEEL = 80)

/obj/item/stock_parts/capacitor/hyper
	name = "hyper capacitor"
	desc = "A super-high capacity capacitor used in the construction of a variety of devices."
	icon = 'icons/bos/obj/stock_parts.dmi'
	icon_state = "capacitor_hyper"
	origin_tech = list(TECH_POWER = 5, TECH_MATERIAL = 4, TECH_ESOTERIC = 4)
	rating = 4
	matter = list(MATERIAL_STEEL = 80)
