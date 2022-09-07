/datum/job/sea/marine
	title = "Marine Officer"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/sea/marine
	allowed_branches = list(
		/datum/mil_branch/larmarine
	)
	allowed_ranks = list(
		/datum/mil_rank/larmarine/o2
	)
	access = list(access_medical, access_engine, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
						access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_janitor,
						access_kitchen, access_cargo, access_RC_announce, access_keycard_auth, access_guppy_helm,
						access_solgov_crew, access_gun, access_expedition_shuttle, access_guppy, access_senadv, access_hangar, access_emergency_armory, access_gunnery, access_marines, access_marspec, access_marcom, access_marlead)

/datum/job/squad_lead
	title = "Marine Squad Leader"
	department = "Marines"
	department_flag = INF
	total_positions = 1
	spawn_positions = 1
	supervisors = "the highest ranking Marine and Antares Command"
	selection_color = "#557e38"
	minimal_player_age = 12
	economic_power = 7
	skill_points = 26
	minimum_character_age = list(SPECIES_HUMAN = 25)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/infantry/squad_lead
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_EVA         = SKILL_ADEPT,
						SKILL_COMBAT      = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)

	max_skill = list(	SKILL_COMBAT      = SKILL_MAX,
						SKILL_WEAPONS     = SKILL_MAX,
						SKILL_EVA		  = SKILL_MAX)

	allowed_branches = list(/datum/mil_branch/larmarine)
	allowed_ranks = list(
		/datum/mil_rank/larmarine/e6,
		/datum/mil_rank/larmarine/e7
	)

	access = list(access_maint_tunnels, access_solgov_crew, access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_marines,
						access_marlead, access_martech, access_marmed, access_marspec, access_aquila, access_eva, access_bridge)

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/squad_lead/get_description_blurb()
	return "Вы - Лидер Отряда Морпехов ЛСС. Тяжелая ноша управления небольшим отрядом морпехов взгромоздилась на Ваши плечи.\
	 Сопровождайте отряды Полевой Поддержки на планетойдах, защищайте зловещие артефакты и свой научный персонал на заброшенных станциях, спорьте с охранным персоналом и капитаном о своих полномочиях.\
	\
	Прим.: Вы - НЕ ОХРАНА СУДНА, а солдаты и эскорт ЭК, работающие на авей-картах."

/datum/job/combat_tech
	title = "Marine Technician"
	supervisors = "the Marine Leader"
	department = "Marines"
	department_flag = INF
	total_positions = 1
	spawn_positions = 1
	selection_color = "#557e38"
	economic_power = 4
	minimal_player_age = 8
	skill_points = 24
	minimum_character_age = list(SPECIES_HUMAN = 20)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/infantry/combat_tech
	min_skill = list(	SKILL_CONSTRUCTION = SKILL_ADEPT,
						SKILL_ELECTRICAL   = SKILL_ADEPT,
						SKILL_MEDICAL      = SKILL_BASIC,
						SKILL_COMBAT       = SKILL_ADEPT,
						SKILL_WEAPONS      = SKILL_ADEPT)

	max_skill = list(	SKILL_COMBAT       = SKILL_MAX,
						SKILL_WEAPONS      = SKILL_MAX,
						SKILL_EVA		   = SKILL_MAX,
						SKILL_CONSTRUCTION = SKILL_MAX,
						SKILL_ELECTRICAL   = SKILL_MAX)

	allowed_branches = list(/datum/mil_branch/larmarine)
	allowed_ranks = list(
		/datum/mil_rank/larmarine/e3,
		/datum/mil_rank/larmarine/e4,
		/datum/mil_rank/larmarine/e5
		)
	access = list(access_maint_tunnels, access_solgov_crew, access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_marines,
						access_aquila, access_eva, access_martech, access_marspec)
/*
/datum/job/combat_tech/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Marine Leader")
				return TRUE
	return FALSE
*/
/datum/job/combat_tech/get_description_blurb()
	return "Вы - Техник военного Отряда ЛСС. Вашим прямым начальством является Лидер военного Отряда ЛСС. \
	В Ваши обязанности входит оказание огня на поражение и снос всего, на что укажет Лидер Отряда. В крайние случаи отсутствия Лидера, Вы можете попытаться взять командование морпехами на себя. Ключевое здесь слово - попытаться.\
	\
	Прим.: Вы - НЕ ОХРАНА СУДНА, а солдаты и эскорт ЭК, работающие на авей-картах."

