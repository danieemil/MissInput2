;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module LetterSprites
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _letter_spr_27
	.globl _letter_spr_26
	.globl _letter_spr_25
	.globl _letter_spr_24
	.globl _letter_spr_23
	.globl _letter_spr_22
	.globl _letter_spr_21
	.globl _letter_spr_20
	.globl _letter_spr_19
	.globl _letter_spr_18
	.globl _letter_spr_17
	.globl _letter_spr_16
	.globl _letter_spr_15
	.globl _letter_spr_14
	.globl _letter_spr_13
	.globl _letter_spr_12
	.globl _letter_spr_11
	.globl _letter_spr_10
	.globl _letter_spr_09
	.globl _letter_spr_08
	.globl _letter_spr_07
	.globl _letter_spr_06
	.globl _letter_spr_05
	.globl _letter_spr_04
	.globl _letter_spr_03
	.globl _letter_spr_02
	.globl _letter_spr_01
	.globl _letter_spr_00
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
_letter_spr_00:
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
_letter_spr_01:
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfa	; 250
_letter_spr_02:
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfc	; 252
	.db #0xfa	; 250
	.db #0xfe	; 254
_letter_spr_03:
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xfe	; 254
_letter_spr_04:
	.db #0xfc	; 252
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfc	; 252
_letter_spr_05:
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xfe	; 254
_letter_spr_06:
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xf8	; 248
_letter_spr_07:
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfe	; 254
_letter_spr_08:
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfa	; 250
_letter_spr_09:
	.db #0xfe	; 254
	.db #0xf4	; 244
	.db #0xf4	; 244
	.db #0xf4	; 244
	.db #0xfe	; 254
_letter_spr_10:
	.db #0xfe	; 254
	.db #0xf2	; 242
	.db #0xf2	; 242
	.db #0xfa	; 250
	.db #0xf6	; 246
_letter_spr_11:
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfc	; 252
	.db #0xfa	; 250
	.db #0xfa	; 250
_letter_spr_12:
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xfe	; 254
_letter_spr_13:
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfa	; 250
_letter_spr_14:
	.db #0xfc	; 252
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfa	; 250
_letter_spr_15:
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfe	; 254
_letter_spr_16:
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xf8	; 248
_letter_spr_17:
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfc	; 252
	.db #0xf2	; 242
_letter_spr_18:
	.db #0xfe	; 254
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xfa	; 250
_letter_spr_19:
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xfe	; 254
	.db #0xf2	; 242
	.db #0xfe	; 254
_letter_spr_20:
	.db #0xfe	; 254
	.db #0xf4	; 244
	.db #0xf4	; 244
	.db #0xf4	; 244
	.db #0xf4	; 244
_letter_spr_21:
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfe	; 254
_letter_spr_22:
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xf4	; 244
_letter_spr_23:
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfa	; 250
_letter_spr_24:
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xf4	; 244
	.db #0xfa	; 250
	.db #0xfa	; 250
_letter_spr_25:
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0xf4	; 244
	.db #0xf4	; 244
	.db #0xf4	; 244
_letter_spr_26:
	.db #0xfe	; 254
	.db #0xf2	; 242
	.db #0xf4	; 244
	.db #0xf8	; 248
	.db #0xfe	; 254
_letter_spr_27:
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfe	; 254
	.db #0xf0	; 240
	.db #0xf0	; 240
	.area _INITIALIZER
	.area _CABS (ABS)
