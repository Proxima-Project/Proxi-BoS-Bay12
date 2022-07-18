/datum/job/submap
	branch = /datum/mil_branch/civilian
	rank =   /datum/mil_rank/civ/civ
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	required_language = null

/datum/map/torch
	branch_types = list(
		/datum/mil_branch/larfleet,
		/datum/mil_branch/civilian,
		/datum/mil_branch/lord,
		/datum/mil_branch/army,
		/datum/mil_branch/fleet,
		/datum/mil_branch/larmarine,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet,
		/datum/mil_branch/terran
	)

	spawn_branch_types = list(
		/datum/mil_branch/larfleet,
		/datum/mil_branch/army,
		/datum/mil_branch/fleet,
		/datum/mil_branch/larmarine,
		/datum/mil_branch/civilian,
		/datum/mil_branch/lord,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet,
		/datum/mil_branch/terran
	)

	species_to_branch_blacklist = list(
		/datum/species/human   = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/machine = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet, /datum/mil_branch/lord),
		/datum/species/tajaran = list(/datum/mil_branch/larmarine, /datum/mil_branch/lord, /datum/mil_branch/larfleet),
		/datum/species/unathi = list(/datum/mil_branch/lord),
		/datum/species/skrell = list(/datum/mil_branch/lord),
		/datum/species/diona = list(/datum/mil_branch/larmarine, /datum/mil_branch/lord, /datum/mil_branch/larfleet),
		/datum/species/adherent = list(/datum/mil_branch/larmarine, /datum/mil_branch/lord, /datum/mil_branch/larfleet),
		/datum/species/vox = list(
			/datum/mil_branch/army,
			/datum/mil_branch/fleet,
			/datum/mil_branch/larmarine,
			/datum/mil_branch/larfleet,
			/datum/mil_branch/civilian,
			/datum/mil_branch/lord,
			/datum/mil_branch/skrell_fleet,
			/datum/mil_branch/terran
		)
	)

	species_to_branch_whitelist = list(
		/datum/species/diona      = list(/datum/mil_branch/civilian),
		/datum/species/nabber     = list(/datum/mil_branch/civilian),
		/datum/species/skrell     = list(/datum/mil_branch/civilian, /datum/mil_branch/skrell_fleet),
		/datum/species/unathi     = list(/datum/mil_branch/civilian),
		/datum/species/adherent   = list(/datum/mil_branch/civilian),
	)
/*
 *  Branches
 *  ========
 */

/datum/mil_branch/larfleet
	name = "Lordanian Sovereign Systems Fleet"
	name_short = "LSSF"
	email_domain = "antar.lssf.mil"

	rank_types = list(
		/datum/mil_rank/larfleet/e1,
		/datum/mil_rank/larfleet/e2,
		/datum/mil_rank/larfleet/e3,
		/datum/mil_rank/larfleet/e4,
		/datum/mil_rank/larfleet/e5,
		/datum/mil_rank/larfleet/e6,
		/datum/mil_rank/larfleet/e7,
		/datum/mil_rank/larfleet/e8,
		/datum/mil_rank/larfleet/e9,
		/datum/mil_rank/larfleet/e9_alt1,
		/datum/mil_rank/larfleet/e9_alt2,
		/datum/mil_rank/larfleet/e9_alt3,
		/datum/mil_rank/larfleet/e9_alt4,
		/datum/mil_rank/larfleet/o1,
		/datum/mil_rank/larfleet/o2,
		/datum/mil_rank/larfleet/o3,
		/datum/mil_rank/larfleet/o4,
		/datum/mil_rank/larfleet/o5,
		/datum/mil_rank/larfleet/o6,
		/datum/mil_rank/larfleet/o7,
		/datum/mil_rank/larfleet/o8,
		/datum/mil_rank/larfleet/o9,
		/datum/mil_rank/larfleet/o10,
		/datum/mil_rank/larfleet/o10_alt
	)

	spawn_rank_types = list(
		/datum/mil_rank/larfleet/e2,
		/datum/mil_rank/larfleet/e3,
		/datum/mil_rank/larfleet/e4,
		/datum/mil_rank/larfleet/e5,
		/datum/mil_rank/larfleet/e6,
		/datum/mil_rank/larfleet/e7,
		/datum/mil_rank/larfleet/e8,
		/datum/mil_rank/larfleet/e9,
		/datum/mil_rank/larfleet/e9_alt1,
		/datum/mil_rank/larfleet/o1,
		/datum/mil_rank/larfleet/o2,
		/datum/mil_rank/larfleet/o3,
		/datum/mil_rank/larfleet/o4,
		/datum/mil_rank/larfleet/o5,
		/datum/mil_rank/larfleet/o6
	)

	assistant_job = /datum/job/crew
	min_skill = list(	SKILL_HAULING = SKILL_BASIC,
						SKILL_WEAPONS = SKILL_BASIC,
						SKILL_EVA     = SKILL_ADEPT)

