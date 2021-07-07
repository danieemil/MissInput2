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

.include "main.h.s"

.area _DATA

enemy_index::
    .dw #enemy_turtle
    .dw #enemy_saw
    .dw #enemy_rock



enemy_turtle:
;; Datos del enemigo
;;       _w      _h   _attributes
    .db #0x02, #0x08, #0b10000010 ;#0b10000010

;;      _sprite
    .dw #_enemy_spr_08

;;     _spr_w  _spr_h   _spr_size  _spr_ox  _spr_oy
    .db #0x03,  #0x08,    #0x30,    #0x00,   #0x00

;;       _anim_index
    .dw #anim_enemy_R

;;      _type
    .db #ET_TURTLE

enemy_saw:
;; Datos del enemigo
;;       _w      _h   _attributes
    .db #0x02, #0x08, #0b10000000

;;      _sprite
    .dw #_enemy_spr_00

;;     _spr_w  _spr_h   _spr_size  _spr_ox  _spr_oy
    .db #0x03,  #0x08,    #0x30,    #0x00,   #0x00

;;       _anim_index
    .dw #anim_enemy_R

;;      _type
    .db #ET_SAW


enemy_rock:
;; Datos del enemigo
;;       _w      _h   _attributes
    .db #0x02, #0x08, #0b10000010

;;      _sprite
    .dw #_enemy_spr_16

;;     _spr_w  _spr_h   _spr_size  _spr_ox  _spr_oy
    .db #0x03, #0x08,     #0x30,    #0x00,   #0x00

;;       _anim_index
    .dw #anim_enemy_R

;;      _type
    .db #ET_ROCK
