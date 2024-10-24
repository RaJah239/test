TreeMons::
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	; dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	; dw TreeMonSet_City ; unused

RockSmashMons::
	; broke off from the above table, for nayru's pokedex
	; delineation was needed because there is no 'rare' table for rocksmash
	table_width 2, RockSmashMons
	dw TreeMonSet_Rock
	assert_table_length NUM_ROCKSMASH_SETS

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
TreeMonSet_Town:
TreeMonSet_Route:
TreeMonSet_Kanto:
TreeMonSet_Lake:
TreeMonSet_Forest:
; common
	db 6, AIPOM,       13
	db 2, ARIADOS,     14
	db 6, BEEDRILL,    14
	db 6, BUTTERFREE,  14
	db 1, CATERPIE,    5
	db 5, EKANS,       11
	db 6, EXEGGCUTE,   10
	db 2, GLIGAR,      10
	db 7, HERACROSS,   9
	db 4, HOOTHOOT,    12
	db 1, KAKUNA,      7
	db 2, LEDIAN,      14
	db 4, LEDYBA,      8
	db 5, MANKEY,      11
	db 1, METAPOD,     7
	db 1, PARAS,       12
	db 5, PINECO,      10
	db 7, PINSIR,      9
	db 7, SCYTHER,     9
	db 2, SKARMORY,    10
	db 3, SPEAROW,     12
	db 4, SPINARAK,    8
	db 5, TEDDIURSA,   10
	db 3, VENONAT,     12
	db 1, WEEDLE,      5
	db 3, YANMA,       13
	db 1, ZUBAT,       10
	db -1
; rare
	db 6, AIPOM,       13
	db 2, ARIADOS,     14
	db 6, BEEDRILL,    14
	db 6, BUTTERFREE,  14
	db 1, CATERPIE,    5
	db 5, EKANS,       11
	db 6, EXEGGCUTE,   10
	db 2, GLIGAR,      10
	db 7, HERACROSS,   9
	db 4, HOOTHOOT,    12
	db 1, KAKUNA,      7
	db 2, LEDIAN,      14
	db 4, LEDYBA,      8
	db 5, MANKEY,      11
	db 1, METAPOD,     7
	db 1, PARAS,       12
	db 5, PINECO,      10
	db 7, PINSIR,      9
	db 7, SCYTHER,     9
	db 2, SKARMORY,    10
	db 3, SPEAROW,     12
	db 4, SPINARAK,    8
	db 5, TEDDIURSA,   10
	db 3, VENONAT,     12
	db 1, WEEDLE,      5
	db 3, YANMA,       13
	db 1, ZUBAT,       10
	db -1

; Rock smash sets dont have common/rare tables
; can have as many entries as you want as long as the % adds up to 100
; feel free to add new rock smash sets
TreeMonSet_Rock:
	db 20, SHUCKLE,    26
	db 15, KINGLER,    28
	db 15, GOLEM,      30
	db 15, DUGTRIO,    29
	db 15, PUPITAR,    30
	db 5, GRAVELER,    29
	db 5, GEODUDE,     25
	db 5, DIGLETT,     23
	db 5, KRABBY,      24
	db -1
