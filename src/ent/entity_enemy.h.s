.include "ent/entity_interactable.h.s"

.macro DefineEntityEnemy _ee_name, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size, _ox, _oy, _type
_ee_name:
    DefineEntityDrawable _ee_name'_ed, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size, _ox, _oy

    .db #0x00 ;;Offset de la tabla de saltos
    .db _type
    .db #0x00 ;; Ciclos que tiene que permanecer deshabilitado

    _ee_name'_size = . - _ee_name ;; Saves the number of bytes that fills a DefineEntity
.endm

.macro DefineEnemyDefault _ee_name, _suf
    DefineEntityEnemy _ee_name'_suf, 0x00, 0x00, 0x02, 0x08, 0x00, 0x00, 0b00000000, 0x0000, 0x03, 0x08, 0x00, 0x00, 0x00, 0x00
.endm

_ee_jump_state = 0 + _ed_size ;;Offset de la tabla de saltos
_ee_type       = 1 + _ed_size
_ee_disabled   = 2 + _ed_size
_ee_size       = 3 + _ed_size


;Flags del enemigo (almacenados en la variable _attributes)
;
;7   M -> Mascara (1->Tiene Mascara, 0->No tiene Mascara)
;6   V -> V-Flip (1->Boca Abajo, 0->Normal)
;5   O -> Orientacion (1->Derecha, 0->Izquierda)
;4   G -> On Ground (1->Toca Suelo, 0->NO toca suelo) (Está colisionando en Y)
;3   W -> On Wall (1->Colisiona con pared, 0->No colisiona con pared) (Está colisionando en X)
;2   H -> Half on ground (1->Los puntos en Y tienen diferente Group ID, 0->Ambos puntos en Y tienen la misma Group ID)
;1   g -> Gravedad(1->Se le aplica gravedad, 0->No se le aplica gravedad)
;0   X

;
;M V O G W H g X
;1 0 0 0 0 0 0 0

_ee_gravity_flag = 1