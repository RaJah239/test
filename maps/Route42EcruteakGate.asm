	object_const_def
	const ROUTE42ECRUTEAKGATE_OFFICER
	const ROUTE42ECRUTEAKGATE_OFFICER_BLOCKER
	const ROUTE42ECRUTEAKGATE_SCARLET

Route42EcruteakGate_MapScripts:
	def_scene_scripts
	scene_script Route42EcruteakGateScene1, SCENE_ROUTE42ECRUTEAKGATE_OFFICER_BLOCKER
	scene_script Route42EcruteakGateFNoop1, SCENE_ROUTE42ECRUTEAKGATE_SCARLET_BATTLE
	scene_script Route42EcruteakGateFNoop2, SCENE_ROUTE42ECRUTEAKGATE_NOOP

	def_callbacks

Route42EcruteakGateScene1:
	end

Route42EcruteakGateFNoop1:
	end

Route42EcruteakGateFNoop2:
	end

Route42EcruteakGateOfficerSceneScript:
	showemote EMOTE_SHOCK, ROUTE42ECRUTEAKGATE_OFFICER_BLOCKER, 15
	applymovement ROUTE42ECRUTEAKGATE_OFFICER_BLOCKER, Route42EcruteakGateOfficerWalksInfrontPlayer
	turnobject ROUTE42ECRUTEAKGATE_OFFICER_BLOCKER, LEFT
	opentext
	writetext MtMortarLandslideText
	waitbutton
	closetext
	applymovement PLAYER, PlayerForecedAStepLeft
	applymovement ROUTE42ECRUTEAKGATE_OFFICER_BLOCKER, Route42EcruteakGateOfficerWalksBackInSpot
	turnobject ROUTE42ECRUTEAKGATE_OFFICER_BLOCKER, DOWN
	end

Route42EcruteakGateOfficerWalksInfrontPlayer:
	step RIGHT
	step DOWN
	step_end

PlayerForecedAStepLeft:
	step LEFT
	step_end

Route42EcruteakGateOfficerWalksBackInSpot:
	step UP
	step LEFT
	step_end

Route42EcruteakGateOfficerScript:
	jumptextfaceplayer Route42EcruteakGateOfficerText

Route42EcruteakGateOfficerBlockerScript:
	jumptextfaceplayer MtMortarLandslideText

MtMortarLandslideText:
	text "Sorry, you can't"
	line "come this way."

	para "There's been an"
	line "avalanche on"
	cont "MT.MORTAR."

	para "The rubble's still"
	line "being cleared."
	done

Route42EcruteakGateOfficerText:
	text "MT.MORTAR is like"
	line "a maze inside."

	para "Be careful. Don't"
	line "get lost in there."
	done

Route42EcruteakGateScarletBattleSceneScript1:
	showemote EMOTE_SHOCK, ROUTE42ECRUTEAKGATE_SCARLET, 15
	turnobject ROUTE42ECRUTEAKGATE_SCARLET, LEFT
	special FadeOutMusic
	pause 15
	playmusic MUSIC_SCARLET
	applymovement ROUTE42ECRUTEAKGATE_SCARLET, Route42EcruteakGateScarletWalksToPlayer
	opentext
	writetext Route42EcruteakGateScarletSpotsPlayerText
	waitbutton
   	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext Route42EcruteakGateScarletPlayerWinText, Route42EcruteakGateScarletPlayerLossText
	setlasttalked ROUTE42ECRUTEAKGATE_SCARLET
	loadtrainer SCARLET, SCARLET1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Totodile:
	winlosstext Route42EcruteakGateScarletPlayerWinText, Route42EcruteakGateScarletPlayerLossText
	setlasttalked ROUTE42ECRUTEAKGATE_SCARLET
	loadtrainer SCARLET, SCARLET2
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Chikorita:
	winlosstext Route42EcruteakGateScarletPlayerWinText, Route42EcruteakGateScarletPlayerLossText
	setlasttalked ROUTE42ECRUTEAKGATE_SCARLET
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
	writetext Route42EcruteakGateScarlet_AfterBattleText
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_SCARLET
	opentext
	writetext Route42EcruteakGateScarlet_AfterBattleText
	waitbutton
	closetext
.FinishRival:
	applymovement ROUTE42ECRUTEAKGATE_SCARLET, Route42EcruteakGateScarletLeaves
	playsound SFX_ENTER_DOOR
	special HealParty
	playmapmusic
	setscene SCENE_ROUTE42ECRUTEAKGATE_NOOP
	disappear ROUTE42ECRUTEAKGATE_SCARLET
	end

