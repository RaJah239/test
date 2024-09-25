	object_const_def
	const DAYCARE_GRAMPS
	const DAYCARE_GRANNY
	const ROUTE34_DAY_CARE_OWNERS_GRANDSON1
	const ROUTE34_DAY_CARE_OWNERS_GRANDSON2

DayCare_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, DayCareEggCheckCallback

DayCareEggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	setevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	endcallback

.PutDayCareManOutside:
	setevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	clearevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	endcallback

DayCareManScript_Inside:
	faceplayer
	opentext
	special DayCareMan
	waitbutton
	closetext
	end

DayCareLadyScript:
	faceplayer
	opentext
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .HusbandWasLookingForYou
	special DayCareLady
	waitbutton
	closetext
	end

.HusbandWasLookingForYou:
	writetext Text_GrampsLookingForYou
	waitbutton
	closetext
	end

DayCareBookshelf:
	jumpstd DifficultBookshelfScript

Text_GrampsLookingForYou:
	text "Gramps was looking"
	line "for you."
	done

DayCareOwnersGrandsonOddEggScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_ODD_EGG
	iftrue .AlreadyHaveOddEgg
	writetext DayCareOwnersGrandsonText_GiveOddEgg
	promptbutton
	closetext
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	special GiveOddEgg
	opentext
	writetext DayCareText_GotOddEgg
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareOwnersGrandsonText_DescribeOddEgg
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
	end

.PartyFull:
	opentext
	writetext DayCareText_PartyFull
	waitbutton
	closetext
	end

.AlreadyHaveOddEgg:
	writetext DayCareOwnersGrandsonText
	waitbutton
	closetext
	end

DayCareOwnersGrandsonText:
	text "Hi! Hope you are"
	line "enjoying my grand-"
	cont "parent's services!"

	para "Also, if grandpa's"
	line "not around, he'd"

	para "be in the hatching"
	line "room out back."
	done

DayCareOwnersGrandsonText_GiveOddEgg:
	text "I'm the DAY-CARE"
	line "owner's grandson."

	para "Do you know about"
	line "EGGS?"

	para "They were raising"
	line "#MON some time"

	para "ago and found an"
	line "EGG!"

	para "How incredible is"
	line "that?"

	para "You got a #DEX"
	line "from PROF.OAK!?!"

	para "You must be an up-"
	line "right trainer!"

	para "Will you please"
	line "take the EGG?"

	para "Then fine, this is"
	line "yours to keep!"
	done

DayCareText_GotOddEgg:
	text "<PLAYER> received"
	line "ODD EGG!"
	done

DayCareOwnersGrandsonText_DescribeOddEgg:
	text "Take good care of"
	line "it!"
	done

DayCareOwnersGrandsonBlockerScript:
	faceplayer
	opentext
	writetext DayCareOwnersGrandsonCantLetYouInTheBack
	waitbutton
	closetext
	end

DayCareOwnersGrandsonCantLetYouInTheBack:
	text "Sorry! I can't let"
	line "you enter back."
	
	para "We've a new hatch-"
	line "ing room there."
	
	para "Only bicycle own-"
	line "ers are allowed."
	
	para "GOLDENROD CITY now"
	line "has bicycle shop."
	
	para "If you get one, I"
	line "will let you pass."
	
	para "Also, if grandpa's"
	line "not around, he'd"

	para "be in the hatching"
	line "room."
	done

DayCareText_PartyFull:
	text "You've no room for"
	line "this."
	done

DayCare_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  5, ROUTE_34, 3
	warp_event  0,  6, ROUTE_34, 4
	warp_event  2,  7, ROUTE_34, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, DayCareBookshelf
	bg_event  1,  1, BGEVENT_READ, DayCareBookshelf

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Inside, EVENT_DAY_CARE_MAN_IN_DAY_CARE
	object_event  5,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DayCareLadyScript, -1
	object_event  2,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, DayCareOwnersGrandsonBlockerScript, EVENT_DAY_CARE_OWNERS_GRANDSON_BLOCKS
	object_event  6,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, DayCareOwnersGrandsonOddEggScript, EVENT_DAY_CARE_OWNERS_GRANDSON_ODD_EGG
