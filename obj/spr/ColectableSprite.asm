;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module ColectableSprite
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _colectable_spr_3
	.globl _colectable_spr_2
	.globl _colectable_spr_1
	.globl _colectable_spr_0
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
_colectable_spr_0:
	.db #0xf0	; 240
	.db #0x78	; 120	'x'
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe1	; 225
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x78	; 120	'x'
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xe3	; 227
	.db #0xf4	; 244
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xe7	; 231
	.db #0xf6	; 246
	.db #0xd6	; 214
	.db #0xf2	; 242
	.db #0xf4	; 244
	.db #0xf2	; 242
	.db #0xf6	; 246
	.db #0xf6	; 246
	.db #0xf3	; 243
	.db #0xfc	; 252
_colectable_spr_1:
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x78	; 120	'x'
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe1	; 225
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xe3	; 227
	.db #0xf4	; 244
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xe7	; 231
	.db #0xf6	; 246
	.db #0xd6	; 214
	.db #0xf2	; 242
	.db #0xf4	; 244
	.db #0xf2	; 242
	.db #0xf6	; 246
	.db #0xf6	; 246
	.db #0xf3	; 243
	.db #0xfc	; 252
_colectable_spr_2:
	.db #0xe1	; 225
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x78	; 120	'x'
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe1	; 225
	.db #0xf0	; 240
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xe3	; 227
	.db #0xf4	; 244
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xe7	; 231
	.db #0xf6	; 246
	.db #0xd6	; 214
	.db #0xf2	; 242
	.db #0xf4	; 244
	.db #0xf2	; 242
	.db #0xf6	; 246
	.db #0xf6	; 246
	.db #0xf3	; 243
	.db #0xfc	; 252
_colectable_spr_3:
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe1	; 225
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x78	; 120	'x'
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xe3	; 227
	.db #0xf4	; 244
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xe7	; 231
	.db #0xf6	; 246
	.db #0xd6	; 214
	.db #0xf2	; 242
	.db #0xf4	; 244
	.db #0xf2	; 242
	.db #0xf6	; 246
	.db #0xf6	; 246
	.db #0xf3	; 243
	.db #0xfc	; 252
	.area _INITIALIZER
	.area _CABS (ABS)
