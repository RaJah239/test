    object_const_def
	const ROUTE42GROTTO_LICKITUNG
	const ROUTE42GROTTO_AIPOM
	const ROUTE42GROTTO_STANTLER
	const ROUTE42GROTTO_PRIMEAPE
	const ROUTE42GROTTO_MURKROW

Route42Grotto_MapScripts:
    def_scene_scripts

    def_callbacks
  	callback MAPCALLBACK_OBJECTS, Route42GrottoPokemonOW
 
Route42GrottoPokemonOW:
    checkevent EVENT_INITIALIZED_EVENTS
    iffalse .NoAppear
    random 20 ; random 5 - this makes it always have a Pokemon.
    ifequal 0, .AppearLickitung
    ifequal 1, .AppearAipom
    ifequal 2, .AppearStantler
    ifequal 3, .AppearPrimeaple
    ifequal 4, .AppearMurkrow
.NoAppear:
    disappear ROUTE42GROTTO_LICKITUNG
    disappear ROUTE42GROTTO_AIPOM
    disappear ROUTE42GROTTO_STANTLER
    disappear ROUTE42GROTTO_PRIMEAPE
    disappear ROUTE42GROTTO_MURKROW
    endcallback

.AppearLickitung:
    disappear ROUTE42GROTTO_AIPOM
    disappear ROUTE42GROTTO_STANTLER
    disappear ROUTE42GROTTO_PRIMEAPE
    disappear ROUTE42GROTTO_MURKROW
    appear ROUTE42GROTTO_LICKITUNG
    endcallback

.AppearAipom:
    disappear ROUTE42GROTTO_LICKITUNG
    disappear ROUTE42GROTTO_STANTLER
    disappear ROUTE42GROTTO_PRIMEAPE
    disappear ROUTE42GROTTO_MURKROW
    appear ROUTE42GROTTO_AIPOM
    endcallback

.AppearStantler:
    disappear ROUTE42GROTTO_LICKITUNG
    disappear ROUTE42GROTTO_PRIMEAPE
    disappear ROUTE42GROTTO_MURKROW
    disappear ROUTE42GROTTO_AIPOM
    appear ROUTE42GROTTO_STANTLER
    endcallback

.AppearPrimeaple:
    disappear ROUTE42GROTTO_LICKITUNG
    disappear ROUTE42GROTTO_MURKROW
    disappear ROUTE42GROTTO_AIPOM
    disappear ROUTE42GROTTO_STANTLER
    appear ROUTE42GROTTO_PRIMEAPE
    endcallback

.AppearMurkrow:
    disappear ROUTE42GROTTO_LICKITUNG
    disappear ROUTE42GROTTO_PRIMEAPE
    disappear ROUTE42GROTTO_AIPOM
    disappear ROUTE42GROTTO_STANTLER
    appear ROUTE42GROTTO_MURKROW
    endcallback

Route42GrottoLickitungScript:
    faceplayer
    cry LICKITUNG
    loadwildmon LICKITUNG, 36
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE42GROTTO_LICKITUNG
    reloadmapafterbattle
    end

Route42GrottoAipomScript:
    faceplayer
    cry AIPOM
    loadwildmon AIPOM, 36
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE42GROTTO_AIPOM
    reloadmapafterbattle
    end

Route42GrottoStantlerScript:
    faceplayer
    cry STANTLER
    loadwildmon STANTLER, 36
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE42GROTTO_STANTLER
    reloadmapafterbattle
    end

Route42GrottoPrimeapeScript:
    faceplayer
    cry PRIMEAPE
    loadwildmon PRIMEAPE, 36
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE42GROTTO_PRIMEAPE
    reloadmapafterbattle
    end

Route42GrottoMurkrowScript:
    faceplayer
    cry MURKROW
    loadwildmon MURKROW, 36
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE42GROTTO_MURKROW
    reloadmapafterbattle
    end

Route42GrottoSign:
	jumptext  Route42GrottoSignText

Route42GrottoSignText:
	text "This GROTTO get"
	line "visited by:"

	para "STANTLER, MURKROW,"
	line "PRIMEAPE, AIPOM"
	cont "and LICKITUNG."
	done

Route42Grotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  6,  7, ROUTE_42, 6

    def_coord_events

    def_bg_events
	bg_event  4,  6, BGEVENT_READ, Route42GrottoSign

    def_object_events
	object_event  5,  4, SPRITE_LICKITUNG_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route42GrottoLickitungScript, EVENT_ROUTE_42_GROTTO_LICKITUNG
	object_event  6,  4, SPRITE_AIPOM_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route42GrottoAipomScript, EVENT_ROUTE_42_GROTTO_AIPOM
	object_event  7,  5, SPRITE_STANTLER_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route42GrottoStantlerScript, EVENT_ROUTE_42_GROTTO_STANTLER
	object_event  5,  5, SPRITE_PRIMEAPE_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route42GrottoPrimeapeScript, EVENT_ROUTE_42_GROTTO_PRIMEAPE
	object_event  4,  5, SPRITE_MURKROW_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route42GrottoMurkrowScript, EVENT_ROUTE_42_GROTTO_MURKROW
