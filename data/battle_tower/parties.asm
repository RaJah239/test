BattleTowerMons:
; 10 groups (one per floor level) of 21 mons (BATTLETOWER_NUM_UNIQUE_MON).
	table_width NICKNAMED_MON_STRUCT_LENGTH, BattleTowerMons

; BattleTowerMons group 1

	db JOLTEON
	db MIRACLEBERRY
	db THUNDERBOLT, HYPER_BEAM, SHADOW_BALL, ROAR
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SANDA-SU@@@"

	db ESPEON
	db LEFTOVERS
	db MUD_SLAP, PSYCHIC_M, PSYCH_UP, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "E-HUi@@@@@@"

	db UMBREON
	db GOLD_BERRY
	db SHADOW_BALL, IRON_TAIL, PSYCH_UP, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BURAtuKI-@@"

	db WOBBUFFET
	db FOCUS_BAND
	db COUNTER, MIRROR_COAT, SAFEGUARD, DESTINY_BOND
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SO-NANSU@@@"

	db KANGASKHAN
	db MIRACLEBERRY
	db REVERSAL, HYPER_BEAM, EARTHQUAKE, ATTRACT
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "GARU-RA@@@@"

	db CORSOLA
	db SCOPE_LENS
	db SURF, PSYCHIC_M, RECOVER, ANCIENTPOWER
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SANI-GO@@@@"

	db MILTANK
	db GOLD_BERRY
	db BLIZZARD, EARTHQUAKE, HYPER_BEAM, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "MIRUTANKU@@"

	db AERODACTYL
	db LEFTOVERS
	db HYPER_BEAM, SUPERSONIC, EARTHQUAKE, BITE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PUTERA@@@@@"

	db LAPRAS
	db MIRACLEBERRY
	db BLIZZARD, SURF, THUNDERBOLT, PSYCHIC_M
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RAPURASU@@@"

	db SNEASEL
	db GOLD_BERRY
	db SLASH, FAINT_ATTACK, SURF, BLIZZARD
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "NIyu-RA@@@@"

	db PORYGON2
	db BRIGHTPOWDER
	db PSYCHIC_M, BLIZZARD, HYPER_BEAM, TRI_ATTACK
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PORIGON2@@@"

	db MISDREAVUS
	db FOCUS_BAND
	db PERISH_SONG, MEAN_LOOK, PAIN_SPLIT, SHADOW_BALL
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "MUUMA@@@@@@"

	db HOUNDOUR
	db GOLD_BERRY
	db FAINT_ATTACK, SOLARBEAM, ROAR, SUNNY_DAY
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "DERUBIRU@@@"

	db GIRAFARIG
	db KINGS_ROCK
	db PSYBEAM, MUD_SLAP, SHADOW_BALL, AGILITY
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KIRINRIKI@@"

	db BLISSEY
	db QUICK_CLAW
	db HEADBUTT, SOLARBEAM, ROLLOUT, STRENGTH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAPINASU@@@"

	db SNORLAX
	db MIRACLEBERRY
	db HEADBUTT, PROTECT, SNORE, SURF
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KABIGON@@@@"

	db EXEGGUTOR
	db KINGS_ROCK
	db TOXIC, GIGA_DRAIN, THIEF, CONFUSION
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "NAtuSI-@@@@"

	db HERACROSS
	db GOLD_BERRY
	db REVERSAL, ENDURE, COUNTER, ROCK_SMASH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HERAKUROSU@"

	db UNOWN
	db BERRY
	db HIDDEN_POWER, 0, 0, 0
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "ANNO-N@@@@@"

	db TAUROS
	db KINGS_ROCK
	db HEADBUTT, SWAGGER, TAIL_WHIP, ICY_WIND
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KENTAROSU@@"

	db MR__MIME
	db QUICK_CLAW
	db TOXIC, PSYCH_UP, FIRE_PUNCH, HEADBUTT
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BARIYA-DO@@"


