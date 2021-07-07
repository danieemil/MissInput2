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
    .include "man/manager_player.h.s"
    .include "sys/system_render.h.s"
    .include "sys/system_physics.h.s"
    .include "sys/system_user.h.s"
    .include "sys/system_ai.h.s"
    .include "sys/system_level.h.s"
    .include "sys/system_interrupt.h.s"

    .globl _level_complete_menu_map_end
    .globl _menu_tileset_end
    .globl _tileset_end

    .globl _mm_pause_menu_init
    .globl _mm_pause_menu_loop
    

;;FUNCIONES

    .globl _mg_game_init
    .globl _mg_game_loop

    .globl mg_p1_keys
    .globl mg_p2_keys

    .globl timer_state
    .globl hours
    .globl minutes
    .globl seconds
    .globl seconds_dc

;;CONSTANTES
