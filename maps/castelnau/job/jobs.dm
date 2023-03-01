/datum/map/castelnau
	species_to_job_whitelist = list()

#define COMMAND_JOBS /datum/job/captain, /datum/job/hop
#define HUMAN_NOVOX_JOBS /datum/job/captain, /datum/job/hop, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/officer, /datum/job/specialist, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/qm, /datum/job/mining, /datum/job/janitor, /datum/job/chef, /datum/job/bartender, /datum/job/scientist, /datum/job/roboticist, /datum/job/assistant
	species_to_job_blacklist = list(
		/datum/species/unathi = list(/datum/job/captain, /datum/job/hop, /datum/job/warden),
		/datum/species/unathi/yeosa = list(/datum/job/captain, /datum/job/hop, /datum/job/warden),
		/datum/species/machine = list(/datum/job/captain, /datum/job/hop, /datum/job/warden, /datum/job/officer, /datum/job/specialist, /datum/job/redactor/,/datum/job/psiengineer),
		/datum/species/diona = list(/datum/job/captain, /datum/job/hop, /datum/job/warden, /datum/job/officer, /datum/job/specialist, /datum/job/redactor/,/datum/job/psiengineer),
		/datum/species/adherent = list(/datum/job/captain, /datum/job/hop, /datum/job/warden, /datum/job/officer, /datum/job/specialist, /datum/job/redactor/,/datum/job/psiengineer),
		/datum/species/nabber = list(COMMAND_JOBS, /datum/job/senior_engineer, /datum/job/senior_doctor, /datum/job/scientist, /datum/job/qm, /datum/job/warden, /datum/job/officer, /datum/job/specialist, /datum/job/redactor/,/datum/job/psiengineer),
//		/datum/species/resomi = list(COMMAND_JOBS, /datum/job/senior_engineer, /datum/job/senior_doctor, /datum/job/senior_scientist, /datum/job/warden),
		/datum/species/vox = list(/datum/job/captain, /datum/job/hop, /datum/job/warden, /datum/job/officer, /datum/job/specialist, /datum/job/redactor/,/datum/job/psiengineer,/datum/job/chiefmerchant,/datum/job/ftumerchant_security),
		/datum/species/vox/armalis = list(HUMAN_NOVOX_JOBS),

	)

#undef HUMAN_NOVOX_JOBS

	allowed_jobs = list(/datum/job/captain,/datum/job/hop, /datum/job/outleader,
						/datum/job/warden, /datum/job/outsec, /datum/job/officer, /datum/job/specialist,
						/datum/job/senior_engineer, /datum/job/outeng, /datum/job/engineer, /datum/job/psiengineer, /datum/job/scientist,
						/datum/job/senior_doctor, /datum/job/outmed, /datum/job/doctor, /datum/job/redactor,
						/datum/job/chiefmerchant, /datum/job/ftumerchant, /datum/job/cargotech, /datum/job/ftumerchant_security, /datum/job/mining,
						/datum/job/pilot, /datum/job/chef, /datum/job/bartender, /datum/job/janitor,/datum/job/assistant,
						/datum/job/wanderer
						)

	access_modify_region = list(
		ACCESS_REGION_SECURITY = list(access_castelnau_idmod),
		ACCESS_REGION_MEDBAY = list(access_castelnau_idmod),
		ACCESS_REGION_RESEARCH = list(access_castelnau_idmod),
		ACCESS_REGION_ENGINEERING = list(access_castelnau_idmod),
		ACCESS_REGION_COMMAND = list(access_castelnau_idmod),
		ACCESS_REGION_GENERAL = list(access_castelnau_idmod),
		ACCESS_REGION_SUPPLY = list(access_castelnau_idmod),
		ACCESS_REGION_NT = list(access_castelnau_cheapskate),
	)

// Some jobs for nabber grades defined here due to map-specific job datums.
/decl/cultural_info/culture/nabber/New()
	LAZYADD(valid_jobs, /datum/job/scientist)
	..()

/decl/cultural_info/culture/nabber/b/New()
	LAZYADD(valid_jobs, /datum/job/bartender)
	..()

/decl/cultural_info/culture/nabber/a/New()
	LAZYADD(valid_jobs, /datum/job/engineer)
	..()

/decl/cultural_info/culture/nabber/a/New()
	LAZYADD(valid_jobs, /datum/job/scientist)
	..()

/decl/cultural_info/culture/nabber/a/plus/New()
	LAZYADD(valid_jobs, /datum/job/doctor)
	..()

/datum/job
	required_language = LANGUAGE_SPACER