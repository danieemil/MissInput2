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

.include "ent/entity_drawable.h.s"

.macro DefineEntityInteractable _ei_name, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size, _ox, _oy, _anim_index _score, _type
_ei_name:
    DefineEntityDrawable _ei_name'_ed, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size, _ox, _oy, _anim_index
    
    .db _score  ;;Score
    .db _type
    .db #0x00   ;;Disabled


    _ei_name'_size = . - _ei_name ;; Saves the number of bytes that fills a DefineEntity
.endm

.macro DefineInteractableDefault _ei_name, _suf
;                                            x     y     w     h     vx    vy   attributes  sprite   sw    sh    ss    ox    oy   animi   score  type
    DefineEntityInteractable _ei_name'_suf, 0x00, 0x00, 0x02, 0x08, 0x00, 0x00, 0b00000000, 0x0000, 0x03, 0x08, 0x00, 0x00, 0x00, 0x0000, 0x00, 0x00
.endm

_ei_score       = 0 + _ed_size
_ei_type        = 1 + _ed_size
_ei_disabled    = 2 + _ed_size

_ei_size        = 3 + _ed_size



;Flags de la entidad con físicas (almacenados en la variable _attributes)
;
;7   M -> Mascara (1->Tiene Mascara, 0->No tiene Mascara)
;6   V -> V-Flip (1->Boca Abajo, 0->Normal)
;5   O -> Orientacion (1->Derecha, 0->Izquierda)
;4   G -> On Ground (1->Toca Suelo, 0->NO toca suelo) (Está colisionando en Y)
;3   W -> On Wall (1->Colisiona con pared, 0->No colisiona con pared) (Está colisionando en X)
;2   H -> Half on ground (1->Los puntos en Y tienen diferente Group ID, 0->Ambos puntos en Y tienen la misma Group ID)
;1   X
;0   o -> Open (1->Open, 0->Closed)
