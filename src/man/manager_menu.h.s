;;DEPENDENCIAS
    .include "man/manager_game.h.s"

    .globl _main_menu_screen_end

    .globl _sr_swap_buffers
    .globl _sr_copy_back_to_front
    .globl _sr_fill_backbuffer
    .globl _sr_decompress_image_on_video_memory

    .globl _su_reset_data
    .globl _su_set_player_keys

    .globl mg_p1_keys
    .globl mg_p2_keys

    .globl god_mode

;;FUNCIONES
.globl _mm_main_menu_init
.globl _mm_main_menu_loop

.globl _mm_pause_menu_init
.globl _mm_pause_menu_loop

;;CONSTANTES