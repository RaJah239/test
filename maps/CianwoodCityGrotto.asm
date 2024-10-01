    object_const_def
    const CIANWOOD_GROTTO_QWILFISH
    const CIANWOOD_GROTTO_LANTURN
    const CIANWOOD_GROTTO_MANTINE
    const CIANWOOD_GROTTO_SEAKING
    const CIANWOOD_GROTTO_OCTILLERY
      
CianwoodCityGrotto_MapScripts:
    def_scene_scripts

    def_callbacks
     callback MAPCALLBACK_OBJECTS, CianwoodGrottosPokemonOW
 
CianwoodGrottosPokemonOW:
    checkflag ENGINE_DAILY_CIANWOOD_GROTTOS
    iftrue .NoAppear
    random 20 ; random 5 - this makes is always have a Pokemon.
    ifequal 0, .AppearQwilfish
    ifequal 1, .AppearLantern
    ifequal 2, .AppearMantine
    ifequal 3, .AppearSeaking
    ifequal 4, .AppearOctillery
.NoAppear:
    disappear CIANWOOD_GROTTO_QWILFISH
    disappear CIANWOOD_GROTTO_LANTURN
    disappear CIANWOOD_GROTTO_MANTINE
    disappear CIANWOOD_GROTTO_SEAKING
    disappear CIANWOOD_GROTTO_OCTILLERY
    endcallback

.AppearQwilfish:
    disappear CIANWOOD_GROTTO_OCTILLERY
    disappear CIANWOOD_GROTTO_LANTURN
    disappear CIANWOOD_GROTTO_MANTINE
    disappear CIANWOOD_GROTTO_SEAKING
    appear CIANWOOD_GROTTO_QWILFISH
    endcallback

.AppearLantern:
    disappear CIANWOOD_GROTTO_OCTILLERY
    disappear CIANWOOD_GROTTO_MANTINE
    disappear CIANWOOD_GROTTO_SEAKING
    disappear CIANWOOD_GROTTO_QWILFISH
    appear CIANWOOD_GROTTO_LANTURN
    endcallback

.AppearMantine:
    disappear CIANWOOD_GROTTO_OCTILLERY
    disappear CIANWOOD_GROTTO_SEAKING
    disappear CIANWOOD_GROTTO_QWILFISH
    disappear CIANWOOD_GROTTO_LANTURN
    appear CIANWOOD_GROTTO_MANTINE
    endcallback

.AppearSeaking:
    disappear CIANWOOD_GROTTO_OCTILLERY
    disappear CIANWOOD_GROTTO_MANTINE
    disappear CIANWOOD_GROTTO_QWILFISH
    disappear CIANWOOD_GROTTO_LANTURN
    appear CIANWOOD_GROTTO_SEAKING
    endcallback

.AppearOctillery:
    disappear CIANWOOD_GROTTO_QWILFISH
    disappear CIANWOOD_GROTTO_LANTURN
    disappear CIANWOOD_GROTTO_MANTINE
    disappear CIANWOOD_GROTTO_SEAKING
    appear CIANWOOD_GROTTO_OCTILLERY
    endcallback


CianwoodCityGrottoQwilfish:
    faceplayer
    cry QWILFISH
    loadwildmon QWILFISH, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear CIANWOOD_GROTTO_QWILFISH
    setflag ENGINE_DAILY_CIANWOOD_GROTTOS
    reloadmapafterbattle
    end

CianwoodCityGrottoLanturn:
    faceplayer
    cry LANTURN
    loadwildmon LANTURN, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear CIANWOOD_GROTTO_LANTURN
    setflag ENGINE_DAILY_CIANWOOD_GROTTOS
    reloadmapafterbattle
    end

CianwoodCityGrottoMantine:
    faceplayer
    cry MANTINE
    loadwildmon MANTINE, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear CIANWOOD_GROTTO_MANTINE
    setflag ENGINE_DAILY_CIANWOOD_GROTTOS
    reloadmapafterbattle
    end

CianwoodCityGrottoSeaking:
    faceplayer
    cry SEAKING
    loadwildmon SEAKING, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear CIANWOOD_GROTTO_SEAKING
    setflag ENGINE_DAILY_CIANWOOD_GROTTOS
    reloadmapafterbattle
    end

CianwoodCityGrottoOctillery:
    faceplayer
    cry OCTILLERY
    loadwildmon OCTILLERY, 40
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear CIANWOOD_GROTTO_OCTILLERY
    setflag ENGINE_DAILY_CIANWOOD_GROTTOS
    reloadmapafterbattle
    end

CianwoodCityGrotto_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  7,  9, CIANWOOD_CITY, 8

    def_coord_events

    def_bg_events

    def_object_events
	object_event  9,  7, SPRITE_QWILFISH_OW, SPRITEMOVEDATA_SWIM_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityGrottoQwilfish, EVENT_CIANWOOD_GROTTO_QWILFISH_OW
	object_event  5,  6, SPRITE_LANTURN_OW, SPRITEMOVEDATA_SWIM_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityGrottoLanturn, EVENT_CIANWOOD_GROTTO_LANTURN_OW
	object_event  7,  5, SPRITE_MANTINE_OW, SPRITEMOVEDATA_SWIM_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityGrottoMantine, EVENT_CIANWOOD_GROTTO_MANTINE_OW
	object_event  9,  4, SPRITE_SEAKING_OW, SPRITEMOVEDATA_SWIM_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityGrottoSeaking, EVENT_CIANWOOD_GROTTO_SEAKING_OW
	object_event  4,  4, SPRITE_OCTILLERY_OW, SPRITEMOVEDATA_SWIM_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityGrottoOctillery, EVENT_CIANWOOD_GROTTO_OCTILLERY_OW
