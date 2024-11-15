GetCrystalCGBLayout:
	ld a, b
	cp SCGB_DEFAULT
	jr nz, .not_default
	ld a, [wDefaultSGBLayout]
.not_default
	push af
	farcall ResetBGPals
	pop af
	ld l, a
	ld h, 0
	add hl, hl
	ld de, .Jumptable
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, .done
	push de
	jp hl
.done:
	ret

.Jumptable:
	dw _CrystalCGB_MobileLayout0
	dw _CrystalCGB_MobileLayout1
	dw _CrystalCGB_NameCard

_CrystalCGB_MobileLayout0:
	ret

_CrystalCGB_MobileLayout1:
	ret

_CrystalCGB_NameCard:
	ret

LoadOW_BGPal7::
	ld hl, Palette_TextBG7
	ld de, wBGPals1 palette PAL_BG_TEXT
	ld bc, 1 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	ret

Palette_TextBG7:
INCLUDE "gfx/font/bg_text.pal"

INCLUDE "engine/tilesets/tileset_palettes.asm"



.MobileBorderPalettes:
INCLUDE "gfx/trade/mobile_border.pal"

_LoadTradeRoomBGPals:
	ld hl, TradeRoomPalette
	ld de, wBGPals1 palette PAL_BG_GREEN
	ld bc, 6 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	farcall ApplyPals
	ret

TradeRoomPalette:
INCLUDE "gfx/trade/border.pal"

InitMG_Mobile_LinkTradePalMap:
	ret
