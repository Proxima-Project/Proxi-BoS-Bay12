/datum/job/submap/voxship_vox
	title = "Shard Acolyte"
	total_positions = 5
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew
	supervisors = "Куилл, Могущественные Апексы Ковчегов"
	info = "By the will of the dead creators, you must reclaim the lost territory of their fallen empire, and re-establish the domain of the Auralis no matter the cost. \
	Honor their memory, obey your Quill-Captain."
	whitelisted_species = list(SPECIES_VOX)
	blacklisted_species = null
	is_semi_antagonist = TRUE
	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL = SKILL_ADEPT,
	                    SKILL_ATMOS = SKILL_ADEPT,
	                    SKILL_ENGINES = SKILL_ADEPT,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_ADEPT,
	                    SKILL_ANATOMY = SKILL_ADEPT,
	                    SKILL_CHEMISTRY = SKILL_ADEPT)
	skill_points = 40

/datum/job/submap/voxship_vox/get_description_blurb()
	return "По воле мертвых Создателей, вы должны вернуть системы, ныне павшей Империи Ауралис, дабы возродить ее и покарать недостойных, чего бы вам этого не стоило. \
	Почитайте создателей, повинуйтесь своему Куиллу."
/* COISCIN WHAT THE FUCK
/datum/job/submap/voxship_human
	title = "Slave"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/voxslave
	supervisors = "Ваши хозяева"

/datum/job/submap/voxship_human/get_description_blurb()
	return "Вы - непутевый исследователь, или кто-то еще кому не посчастливилось попасть в руки воксов, и, если так можно выразиться, вы в дерьме.\
	Попробуйте сбежать или следуйте всем указаниям ваших новых хозяев - решайте сами."
*/

/datum/job/submap/voxship_vox/doc
	title = "Shard Biotechnician"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew/doc
	alt_titles = list(
	"Shard Biochemist" = /decl/hierarchy/outfit/job/voxship/crew/doc)
	info = "Your sacred duty is to preserve the lives of your ship-band; \
	save their stacks, stabilize wounded crew, replace missing components and ensure nobody messes with your patients or your workspace."
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_EXPERT,
						SKILL_MEDICAL     = SKILL_EXPERT,
						SKILL_ANATOMY     = SKILL_EXPERT,
						SKILL_CHEMISTRY   = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL = SKILL_ADEPT,
	                    SKILL_ATMOS = SKILL_ADEPT,
	                    SKILL_ENGINES = SKILL_ADEPT,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_MAX,
	                    SKILL_ANATOMY = SKILL_MAX,
	                    SKILL_CHEMISTRY = SKILL_MAX)
	skill_points = 26

/datum/job/submap/voxship_vox/doc/get_description_blurb()
	return "Твой священный долг - следить за экипажем своей команды, фрегата класса Осколок\
	Спасай кортикальные узлы, стабилизируй и чини протезы своих товарищей, оберегай раненных и не давай чужакам помешать вам исполнять вашу священную миссию Ауралис."

/datum/job/submap/voxship_vox/engineer
	title = "Shard Technician"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew/engineer
	alt_titles = list(
	"Shard Сannoneer" = /decl/hierarchy/outfit/job/voxship/crew/engineer) //I'm in the middle of some CALIBRATIONS
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING      = SKILL_BASIC,
						SKILL_COMPUTER     = SKILL_ADEPT,
	                    SKILL_EVA          = SKILL_EXPERT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_ADEPT,
	                    SKILL_ENGINES      = SKILL_ADEPT,
	                    SKILL_WEAPONS      = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL = SKILL_MAX,
	                    SKILL_ATMOS = SKILL_MAX,
	                    SKILL_ENGINES = SKILL_MAX,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_ADEPT,
	                    SKILL_ANATOMY = SKILL_ADEPT,
	                    SKILL_CHEMISTRY = SKILL_ADEPT)
	skill_points = 26

