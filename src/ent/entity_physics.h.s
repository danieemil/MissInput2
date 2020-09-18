
.include "cpctelera.h.s"

.macro DefineEntityPhysics _eph_name, _x, _y, _w, _h, _vx, _vy, _attributes

    _eph_name:
    .db _x, _y
    .db _w, _h
    .db _vx, _vy
    .db _attributes
    _eph_name'_size = . - _eph_name ;; Saves the number of bytes that fills a DefineEntity

.endm

_eph_x           = 0
_eph_y           = 1
_eph_w           = 2
_eph_h           = 3
_eph_vx          = 4
_eph_vy          = 5
_eph_attributes  = 6
_eph_size        = 7



;Flags de la entidad(almacenados en la variable _attributes de entidad)
;
;
;7   N -> Nada
;6   N -> Nada
;5   I -> Inhabilitado?(1->Sí, 0->No)
;4   C -> Detectaremos colisiones en Y?(1->No, 0->Sí) Solo se usa en las colisiones!!
;3   T -> |
;2   T -> +-> Tipo de power-up:
;;              (00->Aporta doble salto)
;;              (01->Gravedad hacia arriba)
;;              (10->Gravedad hacia abajo)
;;              (11->Fin del nivel)
;1   M -> Es mortal?(1->Sí, 0->No)
;0   C -> Se puede coger?(1->power-up, 0->no power-up)
;
;N N I C T T M C
;0 0 0 0 0 0 0 0