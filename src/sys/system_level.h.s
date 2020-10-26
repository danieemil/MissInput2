;;DEPENDENCIAS
.include "main.h.s"

.globl checkpoint_x
.globl checkpoint_y
.globl checkpoint_level

.globl _me_init_vector
.globl _me_add_enemy

.globl _mi_init_vector
.globl _mi_add_interactable

.globl _mp_init_players

;;FUNCIONES
.globl _sl_generate_level

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