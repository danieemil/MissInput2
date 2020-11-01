ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 .include "sys/system_level.h.s"
                              1 ;;DEPENDENCIAS
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                              2 .include "main.h.s"
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



                              1 .include "data.h.s"
                              1 ;;MAPS
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



                              2 
                              3 
                              4 ;;GLOBLS
                              5 
                              6 .globl cpct_disableFirmware_asm
                              7 .globl cpct_zx7b_decrunch_s_asm
                              8 .globl cpct_scanKeyboard_asm
                              9 .globl cpct_isAnyKeyPressed_f_asm
                             10 .globl cpct_isKeyPressed_asm
                             11 
                             12 
                             13 .globl cpct_drawSprite_asm
                             14 .globl cpct_drawSpriteVFlip_asm
                             15 .globl cpct_drawSpriteMasked_asm
                             16 .globl cpct_drawSpriteVFlipMasked_asm
                             17 .globl cpct_drawTileZigZagGrayCode4x8_af_asm
                             18 .globl cpct_drawSolidBox_asm
                             19 
                             20 
                             21 .globl cpct_setPalette_asm
                             22 .globl cpct_setVideoMode_asm
                             23 .globl cpct_setPALColour_asm
                             24 .globl cpct_getScreenPtr_asm
                             25 .globl cpct_waitVSYNC_asm
                             26 .globl cpct_setVideoMemoryPage_asm
                             27 
                             28 .globl cpct_etm_setDrawTilemap4x8_ag_asm
                             29 .globl cpct_etm_drawTilemap4x8_ag_asm
                             30 
                             31 .globl cpct_akp_musicInit_asm
                             32 .globl cpct_akp_musicPlay_asm
                             33 
                             34 .globl cpct_waitHalts_asm
                             35 
                             36 .globl _cpct_keyboardStatusBuffer
                             37 .globl _g_palette
                             38 .globl _ambient_sound
                             39 
                             40 
                             41 
                             42 ;;AMSTRAD CONSTS
                     0050    43 SCREEN_W = 80
                     00C8    44 SCREEN_H = 200
                             45 
                             46 ;;TILEMAP CONSTS
                             47 
                     0014    48 TILEMAP_W           = 20
                     0017    49 TILEMAP_H           = 23
                     0019    50 TILEMAP_MENU_H      = 25
                             51 
                     2A00    52 TILEMAP_START       = 0x2A00
                     01CC    53 TILEMAP_SIZE        = TILEMAP_W * TILEMAP_H
                     01F4    54 TILEMAP_MENU_SIZE   = TILEMAP_W * TILEMAP_MENU_H
                     2BF4    55 TILESET_START       = TILEMAP_START + TILEMAP_MENU_SIZE
                     0600    56 TILESET_SIZE        = 0X0600
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



                             57 
                     00A0    58 HUD_SIZE            = 80*2
                     C0A0    59 TILEMAP_VMEM_START  = 0xC000+HUD_SIZE
                             60 
                     0020    61 TILE_SIZE           = 4 * 8
                     0004    62 TILE_W              = 4
                     0008    63 TILE_H              = 8
                             64 
                             65 ;;GAME STATES
                     0001    66 GS_SINGLEPLAYER     = 1
                     0002    67 GS_MULTIPLAYER      = 2
                             68 
                             69 ;;ENTITY PHYSICS CONSTS
                     0000    70 _eph_x              = 0
                     0001    71 _eph_y              = 1
                     0002    72 _eph_w              = 2
                     0003    73 _eph_h              = 3
                     0004    74 _eph_vx             = 4
                     0005    75 _eph_vy             = 5
                     0006    76 _eph_offset         = 6
                     0007    77 _eph_attributes     = 7
                     0008    78 _eph_size           = 8
                             79 
                     0005    80 _ephf_orientation   = 5
                     0004    81 _ephf_ground        = 4
                     0003    82 _ephf_wall          = 3
                     0002    83 _ephf_h_ground      = 2
                             84 
                             85 ;;ENTITY DRAWABLE CONSTS
                     0008    86 _ed_spr_l          =  0 + _eph_size
                     0009    87 _ed_spr_h          =  1 + _eph_size
                     000A    88 _ed_spr_wi         =  2 + _eph_size
                     000B    89 _ed_spr_he         =  3 + _eph_size
                     000C    90 _ed_spr_size       =  4 + _eph_size
                     000D    91 _ed_pre_x          =  5 + _eph_size
                     000E    92 _ed_pre_y          =  6 + _eph_size
                     000F    93 _ed_pre_o          =  7 + _eph_size
                     0010    94 _ed_ox             =  8 + _eph_size
                     0011    95 _ed_oy             =  9 + _eph_size
                     0012    96 _ed_anim_ind_h     = 10 + _eph_size
                     0013    97 _ed_anim_ind_l     = 11 + _eph_size
                     0014    98 _ed_anim_pos       = 12 + _eph_size
                     0015    99 _ed_anim_dur       = 13 + _eph_size
                            100 
                            101 
                     0016   102 _ed_size        = 14 + _eph_size
                            103 
                     0007   104 _edf_mask       = 7
                     0006   105 _edf_flip       = 6
                            106 
                            107 ;;ENTITY INTERACTABLE CONSTS
                     0016   108 _ei_score       = 0 + _ed_size
                     0017   109 _ei_type        = 1 + _ed_size
                     0018   110 _ei_disabled    = 2 + _ed_size
                            111 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



                     0019   112 _ei_size        = 3 + _ed_size
                            113 
                     0000   114 _eit_w            = 0
                     0001   115 _eit_h            = 1
                     0002   116 _eit_attributes   = 2
                     0003   117 _eit_spr_l        = 3
                     0004   118 _eit_spr_h        = 4
                     0005   119 _eit_spr_wi       = 5
                     0006   120 _eit_spr_he       = 6
                     0007   121 _eit_spr_size     = 7
                     0008   122 _eit_spr_ox       = 8
                     0009   123 _eit_spr_oy       = 9
                     000A   124 _eit_anim_ind_h   = 10
                     000B   125 _eit_anim_ind_l   = 11
                     000C   126 _eit_score        = 12
                     000D   127 _eit_type         = 13
                            128 
                            129 ;;INTERACTABLE TYPES
                     0000   130 EI_NONE         = 0
                     0001   131 EI_CHECKPOINT   = 1
                     0002   132 EI_DOUBLE_JUMP  = 2
                     0003   133 EI_GRAVITY_UP   = 3
                     0004   134 EI_GRAVITY_DOWN = 4
                     0005   135 EI_COLLECTABLE  = 5
                     0006   136 EI_DOOR         = 6
                            137 
                            138 ;;ENTITY ENEMY CONSTS
                     0016   139 _ee_jump_state = 0 + _ed_size ;;Offset de la tabla de saltos
                     0017   140 _ee_type       = 1 + _ed_size
                     0018   141 _ee_disabled   = 2 + _ed_size
                     0019   142 _ee_origin_x   = 3 + _ed_size
                     001A   143 _ee_origin_y   = 4 + _ed_size
                     001B   144 _ee_size       = 5 + _ed_size
                            145 
                     0001   146 _eef_gravity        = 1
                            147 
                            148 ;; ENEMY TYPE CONSTS
                     0000   149 _eet_w            = 0
                     0001   150 _eet_h            = 1
                     0002   151 _eet_attributes   = 2
                     0003   152 _eet_spr_l        = 3
                     0004   153 _eet_spr_h        = 4
                     0005   154 _eet_spr_wi       = 5
                     0006   155 _eet_spr_he       = 6
                     0007   156 _eet_spr_size     = 7
                     0008   157 _eet_spr_ox       = 8
                     0009   158 _eet_spr_oy       = 9
                     000A   159 _eet_anim_ind_h   = 10
                     000B   160 _eet_anim_ind_l   = 11
                     000C   161 _eet_type         = 12
                            162 
                     0000   163 ET_NONE         = 0
                     0001   164 ET_TURTLE       = 1
                     0002   165 ET_SAW          = 2
                     0003   166 ET_ROCK         = 3
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



                            167 
                     0084   168 EE_DISABLED         = 132
                     0014   169 EE_SAW_DISABLED     = 20
                     0064   170 EE_ROCK_DISABLED    = 100
                            171 
                            172 ;;ENTITY PLAYER CONSTS
                     0016   173 _ep_jump_state      = 0 + _ed_size ;;Offset de la tabla de saltos
                     0017   174 _ep_wall_dir        = 1 + _ed_size ;;Indica si esta chocando con una pared y su orientacion
                     0018   175 _ep_force_x         = 2 + _ed_size ;;Force X
                     0019   176 _ep_score_cdm       = 3 + _ed_size ;;Score [Centenas de Millar, Decenas de Millar]
                     001A   177 _ep_score_mc        = 4 + _ed_size ;;Score [Millares, Centenas]
                     001B   178 _ep_score_du        = 5 + _ed_size ;;Score [Decenas, Unidades]
                     001C   179 _ep_deaths_mc       = 6 + _ed_size ;;Deaths [Millares, Centenas]
                     001D   180 _ep_deaths_du       = 7 + _ed_size ;;Deaths [Decenas, Unidades]
                     001E   181 _ep_player_attr     = 8 + _ed_size ;;Player Attributes
                     001F   182 _ep_anim_counter    = 9 + _ed_size ;;Contador para ciertas animaciones del jugador
                            183 
                     0020   184 _ep_size            = 10 + _ed_size
                            185 
                            186 ;;PLAYERS
                            187 .globl player_1
                            188 .globl player_2
                            189 
                            190 ;; ENEMIES
                            191 .globl enemy_index
                            192 .globl enemy_vector
                            193 .globl me_num_enemy
                            194 
                            195 ;; INTERACTUABLES
                            196 .globl interactable_index
                            197 .globl interactable_vector
                            198 .globl mi_num_interactable
                            199 .globl mi_next_interactable_l
                            200 
                            201 .globl checkpoint_x
                            202 .globl checkpoint_y
                            203 
                            204 ;;JUMP TABLE
                     0000   205 JT_INIT             = 0
                     0000   206 JT_WALL_JUMP        = 0
                     000E   207 JT_ON_GROUND        = 14
                     000F   208 JT_ON_WALL          = 15
                     0016   209 JT_END              = 22
                     0002   210 JT_PTOGRESSIVE_MIN  = 2
                     0008   211 JT_PROGRESSIVE_MAX  = 8
                     000B   212 JT_GRAVITY_CONTINUE = 11
                     0000   213 JT_GRAVITY_MARGIN   = 0
                            214 
                     007F   215 FORCE_X_R           = #0b01111111
                     0080   216 FORCE_X_L           = #0b10000000
                     007D   217 FORCE_X_R_MIN       = FORCE_X_R - 2
                     0083   218 FORCE_X_L_MIN       = FORCE_X_L + 3
                            219 
                            220 ;;SPRITE SIZES
                     0030   221 PLAYER = 48  ;; 0x30 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



                            222 
                            223 
                            224 ;;COLLISION CONSTS
                     0005   225 GROUP_TRANSPARENT   = 5
                     0026   226 GROUP_SOLID         = 38
                     002E   227 GROUP_DANGEROUS     = 46
                     002F   228 GROUP_GDOWN         = 47
                     0030   229 GROUP_GUP           = 48
                     0050   230 GROUP_ENTITIES      = 80
                            231 
                            232 ;;ENEMY CONSTS
                     0058   233 GROUP_SAW           = 88
                     005A   234 GROUP_ROCK          = 90
                     005C   235 GROUP_TURTLE        = 92
                     005C   236 GROUP_ENEMIES       = 92
                            237 
                            238 ;;INTERACTABLE CONSTS
                     0066   239 GROUP_INTERACTABLE  = 102
                            240 
                            241 
                            242 
                     0000   243 TRANSPARENT  = 0     ; Prioridad +
                     0001   244 GRAVITY_DOWN = 1     ; Prioridad ++
                     0002   245 GRAVITY_UP   = 2     ; Prioridad +++
                     0003   246 DANGEROUS    = 3     ; Prioridad ++++
                     0004   247 SOLID        = 4     ; Prioridad +++++
                            248 
                            249 
                            250 ;;SCORES
                     0064   251 PRIMERO = 100
                     004B   252 SEGUNDO = 75
                     0032   253 TERCERO = 50
                     0019   254 CUARTO  = 25
                            255 
                            256 
                            257 ;; DEFAULT KEYS
                            258 
                     0407   259 P1_KEY_R = #0x0407      ;;Default - 'E'
                     0807   260 P1_KEY_L = #0x0807      ;;Default - 'W'
                     0808   261 P1_KEY_J = #0x0808      ;;Default - 'Q'
                            262 
                     0803   263 P2_KEY_R = #0x0803      ;;Default - 'I'
                     0404   264 P2_KEY_L = #0x0404      ;;Default - 'O'
                     0804   265 P2_KEY_J = #0x0804      ;;Default - 'P'
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



                              3 
                              4 .globl checkpoint_x
                              5 .globl checkpoint_y
                              6 .globl checkpoint_level
                              7 .globl door_id
                              8 .globl collectable_id
                              9 .globl mi_num_interactable
                             10 .globl level_score
                             11 .globl transition
                             12 .globl actual_level
                             13 .globl actual_level_attr
                             14 .globl tries
                             15 
                             16 .globl mg_game_state
                             17 
                             18 .globl _me_init_vector
                             19 .globl _me_add_enemy
                             20 
                             21 .globl _mi_init_vector
                             22 .globl _mi_add_interactable
                             23 .globl _mi_search_vector
                             24 
                             25 .globl _mp_init_players
                             26 
                             27 .globl _sr_apply_animation
                             28 .globl _sr_draw_HUD
                             29 .globl _sr_fill_backbuffer
                             30 .globl _sr_update_hud_skull
                             31 
                             32 .globl _su_add_score
                             33 
                             34 .globl _mm_congrats_menu_init
                             35 .globl _mm_congrats_menu_loop
                             36 
                             37 ;;FUNCIONES
                             38 .globl _sl_generate_level
                             39 .globl _sl_manage_end_level
                             40 .globl _sl_transition_level
                             41 
                             42 ;;CONSTANTES
                             43 
                             44 ;; ENEMY CONSTS
                     0050    45 SAW_RIGHT       = 80
                     0051    46 SAW_RIGHT_DOWN  = 81
                     0052    47 SAW_DOWN        = 82
                     0053    48 SAW_LEFT_DOWN   = 83
                     0054    49 SAW_LEFT        = 84
                     0055    50 SAW_LEFT_UP     = 85
                     0056    51 SAW_UP          = 86
                     0057    52 SAW_RIGHT_UP    = 87
                             53 
                     0058    54 ROCK_LEFT       = 88
                     0059    55 ROCK_RIGHT      = 89
                             56 
                     005A    57 TURTLE_LEFT     = 90
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



                     005B    58 TURTLE_RIGHT    = 91
                             59 
                             60 ;;INTERACTABLE CONSTS
                     005C    61 ID_CHECKPOINT       = 92
                     005D    62 ID_DOOR             = 93
                     005E    63 ID_DOUBLE_JUMP_L    = 94
                     005F    64 ID_DOUBLE_JUMP_R    = 95
                     0060    65 ID_GRAVITY_UP_L     = 96
                     0061    66 ID_GRAVITY_UP_R     = 97
                     0062    67 ID_GRAVITY_DOWN_L   = 98
                     0063    68 ID_GRAVITY_DOWN_R   = 99
                     0064    69 ID_PLAYERS          = 100
                     0065    70 ID_COLLECTABLE      = 101
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



                              2 
                              3 .area _DATA
                              4 
                              5 .area _CODE
                              6 
                              7 
                              8 
                              9 ;;==================================================================
                             10 ;;                         GENERATE LEVEL
                             11 ;;------------------------------------------------------------------
                             12 ;; Genera a partir de un tilemap comprimido el tilemap con el
                             13 ;; escenario y las entidades
                             14 ;;------------------------------------------------------------------
                             15 ;;
                             16 ;; INPUT:
                             17 ;;  DE -> Puntero al final del tilemap comprimido
                             18 ;;
                             19 ;; OUTPUT:
                             20 ;;  NONE
                             21 ;;
                             22 ;; DESTROYS:
                             23 ;;   AF, BC, DE, HL, AF'
                             24 ;;
                             25 ;;------------------------------------------------------------------
                             26 ;; CYCLES: []
                             27 ;;==================================================================
   63F4                      28 _sl_generate_level:
                             29 
                             30     
                             31 ;; Primero descomprimimos el mapa en memoria
                             32 
                             33     ;;DE -> Final del destino en memoria del mapa
   63F4 21 00 2A      [10]   34     ld hl, #TILEMAP_START
   63F7 01 CB 01      [10]   35     ld bc, #TILEMAP_SIZE-1
   63FA 09            [11]   36     add hl, bc
   63FB EB            [ 4]   37     ex de, hl
                             38 
                             39     ;; HL -> End tilemap comprimido
                             40     ;; DE -> End tilemap descomprimido
   63FC CD 0C 6C      [17]   41     call cpct_zx7b_decrunch_s_asm
                             42 
                             43 
                             44 
                             45 
   63FF CD A4 56      [17]   46     call _me_init_vector
   6402 CD FA 55      [17]   47     call _mi_init_vector
   6405 CD 24 51      [17]   48     call _mp_init_players
                             49 
   6408 3E FF         [ 7]   50     ld a, #0xFF
   640A 32 C9 79      [13]   51     ld (collectable_id), a
   640D 32 C8 79      [13]   52     ld (door_id), a
                             53 
                             54 ;; Segundo comprobamos la id de cada tile del tilemap
                             55 ;; En el caso de que sea el id de una entidad,
                             56 ;; añadimos la entidad en esa posición del tilemap
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



                             57 
                             58 
   6410 21 00 2A      [10]   59     ld hl, #TILEMAP_START
   6413 11 CC 01      [10]   60     ld de, #TILEMAP_SIZE
   6416 01 00 00      [10]   61     ld bc, #0x0000
                             62 
   6419                      63     gl_tilemap_loop:
                             64 
   6419 E5            [11]   65         push hl
   641A D5            [11]   66         push de
   641B C5            [11]   67         push bc
                             68 
                             69 
                             70         ;; Sacar la posición del tile en coordenadas X e Y
   641C 0C            [ 4]   71         inc c   ;; El tilemap es tres tiles menor que la pantalla, por eso se le suma 3 a la Y   
   641D 0C            [ 4]   72         inc c
                             73 
   641E CB 20         [ 8]   74         sla b
   6420 CB 20         [ 8]   75         sla b
                             76         
   6422 CB 21         [ 8]   77         sla c
   6424 CB 21         [ 8]   78         sla c
   6426 CB 21         [ 8]   79         sla c
                             80 
                             81 
   6428 7E            [ 7]   82         ld a, (hl)
   6429 FE 50         [ 7]   83         cp #GROUP_ENTITIES
   642B DA 84 65      [10]   84         jp c, gl_next_tile
                             85 
   642E                      86             gl_check_enemy:
   642E FE 5C         [ 7]   87             cp #GROUP_ENEMIES
   6430 D2 C2 64      [10]   88             jp nc, gl_check_interactable
                             89                 ;; Enemigos
   6433                      90                 gl_check_enemy_saw:
   6433 FE 58         [ 7]   91                 cp #GROUP_SAW
   6435 D2 87 64      [10]   92                 jp nc, gl_check_enemy_rock
                             93                     ;; Enemigo sierra
   6438                      94                     gl_check_enemy_saw_right:
   6438 FE 50         [ 7]   95                     cp #SAW_RIGHT
   643A 20 05         [12]   96                     jr nz, gl_check_enemy_saw_right_down
   643C 11 00 01      [10]   97                         ld de, #0x0100
                             98                         
   643F 18 41         [12]   99                         jr gl_generate_enemy_saw
                            100 
   6441                     101                     gl_check_enemy_saw_right_down:
   6441 FE 51         [ 7]  102                     cp #SAW_RIGHT_DOWN
   6443 20 05         [12]  103                     jr nz, gl_check_enemy_saw_down
   6445 11 00 02      [10]  104                         ld de, #0x0200
                            105 
   6448 18 38         [12]  106                         jr gl_generate_enemy_saw
                            107 
   644A                     108                     gl_check_enemy_saw_down:
   644A FE 52         [ 7]  109                     cp #SAW_DOWN
   644C 20 05         [12]  110                     jr nz, gl_check_enemy_saw_up
   644E 11 01 00      [10]  111                         ld de, #0x0001
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



                            112 
   6451 18 2F         [12]  113                         jr gl_generate_enemy_saw
                            114 
                            115 
   6453                     116                     gl_check_enemy_saw_up:
   6453 FE 56         [ 7]  117                     cp #SAW_UP
   6455 20 05         [12]  118                     jr nz, gl_check_enemy_saw_right_up
   6457 11 FF 00      [10]  119                         ld de, #0x00FF
                            120 
   645A 18 26         [12]  121                         jr gl_generate_enemy_saw
                            122 
   645C                     123                     gl_check_enemy_saw_right_up:
   645C FE 57         [ 7]  124                     cp #SAW_RIGHT_UP
   645E C2 66 64      [10]  125                     jp nz, gl_check_enemy_saw_left_down
   6461 11 FE 00      [10]  126                         ld de, #0x00FE
                            127 
   6464 18 1C         [12]  128                         jr gl_generate_enemy_saw
                            129 
   6466                     130                     gl_check_enemy_saw_left_down:
   6466 04            [ 4]  131                     inc b
   6467 04            [ 4]  132                     inc b
   6468 FE 53         [ 7]  133                     cp #SAW_LEFT_DOWN
   646A 20 05         [12]  134                     jr nz, gl_check_enemy_saw_left
   646C 11 02 00      [10]  135                         ld de, #0x0002
                            136 
   646F 18 11         [12]  137                         jr gl_generate_enemy_saw
                            138 
   6471                     139                     gl_check_enemy_saw_left:
   6471 FE 54         [ 7]  140                     cp #SAW_LEFT
   6473 20 05         [12]  141                     jr nz, gl_check_enemy_saw_left_up
   6475 11 00 FF      [10]  142                         ld de, #0xFF00
                            143 
   6478 18 08         [12]  144                         jr gl_generate_enemy_saw
                            145 
   647A                     146                     gl_check_enemy_saw_left_up:
   647A FE 55         [ 7]  147                     cp #SAW_LEFT_UP
   647C C2 84 65      [10]  148                     jp nz, gl_next_tile
   647F 11 00 FE      [10]  149                         ld de, #0xFE00
                            150 
                            151 
   6482                     152                     gl_generate_enemy_saw:
   6482 3E 02         [ 7]  153                         ld a, #ET_SAW
   6484 3D            [ 4]  154                         dec a
   6485 18 33         [12]  155                         jr gl_generate_enemy
                            156 
   6487                     157                 gl_check_enemy_rock:
   6487 FE 5A         [ 7]  158                 cp #GROUP_ROCK
   6489 D2 A1 64      [10]  159                 jp nc, gl_check_enemy_turtle
                            160                     ;; Enemigo roca
   648C                     161                     gl_check_enemy_rock_right:
   648C FE 59         [ 7]  162                     cp #ROCK_RIGHT
   648E 20 05         [12]  163                     jr nz, gl_check_enemy_rock_left
   6490 11 00 01      [10]  164                         ld de, #0x0100
                            165 
   6493 18 05         [12]  166                         jr gl_generate_enemy_rock
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



                            167                     
   6495                     168                     gl_check_enemy_rock_left:
                            169                         
   6495 11 00 FF      [10]  170                         ld de, #0xFF00
   6498 04            [ 4]  171                         inc b
   6499 04            [ 4]  172                         inc b
                            173 
   649A                     174                     gl_generate_enemy_rock:
   649A 36 00         [10]  175                         ld (hl), #0x00
   649C 3E 03         [ 7]  176                         ld a, #ET_ROCK
   649E 3D            [ 4]  177                         dec a
   649F 18 19         [12]  178                         jr gl_generate_enemy
                            179 
   64A1                     180                 gl_check_enemy_turtle:
   64A1 FE 5C         [ 7]  181                 cp #GROUP_TURTLE
   64A3 D2 84 65      [10]  182                 jp nc, gl_next_tile
                            183                     ;; Enemigo tortuga
   64A6                     184                     gl_check_enemy_turtle_right:
   64A6 FE 5B         [ 7]  185                     cp #TURTLE_RIGHT
   64A8 20 05         [12]  186                     jr nz, gl_check_enemy_turtle_left
   64AA 11 00 01      [10]  187                         ld de, #0x0100
                            188 
   64AD 18 05         [12]  189                         jr gl_generate_enemy_turtle
                            190 
   64AF                     191                     gl_check_enemy_turtle_left:
   64AF 11 00 FF      [10]  192                         ld de, #0xFF00
   64B2 04            [ 4]  193                         inc b
   64B3 04            [ 4]  194                         inc b
                            195 
   64B4                     196                     gl_generate_enemy_turtle:
   64B4 3E 01         [ 7]  197                         ld a, #ET_TURTLE
   64B6 3D            [ 4]  198                         dec a
   64B7 C3 BA 64      [10]  199                         jp gl_generate_enemy
                            200 
                            201 
   64BA                     202             gl_generate_enemy:
   64BA 36 00         [10]  203             ld (hl), #0x00
   64BC CD B0 56      [17]  204             call _me_add_enemy
   64BF C3 84 65      [10]  205             jp gl_next_tile
                            206 
                            207 
   64C2                     208             gl_check_interactable:
   64C2 FE 66         [ 7]  209             cp #GROUP_INTERACTABLE
   64C4 D2 84 65      [10]  210             jp nc, gl_next_tile
                            211                 ;; Interactuables
                            212 
                            213 
   64C7                     214                 gl_check_interactable_checkpoint:
   64C7 FE 5C         [ 7]  215                 cp #ID_CHECKPOINT
   64C9 20 0B         [12]  216                 jr nz, gl_check_interactable_door
   64CB 0D            [ 4]  217                     dec c
   64CC 0D            [ 4]  218                     dec c
   64CD 0D            [ 4]  219                     dec c
   64CE 0D            [ 4]  220                     dec c
   64CF 36 01         [10]  221                     ld (hl), #0x01
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



   64D1 3E 01         [ 7]  222                     ld a, #EI_CHECKPOINT
   64D3 C3 80 65      [10]  223                     jp gl_generate_interactable
                            224 
   64D6                     225                 gl_check_interactable_door:
   64D6 FE 5D         [ 7]  226                 cp #ID_DOOR
   64D8 20 11         [12]  227                 jr nz, gl_check_interactable_double_jump_l
   64DA 0D            [ 4]  228                     dec c
   64DB 0D            [ 4]  229                     dec c
   64DC 0D            [ 4]  230                     dec c
   64DD 04            [ 4]  231                     inc b
   64DE 36 03         [10]  232                     ld (hl), #0x03
   64E0 3A 4B 7B      [13]  233                     ld a, (mi_num_interactable)
   64E3 32 C8 79      [13]  234                     ld (door_id), a
   64E6 3E 06         [ 7]  235                     ld a, #EI_DOOR
   64E8 C3 80 65      [10]  236                     jp gl_generate_interactable
                            237 
   64EB                     238                 gl_check_interactable_double_jump_l:
   64EB FE 5E         [ 7]  239                 cp #ID_DOUBLE_JUMP_L
   64ED 20 07         [12]  240                 jr nz, gl_check_interactable_double_jump_r
   64EF 36 00         [10]  241                     ld (hl), #0x00
   64F1 3E 02         [ 7]  242                     ld a, #EI_DOUBLE_JUMP
   64F3 C3 80 65      [10]  243                     jp gl_generate_interactable
                            244 
   64F6                     245                 gl_check_interactable_double_jump_r:
   64F6 FE 5F         [ 7]  246                 cp #ID_DOUBLE_JUMP_R
   64F8 20 08         [12]  247                 jr nz, gl_check_interactable_gravity_up_l
   64FA 36 00         [10]  248                     ld (hl), #0x00
   64FC 04            [ 4]  249                     inc b
   64FD 04            [ 4]  250                     inc b
   64FE 3E 02         [ 7]  251                     ld a, #EI_DOUBLE_JUMP
   6500 18 7E         [12]  252                     jr gl_generate_interactable
                            253 
   6502                     254                 gl_check_interactable_gravity_up_l:
   6502 FE 60         [ 7]  255                 cp #ID_GRAVITY_UP_L
   6504 20 06         [12]  256                 jr nz, gl_check_interactable_gravity_up_r
   6506 36 00         [10]  257                     ld (hl), #0x00
   6508 3E 03         [ 7]  258                     ld a, #EI_GRAVITY_UP
   650A 18 74         [12]  259                     jr gl_generate_interactable
                            260 
   650C                     261                 gl_check_interactable_gravity_up_r:
   650C FE 61         [ 7]  262                 cp #ID_GRAVITY_UP_R
   650E 20 08         [12]  263                 jr nz, gl_check_interactable_gravity_down_l
   6510 36 00         [10]  264                     ld (hl), #0x00
   6512 04            [ 4]  265                     inc b
   6513 04            [ 4]  266                     inc b
   6514 3E 03         [ 7]  267                     ld a, #EI_GRAVITY_UP
   6516 18 68         [12]  268                     jr gl_generate_interactable
                            269 
   6518                     270                 gl_check_interactable_gravity_down_l:
   6518 FE 62         [ 7]  271                 cp #ID_GRAVITY_DOWN_L
   651A 20 06         [12]  272                 jr nz, gl_check_interactable_gravity_down_r
   651C 36 00         [10]  273                     ld (hl), #0x00
   651E 3E 04         [ 7]  274                     ld a, #EI_GRAVITY_DOWN
   6520 18 5E         [12]  275                     jr gl_generate_interactable
                            276 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



   6522                     277                 gl_check_interactable_gravity_down_r:
   6522 FE 63         [ 7]  278                 cp #ID_GRAVITY_DOWN_R
   6524 20 08         [12]  279                 jr nz, gl_check_players
   6526 36 00         [10]  280                     ld (hl), #0x00
   6528 04            [ 4]  281                     inc b
   6529 04            [ 4]  282                     inc b
   652A 3E 04         [ 7]  283                     ld a, #EI_GRAVITY_DOWN
   652C 18 52         [12]  284                     jr gl_generate_interactable
                            285 
   652E                     286                 gl_check_players:
   652E FE 64         [ 7]  287                 cp #ID_PLAYERS
   6530 C2 6B 65      [10]  288                 jp nz, gl_check_interactable_collectable
   6533 36 00         [10]  289                     ld (hl), #0x00
   6535 3A C7 79      [13]  290                     ld a, (checkpoint_level)
   6538 57            [ 4]  291                     ld d, a
   6539 3A BE 79      [13]  292                     ld a, (actual_level)
   653C 92            [ 4]  293                     sub d
   653D 20 06         [12]  294                     jr nz, gl_init_players
   653F 21 C5 79      [10]  295                         ld hl, #checkpoint_x
   6542 46            [ 7]  296                         ld b, (hl)
   6543 23            [ 6]  297                         inc hl
   6544 4E            [ 7]  298                         ld c, (hl)                    
                            299                     
   6545                     300                     gl_init_players:
                            301 
   6545 FD 21 11 7A   [14]  302                     ld iy, #player_1
   6549 FD 70 00      [19]  303                     ld _eph_x(iy), b
   654C FD 70 0D      [19]  304                     ld _ed_pre_x(iy), b
   654F FD 71 01      [19]  305                     ld _eph_y(iy), c
   6552 FD 71 0E      [19]  306                     ld _ed_pre_y(iy), c
                            307 
   6555 04            [ 4]  308                     inc b
   6556 04            [ 4]  309                     inc b
   6557 04            [ 4]  310                     inc b
   6558 04            [ 4]  311                     inc b
                            312 
   6559 FD 21 31 7A   [14]  313                     ld iy, #player_2
   655D FD 70 00      [19]  314                     ld _eph_x(iy), b
   6560 FD 70 0D      [19]  315                     ld _ed_pre_x(iy), b
   6563 FD 71 01      [19]  316                     ld _eph_y(iy), c
   6566 FD 71 0E      [19]  317                     ld _ed_pre_y(iy), c
                            318 
   6569 18 19         [12]  319                     jr gl_next_tile
                            320 
   656B                     321                 gl_check_interactable_collectable:
   656B FE 65         [ 7]  322                 cp #ID_COLLECTABLE
   656D C2 84 65      [10]  323                 jp nz, gl_next_tile
   6570 0D            [ 4]  324                     dec c
   6571 0D            [ 4]  325                     dec c
   6572 0D            [ 4]  326                     dec c
   6573 0D            [ 4]  327                     dec c
   6574 0D            [ 4]  328                     dec c
   6575 04            [ 4]  329                     inc b
   6576 36 00         [10]  330                     ld (hl), #0x00
   6578 3A 4B 7B      [13]  331                     ld a, (mi_num_interactable)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



   657B 32 C9 79      [13]  332                     ld (collectable_id), a
   657E 3E 05         [ 7]  333                     ld a, #EI_COLLECTABLE
                            334 
   6580                     335         gl_generate_interactable:
   6580 3D            [ 4]  336             dec a
   6581 CD 06 56      [17]  337             call _mi_add_interactable
                            338 
   6584                     339         gl_next_tile:
                            340         
   6584 C1            [10]  341         pop bc
   6585 D1            [10]  342         pop de
   6586 E1            [10]  343         pop hl
                            344 
                            345         ;; BC -> Posición en el tilemap del siguiente Tile
   6587 04            [ 4]  346         inc b
   6588 3E 14         [ 7]  347         ld a, #TILEMAP_W
   658A A8            [ 4]  348         xor b
   658B 20 02         [12]  349         jr nz, gl_no_increment
   658D 47            [ 4]  350             ld b, a
   658E 0C            [ 4]  351             inc c
                            352 
   658F                     353         gl_no_increment:
                            354 
   658F 23            [ 6]  355         inc hl
   6590 1B            [ 6]  356         dec de
                            357 
   6591 AF            [ 4]  358         xor a
   6592 B2            [ 4]  359         or d
   6593 C2 19 64      [10]  360         jp nz, gl_tilemap_loop
   6596 B3            [ 4]  361         or e
   6597 C2 19 64      [10]  362         jp nz, gl_tilemap_loop
                            363 
   659A 3A BF 79      [13]  364         ld a, (actual_level_attr)
   659D CB 77         [ 8]  365         bit 6, a
   659F C8            [11]  366         ret z
                            367 
   65A0 3A C9 79      [13]  368         ld a, (collectable_id)
                            369 
   65A3 CD E1 55      [17]  370         call _mi_search_vector
   65A6 FE 00         [ 7]  371         cp #0x00
   65A8 C0            [11]  372         ret nz
                            373 
   65A9 DD 36 17 00   [19]  374         ld _ei_type(ix), #EI_NONE
   65AD 21 00 35      [10]  375         ld hl, #_colectable_void_spr
   65B0 DD 75 08      [19]  376         ld _ed_spr_l(ix), l
   65B3 DD 74 09      [19]  377         ld _ed_spr_h(ix), h
   65B6 DD 36 12 FE   [19]  378         ld _ed_anim_ind_h(ix), #0xFE
   65BA DD 36 13 FE   [19]  379         ld _ed_anim_ind_l(ix), #0xFE
                            380         
                            381 
   65BE C9            [10]  382 ret
                            383 
                            384 
                            385 
                            386 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 25.
