	object_const_def
	const ROUTE33_POKEFAN_M
	const ROUTE33_LASS
	const ROUTE_33_BERRY
	const ROUTE_33_APRICORN_1
	const ROUTE_33_APRICORN_2

Route33_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route33Fruittrees

Route33Fruittrees:
	readvar VAR_WEEKDAY
	ifequal MONDAY, .NoFruit
	ifequal WEDNESDAY, .NoFruit
	ifequal FRIDAY, .NoFruit
	ifequal SUNDAY, .NoFruit
	checkflag ENGINE_DAILY_ROUTE_33_AZALEA_TREES
	iftrue .NoFruit
	appear ROUTE_33_BERRY
	appear ROUTE_33_APRICORN_1
	appear ROUTE_33_APRICORN_2
.NoFruit
	endcallback

Route33LassScript:
	jumptextfaceplayer Route33LassText

TrainerHikerAnthony:
	trainer HIKER, ANTHONY2, EVENT_BEAT_HIKER_ANTHONY, HikerAnthony2SeenText, HikerAnthony2BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_HIKER_ANTHONY
	opentext
	checkflag ENGINE_ANTHONY_READY_FOR_REMATCH
	iftrue .Rematch
	checkflag ENGINE_DUNSPARCE_SWARM
	iftrue .Swarm
	checkcellnum PHONE_HIKER_ANTHONY
	iftrue .NumberAccepted
	checkevent EVENT_ANTHONY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext HikerAnthony2AfterText
	promptbutton
	setevent EVENT_ANTHONY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForPhoneNumber

.AskAgain:
	scall .AskNumber2
.AskForPhoneNumber:
	askforphonenumber PHONE_HIKER_ANTHONY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, HIKER, ANTHONY2
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext HikerAnthony2BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue .LoadFight1
	loadtrainer HIKER, ANTHONY2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer HIKER, ANTHONY1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer HIKER, ANTHONY3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer HIKER, ANTHONY4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer HIKER, ANTHONY5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ANTHONY_READY_FOR_REMATCH
	end

.Swarm:
	writetext HikerAnthonyDunsparceText
	waitbutton
	closetext
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.RematchStd:
	jumpstd RematchMScript
	end

Route33Sign:
	jumptext Route33SignText

HikerAnthony2SeenText:
	text "I came through the"
	line "tunnel, but I"

	para "still have plenty"
	line "of energy left."
	done

HikerAnthony2BeatenText:
	text "Whoa! You've got"
	line "more zip than me!"
	done

HikerAnthony2AfterText:
	text "We HIKERS are at"
	line "our best in the"
	cont "mountains."
	done

HikerAnthonyDunsparceText:
	text "Hey, did you get a"
	line "DUNSPARCE?"

	para "I caught one too."

	para "Take a look at it"
	line "in the light. It's"
	cont "got a funny face!"
	done

Route33LassText:
	text "Pant, pant…"

	para "I finally got"
	line "through that cave."

	para "It was much bigger"
	line "than I'd expected."

	para "I got too tired to"
	line "explore the whole"

	para "thing, so I came"
	line "outside."
	done

Route33SignText:
	text "ROUTE 33"
	done

Route33BerryTree:
	opentext
	getitemname STRING_BUFFER_3, PSNCUREBERRY
	writetext Route33BerryTreeText
	promptbutton
	writetext Route33HeyItsBerryApricornText
	promptbutton
	giveitem PSNCUREBERRY
	iffalse Route33NoRoomInBag
	disappear ROUTE_33_BERRY
	setflag ENGINE_DAILY_ROUTE_33_AZALEA_TREES
	writetext Route33FoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

Route33ApricornTree:
	opentext
	getitemname STRING_BUFFER_3, BLK_APRICORN
	writetext Route33BerryTreeText
	promptbutton
	writetext Route33HeyItsBerryApricornText
	promptbutton
	giveitem BLK_APRICORN
	iffalse Route33NoRoomInBag
	disappear ROUTE_33_APRICORN_1
	setflag ENGINE_DAILY_ROUTE_33_AZALEA_TREES
	writetext Route33FoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

Route33ApricornTree2:
	opentext
	getitemname STRING_BUFFER_3, PNK_APRICORN
	writetext Route33BerryTreeText
	promptbutton
	writetext Route33HeyItsBerryApricornText
	promptbutton
	giveitem PNK_APRICORN
	iffalse Route33NoRoomInBag
	disappear ROUTE_33_APRICORN_2
	setflag ENGINE_DAILY_ROUTE_33_AZALEA_TREES
	writetext Route33FoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

Route33NoBerryOrApricorn:
	opentext
	writetext Route33BerryTreeText
	promptbutton
	writetext Route33NothingHereText
	waitbutton
	closetext
	end

Route33NoRoomInBag:
	writetext Route33NoRoomInBagText
	waitbutton
	closetext
	end

Route33BerryTreeText:
	text_far _FruitBearingTreeText
	text_end

Route33NothingHereText:
	text_far _NothingHereText
	text_end

Route33HeyItsBerryApricornText:
	text "Hey! It's a"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

Route33FoundItemText:
	text_far _ObtainedFruitText
	text_end

Route33NoRoomInBagText:
	text_far _CantCarryItemText
	text_end

Route33_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  9, UNION_CAVE_1F, 3

	def_coord_events

	def_bg_events
	bg_event 11, 11, BGEVENT_READ, Route33Sign
	bg_event 14, 16, BGEVENT_READ, Route33NoBerryOrApricorn
	bg_event 13, 16, BGEVENT_READ, Route33NoBerryOrApricorn
	bg_event  6, 11, BGEVENT_READ, Route33NoBerryOrApricorn

	def_object_events
	object_event  6, 13, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerAnthony, -1
	object_event 12, 16, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route33LassScript, -1
	object_event  6, 11, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route33BerryTree, EVENT_ROUTE_33_BERRY
	object_event 14, 16, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, Route33ApricornTree, EVENT_ROUTE_33_APRICORN_1
	object_event 13, 16, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route33ApricornTree2, EVENT_ROUTE_33_APRICORN_2