; BattleTowerMons group 2

	db UMBREON
	db LEFTOVERS
	db PROTECT, TOXIC, MUD_SLAP, ATTRACT
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BURAtuKI-@@"

	db STARMIE
	db GOLD_BERRY
	db RECOVER, PSYCHIC_M, SURF, PSYCH_UP
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SUTA-MI-@@@"

	db GYARADOS
	db MIRACLEBERRY
	db HYPER_BEAM, DRAGON_RAGE, THUNDERBOLT, FIRE_BLAST
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "GIyaRADOSU@"

	db STEELIX
	db GOLD_BERRY
	db ROAR, IRON_TAIL, SWAGGER, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAGANE-RU@@"

	db ALAKAZAM
	db BERRY_JUICE
	db PSYCHIC_M, PSYCH_UP, TOXIC, THUNDERPUNCH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HU-DEiN@@@@"

	db ARCANINE
	db BRIGHTPOWDER
	db FLAMETHROWER, ROAR, HYPER_BEAM, IRON_TAIL
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "UINDEi@@@@@"

	db HERACROSS
	db FOCUS_BAND
	db ENDURE, REVERSAL, MEGAHORN, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HERAKUROSU@"

	db EXEGGUTOR
	db LEFTOVERS
	db HYPER_BEAM, PSYCHIC_M, TOXIC, DREAM_EATER
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "NAtuSI-@@@@"

	db AERODACTYL
	db GOLD_BERRY
	db REST, HYPER_BEAM, EARTHQUAKE, DRAGON_RAGE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PUTERA@@@@@"

	db BLISSEY
	db BRIGHTPOWDER
	db PSYCHIC_M, SUBMISSION, SOFTBOILED, COUNTER
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAPINASU@@@"

	db LAPRAS
	db GOLD_BERRY
	db PSYCHIC_M, THUNDERBOLT, BLIZZARD, CONFUSE_RAY
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RAPURASU@@@"

	db PIKACHU
	db LIGHT_BALL
	db THUNDERBOLT, THUNDER_WAVE, STRENGTH, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PIKATIyuU@@"

	db SCIZOR
	db FOCUS_BAND
	db STEEL_WING, SLASH, TOXIC, SANDSTORM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAtuSAMU@@@"

	db HITMONCHAN
	db GOLD_BERRY
	db THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH, MEGA_PUNCH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "EBIWARA-@@@"

	db TAUROS
	db BRIGHTPOWDER
	db THUNDERBOLT, EARTHQUAKE, HYPER_BEAM, BLIZZARD
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KENTAROSU@@"

	db AZUMARILL
	db MYSTIC_WATER
	db SURF, BLIZZARD, ATTRACT, RAIN_DANCE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "MARIRURI@@@"

	db MILTANK
	db KINGS_ROCK
	db EARTHQUAKE, THUNDER, ATTRACT, SURF
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "MIRUTANKU@@"

	db WIGGLYTUFF
	db GOLD_BERRY
	db HYPER_BEAM, BLIZZARD, FIRE_BLAST, ATTRACT
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PUKURIN@@@@"

	db WIGGLYTUFF
	db PINK_BOW
	db PSYCHIC_M, SWAGGER, PSYCH_UP, HEADBUTT
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PUKURIN@@@@"

	db NIDOKING
	db BERRY
	db BLIZZARD, EARTHQUAKE, SURF, THUNDERPUNCH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "NIDOKINGU@@"

	db QUAGSIRE
	db QUICK_CLAW
	db AMNESIA, EARTHQUAKE, SURF, RAIN_DANCE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "NUO-@@@@@@@"


