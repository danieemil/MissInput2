ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



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
