ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 .include "sys/system_physics.h.s"
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                              1 .include "main.h.s"
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



                              2 .include "sys/system_user.h.s"
                              1 ;;DEPENDENCIAS
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



                              2 .include "main.h.s"
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



                              1 .include "data.h.s"
                              1 ;;MAPS
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 25.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 27.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 28.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 29.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 30.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 31.
Hexadecimal [16-Bits]



                              3 
                              4 .globl _sr_update_hud_player_data
                              5 
                              6 .globl actual_level
                              7 .globl mg_front_buffer
                              8 
                              9 .globl _sr_draw_string
                             10 
                             11 .globl checkpoint_level
                             12 
                             13 .globl timer_state
                             14 .globl seconds_dc
                             15 .globl seconds
                             16 .globl minutes
                             17 
                             18 .globl p1_key_gameplay
                             19 .globl p2_key_gameplay
                             20 
                             21 .globl p1_key_r
                             22 .globl p1_key_l
                             23 .globl p1_key_j
                             24 .globl p2_key_r
                             25 .globl p2_key_l
                             26 .globl p2_key_j
                             27 
                             28 .globl Key_1
                             29 .globl Key_2
                             30 .globl Key_3
                             31 .globl Key_4
                             32 .globl Key_5
                             33 .globl Key_6
                             34 .globl Key_7
                             35 .globl Key_8
                             36 .globl Key_9
                             37 
                             38 .globl Key_Space    ;; Seleccionar la opción por defecto
                             39 .globl Key_Esc      ;; Volver al menú anterior
                             40 .globl Key_M        ;; Mutear/Desmutear música Y EFECTOS DE SONIDO
                             41 
                             42 
                             43 
                             44 
                             45 ;;FUNCIONES
                             46 .globl _su_get_key_input
                             47 .globl _su_add_score
                             48 .globl _su_get_menu_key_input
                             49 .globl _su_reset_data
                             50 .globl _su_get_key_pressed
                             51 .globl _su_set_player_keys
                             52 
                             53 ;;CONSTANTES
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 32.
Hexadecimal [16-Bits]



                              3 
                              4 .globl _sr_copy_back_to_front
                              5 .globl _sr_fill_backbuffer
                              6 
                              7 .globl _sp_move_entity_x
                              8 .globl _sp_move_entity_y
                              9 .globl _sy_manage_player_physics
                             10 .globl _sp_manage_enemy_physics
                             11 .globl _sp_player_death
                             12 
                             13 .globl _sr_update_hud_player_data
                             14 .globl _sr_update_hud_skull
                             15 .globl _sr_draw_entity
                             16 
                             17 .globl mg_game_state
                             18 .globl jump_table
                             19 .globl enemy_jump_table
                             20 .globl actual_level
                             21 .globl checkpoint_x
                             22 .globl checkpoint_y
                             23 .globl checkpoint_level
                             24 .globl level_score
                             25 
                             26 .globl _mp_init_player
                             27 
                             28 .globl _mg_game_init
                             29 .globl _mg_game_loop
                             30 
                             31 .globl tries
                             32 .globl transition
                             33 
                             34 .globl god_mode
                             35 
                             36 
                             37 ;; CONSTANTS
                     0002    38 PLAYER_VEL_X = 2
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 33.
Hexadecimal [16-Bits]



                              2 
                              3 
                              4 .area _DATA
                              5 
   7C5F 00                    6 aux_01: .db #0x00
   7C60 00                    7 aux_02: .db #0x00
                              8 
                              9 
                             10 
                             11 .area _CODE
                             12 
                             13 
                             14 ;;==================================================================
                             15 ;;                            FIX Y
                             16 ;;------------------------------------------------------------------
                             17 ;; Rectifica la posición en Y de la entidad respecto a la colisión con el escenario
                             18 ;;------------------------------------------------------------------
                             19 ;;
                             20 ;; INPUT:
                             21 ;;  DE -> Punto en el tilemap que coincide con el tile colisionado en X
                             22 ;;  B  -> VY
                             23 ;;  IY -> Entity_Physics_ptr
                             24 ;;
                             25 ;; OUTPUT:
                             26 ;;  NONE
                             27 ;;
                             28 ;; DESTROYS:
                             29 ;;  AF, B, E
                             30 ;;
                             31 ;;------------------------------------------------------------------
                             32 ;; CYCLES: [ | ]
                             33 ;;==================================================================
   5750                      34 _sp_fix_y::
                             35 
   5750 1C            [ 4]   36     inc e ;; El tilemap es tres tiles menor que la pantalla, por eso se le suma 3 a la Y   
   5751 1C            [ 4]   37     inc e
                             38     
   5752 78            [ 4]   39     ld a, b
   5753 06 00         [ 7]   40     ld b, #0x00
   5755 FE 00         [ 7]   41     cp #0x00
   5757 FA 63 57      [10]   42     jp m, sfx_move_up
                             43 
   575A 1D            [ 4]   44         dec e
   575B 1D            [ 4]   45         dec e
   575C FD 46 03      [19]   46         ld b, _eph_h(iy)
   575F 3E 08         [ 7]   47         ld a, #TILE_H
   5761 90            [ 4]   48         sub b
   5762 47            [ 4]   49         ld b, a
                             50 
   5763                      51 sfx_move_up:
   5763 1C            [ 4]   52         inc e
                             53 
   5764 CB 23         [ 8]   54     sla e
   5766 CB 23         [ 8]   55     sla e
   5768 CB 23         [ 8]   56     sla e
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 34.
Hexadecimal [16-Bits]



                             57 
   576A 7B            [ 4]   58     ld a, e
   576B 80            [ 4]   59     add b
                             60 
   576C FD 77 01      [19]   61     ld _eph_y(iy), a
                             62 
   576F FD CB 07 E6   [23]   63     set 4, _eph_attributes(iy)  ;Indicamos que ahora esta en el suelo
                             64 
   5773 C9            [10]   65     ret
                             66 
                             67 ;;==================================================================
                             68 ;;                            FIX X
                             69 ;;------------------------------------------------------------------
                             70 ;; Rectifica la posición en X de la entidad respecto a la colisión con el escenario
                             71 ;;------------------------------------------------------------------
                             72 ;;
                             73 ;; INPUT:
                             74 ;;  DE -> Punto en el tilemap que coincide con el tile colisionado en X
                             75 ;;  B  -> VX
                             76 ;;  IY -> Entity_Physics_ptr
                             77 ;;
                             78 ;; OUTPUT:
                             79 ;;  NONE
                             80 ;;
                             81 ;; DESTROYS:
                             82 ;;  AF, B, D
                             83 ;;
                             84 ;;------------------------------------------------------------------
                             85 ;; CYCLES: [ | ]
                             86 ;;==================================================================
   5774                      87 _sp_fix_x::
                             88 
   5774 78            [ 4]   89     ld a, b
   5775 06 00         [ 7]   90     ld b, #0x00
   5777 FE 00         [ 7]   91     cp #0x00
   5779 FA 85 57      [10]   92     jp m, sfx_move_left
                             93 
   577C 15            [ 4]   94         dec d
   577D 15            [ 4]   95         dec d
   577E 3E 04         [ 7]   96         ld a, #TILE_W
   5780 FD 46 02      [19]   97         ld b, _eph_w(iy)
   5783 90            [ 4]   98         sub b
   5784 47            [ 4]   99         ld b, a
                            100 
   5785                     101 sfx_move_left:
   5785 14            [ 4]  102         inc d
                            103 
   5786 CB 22         [ 8]  104     sla d
   5788 CB 22         [ 8]  105     sla d
                            106 
   578A 7A            [ 4]  107     ld a, d
   578B 80            [ 4]  108     add b
                            109 
   578C FD 77 00      [19]  110     ld _eph_x(iy), a
   578F FD 36 06 00   [19]  111     ld _eph_offset(iy), #0x00
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 35.
Hexadecimal [16-Bits]



                            112 
   5793 FD CB 07 DE   [23]  113     set 3, _eph_attributes(iy)  ;Indicamos que ahora esta en la pared
                            114 
   5797 C9            [10]  115     ret
                            116 
                            117 ;;==================================================================
                            118 ;;                         CHECK MAP COLLISIONS
                            119 ;;------------------------------------------------------------------
                            120 ;; Comprueba las colisiones del escenario a partir de 2 puntos
                            121 ;;------------------------------------------------------------------
                            122 ;;
                            123 ;;
                            124 ;; INPUT:
                            125 ;;  A -> (0 -> X orientation, 1 -> Y orientation)
                            126 ;;  BC -> Punto 1
                            127 ;;  DE -> Punto 2
                            128 ;;  IY -> Puntero a la entidad
                            129 ;;
                            130 ;; OUTPUT:
                            131 ;;  A  -> Tile sobre el que se colisiona
                            132 ;;  DE -> Posicion X,Y del tilemap que corresponde con el punto 1
                            133 ;;
                            134 ;; DESTROYS:
                            135 ;;  AF, BC, DE, HL, AF'
                            136 ;;
                            137 ;;------------------------------------------------------------------
                            138 ;; CYCLES: [ | ]
                            139 ;;==================================================================
   5798                     140 _sp_check_map_collisions::
                            141     
                            142 
   5798 08            [ 4]  143     ex af, af'
                            144 
   5799 CB 38         [ 8]  145     srl b
   579B CB 38         [ 8]  146     srl b
                            147 
   579D CB 39         [ 8]  148     srl c
   579F CB 39         [ 8]  149     srl c
   57A1 CB 39         [ 8]  150     srl c
                            151 
   57A3 0D            [ 4]  152     dec c;; El tilemap es tres tiles menor que la pantalla, por eso se le resta 3 a la Y
   57A4 0D            [ 4]  153     dec c
                            154     ;B/4 -> Sacamos la posicion en el tilemap
                            155     ;C/8 -> Sacamos la posicion en el tilemap
                            156     ;DEBUG
                            157     ;ld a, b
                            158     ;ld (0x5000), a
                            159     ;ld a, c
                            160     ;ld (0x5001), a
                            161 
   57A5 CB 3A         [ 8]  162     srl d
   57A7 CB 3A         [ 8]  163     srl d
                            164 
   57A9 CB 3B         [ 8]  165     srl e
   57AB CB 3B         [ 8]  166     srl e
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 36.
Hexadecimal [16-Bits]



   57AD CB 3B         [ 8]  167     srl e
                            168 
   57AF 1D            [ 4]  169     dec e;; El tilemap es tres tiles menor que la pantalla, por eso se le resta 3 a la Y
   57B0 1D            [ 4]  170     dec e
                            171 
   57B1 D5            [11]  172     push de
                            173     ;D/4 -> Sacamos la posicion en el tilemap
                            174     ;E/8 -> Sacamos la posicion en el tilemap
                            175     ;DEBUG
                            176     ;ld a, d
                            177     ;ld (0x5002), a
                            178     ;ld a, e
                            179     ;ld (0x5003), a
                            180 
   57B2 7A            [ 4]  181     ld a, d ; -> Obtenemos la diferencia en X de los 2 puntos
   57B3 90            [ 4]  182     sub b
   57B4 57            [ 4]  183     ld d, a
                            184 
   57B5 7B            [ 4]  185     ld a, e ; -> Obtenemos la diferencia en Y de los 2 puntos
   57B6 91            [ 4]  186     sub c
   57B7 5F            [ 4]  187     ld e, a
                            188 
   57B8 21 00 2A      [10]  189     ld hl, #TILEMAP_START
   57BB 79            [ 4]  190     ld a, c 
   57BC 48            [ 4]  191     ld c, b
   57BD 06 00         [ 7]  192     ld b, #0x00
   57BF 09            [11]  193     add hl, bc
   57C0 01 14 00      [10]  194     ld bc, #TILEMAP_W
   57C3 FE 00         [ 7]  195     cp #0x00
   57C5 28 04         [12]  196     jr z, cmc_loop_point_1_end
   57C7                     197 cmc_loop_point_1:
   57C7 09            [11]  198         add hl, bc
   57C8 3D            [ 4]  199         dec a
   57C9 20 FC         [12]  200         jr nz, cmc_loop_point_1
                            201 
   57CB                     202 cmc_loop_point_1_end:
   57CB 46            [ 7]  203     ld b, (hl)
                            204 
                            205 ;Comprobamos X
                            206     
   57CC 4B            [ 4]  207     ld c, e     ; -> Aplicamos la diferencia en X
   57CD 5A            [ 4]  208     ld e, d
   57CE 57            [ 4]  209     ld d, a
   57CF 19            [11]  210     add hl, de
                            211 
   57D0 79            [ 4]  212     ld a, c     ; -> Aplicamos la diferencia en Y
   57D1 11 14 00      [10]  213     ld de, #TILEMAP_W
   57D4 FE 00         [ 7]  214     cp #0x00
   57D6 28 04         [12]  215     jr z, cmc_loop_point_2_end
   57D8                     216 cmc_loop_point_2:
   57D8 19            [11]  217         add hl, de
   57D9 3D            [ 4]  218         dec a
   57DA 20 FC         [12]  219         jr nz, cmc_loop_point_2
                            220 
   57DC                     221 cmc_loop_point_2_end:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 37.
