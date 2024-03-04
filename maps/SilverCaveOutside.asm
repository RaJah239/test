	object_const_def
    const MTSILVER_RIVAL

SilverCaveOutside_MapScripts:
	def_scene_scripts
	scene_script MountSilverNoop1Scene, SCENE_MTSILVER_RIVAL_BATTLE
	scene_script MountSilverNoop2Scene, SCENE_MTSILVER_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SilverCaveOutsideFlypointCallback

MountSilverNoop1Scene:
	end

MountSilverNoop2Scene:
	end

SilverCaveOutsideFlypointCallback:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	endcallback

MtSilverPokecenterSign:
	jumpstd PokecenterSignScript

MtSilverSign:
	jumptext MtSilverSignText

SilverCaveOutsideHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_SILVER_CAVE_OUTSIDE_HIDDEN_FULL_RESTORE

MtSilverSignText:
	text "MT.SILVER"
	done

MtSilverRival:
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	moveobject MTSILVER_RIVAL, 18, 16
	appear MTSILVER_RIVAL
	special FadeOutMusic
	pause 15
	applymovement MTSILVER_RIVAL, MtSilverRivalBattleApproachMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext MtSilverRivalBeforeText
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .GotTotodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .GotChikorita
	winlosstext MountSilverRivalTextWin, MountSilverRivalTextLoss
	setlasttalked MTSILVER_RIVAL
	loadtrainer RIVAL2, RIVAL2_2_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotTotodile:
	winlosstext MountSilverRivalTextWin, MountSilverRivalTextLoss
	setlasttalked MTSILVER_RIVAL
	loadtrainer RIVAL2, RIVAL2_2_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotChikorita:
	winlosstext MountSilverRivalTextWin, MountSilverRivalTextLoss
	setlasttalked MTSILVER_RIVAL
	loadtrainer RIVAL2, RIVAL2_2_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext MtSilverRivalTextAfter
	waitbutton
	closetext
	applymovement MTSILVER_RIVAL, MtSilverRivalBattleExitMovement
	disappear MTSILVER_RIVAL
	setscene SCENE_MTSILVER_NOOP
	setevent EVENT_BEAT_RIVAL_IN_MT_SILVER
	playmapmusic
	end

MtSilverRivalBattleApproachMovement:
	step UP
	step UP
	step UP
	step_end

MtSilverRivalBattleExitMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

MtSilverRivalBeforeText:
	text "<……> <……> <……>"

	para "It's been a while,"
	line "<PLAYER>."

	para "…Since I lost to"
	line "you, I thought"

	para "about what I was"
	line "lacking with my"
	cont "#MON…"

	para "And we came up"
	line "with an answer."

	para "<PLAYER>, now we'll"
	line "show you!"
	done

MountSilverRivalTextWin:
	text "I thought I raised"
	line "my #MON to be"

	para "the best they"
	line "could be…"

	para "…But it still "
	line "wasn't enough…"
	done

MtSilverRivalTextAfter:
	text "<……> <……> <……>"

	para "…You won, fair"
	line "and square."

	para "I admit it. But"
	line "this isn't the"
	cont "end."

	para "I'm going to be"
	line "the greatest #-"
	cont "MON trainer ever."

	para "Because these guys"
	line "are behind me."

	para "…Listen, <PLAYER>."

	para "One of these days"
	line "I'm going to prove"

	para "how good I am by"
	line "beating you."
	done

MountSilverRivalTextLoss:
	text "I've repaid my"
	line "debt to you."

	para "With my #MON,"
	line "I'm going to beat"

	para "the CHAMPION and"
	line "become the world's"
	cont "greatest trainer."
	done
	
	SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

    def_warp_events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1
	
	def_coord_events
	coord_event 18, 12, SCENE_MTSILVER_RIVAL_BATTLE, MtSilverRival

	def_bg_events
	bg_event 24, 19, BGEVENT_READ, MtSilverPokecenterSign
	bg_event 17, 13, BGEVENT_READ, MtSilverSign
	bg_event  9, 25, BGEVENT_ITEM, SilverCaveOutsideHiddenFullRestore

	def_object_events
	object_event -3, 19, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_MT_SILVER
