    object_const_def
	const RUINSOFALPHGROTTO_XATU
	const RUINSOFALPHGROTTO_GIRAFARIG
	const RUINSOFALPHGROTTO_SMEARGLE
	const RUINSOFALPHGROTTO_EEVEE
	const RUINSOFALPHGROTTO_EXEGGCUTE

RuinsOfAlphOutsideGrotto_MapScripts:
    def_scene_scripts

    def_callbacks
 	callback MAPCALLBACK_OBJECTS, RuinsofAlphGrottoPokemonOW
 
RuinsofAlphGrottoPokemonOW:
    checkevent EVENT_INITIALIZED_EVENTS
    iffalse .NoAppear
    random 20 ; random 5 - this makes it always have a Pokemon.
    ifequal 0, .AppearXatu
    ifequal 1, .AppearGirafarig
    ifequal 2, .AppearSmeargle
    ifequal 3, .AppearEevee
    ifequal 4, .AppearExeggcute
.NoAppear:
    disappear RUINSOFALPHGROTTO_XATU
    disappear RUINSOFALPHGROTTO_GIRAFARIG
    disappear RUINSOFALPHGROTTO_SMEARGLE
    disappear RUINSOFALPHGROTTO_EEVEE
    disappear RUINSOFALPHGROTTO_EXEGGCUTE
    endcallback

.AppearXatu:
    disappear RUINSOFALPHGROTTO_GIRAFARIG
    disappear RUINSOFALPHGROTTO_SMEARGLE
    disappear RUINSOFALPHGROTTO_EEVEE
    disappear RUINSOFALPHGROTTO_EXEGGCUTE
    appear RUINSOFALPHGROTTO_XATU
    endcallback

.AppearGirafarig:
    disappear RUINSOFALPHGROTTO_XATU
    disappear RUINSOFALPHGROTTO_SMEARGLE
    disappear RUINSOFALPHGROTTO_EEVEE
    disappear RUINSOFALPHGROTTO_EXEGGCUTE
    appear RUINSOFALPHGROTTO_GIRAFARIG
    endcallback

.AppearSmeargle:
    disappear RUINSOFALPHGROTTO_XATU
    disappear RUINSOFALPHGROTTO_EEVEE
    disappear RUINSOFALPHGROTTO_EXEGGCUTE
    disappear RUINSOFALPHGROTTO_GIRAFARIG
    appear RUINSOFALPHGROTTO_SMEARGLE
    endcallback

.AppearEevee:
    disappear RUINSOFALPHGROTTO_XATU
    disappear RUINSOFALPHGROTTO_EXEGGCUTE
    disappear RUINSOFALPHGROTTO_GIRAFARIG
    disappear RUINSOFALPHGROTTO_SMEARGLE
    appear RUINSOFALPHGROTTO_EEVEE
    endcallback

.AppearExeggcute:
    disappear RUINSOFALPHGROTTO_XATU
    disappear RUINSOFALPHGROTTO_EEVEE
    disappear RUINSOFALPHGROTTO_GIRAFARIG
    disappear RUINSOFALPHGROTTO_SMEARGLE
    appear RUINSOFALPHGROTTO_EXEGGCUTE
    endcallback

RuinsOfAlphGrottoXatuScript:
    faceplayer
    cry XATU
    loadwildmon XATU, 25
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear RUINSOFALPHGROTTO_XATU
    reloadmapafterbattle
    end

RuinsOfAlphGrottoGirafarigScript:
    faceplayer
    cry GIRAFARIG
    loadwildmon GIRAFARIG, 25
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear RUINSOFALPHGROTTO_GIRAFARIG
    reloadmapafterbattle
    end

RuinsOfAlphGrottoSmeargleScript:
    faceplayer
    cry SMEARGLE
    loadwildmon SMEARGLE, 25
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear RUINSOFALPHGROTTO_SMEARGLE
    reloadmapafterbattle
    end

RuinsOfAlphGrottoEeveeScript:
    faceplayer
    cry EEVEE
    loadwildmon EEVEE, 25
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear RUINSOFALPHGROTTO_EEVEE
    reloadmapafterbattle
    end

RuinsOfAlphGrottoExeggcuteScript:
    faceplayer
    cry EXEGGCUTE
    loadwildmon EXEGGCUTE, 25
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear RUINSOFALPHGROTTO_EXEGGCUTE
    reloadmapafterbattle
    end

RuinsOfAlphOutsideGrotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  7,  4, RUINS_OF_ALPH_OUTSIDE, 12
	warp_event  7,  5, RUINS_OF_ALPH_OUTSIDE, 13

    def_coord_events

    def_bg_events

    def_object_events
	object_event  4,  5, SPRITE_XATU_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphGrottoXatuScript, EVENT_RUINS_OF_ALPH_GROTTO_XATU
	object_event  2,  2, SPRITE_GIRAFARIG_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphGrottoGirafarigScript, EVENT_RUINS_OF_ALPH_GROTTO_GIRAFARIG
	object_event  5,  2, SPRITE_SMEARGLE_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphGrottoSmeargleScript, EVENT_RUINS_OF_ALPH_GROTTO_SMEARGLE
	object_event  5,  7, SPRITE_EEVEE_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphGrottoEeveeScript, EVENT_RUINS_OF_ALPH_GROTTO_EEVEE
	object_event  2,  5, SPRITE_EXEGGCUTE_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphGrottoExeggcuteScript, EVENT_RUINS_OF_ALPH_GROTTO_EXEGGCUTE