Hexadecimal [16-Bits]



   57DC 7E            [ 7]  222     ld a, (hl)
                            223     ;B -> Tile en el que cae el punto 1
                            224     ;A -> Tile en el que cae el punto 2
                            225     
                            226 ;COMPROBAMOS EL TILE CON EL QUE COLISIONA
   57DD CD FF 5B      [17]  227     call _sp_check_tile_id_group
   57E0 4F            [ 4]  228     ld c, a
   57E1 78            [ 4]  229     ld a, b
   57E2 CD FF 5B      [17]  230     call _sp_check_tile_id_group
                            231     
   57E5 47            [ 4]  232     ld b, a
                            233 
   57E6 D1            [10]  234     pop de
   57E7 B9            [ 4]  235     cp c
   57E8 28 09         [12]  236     jr z ,cmc_no_half_Y        ;; Si la Group Id en Y de ambos puntos es diferente, seteamos el bit 2
                            237 
   57EA 08            [ 4]  238     ex af, af'
   57EB FE 00         [ 7]  239     cp #0x00
   57ED 28 04         [12]  240     jr z, cmc_no_half_Y
   57EF FD CB 07 D6   [23]  241         set 2, _eph_attributes(iy)
                            242 
   57F3                     243     cmc_no_half_Y:
   57F3 78            [ 4]  244     ld a, b
   57F4 B9            [ 4]  245     cp c
   57F5 D0            [11]  246     ret nc
   57F6 79            [ 4]  247     ld a, c
   57F7 C9            [10]  248     ret
                            249 
                            250 ;;==================================================================
                            251 ;;                      GET COLLISION POINTS X
                            252 ;;------------------------------------------------------------------
                            253 ;; Devuelve los dos puntos de colisión con el escenario en función de la velocidad, [en X].
                            254 ;;------------------------------------------------------------------
                            255 ;;
                            256 ;; INPUT:
                            257 ;;  IY -> Entity_physics ptr
                            258 ;;   A -> Velocidad en X.
                            259 ;;
                            260 ;; OUTPUT:
                            261 ;;  BC -> Punto 1
                            262 ;;  DE -> Punto 2
                            263 ;;
                            264 ;; DESTROYS:
                            265 ;;  AF, BC, DE, HL,
                            266 ;;
                            267 ;;------------------------------------------------------------------
                            268 ;; CYCLES: [ | ]
                            269 ;;==================================================================
   57F8                     270 _sp_get_collision_points_x::
                            271 
   57F8 FD 46 00      [19]  272     ld b, _eph_x(iy)
   57FB FD 4E 01      [19]  273     ld c, _eph_y(iy)
   57FE 26 00         [ 7]  274     ld h, #0x00
   5800 FD 6E 03      [19]  275     ld l, _eph_h(iy)
                            276 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 38.
Hexadecimal [16-Bits]



   5803 09            [11]  277     add hl, bc
   5804 EB            [ 4]  278     ex de, hl
   5805 1D            [ 4]  279     dec e
                            280     ;;BC -> Arriba Izquierda
                            281     ;;DE -> Abajo Izquierda
                            282 
   5806 FE 00         [ 7]  283     cp #0x00
   5808 F8            [11]  284     ret m
                            285 
   5809 FD 7E 02      [19]  286     ld a, _eph_w(iy)
   580C 80            [ 4]  287     add b
   580D 47            [ 4]  288     ld b, a
   580E 57            [ 4]  289     ld d, a
                            290     ;;BC -> Arriba Derecha
                            291     ;;DE -> Abajo Derecha
                            292     
   580F FD 7E 06      [19]  293     ld a, _eph_offset(iy)
   5812 FE 00         [ 7]  294     cp #0x00
   5814 C0            [11]  295     ret nz
                            296 
   5815 05            [ 4]  297     dec b
   5816 15            [ 4]  298     dec d
                            299     ;;BC -> Arriba Derecha Derecha
                            300     ;;DE -> Abajo Derecha Derecha
                            301 
   5817 C9            [10]  302     ret
                            303 
                            304 ;;==================================================================
                            305 ;;                      GET COLLISION POINTS Y
                            306 ;;------------------------------------------------------------------
                            307 ;; Devuelve los dos puntos de colisión con el escenario en función de la velocidad, [en Y].
                            308 ;;------------------------------------------------------------------
                            309 ;;
                            310 ;; INPUT:
                            311 ;;  IY -> Entity_physics ptr
                            312 ;;   A -> Velocidad en Y.
                            313 ;;
                            314 ;; OUTPUT:
                            315 ;;  NONE
                            316 ;;
                            317 ;; DESTROYS:
                            318 ;;  AF, BC, DE, HL
                            319 ;;
                            320 ;;------------------------------------------------------------------
                            321 ;; CYCLES: [ | ]
                            322 ;;==================================================================
   5818                     323 _sp_get_collision_points_y::
                            324 
   5818 FD 46 00      [19]  325     ld b, _eph_x(iy)
   581B FD 4E 01      [19]  326     ld c, _eph_y(iy)
                            327 
   581E FD 66 02      [19]  328     ld h, _eph_w(iy)
   5821 2E 00         [ 7]  329     ld l, #0x00
   5823 09            [11]  330     add hl, bc
                            331 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 39.
Hexadecimal [16-Bits]



   5824 EB            [ 4]  332     ex de, hl
                            333     ;;BC -> Arriba Izquierda
                            334     ;;DE -> Arriba Derecha
                            335 
   5825 FE 00         [ 7]  336     cp #0x00
   5827 FA 31 58      [10]  337     jp m, gcpy_check_offset
                            338 
   582A FD 7E 03      [19]  339     ld a, _eph_h(iy)
   582D 81            [ 4]  340     add c
   582E 3D            [ 4]  341     dec a
   582F 4F            [ 4]  342     ld c, a
   5830 5F            [ 4]  343     ld e, a
                            344     ;;BC -> Abajo Izquierda
                            345     ;;DE -> Abajo Derecha
                            346 
   5831                     347 gcpy_check_offset:
                            348 
   5831 FD 7E 06      [19]  349     ld a, _eph_offset(iy)
   5834 FE 00         [ 7]  350     cp #0x00
   5836 C0            [11]  351     ret nz
                            352 
   5837 15            [ 4]  353     dec d
                            354     ;;BC -> Abajo Izquierda
                            355     ;;DE -> Abajo Derecha Derecha
                            356 
   5838 C9            [10]  357     ret
                            358         
                            359 
                            360 
                            361 ;;==================================================================
                            362 ;;                         MANAGE PLAYER PHYSICS
                            363 ;;------------------------------------------------------------------
                            364 ;; Actualiza las físicas del jugador.
                            365 ;;------------------------------------------------------------------
                            366 ;;
                            367 ;; INPUT:
                            368 ;;  IY -> Puntero al jugador 
                            369 ;;  DE -> D = Player(key_r + key_l),  E = Player(key_j state)
                            370 ;;
                            371 ;; OUTPUT:
                            372 ;;  NONE
                            373 ;;
                            374 ;; DESTROYS:
                            375 ;;  AF, BC, DE, HL, AF'
                            376 ;;
                            377 ;;------------------------------------------------------------------
                            378 ;; CYCLES: [ | ]
                            379 ;;==================================================================
   5839                     380 _sy_manage_player_physics:
                            381 
   5839 FD 7E 18      [19]  382     ld a, _ep_force_x(iy)
   583C 47            [ 4]  383     ld b, a 
   583D FE 00         [ 7]  384     cp #0x00
   583F 28 45         [12]  385     jr z, mpp_apply_input_x
                            386 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 40.
