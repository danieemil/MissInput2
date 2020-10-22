.include "ent/entity_physics.h.s"

.macro DefineEntityDrawable _ed_name, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size, _ox, _oy, _anim_index
_ed_name:
    DefineEntityPhysics _ed_name'_eph, _x, _y, _w, _h, _vx, _vy, _attributes
    
    .dw _sprite         ;; Sprite ptr
    .db _spr_w, _spr_h  ;;Sprite Width/Height
    .db _spr_size       ;; Sprite size [0, 48, 96, 144]
    .db _x, _y          ;; Previous x, y
    .db #0x00           ;; Previous Offset
    .db _ox, _oy        ;; Sprite Offset
    .dw _anim_index     ;; Puntero a la animación
    .db #0x00           ;; Posición del sprite dentro de la animación
    .db #0x00           ;; Duración de dibujado del sprite de la animación

    _ed_name'_size = . - _ed_name ;; Saves the number of bytes that fills a DefineEntity
.endm

_ed_spr_l          =  0 + _eph_size
_ed_spr_h          =  1 + _eph_size
_ed_spr_wi         =  2 + _eph_size
_ed_spr_he         =  3 + _eph_size
_ed_spr_size       =  4 + _eph_size
_ed_pre_x          =  5 + _eph_size
_ed_pre_y          =  6 + _eph_size
_ed_pre_o          =  7 + _eph_size
_ed_ox             =  8 + _eph_size
_ed_oy             =  9 + _eph_size
_ed_anim_ind_h     = 10 + _eph_size
_ed_anim_ind_l     = 11 + _eph_size
_ed_anim_pos       = 12 + _eph_size
_ed_anim_dur       = 13 + _eph_size


_ed_size        = 14 + _eph_size



;Flags de la entidad dibujable (almacenados en la variable _attributes)
;
;7   M -> Mascara (1->Tiene Mascara, 0->No tiene Mascara)
;6   V -> V-Flip (1->Boca Abajo, 0->Normal)
;5   O -> Physics (Orientation)
;4   G -> Physics (On Ground)
;3   W -> physics (On Wall)
;2   H -> physics (Half on ground)
;1   X
;0   X
;
;M V O G W H X X
;1 0 0 0 0 0 0 0

_edf_mask = 7
_edf_flip = 6