	object_const_def
	const ROUTE35GOLDENRODGATE_RANDY
	const ROUTE35GOLDENRODGATE_POKEFAN_F
	const ROUTE35GOLDENRODGATE_FISHER
	const ROUTE35GOLDENRODGATE_SCARLET

Route35GoldenrodGate_MapScripts:
	def_scene_scripts
	scene_script Route35GoldenrodGaeNoop1Scene, SCENE_ROUTE35_GOLDENROD_GATE_SCARLET_BATTLE
	scene_script Route35GoldenrodGaeNoop2Scene, SCENE_ROUTE35_GOLDENROD_GATE_NOOP
	
	def_callbacks

Route35GoldenrodGaeNoop1Scene:
	sdefer Route35GoldenrodGateScarletScript
	end

Route35GoldenrodGaeNoop2Scene:
	end

RandyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HP_UP_FROM_RANDY
	iftrue .gothpup
	checkevent EVENT_GAVE_KENYA
	iftrue .questcomplete
	checkevent EVENT_GOT_KENYA
	iftrue .alreadyhavekenya
	writetext Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText
	yesorno
	iffalse .refused
	writetext Route35GoldenrodGateRandyThanksText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .partyfull
	writetext Route35GoldenrodGatePlayerReceivedAMonWithMailText
	playsound SFX_KEY_ITEM
	waitsfx
	givepoke SPEAROW, 10, NO_ITEM, GiftSpearowName, GiftSpearowOTName
	givepokemail GiftSpearowMail
	setevent EVENT_GOT_KENYA
.alreadyhavekenya
	writetext Route35GoldenrodGateRandyWeirdTreeBlockingRoadText
	waitbutton
	closetext
	end

.partyfull
	writetext Route35GoldenrodGateRandyCantCarryAnotherMonText
	waitbutton
	closetext
	end

.refused
	writetext Route35GoldenrodGateRandyOhNeverMindThenText
	waitbutton
	closetext
	end

.questcomplete
	writetext Route35GoldenrodGateRandySomethingForYourTroubleText
	promptbutton
	verbosegiveitem HP_UP
	iffalse .bagfull
	setevent EVENT_GOT_HP_UP_FROM_RANDY
.gothpup
	writetext Route35GoldenrodGateRandyMyPalWasSnoozingRightText
	waitbutton
.bagfull
	closetext
	end

GiftSpearowMail:
	db FLOWER_MAIL
	db   "DARK CAVE leads"
	next "to another road@"

GiftSpearowName:
	db "KENYA@"

GiftSpearowOTName:
	db "RANDY@"

	db 0 ; unused

Route35GoldenrodGatePokefanFScript:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText
	waitbutton
	closetext
	end

.FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText_FoughtSudowoodo
	waitbutton
	closetext
	end

Route35GoldenrodGateFisherScript:
	jumptextfaceplayer Route35GoldenrodGateFisherText

Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText:
	text "Excuse me, kid!"
	line "Can you do a guy"
	cont "a favor?"

	para "Can you take this"
	line "#MON with MAIL"
	cont "to my friend?"

	para "He's on ROUTE 31."
	done

Route35GoldenrodGateRandyThanksText:
	text "You will? Perfect!"
	line "Thanks, kid!"

	para "My pal's a chubby"
	line "guy who snoozes"
	cont "all the time."

	para "You'll recognize"
	line "him right away!"
	done

Route35GoldenrodGatePlayerReceivedAMonWithMailText:
	text "<PLAYER> received a"
	line "#MON with MAIL."
	done

Route35GoldenrodGateRandyWeirdTreeBlockingRoadText:
	text "You can read it,"
	line "but don't lose it!"
	cont "ROUTE 31!"

	para "Oh, yeah. There"
	line "was a weird tree"
	cont "blocking the road."

	para "I wonder if it's"
	line "been cleared?"
	done

Route35GoldenrodGateRandyCantCarryAnotherMonText:
	text "You can't carry"
	line "another #MON…"
	done

Route35GoldenrodGateRandyOhNeverMindThenText:
	text "Oh… Never mind,"
	line "then…"
	done

Route35GoldenrodGateRandySomethingForYourTroubleText:
	text "Thanks, kid! You"
	line "made the delivery"
	cont "for me!"

	para "Here's something"
	line "for your trouble!"
	done

Route35GoldenrodGateRandyMyPalWasSnoozingRightText:
	text "My pal was snooz-"
	line "ing, right? Heh,"
	cont "what'd I say?"
	done

Route35GoldenrodGatePokefanFText:
	text "A strange tree is"
	line "blocking the road."

	para "It wriggles around"
	line "if you talk to it."

	para "I heard it became"
	line "wild when someone"

	para "watered it with a"
	line "SQUIRTBOTTLE."
	done

Route35GoldenrodGatePokefanFText_FoughtSudowoodo:
	text "I like the #MON"
	line "Lullaby they play"
	cont "on the radio."
	done