Hexadecimal [16-Bits]



                            387     ;FORZAR MOVIMIENTO
   5841 FD 7E 17      [19]  388     ld a, _ep_wall_dir(iy)
   5844 FE 00         [ 7]  389     cp #0x00
   5846 20 3E         [12]  390     jr nz, mpp_apply_input_x
                            391 
                            392 
   5848 FD CB 07 66   [20]  393     bit 4, _eph_attributes(iy) ;Comprobamos suelo
   584C 28 0A         [12]  394     jr z, mpp_force_movement
                            395 
   584E FD CB 07 4E   [20]  396         bit 1, _eph_attributes(iy)
   5852 28 32         [12]  397         jr z, mpp_apply_input_x
                            398 
   5854 FD CB 07 8E   [23]  399             res 1, _eph_attributes(iy)
                            400 
   5858                     401 mpp_force_movement:
   5858 78            [ 4]  402     ld a, b
   5859 FE 00         [ 7]  403     cp #0x00
   585B FA 72 58      [10]  404     jp m, mpp_check_force_x_left
                            405 
   585E FE 7D         [ 7]  406         cp #FORCE_X_R_MIN
   5860 30 05         [12]  407         jr nc, mpp_apply_force_x_right
                            408 
   5862 7A            [ 4]  409             ld a, d
   5863 FE 00         [ 7]  410             cp #0x00 
   5865 20 1F         [12]  411             jr nz, mpp_apply_input_x
                            412 
   5867                     413 mpp_apply_force_x_right:
   5867 FD 35 18      [23]  414         dec _ep_force_x(iy)
   586A 16 01         [ 7]  415         ld d, #0x01
   586C FD CB 07 EE   [23]  416         set 5, _eph_attributes(iy)
   5870 18 4F         [12]  417         jr mpp_no_orientation
                            418 
                            419 
   5872                     420 mpp_check_force_x_left:
   5872 FE 83         [ 7]  421         cp #FORCE_X_L_MIN
   5874 38 05         [12]  422         jr c, mpp_apply_force_x_left
                            423 
   5876 7A            [ 4]  424             ld a, d
   5877 FE 00         [ 7]  425             cp #0x00 
   5879 20 0B         [12]  426             jr nz, mpp_apply_input_x
                            427 
   587B                     428 mpp_apply_force_x_left:      
   587B FD 34 18      [23]  429         inc _ep_force_x(iy)
   587E 16 FF         [ 7]  430         ld d, #0xff
   5880 FD CB 07 AE   [23]  431         res 5, _eph_attributes(iy)
   5884 18 3B         [12]  432         jr mpp_no_orientation
                            433 
                            434 
                            435     ;TRANSFORMAR INPUT
   5886                     436 mpp_apply_input_x:
   5886 FD 36 18 00   [19]  437     ld _ep_force_x(iy), #0x00
   588A 7A            [ 4]  438     ld a, d                                 ;;Obtenemos la direccion del jugador
   588B FE 00         [ 7]  439     cp #0x00
   588D 28 32         [12]  440     jr z, mpp_no_orientation
   588F FE FF         [ 7]  441     cp #0xFF
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 41.
Hexadecimal [16-Bits]



   5891 20 19         [12]  442     jr nz, mpp_change_orientation_right     ;;IZQUIERDA--------------------------------
                            443 
   5893 FD 7E 17      [19]  444         ld a, _ep_wall_dir(iy)
   5896 FE 00         [ 7]  445         cp #0x00
   5898 28 0C         [12]  446         jr z, mpp_change_orientation_left_continue
   589A FA A6 58      [10]  447         jp m, mpp_change_orientation_left_continue
                            448 
   589D FD 35 17      [23]  449             dec _ep_wall_dir(iy)
   58A0 28 04         [12]  450             jr z, mpp_change_orientation_left_continue
                            451 
   58A2 16 00         [ 7]  452             ld d, #0x00
   58A4 18 1B         [12]  453             jr mpp_no_orientation
                            454 
   58A6                     455 mpp_change_orientation_left_continue:
   58A6 FD CB 07 AE   [23]  456         res 5, _eph_attributes(iy)
                            457 
   58AA 18 15         [12]  458         jr mpp_no_orientation
                            459 
   58AC                     460 mpp_change_orientation_right:               ;;DERECHA----------------------------------
   58AC FD 7E 17      [19]  461         ld a, _ep_wall_dir(iy)
   58AF FE 00         [ 7]  462         cp #0x00
   58B1 F2 BD 58      [10]  463         jp p, mpp_change_orientation_right_continue
                            464 
   58B4 FD 34 17      [23]  465             inc _ep_wall_dir(iy)
   58B7 28 04         [12]  466             jr z, mpp_change_orientation_right_continue
                            467 
   58B9 16 00         [ 7]  468             ld d, #0x00
   58BB 18 04         [12]  469             jr mpp_no_orientation
                            470 
   58BD                     471 mpp_change_orientation_right_continue:
   58BD FD CB 07 EE   [23]  472         set 5, _eph_attributes(iy)
                            473 
                            474 
   58C1                     475 mpp_no_orientation:
                            476    
                            477 
   58C1                     478 mpp_end_x_input:
                            479 
                            480 
   58C1 3E 02         [ 7]  481     ld a, #PLAYER_VEL_X
   58C3 D6 01         [ 7]  482     sub #0x01
   58C5 28 09         [12]  483     jr z, mpp_vel_x
   58C7 38 07         [12]  484     jr c, mpp_vel_x
                            485     
   58C9 47            [ 4]  486     ld b, a
                            487 
   58CA 7A            [ 4]  488     ld a, d
   58CB                     489     mpp_vel_x_loop:
   58CB 82            [ 4]  490         add d
   58CC 05            [ 4]  491         dec b
   58CD 20 FC         [12]  492     jr nz, mpp_vel_x_loop
                            493 
   58CF 57            [ 4]  494     ld d, a
                            495 
   58D0                     496     mpp_vel_x:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 42.
