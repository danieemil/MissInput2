ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 .include "sys/system_render.h.s"
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



                              2 
                              3 .globl mg_front_buffer
                              4 .globl mg_back_buffer
                              5 .globl mg_game_state
                              6 
                              7 .globl tries
                              8 
                              9 .globl _sr_draw_entity
                             10 .globl _sr_draw_entity_vector
                             11 .globl _sr_swap_buffers
                             12 .globl _sr_redraw_tiles
                             13 .globl _sr_redraw_tiles_fast
                             14 .globl _sr_redraw_vector
                             15 .globl _sr_decompress_image_on_video_memory
                             16 .globl _sr_manage_player_animations
                             17 .globl _sr_copy_back_to_front
                             18 .globl _sr_fill_backbuffer
                             19 .globl _sr_draw_HUD
                             20 .globl _sr_update_hud_player_data
                             21 .globl _sr_update_hud_skull
                             22 .globl _sr_draw_string
                             23 .globl _sr_draw_submenu_box
                             24 .globl _sr_draw_number_2d
                             25 
                             26 .globl _sr_apply_animation
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



                              2 
                              3 
                              4 .area _DATA
                              5 
   7C61 00                    6 aux_01: .db #0x00
   7C62 00                    7 aux_02: .db #0x00
                              8 
                              9 
                             10 
                             11 .area _CODE
                             12 
                             13 
                             14 
                             15 ;;==================================================================
                             16 ;;                         REDRAW TILES
                             17 ;;------------------------------------------------------------------
                             18 ;; Redibuja la parte del tilemap que está alrededor de la entidad
                             19 ;;------------------------------------------------------------------
                             20 ;;
                             21 ;; INPUT:
                             22 ;;  IY -> entity_drawable_ptr
                             23 ;;
                             24 ;; OUTPUT:
                             25 ;;  NONE
                             26 ;;
                             27 ;; DESTROYS:
                             28 ;;  AF, BC, DE, HL, BC', DE', HL'
                             29 ;;
                             30 ;;------------------------------------------------------------------
                             31 ;; CYCLES: [ | ]
                             32 ;;==================================================================
   5E3F                      33 _sr_redraw_tiles:
   5E3F FD 4E 0D      [19]   34     ld c, _ed_pre_x(iy)
   5E42 FD 46 0E      [19]   35     ld b, _ed_pre_y(iy)
                             36 
   5E45 FD 7E 10      [19]   37     ld a, _ed_ox(iy)
   5E48 81            [ 4]   38     add c
   5E49 4F            [ 4]   39     ld c, a
                             40 
   5E4A FD 7E 11      [19]   41     ld a, _ed_oy(iy)
   5E4D 80            [ 4]   42     add b
   5E4E 47            [ 4]   43     ld b, a
                             44 
   5E4F                      45     rt_moved:
   5E4F FD 6E 0A      [19]   46     ld l, _ed_spr_wi(iy)
   5E52 FD 66 0B      [19]   47     ld h, _ed_spr_he(iy)
   5E55 09            [11]   48     add hl, bc
   5E56 EB            [ 4]   49     ex de, hl
                             50     ;;BC -> Esquina Superior Izquierda en 
                             51     ;;HL -> Esquina Inferior Derecha
                             52 
   5E57 CB 38         [ 8]   53     srl b  
   5E59 CB 38         [ 8]   54     srl b
   5E5B CB 38         [ 8]   55     srl b
                             56 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



   5E5D 05            [ 4]   57     dec b   ;; El tilemap es tres tiles menor que la pantalla, por eso se le resta 3 a la Y
   5E5E 05            [ 4]   58     dec b
                             59 
   5E5F CB 39         [ 8]   60     srl c
   5E61 CB 39         [ 8]   61     srl c
                             62     
                             63 
   5E63 CB 3A         [ 8]   64     srl d
   5E65 CB 3A         [ 8]   65     srl d
   5E67 CB 3A         [ 8]   66     srl d
                             67 
   5E69 15            [ 4]   68     dec d   ;; El tilemap es tres tiles menor que la pantalla, por eso se le resta 3 a la Y
   5E6A 15            [ 4]   69     dec d
                             70 
   5E6B CB 3B         [ 8]   71     srl e
   5E6D CB 3B         [ 8]   72     srl e
                             73 
   5E6F 7A            [ 4]   74     ld a, d
   5E70 90            [ 4]   75     sub b
   5E71 57            [ 4]   76     ld d, a
                             77 
   5E72 7B            [ 4]   78     ld a, e
   5E73 91            [ 4]   79     sub c
   5E74 5F            [ 4]   80     ld e, a 
                             81     
                             82     
                             83     ;BC ->  [Y, X]  Tile que corresponde con la esquina superior izquierda
                             84     ;DE -> [dY, dX] Diferencia en tiles de la esquina superior izquierda con la esquina inferior derecha
                             85     
   5E75 C5            [11]   86     push bc
   5E76 D5            [11]   87     push de
                             88     
   5E77 04            [ 4]   89     inc b   ;; El tilemap es tres tiles menor que la pantalla, por eso se le resta 3 a la Y
   5E78 04            [ 4]   90     inc b
                             91 
   5E79 CB 20         [ 8]   92     sla b   ;;obtenemos la posicion inicial del tile arriba a la izquierda
   5E7B CB 20         [ 8]   93     sla b
   5E7D CB 20         [ 8]   94     sla b
                             95 
                             96 
                             97 
   5E7F CB 21         [ 8]   98     sla c
   5E81 CB 21         [ 8]   99     sla c
                            100 
   5E83 3A BC 79      [13]  101     ld a, (mg_back_buffer) 
   5E86 57            [ 4]  102     ld d, a
   5E87 1E 00         [ 7]  103     ld e, #0x00
   5E89 CD 8B 75      [17]  104     call cpct_getScreenPtr_asm
                            105     ;;HL -> Puntero a memoria de video del tile que corresponde a la esquina superior izquierda de la entity_drawable
                            106     ;ld bc, #TILE_SIZE
                            107     ;ld de, #SCREEN_W
                            108 
   5E8C D9            [ 4]  109     exx
   5E8D D1            [10]  110     pop de
   5E8E C1            [10]  111     pop bc
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



                            112 
   5E8F 78            [ 4]  113     ld a, b
   5E90 06 00         [ 7]  114     ld b, #0x00
                            115 
   5E92 21 00 2A      [10]  116     ld hl, #TILEMAP_START
   5E95 09            [11]  117     add hl, bc
   5E96 01 14 00      [10]  118     ld bc, #TILEMAP_W
                            119 
   5E99 FE 00         [ 7]  120     cp #0x00
   5E9B 28 04         [12]  121     jr z, rt_loop_get_init_point_end
   5E9D                     122 rt_loop_get_init_point:
   5E9D 09            [11]  123         add hl, bc
   5E9E 3D            [ 4]  124         dec a
   5E9F 20 FC         [12]  125         jr nz, rt_loop_get_init_point
                            126 
   5EA1                     127 rt_loop_get_init_point_end:
                            128     ;HL  -> Puntero al tile que corresponde con la esquina superior izquierda
                            129     ;HL' -> Puntero a memoria de video del tile que corresponde a la esquina superior izquierda de la entity_drawable
                            130     ;DE  -> [dY, dX] Diferencia en tiles de la esquina superior izquierda con la esquina inferior derecha
   5EA1 7B            [ 4]  131     ld a, e
   5EA2 3C            [ 4]  132     inc a
   5EA3 32 61 7C      [13]  133     ld (aux_01), a
                            134 
   5EA6 7A            [ 4]  135     ld a, d
   5EA7 3C            [ 4]  136     inc a
                            137 
   5EA8                     138 rt_loop_redraw_tile_rows:
   5EA8 F5            [11]  139         push af
   5EA9 E5            [11]  140         push hl   ;;PUSH HL
   5EAA D9            [ 4]  141         exx
   5EAB E5            [11]  142         push hl   ;;PUSH HL'
   5EAC D9            [ 4]  143         exx
   5EAD 3A 61 7C      [13]  144         ld a, (aux_01)
   5EB0                     145 rt_loop_redraw_tile_cols:
   5EB0 F5            [11]  146             push af
                            147 
   5EB1 7E            [ 7]  148             ld a, (hl)
   5EB2 E5            [11]  149             push hl
                            150 
   5EB3 21 F4 2B      [10]  151             ld hl, #TILESET_START
   5EB6 01 20 00      [10]  152             ld bc, #TILE_SIZE
   5EB9 FE 00         [ 7]  153             cp #0x00
   5EBB 28 04         [12]  154             jr z, rt_loop_retdaw_get_tile_ptr_end
   5EBD                     155 rt_loop_retdaw_get_tile_ptr:
   5EBD 09            [11]  156                 add hl, bc
   5EBE 3D            [ 4]  157                 dec a
   5EBF 20 FC         [12]  158                 jr nz ,rt_loop_retdaw_get_tile_ptr
                            159 
   5EC1                     160 rt_loop_retdaw_get_tile_ptr_end:
                            161             ;HL -> sprite_ptr
   5EC1 D9            [ 4]  162             exx
   5EC2 54            [ 4]  163             ld d, h
   5EC3 5D            [ 4]  164             ld e, l
   5EC4 D5            [11]  165             push de
   5EC5 11 04 00      [10]  166             ld de, #TILE_W
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



   5EC8 19            [11]  167             add hl, de
   5EC9 D9            [ 4]  168             exx
   5ECA D1            [10]  169             pop de
                            170             ;DE -> vmem_ptr
   5ECB CD 0B 6A      [17]  171             call cpct_drawTileZigZagGrayCode4x8_af_asm
                            172         
   5ECE E1            [10]  173             pop hl
   5ECF 23            [ 6]  174             inc hl
                            175 
   5ED0 F1            [10]  176             pop af
   5ED1 3D            [ 4]  177             dec a
   5ED2 20 DC         [12]  178             jr nz, rt_loop_redraw_tile_cols
                            179 
   5ED4 D9            [ 4]  180         exx
   5ED5 E1            [10]  181         pop hl
   5ED6 01 50 00      [10]  182         ld bc, #SCREEN_W
   5ED9 09            [11]  183         add hl, bc
   5EDA D9            [ 4]  184         exx
                            185 
   5EDB E1            [10]  186         pop hl
   5EDC 01 14 00      [10]  187         ld bc, #TILEMAP_W
   5EDF 09            [11]  188         add hl, bc
                            189 
   5EE0 F1            [10]  190         pop af
   5EE1 3D            [ 4]  191         dec a
   5EE2 20 C4         [12]  192         jr nz, rt_loop_redraw_tile_rows
   5EE4 C9            [10]  193     ret
                            194 
                            195 
                            196 ;;==================================================================
                            197 ;;                         REDRAW VECTOR
                            198 ;;------------------------------------------------------------------
                            199 ;; Redibuja la parte del tilemap que está alrededor de cada entidad del vector de entidades
                            200 ;;------------------------------------------------------------------
                            201 ;;
                            202 ;; INPUT:
                            203 ;;  IY -> Inicio del vector de entidades
                            204 ;;  A  -> Número de elementos del vector
                            205 ;;  BC -> Tamaño de cada elemento del vector
                            206 ;;
                            207 ;; OUTPUT:
                            208 ;;  NONE
                            209 ;;
                            210 ;; DESTROYS:
                            211 ;;  AF, BC, DE, HL, BC', DE', HL'
                            212 ;;
                            213 ;;------------------------------------------------------------------
                            214 ;; CYCLES: [ | ]
                            215 ;;==================================================================
   5EE5                     216 _sr_redraw_vector:
                            217 
   5EE5 FE 00         [ 7]  218     cp #0x00
   5EE7 C8            [11]  219     ret z
   5EE8                     220     rv_loop_vector:
                            221     
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



   5EE8 F5            [11]  222         push af
   5EE9 C5            [11]  223         push bc
                            224 
   5EEA CD BC 5F      [17]  225         call _sr_redraw_tiles_fast
   5EED FD 46 00      [19]  226         ld b, _eph_x(iy)                ;;Establecemos la posicion actual a la pasada
   5EF0 FD 70 0D      [19]  227         ld _ed_pre_x(iy), b
   5EF3 FD 46 01      [19]  228         ld b, _eph_y(iy)
   5EF6 FD 70 0E      [19]  229         ld _ed_pre_y(iy), b
   5EF9 FD 46 06      [19]  230         ld b, _eph_offset(iy)
   5EFC FD 70 0F      [19]  231         ld _ed_pre_o(iy), b
                            232 
   5EFF C1            [10]  233         pop bc
   5F00 F1            [10]  234         pop af
   5F01 FD 09         [15]  235         add iy, bc
   5F03 3D            [ 4]  236         dec a
   5F04 20 E2         [12]  237         jr nz, rv_loop_vector
                            238 
   5F06 C9            [10]  239     ret
                            240 
                            241 
                            242 ;;==================================================================
                            243 ;;                         SWAP BUFFERS
                            244 ;;------------------------------------------------------------------
                            245 ;; Intercambia el backbuffer y el frontbuffer, y modifica el CRTC para que apunte al frontbuffer
                            246 ;;------------------------------------------------------------------
                            247 ;;
                            248 ;; INPUT:
                            249 ;;  NONE
                            250 ;;
                            251 ;; OUTPUT:
                            252 ;;  NONE
                            253 ;;
                            254 ;; DESTROYS:
                            255 ;;  AF, BC, HL
                            256 ;;
                            257 ;;------------------------------------------------------------------
                            258 ;; CYCLES: [ | ]
                            259 ;;==================================================================
   5F07                     260 _sr_swap_buffers:
   5F07 2A BB 79      [16]  261     ld hl, (mg_front_buffer)   ;; Inicialmente (80C0)
   5F0A 7D            [ 4]  262     ld a, l                 ;; Carga el front buffer en el back buffer
   5F0B 32 BC 79      [13]  263     ld (mg_back_buffer) , a
   5F0E 7C            [ 4]  264     ld a, h                 ;; Carga el back buffer en el front buffer
   5F0F 32 BB 79      [13]  265     ld (mg_front_buffer), a
                            266 
                            267 
   5F12 CB 3F         [ 8]  268     srl a
   5F14 CB 3F         [ 8]  269     srl a
   5F16 6F            [ 4]  270     ld l, a
                            271 
   5F17 C3 B4 6B      [10]  272     jp cpct_setVideoMemoryPage_asm
                            273 
                            274 
                            275 ;;==================================================================
                            276 ;;                         DRAW ENTITY    -    OPTIMIZARRRR
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



                            277 ;;------------------------------------------------------------------
                            278 ;; Dibuja una entidad a partir de un puntero a la misma.
                            279 ;;------------------------------------------------------------------
                            280 ;;
                            281 ;; INPUT:
                            282 ;;  IY -> Entity_drawable ptr
                            283 ;;
                            284 ;; OUTPUT:
                            285 ;;  NONE
                            286 ;;
                            287 ;; DESTROYS:
                            288 ;;  AF, BC, DE, HL, IX
                            289 ;;
                            290 ;;------------------------------------------------------------------
                            291 ;; CYCLES: [2361 | 12949]
                            292 ;;==================================================================
   5F1A                     293 _sr_draw_entity:
                            294 
   5F1A 3A BC 79      [13]  295     ld a, (mg_back_buffer)
   5F1D 57            [ 4]  296     ld d, a
   5F1E 1E 00         [ 7]  297     ld e, #0x00              ;;[10] Poner en un futuro el inicio del doble buffer
   5F20 FD 46 01      [19]  298     ld b, _eph_y(iy)            ;;[19]
   5F23 FD 7E 11      [19]  299     ld a, _ed_oy(iy)
   5F26 80            [ 4]  300     add b
   5F27 47            [ 4]  301     ld b, a
                            302 
   5F28 FD 4E 00      [19]  303     ld c, _eph_x(iy)            ;;[19] -> [48]
   5F2B FD 7E 10      [19]  304     ld a, _ed_ox(iy)
   5F2E 81            [ 4]  305     add c
   5F2F 4F            [ 4]  306     ld c, a
                            307 
   5F30 FD CB 07 76   [20]  308     bit 6, _eph_attributes(iy)  ;;[20]
   5F34 28 06         [12]  309     jr z, sde_no_add_b          ;;[7 | 12]
   5F36 FD 7E 0B      [19]  310         ld a, _ed_spr_he(iy)    ;;[20]
   5F39 80            [ 4]  311         add b                   ;;[4]
   5F3A 3D            [ 4]  312         dec a                   ;;[4]
   5F3B 47            [ 4]  313         ld b, a                 ;;[4]  -> [27 | 64]
   5F3C                     314 sde_no_add_b:                   
                            315 
   5F3C CD 8B 75      [17]  316     call cpct_getScreenPtr_asm  ;;[277]
   5F3F EB            [ 4]  317     ex de, hl                   ;;[4]  -> [281]
                            318     
                            319     
   5F40 FD 66 09      [19]  320     ld h, _ed_spr_h(iy)         ;;[19]
   5F43 FD 6E 08      [19]  321     ld l, _ed_spr_l(iy)         ;;[19]
   5F46 06 00         [ 7]  322     ld b, #0x00                 ;;[7]
   5F48 FD 4E 0C      [19]  323     ld c, _ed_spr_size(iy)      ;;[19]
   5F4B FD 7E 06      [19]  324     ld a, _eph_offset(iy)       ;;[]
   5F4E FE 00         [ 7]  325     cp #0x00
   5F50 28 04         [12]  326     jr z, sde_offset_continue
   5F52                     327 sde_offset_loop:
   5F52 09            [11]  328         add hl, bc
   5F53 3D            [ 4]  329         dec a
   5F54 20 FC         [12]  330         jr nz, sde_offset_loop
   5F56                     331 sde_offset_continue:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



                            332 
   5F56 FD 4E 0A      [19]  333     ld c, _ed_spr_wi(iy)        ;;[19]
   5F59 FD 46 0B      [19]  334     ld b, _ed_spr_he(iy)        ;;[19] -> [38]
                            335 
   5F5C FD 7E 07      [19]  336     ld a, _eph_attributes(iy)   ;;[19]
   5F5F CB 7F         [ 8]  337     bit 7, a                    ;;[8]
   5F61 20 0F         [12]  338     jr nz, sde_masqued          ;;[7 | 12]  -> [34 | 39]
                            339 
   5F63 E6 40         [ 7]  340     and #0b01000000             ;;[7]
   5F65 CA 6D 6A      [10]  341     jp z, cpct_drawSprite_asm   ;;[2046 | 5418] -> [2053 | 5425] -> [2556 | 5926]
                            342     
   5F68 FD 7E 0A      [19]  343     ld   a, _ed_spr_wi(iy)      ;;[19]
   5F6B FD 46 0B      [19]  344     ld   b, _ed_spr_he(iy)      ;;[19]
   5F6E EB            [ 4]  345     ex de, hl                   ;;[4]
   5F6F C3 E7 6B      [10]  346     jp cpct_drawSpriteVFlip_asm ;;[2234 | 6170] -> [2283 | 6219] -> [2823 | 6715]
                            347 
   5F72                     348 sde_masqued:
                            349 
   5F72 E6 40         [ 7]  350     and #0b01000000                     ;;[7]
   5F74 CA BD 6B      [10]  351     jp z, cpct_drawSpriteMasked_asm     ;;[1858 | 12434] -> [1865 | 12441] -> [2361 | 12949]
                            352     
   5F77 FD 7E 0A      [19]  353     ld   a, _ed_spr_wi(iy)              ;;[19]
   5F7A FD 46 0B      [19]  354     ld   b, _ed_spr_he(iy)              ;;[19]
   5F7D 0E 00         [ 7]  355     ld   c, #0x00                       ;;[7]
   5F7F DD 21 00 00   [14]  356     ld  ix, #0x0000                     ;;[14]
   5F83 DD 09         [15]  357     add ix, bc                          ;;[15]
   5F85 EB            [ 4]  358     ex de, hl                           ;;[4]
   5F86 C3 C3 69      [10]  359     jp cpct_drawSpriteVFlipMasked_asm   ;;[3686 | 12038] -> [3771 | 12123] -> [4316 | 12668]
                            360 
                            361 
                            362 
                            363 ;;==================================================================
                            364 ;;                       DRAW ENTITY VECTOR
                            365 ;;------------------------------------------------------------------
                            366 ;; Dibuja todas las entidades de un vector.
                            367 ;; PD: El contador del vector tiene que estar un byte antes del vector
                            368 ;;------------------------------------------------------------------
                            369 ;;
                            370 ;; INPUT:
                            371 ;;  IY  -> Puntero al principio del vector
                            372 ;;  A   -> Número de elementos del vector
                            373 ;;  BC  -> Tamaño de cada elemento del vector
                            374 ;;
                            375 ;; OUTPUT:
                            376 ;;  NONE
                            377 ;;
                            378 ;; DESTROYS:
                            379 ;;  AF, BC, DE, HL, IX, IY, AF'
                            380 ;;
                            381 ;;------------------------------------------------------------------
                            382 ;; CYCLES: [ | ]
                            383 ;;==================================================================
   5F89                     384 _sr_draw_entity_vector:
                            385 
   5F89 FE 00         [ 7]  386     cp #00
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



   5F8B C8            [11]  387     ret z
   5F8C                     388     dev_vector_loop:
   5F8C 08            [ 4]  389         ex af, af'
   5F8D C5            [11]  390         push bc
                            391 
   5F8E FD 7E 18      [19]  392         ld a, _ee_disabled(iy)
   5F91 FE 00         [ 7]  393         cp #0x00
   5F93 20 1F         [12]  394         jr nz, dev_next_entity
                            395 
                            396             ;Comprobamos animaciones
   5F95 FD 7E 12      [19]  397             ld a, _ed_anim_ind_h(iy) 
   5F98 FE FE         [ 7]  398             cp #0xFE
   5F9A 20 07         [12]  399             jr nz, dev_yes_animation
                            400 
   5F9C FD 7E 13      [19]  401             ld a, _ed_anim_ind_l(iy)
   5F9F FE FE         [ 7]  402             cp #0xFE
   5FA1 28 0C         [12]  403             jr z, dev_no_animation
                            404 
   5FA3                     405     dev_yes_animation:
   5FA3 FD 56 12      [19]  406             ld d, _ed_anim_ind_h(iy)
   5FA6 FD 5E 13      [19]  407             ld e, _ed_anim_ind_l(iy)
   5FA9 21 00 00      [10]  408             ld hl, #0x0000
   5FAC CD 5F 60      [17]  409             call _sr_apply_animation
                            410 
   5FAF                     411     dev_no_animation:
   5FAF CD 1A 5F      [17]  412             call _sr_draw_entity
   5FB2 18 00         [12]  413             jr dev_next_entity
                            414 
   5FB4                     415         dev_next_entity:
   5FB4 C1            [10]  416         pop bc
   5FB5 08            [ 4]  417         ex af, af'
                            418 
   5FB6 FD 09         [15]  419         add iy, bc
   5FB8 3D            [ 4]  420         dec a
   5FB9 20 D1         [12]  421         jr nz, dev_vector_loop
                            422 
   5FBB C9            [10]  423     ret
                            424 
                            425 
                            426 
                            427 ;;==================================================================
                            428 ;;                       REDRAW ENTITY FAST
                            429 ;;------------------------------------------------------------------
                            430 ;; Redibuja el fondo de los sprites con un cuadrado del color de fondo
                            431 ;;------------------------------------------------------------------
                            432 ;;
                            433 ;; INPUT:
                            434 ;;  IY  -> Puntero al entity_drawable
                            435 ;;
                            436 ;; OUTPUT:
                            437 ;;  NONE
                            438 ;;
                            439 ;; DESTROYS:
                            440 ;;  AF, BC, DE, HL
                            441 ;;
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 25.
Hexadecimal [16-Bits]



                            442 ;;------------------------------------------------------------------
                            443 ;; CYCLES: [ | ]
                            444 ;;==================================================================
   5FBC                     445 _sr_redraw_tiles_fast:
                            446 
   5FBC FD 4E 0D      [19]  447     ld c, _ed_pre_x(iy)
   5FBF FD 46 0E      [19]  448     ld b, _ed_pre_y(iy)
                            449 
   5FC2 FD 7E 10      [19]  450     ld a, _ed_ox(iy)
   5FC5 81            [ 4]  451     add c
   5FC6 4F            [ 4]  452     ld c, a
                            453 
   5FC7 FD 7E 11      [19]  454     ld a, _ed_oy(iy)
   5FCA 80            [ 4]  455     add b
   5FCB 47            [ 4]  456     ld b, a
                            457 
   5FCC 3A BC 79      [13]  458     ld a, (mg_back_buffer)
   5FCF 57            [ 4]  459     ld d, a
   5FD0 1E 00         [ 7]  460     ld e, #0x00
   5FD2 CD 8B 75      [17]  461     call cpct_getScreenPtr_asm
                            462 
   5FD5 EB            [ 4]  463     ex de, hl
                            464     
   5FD6 FD 46 0B      [19]  465     ld b, _ed_spr_he(iy)
   5FD9 FD 4E 0A      [19]  466     ld c, _ed_spr_wi(iy)
   5FDC FD 7E 0F      [19]  467     ld a, _ed_pre_o(iy)
   5FDF FE 00         [ 7]  468     cp #0x00
   5FE1 20 01         [12]  469     jr nz, rtf_draw_full_sprite
                            470       
   5FE3 0D            [ 4]  471       dec c
                            472 
   5FE4                     473 rtf_draw_full_sprite:
   5FE4 3E F0         [ 7]  474     ld a, #0xF0
   5FE6 CD B5 74      [17]  475     call cpct_drawSolidBox_asm
                            476 
   5FE9 C9            [10]  477     ret
                            478 
                            479 
                            480 ;;==================================================================
                            481 ;;                       MANAGE PLAYER ANIMATIONS
                            482 ;;------------------------------------------------------------------
                            483 ;; Controla la animacion de la entidad y la cambia de ser necesario
                            484 ;;------------------------------------------------------------------
                            485 ;;
                            486 ;; INPUT:
                            487 ;;  IY  -> Puntero al entity_drawable
                            488 ;;
                            489 ;; OUTPUT:
                            490 ;;  DE  -> Animacion que corresponderia al jugador 
                            491 ;;   A  -> 0 P2 se dibuja normal, 1-> P2 no incrementa al dibujar 
                            492 ;;
                            493 ;; DESTROYS:
                            494 ;;  AF, BC, DE, HL
                            495 ;;
                            496 ;;------------------------------------------------------------------
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
Hexadecimal [16-Bits]



                            497 ;; CYCLES: [ | ]
                            498 ;;==================================================================
   5FEA                     499 _sr_manage_player_animations:
                            500 
   5FEA 11 1E 78      [10]  501     ld de, #anim_player_door
   5FED 3E 01         [ 7]  502     ld a, #0x01
   5FEF FD CB 1E 6E   [20]  503     bit 5, _ep_player_attr(iy)
   5FF3 C0            [11]  504     ret nz
                            505 
   5FF4 11 3A 78      [10]  506     ld de, #anim_player_death
   5FF7 3E 02         [ 7]  507     ld a, #0x02
   5FF9 FD CB 1E 5E   [20]  508     bit 3, _ep_player_attr(iy)
   5FFD C0            [11]  509     ret nz
                            510 
   5FFE 11 66 78      [10]  511     ld de, #anim_player_respawn
   6001 3E 03         [ 7]  512     ld a, #0x03
   6003 FD CB 1E 56   [20]  513     bit 2, _ep_player_attr(iy)
   6007 C0            [11]  514     ret nz
                            515     
                            516 
   6008 FD CB 07 6E   [20]  517     bit 5, _eph_attributes(iy)              ;;Comprobamos Izquierda/Derecha
   600C 20 28         [12]  518     jr nz, ma_right
                            519 
   600E                     520 ma_left:                                    ;;----IZQUIERDA-----------------------------------------
   600E FD CB 07 66   [20]  521         bit 4, _eph_attributes(iy)          ;;Comprobamos si esta en el suelo
   6012 28 11         [12]  522         jr z, ma_left_no_ground
                            523 
   6014 FD 7E 04      [19]  524             ld a, _eph_vx(iy)               ;;Comprobamos si se esta moviendo
   6017 FE 00         [ 7]  525             cp #0x00
   6019 20 05         [12]  526             jr nz, ma_left_ground_movement
                            527 
   601B 11 DC 77      [10]  528                 ld de, #anim_player_idle_L  ;;Cargamos la animacion de suelo sin moverse izquierda
   601E AF            [ 4]  529                 xor a
   601F C9            [10]  530                 ret
                            531 
   6020                     532 ma_left_ground_movement:
   6020 11 0C 78      [10]  533                 ld de, #anim_player_run_L  ;;Cargamos la animacion de suelo corriendo izquierda
   6023 AF            [ 4]  534                 xor a                
   6024 C9            [10]  535                 ret
                            536 
   6025                     537 ma_left_no_ground:
                            538 
   6025 FD 7E 17      [19]  539             ld a, _ep_wall_dir(iy)
   6028 FE 00         [ 7]  540             cp #0x00
   602A 20 05         [12]  541             jr nz, ma_left_no_ground_wall
                            542 
   602C 11 EE 77      [10]  543                 ld de, #anim_player_jump_L
   602F AF            [ 4]  544                 xor a
   6030 C9            [10]  545                 ret
                            546 
   6031                     547 ma_left_no_ground_wall:
                            548 
   6031 11 E2 77      [10]  549                 ld de, #anim_player_wall_L
   6034 AF            [ 4]  550                 xor a                
   6035 C9            [10]  551                 ret
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 27.
Hexadecimal [16-Bits]



                            552 
   6036                     553 ma_right:                                   ;;----DERECHA-------------------------------------------
   6036 FD CB 07 66   [20]  554         bit 4, _eph_attributes(iy)          ;;Comprobamos si esta en el suelo
   603A 28 11         [12]  555         jr z, ma_right_no_ground
                            556 
   603C FD 7E 04      [19]  557             ld a, _eph_vx(iy)               ;;Comprobamos si se esta moviendo
   603F FE 00         [ 7]  558             cp #0x00
   6041 20 05         [12]  559             jr nz, ma_right_ground_movement
                            560 
   6043 11 D6 77      [10]  561                 ld de, #anim_player_idle_R  ;;Cargamos la animacion de suelo sin moverse izquierda
   6046 AF            [ 4]  562                 xor a                
   6047 C9            [10]  563                 ret
                            564 
   6048                     565 ma_right_ground_movement:
                            566 
   6048 11 FA 77      [10]  567                 ld de, #anim_player_run_R  ;;Cargamos la animacion de suelo corriendo izquierda
   604B AF            [ 4]  568                 xor a  
   604C C9            [10]  569                 ret
                            570 
   604D                     571 ma_right_no_ground:
                            572 
   604D FD 7E 17      [19]  573             ld a, _ep_wall_dir(iy)
   6050 FE 00         [ 7]  574             cp #0x00
   6052 20 05         [12]  575             jr nz, ma_right_no_ground_wall
                            576 
   6054 11 F4 77      [10]  577                 ld de, #anim_player_jump_R
   6057 AF            [ 4]  578                 xor a  
   6058 C9            [10]  579                 ret
                            580 
   6059                     581 ma_right_no_ground_wall:
                            582 
   6059 11 E8 77      [10]  583                 ld de, #anim_player_wall_R
   605C AF            [ 4]  584                 xor a  
   605D C9            [10]  585                 ret
                            586 
                            587 
   605E C9            [10]  588     ret
                            589 
                            590 
                            591 ;;==================================================================
                            592 ;;                       APPLY ANIMATIONS
                            593 ;;------------------------------------------------------------------
                            594 ;; Comprueba la animacion actual del jugador y la cambia o la actualiza
                            595 ;;------------------------------------------------------------------
                            596 ;;
                            597 ;; INPUT:
                            598 ;;  IY  -> Puntero al entity_drawable
                            599 ;;  DE  -> Animacion a la que se quiere actualizar
                            600 ;;  HL  -> Offset del puntero Sprite Respecto al puntero de la animacion
                            601 ;;
                            602 ;; OUTPUT:
                            603 ;;  A -> Si ha llegado al final de la animacion (0 NO, 1 Si)
                            604 ;;
                            605 ;; DESTROYS:
                            606 ;;  AF, BC, DE, HL
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 28.
Hexadecimal [16-Bits]



                            607 ;;
                            608 ;;------------------------------------------------------------------
                            609 ;; CYCLES: [ | ]
                            610 ;;==================================================================
   605F                     611 _sr_apply_animation:
                            612 
   605F FD 7E 12      [19]  613     ld a, _ed_anim_ind_h(iy)        ;;Comprobamos si la animacion actual y la que pasan es la misma
   6062 AA            [ 4]  614     xor d
   6063 47            [ 4]  615     ld b, a
   6064 FD 7E 13      [19]  616     ld a, _ed_anim_ind_l(iy)
   6067 AB            [ 4]  617     xor e
   6068 B0            [ 4]  618     or b
   6069 28 12         [12]  619     jr z, aa_continue_animation
                            620 
   606B FD 72 12      [19]  621         ld _ed_anim_ind_h(iy), d
   606E FD 73 13      [19]  622         ld _ed_anim_ind_l(iy), e
   6071 0E FF         [ 7]  623         ld c, #0xFF
   6073 06 00         [ 7]  624         ld b, #0x00
   6075 FD 71 14      [19]  625         ld _ed_anim_pos(iy), c
   6078 FD 70 15      [19]  626         ld _ed_anim_dur(iy), b
   607B 18 06         [12]  627         jr aa_continue_animation_no_load
                            628 
   607D                     629 aa_continue_animation:
                            630 
   607D FD 4E 14      [19]  631     ld c, _ed_anim_pos(iy)
   6080 FD 46 15      [19]  632     ld b, _ed_anim_dur(iy)
                            633 
   6083                     634 aa_continue_animation_no_load:
                            635     ;;DE -> animacion
                            636     ;;C  -> anim_pos
                            637     ;;B  -> anim_dur
                            638 
   6083 78            [ 4]  639     ld a, b
   6084 FE 00         [ 7]  640     cp #0x00
   6086 28 06         [12]  641     jr z, aa_change_animation_sprite 
                            642 
   6088 3D            [ 4]  643         dec a
   6089 FD 77 15      [19]  644         ld _ed_anim_dur(iy), a
   608C AF            [ 4]  645         xor a
   608D C9            [10]  646         ret
                            647 
   608E                     648 aa_change_animation_sprite:
                            649 
   608E 0C            [ 4]  650         inc c
   608F E5            [11]  651         push hl
   6090 C5            [11]  652         push bc
   6091 CB 21         [ 8]  653         sla c
   6093 CB 21         [ 8]  654         sla c
   6095 06 00         [ 7]  655         ld b, #0x00
                            656 
                            657 
   6097 62            [ 4]  658         ld h, d
   6098 6B            [ 4]  659         ld l, e
   6099 09            [11]  660         add hl, bc
   609A C1            [10]  661         pop bc
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 29.
Hexadecimal [16-Bits]



   609B 23            [ 6]  662         inc hl
   609C 7E            [ 7]  663         ld a, (hl)
   609D 2B            [ 6]  664         dec hl
   609E FE FE         [ 7]  665         cp #0xFE
   60A0 28 29         [12]  666         jr z, aa_change_animation_sprite_infinite
   60A2 FE FD         [ 7]  667         cp #0xFD
   60A4 20 08         [12]  668         jr nz, aa_check_end_animation 
                            669 
   60A6 01 EC FF      [10]  670             ld bc, #-20
   60A9 09            [11]  671             add hl, bc
                            672 
   60AA 0E 01         [ 7]  673             ld c, #0x01
                            674 
   60AC 18 07         [12]  675             jr aa_change_animation_sprite_continue
                            676 
   60AE                     677 aa_check_end_animation:
   60AE FE FF         [ 7]  678         cp #0xFF
   60B0 20 03         [12]  679         jr nz, aa_change_animation_sprite_continue
                            680 
   60B2 EB            [ 4]  681             ex de, hl
   60B3 0E 00         [ 7]  682             ld c, #0x00
                            683 
   60B5                     684 aa_change_animation_sprite_continue:
                            685         ;;C  -> Posicion
   60B5 5E            [ 7]  686         ld e, (hl)  ;;DE -> Sprite
   60B6 23            [ 6]  687         inc hl
   60B7 56            [ 7]  688         ld d, (hl)
   60B8 23            [ 6]  689         inc hl
   60B9 46            [ 7]  690         ld b, (hl)  ;;B  -> Duracion 
                            691 
   60BA E1            [10]  692         pop hl
   60BB 19            [11]  693         add hl, de
   60BC EB            [ 4]  694         ex de, hl
                            695 
   60BD FD 73 08      [19]  696         ld _ed_spr_l(iy), e
   60C0 FD 72 09      [19]  697         ld _ed_spr_h(iy), d
   60C3 FD 71 14      [19]  698         ld _ed_anim_pos(iy), c
   60C6 FD 70 15      [19]  699         ld _ed_anim_dur(iy), b
   60C9 AF            [ 4]  700         xor a
                            701 
   60CA C9            [10]  702     ret
                            703 
   60CB                     704 aa_change_animation_sprite_infinite:
   60CB E1            [10]  705     pop hl
   60CC FD 36 15 FF   [19]  706     ld _ed_anim_dur(iy), #0xFF
   60D0 3E 01         [ 7]  707     ld a, #0x01
   60D2 C9            [10]  708     ret
                            709 
                            710 
                            711 
                            712 
                            713 
                            714 
                            715 ;;==================================================================
                            716 ;;                DECOMPRESS IMAGE ON VIDEO MEMORY
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 30.
Hexadecimal [16-Bits]



                            717 ;;------------------------------------------------------------------
                            718 ;; Descomprime una imagen que ocupa toda la pantalla en memoria de
                            719 ;; video
                            720 ;;------------------------------------------------------------------
                            721 ;;
                            722 ;; INPUT:
                            723 ;;  DE  -> Puntero al final de la imagen comprimida
                            724 ;;
                            725 ;; OUTPUT:
                            726 ;;  NONE
                            727 ;;
                            728 ;; DESTROYS:
                            729 ;;  AF, BC, DE, HL
                            730 ;;
                            731 ;;------------------------------------------------------------------
                            732 ;; CYCLES: [ | ]
                            733 ;;==================================================================
   60D3                     734 _sr_decompress_image_on_video_memory:
                            735 
   60D3 3A BB 79      [13]  736     ld a, (#mg_front_buffer)
   60D6 67            [ 4]  737     ld h, a
   60D7 2E 00         [ 7]  738     ld l, #0x00
   60D9 01 FF 3F      [10]  739     ld bc, #0x4000 - 1
   60DC 09            [11]  740     add hl, bc
   60DD EB            [ 4]  741     ex de, hl
   60DE C3 0C 6C      [10]  742     jp cpct_zx7b_decrunch_s_asm
                            743 
                            744 
                            745 
                            746 ;;==================================================================
                            747 ;;                COPY BACKBUFFER TO FRONTBUFFER
                            748 ;;------------------------------------------------------------------
                            749 ;; Copia el backbuffer en el frontbuffer
                            750 ;;------------------------------------------------------------------
                            751 ;;
                            752 ;; INPUT:
                            753 ;;  NONE
                            754 ;;
                            755 ;; OUTPUT:
                            756 ;;  NONE
                            757 ;;
                            758 ;; DESTROYS:
                            759 ;;  AF, BC, DE, HL
                            760 ;;
                            761 ;;------------------------------------------------------------------
                            762 ;; CYCLES: [ | ]
                            763 ;;==================================================================
   60E1                     764 _sr_copy_back_to_front:
   60E1 3A BC 79      [13]  765     ld a, (mg_back_buffer)
   60E4 67            [ 4]  766     ld h, a
   60E5 2E 00         [ 7]  767     ld l, #0x00
   60E7 3A BB 79      [13]  768     ld a, (mg_front_buffer)
   60EA 57            [ 4]  769     ld d, a
   60EB 1E 00         [ 7]  770     ld e, #0x00
   60ED 01 00 40      [10]  771     ld bc, #0x4000
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 31.
Hexadecimal [16-Bits]



   60F0 ED B0         [21]  772     ldir
                            773 
   60F2 C9            [10]  774     ret
                            775 
                            776 
                            777 
                            778 
                            779 ;;==================================================================
                            780 ;;                      FILL BACKBUFFER
                            781 ;;------------------------------------------------------------------
                            782 ;; Copia el backbuffer en el frontbuffer
                            783 ;;------------------------------------------------------------------
                            784 ;;
                            785 ;; INPUT:
                            786 ;;  B -> Color de la pantalla
                            787 ;;
                            788 ;; OUTPUT:
                            789 ;;  NONE
                            790 ;;
                            791 ;; DESTROYS:
                            792 ;;  AF, BC, DE, HL
                            793 ;;
                            794 ;;------------------------------------------------------------------
                            795 ;; CYCLES: [ | ]
                            796 ;;==================================================================
   60F3                     797 _sr_fill_backbuffer:
   60F3 3A BC 79      [13]  798     ld a, (mg_back_buffer)
   60F6 67            [ 4]  799     ld h, a
   60F7 2E 00         [ 7]  800     ld l, #0x00
   60F9 70            [ 7]  801     ld (hl), b
   60FA 54            [ 4]  802     ld d, h
   60FB 5D            [ 4]  803     ld e, l
   60FC 13            [ 6]  804     inc de
   60FD 01 FF 3F      [10]  805     ld bc, #0x4000 - 1
   6100 ED B0         [21]  806     ldir
                            807 
   6102 C9            [10]  808     ret
                            809 
                            810 
                            811 ;;==================================================================
                            812 ;;                           DRAW HUD
                            813 ;;------------------------------------------------------------------
                            814 ;; Dibuja el HUD
                            815 ;;------------------------------------------------------------------
                            816 ;;
                            817 ;; INPUT:
                            818 ;;  NONE
                            819 ;;
                            820 ;; OUTPUT:
                            821 ;;  NONE
                            822 ;;
                            823 ;; DESTROYS:
                            824 ;;  AF, BC, DE, HL
                            825 ;;
                            826 ;;------------------------------------------------------------------
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 32.
Hexadecimal [16-Bits]



                            827 ;; CYCLES: [ | ]
                            828 ;;==================================================================
   6103                     829 _sr_draw_HUD:
                            830 
                            831 ;IZQUIERDA ------------------------------------------------------------
                            832 
                            833     
                            834 
                            835 ;Dibujamos la linea de separacion entre el juego y el HUD    
   6103 3A BC 79      [13]  836     ld a, (mg_back_buffer)
   6106 C6 38         [ 7]  837     add #0x38
   6108 67            [ 4]  838     ld h, a
   6109 06 50         [ 7]  839     ld b, #0x50
   610B 68            [ 4]  840     ld l, b
   610C 3E FF         [ 7]  841     ld a, #0xFF
   610E                     842 dh_draw_hud_line_loop:
                            843 
   610E 77            [ 7]  844         ld (hl), a
   610F 23            [ 6]  845         inc hl
                            846 
   6110 05            [ 4]  847     dec b
   6111 20 FB         [12]  848     jr nz, dh_draw_hud_line_loop
                            849 
                            850 
                            851 ;Dibujamos los iconos de P1 y P2
                            852 
   6113 3A BC 79      [13]  853     ld a, (mg_back_buffer)
   6116 57            [ 4]  854     ld d, a
   6117 1E 00         [ 7]  855     ld e, #0x00
   6119 01 04 0F      [10]  856     ld bc, #0x0F04
   611C 3E FF         [ 7]  857     ld a, #0xFF
                            858     
   611E D5            [11]  859     push de
   611F CD B5 74      [17]  860     call cpct_drawSolidBox_asm      ;Dibujamos el fondo blanco
   6122 D1            [10]  861     pop de
                            862 
   6123 21 01 28      [10]  863     ld hl, #0x2801
   6126 19            [11]  864     add hl, de
   6127 11 E0 37      [10]  865     ld de, #_hud_spr_12
   612A EB            [ 4]  866     ex de, hl
   612B 01 01 05      [10]  867     ld bc, #0x0501
   612E D5            [11]  868     push de
   612F CD 6D 6A      [17]  869     call cpct_drawSprite_asm        ;Icono de P1 1
   6132 D1            [10]  870     pop de
                            871 
   6133 13            [ 6]  872     inc de
   6134 21 E5 37      [10]  873     ld hl, #_hud_spr_13
   6137 01 01 05      [10]  874     ld bc, #0x0501
   613A D5            [11]  875     push de
   613B CD 6D 6A      [17]  876     call cpct_drawSprite_asm        ;Icono de P1 2
   613E D1            [10]  877     pop de
                            878 
   613F 13            [ 6]  879     inc de
   6140 13            [ 6]  880     inc de
   6141 13            [ 6]  881     inc de
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 33.
Hexadecimal [16-Bits]



   6142 21 D6 37      [10]  882     ld hl, #_hud_spr_10
   6145 01 01 05      [10]  883     ld bc, #0x0501
   6148 D5            [11]  884     push de
   6149 CD 6D 6A      [17]  885     call cpct_drawSprite_asm        ;Icono Muertes 1
   614C D1            [10]  886     pop de
                            887 
   614D 13            [ 6]  888     inc de
   614E 21 DB 37      [10]  889     ld hl, #_hud_spr_11
   6151 01 01 05      [10]  890     ld bc, #0x0501
   6154 D5            [11]  891     push de
   6155 CD 6D 6A      [17]  892     call cpct_drawSprite_asm        ;Icono Muertes 2
   6158 D1            [10]  893     pop de
                            894 
   6159 3E 06         [ 7]  895     ld a, #0x06
   615B 83            [ 4]  896     add e
   615C 5F            [ 4]  897     ld e, a
   615D 3E 10         [ 7]  898     ld a, #0x10
   615F 92            [ 4]  899     sub d
   6160 ED 44         [ 8]  900     neg
   6162 57            [ 4]  901     ld d, a
   6163 01 01 09      [10]  902     ld bc, #0x0901
   6166 3E F4         [ 7]  903     ld a, #0xF4
   6168 D5            [11]  904     push de
   6169 CD B5 74      [17]  905     call cpct_drawSolidBox_asm      ;Separacion Muertes/Puntuacion 1
   616C D1            [10]  906     pop de
                            907 
                            908 
   616D 3E 08         [ 7]  909     ld a, #0x08
   616F 83            [ 4]  910     add e
   6170 5F            [ 4]  911     ld e, a
   6171 3E 10         [ 7]  912     ld a, #0x10
   6173 82            [ 4]  913     add d
   6174 57            [ 4]  914     ld d, a
   6175 21 A4 37      [10]  915     ld hl, #_hud_spr_00
   6178 01 01 05      [10]  916     ld bc, #0x0501
   617B D5            [11]  917     push de
   617C CD 6D 6A      [17]  918     call cpct_drawSprite_asm        ;Ultimo digito de puntiacion 1
   617F D1            [10]  919     pop de
                            920 
                            921 
                            922 
   6180 3E 0E         [ 7]  923     ld a,#0x0E
   6182 83            [ 4]  924     add e
   6183 5F            [ 4]  925     ld e, a
   6184 3A BC 79      [13]  926     ld a, (mg_back_buffer)
   6187 57            [ 4]  927     ld d, a
   6188 01 01 0F      [10]  928     ld bc, #0x0F01
   618B 3E F5         [ 7]  929     ld a, #0xF5
   618D D5            [11]  930     push de
   618E CD B5 74      [17]  931     call cpct_drawSolidBox_asm      ;Separacion Puntuacion/Calaveras 1
   6191 D1            [10]  932     pop  de
                            933 
   6192 3E 0B         [ 7]  934     ld a, #0x0B
   6194 83            [ 4]  935     add e
   6195 5F            [ 4]  936     ld e, a
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 34.
Hexadecimal [16-Bits]



   6196 01 01 0F      [10]  937     ld bc, #0x0F01
   6199 3E FA         [ 7]  938     ld a, #0xFA
   619B D5            [11]  939     push de
   619C CD B5 74      [17]  940     call cpct_drawSolidBox_asm      ;Separacion Puntuacion/Calaveras 2
   619F D1            [10]  941     pop  de
                            942 
                            943 
                            944 
   61A0 3E 14         [ 7]  945     ld a, #0x14
   61A2 83            [ 4]  946     add e
   61A3 5F            [ 4]  947     ld e, a
   61A4 3E 28         [ 7]  948     ld a, #0x28
   61A6 82            [ 4]  949     add d
   61A7 57            [ 4]  950     ld d, a
   61A8 21 A4 37      [10]  951     ld hl, #_hud_spr_00
   61AB 01 01 05      [10]  952     ld bc, #0x0501
   61AE D5            [11]  953     push de
   61AF CD 6D 6A      [17]  954     call cpct_drawSprite_asm        ;Ultimo digito de puntiacion 2
   61B2 D1            [10]  955     pop de
                            956 
                            957 
   61B3 13            [ 6]  958     inc de
   61B4 13            [ 6]  959     inc de
   61B5 3E 10         [ 7]  960     ld a, #0x10
   61B7 92            [ 4]  961     sub d
   61B8 ED 44         [ 8]  962     neg
   61BA 57            [ 4]  963     ld d, a
   61BB 01 01 09      [10]  964     ld bc, #0x0901
   61BE 3E F4         [ 7]  965     ld a, #0xF4
   61C0 D5            [11]  966     push de
   61C1 CD B5 74      [17]  967     call cpct_drawSolidBox_asm      ;Separacion Muertes/Puntuacion 2
   61C4 D1            [10]  968     pop  de
                            969 
   61C5 13            [ 6]  970     inc de
   61C6 13            [ 6]  971     inc de
   61C7 3E 10         [ 7]  972     ld a, #0x10
   61C9 82            [ 4]  973     add d
   61CA 57            [ 4]  974     ld d, a
   61CB 21 D6 37      [10]  975     ld hl, #_hud_spr_10
   61CE 01 01 05      [10]  976     ld bc, #0x0501
   61D1 D5            [11]  977     push de
   61D2 CD 6D 6A      [17]  978     call cpct_drawSprite_asm        ;Icono Muertes P2 1
   61D5 D1            [10]  979     pop de
                            980 
   61D6 13            [ 6]  981     inc de
   61D7 21 DB 37      [10]  982     ld hl, #_hud_spr_11
   61DA 01 01 05      [10]  983     ld bc, #0x0501
   61DD D5            [11]  984     push de
   61DE CD 6D 6A      [17]  985     call cpct_drawSprite_asm        ;Icono Muertes P2 2
   61E1 D1            [10]  986     pop de
                            987 
   61E2 3E 06         [ 7]  988     ld a, #0x06
   61E4 83            [ 4]  989     add e
   61E5 5F            [ 4]  990     ld e, a
   61E6 3A BC 79      [13]  991     ld a, (mg_back_buffer)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 35.
Hexadecimal [16-Bits]



   61E9 57            [ 4]  992     ld d, a
   61EA 01 04 0F      [10]  993     ld bc, #0x0F04
   61ED 3E FF         [ 7]  994     ld a, #0xFF
   61EF D5            [11]  995     push de
   61F0 CD B5 74      [17]  996     call cpct_drawSolidBox_asm      ;Dibujamos el fondo blanco 2
   61F3 D1            [10]  997     pop  de
                            998 
   61F4 13            [ 6]  999     inc de
   61F5 3E 28         [ 7] 1000     ld a, #0x28
   61F7 82            [ 4] 1001     add d
   61F8 57            [ 4] 1002     ld d, a
   61F9 21 EA 37      [10] 1003     ld hl, #_hud_spr_14
   61FC 01 01 05      [10] 1004     ld bc, #0x0501
   61FF D5            [11] 1005     push de
   6200 CD 6D 6A      [17] 1006     call cpct_drawSprite_asm        ;Icono P2 1 
   6203 D1            [10] 1007     pop de
                           1008 
   6204 13            [ 6] 1009     inc de
   6205 21 EF 37      [10] 1010     ld hl, #_hud_spr_15
   6208 01 01 05      [10] 1011     ld bc, #0x0501
   620B D5            [11] 1012     push de
   620C CD 6D 6A      [17] 1013     call cpct_drawSprite_asm        ;Icono P2 2
   620F D1            [10] 1014     pop de
                           1015 
                           1016     
                           1017 
   6210 CD 68 62      [17] 1018     call _sr_update_hud_skull 
                           1019 
   6213 FD 21 11 7A   [14] 1020     ld iy, #player_1
   6217 3E 00         [ 7] 1021     ld a, #0x00
   6219 CD F4 62      [17] 1022     call _sr_update_hud_player_data
   621C 3E 01         [ 7] 1023     ld a, #0x01
   621E CD F4 62      [17] 1024     call _sr_update_hud_player_data
                           1025 
   6221 3A BD 79      [13] 1026     ld a, (mg_game_state)
   6224 FE 01         [ 7] 1027     cp #GS_SINGLEPLAYER 
   6226 20 31         [12] 1028     jr nz, dh_draw_p2_data
                           1029 
   6228 3A BB 79      [13] 1030         ld a, (mg_front_buffer)
   622B 21 3B 28      [10] 1031         ld hl, #HUD_SCORE_POS
   622E 11 75 77      [10] 1032         ld de, #em_no_p2_score
   6231 CD 8C 63      [17] 1033         call _sr_draw_string
                           1034 
   6234 3A BC 79      [13] 1035         ld a, (mg_back_buffer)
   6237 21 3B 28      [10] 1036         ld hl, #HUD_SCORE_POS
   623A 11 75 77      [10] 1037         ld de, #em_no_p2_score
   623D CD 8C 63      [17] 1038         call _sr_draw_string
                           1039         
                           1040 
   6240 3A BB 79      [13] 1041         ld a, (mg_front_buffer)
   6243 21 47 28      [10] 1042         ld hl, #HUD_DEATH_POS
   6246 11 7E 77      [10] 1043         ld de, #em_no_p2_deaths
   6249 CD 8C 63      [17] 1044         call _sr_draw_string
                           1045 
   624C 3A BC 79      [13] 1046         ld a, (mg_back_buffer)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 36.
Hexadecimal [16-Bits]



   624F 21 47 28      [10] 1047         ld hl, #HUD_DEATH_POS
   6252 11 7E 77      [10] 1048         ld de, #em_no_p2_deaths
   6255 CD 8C 63      [17] 1049         call _sr_draw_string
                           1050 
   6258 C9            [10] 1051         ret
                           1052 
                           1053 
   6259                    1054 dh_draw_p2_data:
                           1055 
   6259 FD 21 31 7A   [14] 1056     ld iy, #player_2
   625D 3E 00         [ 7] 1057     ld a, #0x00
   625F CD F4 62      [17] 1058     call _sr_update_hud_player_data
   6262 3E 02         [ 7] 1059     ld a, #0x02
   6264 CD F4 62      [17] 1060     call _sr_update_hud_player_data
                           1061 
   6267 C9            [10] 1062     ret
                           1063 
                           1064 
                           1065 ;;==================================================================
                           1066 ;;                       UPDATE HUD SKULL
                           1067 ;;------------------------------------------------------------------
                           1068 ;; Dibuja el HUD
                           1069 ;;------------------------------------------------------------------
                           1070 ;;
                           1071 ;; INPUT:
                           1072 ;;  IY -> player_ptr
                           1073 ;;   A -> Info to update (0 -> muertes, 1 -> puntuacion)
                           1074 ;;
                           1075 ;; OUTPUT:
                           1076 ;;  NONE
                           1077 ;;
                           1078 ;; DESTROYS:
                           1079 ;;  AF, BC, DE, HL, AF'
                           1080 ;;
                           1081 ;;------------------------------------------------------------------
                           1082 ;; CYCLES: [ | ]
                           1083 ;;==================================================================
   6268                    1084 _sr_update_hud_skull:
                           1085 
   6268 3A C2 79      [13] 1086     ld a, (tries)
   626B 11 24 A0      [10] 1087     ld de, #HUD_SKULL_1 
                           1088     ;CALAVERA 1
   626E FE FF         [ 7] 1089     cp #0xFF
   6270 28 09         [12] 1090     jr z, uhs_skull_1_transparent
   6272 FE 04         [ 7] 1091     cp #0x04
   6274 28 05         [12] 1092     jr z, uhs_skull_1_transparent
                           1093 
   6276 21 88 37      [10] 1094         ld hl, #_hud_skull_spr_1
   6279 18 03         [12] 1095         jr uhs_skull_1_draw
                           1096 
   627B                    1097 uhs_skull_1_transparent:
                           1098 
   627B 21 7A 37      [10] 1099         ld hl, #_hud_skull_spr_0
                           1100 
   627E                    1101 uhs_skull_1_draw:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 37.
Hexadecimal [16-Bits]



                           1102 
   627E 01 02 07      [10] 1103     ld bc, #0x0702
   6281 E5            [11] 1104     push hl
   6282 D5            [11] 1105     push de
   6283 CD 6D 6A      [17] 1106     call cpct_drawSprite_asm
   6286 D1            [10] 1107     pop de
   6287 E1            [10] 1108     pop hl
   6288 3E 40         [ 7] 1109     ld a, #0x40
   628A 82            [ 4] 1110     add d
   628B 57            [ 4] 1111     ld d, a
   628C 01 02 07      [10] 1112     ld bc, #0x0702
   628F CD 6D 6A      [17] 1113     call cpct_drawSprite_asm
                           1114 
                           1115 
   6292 3A C2 79      [13] 1116     ld a, (tries)
   6295 11 27 A0      [10] 1117     ld de, #HUD_SKULL_2 
                           1118     ;CALAVERA 2
   6298 FE FF         [ 7] 1119     cp #0xFF
   629A 28 12         [12] 1120     jr z, uhs_skull_2_red
   629C FE 02         [ 7] 1121     cp #0x02
   629E 38 09         [12] 1122     jr c, uhs_skull_2_transparent
   62A0 FE 04         [ 7] 1123     cp #0x04
   62A2 28 05         [12] 1124     jr z, uhs_skull_2_transparent
                           1125 
   62A4 21 88 37      [10] 1126         ld hl, #_hud_skull_spr_1
   62A7 18 08         [12] 1127         jr uhs_skull_2_draw
                           1128 
   62A9                    1129 uhs_skull_2_transparent:
                           1130 
   62A9 21 7A 37      [10] 1131         ld hl, #_hud_skull_spr_0
   62AC 18 03         [12] 1132         jr uhs_skull_2_draw
                           1133 
   62AE                    1134 uhs_skull_2_red:
                           1135 
   62AE 21 96 37      [10] 1136         ld hl, #_hud_skull_spr_2
                           1137 
   62B1                    1138 uhs_skull_2_draw:
                           1139 
   62B1 01 02 07      [10] 1140     ld bc, #0x0702
   62B4 E5            [11] 1141     push hl
   62B5 D5            [11] 1142     push de
   62B6 CD 6D 6A      [17] 1143     call cpct_drawSprite_asm
   62B9 D1            [10] 1144     pop de
   62BA E1            [10] 1145     pop hl
   62BB 3E 40         [ 7] 1146     ld a, #0x40
   62BD 82            [ 4] 1147     add d
   62BE 57            [ 4] 1148     ld d, a
   62BF 01 02 07      [10] 1149     ld bc, #0x0702
   62C2 CD 6D 6A      [17] 1150     call cpct_drawSprite_asm
                           1151 
   62C5 3A C2 79      [13] 1152     ld a, (tries)
   62C8 11 2A A0      [10] 1153     ld de, #HUD_SKULL_3
                           1154     ;CALAVERA 3
   62CB FE FF         [ 7] 1155     cp #0xFF
   62CD 28 0D         [12] 1156     jr z, uhs_skull_3_transparent
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 38.
Hexadecimal [16-Bits]



   62CF FE 04         [ 7] 1157     cp #0x04
   62D1 28 09         [12] 1158     jr z, uhs_skull_3_transparent
   62D3 FE 03         [ 7] 1159     cp #0x03
   62D5 38 05         [12] 1160     jr c, uhs_skull_3_transparent
                           1161 
   62D7 21 88 37      [10] 1162         ld hl, #_hud_skull_spr_1
   62DA 18 03         [12] 1163         jr uhs_skull_3_draw
                           1164 
   62DC                    1165 uhs_skull_3_transparent:
                           1166 
   62DC 21 7A 37      [10] 1167         ld hl, #_hud_skull_spr_0
                           1168 
   62DF                    1169 uhs_skull_3_draw:
                           1170 
   62DF 01 02 07      [10] 1171     ld bc, #0x0702
   62E2 E5            [11] 1172     push hl
   62E3 D5            [11] 1173     push de
   62E4 CD 6D 6A      [17] 1174     call cpct_drawSprite_asm
   62E7 D1            [10] 1175     pop de
   62E8 E1            [10] 1176     pop hl
   62E9 3E 40         [ 7] 1177     ld a, #0x40
   62EB 82            [ 4] 1178     add d
   62EC 57            [ 4] 1179     ld d, a
   62ED 01 02 07      [10] 1180     ld bc, #0x0702
   62F0 CD 6D 6A      [17] 1181     call cpct_drawSprite_asm
                           1182 
                           1183 
                           1184 
   62F3 C9            [10] 1185     ret
                           1186 
                           1187 
                           1188 
                           1189 ;;==================================================================
                           1190 ;;                       UPDATE HUD PLAYER DATA
                           1191 ;;------------------------------------------------------------------
                           1192 ;; Dibuja el HUD
                           1193 ;;------------------------------------------------------------------
                           1194 ;;
                           1195 ;; INPUT:
                           1196 ;;  IY -> player_ptr
                           1197 ;;   A -> Info to update (0 -> muertes, 1 -> puntuacion)
                           1198 ;;
                           1199 ;; OUTPUT:
                           1200 ;;  NONE
                           1201 ;;
                           1202 ;; DESTROYS:
                           1203 ;;  AF, BC, DE, HL, AF'
                           1204 ;;
                           1205 ;;------------------------------------------------------------------
                           1206 ;; CYCLES: [ | ]
                           1207 ;;==================================================================
   62F4                    1208 _sr_update_hud_player_data:
                           1209 
   62F4 08            [ 4] 1210     ex af, af'
   62F5 FD CB 1E 46   [20] 1211     bit 0, _ep_player_attr(iy)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 39.
Hexadecimal [16-Bits]



   62F9 28 08         [12] 1212     jr z, uhpd_player_1_data
                           1213 
   62FB 11 3B A8      [10] 1214         ld de, #HUD_P2_SCORE
   62FE 01 47 A8      [10] 1215         ld bc, #HUD_P2_DEATHS
   6301 18 06         [12] 1216         jr uhpd_player_data_selected
                           1217 
   6303                    1218 uhpd_player_1_data:
                           1219 
   6303 11 0E A8      [10] 1220         ld de, #HUD_P1_SCORE
   6306 01 07 A8      [10] 1221         ld bc, #HUD_P1_DEATHS
                           1222 
   6309                    1223 uhpd_player_data_selected:
                           1224 
   6309 08            [ 4] 1225     ex af, af'
   630A FE 00         [ 7] 1226     cp #0x00
   630C 28 28         [12] 1227     jr z, uhpd_update_deaths
                           1228 
   630E                    1229 uhpd_update_score:
                           1230 
   630E 3E 02         [ 7] 1231     ld a, #0x02
   6310                    1232 uhpd_draw_score_loop:
   6310 08            [ 4] 1233     ex af, af'
   6311 D5            [11] 1234     push de
                           1235 
   6312 FD 7E 19      [19] 1236         ld a, _ep_score_cdm(iy)
   6315 D5            [11] 1237         push de
   6316 CD 56 63      [17] 1238         call _sr_draw_number_2d
   6319 D1            [10] 1239         pop de
                           1240 
   631A 13            [ 6] 1241         inc de
   631B 13            [ 6] 1242         inc de
   631C FD 7E 1A      [19] 1243         ld a, _ep_score_mc(iy)
   631F D5            [11] 1244         push de
   6320 CD 56 63      [17] 1245         call _sr_draw_number_2d
   6323 D1            [10] 1246         pop de
                           1247 
   6324 13            [ 6] 1248         inc de
   6325 13            [ 6] 1249         inc de
   6326 FD 7E 1B      [19] 1250         ld a, _ep_score_du(iy)
   6329 CD 56 63      [17] 1251         call _sr_draw_number_2d
                           1252 
   632C D1            [10] 1253     pop de
   632D 3E 40         [ 7] 1254     ld a, #0x40
   632F 82            [ 4] 1255     add d
   6330 57            [ 4] 1256     ld d, a
                           1257         
   6331 08            [ 4] 1258     ex af, af'
   6332 3D            [ 4] 1259     dec a
   6333 20 DB         [12] 1260     jr nz, uhpd_draw_score_loop
   6335 C9            [10] 1261     ret
                           1262 
   6336                    1263 uhpd_update_deaths:
                           1264 
   6336 50            [ 4] 1265     ld d, b
   6337 59            [ 4] 1266     ld e, c
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 40.
Hexadecimal [16-Bits]



                           1267 
   6338 3E 02         [ 7] 1268     ld a, #0x02
                           1269 
   633A                    1270 uhpd_draw_deaths_loop:
   633A 08            [ 4] 1271     ex af, af'
   633B D5            [11] 1272     push de
                           1273     
   633C FD 7E 1C      [19] 1274         ld a, _ep_deaths_mc(iy)
   633F D5            [11] 1275         push de
   6340 CD 56 63      [17] 1276         call _sr_draw_number_2d
   6343 D1            [10] 1277         pop de
                           1278 
   6344 13            [ 6] 1279         inc de
   6345 13            [ 6] 1280         inc de
   6346 FD 7E 1D      [19] 1281         ld a, _ep_deaths_du(iy)
   6349 CD 56 63      [17] 1282         call _sr_draw_number_2d
                           1283     
   634C D1            [10] 1284     pop de
   634D 3E 40         [ 7] 1285     ld a, #0x40
   634F 82            [ 4] 1286     add d
   6350 57            [ 4] 1287     ld d, a
                           1288 
   6351 08            [ 4] 1289     ex af, af'
   6352 3D            [ 4] 1290     dec a
   6353 20 E5         [12] 1291     jr nz, uhpd_draw_deaths_loop
                           1292     
   6355 C9            [10] 1293     ret
                           1294 
                           1295 ;;==================================================================
                           1296 ;;                        DRAW NUMBER 2D
                           1297 ;;------------------------------------------------------------------
                           1298 ;; Dibuja dos digitos de un numero formateado con BCD
                           1299 ;;------------------------------------------------------------------
                           1300 ;;
                           1301 ;; INPUT:
                           1302 ;;  DE -> Vmem ptr
                           1303 ;;   A -> Numero a dibujar
                           1304 ;;
                           1305 ;; OUTPUT:
                           1306 ;;  NONE
                           1307 ;;
                           1308 ;; DESTROYS:
                           1309 ;;  AF, BC, DE, HL
                           1310 ;;
                           1311 ;;------------------------------------------------------------------
                           1312 ;; CYCLES: [ | ]
                           1313 ;;==================================================================
   6356                    1314 _sr_draw_number_2d:
                           1315 
                           1316     
   6356 F5            [11] 1317     push af
   6357 E6 F0         [ 7] 1318     and #0b11110000
   6359 CB 3F         [ 8] 1319     srl a
   635B CB 3F         [ 8] 1320     srl a
   635D CB 3F         [ 8] 1321     srl a
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 41.
Hexadecimal [16-Bits]



   635F 4F            [ 4] 1322     ld c, a
   6360 06 00         [ 7] 1323     ld b, #0x00
                           1324     ;;C -> Digito Izquierda * 2
   6362 21 84 77      [10] 1325     ld hl, #_hud_number_index
   6365 09            [11] 1326     add hl, bc
   6366 4E            [ 7] 1327     ld c, (hl)
   6367 23            [ 6] 1328     inc hl 
   6368 46            [ 7] 1329     ld b, (hl)
   6369 60            [ 4] 1330     ld h ,b
   636A 69            [ 4] 1331     ld l ,c
   636B 01 01 05      [10] 1332     ld bc, #0x0501
   636E D5            [11] 1333     push de
   636F CD 6D 6A      [17] 1334     call cpct_drawSprite_asm
   6372 D1            [10] 1335     pop de
                           1336 
   6373 13            [ 6] 1337     inc de
   6374 F1            [10] 1338     pop af
   6375 E6 0F         [ 7] 1339     and #0b00001111
   6377 CB 27         [ 8] 1340     sla a
   6379 4F            [ 4] 1341     ld c, a
   637A 06 00         [ 7] 1342     ld b, #0x00
                           1343     ;;C -> Digito Derecha * 2
   637C 21 84 77      [10] 1344     ld hl, #_hud_number_index
   637F 09            [11] 1345     add hl, bc
   6380 4E            [ 7] 1346     ld c, (hl)
   6381 23            [ 6] 1347     inc hl 
   6382 46            [ 7] 1348     ld b, (hl)
   6383 60            [ 4] 1349     ld h ,b
   6384 69            [ 4] 1350     ld l ,c
   6385 01 01 05      [10] 1351     ld bc, #0x0501
   6388 CD 6D 6A      [17] 1352     call cpct_drawSprite_asm
                           1353     
   638B C9            [10] 1354     ret
                           1355 
                           1356 
                           1357 
                           1358 ;;==================================================================
                           1359 ;;                         DRAW STRING
                           1360 ;;------------------------------------------------------------------
                           1361 ;; Redibuja la parte del tilemap que está alrededor de la entidad
                           1362 ;;------------------------------------------------------------------
                           1363 ;;
                           1364 ;; INPUT:
                           1365 ;;   A -> Buffer donde dibujar
                           1366 ;;  HL -> Posicion relativa al Buffer
                           1367 ;;  DE -> Puntero al sprite
                           1368 ;;
                           1369 ;; OUTPUT:
                           1370 ;;  NONE
                           1371 ;;
                           1372 ;; DESTROYS:
                           1373 ;;  AF, BC, DE, HL, BC', DE', HL'
                           1374 ;;
                           1375 ;;------------------------------------------------------------------
                           1376 ;; CYCLES: [ | ]
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 42.
Hexadecimal [16-Bits]



                           1377 ;;==================================================================
   638C                    1378 _sr_draw_string:
                           1379 
   638C 47            [ 4] 1380     ld b, a
   638D 0E 00         [ 7] 1381     ld c, #0x00
   638F 09            [11] 1382     add hl, bc
   6390 EB            [ 4] 1383     ex de, hl
                           1384 
   6391                    1385 _sr_draw_string_loop:
   6391 7E            [ 7] 1386     ld a, (hl)
   6392 FE 2F         [ 7] 1387     cp #END_STRING
   6394 C8            [11] 1388     ret z
                           1389     
   6395 E5            [11] 1390     push hl
   6396 FE 3D         [ 7] 1391     cp #START_CHARACTERS
   6398 38 07         [12] 1392     jr c, ds_draw_number
   639A                    1393 ds_draw_character:
                           1394 
   639A D6 3D         [ 7] 1395         sub #START_CHARACTERS
   639C 21 98 77      [10] 1396         ld hl, #_hud_letter_index 
   639F 18 05         [12] 1397         jr ds_continue_draw
                           1398 
   63A1                    1399 ds_draw_number:
                           1400 
   63A1 D6 30         [ 7] 1401         sub #START_NUMBERS
   63A3 21 84 77      [10] 1402         ld hl, #_hud_number_index
                           1403 
   63A6                    1404 ds_continue_draw:
                           1405 
   63A6 CB 27         [ 8] 1406     sla a
   63A8 06 00         [ 7] 1407     ld b, #0x00
   63AA 4F            [ 4] 1408     ld c, a
   63AB 09            [11] 1409     add hl, bc
   63AC 4E            [ 7] 1410     ld c, (hl)
   63AD 23            [ 6] 1411     inc hl
   63AE 46            [ 7] 1412     ld b, (hl)
   63AF 60            [ 4] 1413     ld h, b
   63B0 69            [ 4] 1414     ld l, c
                           1415 
   63B1 01 01 05      [10] 1416     ld bc, #0x0501
                           1417 
                           1418     ;HL -> Puntero al sprite
                           1419     ;DE -> Puntero a Vmem
                           1420     ;BC -> Tamano del sprite
                           1421 
   63B4 D5            [11] 1422     push de
   63B5 CD 6D 6A      [17] 1423     call cpct_drawSprite_asm
   63B8 D1            [10] 1424     pop de
   63B9 13            [ 6] 1425     inc de
                           1426 
   63BA E1            [10] 1427     pop hl
   63BB 23            [ 6] 1428     inc hl
   63BC 18 D3         [12] 1429     jr _sr_draw_string_loop
                           1430 
                           1431 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 43.
Hexadecimal [16-Bits]



                           1432 
                           1433 ;;==================================================================
                           1434 ;;                         DRAW SUBMENU BOX
                           1435 ;;------------------------------------------------------------------
                           1436 ;; Redibuja la parte del tilemap que está alrededor de la entidad
                           1437 ;;------------------------------------------------------------------
                           1438 ;;
                           1439 ;; INPUT:
                           1440 ;;  A  -> Buffer donde se va a dibujar
                           1441 ;;
                           1442 ;; OUTPUT:
                           1443 ;;  NONE
                           1444 ;;
                           1445 ;; DESTROYS:
                           1446 ;;  AF, BC, DE, HL, BC', DE', HL'
                           1447 ;;
                           1448 ;;------------------------------------------------------------------
                           1449 ;; CYCLES: [ | ]
                           1450 ;;==================================================================
   63BE                    1451 _sr_draw_submenu_box:
                           1452 
   63BE 47            [ 4] 1453     ld b, a
   63BF 0E 00         [ 7] 1454     ld c, #0x00
                           1455 
   63C1 C5            [11] 1456     push bc
                           1457 
   63C2 21 20 03      [10] 1458     ld hl, #SUBMENU_BOX_1_POS
   63C5 09            [11] 1459     add hl, bc
   63C6 EB            [ 4] 1460     ex de, hl
   63C7 01 40 28      [10] 1461     ld bc, #0x2840
   63CA 3E F0         [ 7] 1462     ld a, #0xF0
   63CC CD B5 74      [17] 1463     call cpct_drawSolidBox_asm
                           1464 
   63CF C1            [10] 1465     pop bc
   63D0 C5            [11] 1466     push bc
                           1467 
   63D1 21 60 03      [10] 1468     ld hl, #SUBMENU_BOX_2_POS
   63D4 09            [11] 1469     add hl, bc
   63D5 EB            [ 4] 1470     ex de, hl
   63D6 01 10 28      [10] 1471     ld bc, #0x2810
   63D9 3E F0         [ 7] 1472     ld a, #0xF0
   63DB CD B5 74      [17] 1473     call cpct_drawSolidBox_asm
                           1474 
   63DE C1            [10] 1475     pop bc
                           1476 
   63DF 21 20 1B      [10] 1477     ld hl, #SUBMENU_BOX_LINE_TOP
   63E2 09            [11] 1478     add hl, bc
   63E3 EB            [ 4] 1479     ex de, hl
                           1480 
   63E4 21 60 24      [10] 1481     ld hl, #SUBMENU_BOX_LINE_BOTTOM
   63E7 09            [11] 1482     add hl, bc
                           1483 
   63E8 0E 50         [ 7] 1484     ld c, #0x50
   63EA                    1485 dsb_draw_lines_loop:
                           1486 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 44.
Hexadecimal [16-Bits]



   63EA 3E FF         [ 7] 1487         ld a, #0xFF
   63EC 77            [ 7] 1488         ld (hl), a
   63ED 12            [ 7] 1489         ld (de), a
                           1490 
   63EE 13            [ 6] 1491         inc de
   63EF 23            [ 6] 1492         inc hl
                           1493 
   63F0 0D            [ 4] 1494         dec c
   63F1 20 F7         [12] 1495         jr nz, dsb_draw_lines_loop
                           1496 
   63F3 C9            [10] 1497     ret
                           1498 
                           1499 