Route35GoldenrodGateFisherText:
	text "I wonder how many"
	line "kinds of #MON"

	para "there are in the"
	line "world."

	para "Three years ago,"
	line "PROF.OAK said that"

	para "there were 150"
	line "different kinds."
	done

Route35GoldenrodGateScarletScript:
	showemote EMOTE_SHOCK, ROUTE35GOLDENRODGATE_SCARLET, 15
	turnobject ROUTE35GOLDENRODGATE_SCARLET, DOWN
	special FadeOutMusic
	pause 15
	playmusic MUSIC_SCARLET
	opentext
	writetext Route35GoldenrodGateScarletSpotsPlayerText
	waitbutton
	closetext
	applymovement ROUTE35GOLDENRODGATE_SCARLET, Route35GoldenrodGateScarletWalksToPlayer
	turnobject ROUTE35GOLDENRODGATE_SCARLET, DOWN
	opentext
	writetext Route35GoldenrodGateScarletThisGuyNeedsHelpText
	waitbutton
   	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext Route35GoldenrodGateScarletPlayerWinText, Route35GoldenrodGateScarletPlayerLossText
	setlasttalked ROUTE35GOLDENRODGATE_SCARLET
	loadtrainer SCARLET, SCARLET1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Totodile:
	winlosstext Route35GoldenrodGateScarletPlayerWinText, Route35GoldenrodGateScarletPlayerLossText
	setlasttalked ROUTE35GOLDENRODGATE_SCARLET
	loadtrainer SCARLET, SCARLET2
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Chikorita:
	winlosstext Route35GoldenrodGateScarletPlayerWinText, Route35GoldenrodGateScarletPlayerLossText
	setlasttalked ROUTE35GOLDENRODGATE_SCARLET
	loadtrainer SCARLET, SCARLET3
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.AfterVictorious:
	playmusic MUSIC_SCARLET
	opentext
	writetext Route35GoldenrodGateScarlet_YouLostText
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_SCARLET
	opentext
	writetext Route35GoldenrodGateScarlet_YouWonText
	waitbutton
	closetext
.FinishRival:
	applymovement ROUTE35GOLDENRODGATE_SCARLET, Route35GoldenrodGateScarletLeaves
	playsound SFX_ENTER_DOOR
	special HealParty
	playmapmusic
	setscene SCENE_ROUTE35_GOLDENROD_GATE_NOOP
	disappear ROUTE35GOLDENRODGATE_SCARLET
	end

Route35GoldenrodGateScarletWalksToPlayer:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step_end

Route35GoldenrodGateScarletLeaves:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

Route35GoldenrodGateScarletSpotsPlayerText:
	text "SCARLET: <PLAY_G>!"
	line "What a surprise!"
	done

Route35GoldenrodGateScarletThisGuyNeedsHelpText:
	text "I've not seen you"
	line "in a bit. How are"
	cont "you?"
	
	para "I'm fine. I was"
	line "making my way"
	
	para "through here but"
	line "this officer asked"
	
	para "for help. Sadly, I"
	line "have a full party."
	
	para "If you're up for"
	line "it <PLAY_G>, you"
	cont "could help."
	
	para "I'm in a bit of"
	line "a rush to ECRUTEAK"
	cont "CITY."
	
	para "There's something"
	line "I'm interested in"
	cont "there…"
	
	para "But not in such a"
	line "rush to not have"
	
	para "a battle with my"
	line "childhood friend!"
	
	para "Let me show you"
	line "our progress!"
	done

Route35GoldenrodGateScarletPlayerWinText:
	text "I trained so hard"
	line "yet I'm up short…"
	done

Route35GoldenrodGateScarletPlayerLossText:
	text "Yay! My team came"
	line "through for me!"
	done

Route35GoldenrodGateScarlet_YouWonText:
	text "SCARKET: Oh my!"
	line "You're on fire!"
	
	para "As expected. We"
	line "are both pushing"

	para "each other to our"
	line "limits."

	para "I'm a bit cross"
	line "about the outcome"

	para "but I'll bounce"
	line "back!"
	
	para "Anyway, ECRUTEAK"
	line "CITY is calling!"
	
	para "Bye <PLAY_G>!"
	done

Route35GoldenrodGateScarlet_YouLostText:
	text "SCARLET: Good game"
	line "<PLAY_G>!"
	
	para "I saw your grit"
	line "but our teamwork"
	cont "was on point."
	
	para "Cheer up! There's"
	line "still a next time."
	
	para "Let's do our best!"
	
	para "Anyway, ECRUTEAK"
	line "CITY is calling!"
	
	para "Bye <PLAY_G>!"
	done

Route35GoldenrodGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_35, 1
	warp_event  5,  0, ROUTE_35, 2
	warp_event  4,  7, GOLDENROD_CITY, 12
	warp_event  5,  7, GOLDENROD_CITY, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RandyScript, -1
	object_event  6,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGatePokefanFScript, -1
	object_event  3,  2, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGateFisherScript, -1
	object_event  2,  4, SPRITE_SCARLET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGateScarletScript, EVENT_ROUTE_35_GOLDENROD_GATE_SCARLET
