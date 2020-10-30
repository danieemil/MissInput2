;;DEPENDENCIAS
.include "main.h.s"

.globl _sr_update_hud_player_data

.globl actual_level

.globl checkpoint_level

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




;;FUNCIONES
.globl _su_get_key_input
.globl _su_add_score
.globl _su_get_menu_key_input
.globl _su_reset_data
.globl _su_get_key_pressed
.globl _su_set_player_keys

;;CONSTANTES