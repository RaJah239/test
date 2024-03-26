	object_const_def
	const ROUTE12SUPERRODHOUSE_FISHING_GURU2

Route12SuperRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route12SuperRodHouseFishingGuruScript:
	faceplayer
	opentext
	writetext OfferSuperRodText
	waitbutton
	closetext
	end

OfferSuperRodText:
	text "My four brothers"
	line "live in JOHTO."

	para "You should pay"
	line "them a visit if"
	cont "you haven't."
	done

Route12SuperRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_12, 1
	warp_event  3,  7, ROUTE_12, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route12SuperRodHouseFishingGuruScript, -1
