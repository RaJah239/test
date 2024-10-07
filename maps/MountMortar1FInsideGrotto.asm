    object_const_def
	const MOUNTMORTAR1FINSIDEGROTTO_GLIGAR
	const MOUNTMORTAR1FINSIDEGROTTO_MAGNETON
	const MOUNTMORTAR1FINSIDEGROTTO_MAGCARGO
	const MOUNTMORTAR1FINSIDEGROTTO_DUNSPARCE
	const MOUNTMORTAR1FINSIDEGROTTO_MISDREAVUS

MountMortar1FInsideGrotto_MapScripts:
    def_scene_scripts

    def_callbacks
 	callback MAPCALLBACK_OBJECTS, MountMortar1FInsideGrottoPokemonOW
 
MountMortar1FInsideGrottoPokemonOW:
    checkevent EVENT_INITIALIZED_EVENTS
    iffalse .NoAppear
    random 20 ; random 5 - this makes it always have a Pokemon.
    ifequal 0, .AppearGligar
    ifequal 1, .AppearMagneton
    ifequal 2, .AppearMagcargo
    ifequal 3, .AppearDunsparce
    ifequal 4, .AppearMisdreavus
.NoAppear:
    disappear MOUNTMORTAR1FINSIDEGROTTO_GLIGAR
    disappear MOUNTMORTAR1FINSIDEGROTTO_MAGNETON
    disappear MOUNTMORTAR1FINSIDEGROTTO_MAGCARGO
    disappear MOUNTMORTAR1FINSIDEGROTTO_DUNSPARCE
    disappear MOUNTMORTAR1FINSIDEGROTTO_MISDREAVUS
    endcallback

.AppearGligar:
    disappear MOUNTMORTAR1FINSIDEGROTTO_MAGNETON
    disappear MOUNTMORTAR1FINSIDEGROTTO_MAGCARGO
    disappear MOUNTMORTAR1FINSIDEGROTTO_DUNSPARCE
    disappear MOUNTMORTAR1FINSIDEGROTTO_MISDREAVUS
    appear MOUNTMORTAR1FINSIDEGROTTO_GLIGAR
    endcallback

.AppearMagneton:
    disappear MOUNTMORTAR1FINSIDEGROTTO_GLIGAR
    disappear MOUNTMORTAR1FINSIDEGROTTO_MAGCARGO
    disappear MOUNTMORTAR1FINSIDEGROTTO_DUNSPARCE
    disappear MOUNTMORTAR1FINSIDEGROTTO_MISDREAVUS
    appear MOUNTMORTAR1FINSIDEGROTTO_MAGNETON
    endcallback

.AppearMagcargo:
    disappear MOUNTMORTAR1FINSIDEGROTTO_GLIGAR
    disappear MOUNTMORTAR1FINSIDEGROTTO_DUNSPARCE
    disappear MOUNTMORTAR1FINSIDEGROTTO_MISDREAVUS
    disappear MOUNTMORTAR1FINSIDEGROTTO_MAGNETON
    appear MOUNTMORTAR1FINSIDEGROTTO_MAGCARGO
    endcallback

.AppearDunsparce:
    disappear MOUNTMORTAR1FINSIDEGROTTO_GLIGAR
    disappear MOUNTMORTAR1FINSIDEGROTTO_MISDREAVUS
    disappear MOUNTMORTAR1FINSIDEGROTTO_MAGNETON
    disappear MOUNTMORTAR1FINSIDEGROTTO_MAGCARGO
    appear MOUNTMORTAR1FINSIDEGROTTO_DUNSPARCE
    endcallback

.AppearMisdreavus:
    disappear MOUNTMORTAR1FINSIDEGROTTO_GLIGAR
    disappear MOUNTMORTAR1FINSIDEGROTTO_DUNSPARCE
    disappear MOUNTMORTAR1FINSIDEGROTTO_MAGNETON
    disappear MOUNTMORTAR1FINSIDEGROTTO_MAGCARGO
    appear MOUNTMORTAR1FINSIDEGROTTO_MISDREAVUS
    endcallback

MountMortar1FInsideGrottoGligarScript:
    faceplayer
    cry GLIGAR
    loadwildmon GLIGAR, 36
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear MOUNTMORTAR1FINSIDEGROTTO_GLIGAR
    reloadmapafterbattle
    end

MountMortar1FInsideGrottoMagnetonScript:
    faceplayer
    cry MAGNETON
    loadwildmon MAGNETON, 36
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear MOUNTMORTAR1FINSIDEGROTTO_MAGNETON
    reloadmapafterbattle
    end

MountMortar1FInsideGrottoMagcargoScript:
    faceplayer
    cry MAGCARGO
    loadwildmon MAGCARGO, 36
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear MOUNTMORTAR1FINSIDEGROTTO_MAGCARGO
    reloadmapafterbattle
    end

MountMortar1FInsideGrottoDunsparceScript:
    faceplayer
    cry DUNSPARCE
    loadwildmon DUNSPARCE, 36
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear MOUNTMORTAR1FINSIDEGROTTO_DUNSPARCE
    reloadmapafterbattle
    end

MountMortar1FInsideGrottoMisdreavusScript:
    faceplayer
    cry MISDREAVUS
    loadwildmon MISDREAVUS, 36
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear MOUNTMORTAR1FINSIDEGROTTO_MISDREAVUS
    reloadmapafterbattle
    end

MountMortar1FInsideGrottoSign:
	jumptext  MountMortar1FInsideGrottoSignText

MountMortar1FInsideGrottoSignText:
	text "This GROTTO get"
	line "visited by:"

	para "GLIGAR, DUNSPARCE,"
	line "MAGNETON, MAGCARGO"
	cont "and MISDREAVUS."
	done

MountMortar1FInsideGrotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  4,  5, MOUNT_MORTAR_1F_INSIDE, 7

    def_coord_events

    def_bg_events
	bg_event  5,  4, BGEVENT_READ, MountMortar1FInsideGrottoSign

    def_object_events
	object_event  4,  2, SPRITE_GLIGAR_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, MountMortar1FInsideGrottoGligarScript, EVENT_MOUNT_MORTAR_1F_INSIDE_GROTTO_GLIGAR
	object_event  5,  2, SPRITE_MAGNETON_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MountMortar1FInsideGrottoMagnetonScript, EVENT_MOUNT_MORTAR_1F_INSIDE_GROTTO_MAGNETON
	object_event  3,  4, SPRITE_MAGCARGO_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MountMortar1FInsideGrottoMagcargoScript, EVENT_MOUNT_MORTAR_1F_INSIDE_GROTTO_MAGCARGO
	object_event  2,  4, SPRITE_DUNSPARCE_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MountMortar1FInsideGrottoDunsparceScript, EVENT_MOUNT_MORTAR_1F_INSIDE_GROTTO_DUNSPARCE
	object_event  3,  3, SPRITE_MISDREAVUS_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, MountMortar1FInsideGrottoMisdreavusScript, EVENT_MOUNT_MORTAR_1F_INSIDE_GROTTO_MISDREAVUS
