GLOBAL_DATUM_INIT(mini_role, /datum/antagonist/mini_roles, new)

/datum/antagonist/mini_roles
	id = MODE_MINI_ROLES
	role_text = "Mini Role"
	role_text_plural = "Mini Roles"
	antaghud_indicator = "hud_traitor"
	flags = ANTAG_RANDSPAWN | ANTAG_VOTABLE
	welcome_text = "Вы - мини роль. Не стоит воспринимать мини роль как типичного антагониста. Вы - не антагонист раунда. Вы - протагонист своей истории, будь она маленькая или большая. Действуйте в целях своего персонажа, думайте что выгоднее для него в долгосрочной перспективе. И конечно соблюдайте главное правило - не быть мудаком."
	antag_text = "Если Вы видите этот текст, то что-то сломалось. Попросите Стивена починить."
	blacklisted_jobs = list()
	skill_setter = null
	hard_cap = 100
	hard_cap_round = 100
	initial_spawn_target = 100
	min_player_age = 0

	var/datum/mini_role/mini_role_datum //Container for last mini role
	var/list/datum/mini_role/all_mini_roles_datums = list() //All in round roles
	//Whitelists of mini roles for every branch. Don't forget put new mini roles here
	var/list/regcom_roles = list(/datum/mini_role/regcom_agent, /datum/mini_role/creditor, /datum/mini_role/pyroman)
	var/list/gov_roles = list(/datum/mini_role/rat, /datum/mini_role/creditor, /datum/mini_role/pyroman, /datum/mini_role/treasure_hunter)
	var/list/syndicate_roles = list(/datum/mini_role/syndicate_agent, /datum/mini_role/rat, /datum/mini_role/creditor, /datum/mini_role/pyroman, /datum/mini_role/treasure_hunter)
	var/list/military_roles = list(/datum/mini_role/rat, /datum/mini_role/creditor, /datum/mini_role/cannibal, /datum/mini_role/pyroman, /datum/mini_role/torch, /datum/mini_role/treasure_hunter)
	var/list/traders_roles = list(/datum/mini_role/contrabandist, /datum/mini_role/rat, /datum/mini_role/creditor, /datum/mini_role/link, /datum/mini_role/treasure_hunter)
	var/list/scum_roles = list(/datum/mini_role/contrabandist, /datum/mini_role/contractor, /datum/mini_role/rat, /datum/mini_role/cannibal, /datum/mini_role/pyroman, /datum/mini_role/torch, /datum/mini_role/link, /datum/mini_role/mutant, /datum/mini_role/bluespace, /datum/mini_role/treasure_hunter) //Criminals
	var/list/other_roles = list(/datum/mini_role/contrabandist, /datum/mini_role/contractor, /datum/mini_role/pyroman, /datum/mini_role/torch, /datum/mini_role/link, /datum/mini_role/mutant, /datum/mini_role/bluespace, /datum/mini_role/treasure_hunter)

/datum/antagonist/mini_roles/create_antagonist(var/datum/mind/target, var/move, var/gag_announcement, var/preserve_appearance)

	//Mostly default proc copy paste, but with pick of mini role datum
	if(!target)
		return

	var/checks_passed = FALSE
	var/choosen_role
	while(checks_passed == FALSE)
		if(ishuman(target.current))
			var/mob/living/carbon/human/man_on_check = target.current
			switch(man_on_check.char_branch.name)
				if("Regulators") choosen_role = pick(regcom_roles)
				if("Government") choosen_role = pick(gov_roles)
				if("Consortium of Trans-Star Corporations") choosen_role = pick(syndicate_roles)
				if("Military") choosen_role = pick(military_roles)
				if("Free Trade Union") choosen_role = pick(traders_roles)
				if("Alternatively Hired") choosen_role = pick(scum_roles)
				else choosen_role = pick(other_roles)
		else
			choosen_role = pick(other_roles)

		mini_role_datum = new choosen_role
		mini_role_datum.owner = target
		if(!mini_role_datum.additional_check(target.current))
			qdel(mini_role_datum)
			continue

		if(mini_role_datum.double)
			if(mini_role_datum.double_act(target))
				checks_passed = TRUE
			else
				qdel(mini_role_datum)
		else
			checks_passed = TRUE

	//Check of target validicity on role
	update_antag_mob(target, preserve_appearance)
	if(!target.current)
		remove_antagonist(target)
		return 0
	if(flags & ANTAG_CHOOSE_NAME)
		spawn(1)
			set_antag_name(target.current)
	if(move)
		place_mob(target.current)
	update_leader()
	update_icons_added(target)
	greet(target)
	if(!gag_announcement)
		announce_antagonist_spawn()

