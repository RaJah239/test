    object_const_def
    const UNIONCAVEGROTTOS_SANDSHREW
    const UNIONCAVEGROTTOS_MACHOP
    const UNIONCAVEGROTTOS_CUBONE
    const UNIONCAVEGROTTOS_WOOPER
    const UNIONCAVEGROTTOS_ONIX
    const UNIONCAVEGROTTOS_ERIC_THE_EXPLORER

UnionCaveGrottos_MapScripts:
    def_scene_scripts
	scene_script UnionCaveGrottosScene, SCENE_UNION_CAVE_GROTTOS_MET_ERIC
	scene_script UnionCaveGrottosNoop1, SCENE_UNION_CAVE_GROTTOS_NOOP

    def_callbacks
    callback MAPCALLBACK_OBJECTS, UnionCaveGrottosPokemonOW

UnionCaveGrottosScene:
	sdefer UnionCaveGrottosEricTheExplorerScript
       end
UnionCaveGrottosNoop1:
       end

UnionCaveGrottosPokemonOW:
    checkevent EVENT_INITIALIZED_EVENTS
    iffalse .NoAppear
    random 20 ; random 5 - this makes it always have a Pokemon.
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
    reloadmapafterbattle
    end

UnionCaveGrottoMachop:
    faceplayer
    cry MACHOP
    loadwildmon MACHOP, 13
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear UNIONCAVEGROTTOS_MACHOP
    reloadmapafterbattle
    end

UnionCaveGrottoCubone:
    faceplayer
    cry CUBONE
    loadwildmon CUBONE, 13
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear UNIONCAVEGROTTOS_CUBONE
    reloadmapafterbattle
    end

UnionCaveGrottoWooper:
    faceplayer
    cry WOOPER
    loadwildmon WOOPER, 13
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear UNIONCAVEGROTTOS_WOOPER
    reloadmapafterbattle
    end

UnionCaveGrottoOnix:
    faceplayer
    cry ONIX
    loadwildmon ONIX, 13
    loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
    startbattle
    disappear UNIONCAVEGROTTOS_ONIX
    reloadmapafterbattle
    end

 UnionCaveGrottoSign:
	jumptext  UnionCaveGrottoSignText

UnionCaveGrottoSignText:
	text "This Grotto gets"
	line "visited by:"

	para "SANDSHREW, MACHOP,"
	line "CUBONE, ONIX and"
	cont "WOOPER."
	done

UnionCaveGrottosEricTheExplorerScript:
	showemote EMOTE_SHOCK, UNIONCAVEGROTTOS_ERIC_THE_EXPLORER, 15
	turnobject UNIONCAVEGROTTOS_ERIC_THE_EXPLORER, RIGHT
	turnobject PLAYER, LEFT
	opentext
	writetext UnionCaveGrottoEricTheExplorerYoureAnAdventurerTooText
	waitbutton
	closetext
	applymovement UNIONCAVEGROTTOS_ERIC_THE_EXPLORER, EricTakesAStepUp
	applymovement PLAYER, PlayerTakesAStepLeft
	turnobject PLAYER, UP
	applymovement UNIONCAVEGROTTOS_ERIC_THE_EXPLORER, UnionCaveGrottoEricTheExplorerExits
	turnobject PLAYER, RIGHT
	playsound SFX_ENTER_DOOR
	setscene SCENE_UNION_CAVE_GROTTOS_NOOP
	disappear UNIONCAVEGROTTOS_ERIC_THE_EXPLORER
	setevent EVENT_MET_ERIC_THE_EXPLORER
	clearevent EVENT_VICTORY_ROAD_ERIC_THE_EXPLORER
	end

EricTakesAStepUp:
	step UP
	step_end

PlayerTakesAStepLeft:
	step LEFT
	step_end

UnionCaveGrottoEricTheExplorerExits:
	step RIGHT
	step DOWN
	step_end

UnionCaveGrottoEricTheExplorerYoureAnAdventurerTooText:
	text "Whoa! Hi, I'm Eric"
	line "the explorer."
	
	para "You must be one"
	line "too!"
	
	para "<PLAY_G> is it?"
	line "Happy to meet ya!"
	
	para "You've caught me at"
	line "a great time - I'm"
	
	para "on a quest to find"
	line "all Grottos and"
	
	para "note the #MON"
	line "that visit each."
	
	para "See this sign to"
	line "my left?"
	
	para "It lists all the"
	line "#MON that some-"
	
	para "times visit this"
	line "Grotto."

	para "I made it. I'll"
	line "add signs to each."	
	
	para "There're many more"
	line "Grottos out there!"
	
	para "I've got work to"
	line "do!"
	
	para "Let's meet again!"
	
	para "Enjoy your adven-"
	line "ture - I will too!"
	cont "Bye!"
	done

UnionCaveGrottos_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event  4,  5, UNION_CAVE_B1F, 6


    def_coord_events

    def_bg_events
	bg_event  2,  5, BGEVENT_READ, UnionCaveGrottoSign

    def_object_events
	object_event  2,  2, SPRITE_SANDSHREW_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnionCaveGrottoSandshrew, EVENT_UNION_CAVE_GROTTO_SANDSHREW_OW
	object_event  5,  2, SPRITE_MACHOP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnionCaveGrottoMachop, EVENT_UNION_CAVE_GROTTO_MACHOP_OW
	object_event  3,  3, SPRITE_CUBONE_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnionCaveGrottoCubone, EVENT_UNION_CAVE_GROTTO_CUBONE_OW
	object_event  5,  4, SPRITE_WOOPER_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnionCaveGrottoWooper, EVENT_UNION_CAVE_GROTTO_WOOPER_OW
	object_event  2,  4, SPRITE_ONIX_OW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnionCaveGrottoOnix, EVENT_UNION_CAVE_GROTTO_ONIX_OW
	object_event  3,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnionCaveGrottosEricTheExplorerScript, EVENT_MET_ERIC_THE_EXPLORER
