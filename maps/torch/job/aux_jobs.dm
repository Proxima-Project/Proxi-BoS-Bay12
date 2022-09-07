   /////
///CARGO///
   /////

/datum/job/qm
	title = "Gunnery Chief"
	department = "Auxiliary"
	department_flag = SPT|SUP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer"
	economic_power = 5
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 25)
	selection_color = "#755c48"
	alt_titles = list(
		"Deck Chief")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/supply/deckofficer/fleet
	allowed_branches = list(
		/datum/mil_branch/larfleet
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/e7
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 20

	access = list(access_maint_tunnels, access_bridge, access_emergency_storage, access_tech_storage,  access_cargo, access_guppy_helm,
						access_cargo_bot, access_qm, access_mailsorting, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar,
						access_mining, access_mining_office, access_mining_station, access_commissary, access_gunnery, access_eva)

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/qm/get_description_blurb()
	return "Вы - Начальник Артилерии, а Вспомогательный отдел, шаттлы в Ангаре и все снаряды на судне - Ваши подданные. В Ваши обязанности входит наблюдение за тем, чтобы корабль был укомплектован, манифесты о полете составлены, боеголовки заряжены, шаттлы заправлены, а корабль оставался готов к новому космическому столкновению."

/datum/job/cargo_tech
	title = "Supply Technician"
	department = "Auxiliary"
	department_flag = SUP
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Gunnery Chief"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	selection_color = "#755c48"
	alt_titles = list(
		"Munitions Technician")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/supply/tech/fleet
	allowed_branches = list(
		/datum/mil_branch/larfleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/supply/contractor
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/e2,
		/datum/mil_rank/larfleet/e3,
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	access = list(access_maint_tunnels, access_emergency_storage, access_cargo, access_guppy_helm,
						access_cargo_bot, access_mailsorting, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar, access_commissary, access_gunnery, access_eva)

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/cargo_tech/get_description_blurb()
	return "Специалист по снабжению: Вашим прямым начальством является Начальник Артилерии. В Ваши обязанности входит заправка шаттлов, обеспечение доставки заказанных товаров, а также предоставление помощи Канониру в изготовлении боеголовок для космических сражений. \
	Канонир: В Ваши обязанности входит защита, хранение, транспортировка, изготовление боеголовок для космических сражений."

/datum/job/mining
	title = "Field Constructor"
	department = "Auxiliary"
	department_flag = SUP
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Gunnery Chief"
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 18)
	selection_color = "#755c48"
	alt_titles = list(
		"Scavenger" = /decl/hierarchy/outfit/job/torch/passenger/research/prospector/scav)

	min_skill = list(   SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_EVA     = SKILL_BASIC,
	                    SKILL_PILOT   = SKILL_BASIC,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/research/prospector
	allowed_branches = list(/datum/mil_branch/civilian,
	/datum/mil_branch/larfleet = /decl/hierarchy/outfit/job/torch/passenger/research/prospector/fleet)
	allowed_ranks = list( /datum/mil_rank/civ/civ,
								/datum/mil_rank/civ/contractor,
								/datum/mil_rank/larfleet/e3,
								/datum/mil_rank/larfleet/e4,
								/datum/mil_rank/larfleet/e5)

	access = list(access_maint_tunnels, access_emergency_storage, access_mining, access_mining_office, access_mining_station,
						access_expedition_shuttle, access_guppy, access_hangar, access_guppy_helm, access_solgov_crew, access_cargo, access_eva)

/datum/job/mining/get_description_blurb()
	return "Член Полевой Поддержки: Вашим прямым начальством является Начальник Артилерии. В Ваши обязанности входит помощь и организация подспорья для Лорданианской экспансии, путем постройки баррикад и усиления обороны на подконтрольных ЛСС аванпостах.\
	Сборщик: В Ваши обязанности входит утилизация разрушенных кораблей, расхищение подозрительных объектов и получение прибыли, чего бы это ни стоило."

/datum/job/nt_pilot
	title = "Pilot"
	supervisors = "the Gunnery Chief"
	department = "Auxiliary"
	department_flag = SUP
	total_positions = 3
	spawn_positions = 3
	economic_power = 10
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 24)
	selection_color = "#755c48"
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/pilot
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/larfleet = /decl/hierarchy/outfit/job/torch/crew/exploration/pilot/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/larfleet/e6
	)

	access = list(
	 access_guppy, access_hangar, access_maint_tunnels, access_guppy_helm, access_expedition_shuttle, access_expedition_shuttle_helm, access_pilot,
		access_solgov_crew, access_eva, access_explorer, access_petrov_analysis, access_research, access_petrov_maint, access_petrov_helm, access_aquila, access_aquila_helm
	)
	min_skill = list(	SKILL_EVA   = SKILL_BASIC,
						SKILL_PILOT = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)

