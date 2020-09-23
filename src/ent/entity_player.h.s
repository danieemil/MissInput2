.include "ent/entity_drawable.h.s"

.macro DefineEntityPlayer _ep_name, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size, _keys
_ep_name:
    DefineEntityDrawable _ep_name'_ed, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size
    
    .db _keys

    _ep_name'_size = . - _ep_name ;; Saves the number of bytes that fills a DefineEntity
.endm

_ep_keys    = 0 + _ed_size

_ep_size    = 1 + _ed_size



;Flags del power-up (almacenados en la variable _type de entidad)
;
;7   M -> Mascara (1->Tiene Mascara, 0->No tiene Mascara)
;6   V -> V-Flip (1->Boca Abajo, 0->Normal)

;
;M V X X X X X X
;1 0 0 0 0 0 0 0