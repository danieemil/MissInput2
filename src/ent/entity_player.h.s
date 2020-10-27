.include "ent/entity_enemy.h.s"

.macro DefineEntityPlayer _ep_name, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size, _ox, _oy, _anim_index
_ep_name:
    DefineEntityDrawable _ep_name'_ed, _x, _y, _w, _h, _vx, _vy, _attributes, _sprite, _spr_w, _spr_h, _spr_size, _ox, _oy, _anim_index
    
    .db #0x0E   ;;Offset de la tabla de saltos
    .db #0x00   ;;Indica si esta chocando con una pared y su orientacion
    .db #0x00   ;;Force X
    .db #0x00   ;;Score [Centenas de Millar, Decenas de Millar]
    .db #0x00   ;;Score [Millares, Centenas]
    .db #0x00   ;;Score [Decenas, Unidades]
    .db #0x00   ;;Deaths
    .db #0x00   ;;Player Attributes

    _ep_name'_size = . - _ep_name ;; Saves the number of bytes that fills a DefineEntity
.endm

_ep_jump_state  = 0 + _ed_size ;;Offset de la tabla de saltos
_ep_wall_dir    = 1 + _ed_size ;;Indica si esta chocando con una pared y su orientacion
_ep_force_x     = 2 + _ed_size ;;Force X
_ep_score_cdm   = 3 + _ed_size ;;Score [Centenas de Millar, Decenas de Millar]
_ep_score_mc    = 4 + _ed_size ;;Score [Millares, Centenas]
_ep_score_du    = 5 + _ed_size ;;Score [Decenas, Unidades]
_ep_deaths      = 6 + _ed_size ;;Deaths
_ep_player_attr = 7 + _ed_size ;;Player Attributes

_ep_size        = 8 + _ed_size





;Flags del jugador (almacenados en la variable _attributes)
;
;7   M -> Mascara (1->Tiene Mascara, 0->No tiene Mascara)
;6   V -> V-Flip (1->Boca Abajo, 0->Normal)
;5   O -> Orientacion (1->Derecha, 0->Izquierda)
;4   G -> On Ground (1->Toca Suelo, 0->NO toca suelo)
;3   W -> On Wall (1->Colisiona con pared, 0->No colisiona con pared) (Está colisionando en X)
;2   H -> Half on ground (1->Los puntos en Y tienen diferente Group ID, 0->Ambos puntos en Y tienen la misma Group ID)
;1   R -> Check Roof (1-> Buffer Roof/Ground, 0-> Ground)
;0   D -> Double Jump (1 -> Active, 0 -> Inactive)

;
;M V O G W H R D
;1 0 0 0 0 0 0 0



;Flags del jugador (almacenados en la variable _player_attr)
;
;7   J -> Allow Jump (1->NO Jump, 0->Can jump)
;6   D -> In Door (1 -> Esta en la puerta, 0 -> NO esta en la puerta)
;5   E -> End Level (1 -> Animacion entrar puerta)
;4   . -> 
;3   . -> 
;2   . -> 
;1   . -> 
;0   . -> 

;
;M V O G W H R D
;1 0 0 0 0 0 0 0