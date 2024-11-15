	object_const_def
	const ROUTE46_POKEFAN_M
	const ROUTE46_YOUNGSTER
	const ROUTE46_LASS
	const ROUTE46_POKE_BALL
	const ROUTE_46_BERRY_1
	const ROUTE_46_BERRY_2
	const ROUTE_46_APRICORN_1
	const ROUTE_46_APRICORN_2

Route46_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route46Fruittrees

Route46Fruittrees:
	readvar VAR_WEEKDAY
	ifequal MONDAY, .NoFruit
	ifequal WEDNESDAY, .NoFruit
	ifequal FRIDAY, .NoFruit
	ifequal SUNDAY, .NoFruit
	checkflag ENGINE_DAILY_ROUTE_45_46_TREES
	iftrue .NoFruit
	appear ROUTE_46_BERRY_1
	appear ROUTE_46_APRICORN_1
	appear ROUTE_46_BERRY_2
	appear ROUTE_46_APRICORN_2
.NoFruit
	endcallback

TrainerCamperTed:
	trainer CAMPER, TED, EVENT_BEAT_CAMPER_TED, CamperTedSeenText, CamperTedBeatenText, 0, .Script

.Script:
	opentext
	writetext CamperTedAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerErin1:
	trainer PICNICKER, ERIN1, EVENT_BEAT_PICNICKER_ERIN, PicnickerErin1SeenText, PicnickerErin1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_PICNICKER_ERIN
	opentext
	checkevent EVENT_ERIN_CALCIUM
	iftrue .HasCalcium
	checkflag ENGINE_ERIN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_PICNICKER_ERIN
	iftrue Route46NumberAcceptedF
	checkevent EVENT_ERIN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext PicnickerErinAfterBattleText
	promptbutton
	setevent EVENT_ERIN_ASKED_FOR_PHONE_NUMBER
	scall Route46AskNumber
	sjump .AskForNumber

.AskedAlready:
	scall Route46AskNumber
.AskForNumber:
	askforphonenumber PHONE_PICNICKER_ERIN
	ifequal PHONE_CONTACT_REFUSED, Route46NumberDeclinedF
	gettrainername STRING_BUFFER_3, PICNICKER, ERIN1
	scall Route46RegisteredNumberF
	sjump Route46NumberAcceptedF

.WantsBattle:
	scall Route46RematchF
	winlosstext PicnickerErin1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer PICNICKER, ERIN1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer PICNICKER, ERIN2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIN_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer PICNICKER, ERIN3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIN_READY_FOR_REMATCH
	scall Route46RematchGiftF
	verbosegiveitem CALCIUM
	iffalse ErinNoRoomForCalcium
	closetext
	end

.HasCalcium:
	writetext PicnickerErin_GiveCalciumAfterBattleAgain
	waitbutton
	verbosegiveitem CALCIUM
	iffalse ErinNoRoomForCalcium
	clearevent EVENT_ERIN_CALCIUM
	closetext
	end

Route46AskNumber:
	jumpstd AskNumber1FScript
	end

Route46RegisteredNumberF:
	jumpstd RegisteredNumberFScript
	end

Route46NumberAcceptedF:
	jumpstd NumberAcceptedFScript
	end

Route46NumberDeclinedF:
	jumpstd NumberDeclinedFScript
	end

Route46RematchF:
	jumpstd RematchFScript
	end

ErinNoRoomForCalcium:
	setevent EVENT_ERIN_CALCIUM
	jumpstd PackFullFScript
	end

Route46RematchGiftF:
	jumpstd RematchGiftFScript
	end

TrainerHikerBailey:
	trainer HIKER, BAILEY, EVENT_BEAT_HIKER_BAILEY, HikerBaileySeenText, HikerBaileyBeatenText, 0, .Script

.Script:
	opentext
	writetext HikerBaileyAfterBattleText
	waitbutton
	closetext
	end

Route46Sign:
	jumptext Route46SignText

Route46XSpeed:
	itemball X_SPEED

HikerBaileySeenText:
	text "Awright! I'll show"
	line "you the power of"
	cont "mountain #MON!"
	done

HikerBaileyBeatenText:
	text "Mercy! You showed"
	line "me your power!"
	done

HikerBaileyAfterBattleText:
	text "It's over. I don't"
	line "mind. We HIKERS"
	cont "are like that."
	done

CamperTedSeenText:
	text "I'm raising #-"
	line "MON too!"

	para "Will you battle"
	line "with me?"
	done

CamperTedBeatenText:
	text "Wha…?"
	done

CamperTedAfterBattleText:
	text "I did my best but"
	line "came up short."

	para "No excuses--I"
	line "admit I lost."
	done

PicnickerErin1SeenText:
	text "I raise #MON"
	line "too!"

	para "Will you battle"
	line "with me?"
	done

