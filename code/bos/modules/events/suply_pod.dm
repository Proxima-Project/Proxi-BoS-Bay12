/datum/event/supply_pod
	announceWhen = 5

/datum/event/supply_pod/announce()
	command_announcement.Announce("Из-за ошибки снабжения в Антарес попал под снабжения не предназначенный ему. Возвращения содержимого пода будет слишком затратно, поэтому было решено что вы можете использовать его содержимое по своему усмотрению.", zlevels = affecting_z)

/datum/event/supply_pod/start()
	var/drop_type = pick(supply_drop_random_loot_types())
	var/drop_x = rand(55, 110)
	var/drop_y = rand(80, 120)
	var/drop_z = rand(3, 5)
	new /datum/random_map/droppod/supply(null, drop_x, drop_y, drop_z, supplied_drop = drop_type)
