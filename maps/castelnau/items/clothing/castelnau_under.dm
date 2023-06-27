/obj/item/clothing/under/camo
	name = "camouflage uniform"
	desc = "A typical militarylike camouflage outfit."
	icon = 'maps/castelnau/icons/obj/castelnau_under.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/castelnau/icons/mob/onmob_under_castelnau.dmi')
	icon_state = "camo"
	worn_state = "camo"

/obj/item/clothing/under/avalon
	name = "Avalon Uniform"
	desc = "An Avalon suit."
	icon = 'maps/castelnau/icons/obj/castelnau_under.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/castelnau/icons/mob/onmob_under_castelnau.dmi')
	icon_state = "avasuit"
	worn_state = "avasuit"

/obj/item/clothing/under/avalon1
	name = "Alternate Avalon Uniform"
	desc = "An alternate Avalon suit."
	icon = 'maps/castelnau/icons/obj/castelnau_under.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/castelnau/icons/mob/onmob_under_castelnau.dmi')
	icon_state = "avasuit2"
	worn_state = "avasuit2"

/obj/item/clothing/under/avalon2
	name = "Avalon Thermal Uniform"
	desc = "An Avalon thermal suit."
	icon = 'maps/castelnau/icons/obj/castelnau_under.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/castelnau/icons/mob/onmob_under_castelnau.dmi')
	icon_state = "avathermal"
	worn_state = "avathermal"

//Great renaming hernya

//TORCH CORPORATE UNIFORMS - DO NOT ADD NEW UNIFORMS TO UNIFORM.DMI - TORCH CORPORATE UNIFORMS GO IN CORPORATE.DMI

//^^^PIZDUN. NOW IT'S TORCH-FREE ZONE. GLORY TO BOS, DEATH TO CEO'S

//EXO
/obj/item/clothing/under/rank/guard
	name = "green security guard uniform"
	desc = "A durable green uniform worn by security guards."
	icon_state = "guard"
	item_state = "w_suit"
	worn_state = "guard"
	armor = list(
		melee = ARMOR_MELEE_SMALL
		)
	siemens_coefficient = 0.9
	item_icons = list(slot_w_uniform_str = 'icons/mob/onmob/onmob_under_corporate.dmi')
	gender_icons = 1
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/generated/onmob_under_corporate_unathi.dmi',
		)

/obj/item/clothing/under/rank/guard/research_guard
	accessories = list(/obj/item/clothing/accessory/corptie)

/obj/item/clothing/under/rank/scientist
	name = "\improper polo and pants"
	desc = "A fashionable polo and pair of trousers made from patented biohazard-resistant synthetic fabrics."
	icon_state = "smock"
	item_state = "w_suit"
	worn_state = "smock"
	permeability_coefficient = 0.50
	armor = list(
		bio = ARMOR_BIO_MINOR
		)
	item_icons = list(slot_w_uniform_str = 'icons/mob/onmob/onmob_under_corporate.dmi')
	gender_icons = 1
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/generated/onmob_under_corporate_unathi.dmi',
		)
	accessories = list(/obj/item/clothing/accessory/tunic)

/obj/item/clothing/under/rank/scientist/executive
	name = "\improper green executive polo and pants"
	desc = "A fashionable green polo and pair of trousers made from expensive biohazard-resistant fabrics. The colors denote the wearer as a higher-up of his organisation."
	icon_state = "smockexec"
	worn_state = "smockexec"
	accessories = list(/obj/item/clothing/accessory/tunic/exec)

/obj/item/clothing/under/rank/ntwork
	name = "beige and green coveralls"
	desc = "A pair of beige coveralls made of a strong, canvas-like fabric."
	icon_state = "work"
	item_state = "lb_suit"
	worn_state = "work"
	armor = list(
		melee = ARMOR_MELEE_MINOR,
		bio = ARMOR_BIO_MINOR
		)
	item_icons = list(slot_w_uniform_str = 'icons/mob/onmob/onmob_under_corporate.dmi')
	gender_icons = 1
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/generated/onmob_under_corporate_unathi.dmi',
		)

/obj/item/clothing/under/rank/ntpilot
	name = "green flight suit"
	desc = "A sleek green flight suit. It proudly sports different patches with corporate logos on them, as well as several unnecessary looking flaps and pockets for effect."
	icon_state = "pilot"
	item_state = "g_suit"
	worn_state = "pilot"
	item_icons = list(slot_w_uniform_str = 'icons/mob/onmob/onmob_under_corporate.dmi')
	gender_icons = 1
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/generated/onmob_under_corporate_unathi.dmi',
		)