; BattleTowerMons group 3

	db JOLTEON
	db MIRACLEBERRY
	db THUNDERBOLT, THUNDER_WAVE, ROAR, MUD_SLAP
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SANDA-SU@@@"

	db POLIWRATH
	db BRIGHTPOWDER
	db DOUBLE_TEAM, SURF, FISSURE, SUBMISSION
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "NIyoROBON@@"

	db STARMIE
	db LEFTOVERS
	db THUNDER_WAVE, PSYCHIC_M, RECOVER, SURF
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SUTA-MI-@@@"

	db JYNX
	db GOLD_BERRY
	db BLIZZARD, LOVELY_KISS, DREAM_EATER, ATTRACT
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RU-ZIyuRA@@"

	db DUGTRIO
	db KINGS_ROCK
	db EARTHQUAKE, SLUDGE_BOMB, SLASH, MUD_SLAP
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "DAGUTORIO@@"

	db BELLOSSOM
	db BRIGHTPOWDER
	db GIGA_DRAIN, SUNNY_DAY, SOLARBEAM, DOUBLE_TEAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KIREIHANA@@"

	db BLISSEY
	db LEFTOVERS
	db TOXIC, REFLECT, SOFTBOILED, PROTECT
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAPINASU@@@"

	db HOUNDOOM
	db CHARCOAL
	db FLAMETHROWER, CRUNCH, SHADOW_BALL, DREAM_EATER
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HERUGA-@@@@"

	db MACHAMP
	db MIRACLEBERRY
	db CROSS_CHOP, ICE_PUNCH, EARTHQUAKE, FIRE_BLAST
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KAIRIKI-@@@"

	db CROBAT
	db GOLD_BERRY
	db ATTRACT, CONFUSE_RAY, TOXIC, WING_ATTACK
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KUROBAtuTO@"

	db PORYGON2
	db BRIGHTPOWDER
	db PSYCHIC_M, RECOVER, HYPER_BEAM, TRI_ATTACK
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PORIGON2@@@"

	db MAROWAK
	db THICK_CLUB
	db EARTHQUAKE, RETURN, HYPER_BEAM, BONEMERANG
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "GARAGARA@@@"

	db ELECTRODE
	db BRIGHTPOWDER
	db LIGHT_SCREEN, THUNDERBOLT, PROTECT, THUNDER
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "MARUMAIN@@@"

	db LAPRAS
	db LEFTOVERS
	db RAIN_DANCE, WATER_GUN, ICY_WIND, STRENGTH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RAPURASU@@@"

	db LANTURN
	db GOLD_BERRY
	db RAIN_DANCE, THUNDER, SURF, FLAIL
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RANTA-N@@@@"

	db ESPEON
	db MIRACLEBERRY
	db CONFUSION, SWIFT, TOXIC, PSYCH_UP
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "E-HUi@@@@@@"

	db TENTACRUEL
	db KINGS_ROCK
	db WRAP, TOXIC, SLUDGE_BOMB, BUBBLEBEAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "DOKUKURAGE@"

	db GENGAR
	db GOLD_BERRY
	db THIEF, LICK, NIGHT_SHADE, GIGA_DRAIN
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "GENGA-@@@@@"

	db URSARING
	db GOLD_BERRY
	db HEADBUTT, PROTECT, ROAR, LEER
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RINGUMA@@@@"

	db FEAROW
	db BRIGHTPOWDER
	db MIRROR_MOVE, PURSUIT, PECK, SWIFT
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "ONIDORIRU@@"

	db PRIMEAPE
	db MIRACLEBERRY
	db LOW_KICK, KARATE_CHOP, REVERSAL, FOCUS_ENERGY
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "OKORIZARU@@"


; BattleTowerMons group 4

	db TAUROS
	db GOLD_BERRY
	db RETURN, HYPER_BEAM, EARTHQUAKE, IRON_TAIL
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KENTAROSU@@"

	db KINGDRA
	db LEFTOVERS
	db SURF, DRAGONBREATH, HYPER_BEAM, BLIZZARD
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KINGUDORA@@"

	db SNORLAX
	db QUICK_CLAW
	db ATTRACT, BODY_SLAM, PSYCH_UP, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KABIGON@@@@"

	db LAPRAS
	db LEFTOVERS
	db THUNDERBOLT, ICE_BEAM, CONFUSE_RAY, SURF
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RAPURASU@@@"

	db STEELIX
	db GOLD_BERRY
	db SANDSTORM, IRON_TAIL, EARTHQUAKE, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAGANE-RU@@"

	db ALAKAZAM
	db KINGS_ROCK
	db PSYCHIC_M, THUNDERPUNCH, RECOVER, FIRE_PUNCH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HU-DEiN@@@@"

	db STARMIE
	db LEFTOVERS
	db BLIZZARD, THUNDERBOLT, SURF, PSYCHIC_M
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SUTA-MI-@@@"

	db WOBBUFFET
	db GOLD_BERRY
	db COUNTER, MIRROR_COAT, SAFEGUARD, DESTINY_BOND
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SO-NANSU@@@"

	db GOLEM
	db FOCUS_BAND
	db EXPLOSION, EARTHQUAKE, MEGA_PUNCH, ROCK_SLIDE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "GORO-NIya@@"

	db SCIZOR
	db SCOPE_LENS
	db SLASH, STEEL_WING, PURSUIT, HYPER_BEAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAtuSAMU@@@"

	db DUGTRIO
	db KINGS_ROCK
	db EARTHQUAKE, HYPER_BEAM, SLUDGE_BOMB, MUD_SLAP
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "DAGUTORIO@@"

	db SLOWBRO
	db MIRACLEBERRY
	db SURF, PSYCHIC_M, EARTHQUAKE, BLIZZARD
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "YADORAN@@@@"

	db PORYGON2
	db NO_ITEM
	db CONVERSION2, CONVERSION, PSYBEAM, THIEF
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PORIGON2@@@"

	db ARCANINE
	db CHARCOAL
	db FLAME_WHEEL, LEER, BODY_SLAM, ROAR
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "UINDEi@@@@@"

	db FORRETRESS
	db LEFTOVERS
	db RAPID_SPIN, PROTECT, TOXIC, SANDSTORM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HUoRETOSU@@"

	db OMASTAR
	db GOLD_BERRY
	db CURSE, WATER_GUN, ANCIENTPOWER, ROCK_SMASH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "OMUSUTA-@@@"

	db CHARIZARD
	db KINGS_ROCK
	db FIRE_SPIN, DRAGON_RAGE, FLY, SLASH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RIZA-DON@@@"

	db EXEGGUTOR
	db BRIGHTPOWDER
	db EGG_BOMB, STOMP, PSYCH_UP, CONFUSION
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "NAtuSI-@@@@"

	db HYPNO
	db BRIGHTPOWDER
	db CONFUSION, THUNDERPUNCH, HEADBUTT, DISABLE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SURI-PA-@@@"

	db MUK
	db QUICK_CLAW
	db SCREECH, TOXIC, SLUDGE, HARDEN
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BETOBETON@@"

	db ELECTABUZZ
	db KINGS_ROCK
	db LIGHT_SCREEN, THUNDERPUNCH, SWIFT, SNORE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "EREBU-@@@@@"


