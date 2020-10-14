.include "main.h.s"

.area _DATA

interactable_index::
    .dw #interactable_prueba_01
    .dw #interactable_prueba_02



interactable_prueba_01:
;; Datos del enemigo
;;       _w      _h   _attributes
    .db #0x02, #0x08, #0b10000000

;;      _sprite
    .dw #_prueba01_spr_0

;;     _spr_w  _spr_h   _spr_size
    .db #0x03,  #0x08,    #0x30


interactable_prueba_02:
;; Datos del enemigo
;;       _w      _h   _attributes
    .db #0x02, #0x08, #0b00000000

;;      _sprite
    .dw #_prueba01_spr_0

;;     _spr_w  _spr_h   _spr_size
    .db #0x03,  #0x08,    #0x30