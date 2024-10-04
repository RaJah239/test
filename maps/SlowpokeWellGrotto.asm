    object_const_def
	const SLOWPOKEWELLGROTTO_SLOWPOKE
	const SLOWPOKEWELLGROTTO_POLIWHIRL
	const SLOWPOKEWELLGROTTO_RATICATE
	const SLOWPOKEWELLGROTTO_WEEZING
	const SLOWPOKEWELLGROTTO_MUK

SlowpokeWellGrotto_MapScripts:
    def_scene_scripts

    def_callbacks
 	callback MAPCALLBACK_OBJECTS, SlowpokeWellGrottoPokemonOW
 
SlowpokeWellGrottoPokemonOW:
    checkflag ENGINE_DAILY_SLOWPOKE_WELL_GROTTO
    iftrue .NoAppear
    random 20 ; random 5 - this makes it always have a Pokemon.
    ifequal 0, .AppearSlowpoke
    ifequal 1, .AppearPoliwhirl
    ifequal 2, .AppearRaticate
    ifequal 3, .AppearWeezing
    ifequal 4, .AppearMuk
.NoAppear:
    disappear SLOWPOKEWELLGROTTO_SLOWPOKE
    disappear SLOWPOKEWELLGROTTO_POLIWHIRL
    disappear SLOWPOKEWELLGROTTO_RATICATE
    disappear SLOWPOKEWELLGROTTO_WEEZING
    disappear SLOWPOKEWELLGROTTO_MUK
    endcallback

.AppearSlowpoke:
    disappear SLOWPOKEWELLGROTTO_POLIWHIRL
    disappear SLOWPOKEWELLGROTTO_RATICATE
    disappear SLOWPOKEWELLGROTTO_WEEZING
    disappear SLOWPOKEWELLGROTTO_MUK
    appear SLOWPOKEWELLGROTTO_SLOWPOKE
    endcallback

.AppearPoliwhirl:
    disappear SLOWPOKEWELLGROTTO_SLOWPOKE
    disappear SLOWPOKEWELLGROTTO_RATICATE
    disappear SLOWPOKEWELLGROTTO_WEEZING
    disappear SLOWPOKEWELLGROTTO_MUK
    appear SLOWPOKEWELLGROTTO_POLIWHIRL
    endcallback

.AppearRaticate:
    disappear SLOWPOKEWELLGROTTO_SLOWPOKE
    disappear SLOWPOKEWELLGROTTO_WEEZING
    disappear SLOWPOKEWELLGROTTO_MUK
    disappear SLOWPOKEWELLGROTTO_POLIWHIRL
    appear SLOWPOKEWELLGROTTO_RATICATE
    endcallback

.AppearWeezing:
    disappear SLOWPOKEWELLGROTTO_SLOWPOKE
    disappear SLOWPOKEWELLGROTTO_MUK
    disappear SLOWPOKEWELLGROTTO_POLIWHIRL
    disappear SLOWPOKEWELLGROTTO_RATICATE
    appear SLOWPOKEWELLGROTTO_WEEZING
    endcallback

.AppearMuk:
    disappear SLOWPOKEWELLGROTTO_SLOWPOKE
    disappear SLOWPOKEWELLGROTTO_WEEZING
    disappear SLOWPOKEWELLGROTTO_POLIWHIRL
    disappear SLOWPOKEWELLGROTTO_RATICATE
    appear SLOWPOKEWELLGROTTO_MUK
    endcallback

SlowpokeWellGrottoSlowpokeScript:
    faceplayer
    cry SLOWPOKE
    loadwildmon SLOWPOKE, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear SLOWPOKEWELLGROTTO_SLOWPOKE
    setflag ENGINE_DAILY_SLOWPOKE_WELL_GROTTO
    reloadmapafterbattle
    end

SlowpokeWellGrottoPoliwhirlScript:
    faceplayer
    cry POLIWHIRL
    loadwildmon POLIWHIRL, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear SLOWPOKEWELLGROTTO_POLIWHIRL
    setflag ENGINE_DAILY_SLOWPOKE_WELL_GROTTO
    reloadmapafterbattle
    end

SlowpokeWellGrottoRaticateScript:
    faceplayer
    cry RATICATE
    loadwildmon RATICATE, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear SLOWPOKEWELLGROTTO_RATICATE
    setflag ENGINE_DAILY_SLOWPOKE_WELL_GROTTO
    reloadmapafterbattle
    end

SlowpokeWellGrottoWeezingScript:
    faceplayer
    cry WEEZING
    loadwildmon WEEZING, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear SLOWPOKEWELLGROTTO_WEEZING
    setflag ENGINE_DAILY_SLOWPOKE_WELL_GROTTO
    reloadmapafterbattle
    end

SlowpokeWellGrottoMukScript:
    faceplayer
    cry MUK
    loadwildmon MUK, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear SLOWPOKEWELLGROTTO_MUK
    setflag ENGINE_DAILY_SLOWPOKE_WELL_GROTTO
    reloadmapafterbattle
    end

SlowpokeWellGrotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  4,  5, SLOWPOKE_WELL_B2F, 2

    def_coord_events

    def_bg_events

    def_object_events
	object_event  4,  3, SPRITE_SLOWPOKE_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SlowpokeWellGrottoSlowpokeScript, EVENT_SLOWPOKE_WELL_GROTTO_SLOWPOKE
	object_event  2,  4, SPRITE_POLIWHIRL_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SlowpokeWellGrottoPoliwhirlScript, EVENT_SLOWPOKE_WELL_GROTTO_POLIWHIRL
	object_event  2,  5, SPRITE_RATICATE_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SlowpokeWellGrottoRaticateScript, EVENT_SLOWPOKE_WELL_GROTTO_RATICATE
	object_event  2,  2, SPRITE_WEEZING_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, SlowpokeWellGrottoWeezingScript, EVENT_SLOWPOKE_WELL_GROTTO_WEEZING
	object_event  5,  2, SPRITE_MUK_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, SlowpokeWellGrottoMukScript, EVENT_SLOWPOKE_WELL_GROTTO_MUK
