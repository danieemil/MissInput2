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

;;DEPENDENCIAS
.include "main.h.s"

.globl _sr_update_hud_player_data

.globl actual_level
.globl mg_front_buffer

.globl _sr_draw_string

.globl checkpoint_level

.globl playing_music
.globl music_muted
.globl mute_key_state

.globl timer_state
.globl seconds_dc
.globl seconds
.globl minutes

.globl p1_key_gameplay
.globl p2_key_gameplay

.globl p1_key_r
.globl p1_key_l
.globl p1_key_j
.globl p2_key_r
.globl p2_key_l
.globl p2_key_j

.globl Key_1
.globl Key_2
.globl Key_3
.globl Key_4
.globl Key_5
.globl Key_6
.globl Key_7
.globl Key_8
.globl Key_9

.globl Key_Space    ;; Seleccionar la opción por defecto
.globl Key_Esc      ;; Volver al menú anterior
.globl Key_M        ;; Mutear/Desmutear música Y EFECTOS DE SONIDO




;;FUNCIONES
.globl _su_get_key_input
.globl _su_add_score
.globl _su_get_menu_key_input
.globl _su_reset_data
.globl _su_get_key_pressed
.globl _su_set_player_keys

;;CONSTANTES
