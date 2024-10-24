	object_const_def
	const ROUTE30BERRYHOUSE_TEACHER

Route30BerryHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route30BerryHouseTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BERRY_FROM_ROUTE_30_HOUSE
	iftrue .GotBerry
	writetext Route30BerrySpeechHouseMonEatBerriesText
	promptbutton
	verbosegiveitem BERRY
	iffalse .NoRoom
	setevent EVENT_GOT_BERRY_FROM_ROUTE_30_HOUSE
	setmapscene ROUTE_30, SCENE_ROUTE_30_NOOP
.GotBerry:
	writetext Route30BerrySpeechHouseTreesInfoText
	waitbutton
.NoRoom:
	closetext
	end

Route30BerryHouseBookshelf:
	jumpstd MagazineBookshelfScript

Route30BerrySpeechHouseMonEatBerriesText:
	text "You know, #MON"
	line "eat BERRIES."

	para "Well, my #MON"
	line "got healthier by"
	cont "eating a BERRY."

	para "Here. I'll share"
	line "one with you!"
	done

Route30BerrySpeechHouseTreesInfoText:
	text "Some trees hold"
	line "BERRIES, others"
	cont "APRICORNS."
	
	para "Neither grow daily"
	line "though."
	
	para "Certain days of"
	line "the week, a tree"
	cont "will bare fruit."
	
	para "Wild #MON eat"
	line "or hold these"
	
	para "so, missing fruits"
	line "on trees could be"
	cont "their doing."
	
	para "A move that steals"
	line "held items may"
	
	para "net so some or"
	line "other useful items"
	cont "from wild #MON."
	done

Route30BerryHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_30, 1
	warp_event  3,  7, ROUTE_30, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, Route30BerryHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, Route30BerryHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route30BerryHouseTeacherScript, -1