/datum/mil_branch/civilian
	name = "Civilian"
	name_short = "Civ"
	email_domain = "freemail.net"

	rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/ntr,
		/datum/mil_rank/civ/chr,
		/datum/mil_rank/civ/foundationadvisor,
		/datum/mil_rank/civ/synthetic
	)

	spawn_rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/ntr,
		/datum/mil_rank/civ/chr,
		/datum/mil_rank/civ/foundationadvisor,
		/datum/mil_rank/civ/synthetic
	)

/datum/mil_branch/lord
	name = "Lordanian Systems Employee"
	name_short = "LSS"
	email_domain = "antar.lordgov"

	rank_types = list(
		/datum/mil_rank/lord/rep,
		/datum/mil_rank/lord/gov
	)

	spawn_rank_types = list(
		/datum/mil_rank/lord/rep,
		/datum/mil_rank/lord/gov
	)

/datum/mil_branch/terran
	name = "ICCG Navy"
	name_short = "ICCGN"
	email_domain = "gilgamesh.navy.mil"

	rank_types = list(
		/datum/mil_rank/terran/e1,
		/datum/mil_rank/terran/e3,
		/datum/mil_rank/terran/e4,
		/datum/mil_rank/terran/e6,
		/datum/mil_rank/terran/e7,
		/datum/mil_rank/terran/e9,
		/datum/mil_rank/terran/e9_alt1,
		/datum/mil_rank/terran/o1,
		/datum/mil_rank/terran/o2,
		/datum/mil_rank/terran/o3,
		/datum/mil_rank/terran/o4,
		/datum/mil_rank/terran/o5,
		/datum/mil_rank/terran/o6,
		/datum/mil_rank/terran/o7,
		/datum/mil_rank/terran/o8,
		/datum/mil_rank/terran/o9,
		/datum/mil_rank/terran/o10
	)

	spawn_rank_types = list(
		/datum/mil_rank/terran/e1,
		/datum/mil_rank/terran/e3,
		/datum/mil_rank/terran/e4,
		/datum/mil_rank/terran/e6,
		/datum/mil_rank/terran/e7,
		/datum/mil_rank/terran/e9,
		/datum/mil_rank/terran/e9_alt1,
		/datum/mil_rank/terran/o1,
		/datum/mil_rank/terran/o2,
		/datum/mil_rank/terran/o3,
		/datum/mil_rank/terran/o4,
		/datum/mil_rank/terran/o5,
		/datum/mil_rank/terran/o6,
		/datum/mil_rank/terran/o7,
		/datum/mil_rank/terran/o8,
		/datum/mil_rank/terran/o9,
		/datum/mil_rank/terran/o10
	)

	min_skill = list(	SKILL_HAULING = SKILL_BASIC,
						SKILL_WEAPONS = SKILL_BASIC,
						SKILL_EVA     = SKILL_BASIC)