PicnickerErin1BeatenText:
	text "Oh, rats!"
	done

PicnickerErinAfterBattleText:
	text "I've been to many"
	line "GYMS, but the GYM"

	para "in GOLDENROD is my"
	line "favorite."

	para "It's filled with"
	line "pretty flowers!"
	done

PicnickerErin2BeatenText:
	text "Aww… I keep losing"
	line "all the time!"

	para "I'll just have to"
	line "try harder!"

	para "Anyway, thanks for"
	line "battling me again"

	para "and again. Here's"
	line "that present from"
	cont "the other time."
	done

PicnickerErin_GiveCalciumAfterBattleAgain:
	text "Nice! You're back"
	line "for my gift!"
	done

Route46SignText:
	text "ROUTE 46"
	line "MOUNTAIN RD. AHEAD"
	done

Route46BerryTree:
	opentext
	getitemname STRING_BUFFER_3, BERRY
	writetext Route46BerryTreeText
	promptbutton
	writetext Route46HeyItsBerryApricornText
	promptbutton
	giveitem BERRY
	iffalse Route46NoRoomInBag
	disappear ROUTE_46_BERRY_1
	setflag ENGINE_DAILY_ROUTE_45_46_TREES
	writetext Route46FoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

Route46BerryTree2:
	opentext
	getitemname STRING_BUFFER_3, PRZCUREBERRY
	writetext Route46BerryTreeText
	promptbutton
	writetext Route46HeyItsBerryApricornText
	promptbutton
	giveitem PRZCUREBERRY
	iffalse Route46NoRoomInBag
	disappear ROUTE_46_BERRY_2
	setflag ENGINE_DAILY_ROUTE_45_46_TREES
	writetext Route46FoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

Route46ApricornTree:
	opentext
	getitemname STRING_BUFFER_3, YLW_APRICORN
	writetext Route46BerryTreeText
	promptbutton
	writetext Route46HeyItsBerryApricornText
	promptbutton
	giveitem YLW_APRICORN
	iffalse Route46NoRoomInBag
	disappear ROUTE_46_APRICORN_1
	setflag ENGINE_DAILY_ROUTE_45_46_TREES
	writetext Route46FoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

Route46ApricornTree2:
	opentext
	getitemname STRING_BUFFER_3, RED_APRICORN
	writetext Route46BerryTreeText
	promptbutton
	writetext Route46HeyItsBerryApricornText
	promptbutton
	giveitem RED_APRICORN
	iffalse Route46NoRoomInBag
	disappear ROUTE_46_APRICORN_2
	setflag ENGINE_DAILY_ROUTE_45_46_TREES
	writetext Route46FoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

Route46NoBerryOrApricorn:
	opentext
	writetext Route46BerryTreeText
	promptbutton
	writetext Route46NothingHereText
	waitbutton
	closetext
	end

Route46NoRoomInBag:
	writetext Route46NoRoomInBagText
	waitbutton
	closetext
	end

Route46BerryTreeText:
	text_far _FruitBearingTreeText
	text_end

Route46NothingHereText:
	text_far _NothingHereText
	text_end

Route46HeyItsBerryApricornText:
	text "Hey! It's a"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

Route46FoundItemText:
	text_far _ObtainedFruitText
	text_end

Route46NoRoomInBagText:
	text_far _CantCarryItemText
	text_end

Route46_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 33, ROUTE_29_ROUTE_46_GATE, 1
	warp_event  8, 33, ROUTE_29_ROUTE_46_GATE, 2
	warp_event 14,  5, DARK_CAVE_VIOLET_ENTRANCE, 3

	def_coord_events

	def_bg_events
	bg_event  9, 27, BGEVENT_READ, Route46Sign
	bg_event  9,  5, BGEVENT_READ, Route46NoBerryOrApricorn
	bg_event  6,  6, BGEVENT_READ, Route46NoBerryOrApricorn
	bg_event  8,  7, BGEVENT_READ, Route46NoBerryOrApricorn
	bg_event  7,  4, BGEVENT_READ, Route46NoBerryOrApricorn

	def_object_events
	object_event 12, 19, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerBailey, -1
	object_event  4, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCamperTed, -1
	object_event  2, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerErin1, -1
	object_event  1, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route46XSpeed, EVENT_ROUTE_46_X_SPEED
	object_event  9,  5, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route46BerryTree, EVENT_ROUTE_46_BERRY_1
	object_event  6,  6, SPRITE_BERRY_YELLOW, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route46BerryTree2, EVENT_ROUTE_46_BERRY_2
	object_event  8,  7, SPRITE_APRICORN_YELLOW, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route46ApricornTree, EVENT_ROUTE_46_APRICORN_1
	object_event  7,  4, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route46ApricornTree2, EVENT_ROUTE_46_APRICORN_2
