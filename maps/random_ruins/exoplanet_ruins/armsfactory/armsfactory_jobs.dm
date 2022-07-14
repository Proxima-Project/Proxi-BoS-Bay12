/datum/job/submap/armsfactory_loyalengi
	title = "Weapons Engineer"
	info = "�� - ��������� ������, �������������� ������������� ��������������� ������, �������� ����� � ����� ���������� ��������.\
	�� ����������� ����� � ������ ������������ ����� � ����� ���������, ������� ����� ���������� ����� ������� � ����� ������������ �������.\
	���� ��������, ��� ��������������� ��������� ����� ���� ����������� �� ����������� ����� ������������ ��������� - �� �����!\
	��� ������ ������, ���� �� ������� ���������� ������� � ������ �������� �� ����,\
	�� �������� ������� �� ������, �� ������ ������� �������� ���� ���, ��� �������� ��������������� �����."
	total_positions = 1
	is_semi_antagonist = TRUE
	outfit_type = /decl/hierarchy/outfit/job/loyalarmy
	min_skill = list(   SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_DEVICES     = SKILL_ADEPT,)

	max_skill = list(   SKILL_COMBAT     = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_BASIC)
	skill_points = 15
	required_language = LANGUAGE_SPACER


/datum/job/submap/armsfactory_loyalguard
	title = "Guard"
	info = "�� - �������� ���������� ������, �������������� ������������� ��������������� �����, �������� ����� � ����� ���������� ��������.\
	���� ������ �� ����� ������� ����� ���, ������� ���� ����� ��������, �� ���� ������ � ������� ����� � ������������� ������������ ����� ����������\
	�, ����������, ���� �����������, �� ������������� ����� �������� ���������, �� � ���� ���������, �� ����� �������� ��������.\
	������ ����������� ���������� ���� �� �������� ����� ������� ������ ��� ���, �� ��� �������������� ������ ����� ������� ����� �������� ����������,\
	������������� ���������� ������������, � ����� ��� � ����� �����. ���� ������, �� � ���� ���� ������� ������ �� ����."
	total_positions = 2
	is_semi_antagonist = TRUE
	outfit_type = /decl/hierarchy/outfit/job/loyalarmy/guard
	min_skill = list(   SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_HAULING     = SKILL_ADEPT)

	max_skill = list(   SKILL_SCIENCE     = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_BASIC)
	skill_points = 15
	required_language = LANGUAGE_SPACER

/decl/hierarchy/outfit/job/loyalarmy
	name = OUTFIT_JOB_NAME("Loyalist Army Engi")
	id = null
	pda_type = null
	uniform = /obj/item/clothing/under/solgov/utility
	shoes = /obj/item/clothing/shoes/dutyboots
	suit = /obj/item/clothing/suit/storage/toggle/labcoat

/decl/hierarchy/outfit/job/loyalarmy/guard
	name = OUTFIT_JOB_NAME("Loyalist Army Guard")
	uniform = /obj/item/clothing/under/syndicate/tacticool
	suit = /obj/item/clothing/suit/armor/pcarrier/medium

/obj/effect/submap_landmark/spawnpoint/armsfactory_loyalengi
	name = "Weapons Engineer"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/submap_landmark/spawnpoint/armsfactory_loyalguard
	name = "Guard"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE
