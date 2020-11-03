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
    .include "man/manager_game.h.s"

    ;.globl _main_menu_screen_end
    .globl _main_menu_map_end
    .globl _options_menu_map_end
    .globl _end_menu_map_end
    .globl _menu_tileset_end

    .globl _sr_swap_buffers
    .globl _sr_copy_back_to_front
    .globl _sr_fill_backbuffer
    .globl _sr_decompress_image_on_video_memory
    .globl _sr_draw_string
    .globl _sr_draw_number_2d

    .globl _su_reset_data
    .globl _su_set_player_keys

    .globl mg_p1_keys
    .globl mg_p2_keys
    .globl mg_front_buffer
    .globl _sr_draw_submenu_box

    .globl mg_front_buffer
    .globl mg_back_buffer

    .globl god_mode

    .globl palette
    
    .globl seconds
    .globl minutes
    .globl hours
    

;;FUNCIONES
.globl _mm_main_menu_init
.globl _mm_main_menu_loop

.globl _mm_pause_menu_init
.globl _mm_pause_menu_loop

.globl _mm_congrats_menu_init
.globl _mm_congrats_menu_loop

;;CONSTANTES