/datum/job/pilot/get_description_blurb()
	return "Вы - Пилот. Вашим прямым начальством является Мастер Артилерии.\
	В Ваши обязанности входит управление и обслуживание корабельных шаттлов на операциях морпехов и экспедиционных миссиях научного персонала.\
	Выпивайте в баре, заботьтесь о шаттлах, как о своих детях, будьте самым быстрым пилотом во всей Лордании."

	//////
///SERVICE///
   ///////

/datum/job/chaplain
	title = "Chaplain"
	department = "Auxiliary"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 21)
	economic_power = 5
	minimal_player_age = 0
	supervisors = "the First Officer"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/chaplain
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/larfleet = /decl/hierarchy/outfit/job/torch/crew/service/chaplain/fleet)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/larfleet/o1)

	min_skill = list(SKILL_BUREAUCRACY = SKILL_BASIC)
	access = list(access_morgue, access_chapel_office, access_crematorium, access_solgov_crew, access_medical, access_maint_tunnels)

/datum/job/janitor
	title = "Janitor"
	department = "Auxiliary"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Firs Officer"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/larfleet = /decl/hierarchy/outfit/job/torch/crew/service/janitor/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/larfleet/e2,
		/datum/mil_rank/larfleet/e3
	)

	min_skill = list(   SKILL_HAULING = SKILL_BASIC)

	access = list(access_maint_tunnels, access_emergency_storage, access_janitor, access_solgov_crew, access_hangar)

/datum/job/canworker
	title = "Canteen Worker"
	department = "Auxiliary"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 2
	minimum_character_age = list(SPECIES_HUMAN = 18)
	supervisors = "the First Officer"
	alt_titles = list(
		"Chef" = /decl/hierarchy/outfit/job/torch/crew/service/cook,
		"Bartender" = /decl/hierarchy/outfit/job/torch/crew/service/bartender
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/canworker
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/larfleet = /decl/hierarchy/outfit/job/torch/crew/service/canworker/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/larfleet/e2,
		/datum/mil_rank/larfleet/e3
	)
	min_skill = list(   SKILL_COOKING   = SKILL_ADEPT,
	                    SKILL_BOTANY    = SKILL_BASIC,
	                    SKILL_CHEMISTRY = SKILL_BASIC)
	access = list(access_maint_tunnels, access_hydroponics, access_kitchen, access_solgov_crew, access_bar, access_commissary)

/datum/job/crew
	title = "Crewman"
	department = "Auxiliary"
	department_flag = SRV
	total_positions = 10
	spawn_positions = 10
	supervisors = "the First Officer"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/crewman
	allowed_branches = list(
		/datum/mil_branch/larfleet
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/e1,
		/datum/mil_rank/larfleet/e2,
	)

	access = list(access_maint_tunnels, access_emergency_storage, access_solgov_crew)

/datum/job/chronicler
	title = "Chronicler"
	department = "Auxiliary"
	department_flag = SRV
	total_positions = 3
	spawn_positions = 3
	supervisors = "the First Officer"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/chronicler
	allowed_branches = list(
		/datum/mil_branch/larfleet = /decl/hierarchy/outfit/job/torch/crew/service/chronicler/fleet,
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/o1,
		/datum/mil_rank/civ/civ
	)

	access = list(access_maint_tunnels, access_emergency_storage, access_solgov_crew, access_hangar, access_chronicler)

/datum/job/chronicler/get_description_blurb()
	return "Впервые летописцы как востребованная профессия появились во времена Тишины, когда человечество не имело связи. \
	Те времена давно прошли, но и сейчас у этих варваров совсем нет времени на историю. Вы должны это исправить. \
	Ведите военную хронику, записывайте все события на корабле, приставайте к командованию с просьбами пустить их на мостик, умирайте в экспедициях."