; BattleTowerMons group 5

	db KINGDRA
	db GOLD_BERRY
	db SURF, HYPER_BEAM, BLIZZARD, DRAGONBREATH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KINGUDORA@@"

	db HOUNDOOM
	db MIRACLEBERRY
	db REST, CRUNCH, DREAM_EATER, FLAMETHROWER
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HERUGA-@@@@"

	db SHUCKLE
	db LEFTOVERS
	db SANDSTORM, REST, TOXIC, WRAP
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "TUBOTUBO@@@"

	db SNORLAX
	db LEFTOVERS
	db HYPER_BEAM, EARTHQUAKE, SURF, PSYCH_UP
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KABIGON@@@@"

	db LAPRAS
	db GOLD_BERRY
	db THUNDERBOLT, SURF, CONFUSE_RAY, BLIZZARD
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RAPURASU@@@"

	db JOLTEON
	db KINGS_ROCK
	db THUNDERBOLT, THUNDER_WAVE, SHADOW_BALL, HIDDEN_POWER
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SANDA-SU@@@"

	db SCIZOR
	db LEFTOVERS
	db HYPER_BEAM, SLASH, AGILITY, METAL_CLAW
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAtuSAMU@@@"

	db SLOWKING
	db MINT_BERRY
	db REST, SURF, PSYCHIC_M, AMNESIA
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "YADOKINGU@@"

	db MACHAMP
	db GOLD_BERRY
	db CROSS_CHOP, EARTHQUAKE, FIRE_BLAST, THUNDERPUNCH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KAIRIKI-@@@"

	db STARMIE
	db SCOPE_LENS
	db THUNDER_WAVE, RECOVER, THUNDERBOLT, SURF
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SUTA-MI-@@@"

	db DUGTRIO
	db KINGS_ROCK
	db EARTHQUAKE, SLASH, HYPER_BEAM, SLUDGE_BOMB
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "DAGUTORIO@@"

	db ELECTRODE
	db MIRACLEBERRY
	db THUNDERBOLT, EXPLOSION, MIRROR_COAT, REST
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "MARUMAIN@@@"

	db AERODACTYL
	db KINGS_ROCK
	db HYPER_BEAM, EARTHQUAKE, FIRE_BLAST, IRON_TAIL
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PUTERA@@@@@"

	db CROBAT
	db LEFTOVERS
	db CONFUSE_RAY, ATTRACT, HYPER_BEAM, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KUROBAtuTO@"

	db ZAPDOS
	db MIRACLEBERRY
	db DRILL_PECK, THUNDERBOLT, THUNDER_WAVE, HYPER_BEAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SANDA-@@@@@"

	db SKARMORY
	db GOLD_BERRY
	db SANDSTORM, FLY, STEEL_WING, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "EA-MUDO@@@@"

	db FORRETRESS
	db LEFTOVERS
	db SANDSTORM, TOXIC, EXPLOSION, SWAGGER
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HUoRETOSU@@"

	db STEELIX
	db MIRACLEBERRY
	db SANDSTORM, IRON_TAIL, REST, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAGANE-RU@@"

	db GIRAFARIG
	db SCOPE_LENS
	db DREAM_EATER, CRUNCH, PSYCHIC_M, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KIRINRIKI@@"

	db GYARADOS
	db MIRACLEBERRY
	db HYPER_BEAM, SURF, RAIN_DANCE, ZAP_CANNON
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "GIyaRADOSU@"

	db ARTICUNO
	db GOLD_BERRY
	db BLIZZARD, HYPER_BEAM, ROAR, ICY_WIND
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HURI-ZA-@@@"