/datum/antagonist/mini_roles/greet(var/datum/mind/player)

	// Takes things from picked mini role datum
	player.special_role = mini_role_datum.name
	var/name = mini_role_datum.name
	var/desc = mini_role_datum.desc
	all_mini_roles_datums += mini_role_datum
	to_chat(player.current, "<span class='danger'><font size=4>Вы - [name]!</font></span>")
	if(leader_welcome_text && player == leader)
		to_chat(player.current, "<span class='antagdesc'>[get_leader_welcome_text(player.current)]</span>")
	else
		to_chat(player.current, "<span class='antagdesc'>[get_welcome_text(player.current)]</span>")
	to_chat(player.current, SPAN_NOTICE("[desc]"))

	mini_role_datum.special_act(player.current)
	create_objectives(player)
	src.show_objectives_at_creation(player)
	return 1

/datum/antagonist/mini_roles/create_objectives(var/datum/mind/player)
	var/datum/objective/micro_obj = new
	micro_obj.owner = player
	micro_obj.explanation_text = mini_role_datum.objective
	player.objectives |= micro_obj
	if(mini_role_datum.second_objective)
		var/datum/objective/second_micro_obj = new
		second_micro_obj.owner = player
		second_micro_obj.explanation_text = mini_role_datum.second_objective
		player.objectives |= second_micro_obj

/datum/antagonist/mini_roles/equip(mob/living/carbon/human/player)
	if(!istype(player))
		return

	if(!mini_role_datum.gear)
		return

	var/list/slots = list (
			"backpack" = slot_in_backpack,
			"left pocket" = slot_l_store,
			"right pocket" = slot_r_store,
			"left hand" = slot_l_hand,
			"right hand" = slot_r_hand,
		)

	if(mini_role_datum.random_gear)
		var/random_count = 0
		while(random_count != mini_role_datum.random_gear)
			var/thing = pick(mini_role_datum.gear)
			mini_role_datum.gear -= thing
			var/obj/spawned_thing = new thing(get_turf(player))
			for(var/slot in slots)
				player.equip_to_slot(spawned_thing, slot)
				if(spawned_thing.loc == player)
					break
			for(var/obj/item/storage/S in player.contents)
				if((istype(S)) && (S.max_storage_space >= DEFAULT_LARGEBOX_STORAGE)) //Storage space between wallet and backpack
					spawned_thing.forceMove(S)
					break
			random_count += 1
	else
		for(var/thing in mini_role_datum.gear)
			var/obj/spawned_thing = new thing(get_turf(player))
			for(var/slot in slots)
				player.equip_to_slot(spawned_thing, slot)
				if(spawned_thing.loc == player)
					break
			for(var/obj/item/storage/S in player.contents)
				if((istype(S)) && (S.max_storage_space >= DEFAULT_LARGEBOX_STORAGE)) //Storage space between wallet and backpack
					spawned_thing.forceMove(S)
					break

/////
// MINI ROLES DATUMS
/////

/datum/mini_role
	var/name
	var/desc //Explanation text for role
	var/objective //Objective text
	var/second_objective
	var/datum/mind/owner
	var/datum/mind/mini_target //Some particular target(person) for role owner
	var/no_robots = FALSE //If true, don't give this role to robot species(Full prothes included)
	var/can_latejoin = TRUE //If false, don't give this role to guys who enter after round begining
	var/list/gear = list() //What gear give to the role
	var/random_gear = FALSE //If not false, give this amount of random items from gear list

	var/double = FALSE //Is role work like bounty hunter(give targets to more than one guy)
	var/double_text //Text for second man. Keep null, if you want double man to be clueless about target on him
	var/double_objective //Target for second man

/datum/mini_role/proc/special_act(var/mob/living/carbon/human/target)
	return