Hexadecimal [16-Bits]



                            497 
   58D0 FD 72 04      [19]  498     ld _eph_vx(iy), d                       ;;Aplicamos la velocidad Horizontal
                            499 
                            500 
                            501 
                            502 ;;------------------------------------------SALTO------------------------------------
                            503 
   58D3 FD 7E 17      [19]  504     ld a, _ep_wall_dir(iy)
   58D6 47            [ 4]  505     ld b, a
                            506 
   58D7 AF            [ 4]  507     xor a             
   58D8 32 5F 7C      [13]  508     ld (aux_01), a                      
   58DB FD 77 05      [19]  509     ld _eph_vy(iy), a
                            510 
   58DE FD CB 1E 7E   [20]  511     bit 7, _ep_player_attr(iy)
   58E2 20 62         [12]  512     jr nz, mpp_no_key_j
   58E4 CB 43         [ 8]  513     bit 0, e                                ;;Comprobamos el boton de saltar
   58E6 28 5E         [12]  514     jr z, mpp_no_key_j 
                            515         
   58E8 FD CB 07 66   [20]  516         bit 4, _eph_attributes(iy)          ;;Comprobamos si esta en el suelo
   58EC 28 0C         [12]  517         jr z, mpp_no_floor_jump
                            518 
   58EE CB 4B         [ 8]  519         bit 1, e                            ;;Comprobamos si se esta manteniendo el boton de saltar
   58F0 20 4F         [12]  520         jr nz, mpp_hold_key_j
                            521 
   58F2 0E 00         [ 7]  522             ld c, #JT_INIT
   58F4 FD 71 16      [19]  523             ld _ep_jump_state(iy), c
   58F7 C3 A4 59      [10]  524             jp mpp_jump_check_end
                            525 
                            526 
   58FA                     527 mpp_no_floor_jump:
   58FA 78            [ 4]  528         ld a, b     ;B -> _ep_wall_dir(iy)
   58FB FE 00         [ 7]  529         cp #0x00
   58FD 28 28         [12]  530         jr z, mpp_double_jump
                            531 
   58FF CB 4B         [ 8]  532             bit 1, e                            ;;Comprobamos si se esta manteniendo el boton de saltar
   5901 20 3E         [12]  533             jr nz, mpp_hold_key_j
                            534                 
                            535 
   5903 FD CB 07 CE   [23]  536                 set 1, _eph_attributes(iy)
   5907 0E 00         [ 7]  537                 ld c, #JT_WALL_JUMP
   5909 FD 71 16      [19]  538                 ld _ep_jump_state(iy), c
   590C FD 36 17 00   [19]  539                 ld _ep_wall_dir(iy), #0x00
   5910 FD 36 18 80   [19]  540                 ld _ep_force_x(iy), #FORCE_X_L
   5914 FD 36 04 FE   [19]  541                 ld _eph_vx(iy), #0xFE
                            542                 
   5918 FE 00         [ 7]  543                 cp #0x00
   591A F2 A4 59      [10]  544                 jp p, mpp_jump_check_end
   591D FD 36 18 7F   [19]  545                 ld _ep_force_x(iy), #FORCE_X_R
   5921 FD 36 04 02   [19]  546                 ld _eph_vx(iy), #0x02
   5925 18 7D         [12]  547                 jr mpp_jump_check_end
                            548 
   5927                     549 mpp_double_jump:
   5927 CB 4B         [ 8]  550         bit 1, e                            ;;Comprobamos si se esta manteniendo el boton de saltar
   5929 20 16         [12]  551         jr nz, mpp_hold_key_j
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 43.
Hexadecimal [16-Bits]



                            552 
   592B FD CB 07 46   [20]  553             bit 0, _eph_attributes(iy)
   592F 28 15         [12]  554             jr z, mpp_no_key_j
                            555 
   5931 FD CB 07 86   [23]  556                 res 0, _eph_attributes(iy)  ;;REiniciamos el doble salto
   5935 FD 36 18 00   [19]  557                 ld _ep_force_x(iy), #0x00
   5939 0E 00         [ 7]  558                 ld c, #JT_INIT
   593B FD 71 16      [19]  559                 ld _ep_jump_state(iy), c
   593E C3 A4 59      [10]  560                 jp mpp_jump_check_end
                            561 
                            562 
   5941                     563 mpp_hold_key_j:
                            564         
   5941 3E 01         [ 7]  565         ld a, #0x01
   5943 32 5F 7C      [13]  566         ld (aux_01), a
                            567         
                            568 
                            569 
   5946                     570 mpp_no_key_j:                               ;;No se ha pulsado el boton de saltar
                            571 
   5946 FD 4E 16      [19]  572         ld c, _ep_jump_state(iy)
   5949 79            [ 4]  573         ld a, c
                            574 
   594A FE 08         [ 7]  575         cp #JT_PROGRESSIVE_MAX
   594C 30 10         [12]  576         jr nc, mpp_jump_check_wall
   594E FE 02         [ 7]  577         cp #JT_PTOGRESSIVE_MIN
   5950 38 0C         [12]  578         jr c, mpp_jump_check_wall
                            579 
   5952 3A 5F 7C      [13]  580             ld a, (aux_01)
   5955 FE 00         [ 7]  581             cp #0x00
   5957 20 05         [12]  582             jr nz, mpp_jump_check_wall
                            583 
   5959 0E 08         [ 7]  584                 ld c, #JT_PROGRESSIVE_MAX
   595B FD 71 16      [19]  585                 ld _ep_jump_state(iy), c
                            586 
   595E                     587 mpp_jump_check_wall:
                            588 
   595E 78            [ 4]  589         ld a, b     ;B -> _ep_wall_dir(iy)
   595F FE 00         [ 7]  590         cp #0x00
   5961 28 41         [12]  591         jr z, mpp_jump_check_end
                            592     
   5963 FD CB 07 66   [20]  593             bit 4, _eph_attributes(iy) ;Comprobamos suelo
   5967 20 3B         [12]  594             jr nz, mpp_jump_check_end
                            595 
   5969 FD 7E 00      [19]  596                 ld a, _eph_x(iy)
   596C F5            [11]  597                 push af
                            598 
   596D 78            [ 4]  599                 ld a, b
   596E FE 00         [ 7]  600                 cp #0x00
   5970 FA 7A 59      [10]  601                 jp m, mpp_jump_check_wall_left
                            602                                                 ;;WALL RIGHT
   5973 FD 34 00      [23]  603                     inc _eph_x(iy)    
   5976 3E 01         [ 7]  604                     ld a, #0x01   
                            605 
   5978 18 05         [12]  606                     jr mpp_jump_check_wall_left_end
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 44.
Hexadecimal [16-Bits]



                            607 
   597A                     608 mpp_jump_check_wall_left:                           ;;WALL LEFT
   597A FD 35 00      [23]  609                     dec _eph_x(iy)
   597D 3E FF         [ 7]  610                     ld a, #0xFF
                            611 
                            612 
   597F                     613 mpp_jump_check_wall_left_end:
   597F C5            [11]  614                     push bc
   5980 D5            [11]  615                     push de
   5981 CD F8 57      [17]  616                     call _sp_get_collision_points_x
   5984 AF            [ 4]  617                     xor a
   5985 CD 98 57      [17]  618                     call _sp_check_map_collisions
   5988 D1            [10]  619                     pop de
   5989 C1            [10]  620                     pop bc
   598A 47            [ 4]  621                     ld b, a
                            622 
                            623 
   598B F1            [10]  624                 pop af
   598C FD 77 00      [19]  625                 ld _eph_x(iy), a
                            626                 ; B -> Tile con el que se colisiona
                            627                 ; C -> Offset de la Jump Table
                            628 
                            629 
   598F 78            [ 4]  630                 ld a, b
   5990 59            [ 4]  631                 ld e, c
   5991 0E 0E         [ 7]  632                 ld c, #JT_ON_GROUND
   5993 FE 04         [ 7]  633                 cp #SOLID
   5995 28 07         [12]  634                 jr z, mpp_jump_check_wall_up
                            635 
   5997 4B            [ 4]  636                     ld c, e
   5998 FD 36 17 00   [19]  637                     ld _ep_wall_dir(iy), #0x00
   599C 18 06         [12]  638                     jr mpp_jump_check_end
                            639 
   599E                     640 mpp_jump_check_wall_up:
                            641 
   599E 7B            [ 4]  642     ld a, e
   599F FE 0F         [ 7]  643     cp #JT_ON_WALL
   59A1 30 01         [12]  644     jr nc, mpp_jump_check_end
                            645         
   59A3 4B            [ 4]  646         ld c, e
                            647 
   59A4                     648 mpp_jump_check_end:
                            649 
   59A4 21 DA 79      [10]  650     ld hl, #jump_table
   59A7 CD B0 5C      [17]  651     call _sp_aply_jumptable
                            652 
   59AA FD CB 07 76   [20]  653     bit 6, _eph_attributes(iy)  ;;Comprobamos la gravedad
   59AE 28 02         [12]  654     jr z, mpp_no_change_gravity
                            655         
   59B0 ED 44         [ 8]  656         neg
                            657 
   59B2                     658 mpp_no_change_gravity:
   59B2 FD 77 05      [19]  659     ld _eph_vy(iy), a
                            660 
                            661     ;A -> VY
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 45.
Hexadecimal [16-Bits]



                            662     ;D -> VX
   59B5 F5            [11]  663     push af
                            664     
                            665 
                            666     ;APLICAR FUERZAS Y MANEJAR COLISIONES EN X
   59B6 CD C3 5B      [17]  667     call _sp_move_entity_x
   59B9 7A            [ 4]  668     ld a, d                    ;VX
   59BA FE 00         [ 7]  669     cp #0x00
   59BC 28 55         [12]  670     jr z, mpp_no_map_collision_x
   59BE 47            [ 4]  671         ld b, a
   59BF C5            [11]  672         push bc
   59C0 CD F8 57      [17]  673         call _sp_get_collision_points_x
   59C3 AF            [ 4]  674         xor a
   59C4 CD 98 57      [17]  675         call _sp_check_map_collisions
   59C7 C1            [10]  676         pop bc
                            677                                                     ;;TRANSPARENTES X
   59C8 FE 00         [ 7]  678         cp #TRANSPARENT
   59CA 20 02         [12]  679         jr nz, mpp_collision_x_dangerous
   59CC 18 45         [12]  680             jr mpp_no_map_collision_x
                            681 
   59CE                     682 mpp_collision_x_dangerous:                          ;;PELIGROSOS X
   59CE FE 03         [ 7]  683         cp #DANGEROUS
   59D0 20 0B         [12]  684         jr nz, mpp_collision_x_solid
   59D2 F1            [10]  685             pop af
   59D3 FD CB 1E DE   [23]  686             set 3, _ep_player_attr(iy)
   59D7 3E 15         [ 7]  687             ld a, #0x15
   59D9 FD 77 1F      [19]  688             ld _ep_anim_counter(iy), a
   59DC C9            [10]  689             ret
                            690 
   59DD                     691 mpp_collision_x_solid:                              ;;SOLIDOS X
   59DD FE 04         [ 7]  692         cp #SOLID
   59DF 20 0E         [12]  693         jr nz, mpp_collision_x_gdown
   59E1 CB 20         [ 8]  694             sla b
   59E3 CB 20         [ 8]  695             sla b
   59E5 CB 20         [ 8]  696             sla b
   59E7 FD 70 17      [19]  697             ld _ep_wall_dir(iy), b
   59EA CD 74 57      [17]  698             call _sp_fix_x  
   59ED 18 24         [12]  699             jr mpp_no_map_collision_x
                            700 
   59EF                     701 mpp_collision_x_gdown:
   59EF FE 01         [ 7]  702         cp #GRAVITY_DOWN
   59F1 20 0F         [12]  703         jr nz, mpp_collision_x_gup
   59F3 FD CB 07 76   [20]  704             bit 6, _eph_attributes(iy)
   59F7 28 1A         [12]  705             jr z, mpp_no_map_collision_x
                            706 
   59F9 FD CB 07 B6   [23]  707             res 6, _eph_attributes(iy)  ;;Revertimos la gravedad
   59FD CD 7A 5D      [17]  708             call _sp_apply_change_gravity
   5A00 18 11         [12]  709             jr mpp_no_map_collision_x
                            710 
                            711 
   5A02                     712 mpp_collision_x_gup:
   5A02 FE 02         [ 7]  713         cp #GRAVITY_UP
   5A04 20 0D         [12]  714         jr nz, mpp_no_map_collision_x
   5A06 FD CB 07 76   [20]  715             bit 6, _eph_attributes(iy)
   5A0A 20 07         [12]  716             jr nz, mpp_no_map_collision_x
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 46.
Hexadecimal [16-Bits]



                            717 
   5A0C FD CB 07 F6   [23]  718             set 6, _eph_attributes(iy)  ;;Invertimos la gravedad
   5A10 CD 7A 5D      [17]  719             call _sp_apply_change_gravity
                            720 
                            721 
   5A13                     722 mpp_no_map_collision_x:
                            723 
                            724     ;APLICAR FUERZAS Y MANEJAR COLISIONES EN Y
   5A13 FD CB 07 86   [23]  725     res 0, _eph_attributes(iy)  ;;Reiniciamos el doble salto
   5A17 CD F4 5B      [17]  726     call _sp_move_entity_y
   5A1A F1            [10]  727     pop af
   5A1B FE 00         [ 7]  728     cp #0x00
   5A1D 28 58         [12]  729     jr z, mpp_no_map_collision_y
   5A1F 47            [ 4]  730         ld b, a
   5A20 C5            [11]  731         push bc
   5A21 CD 18 58      [17]  732         call _sp_get_collision_points_y
   5A24 3E 01         [ 7]  733         ld a, #0x01
   5A26 CD 98 57      [17]  734         call _sp_check_map_collisions
   5A29 C1            [10]  735         pop bc
                            736                                                     ;;TRANSPARENTES Y
   5A2A FE 00         [ 7]  737         cp #TRANSPARENT
   5A2C 20 06         [12]  738         jr nz, mpp_collision_y_dangerous
   5A2E FD CB 07 A6   [23]  739             res 4, _eph_attributes(iy)
   5A32 18 43         [12]  740             jr mpp_no_map_collision_y
                            741 
   5A34                     742 mpp_collision_y_dangerous:                          ;;PELIGROSOS Y
   5A34 FE 03         [ 7]  743         cp #DANGEROUS
   5A36 20 0A         [12]  744         jr nz, mpp_collision_y_solid
   5A38 FD CB 1E DE   [23]  745             set 3, _ep_player_attr(iy)
   5A3C 3E 15         [ 7]  746             ld a, #0x15
   5A3E FD 77 1F      [19]  747             ld _ep_anim_counter(iy), a
   5A41 C9            [10]  748             ret
                            749 
   5A42                     750 mpp_collision_y_solid:                              ;;SOLIDOS Y
   5A42 FE 04         [ 7]  751         cp #SOLID
   5A44 20 0D         [12]  752         jr nz, mpp_collision_y_gdown
   5A46 FD 36 17 00   [19]  753             ld _ep_wall_dir(iy), #0x00
   5A4A CD 50 57      [17]  754             call _sp_fix_y                          ;Corregimos la posicion en Y
   5A4D FD 36 16 0E   [19]  755             ld _ep_jump_state(iy), #JT_ON_GROUND    ;Ponemos la jump table a la posicion de colision con el suelo
   5A51 18 24         [12]  756             jr mpp_no_map_collision_y
                            757 
   5A53                     758 mpp_collision_y_gdown:
   5A53 FE 01         [ 7]  759         cp #GRAVITY_DOWN
   5A55 20 0F         [12]  760         jr nz, mpp_collision_y_gup
   5A57 FD CB 07 76   [20]  761             bit 6, _eph_attributes(iy)
   5A5B 28 1A         [12]  762             jr z, mpp_no_map_collision_y
                            763 
   5A5D FD CB 07 B6   [23]  764             res 6, _eph_attributes(iy)  ;;Revertimos la gravedad
   5A61 CD 7A 5D      [17]  765             call _sp_apply_change_gravity
   5A64 18 11         [12]  766             jr mpp_no_map_collision_y
                            767 
                            768 
   5A66                     769 mpp_collision_y_gup:
   5A66 FE 02         [ 7]  770         cp #GRAVITY_UP
   5A68 20 0D         [12]  771         jr nz, mpp_no_map_collision_y
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 47.
Hexadecimal [16-Bits]



   5A6A FD CB 07 76   [20]  772             bit 6, _eph_attributes(iy)
   5A6E 20 07         [12]  773             jr nz, mpp_no_map_collision_y
                            774 
   5A70 FD CB 07 F6   [23]  775             set 6, _eph_attributes(iy)  ;;Invertimos la gravedad
   5A74 CD 7A 5D      [17]  776             call _sp_apply_change_gravity
                            777 
   5A77                     778 mpp_no_map_collision_y:
                            779 
                            780     ; MANEJAR COLISIONES CON LOS INTERACTABLES
   5A77 3A 4B 7B      [13]  781     ld a, (mi_num_interactable)
   5A7A FE 00         [ 7]  782     cp #0x00
   5A7C C8            [11]  783     ret z
   5A7D DD 21 51 7A   [14]  784     ld ix, #interactable_vector
   5A81 11 19 00      [10]  785     ld de, #_ei_size
                            786 
   5A84 CD 92 5C      [17]  787     call _sp_check_entity_vector_collision
   5A87 FE 00         [ 7]  788     cp #0x00
   5A89 C8            [11]  789     ret z
                            790 
   5A8A DD 7E 17      [19]  791     ld a, _ei_type(ix)
   5A8D FE 01         [ 7]  792     cp #EI_CHECKPOINT
   5A8F 20 69         [12]  793     jr nz, mpp_check_double_jump_item
                            794 
   5A91 DD 7E 00      [19]  795         ld a, _eph_x(ix)
   5A94 32 C5 79      [13]  796         ld (checkpoint_x), a
   5A97 DD 7E 01      [19]  797         ld a, _eph_y(ix)
   5A9A 32 C6 79      [13]  798         ld (checkpoint_y), a
   5A9D 3D            [ 4]  799         dec a
   5A9E DD 77 01      [19]  800         ld _eph_y(ix), a
   5AA1 01 04 00      [10]  801         ld bc, #0x0004
   5AA4 DD 6E 08      [19]  802         ld l, _ed_spr_l(ix)
   5AA7 DD 66 09      [19]  803         ld h, _ed_spr_h(ix)
   5AAA 09            [11]  804         add hl, bc
   5AAB DD 75 08      [19]  805         ld _ed_spr_l(ix), l
   5AAE DD 74 09      [19]  806         ld _ed_spr_h(ix), h
   5AB1 DD 36 17 00   [19]  807         ld _ei_type(ix), #0x00
                            808 
   5AB5 3A BE 79      [13]  809         ld a, (actual_level)
   5AB8 32 C7 79      [13]  810         ld (checkpoint_level), a
                            811 
                            812         ;; Si el otro jugador estaba muerto le revivimos
   5ABB DD 21 31 7A   [14]  813         ld ix, #player_2
   5ABF FD CB 1E 46   [20]  814         bit 0, _ep_player_attr(iy)
   5AC3 28 04         [12]  815         jr z, mpp_is_player_1
   5AC5 DD 21 11 7A   [14]  816             ld ix, #player_1
                            817 
   5AC9                     818         mpp_is_player_1:
                            819 
   5AC9 3E 04         [ 7]  820         ld a, #0x04
                            821 
   5ACB DD CB 1E 6E   [20]  822         bit 5, _ep_player_attr(ix)
   5ACF 28 01         [12]  823         jr z, mpp_door_not_opened
   5AD1 3D            [ 4]  824             dec a
                            825 
   5AD2                     826         mpp_door_not_opened:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 48.