/obj/item/clothing/under/suit_jacket/corp
	name = "\improper green executive suit"
	desc = "A set of pants and shirt that particularly enthusiastic company executives tend to wear."
	icon_state = "suit"
	item_state = "bl_suit"
	worn_state = "suit"
	accessories = list(/obj/item/clothing/accessory/toggleable/corpjacket, /obj/item/clothing/accessory/corptie)
	item_icons = list(slot_w_uniform_str = 'icons/mob/onmob/onmob_under_corporate.dmi')
	gender_icons = 1
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/generated/onmob_under_corporate_unathi.dmi',
		)

//NanoTrasen
/obj/item/clothing/under/rank/guard/nanotrasen
	name = "red security guard uniform"
	desc = "A durable uniform worn by security guards."
	icon_state = "guard_nt"
	worn_state = "guard_nt"

/obj/item/clothing/under/rank/scientist/nanotrasen
	name = "\improper red polo and pants"
	desc = "A fashionable polo and pair of trousers."
	icon_state = "smock_nt"
	worn_state = "smock_nt"
	accessories = list(/obj/item/clothing/accessory/tunic/nanotrasen)

/obj/item/clothing/under/rank/scientist/executive/nanotrasen
	name = "\improper red executive polo and pants"
	desc = "A fashionable polo and pair of trousers made from expensive biohazard-resistant fabrics. The colors denote the wearer as a higher-up of his organisation."
	icon_state = "smockexec_nt"
	worn_state = "smockexec_nt"
	accessories = list(/obj/item/clothing/accessory/tunic/exec/nanotrasen)

/obj/item/clothing/under/rank/ntwork/nanotrasen
	name = "beige and red coveralls"
	icon_state = "work_nt"
	worn_state = "work_nt"

/obj/item/clothing/under/rank/ntpilot/nanotrasen
	name = "red flight suit"
	desc = "A sleek red flight suit. It proudly sports different patches with corporate logos on them, as well as several unnecessary looking flaps and pockets for effect."
	icon_state = "pilot_nt"
	item_state = "r_suit"
	worn_state = "pilot_nt"
	item_icons = list(slot_w_uniform_str = 'icons/mob/onmob/onmob_under_corporate.dmi')
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/generated/onmob_under_corporate_unathi.dmi',
		)

/obj/item/clothing/under/suit_jacket/corp/nanotrasen
	name = "\improper red executive suit"
	desc = "A set of suit pants and shirt that particularly enthusiastic company executives tend to wear."
	icon_state = "suit_nt"
	worn_state = "suit_nt"
	accessories = list(/obj/item/clothing/accessory/toggleable/corpjacket/nanotrasen, /obj/item/clothing/accessory/corptie/nanotrasen)

//Heph. Industries
/obj/item/clothing/under/rank/guard/heph
	name = "cyan security guard uniform"
	desc = "A durable uniform worn by security guards."
	icon_state = "guard_heph"
	worn_state = "guard_heph"

/obj/item/clothing/under/rank/scientist/heph
	name = "\improper cyan polo and pants"
	desc = "A fashionable polo and pair of trousers."
	icon_state = "smock_heph"
	worn_state = "smock_heph"
	accessories = list(/obj/item/clothing/accessory/tunic/heph)

/obj/item/clothing/under/rank/scientist/executive/heph
	name = "\improper cyan executive polo and pants"
	desc = "A fashionable polo and pair of trousers made from expensive biohazard-resistant fabrics. The colors denote the wearer as a higher-up of his organisation."
	icon_state = "smockexec_heph"
	worn_state = "smockexec_heph"
	accessories = list(/obj/item/clothing/accessory/tunic/exec/heph)

/obj/item/clothing/under/rank/ntwork/heph
	name = "grey and cyan coveralls"
	icon_state = "work_heph"
	worn_state = "work_heph"

/obj/item/clothing/under/rank/ntpilot/heph
	name = "cyan flight suit"
	desc = "A sleek cyan flight suit. It proudly sports different patches with corporate logos on them, as well as several unnecessary looking flaps and pockets for effect."
	icon_state = "pilot_heph"
	worn_state = "pilot_heph"
	item_icons = list(slot_w_uniform_str = 'icons/mob/onmob/onmob_under_corporate.dmi')
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/species/unathi/generated/onmob_under_corporate_unathi.dmi',
		)

/obj/item/clothing/under/suit_jacket/corp/heph
	name = "\improper cyan executive suit"
	desc = "A set of suit pants and shirt that particularly enthusiastic company executives tend to wear."
	icon_state = "suit_heph"
	worn_state = "suit_heph"
	accessories = list(/obj/item/clothing/accessory/toggleable/corpjacket/heph, /obj/item/clothing/accessory/corptie/heph)

