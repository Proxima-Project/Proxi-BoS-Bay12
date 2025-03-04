//Torch ID Cards (they have to be here to make the outfits work, no way around it)

/obj/item/card/id/torch
	name = "identification card"
	desc = "An identification card issued to personnel aboard the LRS Antares."
	job_access_type = /datum/job/assistant

/obj/item/card/id/torch/silver
	desc = "A silver identification card belonging to heads of staff."
	item_state = "silver_id"
	job_access_type = /datum/job/hop
	extra_details = list("goldstripe")
	color = "#ccecff"

/obj/item/card/id/torch/gold
	desc = "A golden identification card belonging to the Commanding Officer."
	item_state = "gold_id"
	job_access_type = /datum/job/captain
	color = "#d4c780"
	extra_details = list("goldstripe")

// SolGov Crew and Contractors
/obj/item/card/id/torch/crew
	desc = "An identification card issued to crewmembers aboard the LRS Antares."
	color = "#d3e3e1"
	job_access_type = /datum/job/crew
	color = "#ccecff"


/obj/item/card/id/torch/contractor
	desc = "An identification card issued to private contractors aboard the LRS Antares."
	job_access_type = /datum/job/assistant
	color = COLOR_GRAY80


/obj/item/card/id/torch/silver/medical
	job_access_type = /datum/job/cmo
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/torch/crew/medical
	job_access_type = /datum/job/doctor
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/torch/crew/medical/virology
	job_access_type = /datum/job/doctor/virologist

/obj/item/card/id/torch/crew/medical/senior
	job_access_type = /datum/job/senior_doctor

/obj/item/card/id/torch/contractor/medical
	job_access_type = /datum/job/doctor
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/torch/contractor/medical/senior
	job_access_type = /datum/job/senior_doctor

/obj/item/card/id/torch/contractor/chemist
	job_access_type = /datum/job/chemist
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/torch/contractor/medical/counselor
	job_access_type = /datum/job/psychiatrist

/obj/item/card/id/torch/silver/security
	job_access_type = /datum/job/hos
	detail_color = "#e00000"

/obj/item/card/id/torch/crew/security
	job_access_type = /datum/job/officer
	detail_color = "#e00000"

/obj/item/card/id/torch/crew/security/brigchief
	job_access_type = /datum/job/warden
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/crew/security/forensic
	job_access_type = /datum/job/detective


/obj/item/card/id/torch/silver/engineering
	job_access_type = /datum/job/chief_engineer
	detail_color = COLOR_SUN

/obj/item/card/id/torch/crew/engineering
	job_access_type = /datum/job/engineer
	detail_color = COLOR_SUN

/obj/item/card/id/torch/crew/engineering/senior
	job_access_type = /datum/job/senior_engineer
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/contractor/engineering
	job_access_type = /datum/job/engineer
	detail_color = COLOR_SUN

/obj/item/card/id/torch/contractor/engineering/roboticist
	job_access_type = /datum/job/roboticist


/obj/item/card/id/torch/crew/supply/deckofficer
	job_access_type = /datum/job/qm
	detail_color = COLOR_BROWN
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/crew/supply
	job_access_type = /datum/job/cargo_tech
	detail_color = COLOR_BROWN

/obj/item/card/id/torch/contractor/supply
	job_access_type = /datum/job/cargo_tech
	detail_color = COLOR_BROWN

/obj/item/card/id/torch/crew/service //unused
	job_access_type = /datum/job/assistant
	detail_color = COLOR_CIVIE_GREEN

/obj/item/card/id/torch/crew/service/janitor
	job_access_type = /datum/job/janitor

/obj/item/card/id/torch/crew/service/chef
	job_access_type = /datum/job/chef

/obj/item/card/id/torch/crew/service/chaplain
	job_access_type = /datum/job/chaplain

/obj/item/card/id/torch/contractor/service //unused
	job_access_type = /datum/job/assistant
	detail_color = COLOR_CIVIE_GREEN

/obj/item/card/id/torch/contractor/service/bartender
	job_access_type = /datum/job/canworker

/obj/item/card/id/torch/crew/service/canworker
	job_access_type = /datum/job/canworker


/obj/item/card/id/torch/crew/representative
	job_access_type = /datum/job/terrep
	detail_color = COLOR_COMMAND_BLUE
	extra_details = list("goldstripe")

/obj/item/card/id/torch/crew/terguard
	job_access_type = /datum/job/terguard
	detail_color = COLOR_COMMAND_BLUE

