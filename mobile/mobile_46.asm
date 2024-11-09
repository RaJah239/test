_BattleTowerRoomMenu:
	xor a
	ld [wcd38], a
	call BattleTowerRoomMenu_InitRAM
	ld a, $3
	ld [wcd33], a
	ld a, $d
	ld [wcd34], a
	ld a, $4
	ld [wc3f0], a
	ldh a, [rSVBK]
	push af
	ld a, $3
	ldh [rSVBK], a
.loop
	call JoyTextDelay
	call Function118473
	ld a, [wBattleTowerRoomMenuJumptableIndex]
	cp $f
	jr c, .skip
	ld a, [wcd34]
	ld [wBattleTowerRoomMenuJumptableIndex], a
.skip
	call BattleTowerRoomMenu_Jumptable
	call BattleTowerRoomMenu_WriteMessage
	farcall Function115dd3
	farcall Function11619d
	call DelayFrame
	ld a, [wBattleTowerRoomMenuJumptableIndex]
	ld hl, wcd33
	cp [hl]
	jr nz, .loop
	xor a
	ld [w3_d000], a
	pop af
	ldh [rSVBK], a
	call BattleTowerRoomMenu_Cleanup
	call Function118180
	call ReturnToMapFromSubmenu
	ret

Function118180:
	ld a, [wScriptVar]
	and a
	ret nz
	ld a, [wcd38]
	and a
	ret z
	ld a, BANK(s5_a89c) ; aka BANK(s5_a8b2)
	call OpenSRAM
	ld hl, wcd69
	ld de, s5_a89c
	ld bc, 22
	call CopyBytes

	ldh a, [rSVBK]
	push af
	ld a, BANK(w3_d202)
	ldh [rSVBK], a

	ld de, w3_d202
	ld c, $96
	farcall CheckStringForErrors_IgnoreTerminator
	jr c, .return_d3

	ld de, w3_d202
	lb bc, 1, $96
	farcall CheckStringContainsLessThanBNextCharacters
	jr c, .return_d3

	ld hl, w3_d202
	ld de, s5_a8b2
	ld bc, 150
	call CopyBytes
.reset_banks
	pop af
	ldh [rSVBK], a
	call CloseSRAM
	ret

.return_d3
	ld a, $d3
	ld [wMobileErrorCodeBuffer], a
	ld [wScriptVar], a
	jr .reset_banks

BattleTowerRoomMenu_InitRAM:
	di
	ldh a, [rIE]
	ld [wcd32], a
	call DoubleSpeed
	xor a
	ldh [rIF], a
	ld [wMobileErrorCodeBuffer], a
	ld [wMobileErrorCodeBuffer + 1], a
	ld [wMobileErrorCodeBuffer + 2], a
	ld [wcd80], a
	ld [wcd65], a
	ld [wcd66], a
	ld [wcd67], a
	ld [wcd68], a
	ld [wc31a], a
	ld [wcd89], a
	ld [wcd8a], a
	ld [wcd8b], a
	ld [wc3ec], a
	ld [wc3ed], a
	ld [wc3ee], a
	ld [wc3ef], a
	ld hl, wStateFlags
	ld a, [hl]
	ld [wcd7f], a
	set LAST_12_SPRITE_OAM_STRUCTS_RESERVED_F, [hl]
	ld a, (1 << SERIAL) | (1 << TIMER) | (1 << LCD_STAT) | (1 << VBLANK)
	ldh [rIE], a
	ld a, $1
	ldh [hMobileReceive], a
	ldh [hMobile], a
	ei
	farcall Function106464
	farcall Function115d99
	farcall Function11615a
	ld a, BANK(s5_bfff)
	call OpenSRAM
	xor a
	ld [s5_bfff], a
	call CloseSRAM
	ret

BattleTowerRoomMenu_Cleanup:
	di
	xor a
	ldh [hMobileReceive], a
	ldh [hMobile], a
	ldh [hVBlank], a
	call NormalSpeed
	xor a
	ldh [rIF], a
	ld a, [wcd32]
	ldh [rIE], a
	ei
	ld a, [wcd7f]
	ld [wStateFlags], a
	ld a, [wMobileErrorCodeBuffer]
	ld [wScriptVar], a
	ret

