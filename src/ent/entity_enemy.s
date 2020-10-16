.include "main.h.s"

.area _DATA

enemy_index::
    .dw #enemy_type_01
    .dw #enemy_type_02



enemy_type_01:
;; Datos del enemigo
;;       _w      _h   _attributes
    .db #0x02, #0x08, #0b10000010

;;      _sprite
    .dw #_prueba01_spr_0

;;     _spr_w  _spr_h   _spr_size  _spr_ox  _spr_oy
    .db #0x03,  #0x08,    #0x30,    #0x00,   #0x00

;;      _type
    .db #0x00

enemy_type_02:
;; Datos del enemigo
;;       _w      _h   _attributes
    .db #0x02, #0x08, #0b10000010

;;      _sprite
    .dw #_prueba01_spr_0

;;     _spr_w  _spr_h   _spr_size  _spr_ox  _spr_oy
    .db #0x03,  #0x08,    #0x30,    #0x00,   #0x00

;;      _type
    .db #0x01