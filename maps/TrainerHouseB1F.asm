	object_const_def
	const TRAINERHOUSEB1F_RECEPTIONIST
	const TRAINERHOUSEB1F_MAXIMA

TrainerHouseB1F_MapScripts:
	def_scene_scripts
	scene_script TrainerHouseB1FNoopScene, SCENE_TRAINERHOUSEB1F_ASK_BATTLE

	def_callbacks

TrainerHouseB1FNoopScene:
	end

TrainerHouseReceptionistScript:
	turnobject PLAYER, UP
	opentext
	writetext TrainerHouseB1FIntroText
	special HealParty
	waitbutton
	closetext
	applymovement PLAYER, Movement_EnterTrainerHouseBattleRoom
	opentext
	writetext TrainerHouseB1FMaximaBeforeText
	waitbutton
	closetext
	winlosstext TrainerHouseB1FMaximaBeatenText, TrainerHouseB1FMaximaWonText
	setlasttalked TRAINERHOUSEB1F_MAXIMA
	loadtrainer MAXIMA, MAXIMA1
   	loadvar VAR_BATTLETYPE, BATTLETYPE_INVERSE
	startbattle
	special HealParty
	reloadmap
	iftrue .End
	opentext
	writetext TrainerHouseB1FMaximaGivesCrystalForWinningText
	promptbutton
	verbosegiveitem CRYSTAL
	closetext
.End:
	applymovement PLAYER, Movement_ExitTrainerHouseBattleRoom
	end

Movement_EnterTrainerHouseBattleRoom:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	turn_head RIGHT
	step_end

Movement_ExitTrainerHouseBattleRoom:
	step UP
	step UP
	step UP
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

Movement_TrainerHouseTurnBack:
	step RIGHT
	turn_head LEFT
	step_end

TrainerHouseB1FIntroText:
	text "Hi and welcome to"
	line "the TRAINING HALL."

	para "Go on through for"
	line "an inverse battle."
	done

TrainerHouseB1FMaximaGivesCrystalForWinningText:
	text "Take this for win-"
	line "ing <PLAY_G>."
	done

TrainerHouseB1FMaximaBeatenText:
	text "Spicy! Splendid!"
	line "Stellar! Superb!"
	done

TrainerHouseB1FMaximaWonText:
	text "Better luck next"
	line "time <PLAY_G>."
	done

TrainerHouseB1FMaximaBeforeText:
	text "Shall we begin"
	line "<PLAY_G>?"
	done

TrainerHouseB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  4, TRAINER_HOUSE_1F, 3

	def_coord_events
	coord_event  7,  3, SCENE_TRAINERHOUSEB1F_ASK_BATTLE, TrainerHouseReceptionistScript

	def_bg_events

	def_object_events
	object_event  7,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6, 11, SPRITE_MAXIMA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