Function118473:
	ld a, [wcd65]
	and a
	ret z
	ld a, [wcd66]
	inc a
	ld [wcd66], a
	cp 60
	ret nz
	xor a
	ld [wcd66], a
	ld a, [wcd67]
	inc a
	ld [wcd67], a
	cp 60
	ret nz
	ld a, [wcd68]
	inc a
	ld [wcd68], a
	cp 99
	jr z, .ninety_nine
	xor a
	ld [wcd67], a
	ret

.ninety_nine
	xor a
	ld [wcd65], a
	ret

BattleTowerRoomMenu_Jumptable:
	jumptable .Jumptable, wBattleTowerRoomMenuJumptableIndex

.Jumptable:
	dw BattleTowerRoomMenu_PickLevelMessage
	dw BattleTowerRoomMenu_PlacePickLevelMenu
	dw BattleTowerRoomMenu_UpdatePickLevelMenu
	dw BattleTowerRoomMenu_PartyMonTopsThisLevelMessage
	dw BattleTowerRoomMenu_WaitForMessage
	dw BattleTowerRoomMenu_DelayRestartMenu
	dw BattleTowerRoomMenu_QuitMessage
	dw BattleTowerRoomMenu_PlaceYesNoMenu
	dw BattleTowerRoomMenu_UpdateYesNoMenu
	dw BattleTowerRoomMenu_UberRestrictionMessage
	dw BattleTowerRoomMenu_WaitForMessage
	dw BattleTowerRoomMenu_DelayRestartMenu
	dw Function118e76 ; mobile
	dw BattleTowerRoomMenu_CallRoomMenu2 ; mobile
	dw Function118e76 ; mobile

SetMobileErrorCode:
	ld [wMobileErrorCodeBuffer], a
	xor a
	ld [wMobileErrorCodeBuffer + 1], a
	ld [wMobileErrorCodeBuffer + 2], a
	ld a, MOBILEAPI_05
	call MobileAPI
	ld a, [wc3f0]
	ld [wc319], a
	ld a, [wcd34]
	ld [wBattleTowerRoomMenuJumptableIndex], a
	ret

BattleTowerRoomMenu_PickLevelMessage:
	ld a, [wcd38]
	and a
	jr nz, .asm_11892d
	ld hl, Text_WhatLevelDoYouWantToChallenge
	jr .asm_118930

.asm_11892d
	ld hl, Text_Random_Text_FFS

.asm_118930
	call BattleTowerRoomMenu_SetMessage
	call BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_PlacePickLevelMenu:
	ld a, [wc31a]
	and a
	ret nz
	ld hl, MenuHeader_119cf7
	call LoadMenuHeader
	call MenuBox
	call MenuBoxCoord2Tile
	call ApplyTilemap
	hlcoord 16, 8, wAttrmap
	ld a, $40
	or [hl]
	ld [hl], a
	call WaitBGMap2
	ld a, $1
	ld [wcd4f], a
	ld a, $1
	ldh [rSVBK], a
	ld a, [wStatusFlags]
	bit STATUSFLAGS_HALL_OF_FAME_F, a
	jr nz, .asm_11896b
	ld hl, Strings_Ll0ToL40 ; Address to list of strings with the choosable levels
	ld a, 5                 ; 4 levels to choose from, including 'Cancel'-option
	jr .asm_118970

.asm_11896b
	ld hl, Strings_L10ToL100 ; Address to list of strings with the choosable levels
	ld a, 11                 ; 10 levels to choose from, including 'Cancel'-option

.asm_118970
	ld [wcd4a], a
	ld a, l
	ld [wcd4b], a
	ld a, h
	ld [wcd4c], a
	ld a, $3
	ldh [rSVBK], a
	call BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_UpdatePickLevelMenu:
	hlcoord 13, 8
	ld de, String_119d07
	call PlaceString
	hlcoord 13, 10
	ld de, String_119d07
	call PlaceString
	ld a, [wcd4b]
	ld l, a
	ld a, [wcd4c]
	ld h, a
	ld d, $0
	ld a, [wcd4f]
	dec a
	rlca
	rlca
	rlca
	ld e, a
	add hl, de
	ld a, l
	ld e, a
	ld a, h
	ld d, a
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	ld bc, wStringBuffer3
.asm_1189b5
	ld a, [hli]
	cp $50
	jr z, .asm_1189c4
	cp $7f
	jr z, .asm_1189c2
	ld [bc], a
	inc bc
	jr .asm_1189b5

.asm_1189c2
	ld a, $50

