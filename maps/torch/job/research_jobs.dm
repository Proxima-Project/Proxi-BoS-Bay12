/datum/job/pathfinder
	title = "Exploration Operations Leader"
	department = "Science"
	department_flag = EXP
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	supervisors = "the Research Director"
	selection_color = "#68099e"
	minimal_player_age = 4
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 21)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/exploration/pathfinder
	allowed_branches = list(/datum/mil_branch/civilian, /datum/mil_branch/lord)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor, /datum/mil_rank/lord/gov
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_ADEPT,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX,
	                    SKILL_COMBAT      = SKILL_EXPERT,
	                    SKILL_WEAPONS     = SKILL_EXPERT)
	skill_points = 22

	access = list(
		access_pathfinder, access_explorer, access_eva, access_maint_tunnels, access_bridge, access_emergency_storage,
		access_guppy_helm, access_solgov_crew, access_expedition_shuttle, access_expedition_shuttle_helm, access_research,
		access_guppy, access_hangar, access_petrov_analysis, access_petrov, access_petrov_maint, access_petrov_helm, access_petrov_toxins, access_petrov_security
	)

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/pathfinder/get_description_blurb()
	return "Вы - Руководитель Экспедиционных Работ. Ваша задача - организовывать экспедиции к отдаленным и неисследованным объектам. Вы же и управляете командой Исследователей, удостовреяясь, что вся команда полностью укомплектована. Кроме того, Вы пилотируете Харон, если пилота нет на смене. Отправляясь на задание, убедитесь, что всё, предоставляющее научный интерес будет доставлено в научную лабораторию на корабль."

/datum/job/scientist
	title = "Scientist"
	department = "Science"
	department_flag = SCI
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Research Director"
	economic_power = 10
	minimum_character_age = list(SPECIES_HUMAN = 25)
	minimal_player_age = 0
	alt_titles = list(,
		"Anomalist",
		"Xenobiologist",
		"Xenobotanist",
		"Circuitry Designer",
		"Chemical Researcher"
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
						SKILL_CHEMISTRY   = SKILL_BASIC)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX,
						SKILL_CHEMISTRY   = SKILL_MAX)

	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/scientist
	allowed_branches = list(
		/datum/mil_branch/civilian, /datum/mil_branch/lord
	)
	allowed_ranks = list(,
		/datum/mil_rank/civ/contractor, /datum/mil_rank/lord/gov
	)

	access = list(access_tox, access_maint_tunnels, access_tox_storage, access_research, access_petrov_maint, access_petrov, access_petrov_helm,
						access_mining_office, access_mining_station, access_xenobiology, access_guppy_helm,
						access_xenoarch, access_nanotrasen, access_expedition_shuttle, access_guppy, access_solgov_crew, access_hangar,
						access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_robotics, access_robotics_engineering)
	skill_points = 20

/datum/job/scientist_assistant
	title = "Research Assistant"
	department = "Science"
	department_flag = SCI
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Chief Science Officer, the Workplace Liaison and science personnel"
	selection_color = "#633d63"
	economic_power = 3
	minimum_character_age = list(SPECIES_HUMAN = 18)
	alt_titles = list(
		"Custodian" = /decl/hierarchy/outfit/job/torch/passenger/research/assist/janitor,
		"Testing Assistant" = /decl/hierarchy/outfit/job/torch/passenger/research/assist/testsubject,
		"Intern",
		"Clerk",
		"Field Assistant")

	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/scientist //временно
	allowed_branches = list(
		/datum/mil_branch/civilian, /datum/mil_branch/lord
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor, /datum/mil_rank/lord/gov
	)
	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)

	access = list(access_tox, access_maint_tunnels, access_tox_storage, access_research, access_petrov_maint, access_petrov,
						access_mining_office, access_mining_station, access_xenobiology,
						access_xenoarch, access_nanotrasen, access_expedition_shuttle, access_solgov_crew, access_guppy, access_hangar,
						access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry)

/datum/job/explorer
	title = "Field Scientist"
	department = "Science"
	department_flag = EXP
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Commanding Officer, Executive Officer, and Exploration Operations Leader"
	selection_color = "#68099e"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/scientist

	allowed_branches = list(/datum/mil_branch/civilian, /datum/mil_branch/lord)
	alt_titles = list(
		"Explorer" = /decl/hierarchy/outfit/job/torch/crew/exploration/explorer,
		"Xenoarchaeologist")
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor, /datum/mil_rank/lord/gov
	)
	min_skill = list(   SKILL_EVA = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX,
	                    SKILL_COMBAT      = SKILL_EXPERT,
	                    SKILL_WEAPONS     = SKILL_EXPERT)

	access = list(access_explorer, access_maint_tunnels, access_eva, access_emergency_storage,
		access_guppy_helm, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar, access_petrov_analysis, access_petrov, access_petrov_maint
	)

	software_on_spawn = list(/datum/computer_file/program/deck_management)

/datum/job/explorer/get_description_blurb()
	return "Полевой Ученый: Вашим прямым начальством является Руководитель Разведывательных Работ. В Ваши обязанности входит проведение экспериментов на территории исследуемых объектов, поиск артефактов неземного происхождения, анализ возможной флоры и фауны. Скорее всего, Вы столкнетесь с областями высокой опасности, агрессивными формами жизни, или сбойными системами защиты, так что смотрите в оба. \
	Экспедитор: В Ваши обязанности входит активное исследование объектов, поиск артефактов неземного происхождения, месторождений полезных ископаемых. \
	Ксеноархеолог: В Ваши обязанности входит проведение раскопок, изучение быта и культуры древних цивилизаций, анализ зловещих иероглифов и рун."