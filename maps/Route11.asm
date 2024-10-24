	object_const_def
	const ROUTE11_YOUNGSTER1
	const ROUTE11_YOUNGSTER2
	const ROUTE11_YOUNGSTER3
	const ROUTE11_YOUNGSTER4
	const ROUTE_11_BERRY
	const ROUTE_11_APRICORN

Route11_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route11Fruittrees

Route11Fruittrees:
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .NoFruit
	ifequal THURSDAY, .NoFruit
	ifequal SATURDAY, .NoFruit
	checkflag ENGINE_DAILY_ROUTE_11_FUCHSIA_TREES
	iftrue .NoFruit
	appear ROUTE_11_BERRY
	appear ROUTE_11_APRICORN
.NoFruit:
	endcallback

TrainerYoungsterOwen:
	trainer YOUNGSTER, OWEN, EVENT_BEAT_YOUNGSTER_OWEN, YoungsterOwenSeenText, YoungsterOwenBeatenText, 0, .Script

.Script:
	opentext
	writetext YoungsterOwenAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterJason:
	trainer YOUNGSTER, JASON, EVENT_BEAT_YOUNGSTER_JASON, YoungsterJasonSeenText, YoungsterJasonBeatenText, 0, .Script

.Script:
	opentext
	writetext YoungsterJasonAfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicHerman:
	trainer PSYCHIC_T, HERMAN, EVENT_BEAT_PSYCHIC_HERMAN, PsychicHermanSeenText, PsychicHermanBeatenText, 0, .Script

.Script:
	opentext
	writetext PsychicHermanAfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicFidel:
	trainer PSYCHIC_T, FIDEL, EVENT_BEAT_PSYCHIC_FIDEL, PsychicFidelSeenText, PsychicFidelBeatenText, 0, .Script

.Script:
	opentext
	writetext PsychicFidelAfterBattleText
	waitbutton
	closetext
	end

Route11Sign:
	jumptext Route11SignText

Route11HiddenRevive:
	hiddenitem REVIVE, EVENT_ROUTE_11_HIDDEN_REVIVE

YoungsterOwenSeenText:
	text "There's no cheat-"
	line "ing in #MON."

	para "Let's keep it fair"
	line "and square!"
	done

YoungsterOwenBeatenText:
	text "Huh? How did this"
	line "happen?"
	done

YoungsterOwenAfterBattleText:
	text "I fought fair and"
	line "square with honor."

	para "I don't regret"
	line "this at all."
	done

YoungsterJasonSeenText:
	text "It itches and"
	line "tickles a bit when"

	para "I wear shorts in"
	line "the grass."
	done

YoungsterJasonBeatenText:
	text "Aiyaaah!"
	line "I got stomped!"
	done

YoungsterJasonAfterBattleText:
	text "I'm going to catch"
	line "more #MON in"
	cont "the grass."
	done

PsychicHermanSeenText:
	text "…"
	done

PsychicHermanBeatenText:
	text "…"
	done

PsychicHermanAfterBattleText:
	text "…"

	para "I lost while I had"
	line "my eyes closed…"
	done

PsychicFidelSeenText:
	text "I can see it…"

	para "Everything to see"
	line "about you…"
	done

PsychicFidelBeatenText:
	text "I couldn't foresee"
	line "your power…"
	done

PsychicFidelAfterBattleText:
	text "Strength in con-"
	line "viction…"

	para "You're strong be-"
	line "cause you believe"
	cont "in your #MON."
	done

Route11SignText:
	text "ROUTE 11"
	done

Route11BerryTree:
	opentext
	getitemname STRING_BUFFER_3, BERRY
	writetext Route11BerryTreeText
	promptbutton
	writetext Route11HeyItsBerryApricornText
	promptbutton
	giveitem BERRY
	iffalse Route11NoRoomInBag
	disappear ROUTE_11_BERRY
	setflag ENGINE_DAILY_ROUTE_11_FUCHSIA_TREES
	writetext Route11FoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

Route11ApricornTree:
	opentext
	getitemname STRING_BUFFER_3, BLU_APRICORN
	writetext Route11BerryTreeText
	promptbutton
	writetext Route11HeyItsBerryApricornText
	promptbutton
	giveitem BLU_APRICORN
	iffalse Route11NoRoomInBag
	disappear ROUTE_11_APRICORN
	setflag ENGINE_DAILY_ROUTE_11_FUCHSIA_TREES
	writetext Route11FoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

Route11NoBerryOrApricorn:
	opentext
	writetext Route11BerryTreeText
	promptbutton
	writetext Route11NothingHereText
	waitbutton
	closetext
	end

Route11NoRoomInBag:
	writetext Route11NoRoomInBagText
	waitbutton
	closetext
	end

Route11BerryTreeText:
	text_far _FruitBearingTreeText
	text_end

Route11NothingHereText:
	text_far _NothingHereText
	text_end

Route11HeyItsBerryApricornText:
	text "Hey! It's a"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

Route11FoundItemText:
	text_far _ObtainedFruitText
	text_end

Route11NoRoomInBagText:
	text_far _CantCarryItemText
	text_end

Route11_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  3,  7, BGEVENT_READ, Route11Sign
	bg_event 32,  5, BGEVENT_ITEM, Route11HiddenRevive
	bg_event 31,  2, BGEVENT_READ, Route11NoBerryOrApricorn
	bg_event 32,  2, BGEVENT_READ, Route11NoBerryOrApricorn

	def_object_events
	object_event 22, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterOwen, -1
	object_event 20,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterJason, -1
	object_event 28,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPsychicHerman, -1
	object_event  8,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicFidel, -1
	object_event 31,  2, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route11BerryTree, EVENT_ROUTE_11_BERRY
	object_event 32,  2, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route11ApricornTree, EVENT_ROUTE_11_APRICORN