; BattleTowerMons group 6

	db KINGDRA
	db LEFTOVERS
	db DRAGONBREATH, SURF, HYPER_BEAM, BLIZZARD
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KINGUDORA@@"

	db TYRANITAR
	db GOLD_BERRY
	db CRUNCH, EARTHQUAKE, ROCK_SLIDE, HYPER_BEAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BANGIRASU@@"

	db HOUNDOOM
	db MIRACLEBERRY
	db FLAMETHROWER, CRUNCH, DREAM_EATER, REST
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HERUGA-@@@@"

	db PORYGON2
	db LEFTOVERS
	db BLIZZARD, RECOVER, TOXIC, PSYCHIC_M
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PORIGON2@@@"

	db MACHAMP
	db QUICK_CLAW
	db FIRE_PUNCH, CROSS_CHOP, THUNDERPUNCH, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KAIRIKI-@@@"

	db ZAPDOS
	db MINT_BERRY
	db REST, DRILL_PECK, THUNDERBOLT, THUNDER_WAVE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SANDA-@@@@@"

	db WOBBUFFET
	db GOLD_BERRY
	db COUNTER, MIRROR_COAT, DESTINY_BOND, SAFEGUARD
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SO-NANSU@@@"

	db AERODACTYL
	db LEFTOVERS
	db HYPER_BEAM, SUPERSONIC, EARTHQUAKE, BITE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PUTERA@@@@@"

	db DRAGONITE
	db MIRACLEBERRY
	db HYPER_BEAM, ICY_WIND, THUNDERBOLT, SURF
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KAIRIyu-@@@"

	db UMBREON
	db GOLD_BERRY
	db MUD_SLAP, MOONLIGHT, PSYCHIC_M, FAINT_ATTACK
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BURAtuKI-@@"

	db ARCANINE
	db CHARCOAL
	db FLAMETHROWER, CRUNCH, EXTREMESPEED, IRON_TAIL
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "UINDEi@@@@@"

	db SKARMORY
	db MIRACLEBERRY
	db STEEL_WING, FLY, TOXIC, PROTECT
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "EA-MUDO@@@@"

	db BLISSEY
	db LEFTOVERS
	db SOFTBOILED, TOXIC, PROTECT, PSYCHIC_M
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAPINASU@@@"

	db SNORLAX
	db PINK_BOW
	db ROCK_SLIDE, SURF, BODY_SLAM, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KABIGON@@@@"

	db HERACROSS
	db FOCUS_BAND
	db REVERSAL, MEGAHORN, EARTHQUAKE, COUNTER
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HERAKUROSU@"

	db JYNX
	db MIRACLEBERRY
	db BLIZZARD, PSYCHIC_M, SHADOW_BALL, ICY_WIND
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RU-ZIyuRA@@"

	db BLASTOISE
	db GOLD_BERRY
	db SURF, EARTHQUAKE, RAPID_SPIN, BLIZZARD
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KAMEtuKUSU@"

	db RHYDON
	db QUICK_CLAW
	db EARTHQUAKE, SURF, IRON_TAIL, ROCK_SLIDE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SAIDON@@@@@"

	db SANDSLASH
	db SCOPE_LENS
	db EARTHQUAKE, SLASH, HYPER_BEAM, SNORE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SANDOPAN@@@"

	db PARASECT
	db GOLD_BERRY
	db SPORE, GIGA_DRAIN, HYPER_BEAM, SLUDGE_BOMB
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PARASEKUTO@"

	db GOLEM
	db BRIGHTPOWDER
	db EXPLOSION, EARTHQUAKE, FIRE_PUNCH, FRUSTRATION
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "GORO-NIya@@"


