.include "main.h.s"

.area _DATA

interactable_index::
    .dw #interactable_checkpoint
    .dw #interactable_double_jump
    .dw #interactable_gravity_up
    .dw #interactable_gravity_down


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


interactable_double_jump:
;; Datos del interactuable
;;       _w      _h   _attributes
    .db #0x01, #0x04, #0b00000000

;;      _sprite
    .dw #_checkpoint_top_spr_1

;;     _spr_w  _spr_h           _spr_size         _spr_ox  _spr_oy
    .db #0x01,  #0x04,    #SPR_CHECKPOINT_SIZE,    #0x00,   #0x00

;;      _type
    .db #EI_DOUBLE_JUMP


interactable_gravity_up:
;; Datos del interactuable
;;       _w      _h   _attributes
    .db #0x01, #0x04, #0b00000000

;;      _sprite
    .dw #_checkpoint_top_spr_1

;;     _spr_w  _spr_h           _spr_size         _spr_ox  _spr_oy
    .db #0x01,  #0x04,    #SPR_CHECKPOINT_SIZE,    #0x00,   #0x00

;;      _type
    .db #EI_GRAVITY_UP


interactable_gravity_down:
;; Datos del interactuable
;;       _w      _h   _attributes
    .db #0x01, #0x04, #0b00000000

;;      _sprite
    .dw #_checkpoint_top_spr_1

;;     _spr_w  _spr_h           _spr_size         _spr_ox  _spr_oy
    .db #0x01,  #0x04,    #SPR_CHECKPOINT_SIZE,    #0x00,   #0x00

;;      _type
    .db #EI_GRAVITY_DOWN