.asm_1189c4
	ld [bc], a
	pop af
	ldh [rSVBK], a
	hlcoord 13, 9
	call PlaceString
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, .b_button
	ld a, [hl]
	and A_BUTTON
	jr nz, .a_button
	ld a, [hl]
	and D_DOWN
	jr nz, .d_down
	ld a, [hl]
	and D_UP
	jr nz, .d_up
.asm_1189e5
	ret

.d_down
	ld hl, wcd4f
	dec [hl]
	jr nz, .asm_1189e5
	ld a, [wcd4a]
	ld [hl], a
	jr .asm_1189e5

.d_up
	ld a, [wcd4a]
	ld hl, wcd4f
	inc [hl]
	cp [hl]
	jr nc, .asm_1189e5
	ld a, $1
	ld [hl], a
	jr .asm_1189e5

.a_button
	call PlayClickSFX
	ld a, [wcd4f]
	ld hl, wcd4a
	cp [hl]
	jr z, .asm_118a3c
	dec a
	and $fe
	srl a
	ld [wcf65], a
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	call CloseWindow
	pop af
	ldh [rSVBK], a
	ld a, [wcd38]
	and a
	jr nz, .asm_118a30
	call BattleTower_LevelCheck
	ret c
	call BattleTower_UbersCheck
	ret c

.asm_118a30
	ld a, [wcd4f]
	ld [w3_d800], a
	jp BattleTowerRoomMenu_IncrementJumptable

.b_button
	call PlayClickSFX

.asm_118a3c
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	call CloseWindow
	pop af
	ldh [rSVBK], a
	ld a, $7
	ld [wBattleTowerRoomMenuJumptableIndex], a
	ld a, $0
	ld [wMobileInactivityTimerFrames], a
	ret

Function118e76:
	; Call $c in BattleTowerRoomMenu2
	ld a, $c
	ld [wBattleTowerRoomMenu2JumptableIndex], a
	jp BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_CallRoomMenu2:
	call BattleTowerRoomMenu2
	ret c
	ld a, [wcd33]
	ld [wBattleTowerRoomMenuJumptableIndex], a
	ret

BattleTowerRoomMenu_UberRestrictionMessage:
	ld hl, Text_UberRestriction
	call BattleTowerRoomMenu_SetMessage
	call BattleTowerRoomMenu_IncrementJumptable
	jr BattleTowerRoomMenu_WaitForMessage

BattleTowerRoomMenu_PartyMonTopsThisLevelMessage:
	ld hl, Text_PartyMonTopsThisLevel
	call BattleTowerRoomMenu_SetMessage
	call BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_WaitForMessage:
	ld a, [wc31a]
	and a
	ret nz
	ld a, $80
	ld [wcd50], a
	call BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_DelayRestartMenu:
	; Loops while (--[wcd50] != 0),
	;   to create some sort of "delay" after the message is written on the screen,
	;   before starting the menu again.
	ld hl, wcd50
	dec [hl]
	ret nz
	ld a, $0
	ld [wBattleTowerRoomMenuJumptableIndex], a
	ret

BattleTowerRoomMenu_QuitMessage:
	ld a, [wcd38]
	and a
	jr z, .asm_119cd1
	dec a
	jr z, .asm_119cd6
	ld hl, Text_Random_Text_FFS
	jr .asm_119cd9

.asm_119cd1
	ld hl, Text_CancelBattleRoomChallenge
	jr .asm_119cd9

.asm_119cd6
	ld hl, Text_Random_Text_FFS

.asm_119cd9
	call BattleTowerRoomMenu_SetMessage
	call BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_PlaceYesNoMenu:
	ld a, [wc31a]
	and a
	ret nz
	ld a, $f
	ld [wBattleTowerRoomMenu2JumptableIndex], a
	call BattleTowerRoomMenu_IncrementJumptable

BattleTowerRoomMenu_UpdateYesNoMenu:
	; Only ever called when [wBattleTowerRoomMenu2JumptableIndex] is $10
	call BattleTowerRoomMenu2
	ret c
	ld a, [wMobileInactivityTimerFrames]
	ld [wBattleTowerRoomMenuJumptableIndex], a
	ret

MenuHeader_119cf7:
	db MENU_BACKUP_TILES ; flags
	menu_coords 12, 7, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw NULL
	db 0 ; default option

String_119d07:
	db "   ▼@"

