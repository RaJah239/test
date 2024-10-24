	object_const_def
	const PEWTERCITY_COOLTRAINER_F
	const PEWTERCITY_BUG_CATCHER
	const PEWTERCITY_GRAMPS
	const PEWTERCITY_BERRY
	const PEWTERCITY_BERRY_2
	const PEWTERCITY_APRICORN
	const PEWTERCITY_APRICORN_2

PewterCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PewterCityFlypointCallback
	callback MAPCALLBACK_OBJECTS, PewterCityFruittrees

PewterCityFlypointCallback:
	setflag ENGINE_FLYPOINT_PEWTER
	endcallback

PewterCityFruittrees:
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .NoFruit
	ifequal THURSDAY, .NoFruit
	ifequal SATURDAY, .NoFruit
	checkflag ENGINE_DAILY_PEWTER_ROUTE_8_TREES
	iftrue .NoFruit
	appear PEWTERCITY_BERRY
	appear PEWTERCITY_BERRY_2
	appear PEWTERCITY_APRICORN
	appear PEWTERCITY_APRICORN_2
.NoFruit:
	endcallback

PewterCityCooltrainerFScript:
	jumptextfaceplayer PewterCityCooltrainerFText

PewterCityBugCatcherScript:
	jumptextfaceplayer PewterCityBugCatcherText

PewterCityGrampsScript:
	faceplayer
	opentext
	writetext TextThinking
	promptbutton
	special BirdsCheck
	iftrue .Lugia
	iffalse .WondersOfTravel
	setevent EVENT_GOT_SILVER_WING
	closetext
	end

.Lugia
    checkevent EVENT_GOT_SILVER_WING
	iftrue .GotSilverWing
	writetext PewterCityGrampsText
	promptbutton
	verbosegiveitem SILVER_WING
	setevent EVENT_GOT_SILVER_WING
	closetext
	end
	
.WondersOfTravel
    writetext PewterCityGrampsText_GotSilverWing
	waitbutton
	closetext
	end

.GotSilverWing:
	writetext PewterCityGrampsText_GotSilverWing
	waitbutton
	closetext
	end

PewterCitySign:
	jumptext PewterCitySignText

PewterGymSign:
	jumptext PewterGymSignText

PewterMuseumSign:
	jumptext PewterMuseumSignText

PewterCityMtMoonGiftShopSign:
	jumptext PewterCityMtMoonGiftShopSignText

PewterCityWelcomeSign:
	jumptext PewterCityWelcomeSignText

PewterCityPokecenterSign:
	jumpstd PokecenterSignScript

PewterCityMartSign:
	jumpstd MartSignScript

PewterCityCooltrainerFText:
	text "Have you visited"
	line "PEWTER GYM?"

	para "The LEADER uses"
	line "rock-type #MON."
	done

PewterCityBugCatcherText:
	text "At night, CLEFAIRY"
	line "come out to play"
	cont "at MT.MOON."

	para "But not every"
	line "night."
	done
	
TextThinking:
    text "…"
	done 

PewterCityGrampsText:
	text "Ah, you came all"
	line "the way out here"
	cont "from JOHTO?"

	para "That brings back"
	line "memories. When I"

	para "was young, I went"
	line "to JOHTO to train."

	para "You remind me so"
	line "much of what I was"

	para "like as a young"
	line "man."

	para "Here. I want you"
	line "to have this item"
	cont "I found in JOHTO."
	done

PewterCityGrampsText_GotSilverWing:
	text "Going to new, un-"
	line "known places and"
	cont "seeing new people…"

	para "Those are the joys"
	line "of travel."
	done

PewterCitySignText:
	text "PEWTER CITY"
	line "A Stone Gray City"
	done

PewterGymSignText:
	text "PEWTER CITY"
	line "#MON GYM"
	cont "LEADER: BROCK"

	para "The Rock Solid"
	line "#MON Trainer"
	done

PewterMuseumSignText:
	text "There's a notice"
	line "here…"

	para "PEWTER MUSEUM OF"
	line "SCIENCE is closed"
	cont "for renovations…"
	done

PewterCityMtMoonGiftShopSignText:
	text "There's a notice"
	line "here…"

	para "MT.MOON GIFT SHOP"
	line "NOW OPEN!"
	done

PewterCityWelcomeSignText:
	text "WELCOME TO"
	line "PEWTER CITY!"
	done

