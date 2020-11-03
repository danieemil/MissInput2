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

.include "cpctelera.h.s"
.include "main.h.s"

.macro DefineEntityPhysics _eph_name, _x, _y, _w, _h, _vx, _vy, _attributes

    _eph_name:
    .db _x, _y
    .db _w, _h
    .db _vx, _vy
    .db #0x00           ;;Offset en X
    .db _attributes
    _eph_name'_size = . - _eph_name ;; Saves the number of bytes that fills a DefineEntity

.endm

_eph_x           = 0
_eph_y           = 1
_eph_w           = 2
_eph_h           = 3
_eph_vx          = 4
_eph_vy          = 5
_eph_offset      = 6
_eph_attributes  = 7
_eph_size        = 8



;Flags de la entidad con físicas (almacenados en la variable _attributes)
;
;7   M -> Mascara (1->Tiene Mascara, 0->No tiene Mascara)
;6   V -> V-Flip (1->Boca Abajo, 0->Normal)
;5   O -> Orientacion (1->Derecha, 0->Izquierda)
;4   G -> On Ground (1->Toca Suelo, 0->NO toca suelo) (Está colisionando en Y)
;3   W -> On Wall (1->Colisiona con pared, 0->No colisiona con pared) (Está colisionando en X)
;2   H -> Half on ground (1->Los puntos en Y tienen diferente Group ID, 0->Ambos puntos en Y tienen la misma Group ID)
;1   X
;0   X

;
;M V O G W H X X
;1 0 0 0 0 0 0 0

_ephf_orientation   = 5
_ephf_ground        = 4
_ephf_wall          = 3
_ephf_h_ground      = 2
