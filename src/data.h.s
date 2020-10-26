;;SPRITES
.globl _checkpoint_top_spr_0
.globl _checkpoint_top_spr_1
.globl _collectable_spr_0
.globl _collectable_spr_1
.globl _tileset_spr_00

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

.globl _player_2_spr_00

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


;;SPRITE SIZE
SPR_PLAYER_SIZE = 2 * 3 * 8
SPR_CHECKPOINT_SIZE = 1 * 4
SPR_COLLECTABLE_SIZE = 2 * 8
SPR_DOOR_SIZE = 2 * 11




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


;ENEMY ANIMATIONS
.globl anim_enemy_R
.globl anim_enemy_L
.globl anim_enemy_S