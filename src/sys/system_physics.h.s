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

.include "main.h.s"
.include "sys/system_user.h.s"

.globl _sr_copy_back_to_front
.globl _sr_fill_backbuffer

.globl _sp_move_entity_x
.globl _sp_move_entity_y
.globl _sy_manage_player_physics
.globl _sp_manage_enemy_physics
.globl _sp_player_death

.globl _sr_update_hud_player_data
.globl _sr_update_hud_skull
.globl _sr_draw_entity

.globl mg_game_state
.globl jump_table
.globl enemy_jump_table
.globl actual_level
.globl checkpoint_x
.globl checkpoint_y
.globl checkpoint_level
.globl level_score
.globl playing_music
.globl timer_state

.globl _mp_init_player

.globl _mg_game_init
.globl _mg_game_loop

.globl tries
.globl transition

.globl god_mode


;; CONSTANTS
PLAYER_VEL_X = 2
