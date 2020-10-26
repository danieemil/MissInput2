;;DEPENDENCIAS
    .include "man/manager_player.h.s"
    .include "sys/system_render.h.s"
    .include "sys/system_physics.h.s"
    .include "sys/system_user.h.s"
    .include "sys/system_ai.h.s"
    .include "sys/system_level.h.s"
    .include "sys/system_interrupt.h.s"

    .globl _mm_pause_menu_init
    .globl _mm_pause_menu_loop
    

;;FUNCIONES

    .globl _mg_game_init
    .globl _mg_game_loop

    .globl timer_state
    .globl minutes
    .globl seconds
    .globl seconds_dc

;;CONSTANTES
