.include "ent/entity_drawable.h.s"

.macro DefineEntityInteractable _ei_name, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size, _ox, _oy, _type
_ei_name:
    DefineEntityDrawable _ei_name'_ed, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size, _ox, _oy
    .db _type


    _ei_name'_size = . - _ei_name ;; Saves the number of bytes that fills a DefineEntity
.endm

.macro DefineInteractableDefault _ei_name, _suf
    DefineEntityInteractable _ei_name'_suf, 0x00, 0x00, 0x02, 0x08, 0x00, 0x00, 0b00000000, 0x0000, 0x03, 0x08, 0x00, 0x00, 0x00, 0x00
.endm

_ei_type  = 0 + _ed_size

_ei_size  = 1 + _ed_size



;Flags del interactuable (almacenados en la variable _attributes)
;
;7   M -> Mascara (1->Tiene Mascara, 0->No tiene Mascara)
;6   V -> V-Flip (1->Boca Abajo, 0->Normal)
;5   X -> 
;4   X ->
;3   I -> Inhabilitado (1->Está inhabilitado, 0->Está habilitado)
;2   C -> Collided (1->Ha colisionado, 0->No ha colisionado)[Físicas entre entidades solo]
;1   R -> Removable (1->Se puede coger, 0->No se puede coger)[Se elimina o no al colisionar]
;0   X

;_interactable_attributtes (Describe los tipos de interactuables): 
;   - 000(0) -> 
;   - 001(1) ->
;   - 010(2) ->
;   - 011(3) ->
;   - 100(4) ->
;   - 101(5) ->
;   - 110(6) ->
;   - 111(7) ->


;
;M V X X I T T T
;1 0 0 0 0 0 0 0