/datum/job/submap/voxship_vox/engineer/get_description_blurb()
	return "Ты один из многих миллиардов особей, кто поддерживал пять священных Ковчегов в рабочем состоянии на протяжение многих сотен лет, так что с фрегатом класса Осколок возникнуть проблем не должно.\
	Поддерживайте работоспособность техники, устраняйте поломки, разбирайте высокотехнологичные устройства и артефакты, с которыми столкнуться ваши аколиты во время своих экспедиций."

/datum/job/submap/voxship_vox/quill
	title = "Shard Quill"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew/captain
	supervisors = "Могущественные Апексы Ковчегов"
	info = "You are the Quill-Captain of a handsome shard-class frigate, a scout vessel for the Ark Fleets of the Vox. \
	The dead empire is being reborn, new planets settled, alliances made. To one of the five ark admirals you are sworn, and they have your complete loyalty. \
	The age of stagnancy is over, you have purpose anew, the crew must know this. \
	Ensure they do not disgrace the memory of the Auralis, that they do not forget the faith, and that new territory is claimed and material secured for the arks. \
	Measure your discipline lest you be challenged for being too lenient or harsh."
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_EXPERT,
						SKILL_SCIENCE     = SKILL_BASIC,
						SKILL_PILOT       = SKILL_ADEPT,
						SKILL_COMBAT      = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL = SKILL_EXPERT,
	                    SKILL_ATMOS = SKILL_EXPERT,
	                    SKILL_ENGINES = SKILL_EXPERT,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_EXPERT,
	                    SKILL_ANATOMY = SKILL_EXPERT,
	                    SKILL_CHEMISTRY = SKILL_EXPERT)
	skill_points = 30

/datum/job/submap/voxship_vox/quill/get_description_blurb()
	return "Вы - Куилл-капитан прекрасного творения новой Империи, фрегата класса Осколок, корабля-разведчика флота Ковчега воксов.\
	Спящая Империя древних пробуждается, колонизируются планеты, семьи воксов объединятся ради общей цели. Вы присягнули на верность одному из пяти адмиралов Ковчега, и вы полностью им преданы\
	Эпоха застоя подходит к концу, и Империя дала вам новую цель, ваш экипаж и соратники должны знать это.\
	Следите за своими поданными, убедитесь, что они не опозорят Создателей своими деяниями и что не отрекутся от веры. Обеспечьте Ковчеги материалами и зонами для расширения господства воксов.\
	Поддерживайте дисциплину, избавившись от излишней мягкости и суровости."

/datum/job/submap/voxship_vox/breacher
	title = "Breacher"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew/breacher
	supervisors = "Благославенный Инквизитор, Могущественные Апексы Ковчегов"
	info = "The Empire has been reborn, even if Auralis died, but their word is still in you.	\
	You have become part of the Ecclesiarchy of the Empire, and while the inquisitors are supervising the brothers and protecting the very young empire with their bodies, you must help them and protect them from the vile heretics who dared to threaten his life.	\
	Obey your Inquisitor, protect him and report everything to him, because you are his claws, his eyes and ears."
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_EXPERT,
						SKILL_SCIENCE     = SKILL_BASIC,
						SKILL_PILOT       = SKILL_ADEPT,
						SKILL_COMBAT      = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL = SKILL_EXPERT,
	                    SKILL_ATMOS = SKILL_EXPERT,
	                    SKILL_ENGINES = SKILL_EXPERT,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_EXPERT,
	                    SKILL_ANATOMY = SKILL_EXPERT,
	                    SKILL_CHEMISTRY = SKILL_EXPERT)
	skill_points = 18

