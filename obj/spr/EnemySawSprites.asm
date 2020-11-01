;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module EnemySawSprites
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _enemy_saw_spr_7
	.globl _enemy_saw_spr_6
	.globl _enemy_saw_spr_5
	.globl _enemy_saw_spr_4
	.globl _enemy_saw_spr_3
	.globl _enemy_saw_spr_2
	.globl _enemy_saw_spr_1
	.globl _enemy_saw_spr_0
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
_enemy_saw_spr_0:
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd3	; 211
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb4	; 180
	.db #0x00	; 0
	.db #0xd2	; 210
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb4	; 180
	.db #0x00	; 0
	.db #0xeb	; 235
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7d	; 125
	.db #0x00	; 0
	.db #0xd2	; 210
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb4	; 180
	.db #0x00	; 0
	.db #0xd2	; 210
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0x00	; 0
	.db #0xbc	; 188
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0xff	; 255
	.db #0x00	; 0
_enemy_saw_spr_1:
	.db #0x88	; 136
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x77	; 119	'w'
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x9e	; 158
	.db #0x77	; 119	'w'
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0x77	; 119	'w'
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0xf5	; 245
	.db #0x77	; 119	'w'
	.db #0x08	; 8
	.db #0x88	; 136
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0xe9	; 233
	.db #0x77	; 119	'w'
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0x77	; 119	'w'
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x5e	; 94
	.db #0x77	; 119	'w'
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xb4	; 180
	.db #0x77	; 119	'w'
	.db #0x80	; 128
_enemy_saw_spr_2:
	.db #0xcc	; 204
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0xb4	; 180
	.db #0x33	; 51	'3'
	.db #0xc0	; 192
	.db #0xcc	; 204
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x33	; 51	'3'
	.db #0xc0	; 192
	.db #0xcc	; 204
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x33	; 51	'3'
	.db #0x48	; 72	'H'
	.db #0xcc	; 204
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0xf2	; 242
	.db #0x33	; 51	'3'
	.db #0x8c	; 140
	.db #0xcc	; 204
	.db #0x13	; 19
	.db #0x00	; 0
	.db #0xf4	; 244
	.db #0x33	; 51	'3'
	.db #0x48	; 72	'H'
	.db #0xcc	; 204
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x33	; 51	'3'
	.db #0x48	; 72	'H'
	.db #0xcc	; 204
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x33	; 51	'3'
	.db #0xc0	; 192
	.db #0xcc	; 204
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0xd2	; 210
	.db #0x33	; 51	'3'
	.db #0xc0	; 192
_enemy_saw_spr_3:
	.db #0xee	; 238
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xd2	; 210
	.db #0x11	; 17
	.db #0xe0	; 224
	.db #0xee	; 238
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xa7	; 167
	.db #0x11	; 17
	.db #0x68	; 104	'h'
	.db #0xee	; 238
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x11	; 17
	.db #0xa4	; 164
	.db #0xee	; 238
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x79	; 121	'y'
	.db #0x11	; 17
	.db #0xc6	; 198
	.db #0xee	; 238
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xfa	; 250
	.db #0x11	; 17
	.db #0xa4	; 164
	.db #0xee	; 238
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x11	; 17
	.db #0xa4	; 164
	.db #0xee	; 238
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x97	; 151
	.db #0x11	; 17
	.db #0x68	; 104	'h'
	.db #0xee	; 238
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0x11	; 17
	.db #0xe0	; 224
_enemy_saw_spr_4:
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe5	; 229
	.db #0x00	; 0
	.db #0x7a	; 122	'z'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd2	; 210
	.db #0x00	; 0
	.db #0xb4	; 180
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb5	; 181
	.db #0x00	; 0
	.db #0xd2	; 210
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb4	; 180
	.db #0x00	; 0
	.db #0xda	; 218
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd2	; 210
	.db #0x00	; 0
	.db #0xb4	; 180
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe5	; 229
	.db #0x00	; 0
	.db #0x7a	; 122	'z'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0xff	; 255
	.db #0x00	; 0
_enemy_saw_spr_5:
	.db #0x88	; 136
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x77	; 119	'w'
	.db #0x08	; 8
	.db #0x88	; 136
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x3d	; 61
	.db #0x77	; 119	'w'
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0xd2	; 210
	.db #0x77	; 119	'w'
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0xe9	; 233
	.db #0x77	; 119	'w'
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0xe5	; 229
	.db #0x77	; 119	'w'
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0xd2	; 210
	.db #0x77	; 119	'w'
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x3d	; 61
	.db #0x77	; 119	'w'
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x77	; 119	'w'
	.db #0x08	; 8
_enemy_saw_spr_6:
	.db #0xcc	; 204
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x33	; 51	'3'
	.db #0x84	; 132
	.db #0xcc	; 204
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x96	; 150
	.db #0x33	; 51	'3'
	.db #0xc8	; 200
	.db #0xcc	; 204
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x33	; 51	'3'
	.db #0xc0	; 192
	.db #0xcc	; 204
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0xf4	; 244
	.db #0x33	; 51	'3'
	.db #0x48	; 72	'H'
	.db #0xcc	; 204
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0xf2	; 242
	.db #0x33	; 51	'3'
	.db #0x48	; 72	'H'
	.db #0xcc	; 204
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x33	; 51	'3'
	.db #0xc0	; 192
	.db #0xcc	; 204
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x96	; 150
	.db #0x33	; 51	'3'
	.db #0xc8	; 200
	.db #0xcc	; 204
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x33	; 51	'3'
	.db #0x84	; 132
_enemy_saw_spr_7:
	.db #0xee	; 238
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x11	; 17
	.db #0xc2	; 194
	.db #0xee	; 238
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xcb	; 203
	.db #0x11	; 17
	.db #0xe4	; 228
	.db #0xee	; 238
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xb4	; 180
	.db #0x11	; 17
	.db #0x68	; 104	'h'
	.db #0xee	; 238
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x7a	; 122	'z'
	.db #0x11	; 17
	.db #0xa4	; 164
	.db #0xee	; 238
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x79	; 121	'y'
	.db #0x11	; 17
	.db #0xa4	; 164
	.db #0xee	; 238
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xb4	; 180
	.db #0x11	; 17
	.db #0x68	; 104	'h'
	.db #0xee	; 238
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xcb	; 203
	.db #0x11	; 17
	.db #0xe4	; 228
	.db #0xee	; 238
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x11	; 17
	.db #0xc2	; 194
	.area _INITIALIZER
	.area _CABS (ABS)
