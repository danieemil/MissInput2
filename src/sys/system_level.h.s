;;DEPENDENCIAS
.include "main.h.s"



;;FUNCIONES
.globl _sl_generate_level

.globl _me_add_enemy

.globl _mi_add_interactable

;;CONSTANTES

;;COLLISION CONSTS
;;GROUP_TRANSPARENT   = 2
;;GROUP_SOLID         = 18
;;GROUP_DANGEROUS     = 25
;;GROUP_ENTITIES      = 25

;;ENEMY CONSTS
;;GROUP_TURTLE        = 27
;;GROUP_SAW           = 35
;;GROUP_ROCK          = 37
;;GROUP_ENEMIES       = 37

;;INTERACTABLE CONSTS
;;GROUP_INTERACTABLE  = 42

;; ENEMY CONSTS
TURTLE_RIGHT    = 25
TURTLE_LEFT     = 26

SAW_RIGHT       = 27
SAW_RIGHT_DOWN  = 28
SAW_DOWN        = 29
SAW_LEFT_DOWN   = 30
SAW_LEFT        = 31
SAW_LEFT_UP     = 32
SAW_UP          = 33
SAW_RIGHT_UP    = 34

ROCK_RIGHT      = 35
ROCK_LEFT       = 36

;;INTERACTABLE CONSTS
ID_CHECKPOINT   = 37
ID_DOUBLE_JUMP  = 38
ID_GRAVITY_UP   = 39
ID_GRAVITY_DOWN = 40
ID_COLLECTABLE  = 41