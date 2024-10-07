    object_const_def
    const DRAGONSDENGROTTO_DRATINI

DragonsDenGrotto_MapScripts:
    def_scene_scripts

    def_callbacks
   	callback MAPCALLBACK_OBJECTS, DragonsDenGrottoPokemonOW
 
DragonsDenGrottoPokemonOW:
    checkevent EVENT_INITIALIZED_EVENTS
    iffalse .NoAppear
    random 20 ; random 5 - this makes it always have a Pokemon.
    ifequal 0, .AppearLarvitar
.NoAppear:
    disappear DRAGONSDENGROTTO_DRATINI
    endcallback

.AppearLarvitar:
    appear DRAGONSDENGROTTO_DRATINI
    endcallback

DragonsDenGrottoDratiniScript:
    faceplayer
    cry DRATINI
    loadwildmon DRATINI, 5
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear DRAGONSDENGROTTO_DRATINI
    reloadmapafterbattle
    end

DragonsDenGrotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  4,  5, DRAGONS_DEN_B1F, 3

    def_coord_events

    def_bg_events

    def_object_events
	object_event  3,  3, SPRITE_DRATINI_OW, SPRITEMOVEDATA_SWIM_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenGrottoDratiniScript, EVENT_CIANWOOD_GROTTO_QWILFISH_OW
