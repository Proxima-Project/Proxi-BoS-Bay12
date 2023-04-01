/obj/item/device/virus_sampler
	name = "core sampler"
	desc = "Used to extract geological core samples."
	icon = 'icons/obj/sampler.dmi'
	icon_state = "sampler1"
	item_state = "screwdriver_brown"
	w_class = ITEM_SIZE_NORMAL

	var/datum/mind/owner
	var/infected_machinery
	var/find_flag
	var/list/machinery_for_hack = list(/obj/machinery/computer/ship/helm,
		/obj/machinery/shipsensors,
		/obj/machinery/pointdefense_control,
		/obj/machinery/computer/rdservercontrol,
		/obj/machinery/computer/teleporter,
		/obj/machinery/microscope,
		/obj/machinery/bluespacerelay,
		/obj/machinery/computer/upload/ai,
		/obj/machinery/computer/ship/missiles)

/obj/item/device/virus_sampler/verb/activate()
	set name = "Hack"
	set category = "Object"
	set src in usr

	if(!usr.mind == owner)
		to_chat(usr, "<span class=\"warning\">You not sure you can use it.</span>")

	if(usr.incapacitated())
		return

	find_flag = 0
	for(var/obj/machinery/machine in oview(1, usr))
		if(is_type_in_list(machine, machinery_for_hack))
			src.attack(machine, src)
			playsound(src, 'sound/weapons/parry/parry_metalsmall.ogg', 100, 1)
			visible_message("<span class=\"warning\">[usr] pierce [machine] with core sampler!</span>")
			to_chat(usr, "<span class=\"info\">You begin download a malicious software to [machine]...</span>")
			usr.set_dir(get_dir(usr, machine))
			if(do_after(usr, 10 SECONDS, src, DO_USER_SAME_HAND | DO_SHOW_PROGRESS | DO_PUBLIC_PROGRESS | DO_BAR_OVER_USER))
				to_chat(usr, "<span class=\"info\">You finish the download!</span>")
				infected_machinery = machine.type
				find_flag = 1

				for(var/datum/antag_contract/virus/C in GLOB.all_antag_contracts)
					if(C.completed)
						continue
					C.check(src)

				break
			else
				to_chat(usr, "<span class=\"warning\">You interupt the download.</span>")
				find_flag = 1
				break

	if(find_flag == 0)
		to_chat(usr, "<span class=\"warning\">You can't find any important machinery for hack.</span>")

/obj/item/device/virus_sampler/examine(mob/user, distance)
	. = ..(user)
	if(distance <= 1)
		to_chat(user, "<span class='notice'>You notice that this device is bigger than ordinary...</span>")


/obj/item/device/mirania_stick
	name = "Mirania Stick"
	desc = "Funny stick from Mirania. What will happen if you touch it?"
	icon = 'icons/obj/sampler.dmi'
	icon_state = "sampler1"
	item_state = "screwdriver_brown"
	w_class = ITEM_SIZE_NORMAL

/obj/item/device/mirania_stick/Click()
	switch(alert("Genocide is bad. Are you sure you want become war criminal?",,"Yes","No"))
		if("No")
			return
		else
			for(var/mob/unter as mob in SSmobs.mob_list)
				unter.gib()
