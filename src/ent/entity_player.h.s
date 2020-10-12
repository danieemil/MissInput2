.include "ent/entity_enemy.h.s"

.macro DefineEntityPlayer _ep_name, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size
_ep_name:
    DefineEntityDrawable _ep_name'_ed, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size
    
    .db #0x0E ;;Offset de la tabla de saltos
    .db #0x00 ;;Indica si esta chocando con una pared y su orientacion

    _ep_name'_size = . - _ep_name ;; Saves the number of bytes that fills a DefineEntity
.endm

_ep_jump_state = 0 + _ed_size ;;Offset de la tabla de saltos
_ep_wall_dir   = 1 + _ed_size ;;Offset de la tabla de saltos

_ep_size       = 2 + _ed_size



;Flags del power-up (almacenados en la variable _type de entidad)
;
;7   M -> Mascara (1->Tiene Mascara, 0->No tiene Mascara)
;6   V -> V-Flip (1->Boca Abajo, 0->Normal)
;5   O -> Orientacion (1->Derecha, 0->Izquierda)
;4   G -> On Ground (1->Toca Suelo, 0->NO toca suelo)

;
;M V X X X X X X
;1 0 0 0 0 0 0 0