	object_const_def
	const OLIVINELIGHTHOUSE3F_SAILOR
	const OLIVINELIGHTHOUSE3F_GENTLEMAN
	const OLIVINELIGHTHOUSE3F_YOUNGSTER
	const OLIVINELIGHTHOUSE3F_POKE_BALL
	const OLIVINELIGHTHOUSE3F_CHANSEY
	const OLIVINELIGHTHOUSE3F_SCARLET
	const OLIVINELIGHTHOUSE3F_SCARLET2

OlivineLighthouse3F_MapScripts:
	def_scene_scripts
	scene_script OlivineLighthouse3FNoop1Scene, SCENE_OLIVINE_LIGHT_HOUSE_3F_SCARLET
	scene_script OlivineLighthouse3FNoop2Scene, SCENE_OLIVINE_LIGHT_HOUSE_NOOP

	def_callbacks

OlivineLighthouse3FNoop1Scene:
	end

OlivineLighthouse3FNoop2Scene:
	end

TrainerBirdKeeperTheo:
	trainer BIRD_KEEPER, THEO, EVENT_BEAT_BIRD_KEEPER_THEO, BirdKeeperTheoSeenText, BirdKeeperTheoBeatenText, 0, .Script

.Script:
	opentext
	writetext BirdKeeperTheoAfterBattleText
	waitbutton
	closetext
	end

TrainerGentlemanPreston:
	trainer GENTLEMAN, PRESTON, EVENT_BEAT_GENTLEMAN_PRESTON, GentlemanPrestonSeenText, GentlemanPrestonBeatenText, 0, .Script

.Script:
	opentext
	writetext GentlemanPrestonAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorTerrell:
	trainer SAILOR, TERRELL, EVENT_BEAT_SAILOR_TERRELL, SailorTerrellSeenText, SailorTerrellBeatenText, 0, .Script

.Script:
	opentext
	writetext SailorTerrellAfterBattleText
	waitbutton
	closetext
	end

OlivineLighthouse3FEther:
	itemball ETHER

BirdKeeperTheoSeenText:
	text "Why are you here?"
	line "Are you just going"

	para "to gawk? I suggest"
	line "that you leave!"
	done

BirdKeeperTheoBeatenText:
	text "You really are"
	line "concerned…"
	done

BirdKeeperTheoAfterBattleText:
	text "How the heck do"
	line "you go up?"

	para "I want to visit"
	line "the sick #MON,"

	para "but I can't get up"
	line "there…"
	done

SailorTerrellSeenText:
	text "Sailors are both"
	line "kind and strong."
	cont "How about you?"
	done

SailorTerrellBeatenText:
	text "You are both kind"
	line "and strong…"
	done

SailorTerrellAfterBattleText:
	text "Every time I come"
	line "back to OLIVINE, I"
	cont "visit the GYM."

	para "The GYM LEADER's"
	line "#MON type has"

	para "changed without me"
	line "noticing."
	done

GentlemanPrestonSeenText:
	text "I travel the world"
	line "to train my #-"
	cont "MON. I wish to"
	cont "battle with you."
	done

GentlemanPrestonBeatenText:
	text "…sigh… I must"
	line "train some more…"
	done

GentlemanPrestonAfterBattleText:
	text "JASMINE used to"
	line "use rock #MON"
	cont "like ONIX."
	done

OlivineLightHouseChanseyScript:
	jumpstd ChanseyHealsOWScript

OlivineLighthouse3FScarletScript1:
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, DOWN
	special FadeOutMusic
	pause 15
	appear OLIVINELIGHTHOUSE3F_SCARLET
	playmusic MUSIC_SCARLET
	applymovement OLIVINELIGHTHOUSE3F_SCARLET, OlivineLighthouse3FScarletApproaches
	turnobject OLIVINELIGHTHOUSE3F_SCARLET, UP
	opentext
	writetext ImHereForTrainingText
	waitbutton
   	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext OlivineLighthouse3FScarletWinText, OlivineLighthouse3FScarletLossText
	setlasttalked OLIVINELIGHTHOUSE3F_SCARLET
	loadtrainer SCARLET, SCARLET1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Totodile:
	winlosstext OlivineLighthouse3FScarletWinText, OlivineLighthouse3FScarletLossText
	setlasttalked OLIVINELIGHTHOUSE3F_SCARLET
	loadtrainer SCARLET, SCARLET2
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Chikorita:
	winlosstext OlivineLighthouse3FScarletWinText, OlivineLighthouse3FScarletLossText
	setlasttalked OLIVINELIGHTHOUSE3F_SCARLET
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
	writetext IJustHeardOfTheSickPokemonText
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_SCARLET
	opentext
	writetext IJustHeardOfTheSickPokemonText
	waitbutton
	closetext
.FinishRival:
	applymovement OLIVINELIGHTHOUSE3F_SCARLET, OlivineLighthouse3FAScarletExits
	playsound SFX_ENTER_DOOR
	special HealParty
	playmapmusic
	setscene SCENE_ROUTE35_GOLDENROD_GATE_NOOP
	disappear OLIVINELIGHTHOUSE3F_SCARLET
	end