/datum/mil_branch/larmarine
	name = "Lordanian Marine Corps"
	name_short = "LMC"
	email_domain = "antar.oorah.mil"

	rank_types = list(
		/datum/mil_rank/larmarine/e1,
		/datum/mil_rank/larmarine/e2,
		/datum/mil_rank/larmarine/e3,
		/datum/mil_rank/larmarine/e4,
		/datum/mil_rank/larmarine/e5,
		/datum/mil_rank/larmarine/e6,
		/datum/mil_rank/larmarine/e7,
		/datum/mil_rank/larmarine/e8,
		/datum/mil_rank/larmarine/e8_alt,
		/datum/mil_rank/larmarine/e9,
		/datum/mil_rank/larmarine/e9_alt,
		/datum/mil_rank/larmarine/e9_alt2,
		/datum/mil_rank/larmarine/w1,
		/datum/mil_rank/larmarine/w2,
		/datum/mil_rank/larmarine/w3,
		/datum/mil_rank/larmarine/w4,
		/datum/mil_rank/larmarine/w5,
		/datum/mil_rank/larmarine/o1,
		/datum/mil_rank/larmarine/o2,
		/datum/mil_rank/larmarine/o3,
		/datum/mil_rank/larmarine/o4,
		/datum/mil_rank/larmarine/o5,
		/datum/mil_rank/larmarine/o6,
		/datum/mil_rank/larmarine/o7,
		/datum/mil_rank/larmarine/o8,
		/datum/mil_rank/larmarine/o9,
		/datum/mil_rank/larmarine/o10
	)

	spawn_rank_types = list(
		/datum/mil_rank/larmarine/e2,
		/datum/mil_rank/larmarine/e3,
		/datum/mil_rank/larmarine/e4,
		/datum/mil_rank/larmarine/e5,
		/datum/mil_rank/larmarine/e6,
		/datum/mil_rank/larmarine/e7,
		/datum/mil_rank/larmarine/e8,
		/datum/mil_rank/larmarine/e8_alt,
		/datum/mil_rank/larmarine/e9,
		/datum/mil_rank/larmarine/e9_alt,
		/datum/mil_rank/larmarine/w1,
		/datum/mil_rank/larmarine/w2,
		/datum/mil_rank/larmarine/w3,
		/datum/mil_rank/larmarine/w4,
		/datum/mil_rank/larmarine/w5,
		/datum/mil_rank/larmarine/o1,
		/datum/mil_rank/larmarine/o2,
		/datum/mil_rank/larmarine/o3,
		/datum/mil_rank/larmarine/o4,
		/datum/mil_rank/larmarine/o5,
		/datum/mil_rank/larmarine/o6
	)

	assistant_job = /datum/job/crew

	min_skill = list(	SKILL_HAULING = SKILL_BASIC,
						SKILL_WEAPONS = SKILL_BASIC,
						SKILL_COMBAT  = SKILL_BASIC,
						SKILL_EVA     = SKILL_BASIC)

/datum/mil_rank/grade()
	. = ..()
	if(!sort_order)
		return ""
	if(sort_order <= 10)
		return "E[sort_order]"
	return "O[sort_order - 10]"
/*
 *  Fleet
 *  =====
 */

/datum/mil_rank/larfleet/e1
	name = "Crewman Recruit"
	name_short = "CR"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/enlisted, /obj/item/clothing/accessory/lordan/specialty/enlisted)
	sort_order = 1

/datum/mil_rank/larfleet/e2
	name = "Crewman Apprentice"
	name_short = "CA"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/enlisted/e2, /obj/item/clothing/accessory/lordan/specialty/enlisted)
	sort_order = 2

/datum/mil_rank/larfleet/e3
	name = "Crewman"
	name_short = "CN"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/enlisted/e3, /obj/item/clothing/accessory/lordan/specialty/enlisted)
	sort_order = 3

/datum/mil_rank/larfleet/e4
	name = "Petty Officer Third Class"
	name_short = "PO3"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/enlisted/e4, /obj/item/clothing/accessory/lordan/specialty/enlisted)
	sort_order = 4

/datum/mil_rank/larfleet/e5
	name = "Petty Officer Second Class"
	name_short = "PO2"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/enlisted/e5, /obj/item/clothing/accessory/lordan/specialty/enlisted)
	sort_order = 5

/datum/mil_rank/larfleet/e6
	name = "Petty Officer First Class"
	name_short = "PO1"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/enlisted/e6, /obj/item/clothing/accessory/lordan/specialty/enlisted)
	sort_order = 6

