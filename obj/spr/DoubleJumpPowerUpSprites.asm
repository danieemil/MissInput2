;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module DoubleJumpPowerUpSprites
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _double_jump_spr_4
	.globl _double_jump_spr_3
	.globl _double_jump_spr_2
	.globl _double_jump_spr_1
	.globl _double_jump_spr_0
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
_double_jump_spr_0:
	.db #0xf0	; 240
	.db #0xc3	; 195
	.db #0x3c	; 60
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xb4	; 180
	.db #0xd2	; 210
	.db #0xf0	; 240
	.db #0xf5	; 245
	.db #0xbd	; 189
	.db #0xdb	; 219
	.db #0xf2	; 242
	.db #0xf4	; 244
	.db #0xbd	; 189
	.db #0xdb	; 219
	.db #0xfa	; 250
	.db #0xf0	; 240
	.db #0xb4	; 180
	.db #0xd2	; 210
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xc3	; 195
	.db #0x3c	; 60
	.db #0xf0	; 240
_double_jump_spr_1:
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xc3	; 195
	.db #0x3c	; 60
	.db #0xf0	; 240
	.db #0xf5	; 245
	.db #0xbd	; 189
	.db #0xdb	; 219
	.db #0xf2	; 242
	.db #0xf4	; 244
	.db #0xbd	; 189
	.db #0xdb	; 219
	.db #0xfa	; 250
	.db #0xf0	; 240
	.db #0xc3	; 195
	.db #0x3c	; 60
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
_double_jump_spr_2:
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf5	; 245
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0xf2	; 242
	.db #0xf4	; 244
	.db #0x8f	; 143
	.db #0x1f	; 31
	.db #0xfa	; 250
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
_double_jump_spr_3:
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf5	; 245
	.db #0x8f	; 143
	.db #0x1f	; 31
	.db #0xf2	; 242
	.db #0xf4	; 244
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0xfa	; 250
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
_double_jump_spr_4:
	.db #0xf0	; 240
	.db #0x87	; 135
	.db #0x1e	; 30
	.db #0xf0	; 240
	.db #0x87	; 135
	.db #0x78	; 120	'x'
	.db #0xe1	; 225
	.db #0x1e	; 30
	.db #0x7d	; 125
	.db #0xf9	; 249
	.db #0xfb	; 251
	.db #0xe3	; 227
	.db #0x7c	; 124
	.db #0xfd	; 253
	.db #0xf9	; 249
	.db #0xeb	; 235
	.db #0x87	; 135
	.db #0x78	; 120	'x'
	.db #0xe1	; 225
	.db #0x1e	; 30
	.db #0xf0	; 240
	.db #0x87	; 135
	.db #0x1e	; 30
	.db #0xf0	; 240
	.area _INITIALIZER
	.area _CABS (ABS)