Strings_L10ToL100:
	db " L:10 @@"
	db " L:20 @@"
	db " L:30 @@"
	db " L:40 @@"
	db " L:50 @@"
	db " L:60 @@"
	db " L:70 @@"
	db " L:80 @@"
	db " L:90 @@"
	db " L:100@@"
	db "CANCEL@@"

Strings_Ll0ToL40:
	db " L:10 @@"
	db " L:20 @@"
	db " L:30 @@"
	db " L:40 @@"
	db "CANCEL@@"

BattleTower_LevelCheck:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wPartyMons)
	ldh [rSVBK], a
	ld a, [wcd4f]
	ld c, 10
	call SimpleMultiply
	ld hl, wcd50
	ld [hl], a
	ld bc, PARTYMON_STRUCT_LENGTH
	ld de, wPartyMon1Level
	ld a, [wPartyCount]
.party_loop
	push af
	ld a, [de]
	push hl
	push de
	pop hl
	add hl, bc
	push hl
	pop de
	pop hl
	cp [hl]
	jr z, .equal
	jr nc, .exceeds
.equal
	pop af
	dec a
	jr nz, .party_loop
	pop af
	ldh [rSVBK], a
	and a
	ret

.exceeds
	pop af
	ld a, $4
	ld [wBattleTowerRoomMenuJumptableIndex], a
	pop af
	ldh [rSVBK], a
	scf
	ret

BattleTower_UbersCheck:
	ldh a, [rSVBK]
	push af
	ld a, [wcd4f]
	cp 70 / 10
	jr nc, .level_70_or_more
	ld a, BANK(wPartyMons)
	ldh [rSVBK], a
	ld hl, wPartyMon1Level
	ld bc, PARTYMON_STRUCT_LENGTH
	ld de, wPartySpecies
	ld a, [wPartyCount]
.loop
	push af
	ld a, [de]
	cp MEWTWO
	jr z, .uber
	cp MEW
	jr z, .uber
	cp LUGIA
	jr c, .next
	cp NUM_POKEMON + 1
	jr nc, .next
.uber
	ld a, [hl]
	cp 70
	jr c, .uber_under_70
.next
	add hl, bc
	inc de
	pop af
	dec a
	jr nz, .loop
.level_70_or_more
	pop af
	ldh [rSVBK], a
	and a
	ret

.uber_under_70
	pop af
	ld a, [de]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wcd49
	ld bc, MON_NAME_LENGTH
	call CopyBytes
	ld a, $a
	ld [wBattleTowerRoomMenuJumptableIndex], a
	pop af
	ldh [rSVBK], a
	scf
	ret

BattleTowerRoomMenu_IncrementJumptable:
	ld hl, wBattleTowerRoomMenuJumptableIndex
	inc [hl]
	ret

BattleTowerRoomMenu2:
	ldh a, [rSVBK]
	ld [wcd8c], a
	ld a, $1
	ldh [rSVBK], a

	call .RunJumptable

	ld a, [wcd8c]
	ldh [rSVBK], a
	ld a, $1
	ldh [hBGMapMode], a
	ret

.RunJumptable:
	jumptable .Jumptable, wBattleTowerRoomMenu2JumptableIndex

.Jumptable:
	dw Function119f3f
	dw Function119f45
	dw Function119f56
	dw Function119f76
	dw Function11a113
	dw Function11a129
	dw Function11a131
	dw Function11a13d
	dw Function11a14b
	dw Function11a16d
	dw Function11a192
	dw Function11a2e6
	dw Function11a302
	dw Function11a33a
	dw BattleTowerRoomMenu2_PlaceYesNoMenu
	dw BattleTowerRoomMenu2_UpdateYesNoMenu
	dw Function11a357
	dw Function11a36b
	dw Function11a38d
	dw Function11a3c5
	dw Function11a3d9
	dw Function11a3f9
	dw Function11a41b
	dw Function11a452
	dw Function11a47a
	dw Function11a488
	dw Function11a49e
	dw Function11a4db
	dw Function11a4e8
	dw Function11a4fe
	dw Function11a466
	dw Function11a47a

Function119f3f:
	call Function11a5b9
	jp BattleTowerRoomMenu2_IncrementJumptable

Function119f45:
	hlcoord 4, 2
	ld de, String_11a661
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function119f56:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_119f62
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_119f62
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6aa
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function119f76:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_119f82
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_119f82
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a679
	call PlaceString
	call Function11a5f5
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a113:
	call Function11a63c
	ld c, $1
	farcall Function115e18
	hlcoord 4, 2
	ld de, String_11a6c8
	call PlaceString
	and a
	ret