/datum/mil_rank/larfleet/e7
	name = "Chief Petty Officer"
	name_short = "CPO"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/enlisted/e7, /obj/item/clothing/accessory/lordan/specialty/enlisted)
	sort_order = 7

/datum/mil_rank/larfleet/e8
	name = "Senior Chief Petty Officer"
	name_short = "SCPO"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/enlisted/e8, /obj/item/clothing/accessory/lordan/specialty/enlisted)
	sort_order = 8

/datum/mil_rank/larfleet/e9
	name = "Master Chief Petty Officer"
	name_short = "MCPO"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/enlisted/e9, /obj/item/clothing/accessory/lordan/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/larfleet/e9_alt1
	name = "Command Master Chief Petty Officer"
	name_short = "CMCPO"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/enlisted/e9_alt1, /obj/item/clothing/accessory/lordan/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/larfleet/e9_alt2
	name = "Lordanian Fleet Master Chief Petty Officer"
	name_short = "LFLTCM"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/enlisted/e9_alt2, /obj/item/clothing/accessory/lordan/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/larfleet/e9_alt3
	name = "Force Master Chief Petty Officer"
	name_short = "FORCM"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/enlisted/e9_alt3, /obj/item/clothing/accessory/lordan/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/larfleet/e9_alt4
	name = "Master Chief Petty Officer of the Lordanian Fleet"
	name_short = "MCPOLF"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/enlisted/e9_alt4, /obj/item/clothing/accessory/lordan/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/larfleet/o1
	name = "Ensign"
	name_short = "ENS"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/officer, /obj/item/clothing/accessory/lordan/specialty/officer)
	sort_order = 11

/datum/mil_rank/larfleet/o2
	name = "Sub-lieutenant"
	name_short = "SLT"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/officer/o2, /obj/item/clothing/accessory/lordan/specialty/officer)
	sort_order = 12

/datum/mil_rank/larfleet/o3
	name = "Lieutenant"
	name_short = "LT"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/officer/o3, /obj/item/clothing/accessory/lordan/specialty/officer)
	sort_order = 13

/datum/mil_rank/larfleet/o4
	name = "Lieutenant Commander"
	name_short = "LCDR"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/officer/o4, /obj/item/clothing/accessory/lordan/specialty/officer)
	sort_order = 14

/datum/mil_rank/larfleet/o5
	name = "Commander"
	name_short = "CDR"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/officer/o5, /obj/item/clothing/accessory/lordan/specialty/officer)
	sort_order = 15

/datum/mil_rank/larfleet/o6
	name = "Captain"
	name_short = "CAPT"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/officer/o6, /obj/item/clothing/accessory/lordan/specialty/officer)
	sort_order = 16

/datum/mil_rank/larfleet/o7
	name = "Commodore"
	name_short = "CDRE"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/flag, /obj/item/clothing/accessory/lordan/specialty/officer)
	sort_order = 17

/datum/mil_rank/larfleet/o8
	name = "Rear Admiral"
	name_short = "RADM"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/flag/o8, /obj/item/clothing/accessory/lordan/specialty/officer)
	sort_order = 18

/datum/mil_rank/larfleet/o9
	name = "Vice Admiral"
	name_short = "VADM"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/flag/o9, /obj/item/clothing/accessory/lordan/specialty/officer)
	sort_order = 19

/datum/mil_rank/larfleet/o10
	name = "Admiral"
	name_short = "ADM"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/flag/o10, /obj/item/clothing/accessory/lordan/specialty/officer)
	sort_order = 20

/datum/mil_rank/larfleet/o10_alt
	name = "Fleet Admiral"
	name_short = "FADM"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/fleet/flag/o10_alt, /obj/item/clothing/accessory/lordan/specialty/officer)
	sort_order = 20


/*
 *  Civilians
 *  =========
 */

/datum/mil_rank/civ/civ
	name = "Civilian"

/datum/mil_rank/civ/contractor
	name = "Contractor"

/datum/mil_rank/civ/ntr
	name = "NanoTrasen Representative"
	name_short = "NTR"