Route42EcruteakGateScarletBattleSceneScript2:
	showemote EMOTE_SHOCK, ROUTE42ECRUTEAKGATE_SCARLET, 15
	turnobject ROUTE42ECRUTEAKGATE_SCARLET, LEFT
	special FadeOutMusic
	pause 15
	playmusic MUSIC_SCARLET
	applymovement ROUTE42ECRUTEAKGATE_SCARLET, Route42EcruteakGateScarletWalksToPlayer2
	turnobject ROUTE42ECRUTEAKGATE_SCARLET, LEFT
	opentext
	writetext Route42EcruteakGateScarletSpotsPlayerText
	waitbutton
   	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext Route42EcruteakGateScarletPlayerWinText, Route42EcruteakGateScarletPlayerLossText
	setlasttalked ROUTE42ECRUTEAKGATE_SCARLET
	loadtrainer SCARLET, SCARLET1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Totodile:
	winlosstext Route42EcruteakGateScarletPlayerWinText, Route42EcruteakGateScarletPlayerLossText
	setlasttalked ROUTE42ECRUTEAKGATE_SCARLET
	loadtrainer SCARLET, SCARLET2
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Chikorita:
	winlosstext Route42EcruteakGateScarletPlayerWinText, Route42EcruteakGateScarletPlayerLossText
	setlasttalked ROUTE42ECRUTEAKGATE_SCARLET
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
	writetext Route42EcruteakGateScarlet_AfterBattleText
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_SCARLET
	opentext
	writetext Route42EcruteakGateScarlet_AfterBattleText
	waitbutton
	closetext
.FinishRival:
	applymovement ROUTE42ECRUTEAKGATE_SCARLET, Route42EcruteakGateScarletLeaves
	playsound SFX_ENTER_DOOR
	special HealParty
	playmapmusic
	setscene SCENE_ROUTE42ECRUTEAKGATE_NOOP
	disappear ROUTE42ECRUTEAKGATE_SCARLET
	end

Route42EcruteakGateScarletWalksToPlayer:
	step LEFT
	step LEFT
	step LEFT
	step_end

Route42EcruteakGateScarletWalksToPlayer2:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end
Route42EcruteakGateScarletLeaves:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end


Route42EcruteakGateScarletSpotsPlayerText:
	text "SCARLET: I was"
	line "speaking to the"
	cont "officer there."
	
	para "Great news!"
	
	para "He told me that"
	line "the avalanche has"
	cont "been cleared."
	
	para "We can traverse"
	line "MT.MORTAR to get"
	cont "to MAHOGANY TOWN."
	
	para "That cave might be"
	line "dangerous. Let me"
	
	para "check if either of"
	line "us is capable to"
	
	para "to make it through"
	line "with a battle!"
	
	para "Get your game on"
	line "<PLAY_G>!"
	done

Route42EcruteakGateScarletPlayerWinText:
	text "You're definitely"
	line "able!"
	done

Route42EcruteakGateScarletPlayerLossText:
	text "Yup! It seems like"
	line "I'm strong enough!"
	done

Route42EcruteakGateScarlet_AfterBattleText:
	text "SCARLET: It was a"
	line "close match."
	
	para "I think we'll be"
	line "fine <PLAY_G>,"
	
	para "since we both got"
	line "past MORTY."
	
	para "By the way, didn't"
	line "you think ECRUTEAK"
	
	para "CITY felt mystical"
	line "like something"
	
	para "ancient and power-"
	line "ful lay deep here?"
	
	para "It's only a pass-"
	line "ing thought…"
	
	para "I love this city!"

	para "I'll surely revist"
	line "when I can."
	
	para "It's time to keep"
	line "moving forward!"
	
	para "Later <PLAY_G>!"
	done

Route42EcruteakGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ECRUTEAK_CITY, 1
	warp_event  0,  5, ECRUTEAK_CITY, 2
	warp_event  9,  4, ROUTE_42, 1
	warp_event  9,  5, ROUTE_42, 2

	def_coord_events
	coord_event  5,  5, SCENE_ROUTE42ECRUTEAKGATE_OFFICER_BLOCKER, Route42EcruteakGateOfficerSceneScript
	coord_event  1,  4, SCENE_ROUTE42ECRUTEAKGATE_SCARLET_BATTLE, Route42EcruteakGateScarletBattleSceneScript1
	coord_event  1,  5, SCENE_ROUTE42ECRUTEAKGATE_SCARLET_BATTLE, Route42EcruteakGateScarletBattleSceneScript2

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route42EcruteakGateOfficerScript, EVENT_ROUTE_42_ECRUTEAKGATE_OFFICER
	object_event  5,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route42EcruteakGateOfficerBlockerScript, EVENT_ROUTE_42_ECRUTEAKGATE_OFFICER_BLOCKER
	object_event  5,  4, SPRITE_SCARLET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_42_ECRUTEAK_GATE_SCARLET