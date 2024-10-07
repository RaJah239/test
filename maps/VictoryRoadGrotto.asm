    object_const_def
    const VICTORYROADGROTTO_LARVITAR

VictoryRoadGrotto_MapScripts:
    def_scene_scripts

    def_callbacks
  	callback MAPCALLBACK_OBJECTS, VictoryRoadGrottoPokemonOW
 
VictoryRoadGrottoPokemonOW:
    checkevent EVENT_INITIALIZED_EVENTS
    iffalse .NoAppear
    random 20 ; random 5 - this makes it always have a Pokemon.
    ifequal 0, .AppearLarvitar
.NoAppear:
    disappear VICTORYROADGROTTO_LARVITAR
    endcallback

.AppearLarvitar:
    appear VICTORYROADGROTTO_LARVITAR
    endcallback

VictoryRoadGrottoLarvitarScript:
    faceplayer
    cry LARVITAR
    loadwildmon LARVITAR, 5
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear VICTORYROADGROTTO_LARVITAR
    reloadmapafterbattle
    end

VictoryRoadGrottoSign:
	jumptext VictoryRoadGrottoSignText

VictoryRoadGrottoSignText:
	text "This GROTTO gets"
	line "visited by:"
	cont "LARVITAR."
	done

VictoryRoadGrotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  6,  7, VICTORY_ROAD, 11

    def_coord_events

    def_bg_events
	bg_event  6,  5, BGEVENT_READ, VictoryRoadGrottoSign

    def_object_events
	object_event  5,  5, SPRITE_LARVITAR_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VictoryRoadGrottoLarvitarScript, EVENT_DRAGONS_DEN_GROTTO_DRATINI