OlivineLighthouse3FScarletScript2:
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, DOWN
	special FadeOutMusic
	pause 15
	appear OLIVINELIGHTHOUSE3F_SCARLET2
	playmusic MUSIC_SCARLET
	applymovement OLIVINELIGHTHOUSE3F_SCARLET2, OlivineLighthouse3FScarletApproaches
	turnobject OLIVINELIGHTHOUSE3F_SCARLET2, UP
	opentext
	writetext ImHereForTrainingText
	waitbutton
   	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext OlivineLighthouse3FScarletWinText, OlivineLighthouse3FScarletLossText
	setlasttalked OLIVINELIGHTHOUSE3F_SCARLET2
	loadtrainer SCARLET, SCARLET1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Totodile:
	winlosstext OlivineLighthouse3FScarletWinText, OlivineLighthouse3FScarletLossText
	setlasttalked OLIVINELIGHTHOUSE3F_SCARLET2
	loadtrainer SCARLET, SCARLET2
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Chikorita:
	winlosstext OlivineLighthouse3FScarletWinText, OlivineLighthouse3FScarletLossText
	setlasttalked OLIVINELIGHTHOUSE3F_SCARLET2
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
	writetext IJustHeardOfTheSickPokemonText
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_SCARLET
	opentext
	writetext IJustHeardOfTheSickPokemonText
	waitbutton
	closetext
.FinishRival:
	applymovement OLIVINELIGHTHOUSE3F_SCARLET2, OlivineLighthouse3FAScarletExits2
	playsound SFX_ENTER_DOOR
	special HealParty
	playmapmusic
	setscene SCENE_ROUTE35_GOLDENROD_GATE_NOOP
	disappear OLIVINELIGHTHOUSE3F_SCARLET2
	end

OlivineLighthouse3FScarletApproaches:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

OlivineLighthouse3FAScarletExits:
	step RIGHT
	step UP
	step UP
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step_end

OlivineLighthouse3FAScarletExits2:
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step_end


ImHereForTrainingText:
	text "SCARLET: This here"
	line "LIGHTHOUSE is said"
	
	para "to be a great spot"
	line "for training and"
	
	para "of course I'd find"
	line "you here <PLAY_G>!"
	
	para "Let's not mince"
	line "words! Let's do it!"
	done

OlivineLighthouse3FScarletWinText:
	text "Your training is"
	line "indeed going well!"
	done

OlivineLighthouse3FScarletLossText:
	text "Awesome! My train-"
	line "ing is going well!"
	done

IJustHeardOfTheSickPokemonText:
	text "SCARLET: What did"
	line "you say?"
	
	para "There's a sick"
	line "#MON atop?"
	
	para "You should've said"
	line "something before!"
	
	para "No Wait, I'm sorry"
	line "I jumped you with-"

	para "out asking how you"
	line "were…"
	
	para "…"
	
	para "Again, I'm sorry!"
		
	para "Enough standing"
	line "around. I must go"
	
	para "help nurse it back"
	line "to full health!"
	
	para "Come quickly too!"
	done

OlivineLighthouse3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  3, OLIVINE_LIGHTHOUSE_4F, 1
	warp_event  5,  3, OLIVINE_LIGHTHOUSE_2F, 2
	warp_event  9,  5, OLIVINE_LIGHTHOUSE_4F, 4
	warp_event 16, 11, OLIVINE_LIGHTHOUSE_2F, 5
	warp_event 17, 11, OLIVINE_LIGHTHOUSE_2F, 6
	warp_event 16,  9, OLIVINE_LIGHTHOUSE_4F, 5
	warp_event 17,  9, OLIVINE_LIGHTHOUSE_4F, 6
	warp_event  8,  3, OLIVINE_LIGHTHOUSE_4F, 7
	warp_event  9,  3, OLIVINE_LIGHTHOUSE_4F, 8

	def_coord_events
	coord_event 14, 11, SCENE_OLIVINE_LIGHT_HOUSE_3F_SCARLET, OlivineLighthouse3FScarletScript1
	coord_event 15, 11, SCENE_OLIVINE_LIGHT_HOUSE_3F_SCARLET, OlivineLighthouse3FScarletScript2

	def_bg_events

	def_object_events
	object_event  9,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSailorTerrell, -1
	object_event 13,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerGentlemanPreston, -1
	object_event  3,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperTheo, -1
	object_event  8,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OlivineLighthouse3FEther, EVENT_OLIVINE_LIGHTHOUSE_3F_ETHER
	object_event 13, 13, SPRITE_CHANSEY_OW, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineLightHouseChanseyScript, -1
	object_event  9, 14, SPRITE_SCARLET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_OLIVINE_LIGHT_HOUSE_3F_SCARLET
	object_event 10, 14, SPRITE_SCARLET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_OLIVINE_LIGHT_HOUSE_3F_SCARLET