/datum/mini_role/proc/double_act(var/datum/mind/obj_owner)
	var/list/possible_targets = list()
	for(var/datum/mind/possible_target in SSticker.minds)
		if((possible_target != obj_owner) && (ishuman(possible_target.current)) && (possible_target.current.stat != DEAD) && (possible_target.special_role != obj_owner.special_role))
			possible_targets += possible_target
	if(possible_targets.len > 0)
		mini_target = pick(possible_targets)
		if(double_text)
			to_chat(mini_target, "[double_text]")
			var/datum/objective/mini_target_obj = new
			mini_target_obj.owner = mini_target
			mini_target_obj.explanation_text = double_objective
			mini_target.objectives |= mini_target_obj
			show_objectives(mini_target)
		return TRUE
	else
		return FALSE

/datum/mini_role/proc/additional_check(var/mob/living/carbon/human/target)
	if(no_robots)
		if((target.species.name == SPECIES_IPC) || (target.species.name == SPECIES_ADHERENT) || (target.species.name == SPECIES_SHELL) || (target.full_prosthetic))
			return FALSE

	if((!can_latejoin) && (round_duration_in_ticks >> 30)) //About 3 seconds after round start
		return FALSE

	return TRUE


/datum/mini_role/contrabandist
	name = "Контрабандист"
	desc = "Может это была Ваша случайная находка, а может Вы лично выкупили это устройство у одного из местных криминальных боссов. Как-бы то не было, в Ваши руки попал аплинк - устройство с доступом к сети SyndieNet. Вы знаете, что такие устройства запрещены в более чем 60 государствах - но соблазн слишком велик. Может быть, с помощью него Вы сможете вылезти из этого захолустья? Да и если мир полон лжецов и убийц, почему Вы должны играть против них по-честному?"
	objective = "Сохраните свой аплинк у себя."
	can_latejoin = FALSE

/datum/mini_role/contrabandist/special_act(var/mob/living/carbon/human/target)
	var/money = target.mind.assigned_job.economic_power * 1000 + rand(-20,20) * 100
	if(money << 0) money += 3000
	second_objective = "Имейте [money] кредитов к концу смены."
	var/TC_amount = rand(40, 80)
	var/obj/item/device/radio/uplink/U = new(target, null, TC_amount)
	var/obj/O = target.equip_to_storage(U)
	if(O)
		to_chat(target, "<span class='notice'>Uplink unit can be found in your [O.name].</span>")
	else if(target.put_in_hands(U))
		to_chat(target, "<span class='notice'>Uplink unit appear in your hands.</span>")


/datum/mini_role/contractor
	name = "Контрактник"
	desc = "Может быть Вы профессиональный наёмник с сотнями голов за спиной, а может Вас просто заставили пойти на это под дулом пистолета. Как-бы то не было, Вы стали теневым работником сети SyndieNet. Всё что у Вас есть - аплинк и контракты. Простая и мирная работа. Разве кому-то мешали шпионящие программы в консолях и импланты слежения в головах?"
	objective = "Сохраните свой аплинк у себя. Также сохраните свою роль в секрете."
	can_latejoin = FALSE

/datum/mini_role/contractor/special_act(var/mob/living/carbon/human/target)
	var/contracts_amount = rand(3,6)
	second_objective = "Выполните как минимум [contracts_amount] контрактов до конца смены."
	setup_uplink_source(target, 1)


/datum/mini_role/cannibal
	name = "Людоед"
	desc = "Может это уже традиция в Вашей семье, а может у Вас просто не оставалось другого выбора, когда Ваш отряд зажал враг на несколько недель в том проклятом здании. Как-бы то не было, Вы вкусили человеческую плоть - и Вам понравилось. Настолько, что желудок просит ещё. Свежей. Хотя бы взять недавно убитое кем-то другим тело - разве будет оно против?.."
	objective = "Опробуйте хотя бы один свежий кусочек человеческой плоти к концу смены."
	no_robots = TRUE
	gear = list(/obj/item/material/knife/kitchen/cleaver, /obj/item/handcuffs, /obj/item/tape_roll, /obj/item/device/flash, /obj/item/clothing/mask/chameleon/voice, /obj/item/beartrap)
	random_gear = 2


