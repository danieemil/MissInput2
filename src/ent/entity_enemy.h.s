.include "ent/entity_drawable.h.s"

.macro DefineEntityEnemy _ee_name, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size
_ee_name:
    DefineEntityDrawable _ee_name'_ed, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size

    _ee_name'_size = . - _ee_name ;; Saves the number of bytes that fills a DefineEntity
.endm

.macro DefineEnemyDefault _ee_name, _suf
    DefineEntityEnemy _ee_name'_suf, 0x00, 0x00, 0x02, 0x08, 0x00, 0x00, 0b00000000, 0x0000, 0x03, 0x08, 0x00
.endm

_ee_size       = _ed_size



;Flags del power-up (almacenados en la variable _type de entidad)
;
;7   M -> Mascara (1->Tiene Mascara, 0->No tiene Mascara)
;6   V -> V-Flip (1->Boca Abajo, 0->Normal)
;5   O -> Orientacion (1->Derecha, 0->Izquierda)
;4   G -> On Ground (1->Toca Suelo, 0->NO toca suelo)

;
;M V X X X X X X
;1 0 0 0 0 0 0 0