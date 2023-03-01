GLOBAL_LIST_INIT(castelnay_command, list("Captain"))
/datum/map/castelnau
	name = "Castelnau"
	full_name = "RMV Castelnau"
	path = "castelnau"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK

	load_legacy_saves = TRUE

	station_levels = list(1,2,3)
	contact_levels = list(1,2,3)
	player_levels = list(1,2,3)
	admin_levels = list(4,5)
	empty_levels = list(6)
	accessible_z_levels = list("1"=1,"2"=1,"3"=1,"6" = 30)
	overmap_size = 35
	overmap_event_areas = 15
	usable_email_tlds = list("reg.net", "mil.gov", "syndicate.net", "freemail.net")

	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"

	station_name  = "RMV Castelnau"
	station_short = "Castelnau"
	dock_name     = "TBD"
	boss_name     = "Regulators Center"
	boss_short    = "Center"
	company_name  = "Regulators"
	company_short = "Regs"

	map_admin_faxes = list("Regulators Center")

	evac_controller_type = /datum/evacuation_controller

	default_law_type = /datum/ai_laws/nanotrasen
	use_overmap = 1
	num_exoplanets = 0

	away_site_budget = 3
	id_hud_icons = 'maps/castelnau/icons/assignment_hud.dmi'

	starting_money = 30000
	salary_modifier = 0.4
	supply_currency_name = "Cargo credits"
	supply_currency_name_short = "CaCr."
	local_currency_name = "credits"
	local_currency_name_singular = "credit"
	local_currency_name_short = "Cr"

	available_cultural_info = list(
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_LORDANIA,
			HOME_SYSTEM_TERRA,
			HOME_SYSTEM_TERSTEN,
			HOME_SYSTEM_LORRIMAN,
			HOME_SYSTEM_CINU,
			HOME_SYSTEM_YUKLID,
			HOME_SYSTEM_KINGSTON,
//			HOME_SYSTEM_GAIA,
			HOME_SYSTEM_MAGNITKA,
			HOME_SYSTEM_MARS,
			HOME_SYSTEM_LUNA,
			HOME_SYSTEM_EARTH,
			HOME_SYSTEM_VENUS,
			HOME_SYSTEM_CERES,
			HOME_SYSTEM_PLUTO,
			HOME_SYSTEM_TAU_CETI,
//			HOME_SYSTEM_HELIOS,
			HOME_SYSTEM_OTHER

		),
		TAG_FACTION = list(
			FACTION_REGS,
//			FACTION_SOVLORDANIA,
			FACTION_LARFLEET,
//			FACTION_LARMARINES,
//			FACTION_KGB,
			FACTION_INDIE_CONFED,
			FACTION_SYNDI,
//			FACTION_LRA,
//			FACTION_SOL_CENTRAL,
//			FACTION_FLEET,
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
		TAG_HOMEWORLD = HOME_SYSTEM_OTHER,
		TAG_FACTION =   FACTION_REGS,
		TAG_CULTURE =   CULTURE_HUMAN_SPACER,
		TAG_RELIGION =  RELIGION_ATHEISM
	)

/datum/map/castelnau/setup_map()
	..()
//	system_name = generate_system_name()
	system_name = "Mjolnir"
	minor_announcement = new(new_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45))

/datum/map/castelnau/get_map_info()
	. = list()
	. += "И так, вы попали на борт этого богом забытого, созданного на скорую руку из случайно собранного металлолома корабля - РМК Кастельнау."
	. += "Стоим мы в этом заполненном крысами и тараканами помещении только потому, что вы решили продать своё тело и душу регуляторам - ведомые жаждой наживы, свободы или пистолетом у вашего виска, а может сотней других возможных причин, ежедневно порождаемых этим проклятым миром."
	. += ""
	. += "Мы находимся в системе Мьёльнир. Она не менее забыта, чем наши проданные души. Мьёльнир наполнен дикими племенами, коммунистами, сошедшими с ума старыми адмиралами, пиратами, нелегальными торговцами и остальным отребьем - и именно за их головами послан РМК Кастельнау."
	. += "Пока участники самопровозглашённого 'Альянса человечества' обстреливает миром планеты бывшего ЦПСС, регуляторы, и в том числе вы, направляйтесь по воле сильных мира сего на задачи меньшего масштаба."
	. += "Им не важно как вы выполните свою цель. Грабьте, убивайте, сжигайте - главное достигнуть поставленного и получить награду, наверняка столь желанную вами."
	. += ""
	. += "И даже не думайте, что вы одни во вселенной. Воксы и Восхождение, видя слабости грызущихся меж собой людей, продолжают свои походы, захватывая себе всё больше новых систем. Кто знает, может это забытое место станет следующим?"
	. += "Как бы то не было, вы знаете для чего вы тут. Вы знаете, за что продали свою душу."
	. += ""
	. += "А теперь вперёд, как говорят в Альянсе, за человечество!"
	return jointext(., "<br>")

/datum/map/castelnau/send_welcome()
	var/welcome_text = "<center><br /><font size = 3><b>FTV Cheapskate</b> Показания Сенсоров:</font><hr />"
	welcome_text += "Отчет сгенерирован [stationdate2text()] в [stationtime2text()]</center><br /><br />"
	welcome_text += "Текущая система: <b>Мьолнир</b><br />"
	welcome_text += "Дней с последнего визита в порт: <b>[rand(30,90)]</b><br />"
	welcome_text += "Результаты сканирования показали следующие потенциальные объекты для проверки:<br />"
	var/list/space_things = list()
	var/obj/effect/overmap/visitable/castelnau = map_sectors["1"]
	for(var/zlevel in map_sectors)
		var/obj/effect/overmap/visitable/O = map_sectors[zlevel]
		if(O.name == castelnau.name)
			continue
		space_things |= O

	var/list/distress_calls
	for(var/obj/effect/overmap/visitable/O in space_things)
		var/location_desc = " на текущем квадрате."
		if(O.loc != castelnau.loc)
			var/bearing = round(90 - Atan2(O.x - castelnau.x, O.y - castelnau.y),5) //fucking triangles how do they work
			if(bearing < 0)
				bearing += 360
			location_desc = ", по азимуту [bearing]."
		if(O.has_distress_beacon)
			LAZYADD(distress_calls, "[O.has_distress_beacon][location_desc]")
		welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

	if(LAZYLEN(distress_calls))
		welcome_text += "<br><b>Обнаружены сигналы бедствия:</b><br>[jointext(distress_calls, "<br>")]<br>"
	else
		welcome_text += "<br>Сигналов бедствия не обнаружено.<br />"
	welcome_text += "<hr>"

	post_comm_message("FTV Cheapskate Sensor Readings", welcome_text)
	minor_announcement.Announce(message = "Новое сообщение от [GLOB.using_map.company_name] доступно Командованию Регуляторов на всех терминалах.")