Function11a129:
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a131:
	ld hl, wMobileInactivityTimerMinutes
	dec [hl]
	ret nz
	ld a, [wBattleTowerRoomMenu2JumptableIndex]
	inc a
	ld [wBattleTowerRoomMenu2JumptableIndex], a

Function11a13d:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	and a
	ret

Function11a14b:
	ld hl, wcd85
	ld a, [hl]
	cp $f3
	jr nz, .asm_11a155
	and a
	ret

.asm_11a155
	call Function11a1d6
	ret c
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6f1
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a16d:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a179
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a179
	call Function11a63c
	call Function11a1e6
	hlcoord 4, 2
	ld de, wc346
	call PlaceString
	call Function11a5f5
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a192:
	call Function11a536
	ret c
	call PlayClickSFX
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a1b6
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	and a
	ret

.asm_11a1b6
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld
	ld a, [wMobileInactivityTimerSeconds]
	ld [wcf66], a
	ld [wcd80], a
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	scf
	ret

Function11a1d6:
	ld a, [wcd85]
	cp $50
	jr nz, .asm_11a1e4
	ld a, $d3
	call SetMobileErrorCode
	scf
	ret

.asm_11a1e4
	and a
	ret

Function11a1e6:
	ld hl, String_11a706
	ld de, wc346
	call Function11a1ff
	ld hl, wcd85
	call Function11a1ff
	ld hl, String_11a70b
	call Function11a1ff
	ld a, $50
	ld [de], a
	ret

Function11a1ff:
.asm_11a1ff
	ld a, [hli]
	cp $50
	ret z
	ld [de], a
	inc de
	jr .asm_11a1ff

BattleTowerRoomMenu2_PlaceYesNoMenu:
	ld hl, MenuHeader_11a2de
	call LoadMenuHeader
	call MenuBox
	call MenuBoxCoord2Tile
	call ApplyTilemap
	hlcoord 16, 8
	ld de, String_11a2cf
	call PlaceString
	hlcoord 16, 10
	ld de, String_11a2d3
	call PlaceString
	hlcoord 15, 8
	ld a, $ed
	ld [hl], a
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

BattleTowerRoomMenu2_UpdateYesNoMenu:
	ld hl, hJoyPressed
	ld a, [hl]
	and A_BUTTON
	jr nz, .a_button
	ld a, [hl]
	and B_BUTTON
	jr nz, .b_button
	ld a, [hl]
	and D_UP
	jr nz, .d_up
	ld a, [hl]
	and D_DOWN
	jr nz, .d_down
.asm_11a24c
	call Function11a9f0
	scf
	ret

.d_up
	xor a
	ld [wcd8a], a
	ld [wcd8b], a
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a24c
	xor a
	ld [wMobileInactivityTimerMinutes], a
	hlcoord 15, 8
	ld a, $ed
	ld [hl], a
	hlcoord 15, 10
	ld a, $7f
	ld [hl], a
	jr .asm_11a24c

.d_down
	xor a
	ld [wcd8a], a
	ld [wcd8b], a
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a24c
	inc a
	ld [wMobileInactivityTimerMinutes], a
	hlcoord 15, 8
	ld a, $7f
	ld [hl], a
	hlcoord 15, 10
	ld a, $ed
	ld [hl], a
	jr .asm_11a24c

.a_button
	xor a
	ld [wcd8a], a
	ld [wcd8b], a
	call PlayClickSFX
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .exit_no_carry
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld
	ld a, [wMobileInactivityTimerFrames]
	cp $0
	jr z, .asm_11a2b4
	ld a, [wcd47]
	jr .exit_carry

.asm_11a2b4
	ld a, [wcd33]

.exit_carry
	ld [wcf66], a
	ld a, $a
	ld [wMobileErrorCodeBuffer], a
	scf
	ret

.b_button
	call PlayClickSFX

.exit_no_carry
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld
	and a
	ret

String_11a2cf:
	db "YES@"

String_11a2d3:
	db "NO@"

MenuHeader_11a2de:
	db MENU_BACKUP_TILES ; flags
	menu_coords 14, 7, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw NULL
	db 0 ; default option