Hexadecimal [16-Bits]



                            387 
                            388 
                            389 
                            390 ;;==================================================================
                            391 ;;                            MANAGE END LEVEL
                            392 ;;------------------------------------------------------------------
                            393 ;; A
                            394 ;;------------------------------------------------------------------
                            395 ;;
                            396 ;; INPUT:
                            397 ;;  NONE
                            398 ;;
                            399 ;; OUTPUT:
                            400 ;;  NONE
                            401 ;;
                            402 ;; DESTROYS:
                            403 ;;   AF
                            404 ;;
                            405 ;;------------------------------------------------------------------
                            406 ;; CYCLES: []
                            407 ;;==================================================================
   65BF                     408 _sl_manage_end_level:
                            409     
   65BF FD 21 51 7A   [14]  410     ld iy, #interactable_vector
   65C3 11 19 00      [10]  411     ld de, #_ei_size
   65C6 3A C8 79      [13]  412     ld a, (door_id)
   65C9 FE 00         [ 7]  413     cp #0x00
   65CB 28 05         [12]  414     jr z, mel_loop_find_door_end
   65CD                     415 mel_loop_find_door:
   65CD FD 19         [15]  416         add iy, de
   65CF 3D            [ 4]  417         dec a
   65D0 20 FB         [12]  418         jr nz, mel_loop_find_door
   65D2                     419 mel_loop_find_door_end:
                            420 
                            421 
   65D2 FD CB 07 46   [20]  422     bit 0, _eph_attributes(iy)
   65D6 20 17         [12]  423     jr nz, mel_door_opened
   65D8 21 00 00      [10]  424     ld hl, #0x0000
   65DB 11 B0 78      [10]  425     ld de, #anim_interactable_door
   65DE CD 5F 60      [17]  426     call _sr_apply_animation
                            427     ;a -> End?
   65E1 FE 00         [ 7]  428     cp #0x00
   65E3 C8            [11]  429     ret z
                            430 
   65E4 FD CB 07 C6   [23]  431         set 0, _eph_attributes(iy)
                            432 
   65E8 3A C2 79      [13]  433         ld a, (tries)
   65EB FE FF         [ 7]  434         cp #0xFF
   65ED 28 00         [12]  435         jr z, mel_door_opened            
                            436 
   65EF                     437 mel_door_opened:
                            438 
   65EF FD 21 11 7A   [14]  439     ld iy, #player_1
   65F3 FD CB 1E 76   [20]  440     bit 6, _ep_player_attr(iy)
   65F7 28 23         [12]  441     jr z, mel_door_opened_check_p2
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
Hexadecimal [16-Bits]



                            442 
   65F9 FD CB 1E EE   [23]  443         set 5, _ep_player_attr(iy)
   65FD FD CB 1E B6   [23]  444         res 6, _ep_player_attr(iy)
                            445 
   6601 3A BE 79      [13]  446         ld a, (actual_level)
   6604 CB 27         [ 8]  447         sla a
   6606 CB 27         [ 8]  448         sla a
   6608 06 00         [ 7]  449         ld b, #0x00
   660A 4F            [ 4]  450         ld c, a
   660B 21 DC 75      [10]  451         ld hl, #level_index
   660E 09            [11]  452         add hl, bc
   660F 23            [ 6]  453         inc hl
   6610 23            [ 6]  454         inc hl
   6611 CB 7E         [12]  455         bit 7, (hl)
   6613 20 07         [12]  456         jr nz, mel_door_opened_check_p2
                            457 
   6615 2A C3 79      [16]  458         ld hl, (level_score)
   6618 EB            [ 4]  459         ex de, hl
   6619 CD 1C 67      [17]  460         call _su_add_score
                            461 
   661C                     462 mel_door_opened_check_p2:
   661C FD 21 31 7A   [14]  463     ld iy, #player_2
   6620 FD CB 1E 76   [20]  464     bit 6, _ep_player_attr(iy)
   6624 28 23         [12]  465     jr z, mel_door_opened_end
                            466 
   6626 FD CB 1E EE   [23]  467         set 5, _ep_player_attr(iy)
   662A FD CB 1E B6   [23]  468         res 6, _ep_player_attr(iy)
                            469 
   662E 3A BE 79      [13]  470         ld a, (actual_level)
   6631 CB 27         [ 8]  471         sla a
   6633 CB 27         [ 8]  472         sla a
   6635 06 00         [ 7]  473         ld b, #0x00
   6637 4F            [ 4]  474         ld c, a
   6638 21 DC 75      [10]  475         ld hl, #level_index
   663B 09            [11]  476         add hl, bc
   663C 23            [ 6]  477         inc hl
   663D 23            [ 6]  478         inc hl
   663E CB 7E         [12]  479         bit 7, (hl)
   6640 20 07         [12]  480         jr nz, mel_door_opened_end
                            481 
   6642 2A C3 79      [16]  482         ld hl, (level_score)
   6645 EB            [ 4]  483         ex de, hl
   6646 CD 1C 67      [17]  484         call _su_add_score
                            485 
   6649                     486 mel_door_opened_end:
                            487 
   6649 21 75 00      [10]  488     ld hl, #0x0075
   664C 22 C3 79      [16]  489     ld (level_score), hl
                            490 
                            491     
                            492     
   664F 3A BD 79      [13]  493     ld a, (mg_game_state)
   6652 FE 01         [ 7]  494     cp #GS_SINGLEPLAYER
   6654 20 06         [12]  495     jr nz, mel_check_multiplayer
                            496 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 27.