PewterCityBerryTree:
	opentext
	getitemname STRING_BUFFER_3, ICE_BERRY
	writetext PewterBerryTreeText
	promptbutton
	writetext PewterHeyItsBerryApricornText
	promptbutton
	giveitem ICE_BERRY
	iffalse PewterNoRoomInBag
	disappear PEWTERCITY_BERRY
	setflag ENGINE_DAILY_PEWTER_ROUTE_8_TREES
	writetext PewterFoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

PewterCityBerryTree2:
	opentext
	getitemname STRING_BUFFER_3, MINT_BERRY
	writetext PewterBerryTreeText
	promptbutton
	writetext PewterHeyItsBerryApricornText
	promptbutton
	giveitem MINT_BERRY
	iffalse PewterNoRoomInBag
	disappear PEWTERCITY_BERRY_2
	setflag ENGINE_DAILY_PEWTER_ROUTE_8_TREES
	writetext PewterFoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

PewterCityApricornTree:
	opentext
	getitemname STRING_BUFFER_3, BLU_APRICORN
	writetext PewterBerryTreeText
	promptbutton
	writetext PewterHeyItsBerryApricornText
	promptbutton
	giveitem BLU_APRICORN
	iffalse PewterNoRoomInBag
	disappear PEWTERCITY_APRICORN
	setflag ENGINE_DAILY_PEWTER_ROUTE_8_TREES
	writetext PewterFoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

PewterCityApricornTree2:
	opentext
	getitemname STRING_BUFFER_3, WHT_APRICORN
	writetext PewterBerryTreeText
	promptbutton
	writetext PewterHeyItsBerryApricornText
	promptbutton
	giveitem WHT_APRICORN
	iffalse PewterNoRoomInBag
	disappear PEWTERCITY_APRICORN_2
	setflag ENGINE_DAILY_PEWTER_ROUTE_8_TREES
	writetext PewterFoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

PewterNoBerryOrApricorn:
	opentext
	writetext PewterBerryTreeText
	promptbutton
	writetext PewterNothingHereText
	waitbutton
	closetext
	end

PewterNoRoomInBag:
	writetext PewterNoRoomInBagText
	waitbutton
	closetext
	end

PewterBerryTreeText:
	text_far _FruitBearingTreeText
	text_end

PewterNothingHereText:
	text_far _NothingHereText
	text_end

PewterHeyItsBerryApricornText:
	text "Hey! It's a"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

PewterFoundItemText:
	text_far _ObtainedFruitText
	text_end

PewterNoRoomInBagText:
	text_far _CantCarryItemText
	text_end

PewterCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29, 13, PEWTER_NIDORAN_SPEECH_HOUSE, 1
	warp_event 16, 17, PEWTER_GYM, 1
	warp_event 23, 17, PEWTER_MART, 2
	warp_event 13, 25, PEWTER_POKECENTER_1F, 1
	warp_event  7, 29, PEWTER_SNOOZE_SPEECH_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 25, 23, BGEVENT_READ, PewterCitySign
	bg_event 11, 17, BGEVENT_READ, PewterGymSign
	bg_event 15,  9, BGEVENT_READ, PewterMuseumSign
	bg_event 33, 19, BGEVENT_READ, PewterCityMtMoonGiftShopSign
	bg_event 19, 29, BGEVENT_READ, PewterCityWelcomeSign
	bg_event 14, 25, BGEVENT_READ, PewterCityPokecenterSign
	bg_event 24, 17, BGEVENT_READ, PewterCityMartSign
	bg_event 31,  5, BGEVENT_READ, PewterNoBerryOrApricorn
	bg_event 33,  5, BGEVENT_READ, PewterNoBerryOrApricorn
	bg_event 31,  3, BGEVENT_READ, PewterNoBerryOrApricorn
	bg_event 29,  3, BGEVENT_READ, PewterNoBerryOrApricorn

	def_object_events
	object_event 19, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterCityCooltrainerFScript, -1
	object_event 14, 29, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterCityBugCatcherScript, -1
	object_event 15, 19, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCityGrampsScript, -1
	object_event 33,  5, SPRITE_BERRY_YELLOW, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, PewterCityBerryTree, EVENT_PEWTER_BERRY
	object_event 31,  5, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCityBerryTree2, EVENT_PEWTER_BERRY_2
	object_event 31,  3, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCityApricornTree, EVENT_PEWTER_APRICORN
	object_event 29,  3, SPRITE_APRICORN_YELLOW, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, PewterCityApricornTree2, EVENT_PEWTER_APRICORN_2