/datum/job/submap/voxship_vox/breacher/get_description_blurb()
	return "Империя возродилась, даже если Создатели оставили нас, однако их священные писания и искра сохранились в твоем сердце. \
	Вы стали частью Экклезиархии Империи, закрепившись за одним из Инквизиторов, что показали свой характер и навык тактики в ожесточенных боях против еретиков и пока эти герои смотрят за соблюдением догматов Ауралис защищайте их от завистливых и богохульных пылеглотов, что посмели попытаться оборвать цикл вашего Мастера.\
	Повинуйтесь своему Инквизитору, защищайте его и докладывайте ему обо всем, потому что вы - его когти, его глаза и уши."

/datum/job/submap/voxship_vox/inq
	title = "Shard Inquisitor"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew/inq
	supervisors = "Могущественные Апексы Ковчегов"
	info = "You are the face of the Apexes, that you carry the will of the great Auralis with your claws.\
	The Empire has returned, but not all voxes have believed again, and therefore the apexes have chosen you, so that you, destroying your enemies, return the spark of the Creators to all your brothers in their hearts.	\
	Help the Quill of this vessel by spiritually instructing its crew members and do not allow heretics of dust-swallows learn the secrets of Auralis."
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_EXPERT,
						SKILL_SCIENCE     = SKILL_BASIC,
						SKILL_PILOT       = SKILL_ADEPT,
						SKILL_COMBAT      = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL = SKILL_EXPERT,
	                    SKILL_ATMOS = SKILL_EXPERT,
	                    SKILL_ENGINES = SKILL_EXPERT,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_EXPERT,
	                    SKILL_ANATOMY = SKILL_EXPERT,
	                    SKILL_CHEMISTRY = SKILL_EXPERT)
	skill_points = 30

/datum/job/submap/voxship_vox/inq/get_description_blurb()
	return "Ты - праведный лик Ауралис, что несет волю своих Богов, прорезая свой путь сквозь тьму невежества и богохульства младших рас этого мира.\
	Империя вернулась, но но смогла заглушить брешь великого горя воксов - смерть их Создателей и Богов. Многие забыли и погасли в этой тьме, поэтому Апексы выбрали именно вас, чтобы вернуть искру Творцов в сердца ваших собратьев, чтобы пламя единство вашей великой расы вновь держала в страхе всю галактику.\
	Помогите Куиллу этого судна, духовно наставляя членов его экипажа, и не позволяйте еретикам-пылеглотам узнать секреты Ауралис."

#define VOXSHIP_OUTFIT_JOB_NAME(job_name) ("Vox Asteroid Base - Job - " + job_name)
/decl/hierarchy/outfit/job/voxship
	hierarchy_type = /decl/hierarchy/outfit/job/voxship
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/voxship/crew
	name = VOXSHIP_OUTFIT_JOB_NAME("Shard Expeditionary")
	uniform = /obj/item/clothing/under/vox/vox_robes
	suit = /obj/item/clothing/suit/armor/vox/guard
	head = /obj/item/clothing/head/helmet/vox/guard
	r_pocket = /obj/item/device/radio
	shoes = /obj/item/clothing/shoes/magboots/vox
	l_ear = /obj/item/device/radio/headset
	belt = /obj/item/storage/belt/utility/full
	id_types = list(/obj/item/card/id/voxship)
	l_pocket = /obj/item/crowbar/prybar
	r_hand = /obj/item/tank/nitrogen_emergency_double
	l_hand = /obj/item/voxbox

/decl/hierarchy/outfit/job/voxship/crew/doc
	name = VOXSHIP_OUTFIT_JOB_NAME("Shard Biotechnician")
	uniform = /obj/item/clothing/under/vox/vox_casual
	suit = /obj/item/clothing/suit/storage/vox
	head = /obj/item/clothing/head/helmet/vox/jaw
	r_pocket = /obj/item/device/radio
	shoes = /obj/item/clothing/shoes/magboots/vox
	l_ear = /obj/item/device/radio/headset
	belt = /obj/item/storage/belt/utility/full
	id_types = list(/obj/item/card/id/voxship)
	l_pocket = /obj/item/crowbar/prybar
	r_hand = /obj/item/tank/nitrogen_emergency_double
	l_hand = /obj/item/voxbox