Hexadecimal [16-Bits]



   5AD2 32 C2 79      [13]  827         ld (tries), a
                            828 
   5AD5 CD 68 62      [17]  829         call _sr_update_hud_skull
                            830 
   5AD8 DD CB 1E 66   [20]  831         bit 4, _ep_player_attr(ix)
   5ADC C8            [11]  832         ret z
                            833 
   5ADD DD CB 1E A6   [23]  834         res 4, _ep_player_attr(ix)
   5AE1 DD E5         [15]  835         push ix
   5AE3 E1            [10]  836         pop hl
   5AE4 CD 2C 51      [17]  837         call _mp_init_player
                            838 
                            839         ;; Posicionar al jugador revivido en el checkpoint
   5AE7 3A C5 79      [13]  840         ld a, (checkpoint_x)
   5AEA DD 77 00      [19]  841         ld _eph_x(ix), a
   5AED DD 77 0D      [19]  842         ld _ed_pre_x(ix), a
   5AF0 3A C6 79      [13]  843         ld a, (checkpoint_y)
   5AF3 DD 77 01      [19]  844         ld _eph_y(ix), a
   5AF6 DD 77 0E      [19]  845         ld _ed_pre_y(ix), a
                            846 
                            847         
                            848 
   5AF9 C9            [10]  849         ret
                            850 
   5AFA                     851 mpp_check_double_jump_item:
   5AFA FE 02         [ 7]  852     cp #EI_DOUBLE_JUMP
   5AFC 20 21         [12]  853     jr nz, mpp_check_gravity_up_item
                            854         
   5AFE DD 36 14 00   [19]  855         ld _ed_anim_pos(ix), #0x00
   5B02 DD 36 15 10   [19]  856         ld _ed_anim_dur(ix), #0x10
                            857 
   5B06 FD E5         [15]  858         push iy  
                            859 
   5B08 01 E2 35      [10]  860             ld bc, #_double_jump_spr_4
   5B0B DD 71 08      [19]  861             ld _ed_spr_l(ix), c
   5B0E DD 70 09      [19]  862             ld _ed_spr_h(ix), b
                            863 
   5B11 DD E5         [15]  864         push ix 
   5B13 FD E1         [14]  865         pop iy  
                            866 
   5B15 CD 1A 5F      [17]  867             call _sr_draw_entity
                            868 
   5B18 FD E1         [14]  869         pop iy
   5B1A FD CB 07 C6   [23]  870         set 0, _eph_attributes(iy)  ;;seteamos el doble salto
   5B1E C9            [10]  871         ret
                            872 
   5B1F                     873 mpp_check_gravity_up_item:
   5B1F FE 03         [ 7]  874     cp #EI_GRAVITY_UP
   5B21 20 0C         [12]  875     jr nz, mpp_check_gravity_down_item
   5B23 FD CB 07 76   [20]  876         bit 6, _eph_attributes(iy)
   5B27 C0            [11]  877         ret nz
                            878 
   5B28 FD CB 07 F6   [23]  879         set 6, _eph_attributes(iy)  ;;Invertimos la gravedad
   5B2C C3 7A 5D      [10]  880         jp _sp_apply_change_gravity
                            881 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 49.
Hexadecimal [16-Bits]



   5B2F                     882 mpp_check_gravity_down_item:
   5B2F FE 04         [ 7]  883     cp #EI_GRAVITY_DOWN
   5B31 20 0C         [12]  884     jr nz, mpp_check_collectable_item
   5B33 FD CB 07 76   [20]  885         bit 6, _eph_attributes(iy)
   5B37 C8            [11]  886         ret z
                            887 
   5B38 FD CB 07 B6   [23]  888         res 6, _eph_attributes(iy)  ;;Revertimos la gravedad
   5B3C C3 7A 5D      [10]  889         jp _sp_apply_change_gravity
                            890 
   5B3F                     891 mpp_check_collectable_item:
   5B3F FE 05         [ 7]  892     cp #EI_COLLECTABLE
   5B41 20 30         [12]  893     jr nz, mpp_check_door_item
                            894 
   5B43 01 00 35      [10]  895         ld bc, #_colectable_void_spr
                            896 
   5B46 DD 71 08      [19]  897         ld _ed_spr_l(ix), c
   5B49 DD 70 09      [19]  898         ld _ed_spr_h(ix), b
   5B4C DD 36 17 00   [19]  899         ld _ei_type(ix), #0x00
   5B50 DD 5E 16      [19]  900         ld e, _ei_score(ix)
   5B53 16 00         [ 7]  901         ld d, #0x00
                            902 
   5B55 DD 36 12 FE   [19]  903         ld _ed_anim_ind_h(ix), #0xFE
   5B59 DD 36 13 FE   [19]  904         ld _ed_anim_ind_l(ix), #0xFE
                            905 
   5B5D CD 1C 67      [17]  906         call _su_add_score
                            907 
   5B60 21 DC 75      [10]  908         ld hl, #level_index
   5B63 06 00         [ 7]  909         ld b, #0x00
   5B65 3A BE 79      [13]  910         ld a, (actual_level)
   5B68 4F            [ 4]  911         ld c, a
   5B69 CB 21         [ 8]  912         sla c
   5B6B CB 21         [ 8]  913         sla c
   5B6D 09            [11]  914         add hl, bc
   5B6E 23            [ 6]  915         inc hl
   5B6F 23            [ 6]  916         inc hl
                            917         ;; HL -> Puntero a atributos del nivel actual
   5B70 CB F6         [15]  918         set 6, (hl)
                            919 
   5B72 C9            [10]  920         ret
                            921 
   5B73                     922 mpp_check_door_item:
   5B73 FE 06         [ 7]  923     cp #EI_DOOR
   5B75 20 4B         [12]  924     jr nz, mpp_end_check_interactables
                            925 
   5B77 FD CB 1E 6E   [20]  926         bit 5, _ep_player_attr(iy)
   5B7B C0            [11]  927         ret nz
                            928 
   5B7C FD CB 07 CE   [23]  929         set 1, _eph_attributes(iy)
   5B80 FD CB 07 B6   [23]  930         res 6, _eph_attributes(iy)
   5B84 FD CB 1E FE   [23]  931         set 7, _ep_player_attr(iy)
   5B88 FD 7E 00      [19]  932         ld a, _eph_x(iy)
   5B8B DD 46 00      [19]  933         ld b, _eph_x(ix)
   5B8E 90            [ 4]  934         sub b
   5B8F 28 0C         [12]  935         jr z, mpp_check_door_item_check_end
   5B91 30 05         [12]  936         jr nc, mpp_check_door_item_player_right
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 50.
Hexadecimal [16-Bits]



   5B93                     937 mpp_check_door_item_player_left:
                            938 
   5B93 FD 36 18 7F   [19]  939             ld _ep_force_x(iy), #FORCE_X_R
   5B97 C9            [10]  940             ret
                            941 
   5B98                     942 mpp_check_door_item_player_right:
                            943 
   5B98 FD 36 18 80   [19]  944             ld _ep_force_x(iy), #FORCE_X_L
   5B9C C9            [10]  945             ret
                            946 
   5B9D                     947 mpp_check_door_item_check_end:
                            948 
   5B9D FD 7E 06      [19]  949         ld a, _eph_offset(iy)
   5BA0 FE 00         [ 7]  950         cp #0x00
   5BA2 28 05         [12]  951         jr z, mpp_check_door_item_end_end
   5BA4 FD 36 18 80   [19]  952         ld _ep_force_x(iy), #FORCE_X_L
   5BA8 C9            [10]  953         ret
                            954 
   5BA9                     955 mpp_check_door_item_end_end:
   5BA9 FD CB 07 8E   [23]  956         res 1, _eph_attributes(iy)
   5BAD FD CB 1E F6   [23]  957         set 6, _ep_player_attr(iy)
   5BB1 FD 36 18 00   [19]  958         ld _ep_force_x(iy), #0x00
   5BB5 FD CB 07 8E   [23]  959         res 1, _eph_attributes(iy)
   5BB9 FD CB 1E F6   [23]  960         set 6, _ep_player_attr(iy)
   5BBD FD 36 18 00   [19]  961         ld _ep_force_x(iy), #0x00
   5BC1 C9            [10]  962         ret
                            963 
   5BC2                     964 mpp_end_check_interactables:
   5BC2 C9            [10]  965     ret
                            966 
                            967 
                            968 ;;==================================================================
                            969 ;;                         MOVE ENTITY X
                            970 ;;------------------------------------------------------------------
                            971 ;; Actualiza la posicion de una entidad en el eje X.
                            972 ;;------------------------------------------------------------------
                            973 ;;
                            974 ;; INPUT:
                            975 ;;  IY -> Entity_physics ptr
                            976 ;;
                            977 ;; OUTPUT:
                            978 ;;  NONE
                            979 ;;
                            980 ;; DESTROYS:
                            981 ;;  AF, BC, AF'
                            982 ;;
                            983 ;;------------------------------------------------------------------
                            984 ;; CYCLES: [ | ]
                            985 ;;==================================================================
   5BC3                     986 _sp_move_entity_x:
                            987 
   5BC3 FD 7E 06      [19]  988     ld a, _eph_offset(iy)
   5BC6 FD 46 00      [19]  989     ld b, _eph_x(iy)
   5BC9 08            [ 4]  990     ex af, af'
                            991 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 51.