Function11a2e6:
	call Function11a63c
	ld c, $2
	farcall Function115e18
	hlcoord 4, 2
	ld de, String_11a71e
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a302:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a30e
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a30e
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a72a
	call PlaceString
	hlcoord 9, 4
	ld de, wcd68
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	hlcoord 14, 4
	ld de, wcd67
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a33a:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a346
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a346
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld
	farcall Function115dc3
	and a
	ret

Function11a357:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a743
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a36b:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a377
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a377
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a755
	call PlaceString
	call Function11a5f5
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a38d:
	call Function11a536
	ret c
	call PlayClickSFX
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a3b1
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	and a
	ret

.asm_11a3b1
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld
	ld a, [wMobileInactivityTimerSeconds]
	ld [wcf66], a
	ld [wcd80], a
	scf
	ret

Function11a3c5:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a762
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a3d9:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a3e5
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a3e5
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a779
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a3f9:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a405
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a405
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a755
	call PlaceString
	call Function11a5f5
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a41b:
	call Function11a536
	ret c
	call PlayClickSFX
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a43f
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	and a
	ret

.asm_11a43f
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld
	ld a, $1c
	ld [wcf66], a
	ld [wcd80], a
	scf
	ret

Function11a452:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a791
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a466:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a7c1
	call PlaceString
	ld a, $80
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a47a:
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a486
	dec a
	ld [wMobileInactivityTimerMinutes], a
	scf
	ret

.asm_11a486
	and a
	ret

Function11a488:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a7ac
	call PlaceString
	call Function11a5f5
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a49e:
	call Function11a536
	ret c
	call PlayClickSFX
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a4c7
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	ld a, $14
	ld [wcf66], a
	and a
	ret

.asm_11a4c7
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld
	ld a, [wMobileInactivityTimerFrames]
	ld [wcf66], a
	ld [wcd80], a
	scf
	ret

Function11a4db:
	call Function11a63c
	ld de, String_11a6db
	hlcoord 4, 2
	call PlaceString
	ret

Function11a4e8:
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a7d7
	call PlaceString
	call Function11a5f5
	xor a
	ld [wMobileInactivityTimerMinutes], a
	jp BattleTowerRoomMenu2_IncrementJumptable

Function11a4fe:
	call Function11a536
	ret c
	call PlayClickSFX
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a522
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld
	call Function11a63c
	hlcoord 4, 2
	ld de, String_11a6d2
	call PlaceString
	and a
	ret

.asm_11a522
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld
	ld a, [wMobileInactivityTimerSeconds]
	ld [wcf66], a
	ld [wcd80], a
	scf
	ret

Function11a536:
	ld hl, hJoyPressed
	ld a, [hl]
	and A_BUTTON
	jr nz, .asm_11a5a7
	ld a, [hl]
	and B_BUTTON
	jr nz, .asm_11a5a2
	ld a, [hl]
	and D_UP
	jr nz, .asm_11a564
	ld a, [hl]
	and D_DOWN
	jr nz, .asm_11a583
.asm_11a54d
	ld a, [wBattleTowerRoomMenu2JumptableIndex]
	cp $4
	jr z, .asm_11a562
	call Function11a9f0
	jr nz, .asm_11a562
	call ExitMenu
	farcall HDMATransferTilemapAndAttrmap_Overworld

.asm_11a562
	scf
	ret

.asm_11a564
	xor a
	ld [wcd8a], a
	ld [wcd8b], a
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr z, .asm_11a54d
	xor a
	ld [wMobileInactivityTimerMinutes], a
	hlcoord 15, 7
	ld a, $ed
	ld [hl], a
	hlcoord 15, 9
	ld a, $7f
	ld [hl], a
	jr .asm_11a54d

.asm_11a583
	xor a
	ld [wcd8a], a
	ld [wcd8b], a
	ld a, [wMobileInactivityTimerMinutes]
	and a
	jr nz, .asm_11a54d
	inc a
	ld [wMobileInactivityTimerMinutes], a
	hlcoord 15, 7
	ld a, $7f
	ld [hl], a
	hlcoord 15, 9
	ld a, $ed
	ld [hl], a
	jr .asm_11a54d

.asm_11a5a2
	ld a, $1
	ld [wMobileInactivityTimerMinutes], a

.asm_11a5a7
	xor a
	ld [wcd8a], a
	ld [wcd8b], a
	and a
	ret

BattleTowerRoomMenu2_IncrementJumptable:
	ld a, [wBattleTowerRoomMenu2JumptableIndex]
	inc a
	ld [wBattleTowerRoomMenu2JumptableIndex], a
	scf
	ret