; BattleTowerMons group 7

	db JOLTEON
	db MIRACLEBERRY
	db THUNDERBOLT, HYPER_BEAM, SHADOW_BALL, ROAR
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SANDA-SU@@@"

	db VAPOREON
	db LEFTOVERS
	db BLIZZARD, SHADOW_BALL, SURF, MUD_SLAP
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SIyaWA-ZU@@"

	db UMBREON
	db GOLD_BERRY
	db FAINT_ATTACK, MOONLIGHT, PSYCH_UP, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BURAtuKI-@@"

	db BLISSEY
	db GOLD_BERRY
	db COUNTER, SOFTBOILED, SHADOW_BALL, THUNDERBOLT
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAPINASU@@@"

	db SNORLAX
	db LEFTOVERS
	db ROCK_SLIDE, EARTHQUAKE, BLIZZARD, SHADOW_BALL
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KABIGON@@@@"

	db HOUNDOOM
	db KINGS_ROCK
	db CRUNCH, FLAMETHROWER, FAINT_ATTACK, ROAR
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HERUGA-@@@@"

	db TYRANITAR
	db LEFTOVERS
	db EARTHQUAKE, CRUNCH, ROCK_SLIDE, HYPER_BEAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BANGIRASU@@"

	db ZAPDOS
	db GOLD_BERRY
	db THUNDERBOLT, DRILL_PECK, THUNDER_WAVE, HYPER_BEAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SANDA-@@@@@"

	db EXEGGUTOR
	db MIRACLEBERRY
	db REST, EXPLOSION, PSYCHIC_M, GIGA_DRAIN
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "NAtuSI-@@@@"

	db UMBREON
	db GOLD_BERRY
	db MOONLIGHT, FAINT_ATTACK, PSYCHIC_M, SHADOW_BALL
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BURAtuKI-@@"

	db GYARADOS
	db BRIGHTPOWDER
	db SURF, THUNDERBOLT, HYPER_BEAM, ROAR
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "GIyaRADOSU@"

	db QUAGSIRE
	db MIRACLEBERRY
	db EARTHQUAKE, SURF, SLUDGE_BOMB, IRON_TAIL
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "NUO-@@@@@@@"

	db URSARING
	db SCOPE_LENS
	db SLASH, EARTHQUAKE, HYPER_BEAM, THUNDERPUNCH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RINGUMA@@@@"

	db MR__MIME
	db KINGS_ROCK
	db REFLECT, FIRE_PUNCH, PSYCHIC_M, ENCORE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BARIYA-DO@@"

	db PRIMEAPE
	db QUICK_CLAW
	db CROSS_CHOP, ICE_PUNCH, THUNDERPUNCH, ROCK_SLIDE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "OKORIZARU@@"

	db GIRAFARIG
	db GOLD_BERRY
	db AGILITY, BATON_PASS, CRUNCH, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KIRINRIKI@@"

	db HITMONLEE
	db FOCUS_BAND
	db REVERSAL, ENDURE, BODY_SLAM, MEGA_KICK
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SAWAMURA-@@"

	db HERACROSS
	db BRIGHTPOWDER
	db REVERSAL, ENDURE, MEGAHORN, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HERAKUROSU@"

	db VENUSAUR
	db BRIGHTPOWDER
	db SUNNY_DAY, SOLARBEAM, SYNTHESIS, HYPER_BEAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HUSIGIBANA@"

	db CHARIZARD
	db SCOPE_LENS
	db SLASH, EARTHQUAKE, HYPER_BEAM, FLAMETHROWER
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RIZA-DON@@@"

	db BLASTOISE
	db QUICK_CLAW
	db HYDRO_PUMP, ICE_PUNCH, HYPER_BEAM, IRON_TAIL
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KAMEtuKUSU@"


; BattleTowerMons group 8

	db JOLTEON
	db MIRACLEBERRY
	db THUNDER_WAVE, THUNDERBOLT, IRON_TAIL, ROAR
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SANDA-SU@@@"

	db SNORLAX
	db LEFTOVERS
	db REST, BELLY_DRUM, SNORE, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KABIGON@@@@"

	db HOUNDOOM
	db MINT_BERRY
	db REST, CRUNCH, FLAMETHROWER, SUNNY_DAY
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HERUGA-@@@@"

	db TAUROS
	db GOLD_BERRY
	db EARTHQUAKE, BODY_SLAM, IRON_TAIL, HYPER_BEAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KENTAROSU@@"

	db LAPRAS
	db MINT_BERRY
	db REST, SURF, CONFUSE_RAY, PSYCHIC_M
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RAPURASU@@@"

	db TYRANITAR
	db MIRACLEBERRY
	db REST, CRUNCH, EARTHQUAKE, ROCK_SLIDE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BANGIRASU@@"

	db GENGAR
	db NO_ITEM
	db THUNDERBOLT, SHADOW_BALL, CONFUSE_RAY, THIEF
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "GENGA-@@@@@"

	db FORRETRESS
	db LEFTOVERS
	db EXPLOSION, TOXIC, SOLARBEAM, SWAGGER
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HUoRETOSU@@"

	db KINGDRA
	db MINT_BERRY
	db REST, SURF, BLIZZARD, DRAGONBREATH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KINGUDORA@@"

	db DRAGONITE
	db GOLD_BERRY
	db THUNDER_WAVE, SURF, THUNDERBOLT, OUTRAGE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KAIRIyu-@@@"

	db PORYGON2
	db LEFTOVERS
	db PSYCHIC_M, RECOVER, HYPER_BEAM, TRI_ATTACK
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PORIGON2@@@"

	db JYNX
	db QUICK_CLAW
	db LOVELY_KISS, BLIZZARD, DREAM_EATER, PSYCHIC_M
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RU-ZIyuRA@@"

	db MANTINE
	db GOLD_BERRY
	db SURF, CONFUSE_RAY, BLIZZARD, WING_ATTACK
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "MANTAIN@@@@"

	db SKARMORY
	db QUICK_CLAW
	db STEEL_WING, FLY, MUD_SLAP, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "EA-MUDO@@@@"

	db MOLTRES
	db CHARCOAL
	db FLAMETHROWER, SKY_ATTACK, STEEL_WING, HYPER_BEAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HUaIYA-@@@@"

	db AERODACTYL
	db MIRACLEBERRY
	db HYPER_BEAM, REST, EARTHQUAKE, ROAR
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PUTERA@@@@@"

	db ELECTRODE
	db KINGS_ROCK
	db THUNDERBOLT, EXPLOSION, MIRROR_COAT, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "MARUMAIN@@@"

	db DUGTRIO
	db SCOPE_LENS
	db SLASH, EARTHQUAKE, THIEF, MUD_SLAP
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "DAGUTORIO@@"

	db VICTREEBEL
	db QUICK_CLAW
	db GIGA_DRAIN, SLUDGE_BOMB, HYPER_BEAM, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "UTUBOtuTO@@"

	db PINSIR
	db GOLD_BERRY
	db HYPER_BEAM, SUBMISSION, STRENGTH, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KAIROSU@@@@"

	db GRANBULL
	db BRIGHTPOWDER
	db ROAR, SHADOW_BALL, HYPER_BEAM, THUNDERPUNCH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "GURANBURU@@"