Hexadecimal [16-Bits]



   5BCA 0E 01         [ 7]  992     ld c, #0x01
   5BCC FD 7E 04      [19]  993     ld a, _eph_vx(iy)
   5BCF FE 00         [ 7]  994     cp #0x00
   5BD1 C8            [11]  995     ret z
   5BD2 F2 D9 5B      [10]  996     jp p, sme_loop
   5BD5 0E FF         [ 7]  997     ld c, #0xFF
   5BD7 ED 44         [ 8]  998     neg
                            999 
   5BD9                    1000 sme_loop:
   5BD9 08            [ 4] 1001     ex af, af' ;; A -> Offset
   5BDA 81            [ 4] 1002     add c
   5BDB FE FF         [ 7] 1003     cp #0xFF
   5BDD 20 03         [12] 1004     jr nz, sme_check_04
                           1005 
   5BDF 05            [ 4] 1006         dec b
   5BE0 3E 03         [ 7] 1007         ld a, #0x03
                           1008 
   5BE2                    1009 sme_check_04:    
   5BE2 FE 04         [ 7] 1010     cp #0x04
   5BE4 20 02         [12] 1011     jr nz, sme_loop_continue
                           1012 
   5BE6 04            [ 4] 1013         inc b
   5BE7 AF            [ 4] 1014         xor a
                           1015 
   5BE8                    1016 sme_loop_continue:
   5BE8 08            [ 4] 1017     ex af, af' ;; A -> Vel. X 
   5BE9 3D            [ 4] 1018     dec a
   5BEA 20 ED         [12] 1019     jr nz, sme_loop
                           1020 
   5BEC 08            [ 4] 1021     ex af, af'
   5BED FD 77 06      [19] 1022     ld _eph_offset(iy), a
   5BF0 FD 70 00      [19] 1023     ld _eph_x(iy), b
                           1024 
   5BF3 C9            [10] 1025     ret
                           1026 
                           1027 
                           1028 ;;==================================================================
                           1029 ;;                         MOVE ENTITY Y
                           1030 ;;------------------------------------------------------------------
                           1031 ;; Actualiza la posicion de una entidad en el eje Y.
                           1032 ;;------------------------------------------------------------------
                           1033 ;;
                           1034 ;; INPUT:
                           1035 ;;  IY -> Entity_physics ptr
                           1036 ;;
                           1037 ;; OUTPUT:
                           1038 ;;  NONE
                           1039 ;;
                           1040 ;; DESTROYS:
                           1041 ;;  AF, BC, AF'
                           1042 ;;
                           1043 ;;------------------------------------------------------------------
                           1044 ;; CYCLES: [ | ]
                           1045 ;;==================================================================
   5BF4                    1046 _sp_move_entity_y:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 52.
Hexadecimal [16-Bits]



                           1047 
   5BF4 FD 7E 01      [19] 1048     ld a, _eph_y(iy)
   5BF7 FD 4E 05      [19] 1049     ld c, _eph_vy(iy)
   5BFA 81            [ 4] 1050     add c
   5BFB FD 77 01      [19] 1051     ld _eph_y(iy), a
                           1052 
   5BFE C9            [10] 1053     ret
                           1054 
                           1055 
                           1056 
                           1057 
                           1058 
                           1059 ;;==================================================================
                           1060 ;;                      CHECK TILE ID GROUP
                           1061 ;;------------------------------------------------------------------
                           1062 ;; Comprueba a qué grupo de colisiones pertenece en función de su id en el tileset
                           1063 ;;------------------------------------------------------------------
                           1064 ;;
                           1065 ;;           0  1  2  3  4  5  6  7  8....
                           1066 ;; TILESET = F, F, F, F, S, S, S, S, S, S, S, S, S, S, S, S, S, M, M, M, M, M
                           1067 ;;
                           1068 ;; INPUT:
                           1069 ;;   A -> Tile ID
                           1070 ;;
                           1071 ;; OUTPUT:
                           1072 ;;   A -> Tile ID Group
                           1073 ;;
                           1074 ;; DESTROYS:
                           1075 ;;  AF
                           1076 ;;
                           1077 ;;------------------------------------------------------------------
                           1078 ;; CYCLES: [ | ]
                           1079 ;;==================================================================
   5BFF                    1080 _sp_check_tile_id_group:
                           1081 
   5BFF FE 05         [ 7] 1082     cp #GROUP_TRANSPARENT
   5C01 30 03         [12] 1083     jr nc, ctig_check_group_solid
                           1084 
   5C03 3E 00         [ 7] 1085         ld a, #TRANSPARENT
   5C05 C9            [10] 1086         ret
                           1087 
   5C06                    1088 ctig_check_group_solid:
   5C06 FE 26         [ 7] 1089     cp #GROUP_SOLID
   5C08 30 03         [12] 1090     jr nc, ctig_check_group_dangerous
                           1091 
   5C0A 3E 04         [ 7] 1092         ld a, #SOLID
   5C0C C9            [10] 1093         ret
                           1094 
   5C0D                    1095 ctig_check_group_dangerous:
   5C0D FE 2E         [ 7] 1096     cp #GROUP_DANGEROUS
   5C0F 30 0D         [12] 1097     jr nc, ctig_check_group_gravity_up
                           1098     
                           1099         ;; Comprobar si el GOD MODE está activado
   5C11 3A C1 79      [13] 1100         ld a, (god_mode)
   5C14 FE 00         [ 7] 1101         cp #0x00
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 53.
Hexadecimal [16-Bits]



   5C16 28 03         [12] 1102         jr z, ctig_not_god
                           1103 
   5C18 3E 04         [ 7] 1104             ld a, #SOLID
   5C1A C9            [10] 1105             ret
                           1106 
   5C1B                    1107         ctig_not_god:
   5C1B 3E 03         [ 7] 1108             ld a, #DANGEROUS
   5C1D C9            [10] 1109         ret
                           1110 
   5C1E                    1111 ctig_check_group_gravity_up:
   5C1E FE 2F         [ 7] 1112     cp #GROUP_GDOWN
   5C20 30 03         [12] 1113     jr nc, ctig_check_group_gravity_down
                           1114 
   5C22 3E 01         [ 7] 1115         ld a, #GRAVITY_DOWN
   5C24 C9            [10] 1116         ret
                           1117 
   5C25                    1118 ctig_check_group_gravity_down:
                           1119 
   5C25 3E 02         [ 7] 1120         ld a, #GRAVITY_UP
   5C27 C9            [10] 1121         ret
                           1122 
                           1123 
                           1124 ;;==================================================================
                           1125 ;;                        CHECK ENTITY COLLISION
                           1126 ;;------------------------------------------------------------------
                           1127 ;; Comprueba si han colisionado dos entidades entre sí
                           1128 ;;------------------------------------------------------------------
                           1129 ;;
                           1130 ;; INPUT:
                           1131 ;;  IY -> Entity_physics ptr
                           1132 ;;  IX -> Entity_physics_2 ptr
                           1133 ;;
                           1134 ;; OUTPUT:
                           1135 ;;  A -> (0 -> No colisión, 1 -> Colisión)
                           1136 ;;  B -> Colisión de IY respecto de IX (-1 -> A su izquierda, 0 -> Muy a dentro, 1 -> A su derecha)
                           1137 ;;
                           1138 ;; DESTROYS:
                           1139 ;;  AF, BC, 
                           1140 ;;
                           1141 ;;------------------------------------------------------------------
                           1142 ;; CYCLES: [ | ]
                           1143 ;;==================================================================
   5C28                    1144 _sp_check_entity_collision:
                           1145 
                           1146 
                           1147 ;; Colisiones en eje X o eje Y
                           1148 
                           1149 ;; X            -> Posición
                           1150 ;; X + W        -> Posición + Tamaño en el eje
                           1151 
                           1152 ;; X2
                           1153 ;; X2 + W2
                           1154 
                           1155 ;;
                           1156 ;; Forma general de las físicas (no óptimo)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 54.
Hexadecimal [16-Bits]



                           1157 ;; if(X < X2 + W2 && X + W > X2) -> Colisiona
                           1158 ;; if(X - (X2 + W2) < 0)
                           1159 ;;      if(x2 - (X + W) < 0)
                           1160 ;;          colisiona ;/
                           1161 
                           1162 
   5C28 DD 7E 00      [19] 1163 ld a, _eph_x(ix)
   5C2B DD 86 02      [19] 1164 add _eph_w(ix)
   5C2E 47            [ 4] 1165 ld b, a
   5C2F 04            [ 4] 1166 inc b
   5C30 FD 7E 00      [19] 1167 ld a, _eph_x(iy)
   5C33 B8            [ 4] 1168 cp b
   5C34 30 5A         [12] 1169 jr nc, cec_no_entity_collision              ;; X - X2 + W2
                           1170 
   5C36 FD 86 02      [19] 1171     add _eph_w(iy)
   5C39 47            [ 4] 1172     ld b, a
   5C3A 04            [ 4] 1173     inc b
   5C3B DD 7E 00      [19] 1174     ld a, _eph_x(ix)
   5C3E 90            [ 4] 1175     sub b
   5C3F 30 4F         [12] 1176     jr nc, cec_no_entity_collision          ;; X2 - X + W
                           1177         
   5C41 DD 7E 01      [19] 1178         ld a, _eph_y(ix)
   5C44 DD 86 03      [19] 1179         add _eph_h(ix)
   5C47 47            [ 4] 1180         ld b, a
   5C48 FD 7E 01      [19] 1181         ld a, _eph_y(iy)
   5C4B B8            [ 4] 1182         cp b
   5C4C 30 42         [12] 1183         jr nc, cec_no_entity_collision      ;; Y - Y2 + H2
                           1184 
   5C4E FD 86 03      [19] 1185             add _eph_h(iy)
   5C51 47            [ 4] 1186             ld b, a
   5C52 DD 7E 01      [19] 1187             ld a, _eph_y(ix)
   5C55 90            [ 4] 1188             sub b
   5C56 30 38         [12] 1189             jr nc, cec_no_entity_collision  ;; Y2 - Y + H
                           1190 
                           1191                 ;;Offset
   5C58 FD 7E 00      [19] 1192                 ld a, _eph_x(iy)
   5C5B DD 46 00      [19] 1193                 ld b, _eph_x(ix)
   5C5E B8            [ 4] 1194                 cp b
   5C5F 38 14         [12] 1195                 jr c, cec_right_offset
                           1196                     ;; a -> Derecha, b -> Izquierda
   5C61 90            [ 4] 1197                     sub b
   5C62 DD BE 02      [19] 1198                     cp _eph_w(ix)
   5C65 30 04         [12] 1199                     jr nc, cec_left_edge
   5C67 06 00         [ 7] 1200                         ld b, #0x00
   5C69 18 22         [12] 1201                         jr cec_colliding
                           1202 
   5C6B                    1203                     cec_left_edge:
                           1204 
   5C6B FD 7E 06      [19] 1205                     ld a, _eph_offset(iy) ;; Derecha
   5C6E DD 4E 06      [19] 1206                     ld c, _eph_offset(ix) ;; Izquierda
                           1207 
   5C71 06 01         [ 7] 1208                     ld b, #0x01
                           1209 
   5C73 18 15         [12] 1210                     jr cec_check_offset
                           1211 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 55.