/datum/mini_role/rat
	name = "Крыса"
	desc = "Может они держат в плену всё что Вам дорого, а может Вы уже не в первый раз вставляете нож в спину своим хозяевам. Как-бы то не было, Вы согласились найти для кое-кого компрометирующую информацию на миссию Кастельнау. Ходите, смотрите и слушайте. Эти военные преступники наверняка не заставят Вас долго ждать."
	objective = "Доживите до конца смены сохранив свою роль в секрете."
	gear = list(/obj/item/storage/box/syndie_kit/spy, /obj/item/reagent_containers/food/snacks/spacecash/bundle/c2000, /obj/item/storage/box/radiokeys, /obj/item/device/uv_light, /obj/item/device/camera, /obj/item/device/taperecorder)
	random_gear = 2

/datum/mini_role/rat/special_act(var/mob/living/carbon/human/target)
	var/hirer = pick("Ассамблею Альянса", "Посольство ЛСС", "Представительство Синдиката", "Совет ВТС")
	second_objective = "Отправьте через факс в [hirer] компрометирующую информацию о миссии на Кадаабе или её членах."


/datum/mini_role/creditor
	name = "Кредитор"
	desc = "История старая как мир. Добро и зло, кредитор и должник. Может лишить этого должника всего имущества в уплату долга? Или пусть как-то отработает? А может нанять вышибал, чтобы вернуть хотя бы часть долга? Тут нет ничего личного - что поделать, если деньги правят миром."
	double = TRUE

/datum/mini_role/creditor/special_act(var/mob/living/carbon/human/target)
	var/debt
	debt = mini_target.assigned_job.economic_power * 500 + rand(-10,20) * 100
	if(debt << 1000) debt += 2000
	objective = "[mini_target]([mini_target.assigned_job.title]) задолжал Вам [debt] кредитов. Добейтесь от должника возвращения долга до конца смены."
	double_text = "<span class='danger'><font size=3>Вы вспоминаете, что то ли по пьяне, то ли из-за смертельной угрозы, то ли просто по случайности, но Вы должны [owner] [debt] кредитов. Не сказать, что бы Вам хотелось с ними раставаться...</font></span>"
	double_objective = "Избегать отдачи долга в [debt] кредитов [owner]([owner.assigned_job.title])."
	//Creates objective, because in time when double_act is executed, double_text is not exist
	to_chat(mini_target, "[double_text]")
	var/datum/objective/mini_target_obj = new
	mini_target_obj.owner = mini_target
	mini_target_obj.explanation_text = double_objective
	mini_target.objectives |= mini_target_obj
	show_objectives(mini_target)


/datum/mini_role/pyroman
	name = "Пироман"
	desc = "Дни похожи один на другой, всё это затягивается в вечный круговорот безликих людей в войне за выживание. Но среди этой постоянной резни порой просачивается луч надежды. Хаотичный, но такой приятный и греющий огонь, приносящий Вам счастье в эти тяжёлые дни. Кто же заметит, если на Кадаабе сгорит случайное здание? Может, конечно, вся эта миссия и в правду тяжело сказывается на Вашем рассудке, но разве не все говорят, что вечно смотреть можно на три вещи?.."
	objective = "Наслаждайтесь огнём. Сдережируйте небольшой пожар, став его главным зрителем."
	gear = list(/obj/item/storage/firstaid/fire, /obj/item/storage/box/beakers, /obj/item/storage/box/matches, /obj/item/reagent_containers/food/drinks/bottle/specialwhiskey, /obj/item/flamethrower, /obj/item/clothing/mask/gas/cbrn)
	random_gear = 2


/datum/mini_role/torch
	name = "Торчок"
	desc = "Может в этом проклятом мире для отдыха не осталось других способов, а может Вы просто подумали, что эта была таблетка от головной боли. Как-бы то не было, Вы подсели на наркотики. Сильно подсели. Вам уже даже без разницы что принимать, лишь бы это могло помочь Вам отвлечься от этого мира."
	objective = "Запасите несколько доз на будущее. Чем больше - тем лучше."
	no_robots = TRUE
	gear = list(/obj/item/seeds/ambrosiadeusseed, /obj/item/reagent_containers/hypospray/autoinjector/mindbreaker, /obj/item/storage/firstaid/toxin, /obj/item/storage/box/syringes, /obj/item/storage/pill_bottle/three_eye, /obj/random/handgun)
	random_gear = 2


