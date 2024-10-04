    object_const_def
	const ROUTE29GROTTO_SENTRET
	const ROUTE29GROTTO_HOPPIP
	const ROUTE29GROTTO_LEDYBA
	const ROUTE29GROTTO_SPINARAK
	const ROUTE29GROTTO_HOOTHOOT
   
Route29Grotto_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route29GrottoPokemonOW
 
Route29GrottoPokemonOW:
    checkflag ENGINE_DAILY_ROUTE_29_GROTTO
    iftrue .NoAppear
    random 20 ; random 5 - this makes is always have a Pokemon.
    ifequal 0, .AppearSentret
    ifequal 1, .AppearHoppip
    ifequal 2, .AppearLedyba
    ifequal 3, .AppearSpinark
    ifequal 4, .AppearHoothoot
.NoAppear:
    disappear ROUTE29GROTTO_SENTRET
    disappear ROUTE29GROTTO_HOPPIP
    disappear ROUTE29GROTTO_LEDYBA
    disappear ROUTE29GROTTO_SPINARAK
    disappear ROUTE29GROTTO_HOOTHOOT
    endcallback

.AppearSentret:
    disappear ROUTE29GROTTO_HOPPIP
    disappear ROUTE29GROTTO_LEDYBA
    disappear ROUTE29GROTTO_SPINARAK
    disappear ROUTE29GROTTO_HOOTHOOT
    appear ROUTE29GROTTO_SENTRET
    endcallback

.AppearHoppip:
    disappear ROUTE29GROTTO_SENTRET
    disappear ROUTE29GROTTO_LEDYBA
    disappear ROUTE29GROTTO_SPINARAK
    disappear ROUTE29GROTTO_HOOTHOOT
    appear ROUTE29GROTTO_HOPPIP
    endcallback

.AppearLedyba:
    disappear ROUTE29GROTTO_SENTRET
    disappear ROUTE29GROTTO_SPINARAK
    disappear ROUTE29GROTTO_HOOTHOOT
    disappear ROUTE29GROTTO_HOPPIP
    appear ROUTE29GROTTO_LEDYBA
    endcallback

.AppearSpinark:
    disappear ROUTE29GROTTO_SENTRET
    disappear ROUTE29GROTTO_HOOTHOOT
    disappear ROUTE29GROTTO_HOPPIP
    disappear ROUTE29GROTTO_LEDYBA
    appear ROUTE29GROTTO_SPINARAK
    endcallback

.AppearHoothoot:
    disappear ROUTE29GROTTO_SENTRET
    disappear ROUTE29GROTTO_SPINARAK
    disappear ROUTE29GROTTO_HOPPIP
    disappear ROUTE29GROTTO_LEDYBA
    appear ROUTE29GROTTO_HOOTHOOT
    endcallback

Route29GrottoSentretScript:
    faceplayer
    cry SENTRET
    loadwildmon SENTRET, 5
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE29GROTTO_SENTRET
    setflag ENGINE_DAILY_ROUTE_29_GROTTO
    reloadmapafterbattle
    end

Route29GrottoHoppipScript:
    faceplayer
    cry HOPPIP
    loadwildmon HOPPIP, 5
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE29GROTTO_HOPPIP
    setflag ENGINE_DAILY_ROUTE_29_GROTTO
    reloadmapafterbattle
    end

Route29GrottoLedybaScript:
    faceplayer
    cry LEDYBA
    loadwildmon LEDYBA, 5
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE29GROTTO_LEDYBA
    setflag ENGINE_DAILY_ROUTE_29_GROTTO
    reloadmapafterbattle
    end

Route29GrottoSpinarkScript:
    faceplayer
    cry SPINARAK
    loadwildmon SPINARAK, 5
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE29GROTTO_SPINARAK
    setflag ENGINE_DAILY_ROUTE_29_GROTTO
    reloadmapafterbattle
    end

Route29GrottoHoothootScript:
    faceplayer
    cry HOOTHOOT
    loadwildmon HOOTHOOT, 5
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE29GROTTO_HOOTHOOT
    setflag ENGINE_DAILY_ROUTE_29_GROTTO
    reloadmapafterbattle
    end

Route29Grotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  4,  6, ROUTE_29, 2
	warp_event  4,  7, ROUTE_29, 3

    def_coord_events

    def_bg_events

    def_object_events
	object_event  9,  4, SPRITE_SENTRET_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route29GrottoSentretScript, EVENT_ROUTE_29_GROTTO_SENTRET
	object_event  9,  9, SPRITE_HOPPIP_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route29GrottoHoppipScript, EVENT_ROUTE_29_GROTTO_HOPPIP
	object_event  7,  5, SPRITE_LEDYBA_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route29GrottoLedybaScript, EVENT_ROUTE_29_GROTTO_LEDYBA
	object_event  8,  7, SPRITE_SPINARAK_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route29GrottoSpinarkScript, EVENT_ROUTE_29_GROTTO_SPINARAK
	object_event  6,  9, SPRITE_HOOTHOOT_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route29GrottoHoothootScript, EVENT_ROUTE_29_GROTTO_HOOTHOOT