Function11a5b9:
	xor a
	ld [wMenuBorderLeftCoord], a
	ld [wMenuBorderTopCoord], a
	ld a, $13
	ld [wMenuBorderRightCoord], a
	ld a, $5
	ld [wMenuBorderBottomCoord], a
	call PushWindow
	hlcoord 0, 0, wAttrmap
	ld b, $6
	ld c, $14
	hlcoord 0, 0
	ld b, $4
	ld c, $12
	call Function3eea
	farcall HDMATransferTilemapAndAttrmap_Overworld
	call UpdateSprites
	ld c, $0
	farcall Function115e18
	ld a, $1
	ld [wc305], a
	ret

Function11a5f5:
	ld a, $e
	ld [wMenuBorderLeftCoord], a
	ld a, $13
	ld [wMenuBorderRightCoord], a
	ld a, $6
	ld [wMenuBorderTopCoord], a
	ld a, $a
	ld [wMenuBorderBottomCoord], a
	call PushWindow
	hlcoord 14, 6, wAttrmap
	ld b, $5
	ld c, $6
	hlcoord 14, 6
	ld b, $3
	ld c, $4
	call Function3eea
	hlcoord 16, 7
	ld de, String_11a2cf
	call PlaceString
	hlcoord 16, 9
	ld de, String_11a2d3
	call PlaceString
	hlcoord 15, 7
	ld a, $ed
	ld [hl], a
	farcall HDMATransferTilemapAndAttrmap_Overworld
	ret

Function11a63c:
	hlcoord 4, 1
	ld de, String_11a7f4
	call PlaceString
	hlcoord 4, 2
	ld de, String_11a7f4
	call PlaceString
	hlcoord 4, 3
	ld de, String_11a7f4
	call PlaceString
	hlcoord 4, 4
	ld de, String_11a7f4
	call PlaceString
	ret

String_11a661:
	db   "!@"

String_11a679:
	db   "!@"

String_11a692:
	db   "!@"

String_11a6aa:
	db   "!@"

String_11a6c8:
	db   "!@"

String_11a6d2:
	db   "!@"

String_11a6db:
	db   "!@"

String_11a6f1:
	db   "!@"

String_11a706:
	db   "!@"

String_11a70b:
	db   "!@"

String_11a71e:
	db   "!@"

String_11a72a:
	db   "!@"

String_11a743:
	db   "!@"

String_11a755:
	db   "!@"

String_11a762:
	db   "!@"

String_11a779:
	db   "!@"

String_11a791:
	db   "!@"

String_11a7ac:
	db   "!@"

String_11a7c1:
	db   "!@"

String_11a7d7:
	db   "!@"

String_11a7f4:
	db   "　　　　　　　　　　　　　　　@"

BattleTowerRoomMenu_WriteMessage:
	jumptable .Jumptable, wc31a

.Jumptable:
	dw BattleTowerRoomMenu_WriteMessage_DoNothing
	dw Function11a90f
	dw Function11a971

Function11a90f:
	ld a, $1
	ldh [rSVBK], a
	call SpeechTextbox
	ld a, $50
	ld hl, wc320
	ld bc, $008c
	call ByteFill
	ld a, [wc31b]
	ld l, a
	ld a, [wc31c]
	ld h, a
	ld de, wc320
.asm_11a92c
	ld a, [hli]
	cp $57
	jr z, .asm_11a94f
	cp $0
	jr z, .asm_11a92c
	cp $50
	jr z, .asm_11a92c
	cp $1
	jr z, .asm_11a941
	ld [de], a
	inc de
	jr .asm_11a92c

.asm_11a941
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
.asm_11a945
	ld a, [bc]
	inc bc
	cp $50
	jr z, .asm_11a92c
	ld [de], a
	inc de
	jr .asm_11a945

.asm_11a94f
	xor a
	ld [wc31f], a
	ld a, LOW(wc320)
	ld [wc31b], a
	ld a, HIGH(wc320)
	ld [wc31c], a
	hlcoord 1, 14
	ld a, l
	ld [wc31d], a
	ld a, h
	ld [wc31e], a
	ld hl, wc31a
	inc [hl]
	ld a, $3
	ldh [rSVBK], a

BattleTowerRoomMenu_WriteMessage_DoNothing:
	ret

Function11a971:
	ld hl, wc31f
	ldh a, [hJoyDown]
	and a
	jr nz, .asm_11a97f
	ld a, [hl]
	and a
	jr z, .asm_11a97f
	dec [hl]
	ret

