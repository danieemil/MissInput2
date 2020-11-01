ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 .include "data.h.s"
                              1 ;;MAPS
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                              2 .include "bins/map_00.h.s"
                              1 ;; File 'src/bins/map_00.h.s' generated using cpct_pack
                              2 ;; Compresor used:   zx7b
                              3 ;; Files compressed: [ 'src/maps/Mapa_00.bin' ]
                              4 ;; Uncompressed:     460 bytes
                              5 ;; Compressed:       120 bytes
                              6 ;; Space saved:      340 bytes
                              7 ;;
                              8 
                              9 ;; Declaration of the compressed array and
                             10 ;; the address of the latest byte of the compressed array (for unpacking purposes)
                             11 .globl _map_00
                             12 .globl _map_00_end
                             13 
                             14 ;; Compressed and uncompressed sizes
                     0078    15 _map_00_size_z == 120
                     01CC    16 _map_00_size   == 460
                             17 
                             18 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



                              3 
                              4 .globl level_index
                              5 
                              6 .globl palette_index
                              7 
                              8 
                              9 ;HUD COSAS
                             10 ;                         ptr
                     A807    11 HUD_P1_DEATHS   = 0xA807
                     A847    12 HUD_P2_DEATHS   = 0xA847
                             13 
                     A80E    14 HUD_P1_SCORE    = 0xA80E
                     A83B    15 HUD_P2_SCORE    = 0xA83B
                             16 
                     A024    17 HUD_SKULL_1     = 0xA024
                     A027    18 HUD_SKULL_2     = 0xA027
                     A02A    19 HUD_SKULL_3     = 0xA02A
                             20 
                             21 
                             22 
                     0002    23 NUM_LEVELS = 2
                             24 
                             25 ;;SPRITES
                             26 .globl _checkpoint_top_spr_0
                             27 .globl _checkpoint_top_spr_1
                             28 
                             29 .globl _player_spr_00
                             30 .globl _player_spr_01
                             31 .globl _player_spr_04
                             32 .globl _player_spr_05
                             33 .globl _player_spr_08
                             34 .globl _player_spr_09
                             35 .globl _player_spr_12
                             36 .globl _player_spr_13
                             37 .globl _player_spr_14
                             38 .globl _player_spr_15
                             39 .globl _player_spr_16
                             40 .globl _player_spr_17
                             41 
                             42 .globl _player_2_spr_00
                             43 .globl _player_2_spr_13
                             44 .globl _player_2_spr_14
                             45 .globl _player_2_spr_15
                             46 .globl _player_2_spr_16
                             47 .globl _player_2_spr_17 
                             48 
                             49 .globl _enemy_spr_00
                             50 .globl _enemy_spr_04
                             51 .globl _enemy_spr_08
                             52 .globl _enemy_spr_12
                             53 .globl _enemy_spr_16
                             54 .globl _enemy_spr_20
                             55 
                             56 .globl _door_spr_0
                             57 .globl _door_spr_1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



                             58 .globl _door_spr_2
                             59 .globl _door_spr_3
                             60 .globl _door_spr_4
                             61 
                             62 .globl _hud_spr_15
                             63 .globl _hud_spr_14
                             64 .globl _hud_spr_13
                             65 .globl _hud_spr_12
                             66 .globl _hud_spr_11
                             67 .globl _hud_spr_10
                             68 .globl _hud_spr_09
                             69 .globl _hud_spr_08
                             70 .globl _hud_spr_07
                             71 .globl _hud_spr_06
                             72 .globl _hud_spr_05
                             73 .globl _hud_spr_04
                             74 .globl _hud_spr_03
                             75 .globl _hud_spr_02
                             76 .globl _hud_spr_01
                             77 .globl _hud_spr_00
                             78 
                             79 .globl _hud_skull_spr_2
                             80 .globl _hud_skull_spr_1
                             81 .globl _hud_skull_spr_0
                             82 
                             83 .globl _letter_spr_27
                             84 .globl _letter_spr_26
                             85 .globl _letter_spr_25
                             86 .globl _letter_spr_24
                             87 .globl _letter_spr_23
                             88 .globl _letter_spr_22
                             89 .globl _letter_spr_21
                             90 .globl _letter_spr_20
                             91 .globl _letter_spr_19
                             92 .globl _letter_spr_18
                             93 .globl _letter_spr_17
                             94 .globl _letter_spr_16
                             95 .globl _letter_spr_15
                             96 .globl _letter_spr_14
                             97 .globl _letter_spr_13
                             98 .globl _letter_spr_12
                             99 .globl _letter_spr_11
                            100 .globl _letter_spr_10
                            101 .globl _letter_spr_09
                            102 .globl _letter_spr_08
                            103 .globl _letter_spr_07
                            104 .globl _letter_spr_06
                            105 .globl _letter_spr_05
                            106 .globl _letter_spr_04
                            107 .globl _letter_spr_03
                            108 .globl _letter_spr_02
                            109 .globl _letter_spr_01
                            110 .globl _letter_spr_00
                            111 
                            112 .globl _offon_spr_2
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



                            113 .globl _offon_spr_1
                            114 .globl _offon_spr_0
                            115 
                            116 .globl _dospuntos_spr
                            117 
                            118 .globl _double_jump_spr_0
                            119 .globl _double_jump_spr_1
                            120 .globl _double_jump_spr_2
                            121 .globl _double_jump_spr_3
                            122 .globl _double_jump_spr_4
                            123 
                            124 .globl _gravity_spr_13
                            125 .globl _gravity_spr_12
                            126 .globl _gravity_spr_11
                            127 .globl _gravity_spr_10
                            128 .globl _gravity_spr_09
                            129 .globl _gravity_spr_08
                            130 .globl _gravity_spr_07
                            131 .globl _gravity_spr_06
                            132 .globl _gravity_spr_05
                            133 .globl _gravity_spr_04
                            134 .globl _gravity_spr_03
                            135 .globl _gravity_spr_02
                            136 .globl _gravity_spr_01
                            137 .globl _gravity_spr_00
                            138 
                            139 .globl _colectable_spr_3
                            140 .globl _colectable_spr_2
                            141 .globl _colectable_spr_1
                            142 .globl _colectable_spr_0
                            143 .globl _colectable_void_spr
                            144 
                            145 .globl _hud_number_index
                            146 .globl _hud_letter_index
                            147 
                            148 ;;TEXTOS
                            149 .globl mm_singleplayer
                            150 .globl mm_multiplayer
                            151 .globl mm_options
                            152 
                            153 .globl om_controls
                            154 .globl om_p1controls
                            155 .globl om_p2controls
                            156 .globl om_accessibility
                            157 .globl om_godmode
                            158 .globl om_palette
                            159 .globl om_restore
                            160 .globl om_back
                            161 .globl om_changecontrols
                            162 .globl om_rightkey
                            163 .globl om_leftkey
                            164 .globl om_jumpkey
                            165 .globl om_off
                            166 .globl om_on
                            167 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



                            168 .globl pm_pause
                            169 .globl pm_return
                            170 .globl pm_mainmenu
                            171 
                            172 .globl em_completed
                            173 .globl em_score
                            174 .globl em_deaths
                            175 .globl em_p1
                            176 .globl em_p2
                            177 .globl em_time
                            178 .globl em_key
                            179 .globl em_no_p2_score
                            180 .globl em_no_p2_deaths
                            181 
                            182 
                            183 ;;                       Y        X
                     0C30   184 MM_SINGLEPLAYER_POS = 0x0C10 + 0x0020
                     0CD0   185 MM_MULTIPLAYER_POS  = 0x0CB0 + 0x0020
                     0D70   186 MM_OPTIONS_POS      = 0x0D50 + 0x0020
                            187 
                            188 ;;                          Y        X
                     0AE8   189 OM_CONTROLS_POS        = 0x0AD0 + 0x0018
                     0B84   190 OM_P1CONTROLS_POS      = 0x0B70 + 0x0014
                     0C24   191 OM_P2CONTROLS_POS      = 0x0C10 + 0x0014
                     0AFD   192 OM_ACCESSIBILITY_POS    = 0x0AD0 + 0x002E - 1
                     0B9C   193 OM_GODMODE_POS          = 0x0B70 + 0x002C
                     0C3C   194 OM_PALETTE_POS          = 0x0C10 + 0x002C
                     0D70   195 OM_RESTORE_POS          = 0x0D50 + 0x0020
                     0EB4   196 OM_BACK_POS             = 0x0E90 + 0x0024
                     0BA9   197 OM_OFF_POS              = 0x0B70 + 0x002C + 13
                     0BA9   198 OM_ON_POS               = 0x0B70 + 0x002C + 13
                            199 
                     0B89   200 OM_CHANGECONTROLS_POS   = 0x0B70 + 0x0026 - 13
                     0C34   201 OM_RIGHTKEY_POS         = 0x0C10 + 0x002D - 9
                     0C34   202 OM_LEFTKEY_POS          = 0x0C10 + 0x002D - 9
                     0C34   203 OM_JUMPKEY_POS          = 0x0C10 + 0x002D - 9
                            204 
                            205 ;;                   Y        X
                     0B94   206 PM_PAUSE_POS    = 0x0B70 + 0x0026 - 2
                     0C2B   207 PM_RETURN_POS   = 0x0C10 + 0x001C - 1
                     0C3D   208 PM_MAINMENU_POS = 0x0C10 + 0x002D
                            209 
                            210 
                     1298   211 EM_COMPLETED    = 0x1280 + 24
                     13E1   212 EM_SCORE        = 0x13C0 + 33
                     13EA   213 EM_DEATHS       = 0x13C0 + 42
                     147C   214 EM_P1           = 0x1460 + 28
                     151C   215 EM_P2           = 0x1500 + 28
                     1612   216 EM_TIME         = 0x15F0 + 34
                     174B   217 EM_CONTINUE     = 0x1730 + 27
                            218 
                     1480   219 EM_P1_SCORE_DCM = 0x1460 + 32
                     1482   220 EM_P1_SCORE_MC  = EM_P1_SCORE_DCM + 2
                     1484   221 EM_P1_SCORE_DU  = EM_P1_SCORE_MC + 2
                            222 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



                     148B   223 EM_P1_DEATHS_MC = 0x1460 + 43
                     148D   224 EM_P1_DEATHS_DU = EM_P1_DEATHS_MC + 2
                            225 
                     1520   226 EM_P2_SCORE_DCM = 0x1500 + 32
                     1522   227 EM_P2_SCORE_MC  = EM_P2_SCORE_DCM + 2
                     1524   228 EM_P2_SCORE_DU  = EM_P2_SCORE_MC + 2
                            229 
                     152B   230 EM_P2_DEATHS_MC    = 0x1500 + 43
                     152D   231 EM_P2_DEATHS_DU = EM_P2_DEATHS_MC + 2
                            232 
                     1664   233 EM_TOTAL_TIME   = 0x1640 + 36
                            234 
                            235 
                     0320   236 SUBMENU_BOX_1_POS       = 0x0320
                     0360   237 SUBMENU_BOX_2_POS       = 0x0320 + 0x0040
                     1B20   238 SUBMENU_BOX_LINE_TOP    = 0x1B20
                     2460   239 SUBMENU_BOX_LINE_BOTTOM = 0x2460
                            240 
                            241 
                     283B   242 HUD_SCORE_POS = 0x2800 + 59
                     2847   243 HUD_DEATH_POS = 0x2800 + 71
                            244 
                            245 
                            246 ;;STRING CONSTS
                     002F   247 END_STRING = 47
                     003D   248 START_CHARACTERS = 61
                     0030   249 START_NUMBERS = 48
                            250 
                            251 
                            252 
                            253 ;;SPRITE SIZE
                     0030   254 SPR_PLAYER_SIZE = 2 * 3 * 8
                     0004   255 SPR_CHECKPOINT_SIZE = 1 * 4
                     001A   256 SPR_COLLECTABLE_SIZE = 2 * 13
                     0016   257 SPR_DOOR_SIZE = 2 * 11
                     0018   258 SPR_DJUMP_SIZE = 4 * 6
                     0010   259 SPR_GPUP_SIZE = 2 * 8
                            260 
                            261 
                            262 
                            263 
                            264 
                            265 ;PLAYER ANIMATIONS
                            266 .globl anim_player_idle_R
                            267 .globl anim_player_idle_L
                            268 .globl anim_player_run_R
                            269 .globl anim_player_run_L
                            270 .globl anim_player_wall_R
                            271 .globl anim_player_wall_L
                            272 .globl anim_player_jump_R
                            273 .globl anim_player_jump_L
                            274 .globl anim_player_door
                            275 .globl anim_player_2_door
                            276 .globl anim_player_death
                            277 .globl anim_player_2_death
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



                            278 .globl anim_player_respawn
                            279 .globl anim_player_2_respawn
                            280 
                            281 
                            282 ;ENEMY ANIMATIONS
                            283 .globl anim_enemy_R
                            284 .globl anim_enemy_L
                            285 .globl anim_enemy_S
                            286 
                            287 
                            288 ;INTERACTABLE ANIMATIONS
                            289 .globl anim_interactable_door
                            290 .globl anim_interactable_gravity_up_power_up
                            291 .globl anim_interactable_gravity_down_power_up
                            292 .globl anim_interactable_djump_power_up
                            293 .globl anim_interactable_djump_active_power_up
                            294 .globl anim_interactable_colectable
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



                              2 
                              3 .area _DATA
                              4 
                              5 ;;LEVEL DATA -----------------------------------
   75DC                       6 level_index:
                              7     ;;LEVEL 00
   75DC 55 47                 8     .dw _map_00_end ;;Tilemap del Nivel #0x28FF
   75DE 00                    9     .db #0x00       ;;Level Attr
   75DF 00                   10     .db #0x00       ;;
                             11 
                             12     ;;LEVEL 01
   75E0 55 47                13     .dw _map_00_end ;;Tilemap del Nivel
   75E2 00                   14     .db #0x00       ;;Level Attr
   75E3 00                   15     .db #0x00       ;;
                             16 
                             17     ;;LEVEL 01
   75E4 55 47                18     .dw _map_00_end ;;Tilemap del Nivel
   75E6 00                   19     .db #0x00       ;;Level Attr
   75E7 FF                   20     .db #0xFF       ;;Nivel final
                             21 
                             22 ;;Level Attr [C c 0 0 0 0 0 0]
                             23 ; C -> Completed (1 -> Nivel Completado, 0 -> Nivel NO Completado)
                             24 ; c -> Collecable (1 -> Collectable Cogido, 0 -> Collectable NO Cogido)
                             25 ; - ->
                             26 ; - ->
                             27 ; - ->
                             28 ; - ->
                             29 ; - ->
                             30 ; - ->
                             31 
   75E8                      32 palette_index:
   75E8 54 54 4C 4B          33     .db #0x54, #0x54, #0x4c, #0x4b      ;; Paleta por defecto
   75EC 54 54 40 4B          34     .db #0x54, #0x54, #0x40, #0x4b      ;; Miss Input 2 psicodélico
                             35     ;.db #0x4c, #0x4c, #0x4b, #0x54      ;; Miss Input 2 psicodélico 2
   75F0 44 44 4C 4A          36     .db #0x44, #0x44, #0x4C, #0x4A
   75F4 5C 5C 4C 4B          37     .db #0x5C, #0x5C, #0x4C, #0x4B
   75F8 56 56 52 4B          38     .db #0x56, #0x56, #0x52, #0x4B
   75FC 44 44 55 5B          39     .db #0x44, #0x44, #0x55, #0x5B
   7600 5E 5E 4A 49          40     .db #0x5E, #0x5E, #0x4A, #0x49
                             41 
   7604 FF                   42     .db #0xFF
                             43 
                             44 
                             45 
                             46 
                             47 
                             48 
                             49 ;;ALL TEXTS
   7605 31 5B 40 53 49 4E    50 mm_singleplayer: .asciz "1[@SINGLEPLAYER/"
        47 4C 45 50 4C 41
        59 45 52 2F 00
   7616 32 5B 40 4D 55 4C    51 mm_multiplayer: .asciz "2[@MULTIPLAYER/"
        54 49 50 4C 41 59
        45 52 2F 00
   7626 33 5B 40 4F 50 54    52 mm_options: .asciz "3[@OPTIONS/"
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



        49 4F 4E 53 2F 00
                             53 
   7632 43 4F 4E 54 52 4F    54 om_controls: .asciz "CONTROLS/"
        4C 53 2F 00
   763C 31 5B 40 50 31 40    55 om_p1controls: .asciz "1[@P1@CONTROLS/"
        43 4F 4E 54 52 4F
        4C 53 2F 00
   764C 32 5B 40 50 32 40    56 om_p2controls: .asciz "2[@P2@CONTROLS/"
        43 4F 4E 54 52 4F
        4C 53 2F 00
   765C 41 43 43 45 53 53    57 om_accessibility: .asciz "ACCESSIBILITY/"
        49 42 49 4C 49 54
        59 2F 00
   766B 33 5B 40 47 4F 44    58 om_godmode: .asciz "3[@GOD@MODE/"
        40 4D 4F 44 45 2F
        00
   7678 34 5B 40 50 41 4C    59 om_palette: .asciz "4[@PALETTE/"
        45 54 54 45 2F 00
   7684 35 5B 40 52 45 53    60 om_restore: .asciz "5[@RESTORE@DEFAULT/"
        54 4F 52 45 40 44
        45 46 41 55 4C 54
        2F 00
   7698 36 5B 40 42 41 43    61 om_back: .asciz "6[@BACK/"
        4B 2F 00
   76A1 50 52 45 53 53 40    62 om_changecontrols: .asciz "PRESS@A@KEY@TO@CHANGE@CONTROLS/"
        41 40 4B 45 59 40
        54 4F 40 43 48 41
        4E 47 45 40 43 4F
        4E 54 52 4F 4C 53
        2F 00
   76C1 5B 40 52 49 47 48    63 om_rightkey: .asciz "[@RIGHT@[/"
        54 40 5B 2F 00
   76CC 5B 40 4C 45 46 54    64 om_leftkey: .asciz "[@LEFT@[@/"
        40 5B 40 2F 00
   76D7 5B 40 4A 55 4D 50    65 om_jumpkey: .asciz "[@JUMP@[@/"
        40 5B 40 2F 00
   76E2 3D 3F 3F 2F 00       66 om_off: .asciz "=??/"
   76E7 3D 3E 40 2F 00       67 om_on: .asciz "=>@/"
                             68 
                             69 
   76EC 5B 40 50 41 55 53    70 pm_pause: .asciz "[@PAUSE@[/"
        45 40 5B 2F 00
   76F7 31 5B 40 52 45 53    71 pm_return: .asciz "1[@RESUME/"
        55 4D 45 2F 00
   7702 32 5B 40 4D 41 49    72 pm_mainmenu: .asciz "2[@MAIN@MENU/"
        4E 40 4D 45 4E 55
        2F 00
                             73 
   7710 59 4F 55 40 48 41    74 em_completed: .asciz "YOU@HAVE@COMPLETED@MISS@INPUT@2/"
        56 45 40 43 4F 4D
        50 4C 45 54 45 44
        40 4D 49 53 53 40
        49 4E 50 55 54 40
        32 2F 00
   7731 53 43 4F 52 45 2F    75 em_score: .asciz "SCORE/"
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



        00
   7738 44 45 41 54 48 53    76 em_deaths: .asciz "DEATHS/"
        2F 00
   7740 50 31 5B 2F 00       77 em_p1: .asciz "P1[/"
   7745 50 32 5B 2F 00       78 em_p2: .asciz "P2[/"
   774A 5B 46 49 4E 41 4C    79 em_time: .asciz "[FINAL@TIME[/"
        40 54 49 4D 45 5B
        2F 00
   7758 5B 50 52 45 53 53    80 em_key: .asciz "[PRESS@ANY@KEY@TO@CONTINUE[/"
        40 41 4E 59 40 4B
        45 59 40 54 4F 40
        43 4F 4E 54 49 4E
        55 45 5B 2F 00
   7775 5B 5B 5B 5B 5B 5B    81 em_no_p2_score: .asciz "[[[[[[[/"
        5B 2F 00
   777E 5B 5B 5B 5B 2F 00    82 em_no_p2_deaths: .asciz "[[[[/"
                             83 
                             84 
                             85 
                             86 
                             87 
                             88 
   7784                      89 _hud_number_index:
   7784 A4 37                90     .dw _hud_spr_00
   7786 A9 37                91     .dw _hud_spr_01
   7788 AE 37                92     .dw _hud_spr_02
   778A B3 37                93     .dw _hud_spr_03
   778C B8 37                94     .dw _hud_spr_04
   778E BD 37                95     .dw _hud_spr_05
   7790 C2 37                96     .dw _hud_spr_06
   7792 C7 37                97     .dw _hud_spr_07
   7794 CC 37                98     .dw _hud_spr_08
   7796 D1 37                99     .dw _hud_spr_09
                            100 
                            101 
   7798                     102 _hud_letter_index:
   7798 DF 36               103     .dw _offon_spr_0
   779A E4 36               104     .dw _offon_spr_1
   779C E9 36               105     .dw _offon_spr_2
   779E EE 36               106     .dw _letter_spr_00
   77A0 F3 36               107     .dw _letter_spr_01
   77A2 F8 36               108     .dw _letter_spr_02
   77A4 FD 36               109     .dw _letter_spr_03
   77A6 02 37               110     .dw _letter_spr_04
   77A8 07 37               111     .dw _letter_spr_05
   77AA 0C 37               112     .dw _letter_spr_06
   77AC 11 37               113     .dw _letter_spr_07
   77AE 16 37               114     .dw _letter_spr_08
   77B0 1B 37               115     .dw _letter_spr_09
   77B2 20 37               116     .dw _letter_spr_10
   77B4 25 37               117     .dw _letter_spr_11
   77B6 2A 37               118     .dw _letter_spr_12
   77B8 2F 37               119     .dw _letter_spr_13
   77BA 34 37               120     .dw _letter_spr_14
   77BC 39 37               121     .dw _letter_spr_15
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



   77BE 3E 37               122     .dw _letter_spr_16
   77C0 43 37               123     .dw _letter_spr_17
   77C2 48 37               124     .dw _letter_spr_18
   77C4 4D 37               125     .dw _letter_spr_19
   77C6 52 37               126     .dw _letter_spr_20
   77C8 57 37               127     .dw _letter_spr_21
   77CA 5C 37               128     .dw _letter_spr_22
   77CC 61 37               129     .dw _letter_spr_23
   77CE 66 37               130     .dw _letter_spr_24
   77D0 6B 37               131     .dw _letter_spr_25
   77D2 70 37               132     .dw _letter_spr_26
   77D4 75 37               133     .dw _letter_spr_27
                            134 
                            135 
                            136 
                            137 ;;PLAYER ANIMATIONS ----------------------------
   77D6                     138 anim_player_idle_R:
   77D6 6A 3E               139     .dw _player_spr_00      ;Sprite
   77D8 FF                  140     .db #0xFF               ;Duracion
   77D9 00                  141     .db #0x00               ;Padding
                            142     
   77DA FF FF               143     .dw #0xFFFF             ;REPEAT_ed_anim_pos
                            144 
   77DC                     145 anim_player_idle_L:
   77DC A0 3E               146     .dw _player_spr_01      ;Sprite
   77DE FF                  147     .db #0xFF               ;Duracion
   77DF 00                  148     .db #0x00               ;Padding
                            149     
   77E0 FF FF               150     .dw #0xFFFF             ;REPEAT_ed_anim_pos
                            151 
   77E2                     152 anim_player_wall_L:
   77E2 5E 41               153     .dw _player_spr_14      ;Sprite
   77E4 FF                  154     .db #0xFF               ;Duracion
   77E5 00                  155     .db #0x00               ;Padding
                            156     
   77E6 FF FF               157     .dw #0xFFFF             ;REPEAT_ed_anim_pos
                            158 
   77E8                     159 anim_player_wall_R:
   77E8 F2 40               160     .dw _player_spr_12      ;Sprite
   77EA FF                  161     .db #0xFF               ;Duracion
   77EB 00                  162     .db #0x00               ;Padding
                            163     
   77EC FF FF               164     .dw #0xFFFF             ;REPEAT_ed_anim_pos
                            165 
   77EE                     166 anim_player_jump_L:
   77EE 78 3F               167     .dw _player_spr_05      ;Sprite
   77F0 FF                  168     .db #0xFF               ;Duracion
   77F1 00                  169     .db #0x00               ;Padding
                            170     
   77F2 FF FF               171     .dw #0xFFFF             ;REPEAT_ed_anim_pos
                            172 
   77F4                     173 anim_player_jump_R:
   77F4 42 3F               174     .dw _player_spr_04      ;Sprite
   77F6 FF                  175     .db #0xFF               ;Duracion
   77F7 00                  176     .db #0x00               ;Padding
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



                            177     
   77F8 FF FF               178     .dw #0xFFFF             ;REPEAT_ed_anim_pos
                            179 
                            180 
   77FA                     181 anim_player_run_R:
   77FA 6A 3E               182     .dw _player_spr_00      ;Sprite
   77FC 03                  183     .db #0x03               ;Duracion
   77FD 00                  184     .db #0x00               ;Padding
                            185 
   77FE 42 3F               186     .dw _player_spr_04
   7800 09                  187     .db #0x09
   7801 00                  188     .db #0x00
                            189 
   7802 6A 3E               190     .dw _player_spr_00
   7804 03                  191     .db #0x03
   7805 00                  192     .db #0x00
                            193 
   7806 1A 40               194     .dw _player_spr_08
   7808 09                  195     .db #0x09
   7809 00                  196     .db #0x00
                            197     
   780A FF FF               198     .dw #0xFFFF             ;REPEAT_ed_anim_pos
                            199 
   780C                     200 anim_player_run_L:
   780C A0 3E               201     .dw _player_spr_01      ;Sprite
   780E 03                  202     .db #0x03               ;Duracion
   780F 00                  203     .db #0x00               ;Padding
                            204 
   7810 78 3F               205     .dw _player_spr_05
   7812 09                  206     .db #0x09
   7813 00                  207     .db #0x00
                            208 
   7814 A0 3E               209     .dw _player_spr_01
   7816 03                  210     .db #0x03
   7817 00                  211     .db #0x00
                            212 
   7818 50 40               213     .dw _player_spr_09
   781A 09                  214     .db #0x09
   781B 00                  215     .db #0x00
                            216     
   781C FF FF               217     .dw #0xFFFF             ;REPEAT_ed_anim_pos
                            218 
   781E                     219 anim_player_door:
                            220 
   781E 6A 3E               221     .dw _player_spr_00      ;Sprite
   7820 20                  222     .db #0x20               ;Duracion
   7821 00                  223     .db #0x00               ;Padding
                            224 
   7822 CC 45               225     .dw _player_2_spr_15      ;Sprite
   7824 10                  226     .db #0x10               ;Duracion
   7825 00                  227     .db #0x00               ;Padding
                            228 
   7826 60 45               229     .dw _player_2_spr_13      ;Sprite
   7828 10                  230     .db #0x10              ;Duracion
   7829 00                  231     .db #0x00               ;Padding
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



                            232 
   782A FE FE               233     .dw #0xFEFE             ;REPEAT_ed_anim_pos
                            234 
                            235 
   782C                     236 anim_player_2_door:
                            237 
   782C A2 42               238     .dw _player_2_spr_00      ;Sprite
   782E 20                  239     .db #0x20               ;Duracion
   782F 00                  240     .db #0x00               ;Padding
                            241 
   7830 CC 45               242     .dw _player_2_spr_15      ;Sprite
   7832 10                  243     .db #0x10               ;Duracion
   7833 00                  244     .db #0x00               ;Padding
                            245 
   7834 60 45               246     .dw _player_2_spr_13      ;Sprite
   7836 10                  247     .db #0x10              ;Duracion
   7837 00                  248     .db #0x00               ;Padding
                            249 
   7838 FE FE               250     .dw #0xFEFE             ;REPEAT_ed_anim_pos
                            251 
                            252 
   783A                     253 anim_player_death:
                            254 
   783A CA 41               255     .dw _player_spr_16      ;Sprite
   783C 03                  256     .db #0x03               ;Duracion
   783D 00                  257     .db #0x00               ;Padding
                            258 
   783E 38 46               259     .dw _player_2_spr_17      ;Sprite
   7840 03                  260     .db #0x03              ;Duracion
   7841 00                  261     .db #0x00               ;Padding
                            262 
   7842 00 42               263     .dw _player_spr_17      ;Sprite
   7844 03                  264     .db #0x03             ;Duracion
   7845 00                  265     .db #0x00               ;Padding
                            266 
   7846 28 41               267     .dw _player_spr_13      ;Sprite
   7848 03                  268     .db #0x03             ;Duracion
   7849 00                  269     .db #0x00               ;Padding
                            270 
   784A 60 45               271     .dw _player_2_spr_13   ;Sprite
   784C 03                  272     .db #0x03             ;Duracion
   784D 00                  273     .db #0x00               ;Padding
                            274 
                            275 
   784E FE FE               276     .dw #0xFEFE             ;REPEAT_ed_anim_pos
                            277 
   7850                     278 anim_player_2_death:
                            279 
   7850 02 46               280     .dw _player_2_spr_16      ;Sprite
   7852 03                  281     .db #0x03               ;Duracion
   7853 00                  282     .db #0x00               ;Padding
                            283 
   7854 38 46               284     .dw _player_2_spr_17      ;Sprite
   7856 03                  285     .db #0x03               ;Duracion
   7857 00                  286     .db #0x00               ;Padding
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



                            287 
   7858 00 42               288     .dw _player_spr_17      ;Sprite
   785A 03                  289     .db #0x03              ;Duracion
   785B 00                  290     .db #0x00               ;Padding
                            291 
   785C 28 41               292     .dw _player_spr_13      ;Sprite
   785E 03                  293     .db #0x03              ;Duracion
   785F 00                  294     .db #0x00               ;Padding
                            295 
   7860 60 45               296     .dw _player_2_spr_13   ;Sprite
   7862 03                  297     .db #0x03              ;Duracion
   7863 00                  298     .db #0x00               ;Padding
                            299 
                            300 
   7864 FE FE               301     .dw #0xFEFE             ;REPEAT_ed_anim_pos
                            302 
                            303 
   7866                     304 anim_player_respawn:
                            305 
   7866 60 45               306     .dw _player_2_spr_13   ;Sprite
   7868 03                  307     .db #0x03              ;Duracion
   7869 00                  308     .db #0x00               ;Padding
                            309 
   786A 28 41               310     .dw _player_spr_13      ;Sprite
   786C 03                  311     .db #0x03              ;Duracion
   786D 00                  312     .db #0x00               ;Padding
                            313 
   786E 00 42               314     .dw _player_spr_17      ;Sprite
   7870 03                  315     .db #0x03              ;Duracion
   7871 00                  316     .db #0x00               ;Padding
                            317 
   7872 38 46               318     .dw _player_2_spr_17      ;Sprite
   7874 03                  319     .db #0x03               ;Duracion
   7875 00                  320     .db #0x00               ;Padding
                            321 
   7876 CA 41               322     .dw _player_spr_16      ;Sprite
   7878 03                  323     .db #0x03               ;Duracion
   7879 00                  324     .db #0x00               ;Padding
                            325 
   787A FE FE               326     .dw #0xFEFE             ;REPEAT_ed_anim_pos
                            327 
   787C                     328 anim_player_2_respawn:
                            329 
   787C 60 45               330     .dw _player_2_spr_13   ;Sprite
   787E 03                  331     .db #0x03              ;Duracion
   787F 00                  332     .db #0x00               ;Padding
                            333 
   7880 28 41               334     .dw _player_spr_13      ;Sprite
   7882 03                  335     .db #0x03              ;Duracion
   7883 00                  336     .db #0x00               ;Padding
                            337 
   7884 00 42               338     .dw _player_spr_17      ;Sprite
   7886 03                  339     .db #0x03              ;Duracion
   7887 00                  340     .db #0x00               ;Padding
                            341 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



   7888 38 46               342     .dw _player_2_spr_17      ;Sprite
   788A 03                  343     .db #0x03               ;Duracion
   788B 00                  344     .db #0x00               ;Padding
                            345 
   788C 02 46               346     .dw _player_2_spr_16      ;Sprite
   788E 03                  347     .db #0x03               ;Duracion
   788F 00                  348     .db #0x00               ;Padding
                            349 
   7890 FE FE               350     .dw #0xFEFE             ;REPEAT_ed_anim_pos
                            351 
                            352 
                            353 ;;ENEMY ANIMATIONS-----------------------------
   7892                     354 anim_enemy_R:
   7892 6A 38               355     .dw _enemy_spr_00      ;Sprite
   7894 0A                  356     .db #0x0A               ;Duracion
   7895 00                  357     .db #0x00               ;Padding
                            358 
   7896 2A 39               359     .dw _enemy_spr_04      ;Sprite
   7898 0A                  360     .db #0x0A               ;Duracion
   7899 00                  361     .db #0x00               ;Padding
                            362 
   789A FF FF               363     .dw #0xFFFF             ;REPEAT_ed_anim_pos
                            364 
   789C                     365 anim_enemy_L:
   789C EA 39               366     .dw _enemy_spr_08      ;Sprite
   789E 0A                  367     .db #0x0A               ;Duracion
   789F 00                  368     .db #0x00               ;Padding
                            369 
   78A0 AA 3A               370     .dw _enemy_spr_12      ;Sprite
   78A2 0A                  371     .db #0x0A               ;Duracion
   78A3 00                  372     .db #0x00               ;Padding
                            373 
   78A4 FF FF               374     .dw #0xFFFF             ;REPEAT_ed_anim_pos
                            375 
                            376 
   78A6                     377 anim_enemy_S:
   78A6 6A 38               378     .dw _enemy_spr_00      ;Sprite
   78A8 02                  379     .db #0x02               ;Duracion
   78A9 00                  380     .db #0x00               ;Padding
                            381 
   78AA 2A 39               382     .dw _enemy_spr_04      ;Sprite
   78AC 02                  383     .db #0x02               ;Duracion
   78AD 00                  384     .db #0x00               ;Padding
                            385 
   78AE FF FF               386     .dw #0xFFFF             ;REPEAT_ed_anim_pos
                            387 
                            388 
                            389 
                            390 ;;INTERACTABLE ANIMATIONS-----------------------------
   78B0                     391 anim_interactable_door:
   78B0 F4 37               392     .dw _door_spr_0         ;Sprite
   78B2 0A                  393     .db #0x0A               ;Duracion
   78B3 00                  394     .db #0x00               ;Padding
                            395 
   78B4 0A 38               396     .dw _door_spr_1         ;Sprite
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



   78B6 20                  397     .db #0x20               ;Duracion
   78B7 00                  398     .db #0x00               ;Padding
                            399 
   78B8 20 38               400     .dw _door_spr_2         ;Sprite
   78BA 20                  401     .db #0x20               ;Duracion
   78BB 00                  402     .db #0x00               ;Padding
                            403 
                            404 
   78BC 36 38               405     .dw _door_spr_3         ;Sprite
   78BE 20                  406     .db #0x20               ;Duracion
   78BF 00                  407     .db #0x00               ;Padding
                            408 
                            409 
   78C0 4C 38               410     .dw _door_spr_4         ;Sprite
   78C2 05                  411     .db #0x05               ;Duracion
   78C3 00                  412     .db #0x00               ;Padding
                            413 
                            414 
   78C4 FE FE               415     .dw #0xFEFE             ;REPEAT_ed_anim_pos
                            416 
                            417 
   78C6                     418 anim_interactable_gravity_up_power_up:
                            419 
   78C6 FA 35               420     .dw _gravity_spr_00     ;Sprite
   78C8 10                  421     .db #0x10               ;Duracion
   78C9 00                  422     .db #0x00               ;Padding
                            423 
   78CA 0A 36               424     .dw _gravity_spr_01     ;Sprite
   78CC 03                  425     .db #0x03               ;Duracion
   78CD 00                  426     .db #0x00               ;Padding
                            427 
   78CE 1A 36               428     .dw _gravity_spr_02     ;Sprite
   78D0 03                  429     .db #0x03               ;Duracion
   78D1 00                  430     .db #0x00               ;Padding
                            431 
   78D2 2A 36               432     .dw _gravity_spr_03     ;Sprite
   78D4 03                  433     .db #0x03               ;Duracion
   78D5 00                  434     .db #0x00               ;Padding
                            435 
   78D6 3A 36               436     .dw _gravity_spr_04     ;Sprite
   78D8 03                  437     .db #0x03               ;Duracion
   78D9 00                  438     .db #0x00               ;Padding
                            439 
   78DA 4A 36               440     .dw _gravity_spr_05     ;Sprite
   78DC 03                  441     .db #0x03               ;Duracion
   78DD 00                  442     .db #0x00               ;Padding
                            443 
   78DE 5A 36               444     .dw _gravity_spr_06     ;Sprite
   78E0 03                  445     .db #0x03               ;Duracion
   78E1 00                  446     .db #0x00               ;Padding
                            447 
   78E2 FF FF               448     .dw #0xFFFF             ;REPEAT_ed_anim_pos
                            449 
   78E4                     450 anim_interactable_gravity_down_power_up:
                            451 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



   78E4 6A 36               452     .dw _gravity_spr_07     ;Sprite
   78E6 10                  453     .db #0x10               ;Duracion
   78E7 00                  454     .db #0x00               ;Padding
                            455 
   78E8 7A 36               456     .dw _gravity_spr_08     ;Sprite
   78EA 03                  457     .db #0x03               ;Duracion
   78EB 00                  458     .db #0x00               ;Padding
                            459 
   78EC 8A 36               460     .dw _gravity_spr_09     ;Sprite
   78EE 03                  461     .db #0x03               ;Duracion
   78EF 00                  462     .db #0x00               ;Padding
                            463 
   78F0 9A 36               464     .dw _gravity_spr_10     ;Sprite
   78F2 03                  465     .db #0x03               ;Duracion
   78F3 00                  466     .db #0x00               ;Padding
                            467 
   78F4 AA 36               468     .dw _gravity_spr_11     ;Sprite
   78F6 03                  469     .db #0x03               ;Duracion
   78F7 00                  470     .db #0x00               ;Padding
                            471 
   78F8 BA 36               472     .dw _gravity_spr_12     ;Sprite
   78FA 03                  473     .db #0x03               ;Duracion
   78FB 00                  474     .db #0x00               ;Padding
                            475 
   78FC CA 36               476     .dw _gravity_spr_13     ;Sprite
   78FE 03                  477     .db #0x03               ;Duracion
   78FF 00                  478     .db #0x00               ;Padding
                            479 
   7900 FF FF               480     .dw #0xFFFF             ;REPEAT_ed_anim_pos
                            481 
                            482 
                            483 
   7902                     484 anim_interactable_djump_active_power_up:
                            485 
   7902 E2 35               486     .dw _double_jump_spr_4  ;Sprite
   7904 15                  487     .db #0x15               ;Duracion
   7905 00                  488     .db #0x00               ;Padding
                            489 
   7906                     490 anim_interactable_djump_power_up:
                            491 
   7906 82 35               492     .dw _double_jump_spr_0  ;Sprite
   7908 10                  493     .db #0x10               ;Duracion
   7909 00                  494     .db #0x00               ;Padding
                            495 
   790A 9A 35               496     .dw _double_jump_spr_1  ;Sprite
   790C 03                  497     .db #0x03               ;Duracion
   790D 00                  498     .db #0x00               ;Padding
                            499 
   790E B2 35               500     .dw _double_jump_spr_2  ;Sprite
   7910 03                  501     .db #0x03               ;Duracion
   7911 00                  502     .db #0x00               ;Padding
                            503 
   7912 CA 35               504     .dw _double_jump_spr_3  ;Sprite
   7914 03                  505     .db #0x03               ;Duracion
   7915 00                  506     .db #0x00               ;Padding
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



                            507 
   7916 B2 35               508     .dw _double_jump_spr_2  ;Sprite
   7918 03                  509     .db #0x03               ;Duracion
   7919 00                  510     .db #0x00               ;Padding
                            511 
   791A FD FD               512     .dw #0xFDFD             ;REPEAT_ed_anim_pos
                            513 
                            514 
   791C                     515 anim_interactable_colectable:
                            516 
   791C 1A 35               517     .dw _colectable_spr_0   ;Sprite
   791E 0A                  518     .db #0x0A               ;Duracion
   791F 00                  519     .db #0x00               ;Padding
                            520 
   7920 34 35               521     .dw _colectable_spr_1   ;Sprite
   7922 0A                  522     .db #0x0A               ;Duracion
   7923 00                  523     .db #0x00               ;Padding
                            524 
   7924 4E 35               525     .dw _colectable_spr_2   ;Sprite
   7926 0A                  526     .db #0x0A               ;Duracion
   7927 00                  527     .db #0x00               ;Padding
                            528 
   7928 68 35               529     .dw _colectable_spr_3   ;Sprite
   792A 0A                  530     .db #0x0A               ;Duracion
   792B 00                  531     .db #0x00               ;Padding
                            532 
   792C FF FF               533     .dw #0xFFFF             ;REPEAT_ed_anim_pos