/datum/mini_role/link
	name = "Связной"
	desc = "Может это Ваша не первая миссия такого рода, а может Вас ждёт утопление в озере с крокодилами, если Вы не сделайте приказанное. Как-бы то не было, Вам передали пакет важной информации о местном экипаже. Осталось найти того, кому нужно передать все эти данные."
	objective = "Найдите агента, которому Вы должны передать информацию о том, что"
	second_objective = "Доживите до конца смены не придав свою роль широкой огласке."
	double = TRUE
	gear = list(/obj/random/handgun)
	double_text = "<span class='danger'><font size=3>Где-то рядом с Вами должен находится связной, который может обладать интересной и полезной информацией. Найдите его и получите эту информацию.</font></span>"
	double_objective = "Найдите и установите контакт с связным."

	//Put types of possible coop roles in list below
	var/connected_roles = list(/datum/mini_role/rat, /datum/mini_role/contractor)
	//Guys below too boring to unmask them
	var/boring_roles = list(/datum/mini_role/creditor)

/datum/mini_role/link/additional_check(var/mob/living/carbon/human/target)
	var/try_amount = 0
	var/list/unmasked_roles = list()
	while(try_amount != 4)
		var/datum/mini_role/picked_role = pick(GLOB.mini_role.all_mini_roles_datums)
		if((is_type_in_list(picked_role, connected_roles)) || (is_type_in_list(picked_role, unmasked_roles)) || (is_type_in_list(picked_role, boring_roles)) || (picked_role.owner == target.mind))
			try_amount += 1
			continue
		unmasked_roles += picked_role
		try_amount += 1

	if(unmasked_roles.len == 0)
		return FALSE

	for(var/datum/mini_role/unmasked in unmasked_roles)
		var/add_text = " [unmasked.owner]([unmasked.owner.assigned_job.title]) - [unmasked.name];"
		objective += add_text
	return TRUE

/datum/mini_role/link/double_act(var/datum/mind/obj_owner)
	var/list/possible_targets = list()
	for(var/datum/mini_role/maybe_target in GLOB.mini_role.all_mini_roles_datums)
		if((is_type_in_list(maybe_target, connected_roles)) && (maybe_target.owner.current.stat != DEAD))
			possible_targets += maybe_target.owner
	if(possible_targets.len > 0)
		mini_target = pick(possible_targets)
		to_chat(mini_target.current, "[double_text]")
		to_chat(mini_target.current, "<u><b>Для поиска потенциальных союзников Вы были снабжены опозновательными словами:</b></u>")
		to_chat(mini_target.current, "<b>Кодовые слова</b>: <span class='danger'>[GLOB.antag_code_phrase]</span>")
		to_chat(mini_target.current, "<b>Кодовые ответы</b>: <span class='danger'>[GLOB.antag_code_response]</span>")
		mini_target.StoreMemory("<b>Кодовые слова</b>: [GLOB.antag_code_phrase]", /decl/memory_options/system)
		mini_target.StoreMemory("<b>Кодовые ответы</b>: [GLOB.antag_code_response]", /decl/memory_options/system)

		to_chat(owner.current, "<u><b>Для поиска потенциальных союзников Вы были снабжены опозновательными словами:</b></u>")
		to_chat(owner.current, "<b>Кодовые слова</b>: <span class='danger'>[GLOB.antag_code_phrase]</span>")
		to_chat(owner.current, "<b>Кодовые ответы</b>: <span class='danger'>[GLOB.antag_code_response]</span>")
		owner.StoreMemory("<b>Кодовые слова</b>: [GLOB.antag_code_phrase]", /decl/memory_options/system)
		owner.StoreMemory("<b>Кодовые ответы</b>: [GLOB.antag_code_response]", /decl/memory_options/system)

		var/datum/objective/mini_target_obj = new
		mini_target_obj.owner = mini_target
		mini_target_obj.explanation_text = double_objective
		mini_target.objectives |= mini_target_obj
		show_objectives(mini_target)
		return TRUE
	else
		return FALSE


