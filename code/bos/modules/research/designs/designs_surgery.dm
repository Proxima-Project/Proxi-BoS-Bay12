/datum/design/item/surgery/scalpel4
	name = "esoteric laser scalpel"
	desc = "An esoteric prototype of existing laser scalpel. Looks and cuts like a little laser sword with extreme precision."
	id = "scalpel_laser4"
	req_tech = list(TECH_BIO = 6, TECH_MATERIAL = 6, TECH_MAGNET = 5, TECH_DATA = 4, TECH_ESOTERIC = 4) //Higher
	materials = list (MATERIAL_STEEL = 15000, MATERIAL_GLASS = 10000, MATERIAL_SILVER = 3000, MATERIAL_GOLD = 3000, MATERIAL_DIAMOND = 1000)
	build_path = /obj/item/scalpel/laser4
	sort_string = "MBEAE"

/datum/design/item/surgery/esoteric_saw
	name = "esoteric circular saw"
	desc = "A small and nasty-looking hand saw used to cut through bone, or in an emergency, pizza. This one is an esoteric prototype."
	id = "esoteric_saw"
	req_tech = list(TECH_BIO = 5, TECH_MATERIAL = 6, TECH_MAGNET = 5, TECH_DATA = 4, TECH_ESOTERIC = 4)
	materials = list (MATERIAL_STEEL = 25000, MATERIAL_GOLD = 3000, MATERIAL_DIAMOND = 1000) //Removed Silver and glass but higher steel
	build_path = /obj/item/circular_saw/esoteric
	sort_string = "MBEAF"

/datum/design/item/surgery/esoteric_bonegel
	name = "esoteric bone gel"
	desc = "Sophisticated chemical gel used to mend fractures and broken bones before setting. This one is an esoteric prototype."
	id = "esoteric_bonegel"
	req_tech = list(TECH_BIO = 5, TECH_MATERIAL = 6, TECH_MAGNET = 5, TECH_DATA = 4, TECH_ESOTERIC = 4)
	materials = list (MATERIAL_STEEL = 15000, MATERIAL_GOLD = 3000, MATERIAL_DIAMOND = 1000)
	build_path = /obj/item/bonegel/esoteric
	sort_string = "MBEAG"

/datum/design/item/surgery/esoteric_fixovein
	name = "esoteric FixOVein"
	desc = "Derived from a Vey-Med design, this is a very precise surgical tool used to mend cut tendons and severed arteries. This one is an esoteric prototype."
	id = "esoteric_fixovein"
	req_tech = list(TECH_BIO = 4, TECH_MATERIAL = 6, TECH_MAGNET = 5, TECH_DATA = 4, TECH_ESOTERIC = 4)
	materials = list (MATERIAL_STEEL = 10000, MATERIAL_GOLD = 3000, MATERIAL_DIAMOND = 1000)
	build_path = /obj/item/FixOVein/esoteric
	sort_string = "MBEAH"


/datum/design/item/surgery/esoteric_bonesetter
	name = "esoteric bone setter"
	desc = "A large, heavy clamp for setting dislocated or fractured bones back in place. This one is an esoteric prototype."
	id = "esoteric_bonesetter"
	req_tech = list(TECH_BIO = 4, TECH_MATERIAL = 6, TECH_MAGNET = 5, TECH_DATA = 4, TECH_ESOTERIC = 4)
	materials = list (MATERIAL_STEEL = 10000, MATERIAL_GOLD = 2000, MATERIAL_DIAMOND = 2000) //All other tools are *mostly* equal so we will keep the same price.
	build_path = /obj/item/bonesetter/esoteric
	sort_string = "MBEAI"

/datum/design/item/surgery/esoteric_retractor
	name = "esoteric retractor"
	desc = "Used to separate the edges of a surgical incision to get to the juicy organs inside. This one is an esoteric prototype."
	id = "esoteric_retractor"
	req_tech = list(TECH_BIO = 4, TECH_MATERIAL = 6, TECH_MAGNET = 5, TECH_DATA = 4, TECH_ESOTERIC = 4)
	materials = list (MATERIAL_STEEL = 10000, MATERIAL_GOLD = 2000, MATERIAL_DIAMOND = 2000)
	build_path = /obj/item/retractor/esoteric
	sort_string = "MBEAJ"

/datum/design/item/surgery/esoteric_hemostat
	name = "esoteric hemostat"
	desc = "A type of forceps used to prevent an incision from bleeding, or to extract objects from the inside of the body. This one is an esoteric prototype."
	id = "esoteric_hemostat"
	req_tech = list(TECH_BIO = 4, TECH_MATERIAL = 6, TECH_MAGNET = 5, TECH_DATA = 4, TECH_ESOTERIC = 4)
	materials = list (MATERIAL_STEEL = 10000, MATERIAL_GOLD = 2000, MATERIAL_DIAMOND = 2000)
	build_path = /obj/item/hemostat/esoteric
	sort_string = "MBEAJ"


/datum/design/item/surgery/esoteric_cautery
	name = "esoteric cautery"
	desc = "Uses chemicals to quickly cauterize incisions and other small cuts without causing further damage. This one is an esoteric prototype."
	id = "esoteric_hemostat"
	req_tech = list(TECH_BIO = 4, TECH_MATERIAL = 6, TECH_MAGNET = 5, TECH_DATA = 4, TECH_ESOTERIC = 4)
	materials = list (MATERIAL_STEEL = 10000, MATERIAL_ALUMINIUM = 1000, MATERIAL_GOLD = 2000, MATERIAL_DIAMOND = 2000) //Adding aluminium since it uses some part of usual cautery's structure.
	build_path = /obj/item/cautery/esoteric
	sort_string = "MBEAK"

/datum/design/item/surgery/esoteric_drill
	name = "esoteric surgical drill"
	desc = "Effectively a very precise hand drill, used to bore holes through bone. This one is an esoteric prototype."
	id = "esoteric_drill"
	req_tech = list(TECH_BIO = 4, TECH_MATERIAL = 6, TECH_MAGNET = 5, TECH_DATA = 4, TECH_ESOTERIC = 4)
	materials = list (MATERIAL_STEEL = 10000, MATERIAL_GLASS = 5000, MATERIAL_GOLD = 2000, MATERIAL_DIAMOND = 2000)
	build_path = /obj/item/surgicaldrill/esoteric
	sort_string = "MBEAL"
