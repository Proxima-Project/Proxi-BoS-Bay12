/datum/job/captain
	title = "Commanding Officer"
	supervisors = "Operational Headquarters and your conscience"
	minimal_player_age = 14
	economic_power = 15
	minimum_character_age = list(SPECIES_HUMAN = 40)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/CO
	allowed_branches = list(
		/datum/mil_branch/larfleet
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/o6
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/captain/get_description_blurb()
	return "Ты - Командующий Офицер. Выше тебя только Оперативный Штаб, военно-полевой суд, ну и морально-этические нормы, с чем ты можешь спорить.\
	Ты опытный и эффективный руководитель и менеджер прекрасного корабля Лордании, и именно с тебя будет спрос за всё, что происходит с ним, либо на нём.\
	Твоя задача состоит в том, чтобы [GLOB.using_map.full_name] в полной мере выполнял свою боевую задачу - разведку территорий.\
	 Пользуйтесь помощью Первого Офицера, глав отделов , (и вашего политрука) для эффективного управления кораблём, но не пренебрегайте собственным опытом."
/datum/job/captain/post_equip_rank(var/mob/person, var/alt_title)
	var/sound/announce_sound = (GAME_STATE <= RUNLEVEL_SETUP)? null : sound('sound/misc/boatswain.ogg', volume=20)
	captain_announcement.Announce("All hands, [alt_title || title] [person.real_name] on deck!", new_sound = announce_sound)
	..()

/datum/job/hop
	title = "First Officer"
	supervisors = "the Commanding Officer"
	department = "Command"
	department_flag = COM
	minimal_player_age = 8
	economic_power = 12
	minimum_character_age = list(SPECIES_HUMAN = 35)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/XO
	allowed_branches = list(
		/datum/mil_branch/larfleet
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/o5
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	access = list(access_security, access_brig, access_armory, access_forensics_lockers, access_heads, access_medical, access_morgue, access_tox, access_tox_storage,
					access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage, access_change_ids,
					access_ai_upload, access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_chapel_office, access_tech_storage,
					access_atmospherics, access_bar, access_janitor, access_crematorium, access_kitchen, access_robotics, access_cargo, access_construction,
					access_chemistry, access_cargo_bot, access_hydroponics, access_manufacturing, access_library, access_lawyer, access_virology, access_cmo,
					access_qm, access_network, access_surgery, access_research, access_mining, access_mining_office, access_mailsorting, access_heads_vault,
					access_mining_station, access_xenobiology, access_ce, access_hop, access_hos, access_RC_announce, access_keycard_auth, access_tcomsat,
					access_gateway, access_sec_doors, access_psychiatrist, access_xenoarch, access_medical_equip, access_heads, access_hangar, access_guppy_helm,
					access_expedition_shuttle_helm, access_aquila, access_aquila_helm, access_solgov_crew, access_nanotrasen, access_robotics_engineering,
					access_emergency_armory, access_sec_guard, access_gun, access_expedition_shuttle, access_guppy, access_seneng, access_senmed, access_senadv,
					access_explorer, access_pathfinder, access_pilot, access_commissary, access_petrov, access_petrov_helm, access_petrov_analysis, access_petrov_phoron,
					access_petrov_toxins, access_petrov_chemistry, access_petrov_security, access_petrov_maint, access_rd, access_petrov_rd)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/hop/get_description_blurb()
	return "Ты - Первый ОФицер.\
	Будучи опытным старшим офицером, ты являешься буквально вторым по значимости на всём корабле, с вытекающей ответственностью за бесперебойную работу на корабле, \
	под взором командующего офицера, которого ты заменяешь в его отсутствии.\
	Твоей основной обязанностью является (!)непосредственное управление руководителями отделов и всеми теми, кто не перебывает в каком-либо отделе.\
	Вы также несете ответственность за подрядчиков и пассажиров на борту корабля. Не пренебрегайте помощью Мостовых Офицеров и политрука!"

/datum/job/rd
	title = "Research Director"
	supervisors = "the Commanding Officer"
	economic_power = 20
	minimal_player_age = 6
	minimum_character_age = list(SPECIES_HUMAN = 35, SPECIES_SKRELL = 35)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/cso
	allowed_branches = list(
		/datum/mil_branch/lord
	)
	allowed_ranks = list(
		/datum/mil_rank/lord/scientist
	)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_ADEPT,
	                    SKILL_BOTANY      = SKILL_BASIC,
	                    SKILL_ANATOMY     = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	access = list(
		access_tox, access_tox_storage, access_emergency_storage, access_teleporter, access_bridge, access_rd,
		access_research, access_mining, access_mining_office, access_mining_station, access_xenobiology,
		access_RC_announce, access_keycard_auth, access_xenoarch, access_nanotrasen, access_sec_guard, access_heads,
		access_expedition_shuttle, access_guppy, access_hangar, access_petrov, access_petrov_helm, access_guppy_helm,
		access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_petrov_rd,
		access_petrov_security, access_petrov_maint, access_pathfinder, access_explorer, access_eva, access_solgov_crew,
		access_expedition_shuttle, access_expedition_shuttle_helm, access_maint_tunnels, access_robotics, access_robotics_engineering
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/aidiag,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/rd/get_description_blurb()
	return "-"

/datum/job/cmo
	title = "Chief Medical Officer"
	supervisors = "the Commanding Officer and the First Officer"
	economic_power = 10
	minimal_player_age = 6
	minimum_character_age = list(SPECIES_HUMAN = 35)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/cmo
	allowed_branches = list(
		/datum/mil_branch/larfleet
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/o3,
		/datum/mil_rank/larfleet/o4,
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_EXPERT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC,
						SKILL_DEVICES     = SKILL_ADEPT,
						SKILL_VIROLOGY    = HAS_PERK)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 26

	access = list(access_medical, access_morgue, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_bridge, access_heads,
			            access_chapel_office, access_crematorium, access_chemistry, access_virology,
			            access_cmo, access_surgery, access_RC_announce, access_keycard_auth, access_psychiatrist,
			            access_medical_equip, access_solgov_crew, access_senmed, access_hangar)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/cmo/get_description_blurb()
	return "-"

/datum/job/chief_engineer
	title = "Chief Engineer"
	supervisors = "the Commanding Officer and the First Officer"
	economic_power = 9
	minimum_character_age = list(SPECIES_HUMAN = 27)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/chief_engineer
	selection_color = "#b8733d"
	allowed_branches = list(
		/datum/mil_branch/larfleet
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/o3,
		/datum/mil_rank/larfleet/o4
	)
	min_skill = list(   SKILL_BUREAUCRACY  = SKILL_BASIC,
	                    SKILL_COMPUTER     = SKILL_ADEPT,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_ADEPT,
	                    SKILL_ENGINES      = SKILL_EXPERT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 30

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_ai_upload, access_teleporter, access_eva, access_bridge, access_heads,
			            access_tech_storage, access_robotics, access_atmospherics, access_janitor, access_construction,
			            access_network, access_ce, access_RC_announce, access_keycard_auth, access_tcomsat,
			            access_solgov_crew, access_robotics_engineering, access_seneng, access_hangar, access_robotics)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/ntnetmonitor,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports)

/datum/job/chief_engineer/get_description_blurb()
	return "-"

/datum/job/hos
	title = "Chief of Security"
	supervisors = "the Commanding Officer and the First Officer"
	economic_power = 8
	minimal_player_age = 14
	minimum_character_age = list(SPECIES_HUMAN = 25)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/cos
	allowed_branches = list(
		/datum/mil_branch/larfleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/o3,
		/datum/mil_rank/larfleet/o4
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 28

	access = list(access_security, access_brig, access_armory, access_forensics_lockers,
			            access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_bridge, access_heads,
			            access_hos, access_RC_announce, access_keycard_auth, access_sec_doors,
			            access_solgov_crew, access_gun, access_emergency_armory, access_hangar, access_petrov, access_petrov_security)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/hos/get_description_blurb()
	return "-"
/datum/job/sea
	title = "Political Officer"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer and the First Officer"
	selection_color = "#2f2f7f"
	minimal_player_age = 6
	economic_power = 8
	minimum_character_age = list(SPECIES_HUMAN = 35)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/sea/fleet
	allowed_branches = list(
		/datum/mil_branch/larfleet
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/e8,
		/datum/mil_rank/larfleet/e9_alt2,
		/datum/mil_rank/larfleet/e9
	)
	min_skill = list(   SKILL_EVA        = SKILL_BASIC,
	                    SKILL_COMBAT     = SKILL_BASIC,
	                    SKILL_WEAPONS    = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT       = SKILL_MAX,
	                    SKILL_WEAPONS      = SKILL_MAX,
	                    SKILL_PILOT        = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX)
	skill_points = 24


	access = list(access_medical, access_engine, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_janitor,
			            access_kitchen, access_cargo, access_RC_announce, access_keycard_auth, access_guppy_helm,
			            access_solgov_crew, access_gun, access_expedition_shuttle, access_guppy, access_senadv, access_hangar, access_emergency_armory, access_gunnery, access_security)

	software_on_spawn = list(/datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/sea/get_description_blurb()
	return "-"

/datum/job/bridgeofficer
	title = "Navigator"
	department = "Support"
	department_flag = SPT
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Commanding Officer and heads of staff"
	selection_color = "#2f2f7f"
	minimal_player_age = 0
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 21,SPECIES_UNATHI = 21, SPECIES_SKRELL = 21, SPECIES_PROMETHEAN = 21, SPECIES_YEOSA = 21, SPECIES_TAJ = 21)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/bridgeofficer
	allowed_branches = list(
		/datum/mil_branch/larfleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/o1,
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_ADEPT,
						SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
						SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 20


	access = list(access_security, access_medical, access_teleporter, access_engine, access_maint_tunnels, access_emergency_storage,
			            access_bridge, access_janitor, access_kitchen, access_cargo, access_mailsorting, access_RC_announce, access_keycard_auth,
			            access_solgov_crew, access_aquila, access_aquila_helm, access_guppy, access_guppy_helm, access_external_airlocks,
			            access_eva, access_hangar, access_cent_creed, access_explorer, access_expedition_shuttle, access_expedition_shuttle_helm, access_gunnery)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports,
							 /datum/computer_file/program/deck_management)

/datum/job/bridgeofficer/get_description_blurb()
	return "-"

/datum/job/terrep
	title = "ICCG Representative"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "Operational Headquarters and Terran Embassy Command"
	selection_color = "#b00000"
	minimal_player_age = 14
	economic_power = 16
	minimum_character_age = list(SPECIES_HUMAN = 25)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/terrep
	alt_titles = list(
		"ICCG Diplomat",
		"ICCG Negotiator")
	allowed_branches = list(
		/datum/mil_branch/terran
	)
	allowed_ranks = list(
		/datum/mil_rank/terran/o3
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_SCIENCE     = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_BASIC)

	max_skill = list(   SKILL_BUREAUCRACY       = SKILL_MAX,
	                    SKILL_FINANCE     = SKILL_MAX)
	skill_points = 20

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

	access = list(access_representative, access_maint_tunnels, access_bridge, access_solgov_crew)


/datum/job/terrep/get_description_blurb()
	return "-"

/datum/job/terrep/post_equip_rank(var/mob/person, var/alt_title)
	var/my_title = "\a ["\improper [(person.mind ? (person.mind.role_alt_title ? person.mind.role_alt_title : person.mind.assigned_role) : "Representative's Guard")]"]"
	for(var/mob/M in GLOB.player_list)
		if(M.client && M.mind)
			if(M.mind.assigned_role == "ICCG Guard")
				to_chat(M, SPAN_NOTICE("<b>Your supervisor, [my_title] named [person.real_name], is present on [GLOB.using_map.full_name].</b>"))
	..()

/datum/job/terguard
	title = "ICCG Guard"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "the ICCG Representative"
	selection_color = "#b00000"
	economic_power = 12
	minimal_player_age = 2
	minimum_character_age = list(SPECIES_HUMAN = 25)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/ter_bodyguard
	allowed_branches = list(/datum/mil_branch/terran)
	allowed_ranks = list(
		/datum/mil_rank/terran/e4,
		/datum/mil_rank/terran/e6)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)
	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX,
	                    SKILL_BUREAUCRACY = SKILL_MAX)
	skill_points = 24
	access = list(access_representative, access_maint_tunnels, access_bridge, access_solgov_crew, access_sec_guard)
	defer_roundstart_spawn = TRUE

/datum/job/terguard/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "ICCG Representative")
				return TRUE
	return FALSE

/datum/job/terguard/get_description_blurb()
	return "-"

/datum/job/terguard/post_equip_rank(var/mob/person, var/alt_title)
	var/my_title = "\a ["\improper [(person.mind ? (person.mind.role_alt_title ? person.mind.role_alt_title : person.mind.assigned_role) : "Representative's Guard")]"]"
	for(var/mob/M in GLOB.player_list)
		if(M.client && M.mind)
			if(M.mind.assigned_role == "ICCG Representative")
				to_chat(M, SPAN_NOTICE("<b>Your Guard, [my_title] named [person.real_name], is present on [GLOB.using_map.full_name].</b>"))
	..()
