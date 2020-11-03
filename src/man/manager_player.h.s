;;==================================================================
;;
;;    Miss Input 2 is a videogame made for Amstrad CPC 464 in 2020 particulary for the CPCRetroDev contest.
;;    Copyright (C) 2020 Daniel Saura Martínez and Enrique Vidal cayuela 
;;
;;    This program is free software: you can redistribute it and/or modify
;;    it under the terms of the GNU General Public License as published by
;;    the Free Software Foundation, either version 3 of the License, or
;;    (at your option) any later version.
;;
;;    This program is distributed in the hope that it will be useful,
;;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;    GNU General Public License for more details.
;;
;;    You should have received a copy of the GNU General Public License
;;    along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;==================================================================

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







