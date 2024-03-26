	object_const_def
	const GOLDENRODNAMERATER_NAME_RATER

GoldenrodNameRater_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodNameRater:
	faceplayer
	opentext
	special NameRater
	waitbutton
	closetext
	end

SwarmGrampsScript:
	faceplayer
	opentext
	checkflag ENGINE_SWARM
	iftrue .skiprandomswarm
	random 3
	ifequal 0, .dunsparce
	ifequal 1, .yanma
	ifequal 2, .qwilfish
	ifequal 3, .vulpix

.dunsparce
	setflag ENGINE_SWARM
	swarm DARK_CAVE_VIOLET_ENTRANCE
	writetext SwarmDunsparceText
	waitbutton
	closetext
	end

.yanma
	setflag ENGINE_SWARM
	swarm ROUTE_35
	writetext SwarmYanmaText
	waitbutton
	closetext
	end

.qwilfish
	setflag ENGINE_SWARM
	swarm ROUTE_32
	writetext SwarmQwilfishText
	waitbutton
	closetext
	end

.vulpix
	setflag ENGINE_SWARM
	swarm ROUTE_37
	writetext SwarmVulpixText
	waitbutton
	closetext
	end

.skiprandomswarm
	writetext SkipSwarmText
	waitbutton
	closetext
	end

SwarmDunsparceText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of DUNSPARCE"
	cont "at DARK CAVE."
	done
	
SwarmYanmaText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of YANMA"
	cont "on ROUTE 35."
	done
	
SwarmQwilfishText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of QWILFISH"
	cont "on ROUTE 32."
	done

SwarmVulpixText:
	text "Let me see…"
	line "What did the news say?"

	para "Oh yes! There's a"
	line "swarm of VULPIX"
	cont "on ROUTE 37."
	done

SkipSwarmText:
	text "Often #MON"
	line "of unusual colors"

	para "are reported in"
	line "swarms."
	done

GoldenrodNameRaterBookshelf:
	jumpstd DifficultBookshelfScript

GoldenrodNameRaterRadio:
	jumpstd Radio2Script

GoldenrodNameRater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 8
	warp_event  3,  7, GOLDENROD_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, GoldenrodNameRaterBookshelf
	bg_event  1,  1, BGEVENT_READ, GoldenrodNameRaterBookshelf
	bg_event  7,  1, BGEVENT_READ, GoldenrodNameRaterRadio

	def_object_events
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodNameRater, -1
	object_event  2,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SwarmGrampsScript, -1
