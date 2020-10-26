;;DEPENDENCIAS
    .include "man/manager_enemy.h.s"


;;FUNCIONES
    .globl _mp_init_players
    .globl _mp_init_player


    .globl player_1
    .globl player_2

;;CONSTANTES

PLAYER_EPH_W        = 0X02
PLAYER_EPH_H        = 0X09
PLAYER_EPH_ATTR     = 0b10110001

;PLAYER_ED_SPR       = _player_spr_00
PLAYER_ED_W         = 0X03
PLAYER_ED_H         = 0X09
PLAYER_ED_SPR_SIZE  = 0X36







