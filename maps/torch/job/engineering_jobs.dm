/datum/job/senior_engineer
	title = "Senior Engineer"
	department = "Engineering"
	department_flag = ENG
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief Engineer"
	selection_color = "#a25f2a"
	economic_power = 6
	minimal_player_age = 3
	minimum_character_age = list(SPECIES_HUMAN = 27)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/senior_engineer
	allowed_branches = list(
		/datum/mil_branch/larfleet = /decl/hierarchy/outfit/job/torch/crew/engineering/senior_engineer/fleet,
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/larfleet/e6,
		/datum/mil_rank/larfleet/e7,
		/datum/mil_rank/larfleet/e8,
	)
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_ADEPT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 24

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_tech_storage, access_atmospherics, access_janitor, access_construction,
			            access_tcomsat, access_solgov_crew, access_seneng, access_hangar, access_network, access_robotics)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/senior_engineer/get_description_blurb()
	return "Вы - Старший Инженер. Вашим прямым начальством является Главный Инженер, в то время как Вашими подчиненными являются остальные инженеры.\
	Несмотря на это, у Вас может быть больше практического опыта, чем у Главного Инженера.\
	Вы должны быть как минимум экспертом в широком списке инженерных специальностей.\
	Координируйте отдел вместе с Главным Инженером, обеспечивая слаженную работу всего департамента, словно огромного механизма."

/datum/job/engineer
	title = "Engineer"
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Chief Engineer and the Senior Engineer"
	economic_power = 5
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 19)
	selection_color = "#a25f2a"
	alt_titles = list(
		"Engine Technician",
		"Electrician",
		"Atmospheric Technician",
		"Telecommunications Technician"
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/engineer
	allowed_branches = list(
		/datum/mil_branch/larfleet = /decl/hierarchy/outfit/job/torch/crew/engineering/engineer/fleet,
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/e3,
		/datum/mil_rank/larfleet/e4,
		/datum/mil_rank/larfleet/e5,,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_BASIC,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_BASIC,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 20

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_tech_storage, access_atmospherics, access_construction,
			            access_solgov_crew, access_hangar, access_tcomsat)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/engineer/get_description_blurb()
	return "Вы - Инженер. Вашим прямым начальством является Старший и Главный Инженер.\
	Вы можете быть узкоспециализированным специалистом в определенной области инженерии,\
	но в тоже время быть в общих чертах знакомы с большинством других областей, хотя этого и не ожидается."
/datum/job/engineer_trainee
	title = "Engineer Trainee"
	department = "Engineering"
	department_flag = ENG
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Engineer and Engineering Personnel"
	selection_color = "#a25f2a"
	minimum_character_age = list(SPECIES_HUMAN = 18)

	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/contractor
	allowed_branches = list(
		/datum/mil_branch/larfleet = /decl/hierarchy/outfit/job/torch/crew/engineering/fleetassistant,
		/datum/mil_branch/civilian,
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/e2,
		/datum/mil_rank/civ/contractor,
	)

	skill_points = 4
	no_skill_buffs = TRUE

	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_HAULING      = SKILL_ADEPT,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_ADEPT,
	                    SKILL_ENGINES      = SKILL_ADEPT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)

	access = list(access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_eva, access_tech_storage, access_construction,
			            access_solgov_crew, access_hangar)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/engineer_trainee/get_description_blurb()
	return "Вы - Инженер-Стажер. Вашим прямым начальством являются все остальные члены инженерного отдела,\
	хотя приказы Старшего и Главного инженера Вы должны выполнять с приоритетом.\
	Вы постигаете искусство управления различными бортовыми системами от более опытных коллег. Постарайтесь ничего не взорвать!"

/datum/job/roboticist
	title = "Roboticist"
	department = "Engineering"
	department_flag = ENG

	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 22)
	supervisors = "the Chief Engineer and the Senior Engineer"
	selection_color = "#a25f2a"
	economic_power = 6
	alt_titles = list(
		"Mechsuit Technician",
		"Biomechanical Technician"
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/roboticist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ,
	/datum/mil_rank/civ/contractor)
	min_skill = list(   SKILL_COMPUTER		= SKILL_ADEPT,
	                    SKILL_DEVICES		= SKILL_ADEPT,
	                    SKILL_ANATOMY       = SKILL_EXPERT,
	                    SKILL_SCIENCE     	= SKILL_ADEPT,
	                    SKILL_MEDICAL     	= SKILL_ADEPT,
	                    SKILL_MECH          = HAS_PERK,
	                    SKILL_ELECTRICAL    = SKILL_BASIC,
	                    SKILL_CONSTRUCTION  = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_EXPERT,
	                    SKILL_ENGINES      = SKILL_EXPERT,
	                    SKILL_DEVICES      = SKILL_MAX,
	                    SKILL_MEDICAL      = SKILL_EXPERT,
	                    SKILL_ANATOMY      = SKILL_MAX)
	skill_points = 24

	access = list(access_robotics, access_robotics_engineering, access_nanotrasen, access_engine, access_solgov_crew, access_maint_tunnels, access_research, access_petrov_maint)

/datum/job/roboticist/get_description_blurb()
	return "Вы - Робототехник. Вашим прямым начальством является Старший и Главный инженеры.\
	 В Ваши обязанности входит создание, обслуживание и апгрейд корабельных синтов и разумных существ с Полным Протезом Тела.\
	 Кроме этого, Вы вольны создавать Экзокостюмы, называемые мехами, а также небольших ботов для различных отделов."
