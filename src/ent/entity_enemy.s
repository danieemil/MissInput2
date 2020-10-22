.include "main.h.s"

.area _DATA

enemy_index::
    .dw #enemy_turtle
    .dw #enemy_saw
    .dw #enemy_rock



enemy_turtle:
;; Datos del enemigo
;;       _w      _h   _attributes
    .db #0x02, #0x09, #0b10000010 ;#0b10000010

;;      _sprite
    .dw #_player_spr_00

;;     _spr_w  _spr_h   _spr_size  _spr_ox  _spr_oy
    .db #0x03,  #0x09,    #0x36,    #0x00,   #0x00

;;       _anim_index
    .dw anim_player_idle

;;      _type
    .db #ET_TURTLE

enemy_saw:
;; Datos del enemigo
;;       _w      _h   _attributes
    .db #0x02, #0x09, #0b10000000

;;      _sprite
    .dw #_player_spr_00

;;     _spr_w  _spr_h   _spr_size  _spr_ox  _spr_oy
    .db #0x03,  #0x09,    #0x36,    #0x00,   #0x00

;;       _anim_index
    .dw anim_player_idle

;;      _type
    .db #ET_SAW


enemy_rock:
;; Datos del enemigo
;;       _w      _h   _attributes
    .db #0x02, #0x09, #0b10000010

;;      _sprite
    .dw #_prueba02_spr_0

;;     _spr_w  _spr_h   _spr_size  _spr_ox  _spr_oy
    .db #0x03, #0x09,     #0x36,    #0x00,   #0x00

;;       _anim_index
    .dw anim_player_idle

;;      _type
    .db #ET_ROCK