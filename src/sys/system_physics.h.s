.include "main.h.s"
.include "sys/system_user.h.s"

.globl _sr_copy_back_to_front
.globl _sr_fill_backbuffer

.globl _sp_move_entity_x
.globl _sp_move_entity_y
.globl _sy_manage_player_physics
.globl _sp_manage_enemy_physics

.globl _sr_update_hud_player_data
.globl _sr_update_hud_skull

.globl mg_game_state
.globl jump_table
.globl actual_level
.globl checkpoint_x
.globl checkpoint_y
.globl checkpoint_level
.globl level_score

.globl _mp_init_player

.globl _mg_game_init
.globl _mg_game_loop

.globl tries
.globl transition

.globl god_mode