/datum/mil_rank/civ/chr
	name = "Chairman"
	name_short = "CHR"

/datum/mil_rank/civ/foundationadvisor
	name = "Psionic Advisor"
	name_short = "PADV"

/datum/mil_rank/civ/synthetic
	name = "Synthetic"

/*
 *  Lordanian Employees
 *  ====== =========
 */

/datum/mil_rank/lord/rep
	name = "Sov Lordania Representative"
	name_short = "SLR"

/datum/mil_rank/lord/gov
	name = "Government Worker"
	name_short = "GOVT"

/*
 *  Terrans
 *  =======
 */

/datum/mil_rank/terran/e1
	name = "Sailor Recruit"
	name_short = "SlrRct"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted)
	sort_order = 1

/datum/mil_rank/terran/e3
	name = "Sailor"
	name_short = "Slr"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted/e3)
	sort_order = 3

/datum/mil_rank/terran/e4
	name = "Bosman"
	name_short = "Bsn"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted/e4)
	sort_order = 4

/datum/mil_rank/terran/e6
	name = "Starszy Bosman"
	name_short = "SBsn"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted/e6)
	sort_order = 6

/datum/mil_rank/terran/e7
	name = "Glavny Starshina"
	name_short = "GStr"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted/e7)
	sort_order = 7

/datum/mil_rank/terran/e9
	name = "Michman"
	name_short = "Mch"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted/e9)
	sort_order = 9

/datum/mil_rank/terran/e9_alt1
	name = "Michman of the Independent Navy"
	name_short = "MchNvy"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/enlisted/e9_alt1)
	sort_order = 9

/datum/mil_rank/terran/o1
	name = "Ensign"
	name_short = "ENS"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/officer)
	sort_order = 11

/datum/mil_rank/terran/o2
	name = "Leytenant"
	name_short = "Lyt"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/officer/o2)
	sort_order = 12

/datum/mil_rank/terran/o3
	name = "Starshy Leytenant"
	name_short = "SLyt"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/officer/o3)
	sort_order = 13

/datum/mil_rank/terran/o4
	name = "Corvette-Komandor"
	name_short = "CvtKdr"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/officer/o4)
	sort_order = 14

/datum/mil_rank/terran/o5
	name = "Komandor"
	name_short = "Kdr"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/officer/o5)
	sort_order = 15

/datum/mil_rank/terran/o6
	name = "Kapitan"
	name_short = "Kpt"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/officer/o6)
	sort_order = 16

/datum/mil_rank/terran/o7
	name = "Kontradmiral"
	name_short = "KtrAdm"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/flag)
	sort_order = 17

/datum/mil_rank/terran/o8
	name = "Wiceadmiral"
	name_short = "WcAdm"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/flag/o8)
	sort_order = 18

/datum/mil_rank/terran/o9
	name = "Admiral"
	name_short = "Adm"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/flag/o9)
	sort_order = 19

/datum/mil_rank/terran/o10
	name = "Admiral of the Independent Navy"
	name_short = "AdmNvy"
	accessory = list(/obj/item/clothing/accessory/terran/rank/navy/flag/o10)
	sort_order = 20

/*
 *  Marine Corps
 *  ============
 */
/datum/mil_rank/larmarine/e1
	name = "Private"
	name_short = "Pvt"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/enlisted)
	sort_order = 1

/datum/mil_rank/larmarine/e2
	name = "Private First Class"
	name_short = "PFC"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/enlisted/e2)
	sort_order = 2

/datum/mil_rank/larmarine/e3
	name = "Lance Corporal"
	name_short = "LCpl"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/enlisted/e3)
	sort_order = 3

/datum/mil_rank/larmarine/e4
	name = "Corporal"
	name_short = "Cpl"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/enlisted/e4)
	sort_order = 4

/datum/mil_rank/larmarine/e5
	name = "Sergeant"
	name_short = "Sgt"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/enlisted/e5)
	sort_order = 5

/datum/mil_rank/larmarine/e6
	name = "Staff Sergeant"
	name_short = "SSgt"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/enlisted/e6)
	sort_order = 6

