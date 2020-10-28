.include "main.h.s"
.include "sys/system_user.h.s"


.globl _sp_move_entity_x
.globl _sp_move_entity_y
.globl _sy_manage_player_physics
.globl _sp_manage_enemy_physics


.globl mg_game_state
.globl jump_table
.globl actual_level
.globl checkpoint_x
.globl checkpoint_y
.globl checkpoint_level

.globl _mp_init_player

.globl _mg_game_init
.globl _mg_game_loop

.globl tries