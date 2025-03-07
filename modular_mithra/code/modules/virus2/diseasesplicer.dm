/obj/machinery/computer/diseasesplicer
	name = "disease splicer"
	icon = 'icons/obj/computer.dmi'
	icon_keyboard = "med_key"
	icon_screen = "crew"

	var/datum/disease2/effect/memorybank = null
	var/list/species_buffer = null
	var/analysed = 0
	var/obj/item/virusdish/dish = null
	var/burning = 0
	var/splicing = 0
	var/scanning = 0

/obj/machinery/computer/diseasesplicer/attackby(var/obj/I as obj, var/mob/user as mob)
	if(istype(I,/obj/item/virusdish))
		if (dish)
			to_chat(user, "\The [src] is already loaded.")
			return
		if(!user.unEquip(I, src))
			return
		dish = I
		return

	if(istype(I,/obj/item/diseasedisk))
		to_chat(user, "You upload the contents of the disk onto the buffer.")
		var/obj/item/diseasedisk/disk = I
		memorybank = disk.effect
		species_buffer = disk.species
		analysed = disk.analysed
		return

	..(I,user)

/obj/machinery/computer/diseasesplicer/interface_interact(var/mob/user)
	ui_interact(user)
	return TRUE

/obj/machinery/computer/diseasesplicer/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1)
	user.set_machine(src)

	var/data[0]
	data["dish_inserted"] = !!dish
	data["growth"] = 0
	data["affected_species"] = null

	if (memorybank)
		data["buffer"] = list("name" = (analysed ? memorybank.name : "Unknown Symptom"), "stage" = memorybank.stage)
	if (species_buffer)
		data["species_buffer"] = analysed ? jointext(species_buffer, ", ") : "Unknown Species"

	if (splicing)
		data["busy"] = "Splicing..."
	else if (scanning)
		data["busy"] = "Scanning..."
	else if (burning)
		data["busy"] = "Copying data to disk..."
	else if (dish)
		data["growth"] = min(dish.growth, 100)

		if (dish.virus2)
			if (dish.virus2.affected_species)
				data["affected_species"] = dish.analysed ? jointext(dish.virus2.affected_species, ", ") : "Unknown"

			if (dish.growth >= 50)
				var/list/effects[0]
				for (var/datum/disease2/effect/e in dish.virus2.effects)
					effects.Add(list(list("name" = (dish.analysed ? e.name : "Unknown"), "stage" = (e.stage), "reference" = "\ref[e]")))
				data["effects"] = effects
			else
				data["info"] = "Insufficient cell growth for gene splicing."
		else
			data["info"] = "No virus detected."
	else
		data["info"] = "No dish loaded."

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "disease_splicer.tmpl", src.name, 400, 600)
		ui.set_initial_data(data)
		ui.open()

/obj/machinery/computer/diseasesplicer/Process()
	if(stat & (NOPOWER|BROKEN))
		return

	if(scanning)
		scanning -= 1
		if(!scanning)
			ping("\The [src] pings, \"Analysis complete.\"")
			SSnano.update_uis(src)
	if(splicing)
		splicing -= 1
		if(!splicing)
			ping("\The [src] pings, \"Splicing operation complete.\"")
			SSnano.update_uis(src)
	if(burning)
		burning -= 1
		if(!burning)
			var/obj/item/diseasedisk/d = new /obj/item/diseasedisk(src.loc)
			d.analysed = analysed
			if(analysed)
				if (memorybank)
					d.SetName("[memorybank.name] GNA disk (Stage: [memorybank.stage])")
					d.effect = memorybank
				else if (species_buffer)
					d.SetName("[jointext(species_buffer, ", ")] GNA disk")
					d.species = species_buffer
			else
				if (memorybank)
					d.SetName("Unknown GNA disk (Stage: [memorybank.stage])")
					d.effect = memorybank
				else if (species_buffer)
					d.SetName("Unknown Species GNA disk")
					d.species = species_buffer

			ping("\The [src] pings, \"Backup disk saved.\"")
			SSnano.update_uis(src)

	if((scanning || splicing || burning) && dish && dish.virus2)
		infect_nearby(dish.virus2, 80)

/obj/machinery/computer/diseasesplicer/OnTopic(mob/user, href_list)
	operator_skill = user.get_skill_value(core_skill)
	if (href_list["close"])
		SSnano.close_user_uis(user, src, "main")
		return TOPIC_HANDLED

	if (href_list["grab"])
		if (dish)
			memorybank = locate(href_list["grab"])
			species_buffer = null
			analysed = dish.analysed
			dish = null
			scanning = 10
		return TOPIC_REFRESH

	if (href_list["affected_species"])
		if (dish)
			memorybank = null
			species_buffer = dish.virus2.affected_species
			analysed = dish.analysed
			dish = null
			scanning = 10
		return TOPIC_REFRESH

	if(href_list["eject"])
		if (dish)
			dish.dropInto(loc)
			dish = null
		return TOPIC_REFRESH

	if(href_list["splice"])
		if(dish)
			var/target = text2num(href_list["splice"]) // target = 1+ for effects, -1 for species
			if(memorybank && target > 0)
				if(target < memorybank.stage)
					return // too powerful, catching this for href exploit prevention

				var/datum/disease2/effect/target_effect
				var/list/illegal_types = list()
				for(var/datum/disease2/effect/e in dish.virus2.effects)
					if(e.stage == target)
						target_effect = e
					if(!e.allow_multiple)
						illegal_types += e.type
				if(memorybank.type in illegal_types)
					to_chat(user, "<span class='warning'>Virus DNA can't hold more than one [memorybank]</span>")
					return 1
				dish.virus2.effects -= target_effect
				dish.virus2.effects += memorybank
				qdel(target_effect)

			else if(species_buffer && target == -1)
				dish.virus2.affected_species = species_buffer

			else
				return TOPIC_HANDLED

			splicing = 10
			dish.virus2.uniqueID = rand(0,10000)
		return TOPIC_REFRESH

	if(href_list["disk"])
		burning = 10
		return TOPIC_REFRESH
