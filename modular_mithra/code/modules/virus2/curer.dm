/obj/machinery/computer/curer
	name = "cure research machine"
	icon = 'icons/obj/computer.dmi'
	icon_keyboard = "med_key"
	icon_screen = "dna"
	idle_power_usage = 500
	var/curing
	var/virusing

	var/obj/item/reagent_containers/container = null

/obj/machinery/computer/curer/attackby(var/obj/I as obj, var/mob/user as mob)
	if(istype(I,/obj/item/reagent_containers))
		if(!container)
			if(!user.unEquip(I, src))
				return
			container = I
		return
	if(istype(I,/obj/item/virusdish))
		if(virusing)
			to_chat(user, "<b>The pathogen materializer is still recharging..</b>")
			return
		var/obj/item/reagent_containers/glass/beaker/product = new(src.loc)

		var/list/data = list("donor" = null, "blood_DNA" = null, "blood_type" = null, "trace_chem" = null, "virus2" = list(), "antibodies" = list())
		data["virus2"] |= I:virus2
		product.reagents.add_reagent(/datum/reagent/blood,30,data)

		virusing = 1
		addtimer(CALLBACK(src, .proc/resetCloningTimer), 1 MINUTE)

		state("The [src.name] Buzzes", "blue")
		return
	..(I, user)

/obj/machinery/computer/curer/proc/resetCloningTimer()
	virusing = 0

/obj/machinery/computer/curer/interface_interact(var/mob/user)
	interact(user)
	return TRUE

/obj/machinery/computer/curer/interact(var/mob/user)
	user.machine = src
	var/dat
	if(curing)
		dat = "Antibody production in progress"
	else if(virusing)
		dat = "Virus production in progress"
	else if(container)
		// see if there's any blood in the container
		var/datum/reagent/blood/B = locate(/datum/reagent/blood) in container.reagents.reagent_list

		if(B)
			dat = "Blood sample inserted."
			dat += "<BR>Antibodies: [antigens2string(B.data["antibodies"])]"
			dat += "<BR><A href='?src=\ref[src];antibody=1'>Begin antibody production</a>"
		else
			dat += "<BR>Please check container contents."
		dat += "<BR><A href='?src=\ref[src];eject=1'>Eject container</a>"
	else
		dat = "Please insert a container."

	show_browser(user, dat, "window=computer;size=400x500")
	onclose(user, "computer")
	return

/obj/machinery/computer/curer/Process()
	if(stat & (NOPOWER|BROKEN))
		return

	if(curing)
		curing -= 1
		if(curing == 0)
			if(container)
				createcure(container)
	return

/obj/machinery/computer/curer/OnTopic(user, href_list)
	if (href_list["antibody"])
		curing = 10
		. = TOPIC_REFRESH
	else if(href_list["eject"])
		container.dropInto(loc)
		container = null
		. = TOPIC_REFRESH

	if(. == TOPIC_REFRESH)
		attack_hand(user)

/obj/machinery/computer/curer/proc/createcure(var/obj/item/reagent_containers/container)
	var/obj/item/reagent_containers/glass/beaker/product = new(src.loc)

	var/datum/reagent/blood/B = locate() in container.reagents.reagent_list

	var/list/data = list()
	data["antibodies"] = B.data["antibodies"]
	product.reagents.add_reagent(/datum/reagent/antibodies,30,data)

	state("\The [src.name] buzzes", "blue")
