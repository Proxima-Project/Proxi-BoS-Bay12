/datum/map/torch
	species_to_job_whitelist = list(
		/datum/species/nabber = list(/datum/job/ai, /datum/job/cyborg, /datum/job/janitor, /datum/job/scientist_assistant, /datum/job/chemist,
									 /datum/job/roboticist, /datum/job/cargo_tech, /datum/job/canworker, /datum/job/engineer, /datum/job/doctor, /datum/job/canworker, /datum/job/assistant),
	 	/datum/species/human/mule = list(/datum/job/ai, /datum/job/cyborg, /datum/job/merchant),
	 	/datum/species/vox = list(/datum/job/ai, /datum/job/cyborg, /datum/job/merchant, /datum/job/stowaway),
	)

	species_to_job_blacklist = list(
		/datum/species/adherent = list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/sea, /datum/job/sea/marine, /datum/job/terrep, /datum/job/terguard, /datum/job/squad_lead, /datum/job/combat_tech, /datum/job/grunt, /datum/job/combat_medic, /datum/job/warden, /datum/job/officer, /datum/job/senior_doctor, /datum/job/detective, /datum/job/psychiatrist),
		/datum/species/diona   = list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/rd, /datum/job/officer, /datum/job/warden, /datum/job/sea, /datum/job/sea/marine, /datum/job/squad_lead, /datum/job/combat_tech, /datum/job/grunt, /datum/job/combat_medic, /datum/job/psychiatrist),
		/datum/species/tajaran = list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/sea, /datum/job/sea/marine, /datum/job/terrep, /datum/job/terguard, /datum/job/squad_lead, /datum/job/combat_tech, /datum/job/grunt, /datum/job/combat_medic, /datum/job/warden, /datum/job/officer, /datum/job/senior_doctor),
		/datum/species/skrell = list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/sea, /datum/job/sea/marine, /datum/job/terrep, /datum/job/terguard, /datum/job/warden, /datum/job/senior_doctor, /datum/job/squad_lead),
		/datum/species/unathi = list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/sea, /datum/job/sea/marine, /datum/job/terrep, /datum/job/terguard, /datum/job/warden, /datum/job/senior_doctor, /datum/job/squad_lead, /datum/job/detective),
		/datum/species/unathi/yeosa = list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/sea, /datum/job/sea/marine, /datum/job/terrep, /datum/job/terguard, /datum/job/warden, /datum/job/senior_doctor, /datum/job/squad_lead, /datum/job/detective),
		/datum/species/machine = list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/sea, /datum/job/sea/marine, /datum/job/terrep, /datum/job/terguard, /datum/job/warden, /datum/job/senior_doctor, /datum/job/detective, /datum/job/squad_lead, /datum/job/psychiatrist, /datum/job/detective),
		/datum/species/shapeshifter/promethean = list(/datum/job/captain, /datum/job/janitor, /datum/job/officer, /datum/job/hos, /datum/job/sea, /datum/job/sea/marine, /datum/job/terguard, /datum/job/warden, /datum/job/detective, /datum/job/squad_lead, /datum/job/combat_tech, /datum/job/grunt, /datum/job/combat_medic)
		)


	allowed_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos,
						/datum/job/terrep, /datum/job/terguard, /datum/job/sea, /datum/job/sea/marine,
						/datum/job/bridgeofficer,
						/datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/engineer_trainee,
						/datum/job/warden, /datum/job/officer, /datum/job/detective,
						/datum/job/squad_lead, /datum/job/combat_tech, /datum/job/grunt, /datum/job/combat_medic,
						/datum/job/senior_doctor, /datum/job/doctor/virologist, /datum/job/doctor, /datum/job/chemist, /datum/job/medical_trainee,
						/datum/job/psychiatrist,
						/datum/job/qm, /datum/job/cargo_tech, /datum/job/nt_pilot, /datum/job/mining,
						/datum/job/chaplain, /datum/job/janitor, /datum/job/canworker, /datum/job/chronicler,
						/datum/job/pathfinder, /datum/job/explorer, /datum/job/scientist, /datum/job/scientist_assistant,
						/datum/job/ai, /datum/job/cyborg,
						/datum/job/crew, /datum/job/assistant, /datum/job/stowaway,
						/datum/job/merchant
						)

	access_modify_region = list(
		ACCESS_REGION_SECURITY = list(access_hos, access_change_ids, access_robotics),
		ACCESS_REGION_MEDBAY = list(access_cmo, access_change_ids, access_robotics),
		ACCESS_REGION_RESEARCH = list(access_rd, access_change_ids, access_robotics),
		ACCESS_REGION_ENGINEERING = list(access_ce, access_change_ids, access_robotics),
		ACCESS_REGION_COMMAND = list(access_change_ids, access_robotics),
		ACCESS_REGION_GENERAL = list(access_change_ids, access_robotics),
		ACCESS_REGION_SUPPLY = list(access_qm, access_change_ids, access_robotics),
		ACCESS_REGION_SERVICE = list(access_marcom, access_change_ids, access_robotics)
	)

///datum/map/torch/setup_job_lists()
//	for(var/job_type in allowed_jobs)
//		var/datum/job/job = SSjobs.get_by_path(job_type)
//		// Most species are restricted from SCG security and command roles
//		if(job && (job.department_flag & COM) && job.allowed_branches.len && !(/datum/mil_branch/civilian in job.allowed_branches))
//			for(var/species_name in list(SPECIES_IPC, SPECIES_PLASMASANS))
//				var/datum/species/S = all_species[species_name]
//				var/species_blacklist = species_to_job_blacklist[S.type]
//				if(!species_blacklist)
//					species_blacklist = list()
//					species_to_job_blacklist[S.type] = species_blacklist
//				species_blacklist |= job.type

// Some jobs for nabber grades defined here due to map-specific job datums.
/decl/cultural_info/culture/nabber/New()
	LAZYADD(valid_jobs, /datum/job/scientist_assistant)
	..()

/decl/cultural_info/culture/nabber/New()
	LAZYADD(valid_jobs, /datum/job/assistant)
	..()

/decl/cultural_info/culture/nabber/b/New()
	LAZYADD(valid_jobs, /datum/job/cargo_tech)
	..()

/decl/cultural_info/culture/nabber/a/New()
	LAZYADD(valid_jobs, /datum/job/engineer)
	..()

/decl/cultural_info/culture/nabber/a/plus/New()
	LAZYADD(valid_jobs, /datum/job/doctor)
	..()

/datum/job
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	required_language = LANGUAGE_HUMAN_LORD


/datum/map/torch
	default_assistant_title = "Passenger"
