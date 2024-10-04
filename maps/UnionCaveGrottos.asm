    object_const_def
    const UNIONCAVEGROTTOS_SANDSHREW
    const UNIONCAVEGROTTOS_MACHOP
    const UNIONCAVEGROTTOS_CUBONE
    const UNIONCAVEGROTTOS_WOOPER
    const UNIONCAVEGROTTOS_ONIX

UnionCaveGrottos_MapScripts:
    def_scene_scripts

    def_callbacks
    callback MAPCALLBACK_OBJECTS, UnionCaveGrottosPokemonOW

UnionCaveGrottosPokemonOW:
    checkflag ENGINE_DAILY_UNION_CAVE_GROTTOS
    iftrue .NoAppear
    random 20 ; random 5 - this makes is always have a Pokemon.
    ifequal 0, .AppearSandshrew
    ifequal 1, .AppearMachop
    ifequal 2, .AppearCubone
    ifequal 3, .AppearTyrogue
    ifequal 4, .AppearOnix
.NoAppear:
    disappear UNIONCAVEGROTTOS_SANDSHREW
    disappear UNIONCAVEGROTTOS_MACHOP
    disappear UNIONCAVEGROTTOS_CUBONE
    disappear UNIONCAVEGROTTOS_WOOPER
    disappear UNIONCAVEGROTTOS_ONIX
    endcallback

.AppearSandshrew:
    disappear UNIONCAVEGROTTOS_MACHOP
    disappear UNIONCAVEGROTTOS_CUBONE
    disappear UNIONCAVEGROTTOS_WOOPER
    disappear UNIONCAVEGROTTOS_ONIX
    appear UNIONCAVEGROTTOS_SANDSHREW
    endcallback

.AppearMachop:
    disappear UNIONCAVEGROTTOS_SANDSHREW
    disappear UNIONCAVEGROTTOS_CUBONE
    disappear UNIONCAVEGROTTOS_WOOPER
    disappear UNIONCAVEGROTTOS_ONIX
    appear UNIONCAVEGROTTOS_MACHOP
    endcallback

.AppearCubone:
    disappear UNIONCAVEGROTTOS_SANDSHREW
    disappear UNIONCAVEGROTTOS_WOOPER
    disappear UNIONCAVEGROTTOS_ONIX
    disappear UNIONCAVEGROTTOS_MACHOP
    appear UNIONCAVEGROTTOS_CUBONE
    endcallback

.AppearTyrogue:
    disappear UNIONCAVEGROTTOS_SANDSHREW
    disappear UNIONCAVEGROTTOS_ONIX
    disappear UNIONCAVEGROTTOS_MACHOP
    disappear UNIONCAVEGROTTOS_CUBONE
    appear UNIONCAVEGROTTOS_WOOPER
    endcallback

.AppearOnix:
    disappear UNIONCAVEGROTTOS_SANDSHREW
    disappear UNIONCAVEGROTTOS_WOOPER
    disappear UNIONCAVEGROTTOS_MACHOP
    disappear UNIONCAVEGROTTOS_CUBONE
    appear UNIONCAVEGROTTOS_ONIX
    endcallback

UnionCaveGrottoSandshrew:
    faceplayer
    cry SANDSHREW
    loadwildmon SANDSHREW, 13
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear UNIONCAVEGROTTOS_SANDSHREW
    setflag ENGINE_DAILY_UNION_CAVE_GROTTOS
    reloadmapafterbattle
    end

UnionCaveGrottoMachop:
    faceplayer
    cry MACHOP
    loadwildmon MACHOP, 13
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear UNIONCAVEGROTTOS_MACHOP
    setflag ENGINE_DAILY_UNION_CAVE_GROTTOS
    reloadmapafterbattle
    end

UnionCaveGrottoCubone:
    faceplayer
    cry CUBONE
    loadwildmon CUBONE, 13
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear UNIONCAVEGROTTOS_CUBONE
    setflag ENGINE_DAILY_UNION_CAVE_GROTTOS
    reloadmapafterbattle
    end

UnionCaveGrottoWooper:
    faceplayer
    cry WOOPER
    loadwildmon WOOPER, 13
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear UNIONCAVEGROTTOS_WOOPER
    setflag ENGINE_DAILY_UNION_CAVE_GROTTOS
    reloadmapafterbattle
    end

UnionCaveGrottoOnix:
    faceplayer
    cry ONIX
    loadwildmon ONIX, 13
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear UNIONCAVEGROTTOS_ONIX
    setflag ENGINE_DAILY_UNION_CAVE_GROTTOS
    reloadmapafterbattle
    end

UnionCaveGrottos_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  4,  5, UNION_CAVE_B1F, 6


    def_coord_events

    def_bg_events

    def_object_events
	object_event  2,  2, SPRITE_SANDSHREW_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnionCaveGrottoSandshrew, EVENT_UNION_CAVE_GROTTO_SANDSHREW_OW
	object_event  5,  2, SPRITE_MACHOP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnionCaveGrottoMachop, EVENT_UNION_CAVE_GROTTO_MACHOP_OW
	object_event  3,  3, SPRITE_CUBONE_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnionCaveGrottoCubone, EVENT_UNION_CAVE_GROTTO_CUBONE_OW
	object_event  5,  4, SPRITE_WOOPER_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnionCaveGrottoWooper, EVENT_UNION_CAVE_GROTTO_WOOPER_OW
	object_event  2,  5, SPRITE_ONIX_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnionCaveGrottoOnix, EVENT_UNION_CAVE_GROTTO_ONIX_OW
