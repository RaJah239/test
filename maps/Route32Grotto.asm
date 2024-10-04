    object_const_def
	const ROUTE32GROTTO_EKANS
	const ROUTE32GROTTO_SPEAROW
	const ROUTE32GROTTO_VULPIX
	const ROUTE32GROTTO_NIDORAN_M
	const ROUTE32GROTTO_NIDORAN_F

Route32Grotto_MapScripts:
    def_scene_scripts

    def_callbacks
 	callback MAPCALLBACK_OBJECTS, Route32GrottoPokemonOW
 
Route32GrottoPokemonOW:
    checkflag ENGINE_DAILY_ROUTE_32_GROTTO
    iftrue .NoAppear
    random 20 ; random 5 - this makes it always have a Pokemon.
    ifequal 0, .AppearEkans
    ifequal 1, .AppearSpearow
    ifequal 2, .AppearVulpix
    ifequal 3, .AppearNidoranM
    ifequal 4, .AppearNidoranF
.NoAppear:
    disappear ROUTE32GROTTO_EKANS
    disappear ROUTE32GROTTO_SPEAROW
    disappear ROUTE32GROTTO_VULPIX
    disappear ROUTE32GROTTO_NIDORAN_M
    disappear ROUTE32GROTTO_NIDORAN_F
    endcallback

.AppearEkans:
    disappear ROUTE32GROTTO_SPEAROW
    disappear ROUTE32GROTTO_VULPIX
    disappear ROUTE32GROTTO_NIDORAN_M
    disappear ROUTE32GROTTO_NIDORAN_F
    appear ROUTE32GROTTO_EKANS
    endcallback

.AppearSpearow:
    disappear ROUTE32GROTTO_EKANS
    disappear ROUTE32GROTTO_VULPIX
    disappear ROUTE32GROTTO_NIDORAN_M
    disappear ROUTE32GROTTO_NIDORAN_F
    appear ROUTE32GROTTO_SPEAROW
    endcallback

.AppearVulpix:
    disappear ROUTE32GROTTO_EKANS
    disappear ROUTE32GROTTO_NIDORAN_M
    disappear ROUTE32GROTTO_NIDORAN_F
    disappear ROUTE32GROTTO_SPEAROW
    appear ROUTE32GROTTO_VULPIX
    endcallback

.AppearNidoranM:
    disappear ROUTE32GROTTO_EKANS
    disappear ROUTE32GROTTO_NIDORAN_F
    disappear ROUTE32GROTTO_SPEAROW
    disappear ROUTE32GROTTO_VULPIX
    appear ROUTE32GROTTO_NIDORAN_M
    endcallback

.AppearNidoranF:
    disappear ROUTE32GROTTO_EKANS
    disappear ROUTE32GROTTO_NIDORAN_M
    disappear ROUTE32GROTTO_SPEAROW
    disappear ROUTE32GROTTO_VULPIX
    appear ROUTE32GROTTO_NIDORAN_F
    endcallback

Route32GrottoEkansScript:
    faceplayer
    cry EKANS
    loadwildmon EKANS, 9
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE32GROTTO_EKANS
    setflag ENGINE_DAILY_ROUTE_32_GROTTO
    reloadmapafterbattle
    end

Route32GrottoSpearowScript:
    faceplayer
    cry SPEAROW
    loadwildmon SPEAROW, 9
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE32GROTTO_SPEAROW
    setflag ENGINE_DAILY_ROUTE_32_GROTTO
    reloadmapafterbattle
    end

Route32GrottoVulpixScript:
    faceplayer
    cry VULPIX
    loadwildmon VULPIX, 9
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE32GROTTO_VULPIX
    setflag ENGINE_DAILY_ROUTE_32_GROTTO
    reloadmapafterbattle
    end

Route32GrottoNidoranMScript:
    faceplayer
    cry NIDORAN_M
    loadwildmon NIDORAN_M, 9
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE32GROTTO_NIDORAN_M
    setflag ENGINE_DAILY_ROUTE_32_GROTTO
    reloadmapafterbattle
    end

Route32GrottoNidoranFScript:
    faceplayer
    cry NIDORAN_F
    loadwildmon NIDORAN_F, 9
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE32GROTTO_NIDORAN_F
    setflag ENGINE_DAILY_ROUTE_32_GROTTO
    reloadmapafterbattle
    end

Route32Grotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  6,  7, ROUTE_32, 5

    def_coord_events

    def_bg_events

    def_object_events
	object_event  4,  7, SPRITE_EKANS_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route32GrottoEkansScript, EVENT_ROUTE_32_GROTTO_EKANS
	object_event  6,  5, SPRITE_SPEAROW_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route32GrottoSpearowScript, EVENT_ROUTE_32_GROTTO_SPEAROW
	object_event  4,  5, SPRITE_VULPIX_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route32GrottoVulpixScript, EVENT_ROUTE_32_GROTTO_VULPIX
	object_event  7,  7, SPRITE_NIDORAN_M_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route32GrottoNidoranMScript, EVENT_ROUTE_32_GROTTO_NIDORAN_M
	object_event  5,  7, SPRITE_NIDORAN_F_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route32GrottoNidoranFScript, EVENT_ROUTE_32_GROTTO_NIDORAN_F
