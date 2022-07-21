/decl/cultural_info/culture/ipc
	name = CULTURE_POSITRONICS
	description = "Члены кочующего Флота Элипс. Эти ИПС придерживаются особой философии, \
	что говорит о вечной и не остановимой войне между любыми разумными видами. \
	Такие ИПС крайне ценят и буквально богославляют технологии, считая их путём эволюции. \
	"
	language = LANGUAGE_EAL
	secondary_langs = list(
		LANGUAGE_HUMAN_EURO,
		LANGUAGE_HUMAN_CHINESE,
		LANGUAGE_HUMAN_LORD,
		LANGUAGE_HUMAN_ARABIC,
		LANGUAGE_HUMAN_INDIAN,
		LANGUAGE_HUMAN_IBERIAN,
		LANGUAGE_HUMAN_RUSSIAN,
		LANGUAGE_SPACER,
		LANGUAGE_GUTTER,
		LANGUAGE_SIGN
	)

/decl/cultural_info/culture/ipc/sanitize_name(var/new_name)
	return sanitizeName(new_name, allow_numbers = 1)
