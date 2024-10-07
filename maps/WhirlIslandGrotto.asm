    object_const_def
    const WHIRLISLANDGROTTO_KINGDRA
    const WHIRLISLANDGROTTO_CORSOLA
    const WHIRLISLANDGROTTO_STARMIE
    const WHIRLISLANDGROTTO_TENTACRUEL
    const WHIRLISLANDGROTTO_DEWGONG

WhirlIslandGrotto_MapScripts:
    def_scene_scripts

    def_callbacks
      callback MAPCALLBACK_OBJECTS, WhirlIslandGrottoPokemonOW
 
WhirlIslandGrottoPokemonOW:
    checkevent EVENT_INITIALIZED_EVENTS
    iffalse .NoAppear
    random 20 ; random 5 - this makes is always have a Pokemon.
    ifequal 0, .AppearKingdra
    ifequal 1, .AppearCorsola
    ifequal 2, .AppearStarmie
    ifequal 3, .AppearTentacruel
    ifequal 4, .AppearDewgon
.NoAppear:
    disappear WHIRLISLANDGROTTO_KINGDRA
    disappear WHIRLISLANDGROTTO_CORSOLA
    disappear WHIRLISLANDGROTTO_STARMIE
    disappear WHIRLISLANDGROTTO_TENTACRUEL
    disappear WHIRLISLANDGROTTO_DEWGONG
    endcallback

.AppearKingdra:
    disappear WHIRLISLANDGROTTO_DEWGONG
    disappear WHIRLISLANDGROTTO_CORSOLA
    disappear WHIRLISLANDGROTTO_STARMIE
    disappear WHIRLISLANDGROTTO_TENTACRUEL
    appear WHIRLISLANDGROTTO_KINGDRA
    endcallback

.AppearCorsola:
    disappear WHIRLISLANDGROTTO_DEWGONG
    disappear WHIRLISLANDGROTTO_STARMIE
    disappear WHIRLISLANDGROTTO_TENTACRUEL
    disappear WHIRLISLANDGROTTO_KINGDRA
    appear WHIRLISLANDGROTTO_CORSOLA
    endcallback

.AppearStarmie:
    disappear WHIRLISLANDGROTTO_DEWGONG
    disappear WHIRLISLANDGROTTO_TENTACRUEL
    disappear WHIRLISLANDGROTTO_KINGDRA
    disappear WHIRLISLANDGROTTO_CORSOLA
    appear WHIRLISLANDGROTTO_STARMIE
    endcallback

.AppearTentacruel:
    disappear WHIRLISLANDGROTTO_DEWGONG
    disappear WHIRLISLANDGROTTO_STARMIE
    disappear WHIRLISLANDGROTTO_KINGDRA
    disappear WHIRLISLANDGROTTO_CORSOLA
    appear WHIRLISLANDGROTTO_TENTACRUEL
    endcallback

.AppearDewgon:
    disappear WHIRLISLANDGROTTO_KINGDRA
    disappear WHIRLISLANDGROTTO_CORSOLA
    disappear WHIRLISLANDGROTTO_STARMIE
    disappear WHIRLISLANDGROTTO_TENTACRUEL
    appear WHIRLISLANDGROTTO_DEWGONG
    endcallback


WhirlIslandGrottoKingdraScript:
    faceplayer
    cry KINGDRA
    loadwildmon KINGDRA, 44
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear WHIRLISLANDGROTTO_KINGDRA
    reloadmapafterbattle
    end

WhirlIslandGrottoCorsolaScript:
    faceplayer
    cry CORSOLA
    loadwildmon CORSOLA, 44
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear WHIRLISLANDGROTTO_CORSOLA
    reloadmapafterbattle
    end

WhirlIslandGrottoStarmieScript:
    faceplayer
    cry STARMIE
    loadwildmon STARMIE, 44
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear WHIRLISLANDGROTTO_STARMIE
    reloadmapafterbattle
    end

WhirlIslandGrottoTentacruelScript:
    faceplayer
    cry TENTACRUEL
    loadwildmon TENTACRUEL, 44
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear WHIRLISLANDGROTTO_TENTACRUEL
    reloadmapafterbattle
    end

WhirlIslandGrottoDewgongScript:
    faceplayer
    cry DEWGONG
    loadwildmon DEWGONG, 44
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear WHIRLISLANDGROTTO_DEWGONG
    reloadmapafterbattle
    end

WhirlIslandGrotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  7,  9, WHIRL_ISLAND_B1F, 10

    def_coord_events

    def_bg_events

    def_object_events
	object_event  9,  6, SPRITE_KINGDRA_OW, SPRITEMOVEDATA_SWIM_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhirlIslandGrottoKingdraScript, EVENT_WHIRL_ISLAND_GROTTO_KINGDRA
	object_event  5,  6, SPRITE_CORSOLA_OW, SPRITEMOVEDATA_SWIM_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhirlIslandGrottoCorsolaScript, EVENT_WHIRL_ISLAND_GROTTO_CORSOLA
	object_event  7,  5, SPRITE_STARMIE_OW, SPRITEMOVEDATA_SWIM_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhirlIslandGrottoStarmieScript, EVENT_WHIRL_ISLAND_GROTTO_STARMIE
	object_event  5,  8, SPRITE_TENTACRUEL_OW, SPRITEMOVEDATA_POKEMON, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, WhirlIslandGrottoTentacruelScript, EVENT_WHIRL_ISLAND_GROTTO_TENTACRUEL
	object_event  4,  8, SPRITE_DEWGONG_OW, SPRITEMOVEDATA_POKEMON, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, WhirlIslandGrottoDewgongScript, EVENT_WHIRL_ISLAND_GROTTO_DEWGONG
