    object_const_def
	const ILEXFORESTGROTTO_BUTTERFREE
	const ILEXFORESTGROTTO_BEEDRILL
	const ILEXFORESTGROTTO_PINECO
	const ILEXFORESTGROTTO_ODDISH
	const ILEXFORESTGROTTO_PARAS

IlexForestGrotto_MapScripts:
    def_scene_scripts

    def_callbacks
 	callback MAPCALLBACK_OBJECTS, IlexForestGrottoPokemonOW
 
IlexForestGrottoPokemonOW:
    checkflag ENGINE_DAILY_ILEX_FOREST_GROTTO
    iftrue .NoAppear
    random 20 ; random 5 - this makes it always have a Pokemon.
    ifequal 0, .AppearButterfree
    ifequal 1, .AppearBeedrill
    ifequal 2, .AppearPineco
    ifequal 3, .AppearOddish
    ifequal 4, .AppearParas
.NoAppear:
    disappear ILEXFORESTGROTTO_BUTTERFREE
    disappear ILEXFORESTGROTTO_BEEDRILL
    disappear ILEXFORESTGROTTO_PINECO
    disappear ILEXFORESTGROTTO_ODDISH
    disappear ILEXFORESTGROTTO_PARAS
    endcallback

.AppearButterfree:
    disappear ILEXFORESTGROTTO_BEEDRILL
    disappear ILEXFORESTGROTTO_PINECO
    disappear ILEXFORESTGROTTO_ODDISH
    disappear ILEXFORESTGROTTO_PARAS
    appear ILEXFORESTGROTTO_BUTTERFREE
    endcallback

.AppearBeedrill:
    disappear ILEXFORESTGROTTO_BUTTERFREE
    disappear ILEXFORESTGROTTO_PINECO
    disappear ILEXFORESTGROTTO_ODDISH
    disappear ILEXFORESTGROTTO_PARAS
    appear ILEXFORESTGROTTO_BEEDRILL
    endcallback

.AppearPineco:
    disappear ILEXFORESTGROTTO_BUTTERFREE
    disappear ILEXFORESTGROTTO_ODDISH
    disappear ILEXFORESTGROTTO_PARAS
    disappear ILEXFORESTGROTTO_BEEDRILL
    appear ILEXFORESTGROTTO_PINECO
    endcallback

.AppearOddish:
    disappear ILEXFORESTGROTTO_BUTTERFREE
    disappear ILEXFORESTGROTTO_PARAS
    disappear ILEXFORESTGROTTO_BEEDRILL
    disappear ILEXFORESTGROTTO_PINECO
    appear ILEXFORESTGROTTO_ODDISH
    endcallback

.AppearParas:
    disappear ILEXFORESTGROTTO_BUTTERFREE
    disappear ILEXFORESTGROTTO_ODDISH
    disappear ILEXFORESTGROTTO_BEEDRILL
    disappear ILEXFORESTGROTTO_PINECO
    appear ILEXFORESTGROTTO_PARAS
    endcallback

IlexForestGrottoButterfreeScript:
    faceplayer
    cry BUTTERFREE
    loadwildmon BUTTERFREE, 22
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ILEXFORESTGROTTO_BUTTERFREE
    setflag ENGINE_DAILY_ILEX_FOREST_GROTTO
    reloadmapafterbattle
    end

IlexForestGrottoBeedrillScript:
    faceplayer
    cry BEEDRILL
    loadwildmon BEEDRILL, 22
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ILEXFORESTGROTTO_BEEDRILL
    setflag ENGINE_DAILY_ILEX_FOREST_GROTTO
    reloadmapafterbattle
    end

IlexForestGrottoPinecoScript:
    faceplayer
    cry PINECO
    loadwildmon PINECO, 22
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ILEXFORESTGROTTO_PINECO
    setflag ENGINE_DAILY_ILEX_FOREST_GROTTO
    reloadmapafterbattle
    end

IlexForestGrottoOddishScript:
    faceplayer
    cry ODDISH
    loadwildmon ODDISH, 22
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ILEXFORESTGROTTO_ODDISH
    setflag ENGINE_DAILY_ILEX_FOREST_GROTTO
    reloadmapafterbattle
    end

IlexForestGrottoParaScript:
    faceplayer
    cry PARAS
    loadwildmon PARAS, 22
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear ILEXFORESTGROTTO_PARAS
    setflag ENGINE_DAILY_ILEX_FOREST_GROTTO
    reloadmapafterbattle
    end


IlexForestGrotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  4,  0, ILEX_FOREST, 4
	warp_event  5,  0, ILEX_FOREST, 5

    def_coord_events

    def_bg_events

    def_object_events
	object_event  2,  3, SPRITE_BUTTERFREE_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IlexForestGrottoButterfreeScript, EVENT_ILEX_FOREST_GROTTO_BUTTERFREE
	object_event  7,  2, SPRITE_BEEDRILL_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IlexForestGrottoBeedrillScript, EVENT_ILEX_FOREST_GROTTO_BEEDRILL
	object_event  4,  5, SPRITE_PINECO_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IlexForestGrottoPinecoScript, EVENT_ILEX_FOREST_GROTTO_PINECO
	object_event  6,  4, SPRITE_ODDISH_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IlexForestGrottoOddishScript, EVENT_ILEX_FOREST_GROTTO_ODDISH
	object_event  5,  3, SPRITE_PARAS_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, IlexForestGrottoParaScript, EVENT_ILEX_FOREST_GROTTO_PARAS
