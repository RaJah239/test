    object_const_def
    const ROUTE38GROTTO_DODRIO
    const ROUTE38GROTTO_RAPIDASH
    const ROUTE38GROTTO_TAUROS
    const ROUTE38GROTTO_MILTANK
    const ROUTE38GROTTO_ELECTRODE

Route38Grotto_MapScripts:
    def_scene_scripts

    def_callbacks
  	callback MAPCALLBACK_OBJECTS, Route38GrottoPokemonOW
 
Route38GrottoPokemonOW:
    checkevent EVENT_INITIALIZED_EVENTS
    iffalse .NoAppear
    random 20 ; random 5 - this makes it always have a Pokemon.
    ifequal 0, .AppearDodrio
    ifequal 1, .AppearRapidash
    ifequal 2, .AppearTauros
    ifequal 3, .AppearMiltank
    ifequal 4, .AppearElectrode
.NoAppear:
    disappear ROUTE38GROTTO_DODRIO
    disappear ROUTE38GROTTO_RAPIDASH
    disappear ROUTE38GROTTO_TAUROS
    disappear ROUTE38GROTTO_MILTANK
    disappear ROUTE38GROTTO_ELECTRODE
    endcallback

.AppearDodrio:
    disappear ROUTE38GROTTO_RAPIDASH
    disappear ROUTE38GROTTO_TAUROS
    disappear ROUTE38GROTTO_MILTANK
    disappear ROUTE38GROTTO_ELECTRODE
    appear ROUTE38GROTTO_DODRIO
    endcallback

.AppearRapidash:
    disappear ROUTE38GROTTO_DODRIO
    disappear ROUTE38GROTTO_TAUROS
    disappear ROUTE38GROTTO_MILTANK
    disappear ROUTE38GROTTO_ELECTRODE
    appear ROUTE38GROTTO_RAPIDASH
    endcallback

.AppearTauros:
    disappear ROUTE38GROTTO_DODRIO
    disappear ROUTE38GROTTO_MILTANK
    disappear ROUTE38GROTTO_ELECTRODE
    disappear ROUTE38GROTTO_RAPIDASH
    appear ROUTE38GROTTO_TAUROS
    endcallback

.AppearMiltank:
    disappear ROUTE38GROTTO_DODRIO
    disappear ROUTE38GROTTO_ELECTRODE
    disappear ROUTE38GROTTO_RAPIDASH
    disappear ROUTE38GROTTO_TAUROS
    appear ROUTE38GROTTO_MILTANK
    endcallback

.AppearElectrode:
    disappear ROUTE38GROTTO_DODRIO
    disappear ROUTE38GROTTO_MILTANK
    disappear ROUTE38GROTTO_RAPIDASH
    disappear ROUTE38GROTTO_TAUROS
    appear ROUTE38GROTTO_ELECTRODE
    endcallback

Route38GrottoDodrioScript:
    faceplayer
    cry DODRIO
    loadwildmon DODRIO, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE38GROTTO_DODRIO
    reloadmapafterbattle
    end

Route38GrottoRapidashScript:
    faceplayer
    cry RAPIDASH
    loadwildmon RAPIDASH, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE38GROTTO_RAPIDASH
    reloadmapafterbattle
    end

Route38GrottoTaurosScript:
    faceplayer
    cry TAUROS
    loadwildmon TAUROS, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE38GROTTO_TAUROS
    reloadmapafterbattle
    end

Route38GrottoMiltankScript:
    faceplayer
    cry MILTANK
    loadwildmon MILTANK, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE38GROTTO_MILTANK
    reloadmapafterbattle
    end

Route38GrottoElectrodeScript:
    faceplayer
    cry ELECTRODE
    loadwildmon ELECTRODE, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ROUTE38GROTTO_ELECTRODE
    reloadmapafterbattle
    end

Route38Grotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  4,  6, ROUTE_38, 3
	warp_event  4,  7, ROUTE_38, 4

    def_coord_events

    def_bg_events

    def_object_events
	object_event  9,  5, SPRITE_DODRIO_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route38GrottoDodrioScript, EVENT_ROUTE_38_GROTTO_DODRIO
	object_event  9,  9, SPRITE_RAPIDASH_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route38GrottoRapidashScript, EVENT_ROUTE_38_GROTTO_RAPIDASH
	object_event  7,  6, SPRITE_TAUROS_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route38GrottoTaurosScript, EVENT_ROUTE_38_GROTTO_TAUROS
	object_event  8,  4, SPRITE_MILTANK_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route38GrottoMiltankScript, EVENT_ROUTE_38_GROTTO_MILTANK
	object_event  8,  8, SPRITE_ELECTRODE_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route38GrottoElectrodeScript, EVENT_ROUTE_38_GROTTO_ELECTRODE
