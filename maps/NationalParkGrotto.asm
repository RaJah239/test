    object_const_def
	const NATIONALPARKGROTTO_SUNKERN
	const NATIONALPARKGROTTO_PSYDUCK
	const NATIONALPARKGROTTO_SCYTHER
	const NATIONALPARKGROTTO_PINSIR
	const NATIONALPARKGROTTO_VENONAT

NationalParkGrotto_MapScripts:
    def_scene_scripts

    def_callbacks
  	callback MAPCALLBACK_OBJECTS, NationalParkGrottoPokemonOW
 
NationalParkGrottoPokemonOW:
    checkevent EVENT_INITIALIZED_EVENTS
    iffalse .NoAppear
    random 20 ; random 5 - this makes it always have a Pokemon.
    ifequal 0, .AppearSunkern
    ifequal 1, .AppearPsyduck
    ifequal 2, .AppearScyther
    ifequal 3, .AppearPinsir
    ifequal 4, .AppearVenonat
.NoAppear:
    disappear NATIONALPARKGROTTO_SUNKERN
    disappear NATIONALPARKGROTTO_PSYDUCK
    disappear NATIONALPARKGROTTO_SCYTHER
    disappear NATIONALPARKGROTTO_PINSIR
    disappear NATIONALPARKGROTTO_VENONAT
    endcallback

.AppearSunkern:
    disappear NATIONALPARKGROTTO_PSYDUCK
    disappear NATIONALPARKGROTTO_SCYTHER
    disappear NATIONALPARKGROTTO_PINSIR
    disappear NATIONALPARKGROTTO_VENONAT
    appear NATIONALPARKGROTTO_SUNKERN
    endcallback

.AppearPsyduck:
    disappear NATIONALPARKGROTTO_SUNKERN
    disappear NATIONALPARKGROTTO_SCYTHER
    disappear NATIONALPARKGROTTO_PINSIR
    disappear NATIONALPARKGROTTO_VENONAT
    appear NATIONALPARKGROTTO_PSYDUCK
    endcallback

.AppearScyther:
    disappear NATIONALPARKGROTTO_SUNKERN
    disappear NATIONALPARKGROTTO_PINSIR
    disappear NATIONALPARKGROTTO_VENONAT
    disappear NATIONALPARKGROTTO_PSYDUCK
    appear NATIONALPARKGROTTO_SCYTHER
    endcallback

.AppearPinsir:
    disappear NATIONALPARKGROTTO_SUNKERN
    disappear NATIONALPARKGROTTO_VENONAT
    disappear NATIONALPARKGROTTO_PSYDUCK
    disappear NATIONALPARKGROTTO_SCYTHER
    appear NATIONALPARKGROTTO_PINSIR
    endcallback

.AppearVenonat:
    disappear NATIONALPARKGROTTO_SUNKERN
    disappear NATIONALPARKGROTTO_PINSIR
    disappear NATIONALPARKGROTTO_PSYDUCK
    disappear NATIONALPARKGROTTO_SCYTHER
    appear NATIONALPARKGROTTO_VENONAT
    endcallback

NationalParkSunkernScript:
    faceplayer
    cry SUNKERN
    loadwildmon SUNKERN, 24
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear NATIONALPARKGROTTO_SUNKERN
    reloadmapafterbattle
    end

NationalParkPsyduckScript:
    faceplayer
    cry PSYDUCK
    loadwildmon PSYDUCK, 24
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear NATIONALPARKGROTTO_PSYDUCK
    reloadmapafterbattle
    end

NationalParkScytherScript:
    faceplayer
    cry SCYTHER
    loadwildmon SCYTHER, 24
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear NATIONALPARKGROTTO_SCYTHER
    reloadmapafterbattle
    end

NationalParkPinsirScript:
    faceplayer
    cry PINSIR
    loadwildmon PINSIR, 24
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear NATIONALPARKGROTTO_PINSIR
    reloadmapafterbattle
    end

NationalParkVenonatScript:
    faceplayer
    cry VENONAT
    loadwildmon VENONAT, 24
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear NATIONALPARKGROTTO_VENONAT
    reloadmapafterbattle
    end

NationalParkGrottoSign:
	jumptext  NationalParkGrottoSignText

NationalParkGrottoSignText:
	text "This GROTTO get"
	line "visited by:"

	para "PSYDUCK, SCYTHER,"
	line "PINSIR, VENONAT"
	cont "and SUNKERN."
	done

NationalParkGrotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  4,  0, NATIONAL_PARK, 5
	warp_event  5,  0, NATIONAL_PARK, 6

    def_coord_events

    def_bg_events
	bg_event  7,  3, BGEVENT_READ, NationalParkGrottoSign

    def_object_events
	object_event  3,  4, SPRITE_SUNKERN_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NationalParkSunkernScript, EVENT_NATIONAL_PARK_GROTTO_SUNKERN
	object_event  4,  3, SPRITE_PSYDUCK_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NationalParkPsyduckScript, EVENT_NATIONAL_PARK_GROTTO_PSYDUCK
	object_event  7,  2, SPRITE_SCYTHER_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NationalParkScytherScript, EVENT_NATIONAL_PARK_GROTTO_SCYTHER
	object_event  2,  2, SPRITE_PINSIR_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NationalParkPinsirScript, EVENT_NATIONAL_PARK_GROTTO_PINSIR
	object_event  7,  5, SPRITE_VENONAT_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, NationalParkVenonatScript, EVENT_NATIONAL_PARK_GROTTO_VENONAT
