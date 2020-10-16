.include "main.h.s"

.area _DATA

interactable_index::
    .dw #interactable_checkpoint
    .dw #interactable_prueba_02



interactable_checkpoint:
;; Datos del interactuable
;;       _w      _h   _attributes
    .db #0x03, #0x0C, #0b00000000

;;      _sprite
    .dw #_checkpoint_top_spr_0

;;     _spr_w  _spr_h       _spr_size        _spr_ox  _spr_oy
    .db #0x01,  #0x04, #SPR_CHECKPOINT_SIZE,  #0x01,   #0x00

;;      _type
    .db #EI_CHECKPOINT


interactable_prueba_02:
;; Datos del interactuable
;;       _w      _h   _attributes
    .db #0x02, #0x08, #0b00000000

;;      _sprite
    .dw #_prueba01_spr_0

;;     _spr_w  _spr_h   _spr_size  _spr_ox  _spr_oy
    .db #0x03,  #0x08,    #0x30,    #0x00,   #0x00