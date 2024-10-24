	object_const_def
	const ROUTE1_YOUNGSTER
	const ROUTE1_COOLTRAINER_F
	const ROUTE_1_BERRY
	const ROUTE_1_APRICORN

Route1_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route1Fruittrees

Route1Fruittrees:
	readvar VAR_WEEKDAY
	ifequal MONDAY, .NoFruit
	ifequal WEDNESDAY, .NoFruit
	ifequal FRIDAY, .NoFruit
	ifequal SUNDAY, .NoFruit
	checkflag ENGINE_DAILY_ROUTE_1_26_TREES
	iftrue .NoFruit
	appear ROUTE_1_BERRY
	appear ROUTE_1_APRICORN
.NoFruit
	endcallback

TrainerSchoolboyDanny:
	trainer SCHOOLBOY, DANNY, EVENT_BEAT_SCHOOLBOY_DANNY, SchoolboyDannySeenText, SchoolboyDannyBeatenText, 0, .Script

.Script:
	opentext
	writetext SchoolboyDannyAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfQuinn:
	trainer COOLTRAINERF, QUINN, EVENT_BEAT_COOLTRAINERF_QUINN, CooltrainerfQuinnSeenText, CooltrainerfQuinnBeatenText, 0, .Script

.Script:
	opentext
	writetext CooltrainerfQuinnAfterBattleText
	waitbutton
	closetext
	end

Route1Sign:
	jumptext Route1SignText

SchoolboyDannySeenText:
	text "If trainers meet,"
	line "the first thing to"
	cont "do is battle."
	done

SchoolboyDannyBeatenText:
	text "Awww… I've got a"
	line "losing record…"
	done

SchoolboyDannyAfterBattleText:
	text "For trainers, it's"
	line "a given that we'll"

	para "battle whenever we"
	line "meet."
	done

CooltrainerfQuinnSeenText:
	text "You there!"
	line "Want to battle?"
	done

CooltrainerfQuinnBeatenText:
	text "Down and out…"
	done

CooltrainerfQuinnAfterBattleText:
	text "You're strong."

	para "You obviously must"
	line "have trained hard."
	done

Route1SignText:
	text "ROUTE 1"

	para "PALLET TOWN -"
	line "VIRIDIAN CITY"
	done

Route1BerryTree:
	opentext
	getitemname STRING_BUFFER_3, MIRACLEBERRY
	writetext Route1BerryTreeText
	promptbutton
	writetext Route1HeyItsBerryApricornText
	promptbutton
	giveitem MIRACLEBERRY
	iffalse Route1NoRoomInBag
	disappear ROUTE_1_BERRY
	setflag ENGINE_DAILY_ROUTE_1_26_TREES
	writetext Route1FoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

Route1ApricornTree:
	opentext
	getitemname STRING_BUFFER_3, BLK_APRICORN
	writetext Route1BerryTreeText
	promptbutton
	writetext Route1HeyItsBerryApricornText
	promptbutton
	giveitem BLK_APRICORN
	iffalse Route1NoRoomInBag
	disappear ROUTE_1_APRICORN
	setflag ENGINE_DAILY_ROUTE_1_26_TREES
	writetext Route1FoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

Route1NoBerryOrApricorn:
	opentext
	writetext Route1BerryTreeText
	promptbutton
	writetext Route1NothingHereText
	waitbutton
	closetext
	end

Route1NoRoomInBag:
	writetext Route1NoRoomInBagText
	waitbutton
	closetext
	end

Route1BerryTreeText:
	text_far _FruitBearingTreeText
	text_end

Route1NothingHereText:
	text_far _NothingHereText
	text_end

Route1HeyItsBerryApricornText:
	text "Hey! It's a"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

Route1FoundItemText:
	text_far _ObtainedFruitText
	text_end

Route1NoRoomInBagText:
	text_far _CantCarryItemText
	text_end

Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  7, 27, BGEVENT_READ, Route1Sign
	bg_event  5,  7, BGEVENT_READ, Route1NoBerryOrApricorn
	bg_event  3,  7, BGEVENT_READ, Route1NoBerryOrApricorn

	def_object_events
	object_event  4, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSchoolboyDanny, -1
	object_event  9, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerfQuinn, -1
	object_event  5,  7, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route1BerryTree, EVENT_ROUTE_1_BERRY
	object_event  3,  7, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, Route1ApricornTree, EVENT_ROUTE_1_APRICORN
