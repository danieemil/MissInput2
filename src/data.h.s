;;MAPS
.include "bins/map_00.h.s"

.globl level_index


;HUD COSAS
;                         ptr
HUD_P1_DEATHS   = 0xA807
HUD_P2_DEATHS   = 0xA847

HUD_P1_SCORE    = 0xA80E
HUD_P2_SCORE    = 0xA83B

HUD_SKULL_1     = 0xA024
HUD_SKULL_2     = 0xA027
HUD_SKULL_3     = 0xA02A



NUM_LEVELS = 2

;;SPRITES
.globl _checkpoint_top_spr_0
.globl _checkpoint_top_spr_1
.globl _collectable_spr_0
.globl _collectable_spr_1
.globl _tileset_spr_00

.globl _player_spr_00
.globl _player_spr_01
.globl _player_spr_04
.globl _player_spr_05
.globl _player_spr_08
.globl _player_spr_09
.globl _player_spr_12
.globl _player_spr_13
.globl _player_spr_14
.globl _player_spr_15

.globl _player_2_spr_00

.globl _enemy_spr_00
.globl _enemy_spr_04
.globl _enemy_spr_08
.globl _enemy_spr_12
.globl _enemy_spr_16
.globl _enemy_spr_20

.globl _door_spr_0
.globl _door_spr_1
.globl _door_spr_2
.globl _door_spr_3
.globl _door_spr_4

.globl _hud_spr_15
.globl _hud_spr_14
.globl _hud_spr_13
.globl _hud_spr_12
.globl _hud_spr_11
.globl _hud_spr_10
.globl _hud_spr_09
.globl _hud_spr_08
.globl _hud_spr_07
.globl _hud_spr_06
.globl _hud_spr_05
.globl _hud_spr_04
.globl _hud_spr_03
.globl _hud_spr_02
.globl _hud_spr_01
.globl _hud_spr_00

.globl _hud_skull_spr_2
.globl _hud_skull_spr_1
.globl _hud_skull_spr_0

.globl _letter_spr_27
.globl _letter_spr_26
.globl _letter_spr_25
.globl _letter_spr_24
.globl _letter_spr_23
.globl _letter_spr_22
.globl _letter_spr_21
.globl _letter_spr_20
.globl _letter_spr_19
.globl _letter_spr_18
.globl _letter_spr_17
.globl _letter_spr_16
.globl _letter_spr_15
.globl _letter_spr_14
.globl _letter_spr_13
.globl _letter_spr_12
.globl _letter_spr_11
.globl _letter_spr_10
.globl _letter_spr_09
.globl _letter_spr_08
.globl _letter_spr_07
.globl _letter_spr_06
.globl _letter_spr_05
.globl _letter_spr_04
.globl _letter_spr_03
.globl _letter_spr_02
.globl _letter_spr_01
.globl _letter_spr_00

.globl _hud_number_index
.globl _hud_letter_index

;;TEXTOS
.globl mm_singleplayer
.globl mm_multiplayer
.globl mm_options

.globl om_controlls
.globl om_p1controlls
.globl om_p2controlls
.globl om_accessibility
.globl om_godmode
.globl om_palette
.globl om_restore
.globl om_back

.globl pm_pause
.globl pm_return
.globl pm_mainmenu


;;                       Y        X
MM_SINGLEPLAYER_POS = 0x0C10 + 0x0020
MM_MULTIPLAYER_POS  = 0x0CB0 + 0x0020
MM_OPTIONS_POS      = 0x0D50 + 0x0020

;;                          Y        X
OM_CONTROLLS            = 0x0AD0 + 0x0018
OM_P1CONTROLLS_POS      = 0x0B70 + 0x0014
OM_P2CONTROLLS_POS      = 0x0C10 + 0x0014
OM_ACCESSIBILITY_POS    = 0x0AD0 + 0x002E
OM_GODMODE_POS          = 0x0B70 + 0x002C
OM_PALETTE_POS          = 0x0C10 + 0x002C
OM_RESTORE_POS          = 0x0D50 + 0x0020
OM_BACK_POS             = 0x0E90 + 0x0024

;;                   Y        X
PM_PAUSE_POS    = 0x0B70 + 0x0026
PM_RETURN_POS   = 0x0C10 + 0x001C
PM_MAINMENU_POS = 0x0C10 + 0x002D


SUBMENU_BOX_1_POS       = 0x0320
SUBMENU_BOX_2_POS       = 0x0320 + 0x0040
SUBMENU_BOX_LINE_TOP    = 0x1B20
SUBMENU_BOX_LINE_BOTTOM = 0x2460


;;STRING CONSTS
END_STRING = 47
START_CHARACTERS = 64
START_NUMBERS = 48



;;SPRITE SIZE
SPR_PLAYER_SIZE = 2 * 3 * 8
SPR_CHECKPOINT_SIZE = 1 * 4
SPR_COLLECTABLE_SIZE = 2 * 8
SPR_DOOR_SIZE = 2 * 11




;PLAYER ANIMATIONS
.globl anim_player_idle_R
.globl anim_player_idle_L
.globl anim_player_run_R
.globl anim_player_run_L
.globl anim_player_wall_R
.globl anim_player_wall_L
.globl anim_player_jump_R
.globl anim_player_jump_L
.globl anim_player_door


;ENEMY ANIMATIONS
.globl anim_enemy_R
.globl anim_enemy_L
.globl anim_enemy_S


;INTERACTABLE ANIMATIONS
.globl anim_interactable_door