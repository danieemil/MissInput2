.include "ent/entity_drawable.h.s"

.macro DefineEntityPlayer _ep_name, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _keys
_ep_name:
    DefineEntityDrawable _ep_name'_ed, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite
    
    .db _keys

    _ep_name'_size = . - _ep_name ;; Saves the number of bytes that fills a DefineEntity
.endm

_ep_keys    = 0 + _ed_size

_ep_size    = 1 + _ed_size



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