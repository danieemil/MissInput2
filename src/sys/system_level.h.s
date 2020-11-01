;;DEPENDENCIAS
.include "main.h.s"

.globl checkpoint_x
.globl checkpoint_y
.globl checkpoint_level
.globl door_id
.globl collectable_id
.globl mi_num_interactable
.globl level_score
.globl transition
.globl actual_level
.globl actual_level_attr
.globl tries

.globl mg_game_state

.globl _me_init_vector
.globl _me_add_enemy

.globl _mi_init_vector
.globl _mi_add_interactable
.globl _mi_search_vector

.globl _mp_init_players

.globl _sr_apply_animation
.globl _sr_draw_HUD
.globl _sr_fill_backbuffer
.globl _sr_update_hud_skull

.globl _su_add_score

.globl _mm_congrats_menu_init
.globl _mm_congrats_menu_loop

;;FUNCIONES
.globl _sl_generate_level
.globl _sl_manage_end_level
.globl _sl_transition_level

;;CONSTANTES

;; ENEMY CONSTS
SAW_RIGHT       = 80
SAW_RIGHT_DOWN  = 81
SAW_DOWN        = 82
SAW_LEFT_DOWN   = 83
SAW_LEFT        = 84
SAW_LEFT_UP     = 85
SAW_UP          = 86
SAW_RIGHT_UP    = 87

ROCK_LEFT       = 88
ROCK_RIGHT      = 89

TURTLE_LEFT     = 90
TURTLE_RIGHT    = 91

;;INTERACTABLE CONSTS
ID_CHECKPOINT       = 92
ID_DOOR             = 93
ID_DOUBLE_JUMP_L    = 94
ID_DOUBLE_JUMP_R    = 95
ID_GRAVITY_UP_L     = 96
ID_GRAVITY_UP_R     = 97
ID_GRAVITY_DOWN_L   = 98
ID_GRAVITY_DOWN_R   = 99
ID_PLAYERS          = 100
ID_COLLECTABLE      = 101