.asm_11a97f
	ld a, [wOptions]
	and $7
	ld [hl], a
	ld hl, wcd8d
	ld a, [wc31b]
	ld e, a
	ld a, [wc31c]
	ld d, a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, e
	ld [wc31b], a
	ld a, d
	ld [wc31c], a
	ld a, $50
	ld [hl], a
	ld a, [wc31d]
	ld l, a
	ld a, [wc31e]
	ld h, a
	ld de, wcd8d
	call PlaceString
	ld a, c
	ld [wc31d], a
	ld a, b
	ld [wc31e], a
	ld a, [wcd8d]
	cp $50
	jr nz, .asm_11a9bf
	xor a
	ld [wc31a], a

.asm_11a9bf
	ret

BattleTowerRoomMenu_SetMessage:
	ld a, l
	ld [wc31b], a
	ld a, h
	ld [wc31c], a
	ld a, $1
	ld [wc31a], a
	ret

Function11a9ce:
	call ClearBGPalettes
	call ReloadTilesetAndPalettes
	call Call_ExitMenu
	call GSReloadPalettes
	farcall FinishExitMenu
	call UpdateSprites
	ret

Function11a9f0:
	ld a, $1
	and a
	ret

Text_Random_Text_FFS:
	text "!"
	done

Text_PartyMonTopsThisLevel:
	text "A party #MON"
	line "tops this level."
	done

Text_UberRestriction:
	text_ram wcd49
	text " may go"
	line "only to BATTLE"

	para "ROOMS that are"
	line "Lv.70 or higher."
	done

Text_CancelBattleRoomChallenge:
	text "Cancel your BATTLE"
	line "ROOM challenge?"
	done

Text_WhatLevelDoYouWantToChallenge:
	text "What level do you"
	line "want to challenge?"
	done

AddMobileMonToParty:
	ld hl, wPartyCount
	ld a, [hl]
	ld e, a
	inc [hl]

	ld a, [wMobileMonSpeciesPointer]
	ld l, a
	ld a, [wMobileMonSpeciesPointer + 1]
	ld h, a
	inc hl
	ld bc, wPartySpecies
	ld d, e
.loop1
	inc bc
	dec d
	jr nz, .loop1
	ld a, e
	ld [wCurPartyMon], a
	ld a, [hl]
	ld [bc], a
	inc bc
	ld a, -1
	ld [bc], a

	ld hl, wPartyMon1Species
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, e
	ld [wMobileMonIndex], a
.loop2
	add hl, bc
	dec a
	and a
	jr nz, .loop2
	ld e, l
	ld d, h
	ld a, [wMobileMonStructPointer]
	ld l, a
	ld a, [wMobileMonStructPointer + 1]
	ld h, a
	ld bc, PARTYMON_STRUCT_LENGTH
	call CopyBytes

	ld hl, wPartyMonOTs
	ld bc, NAME_LENGTH
	ld a, [wMobileMonIndex]
.loop3
	add hl, bc
	dec a
	and a
	jr nz, .loop3
	ld e, l
	ld d, h
	ld a, [wMobileMonOTPointer]
	ld l, a
	ld a, [wMobileMonOTPointer + 1]
	ld h, a
	ld bc, MON_NAME_LENGTH - 1
	call CopyBytes
	ld a, "@"
	ld [de], a

	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	ld a, [wMobileMonIndex]
.loop4
	add hl, bc
	dec a
	and a
	jr nz, .loop4
	ld e, l
	ld d, h
	ld a, [wMobileMonNicknamePointer]
	ld l, a
	ld a, [wMobileMonNicknamePointer + 1]
	ld h, a
	ld bc, MON_NAME_LENGTH - 1
	call CopyBytes
	ld a, "@"
	ld [de], a

	ld hl, sPartyMail
	ld bc, MAIL_STRUCT_LENGTH
	ld a, [wMobileMonIndex]
.loop5
	add hl, bc
	dec a
	and a
	jr nz, .loop5
	ld a, BANK(sPartyMail)
	call OpenSRAM
	ld e, l
	ld d, h
	ld a, [wMobileMonMailPointer]
	ld l, a
	ld a, [wMobileMonMailPointer + 1]
	ld h, a
	ld bc, MAIL_STRUCT_LENGTH
	call CopyBytes

	call CloseSRAM
	ret
