/obj/machinery/stealth
	name = "Stealth unit"
	desc = "Хуйня для стелка ежжжи :call_me:"
	power_channel = ENVIRON
	interact_offline = FALSE
	anchored = TRUE
	density = TRUE
	idle_power_usage = 300
	active_power_usage = 300
	var/is_active = FALSE
	var/obj/effect/overmap/visitable/ship/linked

/obj/machinery/stealth/examine(mob/user)
	. = ..()
	to_chat(user, SPAN_INFO(linked.is_in_stealth ? "В стелсе братуха не кипишуй" : "НАС ЕБУТ БЛЯТЬ"))

/obj/machinery/stealth/proc/attempt_hook_up(obj/effect/overmap/visitable/ship/sector)
	if(!istype(sector))
		return
	if(sector.check_ownership(src))
		linked = sector
		return 1

/obj/machinery/stealth/proc/sync_linked()
	var/obj/effect/overmap/visitable/ship/sector = map_sectors["[z]"]
	if(!sector)
		return
	return attempt_hook_up_recursive(sector)

/obj/machinery/stealth/proc/attempt_hook_up_recursive(obj/effect/overmap/visitable/ship/sector)
	if(attempt_hook_up(sector))
		return sector
	for(var/obj/effect/overmap/visitable/ship/candidate in sector)
		if((. = .(candidate)))
			return

/obj/machinery/stealt/interface_interact(user)
	. = ..()


/obj/machinery/stealth/verb/toggle_stealth_for_ship()
	set name = "СПРЯТАТЬ ИЛИ РАСПРЯТАТЬ НАХУЙ"
	set src in view(2)

	if(!linked)
		sync_linked()

	linked.is_in_stealth = !linked.is_in_stealth
	visible_message(SPAN_INFO(linked.is_in_stealth ? "В СТЕЛСЕ НАХУУУЙ" : "ОПА А ВСЕ БЛЯТЬ СОСИ ЛОХ"))
