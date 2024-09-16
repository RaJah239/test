	object_const_def
	const SILVERCAVEPOKECENTER1F_NURSE
	const SILVERCAVEPOKECENTER1F_MONEYCOLLECTOR_M

SilverCavePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SilverCavePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

SilverCavePokecenter1FMoneyCollectorMScript:
	faceplayer
	opentext
	checkevent SILVERCAVEPOKECENTER1F_MONEYCOLLECTORM
	iftrue .GiveMeAllYourMoney
	writetext MoneyCollectorIntroText
	setevent SILVERCAVEPOKECENTER1F_MONEYCOLLECTORM
	waitbutton
.GiveMeAllYourMoney
	writetext UpForAGoodDealText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, 999999
	ifequal HAVE_LESS, .MoneyNotAtMax
	giveitem RARE_CANDY_XC
	giveitem RARE_CANDY, 10
	giveitem HP_UP, 63
	giveitem PROTEIN, 63
	giveitem IRON, 63
	giveitem CALCIUM, 63
	giveitem ZINC, 63
	giveitem CARBOS, 63
	iffalse .NoRoom
	ifequal TRUE, .FinishTransaction
	closetext
	end

.NoRoom:
	writetext MoneyCollectorMNoRoomText
	waitbutton
	closetext
	end

.FinishTransaction:
	takemoney YOUR_MONEY, 999999
	waitsfx
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	writetext ThanksFortheMoneyText
	waitbutton
	closetext
	end 

.Refused:
	writetext DropByAnyTimeText
	waitbutton
	closetext
	end

.MoneyNotAtMax:
	writetext YouNeedToMaxOutYourMoneyText
	waitbutton
	closetext
	end

MoneyCollectorIntroText:
	text "Hello. I'm VICTOR."

	para "<PLAY_G> right?"

	para "Nice to meet you!"

	para "You've been making"
	line "the rounds every-"
	cont "where!"

	para "Your reputation is"
	line "prestigious!"

	para "Making it to this"
	line "point and training"

	para "a new #MON can"
	line "be quite tedious…"

	para "I can help -- but"
	line "for a steep fee!"

	para "For a grand total"
	line "of ¥999,999, you'll"

	para "receive a complete"
	line "TRAINING KIT!"

	para "It consists of 8"
	line "different items,"

	para "when all used on a"
	line "single #MON has"

	para "it reach it's max-"
	line "imum potential!"
	
	para "The items are:"

	para "1 x XC CANDY"
	line "10x RARE CANDY"

	para "63x HP UP"
	line "63x PROTEIN"

	para "63x IRON"
	line "63x CALCIUM"

	para "63x ZINC and"
	line "63x CARBOS."

	para "So, you need to"
	line "have space for"
	cont "them all."
	done

UpForAGoodDealText:
	text "VICTOR: Want one"
	line "TRAINING KIT for"
	cont "¥999,999 <PLAY_G>?"
	done

MoneyCollectorMNoRoomText:
	text "You don't seem to"
	line "enough room."

	para "Recall, these are"
	line "the items you need"
	cont "to have space for:"

	para "1 x XC CANDY"
	line "10x RARE CANDY"

	para "63x HP UP"
	line "63x PROTEIN"

	para "63x IRON"
	line "63x CALCIUM"

	para "63x ZINC and"
	line "63x CARBOS."
	done

DropByAnyTimeText:
	text "VICTOR: Drop by"
	line "anytime."
	done

ThanksFortheMoneyText:
	text "I know you'll make"
	line "make the most of"
	cont "these items."
	
	para "Drop by anytime!"
	done

YouNeedToMaxOutYourMoneyText:
	text "You're a bit short"
	line "on money…"

	para "My sister, VIOLET,"
	line "is at the INDIGO"
	cont "PLATEAU."

	para "She collects GAME"
	line "CORNER coins."

	para "She'll trade you"
	line "coins for a number"
	cont "of NUGGETS which"
	cont "can be sold off."

	para "Until next time…"
	line "All the best!"
	done

SilverCavePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SILVER_CAVE_OUTSIDE, 1
	warp_event  4,  7, SILVER_CAVE_OUTSIDE, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCavePokecenter1FNurseScript, -1
	object_event  1,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCavePokecenter1FMoneyCollectorMScript, -1