/datum/job/combat_medic
	title = "Marine Combat Medic"
	supervisors = "the Marine Leader"
	department = "Marines"
	department_flag = INF
	total_positions = 1
	spawn_positions = 1
	selection_color = "#557e38"
	economic_power = 4
	minimal_player_age = 8
	skill_points = 24
	minimum_character_age = list(SPECIES_HUMAN = 20)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/infantry/combat_medic
	min_skill = list(SKILL_EVA    = SKILL_BASIC,
					SKILL_MEDICAL = SKILL_ADEPT,
					SKILL_COMBAT  = SKILL_ADEPT,
					SKILL_WEAPONS = SKILL_ADEPT,
					SKILL_ANATOMY = SKILL_ADEPT)

	max_skill = list(SKILL_MEDICAL     = SKILL_MAX,
					SKILL_ANATOMY	   = SKILL_MAX,
					SKILL_COMBAT       = SKILL_MAX,
					SKILL_WEAPONS      = SKILL_MAX,
					SKILL_CHEMISTRY    = SKILL_MAX)

	allowed_branches = list(
		/datum/mil_branch/larmarine
	)
	allowed_ranks = list(
		/datum/mil_rank/larmarine/e3,
		/datum/mil_rank/larmarine/e4,
		/datum/mil_rank/larmarine/e5
		)
	access = list(access_maint_tunnels, access_solgov_crew, access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_marines,
						access_aquila, access_eva, access_marmed, access_medical, access_marspec)
/*
/datum/job/combat_medic/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Marine Leader")
				return TRUE
	return FALSE
*/
/datum/job/combat_medic/get_description_blurb()
	return "Вы - Медик военного Отряда ЛСС. Вашим прямым начальством является Лидер военного Отряда ЛСС. \
	В Ваши обязанности входит оказание первой медицинской и хирургической помощи морпехам при необходимости. В крайние случаи отсутствия Лидера, Вы можете попытаться взять командование морпехами на себя. Ключевое здесь слово - попытаться. \
	\
	Прим.: Вы - НЕ ОХРАНА СУДНА, а солдаты и эскорт ЭК, работающие на авей-картах."

/datum/job/grunt
	title = "Marine Rifleman"
	department = "Marines"
	department_flag = INF
	total_positions = 3
	spawn_positions = 3
	minimal_player_age = 6
	supervisors = "the Marine Technician and Leader"
	selection_color = "#557e38"
	skill_points = 18
	minimum_character_age = list(SPECIES_HUMAN = 18)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/infantry
	min_skill = list(	SKILL_COMBAT       = SKILL_ADEPT,
						SKILL_WEAPONS      = SKILL_ADEPT,
						SKILL_EVA          = SKILL_BASIC)

	max_skill = list(	SKILL_COMBAT      = SKILL_MAX,
						SKILL_WEAPONS     = SKILL_MAX,
						SKILL_EVA		  = SKILL_MAX)

	software_on_spawn = list(/datum/computer_file/program/deck_management)
	allowed_branches = list(/datum/mil_branch/larmarine)
	allowed_ranks = list(
		/datum/mil_rank/larmarine/e1,
		/datum/mil_rank/larmarine/e2,
		/datum/mil_rank/larmarine/e3,
		/datum/mil_rank/larmarine/e4
	)
	access = list(access_maint_tunnels, access_solgov_crew, access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_marines,
						access_aquila, access_eva)
	alt_titles = list(
		"Marine Grenadier",
		"Marine Assaultman")
/*
/datum/job/grunt/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Marine Leader")
				return TRUE
	return FALSE
*/
/datum/job/grunt/get_description_blurb()
	return "Вы - Морпех из военного Отряда ЛСС. Вашим прямым начальством является Лидер военного Отряда ЛСС. В случае отсутствия Лидера, Техник/Медик возьмет на себя тяжелую ношу в виде командования Вами и другими морпехами. \
	И да, постарайтесь не умереть, выполняя приказы вышестоящих. УРА-А-А-А! \
	\
	Прим.: Вы - НЕ ОХРАНА СУДНА, а солдаты и эскорт ЭК, работающие на авей-картах."