/datum/mini_role/regcom_agent
	name = "Агент РегКома"
	desc = "Краем уха Вы услышали о будущих приказах фрау Марты к Кастельнау. Если Вы сможете сделать приказ ещё до того, как он опубликуется, то Вас может ждать очень приятная награда. Конечно, лучше будет сделать вид что всё это вышло 'случайно'."
	gear = list(/obj/item/storage/lockbox/loyalty, /obj/item/storage/box/syndie_kit/imp_explosive, /obj/item/storage/box/syndie_kit/imp_imprinting, /obj/item/reagent_containers/food/snacks/spacecash/bundle/c2000,
				/obj/item/reagent_containers/food/snacks/spacecash/bundle/c2000, /obj/item/reagent_containers/food/snacks/spacecash/bundle/c2000, /obj/item/reagent_containers/food/snacks/spacecash/bundle/c1000, /obj/item/reagent_containers/food/snacks/spacecash/bundle/c1000, /obj/item/reagent_containers/food/snacks/spacecash/bundle/c1000)
	random_gear = 3

/datum/mini_role/regcom_agent/special_act(var/mob/living/carbon/human/target)
	var/quest = pick("РегКом желает провести акцию устрашения на Кадаабе. Вздёрните врагов на фонарные столбы, сожгите город, расставьте пики с головами.",
					"РегКом желает расширения аванпоста. Отремонтируйте старые здания, перенесите укрепления, улучшите электростанции.",
					"РегКом желает видеть внедрение экзоскелетов в миссию. Соберите ресурсы, организуйте мехопроизводство, создайте отряд бронированной кавалерии.",
					"РегКом желает увидеть самостоятельность миссии. Пополните бюджет миссии(бюджет Кастельнау) до [1000*rand(25,40)] кредитов.",
					"РегКом желает пополнить список членов миссии. Примите несколько доверенных людей с планеты или любого другого места в экипаж миссии, занеся их в манифест.")
	objective = quest


/datum/mini_role/syndicate_agent
	name = "Агент Синдиката"
	desc = "Одной из влиятельных персон в Синдикате вдруг что-то потребовалось от миссии Кастельнау. Если Вы сможете выполнить это желание, то возможно сможете рассчитывать на небольшую дачу на Кингстоне."
	gear = list(/obj/item/storage/fancy/supply_box/grenade, /obj/item/storage/toolbox/syndicate, /obj/item/storage/box/syndie_kit/toxin, /obj/item/storage/box/syndie_kit/silenced)
	random_gear = 1

/datum/mini_role/syndicate_agent/special_act(var/mob/living/carbon/human/target)
	var/quest = pick("Синдикат хочет видеть увеличение своего влияния на Кадаабе. Создайте оперативную базу Синдиката, вербуйте оттуда людей с планеты, развешайте корпоративные листовки.",
					"Синдикат в будущем желает провести реновацию Кадааба. Взорвите несколько из старых бесполезныех зданий, очистив землю для будущих построек.",
					"Синдикат размышляет над отправкой дополнительного контингента на Кадааб. Запасите для него любое оружие и патроны - создайте отдельный склад, если потребуется.",
					"Синдикат желает свободной конкуренции с ВТС. Попытайтесь уменьшить доходы Скряги - откройте свой магазин или скомпроментируйте ВТС. Оставьте свою роль в тайне.",
					"Синдикат разыскивает ещё не обнаруженных людей с псионическим потенциалом. Найдите таковых, пробуждайте людей триглазом если необходимо.")
	objective = quest


/datum/mini_role/mutant
	name = "Мутант"
	desc = "Может это сбой в криокамерах, а может просто обычное влияние космическое радиации. Как-бы то не было, Вы уже перестали быть тем, чем были раньше. Вы не представитель своего рода, а чёртов мутант. С одной стороны, возможно даже в чём-то Вы превосходите 'нормальных', с другой можно быть уверенным, что Ваше тело с готовностью будут резать все учёные мира. К тому же, Вы стали голодать чуть быстрее чем обычно..."
	objective = "Доживите до конца смены, сохранив свою роль в тайне."
	second_objective = "Запасите как можно больше еды к концу смены."
	no_robots = TRUE

