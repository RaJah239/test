MACRO mon_prob
; percent, index
	db \1, \2 * 2
ENDM

GrassMonProbTable:
    table_width 2, GrassMonProbTable
    mon_prob 15,  0 ; 15% chance
    mon_prob 30,  1 ; 15% chance
    mon_prob 44,  2 ; 14% chance
    mon_prob 58,  3 ; 14% chance
    mon_prob 72,  4 ; 14% chance
    mon_prob 86,  5 ; 14% chance
    mon_prob 99,  6 ; 13% chance
    mon_prob 100, 7 ; 1% chance
    assert_table_length NUM_GRASSMON

WaterMonProbTable:
	table_width 2, WaterMonProbTable
	mon_prob 25,  0 ; 25% chance
	mon_prob 50,  1 ; 25% chance
	mon_prob 75,  2 ; 25% chance
	mon_prob 100, 3 ; 25% chance
	assert_table_length NUM_WATERMON
