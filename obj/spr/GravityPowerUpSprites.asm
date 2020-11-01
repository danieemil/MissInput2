;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module GravityPowerUpSprites
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gravity_spr_13
	.globl _gravity_spr_12
	.globl _gravity_spr_11
	.globl _gravity_spr_10
	.globl _gravity_spr_09
	.globl _gravity_spr_08
	.globl _gravity_spr_07
	.globl _gravity_spr_06
	.globl _gravity_spr_05
	.globl _gravity_spr_04
	.globl _gravity_spr_03
	.globl _gravity_spr_02
	.globl _gravity_spr_01
	.globl _gravity_spr_00
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
_gravity_spr_00:
	.db #0xc3	; 195
	.db #0x3c	; 60
	.db #0xb5	; 181
	.db #0xda	; 218
	.db #0x7b	; 123
	.db #0xed	; 237
	.db #0x7f	; 127
	.db #0xef	; 239
	.db #0x79	; 121	'y'
	.db #0xe9	; 233
	.db #0x79	; 121	'y'
	.db #0xe9	; 233
	.db #0xb5	; 181
	.db #0xda	; 218
	.db #0xc3	; 195
	.db #0x3c	; 60
_gravity_spr_01:
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xb7	; 183
	.db #0xde	; 222
	.db #0xb7	; 183
	.db #0xfe	; 254
	.db #0xb5	; 181
	.db #0xda	; 218
	.db #0xb5	; 181
	.db #0xda	; 218
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
_gravity_spr_02:
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xd3	; 211
	.db #0xfc	; 252
	.db #0xd7	; 215
	.db #0xfe	; 254
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
_gravity_spr_03:
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
	.db #0xe1	; 225
	.db #0xf8	; 248
	.db #0xe3	; 227
	.db #0xfc	; 252
	.db #0xe7	; 231
	.db #0xfe	; 254
	.db #0xe1	; 225
	.db #0xf8	; 248
	.db #0xe1	; 225
	.db #0xf8	; 248
	.db #0xe1	; 225
	.db #0xf8	; 248
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
_gravity_spr_04:
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
	.db #0xf1	; 241
	.db #0x78	; 120	'x'
	.db #0xf3	; 243
	.db #0x7c	; 124
	.db #0xf7	; 247
	.db #0x7e	; 126
	.db #0xf1	; 241
	.db #0x78	; 120	'x'
	.db #0xf1	; 241
	.db #0x78	; 120	'x'
	.db #0xf1	; 241
	.db #0x78	; 120	'x'
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
_gravity_spr_05:
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xf3	; 243
	.db #0xbc	; 188
	.db #0xf7	; 247
	.db #0xbe	; 190
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
_gravity_spr_06:
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xb7	; 183
	.db #0xde	; 222
	.db #0xf7	; 247
	.db #0xde	; 222
	.db #0xb5	; 181
	.db #0xda	; 218
	.db #0xb5	; 181
	.db #0xda	; 218
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
_gravity_spr_07:
	.db #0xc3	; 195
	.db #0x3c	; 60
	.db #0xb5	; 181
	.db #0xda	; 218
	.db #0x79	; 121	'y'
	.db #0xe9	; 233
	.db #0x79	; 121	'y'
	.db #0xe9	; 233
	.db #0x7f	; 127
	.db #0xef	; 239
	.db #0x7b	; 123
	.db #0xed	; 237
	.db #0xb5	; 181
	.db #0xda	; 218
	.db #0xc3	; 195
	.db #0x3c	; 60
_gravity_spr_08:
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xb5	; 181
	.db #0xda	; 218
	.db #0xb5	; 181
	.db #0xda	; 218
	.db #0xb7	; 183
	.db #0xfe	; 254
	.db #0xb7	; 183
	.db #0xde	; 222
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
_gravity_spr_09:
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xd7	; 215
	.db #0xfe	; 254
	.db #0xd3	; 211
	.db #0xfc	; 252
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
_gravity_spr_10:
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
	.db #0xe1	; 225
	.db #0xf8	; 248
	.db #0xe1	; 225
	.db #0xf8	; 248
	.db #0xe1	; 225
	.db #0xf8	; 248
	.db #0xe7	; 231
	.db #0xfe	; 254
	.db #0xe3	; 227
	.db #0xfc	; 252
	.db #0xe1	; 225
	.db #0xf8	; 248
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
_gravity_spr_11:
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
	.db #0xf1	; 241
	.db #0x78	; 120	'x'
	.db #0xf1	; 241
	.db #0x78	; 120	'x'
	.db #0xf1	; 241
	.db #0x78	; 120	'x'
	.db #0xf7	; 247
	.db #0x7e	; 126
	.db #0xf3	; 243
	.db #0x7c	; 124
	.db #0xf1	; 241
	.db #0x78	; 120	'x'
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
_gravity_spr_12:
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xf7	; 247
	.db #0xbe	; 190
	.db #0xf3	; 243
	.db #0xbc	; 188
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
_gravity_spr_13:
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xb5	; 181
	.db #0xda	; 218
	.db #0xb5	; 181
	.db #0xda	; 218
	.db #0xf7	; 247
	.db #0xde	; 222
	.db #0xb7	; 183
	.db #0xde	; 222
	.db #0xd3	; 211
	.db #0xbc	; 188
	.db #0xe1	; 225
	.db #0x78	; 120	'x'
	.area _INITIALIZER
	.area _CABS (ABS)