/obj/item/card/id/torch/crew/sea
	job_access_type = /datum/job/sea
	detail_color = COLOR_COMMAND_BLUE
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/crew/sea/marine
	job_access_type = /datum/job/sea/marine
	detail_color = COLOR_COMMAND_BLUE
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/crew/bridgeofficer
	job_access_type = /datum/job/bridgeofficer
	detail_color = COLOR_COMMAND_BLUE

/obj/item/card/id/torch/crew/pathfinder
	job_access_type = /datum/job/pathfinder
	detail_color = COLOR_PURPLE
	extra_details = list("onegoldstripe")

/obj/item/card/id/torch/crew/explorer
	job_access_type = /datum/job/explorer
	detail_color = COLOR_PURPLE

/obj/item/card/id/torch/crew/pilot
	job_access_type = /datum/job/nt_pilot
	detail_color = COLOR_PURPLE

// EC Science
/obj/item/card/id/torch/silver/research
	job_access_type = /datum/job/rd
	detail_color = COLOR_RESEARCH
	color = COLOR_WHITE

/obj/item/card/id/torch/crew/research
	desc = "A card issued to science personnel aboard the LRS Antares."
	job_access_type = /datum/job/scientist_assistant
	detail_color = COLOR_RESEARCH

/obj/item/card/id/torch/crew/research/scientist
	job_access_type = /datum/job/scientist

//NanoTrasen and Passengers

/obj/item/card/id/torch/passenger
	desc = "A card issued to passengers aboard the LRS Antares."
	job_access_type = /datum/job/assistant
	detail_color = COLOR_PAKISTAN_GREEN

/obj/item/card/id/torch/passenger/research
	desc = "A card issued to corporate personnel aboard the LRS Antares."
	job_access_type = /datum/job/scientist_assistant
	detail_color = COLOR_BOTTLE_GREEN

/obj/item/card/id/torch/passenger/research/nt_pilot
	job_access_type = /datum/job/nt_pilot

/obj/item/card/id/torch/passenger/research/scientist
	job_access_type = /datum/job/scientist

/obj/item/card/id/torch/passenger/research/mining
	job_access_type = /datum/job/mining

//Merchant
/obj/item/card/id/torch/merchant
	desc = "An identification card issued to Merchants, indicating their right to sell and buy goods."
	job_access_type = /datum/job/merchant
	color = COLOR_OFF_WHITE
	detail_color = COLOR_BEIGE

// Hestia IDs
//ids
/obj/item/card/id/torch/crew/infantry
	job_access_type = /datum/job/grunt
	detail_color = "#429661"

/obj/item/card/id/torch/crew/infantry/infcom
	job_access_type = /datum/job/squad_lead

/obj/item/card/id/torch/crew/infantry/inftech
	job_access_type = /datum/job/combat_tech
	detail_color = COLOR_SUN

/obj/item/card/id/torch/crew/infantry/infmed
	job_access_type = /datum/job/combat_medic
	detail_color = COLOR_NAVY_BLUE

//Stowaway
/obj/item/card/id/torch/stowaway
	desc = "A card issued to passengers aboard the LRS Antares. Looks like the photo fell off this one."
	job_access_type = /datum/job/stowaway
	detail_color = COLOR_PAKISTAN_GREEN

/obj/item/card/id/torch/stowaway/New()
	..()
	var/species = SPECIES_HUMAN
	if(prob(25))
		species = pick(SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_IPC)
	var/datum/species/S = all_species[species]
	var/decl/cultural_info/culture/C = SSculture.get_culture(S.default_cultural_info[TAG_CULTURE])
	var/gender = pick(MALE,FEMALE)
	assignment = "Passenger"
	registered_name = C.get_random_name(gender)
	sex = capitalize(gender)
	age = rand(7,77)
	fingerprint_hash = md5(registered_name)
	dna_hash = md5(fingerprint_hash)
	blood_type = RANDOM_BLOOD_TYPE
//	military_branch = pick(global.mil_branches.spawn_branches_)
//	military_branch = global.mil_branches.get_branch(military_branch)
	military_rank = pick(military_branch.spawn_ranks_)
//	military_rank = global.mil_branches.get_rank(military_branch.name, military_rank)

/obj/item/card/id/torch/chronicler
	desc = "A card issued to the chroniclers aboard the LRS Antares."
	job_access_type = /datum/job/chronicler
	detail_color = COLOR_PAKISTAN_GREEN