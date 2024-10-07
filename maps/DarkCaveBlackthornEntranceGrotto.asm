    object_const_def
    const DARKCAVEBLACKTHORNENTRANCEGROTTO_WOBBUFFET
    const DARKCAVEBLACKTHORNENTRANCEGROTTO_RHYDON
    const DARKCAVEBLACKTHORNENTRANCEGROTTO_KINGLER
    const DARKCAVEBLACKTHORNENTRANCEGROTTO_DONPHAN
    const DARKCAVEBLACKTHORNENTRANCEGROTTO_SUDOWOODO

DarkCaveBlackthornEntranceGrotto_MapScripts:
    def_scene_scripts

    def_callbacks
	callback MAPCALLBACK_OBJECTS, DarkCaveBlackthornEntranceGrottoPokemonOW
 
DarkCaveBlackthornEntranceGrottoPokemonOW:
    checkevent EVENT_INITIALIZED_EVENTS
    iffalse .NoAppear
    random 20 ; random 5 - this makes it always have a Pokemon.
    ifequal 0, .AppearWobbuffet
    ifequal 1, .AppearRhydon
    ifequal 2, .AppearKingler
    ifequal 3, .AppearDonphan
    ifequal 4, .AppearSudowoodo
.NoAppear:
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_WOBBUFFET
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_RHYDON
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_KINGLER
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_DONPHAN
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_SUDOWOODO
    endcallback

.AppearWobbuffet:
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_RHYDON
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_KINGLER
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_DONPHAN
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_SUDOWOODO
    appear DARKCAVEBLACKTHORNENTRANCEGROTTO_WOBBUFFET
    endcallback

.AppearRhydon:
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_WOBBUFFET
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_KINGLER
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_DONPHAN
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_SUDOWOODO
    appear DARKCAVEBLACKTHORNENTRANCEGROTTO_RHYDON
    endcallback

.AppearKingler:
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_WOBBUFFET
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_DONPHAN
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_SUDOWOODO
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_RHYDON
    appear DARKCAVEBLACKTHORNENTRANCEGROTTO_KINGLER
    endcallback

.AppearDonphan:
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_WOBBUFFET
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_SUDOWOODO
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_RHYDON
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_KINGLER
    appear DARKCAVEBLACKTHORNENTRANCEGROTTO_DONPHAN
    endcallback

.AppearSudowoodo:
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_WOBBUFFET
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_DONPHAN
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_RHYDON
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_KINGLER
    appear DARKCAVEBLACKTHORNENTRANCEGROTTO_SUDOWOODO
    endcallback

DarkCaveBlackthornEntranceGrottoWobbuffetScript:
    faceplayer
    cry WOBBUFFET
    loadwildmon WOBBUFFET, 50
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_WOBBUFFET
    reloadmapafterbattle
    end

DarkCaveBlackthornEntranceGrottoRhydonScript:
    faceplayer
    cry RHYDON
    loadwildmon RHYDON, 50
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_RHYDON
    reloadmapafterbattle
    end

DarkCaveBlackthornEntranceGrottoKinglerScript:
    faceplayer
    cry KINGLER
    loadwildmon KINGLER, 50
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_KINGLER
    reloadmapafterbattle
    end

DarkCaveBlackthornEntranceGrottoDonphanScript:
    faceplayer
    cry DONPHAN
    loadwildmon DONPHAN, 50
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_DONPHAN
    reloadmapafterbattle
    end

DarkCaveBlackthornEntranceGrottoSudowoodoScript:
    faceplayer
    cry SUDOWOODO
    loadwildmon SUDOWOODO, 50
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear DARKCAVEBLACKTHORNENTRANCEGROTTO_SUDOWOODO
    reloadmapafterbattle
    end

DarkCaveBlackthornEntranceGrottoSign:
	jumptext  DarkCaveBlackthornEntranceGrottoSignText

DarkCaveBlackthornEntranceGrottoSignText:
	text "This GROTTO get"
	line "visited by:"

	para "SUDOWOODO, RHYDON,"
	line "KINGLER, DONPHAN"
	cont "and WOBBUFFET."
	done

DarkCaveBlackthornEntranceGrotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  4,  5, DARK_CAVE_BLACKTHORN_ENTRANCE, 3

    def_coord_events

    def_bg_events
	bg_event  2,  5, BGEVENT_READ, DarkCaveBlackthornEntranceGrottoSign

    def_object_events
	object_event  5,  4, SPRITE_WOBBUFFET_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DarkCaveBlackthornEntranceGrottoWobbuffetScript, EVENT_DARK_CAVE_BLACK_THORN_ENTRANCE_GROTTO_WOBBUFFET
	object_event  5,  2, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DarkCaveBlackthornEntranceGrottoRhydonScript, EVENT_DARK_CAVE_BLACK_THORN_ENTRANCE_GROTTO_RHYDON
	object_event  5,  5, SPRITE_KINGLER_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DarkCaveBlackthornEntranceGrottoKinglerScript, EVENT_DARK_CAVE_BLACK_THORN_ENTRANCE_GROTTO_KINGLER
	object_event  3,  4, SPRITE_DONPHAN_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DarkCaveBlackthornEntranceGrottoDonphanScript, EVENT_DARK_CAVE_BLACK_THORN_ENTRANCE_GROTTO_DONPHAN
	object_event  2,  2, SPRITE_SUDOWOODO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, DarkCaveBlackthornEntranceGrottoSudowoodoScript, EVENT_DARK_CAVE_BLACK_THORN_ENTRANCE_GROTTO_SUDOWOODO
