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
;7   M -> Drawable (Mascara)
;6   V -> Drawable (V-Flip)
;5   O -> Orientacion (1->Derecha, 0->Izquierda)
;4   G -> On Ground (1->Toca Suelo, 0->NO toca suelo)
;3   I -> Inhabilitado (1->Ha muerto, 0->No hay muerto)
;2   X
;1   X
;0   X



;M V O G I X X X
;0 0 0 0 0 0 0 0