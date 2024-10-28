	object_const_def
	const PLAYERSNEIGHBORSHOUSE_SCARLET
	const PLAYERSNEIGHBORSHOUSE_POKEFAN_F

PlayersNeighborsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ScarletHomeScript:
	faceplayer
	opentext
	checkevent EVENT_SCARLET_IS_DEFEATED_IN_NEW_BARK_TOWN
	iftrue .GoodLuckAtTheLeague
	checkevent EVENT_BEAT_CLAIR
	iftrue .IJustCameHome
	writetext ScarletDoingErrandsText
	waitbutton
	closetext
	turnobject PLAYERSNEIGHBORSHOUSE_SCARLET, RIGHT
	end

.GoodLuckAtTheLeague:
	writetext GoodLuckAtTheLeagueText
	waitbutton
	closetext
	turnobject PLAYERSNEIGHBORSHOUSE_SCARLET, RIGHT
	end

.IJustCameHome:
	writetext IJustCameHomeText
	waitbutton
	closetext
	turnobject PLAYERSNEIGHBORSHOUSE_SCARLET, RIGHT
	end

PlayersNeighborScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .ScarletJustCameHome
	writetext PlayersNeighborText
	waitbutton
	closetext
	turnobject PLAYERSNEIGHBORSHOUSE_POKEFAN_F, LEFT
	end

.ScarletJustCameHome:
	writetext ScarletJustCameHomeText
	waitbutton
	closetext
	turnobject PLAYERSNEIGHBORSHOUSE_POKEFAN_F, LEFT
	end

IJustCameHomeText:
	text "SCARLET: Hi, I"
	line "just came home."
	
	para "Say hello to your"
	line "mom for me."
	done 

GoodLuckAtTheLeagueText:
	text "Good luck at the"
	line "#MON LEAGUE!"
	done

ScarletJustCameHomeText:
	text "SCARLET just came"
	line "home. She seems so"
	
	para "much more mature"
	line "and so do you!"
	done

PlayersNeighborsHouseBookshelfScript:
	jumpstd MagazineBookshelfScript

PlayersNeighborsHouseRadioScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftrue .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext PlayerNeighborRadioText1
	pause 45
	writetext PlayerNeighborRadioText2
	pause 45
	writetext PlayerNeighborRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext PlayerNeighborRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end
.NormalRadio:
	jumpstd Radio1Script
.AbbreviatedRadio:
	opentext
	writetext PlayerNeighborRadioText4
	pause 45
	closetext
	end

ScarletDoingErrandsText:
	text "SCARLET: I'm doing"
	line "some errands."
	done

PlayersNeighborText:
	text "SCARLET is out in"
	line "the world and I"

	para "support her in all"
	line "she aspires to do."

	para "Her #MON looks"
	line "strong and is very"
	cont "protective of her!"
	
	para "She'll be fine…"
	
	para "I will miss her"
	line "though…"
	done

PlayerNeighborRadioText1:
	text "PROF.OAK'S #MON"
	line "TALK! Please tune"
	cont "in next time!"
	done

PlayerNeighborRadioText2:
	text "#MON CHANNEL!"
	done

PlayerNeighborRadioText3:
	text "This is DJ MARY,"
	line "your co-host!"
	done

PlayerNeighborRadioText4:
	text "#MON!"
	line "#MON CHANNEL…"
	done

PlayersNeighborsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, NEW_BARK_TOWN, 3
	warp_event  3,  7, NEW_BARK_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PlayersNeighborsHouseBookshelfScript
	bg_event  1,  1, BGEVENT_READ, PlayersNeighborsHouseBookshelfScript
	bg_event  7,  1, BGEVENT_READ, PlayersNeighborsHouseRadioScript

	def_object_events
	object_event  2,  4, SPRITE_SCARLET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ScarletHomeScript, EVENT_PLAYERS_NEIGHBOR_SCARLET_HOME
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PlayersNeighborScript, EVENT_PLAYERS_NEIGHBORS_HOUSE_NEIGHBOR