/decl/hierarchy/outfit/job/voxship/crew/engineer
	name = VOXSHIP_OUTFIT_JOB_NAME("Shard Technician")
	uniform = /obj/item/clothing/under/vox/eng
	suit = /obj/item/clothing/suit/armor/vox/bombsuit
	head = /obj/item/clothing/head/helmet/vox/jaw
	r_pocket = /obj/item/device/radio
	shoes = /obj/item/clothing/shoes/magboots/vox
	l_ear = /obj/item/device/radio/headset
	belt = /obj/item/storage/belt/utility/full
	id_types = list(/obj/item/card/id/voxship)
	l_pocket = /obj/item/crowbar/prybar
	r_hand = /obj/item/tank/nitrogen_emergency_double
	l_hand = /obj/item/voxbox

/decl/hierarchy/outfit/job/voxship/crew/captain
	name = VOXSHIP_OUTFIT_JOB_NAME("Shard Quill")
	uniform = /obj/item/clothing/under/vox/lead
	suit = /obj/item/clothing/suit/armor/vox/quill_armor
	head = /obj/item/clothing/head/helmet/vox/quill_crown
	r_pocket = /obj/item/tank/nitrogen_emergency_double
	shoes = /obj/item/clothing/shoes/magboots/vox
	l_ear = /obj/item/device/radio/headset
	belt = /obj/item/storage/belt/utility/full
	id_types = list(/obj/item/card/id/voxship_captain)
	l_pocket = /obj/item/crowbar/prybar
	r_hand = /obj/item/device/radio
	l_hand = /obj/item/voxbox

/decl/hierarchy/outfit/job/voxship/crew/inq
	name = VOXSHIP_OUTFIT_JOB_NAME("Shard Inquisitor")
	uniform = /obj/item/clothing/under/vox/vox_robes
	suit = /obj/item/clothing/suit/armor/vox/quill_armor/inq
	head = /obj/item/clothing/head/helmet/vox/guard
	r_pocket = /obj/item/tank/nitrogen_emergency_double
	shoes = /obj/item/clothing/shoes/magboots/vox
	l_ear = /obj/item/device/radio/headset
	belt = /obj/item/storage/belt/utility/full
	id_types = list(/obj/item/card/id/voxship_captain)
	l_pocket = /obj/item/crowbar/prybar
	r_hand = /obj/item/device/radio
	l_hand = /obj/item/voxbox

/decl/hierarchy/outfit/job/voxship/crew/breacher
	name = VOXSHIP_OUTFIT_JOB_NAME("Breacher")
	uniform = /obj/item/clothing/under/vox/vox_robes
	suit = /obj/item/clothing/suit/armor/vox/guard
	head = /obj/item/clothing/head/helmet/vox/guard
	r_pocket = /obj/item/device/radio
	shoes = /obj/item/clothing/shoes/magboots/vox
	l_ear = /obj/item/device/radio/headset
	belt = /obj/item/storage/belt/utility/full
	id_types = list(/obj/item/card/id/voxship_captain)
	l_pocket = /obj/item/crowbar/prybar
	r_hand = /obj/item/tank/nitrogen_emergency_double
	l_hand = /obj/item/voxbox

/decl/hierarchy/outfit/job/voxslave
	name = VOXSHIP_OUTFIT_JOB_NAME("Slave")
	uniform = 0
	suit = 0
	head = 0
	shoes = 0
	mask = /obj/item/clothing/mask/breath
	r_hand = /obj/item/tank/air


/obj/item/voxbox
	name = "Vox Combat Kit"
	desc = "A secure box containing weapons."
	icon = 'icons/bos/obj/ascent_doodads.dmi'
	icon_state = "box" //temp

