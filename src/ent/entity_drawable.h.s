.include "ent/entity_physics.h.s"

.macro DefineEntityDrawable _ed_name, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h
_ed_name:
    DefineEntityPhysics _ed_name'_eph, _x, _y, _w, _h, _vx, _vy, _attributes
    
    .dw _sprite     ;; Sprite ptr
    .db _spr_w, _spr_h  ;;Sprite Width/Height
    .db #0         ;; Sprite offset [0, 48, 96, 144]
    .db _x, _y      ;; Previous x, y

    _ed_name'_size = . - _ed_name ;; Saves the number of bytes that fills a DefineEntity
.endm

_ed_spr_l       = 0 + _eph_size
_ed_spr_h       = 1 + _eph_size
_ed_spr_wi      = 2 + _eph_size
_ed_spr_he      = 3 + _eph_size
_ed_spr_offset  = 4 + _eph_size
_ed_pre_x       = 5 + _eph_size
_ed_pre_y       = 6 + _eph_size

_ed_size        = 7 + _eph_size



;Flags del power-up (almacenados en la variable _type de entidad)
;
;7   N -> Nada
;6   N -> Nada
;5   I -> Inhabilitado?(1->Sí, 0->No)
;4   C -> Detectaremos colisiones en Y?(1->No, 0->Sí) No sirve para el power-up
;3   T -> |
;2   T -> +-> Tipo de power-up:
;;              (00->Aporta doble salto)
;;              (01->Gravedad hacia arriba)
;;              (10->Gravedad hacia abajo)
;;              (11->Fin del nivel)
;1   M -> Es mortal?(1->Sí, 0->No) No sirve para el power-up
;0   C -> Se puede coger?(1->power-up, 0->no power-up)
;
;N N I C T T M C
;0 0 0 0 0 0 0 0