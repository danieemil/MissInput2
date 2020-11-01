                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module HUDSprites
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _hud_spr_15
                             12 	.globl _hud_spr_14
                             13 	.globl _hud_spr_13
                             14 	.globl _hud_spr_12
                             15 	.globl _hud_spr_11
                             16 	.globl _hud_spr_10
                             17 	.globl _hud_spr_09
                             18 	.globl _hud_spr_08
                             19 	.globl _hud_spr_07
                             20 	.globl _hud_spr_06
                             21 	.globl _hud_spr_05
                             22 	.globl _hud_spr_04
                             23 	.globl _hud_spr_03
                             24 	.globl _hud_spr_02
                             25 	.globl _hud_spr_01
                             26 	.globl _hud_spr_00
                             27 ;--------------------------------------------------------
                             28 ; special function registers
                             29 ;--------------------------------------------------------
                             30 ;--------------------------------------------------------
                             31 ; ram data
                             32 ;--------------------------------------------------------
                             33 	.area _DATA
                             34 ;--------------------------------------------------------
                             35 ; ram data
                             36 ;--------------------------------------------------------
                             37 	.area _INITIALIZED
                             38 ;--------------------------------------------------------
                             39 ; absolute external ram data
                             40 ;--------------------------------------------------------
                             41 	.area _DABS (ABS)
                             42 ;--------------------------------------------------------
                             43 ; global & static initialisations
                             44 ;--------------------------------------------------------
                             45 	.area _HOME
                             46 	.area _GSINIT
                             47 	.area _GSFINAL
                             48 	.area _GSINIT
                             49 ;--------------------------------------------------------
                             50 ; Home
                             51 ;--------------------------------------------------------
                             52 	.area _HOME
                             53 	.area _HOME
                             54 ;--------------------------------------------------------
                             55 ; code
                             56 ;--------------------------------------------------------
                             57 	.area _CODE
                             58 	.area _CODE
   37A4                      59 _hud_spr_00:
   37A4 FE                   60 	.db #0xfe	; 254
   37A5 FA                   61 	.db #0xfa	; 250
   37A6 FA                   62 	.db #0xfa	; 250
   37A7 FA                   63 	.db #0xfa	; 250
   37A8 FE                   64 	.db #0xfe	; 254
   37A9                      65 _hud_spr_01:
   37A9 F4                   66 	.db #0xf4	; 244
   37AA FC                   67 	.db #0xfc	; 252
   37AB F4                   68 	.db #0xf4	; 244
   37AC F4                   69 	.db #0xf4	; 244
   37AD FE                   70 	.db #0xfe	; 254
   37AE                      71 _hud_spr_02:
   37AE FE                   72 	.db #0xfe	; 254
   37AF F2                   73 	.db #0xf2	; 242
   37B0 FE                   74 	.db #0xfe	; 254
   37B1 F8                   75 	.db #0xf8	; 248
   37B2 FE                   76 	.db #0xfe	; 254
   37B3                      77 _hud_spr_03:
   37B3 FE                   78 	.db #0xfe	; 254
   37B4 F2                   79 	.db #0xf2	; 242
   37B5 F6                   80 	.db #0xf6	; 246
   37B6 F2                   81 	.db #0xf2	; 242
   37B7 FE                   82 	.db #0xfe	; 254
   37B8                      83 _hud_spr_04:
   37B8 FA                   84 	.db #0xfa	; 250
   37B9 FA                   85 	.db #0xfa	; 250
   37BA FE                   86 	.db #0xfe	; 254
   37BB F2                   87 	.db #0xf2	; 242
   37BC F2                   88 	.db #0xf2	; 242
   37BD                      89 _hud_spr_05:
   37BD FE                   90 	.db #0xfe	; 254
   37BE F8                   91 	.db #0xf8	; 248
   37BF FE                   92 	.db #0xfe	; 254
   37C0 F2                   93 	.db #0xf2	; 242
   37C1 FE                   94 	.db #0xfe	; 254
   37C2                      95 _hud_spr_06:
   37C2 FE                   96 	.db #0xfe	; 254
   37C3 F8                   97 	.db #0xf8	; 248
   37C4 FE                   98 	.db #0xfe	; 254
   37C5 FA                   99 	.db #0xfa	; 250
   37C6 FE                  100 	.db #0xfe	; 254
   37C7                     101 _hud_spr_07:
   37C7 FE                  102 	.db #0xfe	; 254
   37C8 F2                  103 	.db #0xf2	; 242
   37C9 F2                  104 	.db #0xf2	; 242
   37CA F2                  105 	.db #0xf2	; 242
   37CB F2                  106 	.db #0xf2	; 242
   37CC                     107 _hud_spr_08:
   37CC FE                  108 	.db #0xfe	; 254
   37CD FA                  109 	.db #0xfa	; 250
   37CE FE                  110 	.db #0xfe	; 254
   37CF FA                  111 	.db #0xfa	; 250
   37D0 FE                  112 	.db #0xfe	; 254
   37D1                     113 _hud_spr_09:
   37D1 FE                  114 	.db #0xfe	; 254
   37D2 FA                  115 	.db #0xfa	; 250
   37D3 FE                  116 	.db #0xfe	; 254
   37D4 F2                  117 	.db #0xf2	; 242
   37D5 F2                  118 	.db #0xf2	; 242
   37D6                     119 _hud_spr_10:
   37D6 F7                  120 	.db #0xf7	; 247
   37D7 FF                  121 	.db #0xff	; 255
   37D8 FA                  122 	.db #0xfa	; 250
   37D9 F7                  123 	.db #0xf7	; 247
   37DA F5                  124 	.db #0xf5	; 245
   37DB                     125 _hud_spr_11:
   37DB F0                  126 	.db #0xf0	; 240
   37DC FA                  127 	.db #0xfa	; 250
   37DD F8                  128 	.db #0xf8	; 248
   37DE F2                  129 	.db #0xf2	; 242
   37DF F0                  130 	.db #0xf0	; 240
   37E0                     131 _hud_spr_12:
   37E0 F0                  132 	.db #0xf0	; 240
   37E1 F6                  133 	.db #0xf6	; 246
   37E2 F0                  134 	.db #0xf0	; 240
   37E3 F7                  135 	.db #0xf7	; 247
   37E4 F6                  136 	.db #0xf6	; 246
   37E5                     137 _hud_spr_13:
   37E5 FD                  138 	.db #0xfd	; 253
   37E6 F9                  139 	.db #0xf9	; 249
   37E7 FD                  140 	.db #0xfd	; 253
   37E8 FD                  141 	.db #0xfd	; 253
   37E9 F8                  142 	.db #0xf8	; 248
   37EA                     143 _hud_spr_14:
   37EA F0                  144 	.db #0xf0	; 240
   37EB F6                  145 	.db #0xf6	; 246
   37EC F0                  146 	.db #0xf0	; 240
   37ED F7                  147 	.db #0xf7	; 247
   37EE F6                  148 	.db #0xf6	; 246
   37EF                     149 _hud_spr_15:
   37EF F8                  150 	.db #0xf8	; 248
   37F0 FE                  151 	.db #0xfe	; 254
   37F1 F8                  152 	.db #0xf8	; 248
   37F2 FB                  153 	.db #0xfb	; 251
   37F3 F8                  154 	.db #0xf8	; 248
                            155 	.area _INITIALIZER
                            156 	.area _CABS (ABS)
