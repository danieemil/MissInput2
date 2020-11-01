ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 ;; Data created with Img2CPC - (c) Retroworks - 2007-2017
                              2 ;; Palete constants
                     0000     3 TILESET_SPR_PALETTE_OFF  == 0
                     0000     4 TILESET_SPR_PALETTE_SIZE == 0
                              5 
                              6 ;; Tile tileset_spr_00 - 16x8 pixels, 4x8 bytes.
                     0000     7 TILESET_SPR_00_OFF      == 0
                     0020     8 TILESET_SPR_00_SIZE     == 32
                     0004     9 TILESET_SPR_00_W        == 4
                     0008    10 TILESET_SPR_00_H        == 8
                             11 ;; Tile tileset_spr_01 - 16x8 pixels, 4x8 bytes.
                     0020    12 TILESET_SPR_01_OFF      == 32
                     0020    13 TILESET_SPR_01_SIZE     == 32
                     0004    14 TILESET_SPR_01_W        == 4
                     0008    15 TILESET_SPR_01_H        == 8
                             16 ;; Tile tileset_spr_02 - 16x8 pixels, 4x8 bytes.
                     0040    17 TILESET_SPR_02_OFF      == 64
                     0020    18 TILESET_SPR_02_SIZE     == 32
                     0004    19 TILESET_SPR_02_W        == 4
                     0008    20 TILESET_SPR_02_H        == 8
                             21 ;; Tile tileset_spr_03 - 16x8 pixels, 4x8 bytes.
                     0060    22 TILESET_SPR_03_OFF      == 96
                     0020    23 TILESET_SPR_03_SIZE     == 32
                     0004    24 TILESET_SPR_03_W        == 4
                     0008    25 TILESET_SPR_03_H        == 8
                             26 ;; Tile tileset_spr_04 - 16x8 pixels, 4x8 bytes.
                     0080    27 TILESET_SPR_04_OFF      == 128
                     0020    28 TILESET_SPR_04_SIZE     == 32
                     0004    29 TILESET_SPR_04_W        == 4
                     0008    30 TILESET_SPR_04_H        == 8
                             31 ;; Tile tileset_spr_05 - 16x8 pixels, 4x8 bytes.
                     00A0    32 TILESET_SPR_05_OFF      == 160
                     0020    33 TILESET_SPR_05_SIZE     == 32
                     0004    34 TILESET_SPR_05_W        == 4
                     0008    35 TILESET_SPR_05_H        == 8
                             36 ;; Tile tileset_spr_06 - 16x8 pixels, 4x8 bytes.
                     00C0    37 TILESET_SPR_06_OFF      == 192
                     0020    38 TILESET_SPR_06_SIZE     == 32
                     0004    39 TILESET_SPR_06_W        == 4
                     0008    40 TILESET_SPR_06_H        == 8
                             41 ;; Tile tileset_spr_07 - 16x8 pixels, 4x8 bytes.
                     00E0    42 TILESET_SPR_07_OFF      == 224
                     0020    43 TILESET_SPR_07_SIZE     == 32
                     0004    44 TILESET_SPR_07_W        == 4
                     0008    45 TILESET_SPR_07_H        == 8
                             46 ;; Tile tileset_spr_08 - 16x8 pixels, 4x8 bytes.
                     0100    47 TILESET_SPR_08_OFF      == 256
                     0020    48 TILESET_SPR_08_SIZE     == 32
                     0004    49 TILESET_SPR_08_W        == 4
                     0008    50 TILESET_SPR_08_H        == 8
                             51 ;; Tile tileset_spr_09 - 16x8 pixels, 4x8 bytes.
                     0120    52 TILESET_SPR_09_OFF      == 288
                     0020    53 TILESET_SPR_09_SIZE     == 32
                     0004    54 TILESET_SPR_09_W        == 4
                     0008    55 TILESET_SPR_09_H        == 8
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                             56 ;; Tile tileset_spr_10 - 16x8 pixels, 4x8 bytes.
                     0140    57 TILESET_SPR_10_OFF      == 320
                     0020    58 TILESET_SPR_10_SIZE     == 32
                     0004    59 TILESET_SPR_10_W        == 4
                     0008    60 TILESET_SPR_10_H        == 8
                             61 ;; Tile tileset_spr_11 - 16x8 pixels, 4x8 bytes.
                     0160    62 TILESET_SPR_11_OFF      == 352
                     0020    63 TILESET_SPR_11_SIZE     == 32
                     0004    64 TILESET_SPR_11_W        == 4
                     0008    65 TILESET_SPR_11_H        == 8
                             66 ;; Tile tileset_spr_12 - 16x8 pixels, 4x8 bytes.
                     0180    67 TILESET_SPR_12_OFF      == 384
                     0020    68 TILESET_SPR_12_SIZE     == 32
                     0004    69 TILESET_SPR_12_W        == 4
                     0008    70 TILESET_SPR_12_H        == 8
                             71 ;; Tile tileset_spr_13 - 16x8 pixels, 4x8 bytes.
                     01A0    72 TILESET_SPR_13_OFF      == 416
                     0020    73 TILESET_SPR_13_SIZE     == 32
                     0004    74 TILESET_SPR_13_W        == 4
                     0008    75 TILESET_SPR_13_H        == 8
                             76 ;; Tile tileset_spr_14 - 16x8 pixels, 4x8 bytes.
                     01C0    77 TILESET_SPR_14_OFF      == 448
                     0020    78 TILESET_SPR_14_SIZE     == 32
                     0004    79 TILESET_SPR_14_W        == 4
                     0008    80 TILESET_SPR_14_H        == 8
                             81 ;; Tile tileset_spr_15 - 16x8 pixels, 4x8 bytes.
                     01E0    82 TILESET_SPR_15_OFF      == 480
                     0020    83 TILESET_SPR_15_SIZE     == 32
                     0004    84 TILESET_SPR_15_W        == 4
                     0008    85 TILESET_SPR_15_H        == 8
                             86 ;; Tile tileset_spr_16 - 16x8 pixels, 4x8 bytes.
                     0200    87 TILESET_SPR_16_OFF      == 512
                     0020    88 TILESET_SPR_16_SIZE     == 32
                     0004    89 TILESET_SPR_16_W        == 4
                     0008    90 TILESET_SPR_16_H        == 8
                             91 ;; Tile tileset_spr_17 - 16x8 pixels, 4x8 bytes.
                     0220    92 TILESET_SPR_17_OFF      == 544
                     0020    93 TILESET_SPR_17_SIZE     == 32
                     0004    94 TILESET_SPR_17_W        == 4
                     0008    95 TILESET_SPR_17_H        == 8
                             96 ;; Tile tileset_spr_18 - 16x8 pixels, 4x8 bytes.
                     0240    97 TILESET_SPR_18_OFF      == 576
                     0020    98 TILESET_SPR_18_SIZE     == 32
                     0004    99 TILESET_SPR_18_W        == 4
                     0008   100 TILESET_SPR_18_H        == 8
                            101 ;; Tile tileset_spr_19 - 16x8 pixels, 4x8 bytes.
                     0260   102 TILESET_SPR_19_OFF      == 608
                     0020   103 TILESET_SPR_19_SIZE     == 32
                     0004   104 TILESET_SPR_19_W        == 4
                     0008   105 TILESET_SPR_19_H        == 8
                            106 ;; Tile tileset_spr_20 - 16x8 pixels, 4x8 bytes.
                     0280   107 TILESET_SPR_20_OFF      == 640
                     0020   108 TILESET_SPR_20_SIZE     == 32
                     0004   109 TILESET_SPR_20_W        == 4
                     0008   110 TILESET_SPR_20_H        == 8
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



                            111 ;; Tile tileset_spr_21 - 16x8 pixels, 4x8 bytes.
                     02A0   112 TILESET_SPR_21_OFF      == 672
                     0020   113 TILESET_SPR_21_SIZE     == 32
                     0004   114 TILESET_SPR_21_W        == 4
                     0008   115 TILESET_SPR_21_H        == 8
                            116 ;; Tile tileset_spr_22 - 16x8 pixels, 4x8 bytes.
                     02C0   117 TILESET_SPR_22_OFF      == 704
                     0020   118 TILESET_SPR_22_SIZE     == 32
                     0004   119 TILESET_SPR_22_W        == 4
                     0008   120 TILESET_SPR_22_H        == 8
                            121 ;; Tile tileset_spr_23 - 16x8 pixels, 4x8 bytes.
                     02E0   122 TILESET_SPR_23_OFF      == 736
                     0020   123 TILESET_SPR_23_SIZE     == 32
                     0004   124 TILESET_SPR_23_W        == 4
                     0008   125 TILESET_SPR_23_H        == 8
                            126 ;; Tile tileset_spr_24 - 16x8 pixels, 4x8 bytes.
                     0300   127 TILESET_SPR_24_OFF      == 768
                     0020   128 TILESET_SPR_24_SIZE     == 32
                     0004   129 TILESET_SPR_24_W        == 4
                     0008   130 TILESET_SPR_24_H        == 8
                            131 ;; Tile tileset_spr_25 - 16x8 pixels, 4x8 bytes.
                     0320   132 TILESET_SPR_25_OFF      == 800
                     0020   133 TILESET_SPR_25_SIZE     == 32
                     0004   134 TILESET_SPR_25_W        == 4
                     0008   135 TILESET_SPR_25_H        == 8
                            136 ;; Tile tileset_spr_26 - 16x8 pixels, 4x8 bytes.
                     0340   137 TILESET_SPR_26_OFF      == 832
                     0020   138 TILESET_SPR_26_SIZE     == 32
                     0004   139 TILESET_SPR_26_W        == 4
                     0008   140 TILESET_SPR_26_H        == 8
                            141 ;; Tile tileset_spr_27 - 16x8 pixels, 4x8 bytes.
                     0360   142 TILESET_SPR_27_OFF      == 864
                     0020   143 TILESET_SPR_27_SIZE     == 32
                     0004   144 TILESET_SPR_27_W        == 4
                     0008   145 TILESET_SPR_27_H        == 8
                            146 ;; Tile tileset_spr_28 - 16x8 pixels, 4x8 bytes.
                     0380   147 TILESET_SPR_28_OFF      == 896
                     0020   148 TILESET_SPR_28_SIZE     == 32
                     0004   149 TILESET_SPR_28_W        == 4
                     0008   150 TILESET_SPR_28_H        == 8
                            151 ;; Tile tileset_spr_29 - 16x8 pixels, 4x8 bytes.
                     03A0   152 TILESET_SPR_29_OFF      == 928
                     0020   153 TILESET_SPR_29_SIZE     == 32
                     0004   154 TILESET_SPR_29_W        == 4
                     0008   155 TILESET_SPR_29_H        == 8
                            156 ;; Tile tileset_spr_30 - 16x8 pixels, 4x8 bytes.
                     03C0   157 TILESET_SPR_30_OFF      == 960
                     0020   158 TILESET_SPR_30_SIZE     == 32
                     0004   159 TILESET_SPR_30_W        == 4
                     0008   160 TILESET_SPR_30_H        == 8
                            161 ;; Tile tileset_spr_31 - 16x8 pixels, 4x8 bytes.
                     03E0   162 TILESET_SPR_31_OFF      == 992
                     0020   163 TILESET_SPR_31_SIZE     == 32
                     0004   164 TILESET_SPR_31_W        == 4
                     0008   165 TILESET_SPR_31_H        == 8
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



                            166 ;; Tile tileset_spr_32 - 16x8 pixels, 4x8 bytes.
                     0400   167 TILESET_SPR_32_OFF      == 1024
                     0020   168 TILESET_SPR_32_SIZE     == 32
                     0004   169 TILESET_SPR_32_W        == 4
                     0008   170 TILESET_SPR_32_H        == 8
                            171 ;; Tile tileset_spr_33 - 16x8 pixels, 4x8 bytes.
                     0420   172 TILESET_SPR_33_OFF      == 1056
                     0020   173 TILESET_SPR_33_SIZE     == 32
                     0004   174 TILESET_SPR_33_W        == 4
                     0008   175 TILESET_SPR_33_H        == 8
                            176 ;; Tile tileset_spr_34 - 16x8 pixels, 4x8 bytes.
                     0440   177 TILESET_SPR_34_OFF      == 1088
                     0020   178 TILESET_SPR_34_SIZE     == 32
                     0004   179 TILESET_SPR_34_W        == 4
                     0008   180 TILESET_SPR_34_H        == 8
                            181 ;; Tile tileset_spr_35 - 16x8 pixels, 4x8 bytes.
                     0460   182 TILESET_SPR_35_OFF      == 1120
                     0020   183 TILESET_SPR_35_SIZE     == 32
                     0004   184 TILESET_SPR_35_W        == 4
                     0008   185 TILESET_SPR_35_H        == 8
                            186 ;; Tile tileset_spr_36 - 16x8 pixels, 4x8 bytes.
                     0480   187 TILESET_SPR_36_OFF      == 1152
                     0020   188 TILESET_SPR_36_SIZE     == 32
                     0004   189 TILESET_SPR_36_W        == 4
                     0008   190 TILESET_SPR_36_H        == 8
                            191 ;; Tile tileset_spr_37 - 16x8 pixels, 4x8 bytes.
                     04A0   192 TILESET_SPR_37_OFF      == 1184
                     0020   193 TILESET_SPR_37_SIZE     == 32
                     0004   194 TILESET_SPR_37_W        == 4
                     0008   195 TILESET_SPR_37_H        == 8
                            196 ;; Tile tileset_spr_38 - 16x8 pixels, 4x8 bytes.
                     04C0   197 TILESET_SPR_38_OFF      == 1216
                     0020   198 TILESET_SPR_38_SIZE     == 32
                     0004   199 TILESET_SPR_38_W        == 4
                     0008   200 TILESET_SPR_38_H        == 8
                            201 ;; Tile tileset_spr_39 - 16x8 pixels, 4x8 bytes.
                     04E0   202 TILESET_SPR_39_OFF      == 1248
                     0020   203 TILESET_SPR_39_SIZE     == 32
                     0004   204 TILESET_SPR_39_W        == 4
                     0008   205 TILESET_SPR_39_H        == 8
                            206 ;; Tile tileset_spr_40 - 16x8 pixels, 4x8 bytes.
                     0500   207 TILESET_SPR_40_OFF      == 1280
                     0020   208 TILESET_SPR_40_SIZE     == 32
                     0004   209 TILESET_SPR_40_W        == 4
                     0008   210 TILESET_SPR_40_H        == 8
                            211 ;; Tile tileset_spr_41 - 16x8 pixels, 4x8 bytes.
                     0520   212 TILESET_SPR_41_OFF      == 1312
                     0020   213 TILESET_SPR_41_SIZE     == 32
                     0004   214 TILESET_SPR_41_W        == 4
                     0008   215 TILESET_SPR_41_H        == 8
                            216 ;; Tile tileset_spr_42 - 16x8 pixels, 4x8 bytes.
                     0540   217 TILESET_SPR_42_OFF      == 1344
                     0020   218 TILESET_SPR_42_SIZE     == 32
                     0004   219 TILESET_SPR_42_W        == 4
                     0008   220 TILESET_SPR_42_H        == 8
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



                            221 ;; Tile tileset_spr_43 - 16x8 pixels, 4x8 bytes.
                     0560   222 TILESET_SPR_43_OFF      == 1376
                     0020   223 TILESET_SPR_43_SIZE     == 32
                     0004   224 TILESET_SPR_43_W        == 4
                     0008   225 TILESET_SPR_43_H        == 8
                            226 ;; Tile tileset_spr_44 - 16x8 pixels, 4x8 bytes.
                     0580   227 TILESET_SPR_44_OFF      == 1408
                     0020   228 TILESET_SPR_44_SIZE     == 32
                     0004   229 TILESET_SPR_44_W        == 4
                     0008   230 TILESET_SPR_44_H        == 8
                            231 ;; Tile tileset_spr_45 - 16x8 pixels, 4x8 bytes.
                     05A0   232 TILESET_SPR_45_OFF      == 1440
                     0020   233 TILESET_SPR_45_SIZE     == 32
                     0004   234 TILESET_SPR_45_W        == 4
                     0008   235 TILESET_SPR_45_H        == 8
                            236 ;; Tile tileset_spr_46 - 16x8 pixels, 4x8 bytes.
                     05C0   237 TILESET_SPR_46_OFF      == 1472
                     0020   238 TILESET_SPR_46_SIZE     == 32
                     0004   239 TILESET_SPR_46_W        == 4
                     0008   240 TILESET_SPR_46_H        == 8
                            241 ;; Tile tileset_spr_47 - 16x8 pixels, 4x8 bytes.
                     05E0   242 TILESET_SPR_47_OFF      == 1504
                     0020   243 TILESET_SPR_47_SIZE     == 32
                     0004   244 TILESET_SPR_47_W        == 4
                     0008   245 TILESET_SPR_47_H        == 8
