/datum/reagent/bicaridine/tobacco
	taste_description = "speeding up time?"

/datum/reagent/tobacco/perception
	name = "Herbal drugs and tobacco"
	description = "Cut and process tobacco leaves along with herbal preparations."
	taste_description = "tobacco"
	color = "#37946e"
	scent = "cigarette smoke and herbal drug?"
	scent_range = 6

/datum/reagent/tobacco/perception/affect_blood(var/mob/living/carbon/M, var/alien, var/removed)
	..()
	M.add_chemical_effect(CE_SLOWDOWN, 1)

/datum/reagent/tobacco/medical
	name = "Medical tobacco"
	description = "Medical tobacco used for relaxation and concentration."
	taste_description = "relax, concetration and tobacco"
	color = "#3b4aa4"
	scent = "tobacco"
	scent_range = 2

/datum/reagent/tobacco/strong
	name = "Strong tobacco"
	description = "Strong tobacco for strong men... or women, I don't know."
	taste_description = "strong tobacco that hits the throat hard"
	color = "#282e2b"
	scent = "strong tobacco"
	scent_range = 10

/datum/reagent/tobacco/strong/affect_blood(var/mob/living/carbon/M, var/alien, var/removed)
	..()
	M.reagents.add_reagent(/datum/reagent/nicotine, 10)

/datum/reagent/tobacco/female
	name = "female tobacco"
	description = "Female tobacco for good lady's."
	taste_description = "weak tobacco that gently caresses the throat."
	color = "#524b24"
	scent = "weak tobacco"

/datum/reagent/tobacco/honey
	name = "tobacco with honey"
	description = "Tobacco that has been processed in honey."
	taste_description = "the sweetness of honey and the strength of tobacco."
	color = "#d2691e"
	scent = "sweet tobacco"

/datum/reagent/tobacco/coffee
	name = "tobacco with coffee"
	description = "Tobacco leaves that have been mixed with coffee powder."
	taste_description = "sweet tobacco and energetic coffee."
	color = "#892222"
	scent = "sweet tobacco and energy tobacco"