Hexadecimal [16-Bits]



   6656 3E 45         [ 7]  497         ld a, #0x45
   6658 32 C0 79      [13]  498         ld (transition), a
   665B C9            [10]  499         ret
                            500 
                            501 
   665C                     502 mel_check_multiplayer:
   665C FD 21 11 7A   [14]  503     ld iy, #player_1
   6660 FD 7E 1E      [19]  504     ld a, _ep_player_attr(iy)
   6663 E6 30         [ 7]  505     and #0b00110000
   6665 28 11         [12]  506     jr z, mel_no_transition
   6667 FD 21 31 7A   [14]  507     ld iy, #player_2
   666B FD 7E 1E      [19]  508     ld a, _ep_player_attr(iy)
   666E E6 30         [ 7]  509     and #0b00110000
   6670 28 06         [12]  510     jr z, mel_no_transition
                            511 
   6672 3E 45         [ 7]  512         ld a, #0x45
   6674 32 C0 79      [13]  513         ld (transition), a
   6677 C9            [10]  514         ret
                            515 
   6678                     516     mel_no_transition:
   6678 3E 03         [ 7]  517         ld a, #0x03
   667A 32 C2 79      [13]  518         ld (tries), a
   667D CD 68 62      [17]  519         call _sr_update_hud_skull
                            520 
                            521 
   6680 C9            [10]  522     ret
                            523 
                            524 
                            525 ;;==================================================================
                            526 ;;                        TRANSITION LEVEL
                            527 ;;------------------------------------------------------------------
                            528 ;; A
                            529 ;;------------------------------------------------------------------
                            530 ;;
                            531 ;; INPUT:
                            532 ;;  NONE
                            533 ;;
                            534 ;; OUTPUT:
                            535 ;;  A -> Indica si se puede cambiar de nivel (0 -> Si, >=1 -> NO)
                            536 ;; BC -> Puntero al siguiente mapa
                            537 ;; DESTROYS:
                            538 ;;   AF
                            539 ;;
                            540 ;;------------------------------------------------------------------
                            541 ;; CYCLES: []
                            542 ;;==================================================================
   6681                     543 _sl_transition_level:
                            544 
   6681 3A C0 79      [13]  545     ld a, (transition)
   6684 3D            [ 4]  546     dec a
   6685 32 C0 79      [13]  547     ld (transition), a
   6688 FE 00         [ 7]  548     cp #0x00
   668A C0            [11]  549     ret nz
                            550 
                            551 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 28.
