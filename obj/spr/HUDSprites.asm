;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module HUDSprites
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _hud_spr_15
	.globl _hud_spr_14
	.globl _hud_spr_13
	.globl _hud_spr_12
	.globl _hud_spr_11
	.globl _hud_spr_10
	.globl _hud_spr_09
	.globl _hud_spr_08
	.globl _hud_spr_07
	.globl _hud_spr_06
	.globl _hud_spr_05
	.globl _hud_spr_04
	.globl _hud_spr_03
	.globl _hud_spr_02
	.globl _hud_spr_01
	.globl _hud_spr_00
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
_hud_spr_00:
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfe	; 254
_hud_spr_01:
	.db #0xf4	; 244
	.db #0xfc	; 252
	.db #0xf4	; 244
	.db #0xf4	; 244
	.db #0xfe	; 254
_hud_spr_02:
	.db #0xfe	; 254
	.db #0xf2	; 242
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xfe	; 254
_hud_spr_03:
	.db #0xfe	; 254
	.db #0xf2	; 242
	.db #0xf6	; 246
	.db #0xf2	; 242
	.db #0xfe	; 254
_hud_spr_04:
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xf2	; 242
	.db #0xf2	; 242
_hud_spr_05:
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xfe	; 254
	.db #0xf2	; 242
	.db #0xfe	; 254
_hud_spr_06:
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfe	; 254
_hud_spr_07:
	.db #0xfe	; 254
	.db #0xf2	; 242
	.db #0xf2	; 242
	.db #0xf2	; 242
	.db #0xf2	; 242
_hud_spr_08:
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfe	; 254
_hud_spr_09:
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xf2	; 242
	.db #0xf2	; 242
_hud_spr_10:
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xfa	; 250
	.db #0xf7	; 247
	.db #0xf5	; 245
_hud_spr_11:
	.db #0xf0	; 240
	.db #0xfa	; 250
	.db #0xf8	; 248
	.db #0xf2	; 242
	.db #0xf0	; 240
_hud_spr_12:
	.db #0xf0	; 240
	.db #0xf6	; 246
	.db #0xf0	; 240
	.db #0xf7	; 247
	.db #0xf6	; 246
_hud_spr_13:
	.db #0xfd	; 253
	.db #0xf9	; 249
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xf8	; 248
_hud_spr_14:
	.db #0xf0	; 240
	.db #0xf6	; 246
	.db #0xf0	; 240
	.db #0xf7	; 247
	.db #0xf6	; 246
_hud_spr_15:
	.db #0xf8	; 248
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xfb	; 251
	.db #0xf8	; 248
	.area _INITIALIZER
	.area _CABS (ABS)
