/datum/map/torch
	name = "Antares"
	full_name = "LRS Antares"
	path = "torch"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK

	admin_levels = list(7)
	escape_levels = list(8)
	empty_levels = list(9)
	accessible_z_levels = list("1"=1,"2"=3,"3"=1,"4"=1,"5"=1,"6"=1,"9"=30)
	overmap_size = 35
	overmap_event_areas = 34
	usable_email_tlds = list("antar.lssf.mil", "antar.lordgov", "freemail.net", "gilgamesh.navy.mil", "antar.oorah.mil")

	allowed_spawns = list("Cryogenic Storage", "Cyborg Storage")
	default_spawn = "Cryogenic Storage"

	station_name  = "LRS Antares"
	station_short = "Antares"
	dock_name     = "TBD"
	boss_name     = "Operational Headquarters"
	boss_short    = "OpHQ"
	company_name  = "Lordanian Sovereign Systems Fleet"
	company_short = "LSSF"

	map_admin_faxes = list("Operational Headquarters")

	//These should probably be moved into the evac controller...
	shuttle_docked_message = "Всему экипажу: Подготовка к прыжку окончена. Блюспейс-двигатель закончил калибровку. Время до прыжка: приблизительно %ETD%."
	shuttle_leaving_dock = "Всему экипажу: Прыжок инициирован, выход из блюспейс-пространства через %ETA%."
	shuttle_called_message = "Всему экипажу: Подготовка к прыжку инициирована. Процедуры транзита в действии. Прыжок через %ETA%."
	shuttle_recall_message = "Всему экипаж: Подготовка к прыжку отменена, возвращайтесь к стандартным процедурам работы."

	evac_controller_type = /datum/evacuation_controller/starship

	default_law_type = /datum/ai_laws/lordania
	use_overmap = 1
	num_exoplanets = 1

	away_site_budget = 2.5
	//id_hud_icons = 'maps/torch/icons/assignment_hud.dmi'
	id_hud_icons = 'maps/torch/icons/assignment_hud_boh.dmi'

	available_cultural_info = list(
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_LORDANIA,
			HOME_SYSTEM_TERRA,
			HOME_SYSTEM_TERSTEN,
			HOME_SYSTEM_LORRIMAN,
			HOME_SYSTEM_CINU,
			HOME_SYSTEM_YUKLID,
			HOME_SYSTEM_KINGSTON,
			HOME_SYSTEM_GAIA,
			HOME_SYSTEM_MAGNITKA,
			HOME_SYSTEM_MARS,
			HOME_SYSTEM_LUNA,
			HOME_SYSTEM_EARTH,
			HOME_SYSTEM_VENUS,
			HOME_SYSTEM_CERES,
			HOME_SYSTEM_PLUTO,
			HOME_SYSTEM_TAU_CETI,
			HOME_SYSTEM_HELIOS,
			HOME_SYSTEM_OTHER

		),
		TAG_FACTION = list(
			FACTION_SOVLORDANIA,
			FACTION_LARFLEET,
			FACTION_LARMARINES,
			FACTION_INDIE_CONFED,
			FACTION_SYNDI,
			FACTION_LRA,
			FACTION_SOL_CENTRAL,
			FACTION_FLEET,
//			FACTION_CORPORATE,
//			FACTION_NANOTRASEN,
			FACTION_FREETRADE,
//			FACTION_XYNERGY,
//			FACTION_HEPHAESTUS,
//			FACTION_DAIS,
//			FACTION_EXPEDITIONARY,
//			FACTION_FLEET,
//			FACTION_MARINES,
//			FACTION_PCRC,
			FACTION_NONE,
			FACTION_OTHER
		),
		TAG_CULTURE = list(
			CULTURE_HUMAN_LORDANIAN_WEST,
			CULTURE_HUMAN_LORDANIAN_EAST,
			CULTURE_HUMAN_TERSTEN_UP,
			CULTURE_HUMAN_TERSTEN_DW,
			CULTURE_HUMAN_YUKLID,
			CULTURE_HUMAN_LORRIMAN,
			CULTURE_HUMAN_MARTIAN,
			CULTURE_HUMAN_MARSTUN,
			CULTURE_HUMAN_LUNAPOOR,
			CULTURE_HUMAN_LUNARICH,
			CULTURE_HUMAN_VENUSIAN,
			CULTURE_HUMAN_VENUSLOW,
			CULTURE_HUMAN_BELTER,
			CULTURE_HUMAN_PLUTO,
			CULTURE_HUMAN_EARTH,
			CULTURE_HUMAN_CETI,
			CULTURE_HUMAN_SPACER,
			CULTURE_HUMAN_SPAFRO,
			CULTURE_HUMAN_CONFED,
			CULTURE_HUMAN_OTHER,
			CULTURE_OTHER
		),
		TAG_RELIGION = list(
			RELIGION_OTHER,
			RELIGION_JUDAISM,
			RELIGION_HINDUISM,
			RELIGION_BUDDHISM,
			RELIGION_SIKHISM,
			RELIGION_JAINISM,
			RELIGION_ISLAM,
			RELIGION_CHRISTIANITY,
			RELIGION_BAHAI_FAITH,
			RELIGION_AGNOSTICISM,
			RELIGION_DEISM,
			RELIGION_ATHEISM,
			RELIGION_THELEMA,
			RELIGION_SPIRITUALISM,
			RELIGION_SHINTO,
			RELIGION_TAOISM
		)
	)

	default_cultural_info = list(
		TAG_HOMEWORLD = HOME_SYSTEM_LORDANIA,,
		TAG_FACTION =   FACTION_SOVLORDANIA,
		TAG_CULTURE =   CULTURE_HUMAN_LORDANIAN_WEST,
		TAG_RELIGION =  RELIGION_ATHEISM
	)