Hexadecimal [16-Bits]



   5C75                    1212                 cec_right_offset:
                           1213                 ;; a -> Izquierda, b -> Derecha
   5C75 4F            [ 4] 1214                 ld c, a
   5C76 78            [ 4] 1215                 ld a, b
   5C77 41            [ 4] 1216                 ld b, c
                           1217 
   5C78 90            [ 4] 1218                 sub b
   5C79 FD BE 02      [19] 1219                 cp _eph_w(iy)
   5C7C 30 04         [12] 1220                 jr nc, cec_right_edge
   5C7E 06 00         [ 7] 1221                     ld b, #0x00
   5C80 18 0B         [12] 1222                     jr cec_colliding
                           1223 
   5C82                    1224                 cec_right_edge:
                           1225 
   5C82 06 FF         [ 7] 1226                 ld b, #0xFF
                           1227 
   5C84 DD 7E 06      [19] 1228                 ld a, _eph_offset(ix) ;; Derecha
   5C87 FD 4E 06      [19] 1229                 ld c, _eph_offset(iy) ;; Izquierda 
                           1230 
   5C8A                    1231                 cec_check_offset:
                           1232                 ;; Si el offset de la derecha es >= al de la izquierda NO hay colisión
                           1233                 ;; A -> Derecha
                           1234                 ;; C -> Izquierda
                           1235 
   5C8A B9            [ 4] 1236                 cp c
   5C8B 30 03         [12] 1237                 jr nc, cec_no_entity_collision
                           1238 
   5C8D                    1239                 cec_colliding:
   5C8D 3E 01         [ 7] 1240                     ld a, #01
   5C8F C9            [10] 1241                     ret
                           1242 
                           1243                     
   5C90                    1244 cec_no_entity_collision:
   5C90 AF            [ 4] 1245     xor a
   5C91 C9            [10] 1246     ret
                           1247 
                           1248 ;;==================================================================
                           1249 ;;                    CHECK ENTITY VECTOR COLLISION
                           1250 ;;------------------------------------------------------------------
                           1251 ;; Comprueba si una entidad ha colisionado con alguna entidad del vector
                           1252 ;;------------------------------------------------------------------
                           1253 ;;
                           1254 ;; INPUT:
                           1255 ;;  IY  -> Puntero a la entidad
                           1256 ;;  IX  -> Puntero al vector de entidades
                           1257 ;;  A   -> Número de elementos de la entidad
                           1258 ;;  DE  -> Tamaño de cada elemento del vector
                           1259 ;;
                           1260 ;; OUTPUT:
                           1261 ;;  A   -> (0 -> No colisión, 1 -> Colisión)
                           1262 ;;  B   -> Colisión de IY respecto de IX (-1 -> A su izquierda, 0 -> Muy a dentro, 1 -> A su derecha)
                           1263 ;;  IX  -> Puntero a la entidad con la que ha colisionado / Fin del vector
                           1264 ;;
                           1265 ;; DESTROYS:
                           1266 ;;  AF, BC, IX, AF'
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 56.
Hexadecimal [16-Bits]



                           1267 ;;
                           1268 ;;------------------------------------------------------------------
                           1269 ;; CYCLES: [ | ]
                           1270 ;;==================================================================
   5C92                    1271 _sp_check_entity_vector_collision:
                           1272 
   5C92                    1273     cevc_loop_vector:
                           1274 
   5C92 08            [ 4] 1275         ex af, af'
                           1276 
   5C93 DD 7E 17      [19] 1277         ld a, _ee_type(ix)
   5C96 FE 00         [ 7] 1278         cp #0x00
   5C98 28 0F         [12] 1279         jr z, cevc_next_entity
                           1280 
   5C9A DD 7E 18      [19] 1281         ld a, _ee_disabled(ix) ; Si la entidad está deshabilitada no se comprueban sus colisiones
   5C9D FE 00         [ 7] 1282         cp #0x00
   5C9F 20 08         [12] 1283         jr nz, cevc_entity_disabled
   5CA1 CD 28 5C      [17] 1284             call _sp_check_entity_collision
   5CA4 FE 00         [ 7] 1285             cp #0x00
   5CA6 C0            [11] 1286             ret nz
   5CA7 18 00         [12] 1287             jr cevc_next_entity
                           1288 
   5CA9                    1289         cevc_entity_disabled:
                           1290             ;dec _ee_disabled(ix)
                           1291 
   5CA9                    1292         cevc_next_entity:
   5CA9 08            [ 4] 1293         ex af, af'
                           1294 
   5CAA DD 19         [15] 1295         add ix, de
   5CAC 3D            [ 4] 1296         dec a
   5CAD 20 E3         [12] 1297         jr nz, cevc_loop_vector
                           1298 
   5CAF C9            [10] 1299     ret
                           1300 
                           1301 
                           1302 ;;==================================================================
                           1303 ;;                    APLY JUMPTABLE
                           1304 ;;------------------------------------------------------------------
                           1305 ;; Modifica la velocidad en Y de acuerdo a su posición en la tabla de saltos
                           1306 ;;------------------------------------------------------------------
                           1307 ;;
                           1308 ;; INPUT:
                           1309 ;;  IY  -> Puntero a la entidad
                           1310 ;;  C   -> Offset de la jumptable
                           1311 ;;  HL  -> Puntero a la jumptable
                           1312 ;;
                           1313 ;; OUTPUT:
                           1314 ;;  A -> Velocidad en Y resultante
                           1315 ;;
                           1316 ;; DESTROYS:
                           1317 ;;  AF, BC, HL,
                           1318 ;;
                           1319 ;;------------------------------------------------------------------
                           1320 ;; CYCLES: [ | ]
                           1321 ;;==================================================================
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 57.
Hexadecimal [16-Bits]



   5CB0                    1322 _sp_aply_jumptable:
                           1323 
   5CB0 06 00         [ 7] 1324         ld b, #0x00
   5CB2 09            [11] 1325         add hl, bc
   5CB3 7E            [ 7] 1326         ld a, (hl)
   5CB4 FE 80         [ 7] 1327         cp #0x80
   5CB6 20 03         [12] 1328         jr nz, aj_jump_continue
                           1329 
   5CB8 2B            [ 6] 1330             dec hl
   5CB9 0D            [ 4] 1331             dec c
   5CBA 7E            [ 7] 1332             ld a, (hl)
                           1333 
   5CBB                    1334     aj_jump_continue:
   5CBB 0C            [ 4] 1335         inc c
   5CBC FD 71 16      [19] 1336         ld _ee_jump_state(iy), c
                           1337         
                           1338 
   5CBF C9            [10] 1339     ret
                           1340 
                           1341 
                           1342 ;;==================================================================
                           1343 ;;                    MANAGE ENEMY PHYSICS
                           1344 ;;------------------------------------------------------------------
                           1345 ;; Maneja las físicas asociadas a cada enemigo
                           1346 ;;------------------------------------------------------------------
                           1347 ;;
                           1348 ;; INPUT:
                           1349 ;;  
                           1350 ;;  DE -> D = Enemy(key_r + key_l) E -> Enemy(key_u + key_d)
                           1351 ;;  IY  -> Puntero al enemigo
                           1352 ;;
                           1353 ;; OUTPUT:
                           1354 ;;
                           1355 ;; DESTROYS:
                           1356 ;;  AF, BC, DE, HL, AF'
                           1357 ;;
                           1358 ;;------------------------------------------------------------------
                           1359 ;; CYCLES: [ | ]
                           1360 ;;==================================================================
   5CC0                    1361 _sp_manage_enemy_physics:
                           1362 
   5CC0 FD 72 04      [19] 1363     ld _eph_vx(iy), d
                           1364 
   5CC3 7B            [ 4] 1365     ld a, e
   5CC4 FD CB 07 4E   [20] 1366     bit 1, _eph_attributes(iy)
   5CC8 28 09         [12] 1367     jr z, mep_not_aply_jumptable
                           1368 
   5CCA 21 DA 79      [10] 1369         ld hl, #jump_table
   5CCD FD 4E 16      [19] 1370         ld c, _ee_jump_state(iy)
   5CD0 CD B0 5C      [17] 1371         call _sp_aply_jumptable
                           1372 
   5CD3                    1373     mep_not_aply_jumptable:
   5CD3 FD 77 05      [19] 1374     ld _eph_vy(iy), a
                           1375 
                           1376 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 58.
Hexadecimal [16-Bits]



   5CD6 47            [ 4] 1377     ld b, a
   5CD7 7A            [ 4] 1378     ld a, d
   5CD8 50            [ 4] 1379     ld d, b
                           1380 
                           1381     ;; A -> VX
                           1382     ;; D -> VY
   5CD9 08            [ 4] 1383     ex af, af'
   5CDA FD 7E 00      [19] 1384     ld a, _eph_x(iy)
   5CDD 32 5F 7C      [13] 1385     ld (aux_01), a
   5CE0 FD 7E 06      [19] 1386     ld a, _eph_offset(iy)
   5CE3 32 60 7C      [13] 1387     ld (aux_02), a
   5CE6 08            [ 4] 1388     ex af, af'
                           1389 
   5CE7 D5            [11] 1390     push de
                           1391 
   5CE8 FE 00         [ 7] 1392     cp #0x00
   5CEA 28 1A         [12] 1393     jr z, mep_no_move_x
                           1394 
   5CEC F5            [11] 1395     push af
   5CED CD C3 5B      [17] 1396     call _sp_move_entity_x
   5CF0 F1            [10] 1397     pop af
                           1398 
   5CF1 FD CB 07 9E   [23] 1399     res 3, _eph_attributes(iy)
                           1400 
   5CF5 CD F8 57      [17] 1401     call _sp_get_collision_points_x
   5CF8 AF            [ 4] 1402     xor a
   5CF9 CD 98 57      [17] 1403     call _sp_check_map_collisions
                           1404 
   5CFC FE 04         [ 7] 1405     cp #SOLID
   5CFE 20 06         [12] 1406     jr nz, mep_no_move_x
   5D00 FD 46 04      [19] 1407         ld b, _eph_vx(iy)
   5D03 CD 74 57      [17] 1408         call _sp_fix_x
                           1409         
                           1410 
                           1411 
   5D06                    1412     mep_no_move_x:
                           1413 
   5D06 D1            [10] 1414     pop de
                           1415 
   5D07 7A            [ 4] 1416     ld a, d
   5D08 FE 00         [ 7] 1417     cp #0x00
   5D0A 28 23         [12] 1418     jr z, mep_no_move_y
                           1419 
                           1420         
   5D0C F5            [11] 1421         push af
   5D0D CD F4 5B      [17] 1422         call _sp_move_entity_y
   5D10 F1            [10] 1423         pop af
                           1424 
   5D11 CD 18 58      [17] 1425         call _sp_get_collision_points_y
                           1426 
   5D14 3E 01         [ 7] 1427         ld a, #0x01
   5D16 FD CB 07 96   [23] 1428         res 2, _eph_attributes(iy)
   5D1A CD 98 57      [17] 1429         call _sp_check_map_collisions
                           1430 
   5D1D FD CB 07 A6   [23] 1431         res 4, _eph_attributes(iy)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 59.