/datum/mil_rank/larmarine/e7
	name = "Gunnery Sergeant"
	name_short = "GySgt"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/enlisted/e7)
	sort_order = 7

/datum/mil_rank/larmarine/e8
	name = "Master Sergeant"
	name_short = "MSgt"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/enlisted/e8)
	sort_order = 8

/datum/mil_rank/larmarine/e8_alt
	name = "First Sergeant"
	name_short = "1stSg"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/enlisted/e8_alt)
	sort_order = 8

/datum/mil_rank/larmarine/e9
	name = "Master Gunnery Sergeant"
	name_short = "MGySgt"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/enlisted/e9)
	sort_order = 9

/datum/mil_rank/larmarine/e9_alt
	name = "Sergeant Major"
	name_short = "SgtMaj"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/enlisted/e9_alt)
	sort_order = 9

/datum/mil_rank/larmarine/e9_alt2
	name = "Sergeant Major of the Marine Corps"
	name_short = "SMMC"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/enlisted/e9_alt2)
	sort_order = 9

/datum/mil_rank/larmarine/w1
	name = "Warrant Officer"
	name_short = "WO"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/warrant_officer/w1)
	sort_order = 11

/datum/mil_rank/larmarine/w2
	name = "Second Warrant Officer"
	name_short = "SWO"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/warrant_officer/w2)
	sort_order = 12

/datum/mil_rank/larmarine/w3
	name = "First Warrant Officer"
	name_short = "FWO"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/warrant_officer/w3)
	sort_order = 13

/datum/mil_rank/larmarine/w4
	name = "Major Warrant Officer"
	name_short = "MWO"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/warrant_officer/w4)
	sort_order = 14

/datum/mil_rank/larmarine/w5
	name = "General Warrant Officer"
	name_short = "GWO"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/warrant_officer/w5)
	sort_order = 15

/datum/mil_rank/larmarine/o1
	name = "Second Lieutenant"
	name_short = "2ndLt"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/officer)
	sort_order = 16

/datum/mil_rank/larmarine/o2
	name = "First Lieutenant"
	name_short = "1stLt"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/officer/o2)
	sort_order = 17

/datum/mil_rank/larmarine/o3
	name = "Captain "
	name_short = "CPT"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/officer/o3)
	sort_order = 18

// Specially, to avoid two "Capt" on-board.
/datum/mil_rank/larmarine/o3_alt
	name = "Marine Captain"
	name_short = "M-CPT"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/officer/o3_alt)
	sort_order = 19

/datum/mil_rank/larmarine/o3_alt2
	name = "Specialist Captain"
	name_short = "SP-CPT"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/officer/o3_alt2)
	sort_order = 20

/datum/mil_rank/larmarine/o4
	name = "Major"
	name_short = "Maj"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/officer/o4)
	sort_order = 21

/datum/mil_rank/larmarine/o5
	name = "Lieutenant Colonel"
	name_short = "LtCol"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/officer/o5)
	sort_order = 22

/datum/mil_rank/larmarine/o6
	name = "Colonel"
	name_short = "Col"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/officer/o6)
	sort_order = 23

/datum/mil_rank/larmarine/o7
	name = "Brigadier General"
	name_short = "BGen"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/flag)
	sort_order = 24

/datum/mil_rank/larmarine/o8
	name = "Major General"
	name_short = "MGen"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/flag/o8)
	sort_order = 25

/datum/mil_rank/larmarine/o9
	name = "Lieutenant General"
	name_short = "LtGen"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/flag/o9)
	sort_order = 26

/datum/mil_rank/larmarine/o10
	name = "General"
	name_short = "Gen"
	accessory = list(/obj/item/clothing/accessory/lordan/rank/marine/flag/o10)
	sort_order = 27

// Vox/foreign alien branch.
/datum/mil_branch/alien
	name = "Alien"
	name_short = "Alien"
	rank_types = list(/datum/mil_rank/alien)
	spawn_rank_types = list(/datum/mil_rank/alien)

/datum/mil_rank/alien
	name = "Alien"