; BattleTowerMons group 9

	db UMBREON
	db KINGS_ROCK
	db FAINT_ATTACK, MUD_SLAP, MOONLIGHT, CONFUSE_RAY
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BURAtuKI-@@"

	db DRAGONITE
	db QUICK_CLAW
	db FIRE_BLAST, HYPER_BEAM, OUTRAGE, BLIZZARD
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KAIRIyu-@@@"

	db STARMIE
	db LEFTOVERS
	db RECOVER, THUNDERBOLT, SURF, PSYCHIC_M
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SUTA-MI-@@@"

	db CLOYSTER
	db LEFTOVERS
	db EXPLOSION, BLIZZARD, SURF, ICY_WIND
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PARUSIeN@@@"

	db CROBAT
	db GOLD_BERRY
	db WING_ATTACK, HAZE, HYPER_BEAM, GIGA_DRAIN
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KUROBAtuTO@"

	db PORYGON2
	db QUICK_CLAW
	db TOXIC, PSYCHIC_M, RECOVER, PROTECT
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "PORIGON2@@@"

	db KINGDRA
	db LEFTOVERS
	db DRAGONBREATH, SURF, HYPER_BEAM, BLIZZARD
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KINGUDORA@@"

	db TYRANITAR
	db QUICK_CLAW
	db HYPER_BEAM, CRUNCH, EARTHQUAKE, ROCK_SLIDE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BANGIRASU@@"

	db LAPRAS
	db MINT_BERRY
	db REST, SURF, THUNDERBOLT, PSYCHIC_M
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RAPURASU@@@"

	db ESPEON
	db GOLD_BERRY
	db PSYCHIC_M, SHADOW_BALL, SUNNY_DAY, MORNING_SUN
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "E-HUi@@@@@@"

	db MACHAMP
	db QUICK_CLAW
	db CROSS_CHOP, VITAL_THROW, FIRE_BLAST, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KAIRIKI-@@@"

	db SNORLAX
	db MIRACLEBERRY
	db FIRE_BLAST, SURF, EARTHQUAKE, HYPER_BEAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KABIGON@@@@"

	db ARCANINE
	db MINT_BERRY
	db SUNNY_DAY, FLAMETHROWER, EXTREMESPEED, REST
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "UINDEi@@@@@"

	db BLISSEY
	db LEFTOVERS
	db SOLARBEAM, SUNNY_DAY, SOFTBOILED, FIRE_BLAST
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAPINASU@@@"

	db HOUNDOOM
	db BRIGHTPOWDER
	db FLAMETHROWER, CRUNCH, SUNNY_DAY, SOLARBEAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HERUGA-@@@@"

	db SKARMORY
	db QUICK_CLAW
	db SANDSTORM, STEEL_WING, TOXIC, RETURN
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "EA-MUDO@@@@"

	db SHUCKLE
	db LEFTOVERS
	db TOXIC, WRAP, PROTECT, ENCORE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "TUBOTUBO@@@"

	db FLAREON
	db MINT_BERRY
	db HYPER_BEAM, FLAMETHROWER, SHADOW_BALL, ROAR
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BU-SUTA-@@@"

	db MILTANK
	db LEFTOVERS
	db MILK_DRINK, EARTHQUAKE, ATTRACT, BODY_SLAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "MIRUTANKU@@"

	db TAUROS
	db PINK_BOW
	db THUNDERBOLT, HYPER_BEAM, ATTRACT, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KENTAROSU@@"

	db MUK
	db QUICK_CLAW
	db TOXIC, SLUDGE_BOMB, ATTRACT, GIGA_DRAIN
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "BETOBETON@@"