Hexadecimal [16-Bits]



   5D21 FE 04         [ 7] 1432         cp #SOLID
   5D23 20 0A         [12] 1433         jr nz, mep_no_move_y
   5D25 FD 46 05      [19] 1434             ld b, _eph_vy(iy)
   5D28 CD 50 57      [17] 1435             call _sp_fix_y
   5D2B FD 36 16 0E   [19] 1436             ld _ee_jump_state(iy), #JT_ON_GROUND    ;Ponemos la jump table a la posicion de colision con el suelo
                           1437 
   5D2F                    1438     mep_no_move_y:
                           1439 
                           1440     ;; Solo para el enemigo tortuga -> Si está en un borde, que vuelva hacia atrás
   5D2F FD 7E 17      [19] 1441     ld a, _ee_type(iy)
   5D32 FE 01         [ 7] 1442     cp #ET_TURTLE
   5D34 20 14         [12] 1443     jr nz, mep_check_player_1_collision
                           1444 
   5D36 FD CB 07 56   [20] 1445     bit 2, _eph_attributes(iy)
   5D3A 28 0E         [12] 1446     jr z, mep_check_player_1_collision
                           1447 
   5D3C 08            [ 4] 1448     ex af, af'
   5D3D 3A 5F 7C      [13] 1449     ld a, (aux_01)
   5D40 FD 77 00      [19] 1450     ld _eph_x(iy), a
   5D43 3A 60 7C      [13] 1451     ld a, (aux_02)
   5D46 FD 77 06      [19] 1452     ld _eph_offset(iy), a
   5D49 08            [ 4] 1453     ex af, af'
                           1454 
   5D4A                    1455     mep_check_player_1_collision:
                           1456     ;; Se supone que el siguiente cacho de código hace que las colisiones entre enemigos y
                           1457     ;; jugadores sean más precisas
                           1458 
                           1459     ;; Comprobar si el GOD MODE está activado
   5D4A 3A C1 79      [13] 1460     ld a, (god_mode)
   5D4D FE 00         [ 7] 1461     cp #0x00
   5D4F 20 28         [12] 1462     jr nz, mep_no_player_collision
                           1463 
   5D51 DD 21 11 7A   [14] 1464     ld ix, #player_1
   5D55 CD 28 5C      [17] 1465     call _sp_check_entity_collision
   5D58 FE 00         [ 7] 1466     cp #0x00
   5D5A 28 09         [12] 1467     jr z, mep_check_player_2_collision
                           1468         ;push ix
                           1469         ;pop iy
   5D5C DD CB 1E DE   [23] 1470         set 3, _ep_player_attr(ix)
   5D60 3E 15         [ 7] 1471         ld a, #0x15
   5D62 DD 77 1F      [19] 1472         ld _ep_anim_counter(ix), a
                           1473 
   5D65                    1474     mep_check_player_2_collision:
   5D65 DD 21 31 7A   [14] 1475     ld ix, #player_2
   5D69 CD 28 5C      [17] 1476     call _sp_check_entity_collision
   5D6C FE 00         [ 7] 1477     cp #0x00
   5D6E 28 09         [12] 1478     jr z, mep_no_player_collision
                           1479         ;push ix
                           1480         ;pop iy
   5D70 DD CB 1E DE   [23] 1481         set 3, _ep_player_attr(ix)
   5D74 3E 15         [ 7] 1482         ld a, #0x15
   5D76 DD 77 1F      [19] 1483         ld _ep_anim_counter(ix), a
                           1484 
   5D79                    1485     mep_no_player_collision:
                           1486 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 60.
Hexadecimal [16-Bits]



   5D79 C9            [10] 1487 ret
                           1488 
                           1489 
                           1490 
                           1491 
                           1492 ;;==================================================================
                           1493 ;;                    APPLY CHANGE GRAVITY
                           1494 ;;------------------------------------------------------------------
                           1495 ;; Cambia la tabla de saltos para adaptarse al cambio de gravedad
                           1496 ;;------------------------------------------------------------------
                           1497 ;;
                           1498 ;; INPUT:
                           1499 ;;  
                           1500 ;;  IY  -> Puntero al enemigo
                           1501 ;;
                           1502 ;; OUTPUT:
                           1503 ;;
                           1504 ;; DESTROYS:
                           1505 ;;  AF, BC, DE, HL, AF'
                           1506 ;;
                           1507 ;;------------------------------------------------------------------
                           1508 ;; CYCLES: [ | ]
                           1509 ;;==================================================================
   5D7A                    1510 _sp_apply_change_gravity:
                           1511 
   5D7A FD 7E 16      [19] 1512     ld a, _ep_jump_state(iy)
                           1513 
   5D7D FE 0B         [ 7] 1514     cp #JT_GRAVITY_CONTINUE
   5D7F 30 04         [12] 1515     jr nc, acg_check_fall
                           1516 
   5D81 3E 0E         [ 7] 1517         ld a, #JT_ON_GROUND
   5D83 18 05         [12] 1518         jr acg_check_end
                           1519 
   5D85                    1520 acg_check_fall:
   5D85 FE 0E         [ 7] 1521     cp #JT_ON_GROUND
   5D87 D8            [11] 1522     ret c
                           1523 
   5D88 3E 00         [ 7] 1524         ld a, #JT_GRAVITY_MARGIN
                           1525 
   5D8A                    1526 acg_check_end:
   5D8A FD 77 16      [19] 1527     ld _ep_jump_state(iy), a
   5D8D C9            [10] 1528     ret
                           1529 
                           1530 
                           1531 
                           1532 
                           1533 ;;==================================================================
                           1534 ;;                    APPLY PLAYER DEATH
                           1535 ;;------------------------------------------------------------------
                           1536 ;; Mata al jugador teniendo en cuenta el estado actual del juego
                           1537 ;;------------------------------------------------------------------
                           1538 ;;
                           1539 ;; INPUT:
                           1540 ;;  
                           1541 ;;  IY  -> Puntero al jugador
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 61.
Hexadecimal [16-Bits]



                           1542 ;;
                           1543 ;; OUTPUT:
                           1544 ;;
                           1545 ;; DESTROYS:
                           1546 ;;  AF, BC, DE, HL
                           1547 ;;
                           1548 ;;------------------------------------------------------------------
                           1549 ;; CYCLES: [ | ]
                           1550 ;;==================================================================
   5D8E                    1551 _sp_player_death:
                           1552 
                           1553 ;; El jugador muere
   5D8E FD E5         [15] 1554     push iy
   5D90 E1            [10] 1555     pop hl
   5D91 DD 21 11 7A   [14] 1556     ld ix, #player_1
   5D95 FD 7E 1E      [19] 1557     ld a, _ep_player_attr(iy)
   5D98 E6 01         [ 7] 1558     and #0b00000001
   5D9A 20 04         [12] 1559     jr nz, pd_is_player_2
   5D9C DD 21 31 7A   [14] 1560         ld ix, #player_2
                           1561 
   5DA0                    1562     pd_is_player_2:
                           1563 
   5DA0 CD 2C 51      [17] 1564     call _mp_init_player
                           1565 
   5DA3 3A C5 79      [13] 1566     ld a, (checkpoint_x)
   5DA6 FD 77 00      [19] 1567     ld _eph_x(iy), a
   5DA9 3A C6 79      [13] 1568     ld a, (checkpoint_y)
   5DAC FD 77 01      [19] 1569     ld _eph_y(iy), a
                           1570 
                           1571 
                           1572     ;INCREMENTAR MUERTES
   5DAF FD 7E 1D      [19] 1573     ld a, _ep_deaths_du(iy)
   5DB2 06 01         [ 7] 1574     ld b, #0x01
   5DB4 80            [ 4] 1575     add b
   5DB5 27            [ 4] 1576     daa
   5DB6 FD 77 1D      [19] 1577     ld _ep_deaths_du(iy), a
   5DB9 30 12         [12] 1578     jr nc, pd_no_death_carry
   5DBB FD 7E 1C      [19] 1579         ld a, _ep_deaths_mc(iy)
   5DBE FE 99         [ 7] 1580         cp #0x99
   5DC0 20 06         [12] 1581         jr nz, pd_no_max_deaths
                           1582 
   5DC2 FD 36 1D 99   [19] 1583             ld _ep_deaths_du(iy), #0x99
   5DC6 18 05         [12] 1584             jr pd_no_death_carry
                           1585 
   5DC8                    1586 pd_no_max_deaths:
                           1587 
   5DC8 80            [ 4] 1588         add b
   5DC9 27            [ 4] 1589         daa
   5DCA FD 77 1C      [19] 1590         ld _ep_deaths_mc(iy), a
                           1591 
   5DCD                    1592 pd_no_death_carry:
                           1593 
   5DCD 3E 00         [ 7] 1594     ld a, #0x00
   5DCF CD F4 62      [17] 1595     call _sr_update_hud_player_data
                           1596 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 62.
Hexadecimal [16-Bits]



   5DD2 FD CB 1E D6   [23] 1597     set 2, _ep_player_attr(iy)
   5DD6 3E 15         [ 7] 1598     ld a, #0x15
   5DD8 FD 77 1F      [19] 1599     ld _ep_anim_counter(iy), a
                           1600 
   5DDB 3A C2 79      [13] 1601     ld a, (tries)
   5DDE FE 04         [ 7] 1602     cp #0x04
   5DE0 C8            [11] 1603     ret z
                           1604 
   5DE1 FE FF         [ 7] 1605     cp #0xFF
   5DE3 20 3B         [12] 1606     jr nz, pd_staying_alive
   5DE5 FD CB 1E E6   [23] 1607         set 4, _ep_player_attr(iy)      ; Quedarse muerto
                           1608 
   5DE9 3A BD 79      [13] 1609         ld a, (mg_game_state)
   5DEC FE 01         [ 7] 1610         cp #GS_SINGLEPLAYER
   5DEE 28 11         [12] 1611         jr z, pd_checkpoint_level
                           1612 
   5DF0 DD CB 1E 66   [20] 1613         bit 4, _ep_player_attr(ix)      ; Si está muerto del todo
   5DF4 20 0B         [12] 1614         jr nz, pd_checkpoint_level
                           1615 
   5DF6 DD CB 1E 6E   [20] 1616             bit 5, _ep_player_attr(ix)
   5DFA C8            [11] 1617             ret z
                           1618 
   5DFB 3E 45         [ 7] 1619             ld a, #0x45
   5DFD 32 C0 79      [13] 1620             ld (transition), a
                           1621 
   5E00 C9            [10] 1622             ret
                           1623 
   5E01                    1624         pd_checkpoint_level:
                           1625 
                           1626         ;; Revivir a los jugadores
   5E01 FD CB 1E A6   [23] 1627         res 4, _ep_player_attr(iy)
   5E05 DD CB 1E A6   [23] 1628         res 4, _ep_player_attr(ix)
                           1629 
                           1630         ;; Volver al último checkpoint
   5E09 3A C7 79      [13] 1631         ld a, (checkpoint_level)
   5E0C 32 BE 79      [13] 1632         ld (actual_level), a
                           1633 
   5E0F                    1634         pd_init_level:
                           1635 
                           1636         ;; Pantalla de transición entre niveles
   5E0F 06 0F         [ 7] 1637         ld b, #0x0F
   5E11 CD F3 60      [17] 1638         call _sr_fill_backbuffer
   5E14 CD E1 60      [17] 1639         call _sr_copy_back_to_front
                           1640 
   5E17 06 F0         [ 7] 1641         ld b, #0xF0
   5E19 CD B0 6B      [17] 1642         call cpct_waitHalts_asm
                           1643 
   5E1C CD 7F 4E      [17] 1644         call _mg_game_init
                           1645         ;jp _mg_game_loop
   5E1F C9            [10] 1646         ret
                           1647 
   5E20                    1648     pd_staying_alive:
                           1649 
                           1650 
   5E20 2A C3 79      [16] 1651     ld hl, (level_score)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 63.
Hexadecimal [16-Bits]



   5E23 AF            [ 4] 1652     xor a
   5E24 7D            [ 4] 1653     ld a, l
   5E25 D6 25         [ 7] 1654     sub #0x25
   5E27 27            [ 4] 1655     daa
   5E28 6F            [ 4] 1656     ld l, a
   5E29 22 C3 79      [16] 1657     ld (level_score), hl
                           1658 
   5E2C 3A C2 79      [13] 1659     ld a, (tries)
   5E2F 3D            [ 4] 1660     dec a
   5E30 32 C2 79      [13] 1661     ld (tries), a
   5E33 F5            [11] 1662     push af
   5E34 CD 68 62      [17] 1663     call _sr_update_hud_skull
   5E37 F1            [10] 1664     pop af
   5E38 C0            [11] 1665     ret nz
                           1666 
   5E39 3E 01         [ 7] 1667     ld a, #0x01
   5E3B 32 C0 79      [13] 1668     ld (transition), a
   5E3E C9            [10] 1669     ret
                           1670 
