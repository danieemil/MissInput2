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
