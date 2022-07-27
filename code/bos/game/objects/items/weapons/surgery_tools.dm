/* Esoteric Surgery Tools
 * Contains:
 *		Retractor
 *		Hemostat
 *		Cautery
 *		Surgical Drill
 *		Scalpel
 *		Circular Saw
 */

/*
 * Retractor
 */
/obj/item/retractor/esoteric
	name = "esoteric retractor"
	desc = "Used to separate the edges of a surgical incision to get to the juicy organs inside. This one is an esoteric prototype."
	icon = 'icons/bos/obj/surgery.dmi'
	icon_state = "esoretractor"
	matter = list(MATERIAL_STEEL = 10000, MATERIAL_GLASS = 5000)
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_SMALL
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)

/*
 * Hemostat
 */
/obj/item/hemostat/esoteric
	name = "esoteric hemostat"
	desc = "A type of forceps used to prevent an incision from bleeding, or to extract objects from the inside of the body. This one is an esoteric prototype."
	icon = 'icons/bos/obj/surgery.dmi'
	icon_state = "esohemostat"
	matter = list(MATERIAL_STEEL = 5000, MATERIAL_GLASS = 2500)
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_SMALL
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	attack_verb = list("attacked", "pinched")

/*
 * Cautery
 */
/obj/item/cautery/esoteric
	name = "esoteric cautery"
	desc = "Uses chemicals to quickly cauterize incisions and other small cuts without causing further damage. This one is an esoteric prototype."
	icon = 'icons/bos/obj/surgery.dmi'
	icon_state = "esocautery"
	matter = list(MATERIAL_STEEL = 5000, MATERIAL_GLASS = 2500, MATERIAL_ALUMINIUM = 1000)
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_SMALL
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	attack_verb = list("burnt")

/*
 * Surgical Drill
 */
/obj/item/surgicaldrill/esoteric
	name = "esoteric surgical drill"
	desc = "Effectively a very precise hand drill, used to bore holes through bone. This one is an esoteric prototype."
	icon = 'icons/bos/obj/surgery.dmi'
	icon_state = "esodrill" //Drill looks like stormtroopers' rifle from SW. Funny.
	hitsound = 'sound/weapons/circsawhit.ogg'
	matter = list(MATERIAL_STEEL = 15000, MATERIAL_GLASS = 10000)
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 17.0 //Just *light* buff to force.
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1, TECH_ESOTERIC = 4)
	attack_verb = list("drilled")

/*
 * Researchable Scalpels
 */
/obj/item/scalpel/laser4
	name = "esoteric laser scalpel"
	desc = "An esoteric prototype of existing laser scalpel. Looks and cuts like a little laser sword with extreme precision."
	icon = 'icons/bos/obj/surgery.dmi'
	icon_state = "esoscalpel"
	damtype = DAMAGE_BURN
	force = 17.0

/*
 * Circular Saw
 */
/obj/item/circular_saw/esoteric
	name = "esoteric circular saw"
	desc = "A small and nasty-looking hand saw used to cut through bone, or in an emergency, pizza. This one is an esoteric prototype."
	icon = 'icons/bos/obj/surgery.dmi'
	icon_state = "esosaw"
	hitsound = 'sound/weapons/circsawhit.ogg'
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 17.0
	w_class = ITEM_SIZE_NORMAL
	throwforce = 11.0
	throw_speed = 3
	throw_range = 5
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	matter = list(MATERIAL_STEEL = 20000,MATERIAL_GLASS = 10000)
	attack_verb = list("attacked", "slashed", "sawed", "cut")
	sharp = TRUE
	edge = TRUE

//misc, esoteric tools.
/obj/item/bonegel/esoteric
	name = "esoteric bone gel"
	desc = "Sophisticated chemical gel used to mend fractures and broken bones before setting. This one is an esoteric prototype."
	icon = 'icons/bos/obj/surgery.dmi'
	icon_state = "esobone-gel"
	force = 0
	w_class = ITEM_SIZE_SMALL
	throwforce = 1.0

/obj/item/FixOVein/esoteric
	name = "esoteric FixOVein"
	desc = "Derived from a Vey-Med design, this is a very precise surgical tool used to mend cut tendons and severed arteries. This one is an esoteric prototype."
	icon = 'icons/bos/obj/surgery.dmi'
	icon_state = "esofixovein"
	force = 0
	throwforce = 1.0
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 3, TECHE_ESOTERIC = 4)
	w_class = ITEM_SIZE_SMALL

/obj/item/bonesetter/esoteric
	name = "esoteric bone setter"
	desc = "A large, heavy clamp for setting dislocated or fractured bones back in place. This one is an esoteric prototype."
	icon = 'icons/bos/obj/surgery.dmi'
	icon_state = "esobonesetter"
	force = 8.0
	throwforce = 9.0
	throw_speed = 3
	throw_range = 5
	w_class = ITEM_SIZE_SMALL
	attack_verb = list("attacked", "hit", "bludgeoned")