Hexadecimal [16-Bits]



                            552     ;;SETEAR VARIABLES PARA EL SIGUIENTE NIVEL
   668B 3A BE 79      [13]  553     ld a, (actual_level)
   668E 4F            [ 4]  554     ld c, a
                            555     
   668F 3C            [ 4]  556     inc a
   6690 32 BE 79      [13]  557     ld (actual_level), a
                            558     
   6693 CB 21         [ 8]  559     sla c
   6695 CB 21         [ 8]  560     sla c
   6697 06 00         [ 7]  561     ld b, #0x00
   6699 21 DC 75      [10]  562     ld hl, #level_index
   669C 09            [11]  563     add hl, bc
                            564 
   669D 23            [ 6]  565     inc hl
   669E 23            [ 6]  566     inc hl
   669F CB FE         [15]  567     set 7, (hl) ;; Marcar nivel como completado
                            568 
                            569     ;; Comprobar si era el nivel final
   66A1 23            [ 6]  570     inc hl
   66A2 7E            [ 7]  571     ld a, (hl)
   66A3 FE FF         [ 7]  572     cp #0xFF
   66A5 20 07         [12]  573     jr nz, tl_not_end
   66A7 E1            [10]  574         pop hl
   66A8 CD 25 54      [17]  575         call _mm_congrats_menu_init
   66AB C3 B0 55      [10]  576         jp _mm_congrats_menu_loop
                            577 
   66AE                     578     tl_not_end:
                            579     
   66AE AF            [ 4]  580     xor a
   66AF C9            [10]  581     ret