//Zeng-Hu
/obj/item/clothing/under/rank/scientist/zeng
	name = "\improper yellow polo and pants"
	desc = "A fashionable polo and pair of trousers."
	icon_state = "smock_zeng"
	worn_state = "smock_zeng"
	accessories = list(/obj/item/clothing/accessory/tunic/zeng)

/obj/item/clothing/under/rank/scientist/executive/zeng
	name = "\improper yellow executive polo and pants"
	desc = "A fashionable polo and pair of trousers made from expensive biohazard-resistant fabrics. The colors denote the wearer as a higher-up of his organisation."
	icon_state = "smockexec_zeng"
	worn_state = "smockexec_zeng"
	accessories = list(/obj/item/clothing/accessory/tunic/exec/zeng)

/obj/item/clothing/under/rank/ntwork/zeng
	name = "beige and gold coveralls"
	icon_state = "work_zeng"
	worn_state = "work_zeng"

/obj/item/clothing/under/suit_jacket/corp/zeng
	name = "\improper yellow executive suit"
	desc = "A set of yellow suit pants and shirt that particularly enthusiastic company executives tend to wear."
	icon_state = "suit_zeng"
	worn_state = "suit_zeng"
	accessories = list(/obj/item/clothing/accessory/toggleable/corpjacket/zeng, /obj/item/clothing/accessory/corptie/zeng)

//Corpo Uniforms override

/obj/item/clothing/under/pcrc
	name = "\improper private security uniform"
	desc = "A uniform belonging to some kind of a private security firm."
	icon_state = "pcrc"
	item_state = "jensensuit"
	worn_state = "pcrc"
	gender_icons = 1

/obj/item/clothing/under/pcrcsuit
	name = "\improper private security suit"
	desc = "A suit belonging to some kind of a private security firm. This one looks more formal than its utility counterpart."
	icon_state = "pcrcsuit"
	item_state = "jensensuit"
	worn_state = "pcrcsuit"
	gender_icons = 1

/obj/item/clothing/under/grayson
	name = "\improper miner's overalls"
	desc = "A set of overalls belonging to Lordanian Miners Conglomerate, a manufacturing and mining company."
	icon_state = "grayson"
	worn_state = "grayson"

/obj/item/clothing/under/wardt
	name = "\improper Ward-Takahashi jumpsuit"
	desc = "A jumpsuit belonging to Ward-Takahashi, a megacorp in the consumer goods and research market."
	icon_state = "wardt"
	worn_state = "wardt"
	gender_icons = 1

/obj/item/clothing/under/dais
	name = "\improper IT-guy's uniform"
	desc = "The uniform of an IT company."
	icon_state = "dais"
	worn_state = "dais"

/obj/item/clothing/under/mbill
	name = "\improper trucker's uniform"
	desc = "A uniform belonging to a shipping company."
	icon_state = "mbill"
	worn_state = "mbill"
	gender_icons = 1

/obj/item/clothing/under/morpheus
	name = "\improper Ellipse uniform"
	desc = "A pair of overalls belonging to an IPC manufacturing part of Ellipse Fleet. It doesn't look like it would be comfortable on a human."
	icon_state = "morpheus"
	worn_state = "morpheus"

/obj/item/clothing/under/skinner
	name = "\improper KFR uniform"
	desc = "Kingstone Fried Resomi? What kind of food is it?"
	icon_state = "skinner"
	worn_state = "skinner"

// Replace this with actual uniform when someone wants to sprite one
/obj/item/clothing/under/confederacy
	name = "\improper Confederate uniform"
	desc = "A military uniform belonging to the Gilgamesh Colonial Confederation, an independent human government."
	icon_state = "confed"
	worn_state = "confed"

/obj/item/clothing/under/saare
	name = "\improper war crime uniform"
	desc = "A uniform belonging to a minor private military corporation."
	icon_state = "saare"
	worn_state = "saare"
	gender_icons = 1

/obj/item/clothing/under/frontier
	name = "frontier clothes"
	desc = "A rugged flannel shirt and denim overalls. A popular style among frontier colonists."
	icon_state = "frontier"
	worn_state = "frontier"

/obj/item/clothing/under/aether
	name = "\improper atmos jumpsuit"
	desc = "A jumpsuit belonging to a company that supplies recycling and atmospheric systems to colonies."
	icon_state = "aether"
	worn_state = "aether"
	gender_icons = 1

/obj/item/clothing/under/focal
	name = "\improper engineering jumpsuit"
	desc = "A jumpsuit belonging to an engineering corporation."
	icon_state = "focal"
	worn_state = "focal"

/obj/item/clothing/under/hephaestus
	name = "\improper cyan jumpsuit"
	desc = "A jumpsuit belonging to a corp best known for its arms production."
	icon_state = "heph"
	worn_state = "heph"
	gender_icons = 1
