

    ;;==================================================================
;;
;;    Miss Input 2 is a videogame made for Amstrad CPC 464 in 2020 particulary for the CPCRetroDev contest.
;;    Copyright (C) 2020 Daniel Saura Martínez and Enrique Vidal cayuela 
;;
;;    This program is free software: you can redistribute it and/or modify
;;    it under the terms of the GNU General Public License as published by
;;    the Free Software Foundation, either version 3 of the License, or
;;    (at your option) any later version.
;;
;;    This program is distributed in the hope that it will be useful,
;;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;    GNU General Public License for more details.
;;
;;    You should have received a copy of the GNU General Public License
;;    along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;==================================================================

;;MAPS
.include "bins/map_00.h.s"

.globl level_index

.globl palette_index


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
.globl _player_spr_16
.globl _player_spr_17

.globl _player_2_spr_00
.globl _player_2_spr_13
.globl _player_2_spr_14
.globl _player_2_spr_15
.globl _player_2_spr_16
.globl _player_2_spr_17 

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

.globl _offon_spr_2
.globl _offon_spr_1
.globl _offon_spr_0

.globl _dospuntos_spr

.globl _double_jump_spr_0
.globl _double_jump_spr_1
.globl _double_jump_spr_2
.globl _double_jump_spr_3
.globl _double_jump_spr_4

.globl _gravity_spr_13
.globl _gravity_spr_12
.globl _gravity_spr_11
.globl _gravity_spr_10
.globl _gravity_spr_09
.globl _gravity_spr_08
.globl _gravity_spr_07
.globl _gravity_spr_06
.globl _gravity_spr_05
.globl _gravity_spr_04
.globl _gravity_spr_03
.globl _gravity_spr_02
.globl _gravity_spr_01
.globl _gravity_spr_00

.globl _colectable_spr_3
.globl _colectable_spr_2
.globl _colectable_spr_1
.globl _colectable_spr_0
.globl _colectable_void_spr

.globl _hud_number_index
.globl _hud_letter_index

;;TEXTOS
.globl mm_singleplayer
.globl mm_multiplayer
.globl mm_options

.globl om_controls
.globl om_p1controls
.globl om_p2controls
.globl om_accessibility
.globl om_godmode
.globl om_palette
.globl om_restore
.globl om_back
.globl om_changecontrols
.globl om_rightkey
.globl om_leftkey
.globl om_jumpkey
.globl om_off
.globl om_on

.globl pm_pause
.globl pm_return
.globl pm_mainmenu

.globl em_completed
.globl em_score
.globl em_deaths
.globl em_p1
.globl em_p2
.globl em_time
.globl em_key
.globl em_no_p2_score
.globl em_no_p2_deaths


;;                       Y        X
MM_SINGLEPLAYER_POS = 0x0C10 + 0x0020
MM_MULTIPLAYER_POS  = 0x0CB0 + 0x0020
MM_OPTIONS_POS      = 0x0D50 + 0x0020

;;                          Y        X
OM_CONTROLS_POS        = 0x0AD0 + 0x0018
OM_P1CONTROLS_POS      = 0x0B70 + 0x0014
OM_P2CONTROLS_POS      = 0x0C10 + 0x0014
OM_ACCESSIBILITY_POS    = 0x0AD0 + 0x002E - 1
OM_GODMODE_POS          = 0x0B70 + 0x002C
OM_PALETTE_POS          = 0x0C10 + 0x002C
OM_RESTORE_POS          = 0x0D50 + 0x0020
OM_BACK_POS             = 0x0E90 + 0x0024
OM_OFF_POS              = 0x0B70 + 0x002C + 13
OM_ON_POS               = 0x0B70 + 0x002C + 13

OM_CHANGECONTROLS_POS   = 0x0B70 + 0x0026 - 13
OM_RIGHTKEY_POS         = 0x0C10 + 0x002D - 9
OM_LEFTKEY_POS          = 0x0C10 + 0x002D - 9
OM_JUMPKEY_POS          = 0x0C10 + 0x002D - 9

;;                   Y        X
PM_PAUSE_POS    = 0x0B70 + 0x0026 - 2
PM_RETURN_POS   = 0x0C10 + 0x001C - 1
PM_MAINMENU_POS = 0x0C10 + 0x002D


EM_COMPLETED    = 0x1280 + 24
EM_SCORE        = 0x13C0 + 33
EM_DEATHS       = 0x13C0 + 42
EM_P1           = 0x1460 + 28
EM_P2           = 0x1500 + 28
EM_TIME         = 0x15F0 + 34
EM_CONTINUE     = 0x1730 + 27

EM_P1_SCORE_DCM = 0x1460 + 32
EM_P1_SCORE_MC  = EM_P1_SCORE_DCM + 2
EM_P1_SCORE_DU  = EM_P1_SCORE_MC + 2

EM_P1_DEATHS_MC = 0x1460 + 43
EM_P1_DEATHS_DU = EM_P1_DEATHS_MC + 2

EM_P2_SCORE_DCM = 0x1500 + 32
EM_P2_SCORE_MC  = EM_P2_SCORE_DCM + 2
EM_P2_SCORE_DU  = EM_P2_SCORE_MC + 2

EM_P2_DEATHS_MC    = 0x1500 + 43
EM_P2_DEATHS_DU = EM_P2_DEATHS_MC + 2

EM_TOTAL_TIME   = 0x1640 + 36


SUBMENU_BOX_1_POS       = 0x0320
SUBMENU_BOX_2_POS       = 0x0320 + 0x0040
SUBMENU_BOX_LINE_TOP    = 0x1B20
SUBMENU_BOX_LINE_BOTTOM = 0x2460


HUD_SCORE_POS = 0x2800 + 59
HUD_DEATH_POS = 0x2800 + 71


;;STRING CONSTS
END_STRING = 47
START_CHARACTERS = 61
START_NUMBERS = 48



;;SPRITE SIZE
SPR_PLAYER_SIZE = 2 * 3 * 8
SPR_CHECKPOINT_SIZE = 1 * 4
SPR_COLLECTABLE_SIZE = 2 * 13
SPR_DOOR_SIZE = 2 * 11
SPR_DJUMP_SIZE = 4 * 6
SPR_GPUP_SIZE = 2 * 8





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
.globl anim_player_2_door
.globl anim_player_death
.globl anim_player_2_death
.globl anim_player_respawn
.globl anim_player_2_respawn


;ENEMY ANIMATIONS
.globl anim_enemy_R
.globl anim_enemy_L
.globl anim_enemy_S


;INTERACTABLE ANIMATIONS
.globl anim_interactable_door
.globl anim_interactable_gravity_up_power_up
.globl anim_interactable_gravity_down_power_up
.globl anim_interactable_djump_power_up
.globl anim_interactable_djump_active_power_up
.globl anim_interactable_colectable