/obj/item/voxbox/attack_self(mob/living/user)
	var/list/options = list()
	options["Medic"] = list(/obj/item/gun/energy/darkmatter,/obj/item/gun/launcher/alien/slugsling,/obj/item/storage/firstaid/combat,/obj/item/clothing/glasses/hud/health,/obj/item/device/scanner/health,/obj/item/storage/firstaid/adv)
	options["Enforcer"] = list(/obj/item/gun/energy/darkmatter,/obj/item/gun/energy/plasmastun/vox,/obj/item/gun/launcher/alien/spikethrower,/obj/item/storage/firstaid/adv,/obj/item/gun/projectile/automatic/machine_pistol,/obj/item/ammo_magazine/machine_pistol,/obj/item/ammo_magazine/machine_pistol,/obj/item/ammo_magazine/machine_pistol)
	options["Controller"] = list(/obj/item/gun/energy/darkmatter,/obj/item/gun/projectile/shotgun/pump,/obj/item/storage/box/ammo/shotgunammo/full,/obj/item/storage/box/ammo/shotgunammo/buckshot/full,/obj/item/gun/energy/sonic,/obj/item/storage/firstaid/adv)
	options["Stolen Marine Gear"] = list(/obj/item/gun/projectile/automatic/bullpup_rifle,/obj/item/storage/firstaid/adv,/obj/item/ammo_magazine/mil_rifle,/obj/item/ammo_magazine/mil_rifle,/obj/item/ammo_magazine/mil_rifle,/obj/item/gun/energy/gun,/obj/item/storage/box/fragshells)
	options["Sniper"] = list(/obj/item/gun/energy/darkmatter,/obj/item/gun/energy/sniperrifle/vox,/obj/item/storage/firstaid/adv,/obj/item/device/binoculars,/obj/item/gun/projectile/revolver,/obj/item/ammo_magazine/speedloader/magnum,/obj/item/ammo_magazine/speedloader/magnum,/obj/item/ammo_magazine/speedloader/magnum)
//	options["Melee"] = list(/obj/item/gun/energy/darkmatter,/obj/item/melee/energy/sword,/obj/item/reagent_containers/hypospray/autoinjector/stim,/obj/item/reagent_containers/hypospray/autoinjector/stim,/obj/item/reagent_containers/hypospray/autoinjector/kompoton,/obj/item/storage/firstaid/adv)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/gun/))
				to_chat(user, "You have chosen \the [AM]. Make sure to keep it safe.")
		qdel(src)

/obj/item/gun/energy/plasmastun/vox
	desc = "The modified Hephaestus Industries MA21 Selkie is a weapon that uses a laser pulse to ionise the local atmosphere, creating a disorienting pulse of plasma and deafening shockwave as the wave expands. Without a local atmosphere to ionize, however, it becomes a very expensive paperweight. This model seems heavily modified, to use the power of biofuel."
	self_recharge = 1
	recharge_time = 20

/obj/item/gun/energy/sniperrifle/vox
	desc = "This is a modified Hephaestus Industries Baleful. The cell has been replaced by a vox variant, allowing it to self-charge. Sadly, this makes it lose its function to knock people out. It's a designated marksman rifle capable of shooting powerful ionized beams."
	self_recharge = 0
	battery_chamber_size = BATTERY_VOX
	battery_changable = TRUE
	battery_type = /obj/item/cell/guncell/vox/overcharged
	recharge_time = 80
	projectile_type = /obj/item/projectile/beam/snipervox

/obj/effect/submap_landmark/spawnpoint/voxship_crew
	name = "Shard Acolyte"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/doc
	name = "Shard Biotechnician"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/engineer
	name = "Shard Technician"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/quill
	name = "Shard Quill"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/inq
	name = "Shard Inquisitor"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/breacher
	name = "Breacher"

/obj/effect/submap_landmark/spawnpoint/voxship_human
	name = "Slave"

#undef VOXSHIP_OUTFIT_JOB_NAME