/datum/mini_role/mutant/special_act(var/mob/living/carbon/human/target)
	var/datum/species/mutant_species = new target.species.type //Create new species for our mutant and edit it below
	mutant_species.hunger_factor *= 2
	mutant_species.thirst_factor *= 2
	//"Generating" our mutant next
	var/abilities = 0
	var/abilities_need = rand(2,3)
	var/list/possible_abilities = list("blood_abil", "bone_abil", "crawler_abil", "weaver_abil", "fov_abil", "silent_abil")
	var/picked_ability
	while(abilities != abilities_need)
		picked_ability = pick(possible_abilities)
		switch(picked_ability)
			if("blood_abil")
				target.remove_blood(target.species.blood_volume) //Remove old blood to add new colored one
				mutant_species.blood_color = RANDOM_RGB
				mutant_species.total_health += rand(10,40)
				mutant_species.blood_volume += rand(-100,100)
				to_chat(target, SPAN_NOTICE("С Вашей кровью что-то не то... Кажется она эффективнее обычной, но имеет другой цвет."))
			if("bone_abil")
				mutant_species.bone_material = pick(MATERIAL_BONE_FISH, MATERIAL_CRYSTAL, MATERIAL_PLATINUM, MATERIAL_RESIN, MATERIAL_PHORON, MATERIAL_GLASS)
				to_chat(target, SPAN_NOTICE("В Ваших костях что-то изменилось. Вероятно, они состоят теперь из чего-то другого."))
			if("crawler_abil")
				mutant_species.inherent_verbs += list(/mob/living/proc/ventcrawl)
				target.can_enter_vent_with += list(/obj/item, /obj/item/clothing, /obj/effect, /obj/screen) //Can enter in vent with almost anything
				to_chat(target, SPAN_NOTICE("Ваше тело стало невероятно гибким. Наверное, Вы даже сможете пролезть в вентеляцию..."))
			if("weaver_abil")
				mutant_species.is_weaver = TRUE
				mutant_species.silk_color = RANDOM_RGB
				mutant_species.inherent_verbs += list(/mob/living/carbon/human/proc/check_silk_amount, /mob/living/carbon/human/proc/toggle_silk_production,
													  /mob/living/carbon/human/proc/weave_structure, /mob/living/carbon/human/proc/weave_item)
				to_chat(target, SPAN_NOTICE("Иногда из ниоткуда у Вас появляется шёлк ручного производства."))
			if("fov_abil")
				mutant_species.datum_usefov = FALSE
				for(var/obj/screen/screen_effects in target.contents)
					if((istype(screen_effects, /obj/screen/fov_blocker)) || (istype(screen_effects, /obj/screen/fov_shadow))) qdel(screen_effects)
				to_chat(target, SPAN_NOTICE("Ваши пять чувств вышли за все известные пределы. Никто не сможет подойти к Вам не замеченным."))
			if("silent_abil")
				mutant_species.silent_steps = TRUE
				mutant_species.species_flags += SPECIES_FLAG_NO_SLIP
				to_chat(target, SPAN_NOTICE("Стопы приобрели странную форму. Ваши шаги бесшумны, к тому же Вы не подскальзываетесь."))
		possible_abilities -= picked_ability
		abilities += 1

	target.species = mutant_species
	mutant_species.handle_post_spawn(target)
	target.rejuvenate()


/datum/mini_role/bluespace
	name = "Провидец"
	desc = "Кажется, Вы нашли этот 'артефакт' во время блюспейс колебаний... Или после того как упали с лестницы - точно не вспомнить. Важно то, что артефакт приоткрыл для Вас завесу вселенной. Обычные люди даже не представляют, внутри чего они живут. Вы же увидели правду. Этот шум на окраинах, на который никто не обращает внимания; этот сектор, выходя из которого оказываешься в его противоположной стороне; это существо, которое все ищут и имя которого Вы стали бояться называть. Мир не такой, каким он кажется на первый взгляд."
	objective = "Доживите до конца смены, сохранив свой артефакт и не предав свою роль широкой огласке."
	second_objective = "Изучите свои спосбности и артефакт, попытайтесь найти таких же."
	no_robots = TRUE
	gear = list(/obj/item/summoning_stone, /obj/item/scrying, /obj/item/dice/d20/cursed, /obj/item/storage/belt/soulstone/full, /obj/item/gun/energy/staff/animate, /obj/item/gun/energy/staff)
	random_gear = 1

