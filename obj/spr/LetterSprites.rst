                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module LetterSprites
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _letter_spr_27
                             12 	.globl _letter_spr_26
                             13 	.globl _letter_spr_25
                             14 	.globl _letter_spr_24
                             15 	.globl _letter_spr_23
                             16 	.globl _letter_spr_22
                             17 	.globl _letter_spr_21
                             18 	.globl _letter_spr_20
                             19 	.globl _letter_spr_19
                             20 	.globl _letter_spr_18
                             21 	.globl _letter_spr_17
                             22 	.globl _letter_spr_16
                             23 	.globl _letter_spr_15
                             24 	.globl _letter_spr_14
                             25 	.globl _letter_spr_13
                             26 	.globl _letter_spr_12
                             27 	.globl _letter_spr_11
                             28 	.globl _letter_spr_10
                             29 	.globl _letter_spr_09
                             30 	.globl _letter_spr_08
                             31 	.globl _letter_spr_07
                             32 	.globl _letter_spr_06
                             33 	.globl _letter_spr_05
                             34 	.globl _letter_spr_04
                             35 	.globl _letter_spr_03
                             36 	.globl _letter_spr_02
                             37 	.globl _letter_spr_01
                             38 	.globl _letter_spr_00
                             39 ;--------------------------------------------------------
                             40 ; special function registers
                             41 ;--------------------------------------------------------
                             42 ;--------------------------------------------------------
                             43 ; ram data
                             44 ;--------------------------------------------------------
                             45 	.area _DATA
                             46 ;--------------------------------------------------------
                             47 ; ram data
                             48 ;--------------------------------------------------------
                             49 	.area _INITIALIZED
                             50 ;--------------------------------------------------------
                             51 ; absolute external ram data
                             52 ;--------------------------------------------------------
                             53 	.area _DABS (ABS)
                             54 ;--------------------------------------------------------
                             55 ; global & static initialisations
                             56 ;--------------------------------------------------------
                             57 	.area _HOME
                             58 	.area _GSINIT
                             59 	.area _GSFINAL
                             60 	.area _GSINIT
                             61 ;--------------------------------------------------------
                             62 ; Home
                             63 ;--------------------------------------------------------
                             64 	.area _HOME
                             65 	.area _HOME
                             66 ;--------------------------------------------------------
                             67 ; code
                             68 ;--------------------------------------------------------
                             69 	.area _CODE
                             70 	.area _CODE
   36EE                      71 _letter_spr_00:
   36EE F0                   72 	.db #0xf0	; 240
   36EF F0                   73 	.db #0xf0	; 240
   36F0 F0                   74 	.db #0xf0	; 240
   36F1 F0                   75 	.db #0xf0	; 240
   36F2 F0                   76 	.db #0xf0	; 240
   36F3                      77 _letter_spr_01:
   36F3 FE                   78 	.db #0xfe	; 254
   36F4 FA                   79 	.db #0xfa	; 250
   36F5 FE                   80 	.db #0xfe	; 254
   36F6 FA                   81 	.db #0xfa	; 250
   36F7 FA                   82 	.db #0xfa	; 250
   36F8                      83 _letter_spr_02:
   36F8 FE                   84 	.db #0xfe	; 254
   36F9 FA                   85 	.db #0xfa	; 250
   36FA FC                   86 	.db #0xfc	; 252
   36FB FA                   87 	.db #0xfa	; 250
   36FC FE                   88 	.db #0xfe	; 254
   36FD                      89 _letter_spr_03:
   36FD FE                   90 	.db #0xfe	; 254
   36FE F8                   91 	.db #0xf8	; 248
   36FF F8                   92 	.db #0xf8	; 248
   3700 F8                   93 	.db #0xf8	; 248
   3701 FE                   94 	.db #0xfe	; 254
   3702                      95 _letter_spr_04:
   3702 FC                   96 	.db #0xfc	; 252
   3703 FA                   97 	.db #0xfa	; 250
   3704 FA                   98 	.db #0xfa	; 250
   3705 FA                   99 	.db #0xfa	; 250
   3706 FC                  100 	.db #0xfc	; 252
   3707                     101 _letter_spr_05:
   3707 FE                  102 	.db #0xfe	; 254
   3708 F8                  103 	.db #0xf8	; 248
   3709 FC                  104 	.db #0xfc	; 252
   370A F8                  105 	.db #0xf8	; 248
   370B FE                  106 	.db #0xfe	; 254
   370C                     107 _letter_spr_06:
   370C FE                  108 	.db #0xfe	; 254
   370D F8                  109 	.db #0xf8	; 248
   370E FC                  110 	.db #0xfc	; 252
   370F F8                  111 	.db #0xf8	; 248
   3710 F8                  112 	.db #0xf8	; 248
   3711                     113 _letter_spr_07:
   3711 FE                  114 	.db #0xfe	; 254
   3712 F8                  115 	.db #0xf8	; 248
   3713 FA                  116 	.db #0xfa	; 250
   3714 FA                  117 	.db #0xfa	; 250
   3715 FE                  118 	.db #0xfe	; 254
   3716                     119 _letter_spr_08:
   3716 FA                  120 	.db #0xfa	; 250
   3717 FA                  121 	.db #0xfa	; 250
   3718 FE                  122 	.db #0xfe	; 254
   3719 FA                  123 	.db #0xfa	; 250
   371A FA                  124 	.db #0xfa	; 250
   371B                     125 _letter_spr_09:
   371B FE                  126 	.db #0xfe	; 254
   371C F4                  127 	.db #0xf4	; 244
   371D F4                  128 	.db #0xf4	; 244
   371E F4                  129 	.db #0xf4	; 244
   371F FE                  130 	.db #0xfe	; 254
   3720                     131 _letter_spr_10:
   3720 FE                  132 	.db #0xfe	; 254
   3721 F2                  133 	.db #0xf2	; 242
   3722 F2                  134 	.db #0xf2	; 242
   3723 FA                  135 	.db #0xfa	; 250
   3724 F6                  136 	.db #0xf6	; 246
   3725                     137 _letter_spr_11:
   3725 FA                  138 	.db #0xfa	; 250
   3726 FA                  139 	.db #0xfa	; 250
   3727 FC                  140 	.db #0xfc	; 252
   3728 FA                  141 	.db #0xfa	; 250
   3729 FA                  142 	.db #0xfa	; 250
   372A                     143 _letter_spr_12:
   372A F8                  144 	.db #0xf8	; 248
   372B F8                  145 	.db #0xf8	; 248
   372C F8                  146 	.db #0xf8	; 248
   372D F8                  147 	.db #0xf8	; 248
   372E FE                  148 	.db #0xfe	; 254
   372F                     149 _letter_spr_13:
   372F FA                  150 	.db #0xfa	; 250
   3730 FE                  151 	.db #0xfe	; 254
   3731 FE                  152 	.db #0xfe	; 254
   3732 FA                  153 	.db #0xfa	; 250
   3733 FA                  154 	.db #0xfa	; 250
   3734                     155 _letter_spr_14:
   3734 FC                  156 	.db #0xfc	; 252
   3735 FA                  157 	.db #0xfa	; 250
   3736 FA                  158 	.db #0xfa	; 250
   3737 FA                  159 	.db #0xfa	; 250
   3738 FA                  160 	.db #0xfa	; 250
   3739                     161 _letter_spr_15:
   3739 FE                  162 	.db #0xfe	; 254
   373A FA                  163 	.db #0xfa	; 250
   373B FA                  164 	.db #0xfa	; 250
   373C FA                  165 	.db #0xfa	; 250
   373D FE                  166 	.db #0xfe	; 254
   373E                     167 _letter_spr_16:
   373E FE                  168 	.db #0xfe	; 254
   373F FA                  169 	.db #0xfa	; 250
   3740 FE                  170 	.db #0xfe	; 254
   3741 F8                  171 	.db #0xf8	; 248
   3742 F8                  172 	.db #0xf8	; 248
   3743                     173 _letter_spr_17:
   3743 FE                  174 	.db #0xfe	; 254
   3744 FA                  175 	.db #0xfa	; 250
   3745 FA                  176 	.db #0xfa	; 250
   3746 FC                  177 	.db #0xfc	; 252
   3747 F2                  178 	.db #0xf2	; 242
   3748                     179 _letter_spr_18:
   3748 FE                  180 	.db #0xfe	; 254
   3749 FA                  181 	.db #0xfa	; 250
   374A FE                  182 	.db #0xfe	; 254
   374B FC                  183 	.db #0xfc	; 252
   374C FA                  184 	.db #0xfa	; 250
   374D                     185 _letter_spr_19:
   374D FE                  186 	.db #0xfe	; 254
   374E F8                  187 	.db #0xf8	; 248
   374F FE                  188 	.db #0xfe	; 254
   3750 F2                  189 	.db #0xf2	; 242
   3751 FE                  190 	.db #0xfe	; 254
   3752                     191 _letter_spr_20:
   3752 FE                  192 	.db #0xfe	; 254
   3753 F4                  193 	.db #0xf4	; 244
   3754 F4                  194 	.db #0xf4	; 244
   3755 F4                  195 	.db #0xf4	; 244
   3756 F4                  196 	.db #0xf4	; 244
   3757                     197 _letter_spr_21:
   3757 FA                  198 	.db #0xfa	; 250
   3758 FA                  199 	.db #0xfa	; 250
   3759 FA                  200 	.db #0xfa	; 250
   375A FA                  201 	.db #0xfa	; 250
   375B FE                  202 	.db #0xfe	; 254
   375C                     203 _letter_spr_22:
   375C FA                  204 	.db #0xfa	; 250
   375D FA                  205 	.db #0xfa	; 250
   375E FA                  206 	.db #0xfa	; 250
   375F FA                  207 	.db #0xfa	; 250
   3760 F4                  208 	.db #0xf4	; 244
   3761                     209 _letter_spr_23:
   3761 FA                  210 	.db #0xfa	; 250
   3762 FA                  211 	.db #0xfa	; 250
   3763 FE                  212 	.db #0xfe	; 254
   3764 FE                  213 	.db #0xfe	; 254
   3765 FA                  214 	.db #0xfa	; 250
   3766                     215 _letter_spr_24:
   3766 FA                  216 	.db #0xfa	; 250
   3767 FA                  217 	.db #0xfa	; 250
   3768 F4                  218 	.db #0xf4	; 244
   3769 FA                  219 	.db #0xfa	; 250
   376A FA                  220 	.db #0xfa	; 250
   376B                     221 _letter_spr_25:
   376B FA                  222 	.db #0xfa	; 250
   376C FE                  223 	.db #0xfe	; 254
   376D F4                  224 	.db #0xf4	; 244
   376E F4                  225 	.db #0xf4	; 244
   376F F4                  226 	.db #0xf4	; 244
   3770                     227 _letter_spr_26:
   3770 FE                  228 	.db #0xfe	; 254
   3771 F2                  229 	.db #0xf2	; 242
   3772 F4                  230 	.db #0xf4	; 244
   3773 F8                  231 	.db #0xf8	; 248
   3774 FE                  232 	.db #0xfe	; 254
   3775                     233 _letter_spr_27:
   3775 F0                  234 	.db #0xf0	; 240
   3776 F0                  235 	.db #0xf0	; 240
   3777 FE                  236 	.db #0xfe	; 254
   3778 F0                  237 	.db #0xf0	; 240
   3779 F0                  238 	.db #0xf0	; 240
                            239 	.area _INITIALIZER
                            240 	.area _CABS (ABS)
