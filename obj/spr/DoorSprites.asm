;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module DoorSprites
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _door_spr_4
	.globl _door_spr_3
	.globl _door_spr_2
	.globl _door_spr_1
	.globl _door_spr_0
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
_door_spr_0:
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf4	; 244
	.db #0xf2	; 242
_door_spr_1:
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf4	; 244
	.db #0xf2	; 242
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
_door_spr_2:
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf4	; 244
	.db #0xf2	; 242
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
_door_spr_3:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf4	; 244
	.db #0xf2	; 242
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
_door_spr_4:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.area _INITIALIZER
	.area _CABS (ABS)
