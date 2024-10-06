    object_const_def
	const ROUTE43GROTTO_TANGELA
	const ROUTE43GROTTO_FARFETCH_D
	const ROUTE43GROTTO_SKARMORY
	const ROUTE43GROTTO_KANGASKHAN
	const ROUTE43GROTTO_HERACROSS

Route43Grotto_MapScripts:
    def_scene_scripts

    def_callbacks
  	callback MAPCALLBACK_OBJECTS, Route43GrottoPokemonOW
 
Route43GrottoPokemonOW:
    checkevent EVENT_INITIALIZED_EVENTS
    iffalse .NoAppear
    random 20 ; random 5 - this makes it always have a Pokemon.
    ifequal 0, .AppearTangela
    ifequal 1, .AppearFarfetchD
    ifequal 2, .AppearSkarmory
    ifequal 3, .AppearKangaskhan
    ifequal 4, .AppearHeracross
.NoAppear:
    disappear ROUTE43GROTTO_TANGELA
    disappear ROUTE43GROTTO_FARFETCH_D
    disappear ROUTE43GROTTO_SKARMORY
    disappear ROUTE43GROTTO_KANGASKHAN
    disappear ROUTE43GROTTO_HERACROSS
    endcallback

.AppearTangela:
    disappear ROUTE43GROTTO_FARFETCH_D
    disappear ROUTE43GROTTO_SKARMORY
    disappear ROUTE43GROTTO_KANGASKHAN
    disappear ROUTE43GROTTO_HERACROSS
    appear ROUTE43GROTTO_TANGELA
    endcallback

.AppearFarfetchD:
    disappear ROUTE43GROTTO_TANGELA
    disappear ROUTE43GROTTO_SKARMORY
    disappear ROUTE43GROTTO_KANGASKHAN
    disappear ROUTE43GROTTO_HERACROSS
    appear ROUTE43GROTTO_FARFETCH_D
    endcallback

.AppearSkarmory:
    disappear ROUTE43GROTTO_TANGELA
    disappear ROUTE43GROTTO_KANGASKHAN
    disappear ROUTE43GROTTO_HERACROSS
    disappear ROUTE43GROTTO_FARFETCH_D
    appear ROUTE43GROTTO_SKARMORY
    endcallback

.AppearKangaskhan:
    disappear ROUTE43GROTTO_TANGELA
    disappear ROUTE43GROTTO_HERACROSS
    disappear ROUTE43GROTTO_FARFETCH_D
    disappear ROUTE43GROTTO_SKARMORY
    appear ROUTE43GROTTO_KANGASKHAN
    endcallback

.AppearHeracross:
    disappear ROUTE43GROTTO_TANGELA
    disappear ROUTE43GROTTO_KANGASKHAN
    disappear ROUTE43GROTTO_FARFETCH_D
    disappear ROUTE43GROTTO_SKARMORY
    appear ROUTE43GROTTO_HERACROSS
    endcallback

Route42GrottoTangelaScript:
    faceplayer
    cry TANGELA
    loadwildmon TANGELA, 38
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE43GROTTO_TANGELA
    reloadmapafterbattle
    end

Route42GrottoFarfetchDScript:
    faceplayer
    cry FARFETCH_D
    loadwildmon FARFETCH_D, 38
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE43GROTTO_FARFETCH_D
    reloadmapafterbattle
    end

Route42GrottoSkarmoryScript:
    faceplayer
    cry SKARMORY
    loadwildmon SKARMORY, 38
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE43GROTTO_SKARMORY
    reloadmapafterbattle
    end

Route42GrottoKangaskhanScript:
    faceplayer
    cry KANGASKHAN
    loadwildmon KANGASKHAN, 38
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE43GROTTO_KANGASKHAN
    reloadmapafterbattle
    end

Route42GrottoHeracrossScript:
    faceplayer
    cry HERACROSS
    loadwildmon HERACROSS, 38
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE43GROTTO_HERACROSS
    reloadmapafterbattle
    end

Route43Grotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  9,  6, ROUTE_43, 6
	warp_event  9,  7, ROUTE_43, 7

    def_coord_events

    def_bg_events

    def_object_events
	object_event  5,  6, SPRITE_TANGELA_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route42GrottoTangelaScript, EVENT_ROUTE_42_GROTTO_TANGELA
	object_event  6,  4, SPRITE_FARFETCH_D_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route42GrottoFarfetchDScript, EVENT_ROUTE_42_GROTTO_FARFETCH_D
	object_event  5,  9, SPRITE_SKARMORY_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route42GrottoSkarmoryScript, EVENT_ROUTE_42_GROTTO_SKARMORY
	object_event  7,  5, SPRITE_KANGASKHAN_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route42GrottoKangaskhanScript, EVENT_ROUTE_42_GROTTO_KANGASKHAN
	object_event  4,  5, SPRITE_HERACROSS_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route42GrottoHeracrossScript, EVENT_ROUTE_42_GROTTO_HERACROSS