; BattleTowerMons group 10

	db HOUNDOOM
	db MINT_BERRY
	db CRUNCH, FLAMETHROWER, ROAR, REST
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HERUGA-@@@@"

	db MACHAMP
	db QUICK_CLAW
	db CROSS_CHOP, EARTHQUAKE, HYPER_BEAM, VITAL_THROW
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KAIRIKI-@@@"

	db KINGDRA
	db LEFTOVERS
	db SURF, DRAGONBREATH, REST, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KINGUDORA@@"

	db JOLTEON
	db BRIGHTPOWDER
	db THUNDERBOLT, ROAR, THUNDER_WAVE, IRON_TAIL
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SANDA-SU@@@"

	db TAUROS
	db KINGS_ROCK
	db HYPER_BEAM, EARTHQUAKE, IRON_TAIL, THUNDERBOLT
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "KENTAROSU@@"

	db ARCANINE
	db LEFTOVERS
	db FLAMETHROWER, EXTREMESPEED, IRON_TAIL, HYPER_BEAM
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "UINDEi@@@@@"

	db CHARIZARD
	db SCOPE_LENS
	db FLAMETHROWER, EARTHQUAKE, SLASH, FLY
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RIZA-DON@@@"

	db ELECTRODE
	db BRIGHTPOWDER
	db THUNDER_WAVE, THUNDERBOLT, EXPLOSION, MIRROR_COAT
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "MARUMAIN@@@"

	db RHYDON
	db MIRACLEBERRY
	db SURF, EARTHQUAKE, HYPER_BEAM, ROCK_SLIDE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "SAIDON@@@@@"

	db STEELIX
	db LEFTOVERS
	db EARTHQUAKE, HYPER_BEAM, SWAGGER, CRUNCH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAGANE-RU@@"

	db FEAROW
	db KINGS_ROCK
	db DRILL_PECK, STEEL_WING, HYPER_BEAM, MUD_SLAP
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "ONIDORIRU@@"

	db MISDREAVUS
	db FOCUS_BAND
	db PERISH_SONG, MEAN_LOOK, PAIN_SPLIT, SHADOW_BALL
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "MUUMA@@@@@@"

	db SNEASEL
	db SCOPE_LENS
	db SLASH, BLIZZARD, DREAM_EATER, FAINT_ATTACK
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "NIyu-RA@@@@"

	db SCIZOR
	db QUICK_CLAW
	db STEEL_WING, HYPER_BEAM, SLASH, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAtuSAMU@@@"

	db BLISSEY
	db LEFTOVERS
	db THUNDERBOLT, BLIZZARD, FIRE_BLAST, SOFTBOILED
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "HAPINASU@@@"

	db PILOSWINE
	db MINT_BERRY
	db REST, BLIZZARD, HYPER_BEAM, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "INOMU-@@@@@"

	db EXEGGUTOR
	db QUICK_CLAW
	db PSYCHIC_M, TOXIC, EXPLOSION, GIGA_DRAIN
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "NAtuSI-@@@@"

	db OMASTAR
	db LEFTOVERS
	db SURF, ANCIENTPOWER, BLIZZARD, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "OMUSUTA-@@@"

	db GOLEM
	db BRIGHTPOWDER
	db EXPLOSION, EARTHQUAKE, ROCK_SLIDE, FIRE_BLAST
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "GORO-NIya@@"

	db HITMONCHAN
	db FOCUS_BAND
	db COUNTER, FIRE_PUNCH, THUNDERPUNCH, ICE_PUNCH
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "EBIWARA-@@@"

	db LANTURN
	db QUICK_CLAW
	db SURF, RAIN_DANCE, ZAP_CANNON, CONFUSE_RAY
	dw 0 ; OT ID
	dt 1000 ; Exp
	db 0, 0, 0, 0, 0, 0, ; EVs
	db 0, 0, 0, 0 ; padding
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 1 ; Level
	db 0, 0 ; Status
	bigdw 1 ; HP
	bigdw 1 ; Max HP
	bigdw 1 ; Atk
	bigdw 1 ; Def
	bigdw 1 ; Spd
	bigdw 1 ; SAtk
	bigdw 1 ; SDef
	db "RANTA-N@@@@"

	assert_table_length 10 * BATTLETOWER_NUM_UNIQUE_MON