/datum/mini_role/bluespace/special_act(var/mob/living/carbon/human/target)
	var/list/possible_spells = list(/spell/veil_of_shadows, /spell/invisibility, /spell/portal_teleport, /spell/mark_recall, /spell/aoe_turf/conjure/forcewall,
	/spell/aoe_turf/exchange_wounds, /spell/aoe_turf/conjure/carp, /spell/radiant_aura, /spell/aoe_turf/blink, /spell/targeted/swap, /spell/targeted/heal_target/sacrifice,
	/spell/targeted/heal_target/trance, /spell/targeted/projectile/magic_missile)
	var/spell/spell_1
	var/spell/spell_2

	target.add_spell(new /spell/noclothes)
	spell_1 = pick(possible_spells)
	target.add_spell(new spell_1)

	spell_2 = pick(possible_spells)
	target.add_spell(new spell_2)


/datum/mini_role/treasure_hunter
	name = "Искатель сокровищ"
	desc = "Может Вы купили это устройство у подозрительной личности с тростью за половину своих сбережений, а может просто сняли его с забытого трупа на Кадаабе. В любом случае, как Вы поняли, эта штучка указывает на некий тайник... Вероятно полный ценностей."
	objective = "При помощи поискового устройства найдите и вскройте тайник."
	no_robots = TRUE
	gear = list(/obj/item/device/flashlight/upgraded, /obj/item/device/gps/marker, /obj/item/crowbar/prybar, /obj/item/storage/fancy/supply_box/flare)
	random_gear = 1
	var/weakref/treasure

/datum/mini_role/treasure_hunter/special_act(var/mob/living/carbon/human/target)
	//Giving pinpointer
	var/obj/item/pinpointer/pinpointer = new /obj/item/pinpointer/advpinpointer(get_turf(target))
	var/obj/O = target.equip_to_storage(pinpointer)
	if(O)
		to_chat(target, "<span class='notice'>Pinpointer can be found in your [O.name].</span>")
	else if(target.put_in_hands(pinpointer))
		to_chat(target, "<span class='notice'>Pinpointer appear in your hands.</span>")

	//If there other hunters, then give pinpointer target on their treasure and end special_act
	for(var/datum/mini_role/treasure_hunter/existing_hunter in GLOB.mini_role.all_mini_roles_datums)
		if(existing_hunter.treasure)
			treasure = existing_hunter.treasure
			pinpointer.target = treasure
			break
		else //If not, then create our own treasure
			var/list/turf/avalible_turfs = get_subarea_turfs(/area/cadaab/caves, list(/proc/is_turf_no_mines_and_walls))
			var/turf/selected_turf = pick(avalible_turfs)
			treasure = weakref(new /obj/structure/closet/crate/secure/loot(selected_turf))
			pinpointer.target = treasure
			break

/* Tired
/datum/mini_role/cyborg
	name = "Киборг"
	desc = "Китайский"
	objective = "Закончите смену либо с новыми аугментами, либо убрав все уже установленные."
	no_robots = TRUE

/datum/mini_role/cyborg/special_act(var/mob/living/carbon/human/target)
	var/list/possible_augments = list()


/datum/mini_role/authority
	name = "Авторитет"
	desc = "Девяностые"
	objective = "Доживите до конца смены вместе со всеми членами своей группировки."
	gear = list(/obj/random/handgun, /obj/item/clothing/mask/balaclava, /obj/item/storage/box/syndie_kit/imp_imprinting, /obj/item/grenade/smokebomb, /obj/item/reagent_containers/food/snacks/spacecash/bundle/c1000, /obj/item/melee/energy/knife)
	random_gear = 2

/datum/mini_role/authority/special_act(var/mob/living/carbon/human/target)
	var/need_members_amount = rand(2,4)
	second_objective = "Завербуйте в свою группировку как минимум [need_members_amount] лица."
К этому мог присести несчастный случай...Или же отвращение к собственному телу. В любом случае, теперь вы - киборг. Вы всё ещё не машина, но органического осталось в вас мало. Не смотря на это, вы хотите ещё больше улучшить своё тело и пойдёте на всё, чтобы это сделать.

Бывший босс семьи, авторитет в узких кругах или простой дар  убеждения...Так или иначе, вас уважают, и вам служат. Вы прилетели сюда, чтобы сколотить очередную банду для ваших собственных грязных целей. Главное не попасться законникам и не потерять остатки былой славы...
*/
