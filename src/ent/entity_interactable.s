;;==================================================================
;;
;;    Miss Input 2 is a videogame made for Amstrad CPC 464 in 2020 particulary for the CPCRetroDev contest.
;;    Copyright (C) 2020 Daniel Saura Martínez and Enrique Vidal cayuela 
;;
;;    This program is free software: you can redistribute it and/or modify
;;    it under the terms of the GNU General Public License as published by
;;    the Free Software Foundation, either version 3 of the License, or
;;    (at your option) any later version.
;;
;;    This program is distributed in the hope that it will be useful,
;;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;    GNU General Public License for more details.
;;
;;    You should have received a copy of the GNU General Public License
;;    along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;==================================================================

.include "main.h.s"

.area _DATA

interactable_index::
    .dw #interactable_checkpoint        ;00
    .dw #interactable_double_jump       ;01
    .dw #interactable_gravity_up        ;02
    .dw #interactable_gravity_down      ;03
    .dw #interactable_collectable       ;04
    .dw #interactable_door              ;05


interactable_checkpoint:
;; Datos del interactuable
;;       _w      _h   _attributes
    .db #0x03, #0x0C, #0b00000000

;;      _sprite
    .dw #_checkpoint_top_spr_0

;;     _spr_w  _spr_h       _spr_size        _spr_ox  _spr_oy
    .db #0x01,  #0x04, #SPR_CHECKPOINT_SIZE,  #0x01,   #0x00

;;       _anim_index
    .dw 0xFEFE

;;      _score      _type
    .db #0x00, #EI_CHECKPOINT


interactable_double_jump:
;; Datos del interactuable
;;       _w      _h   _attributes
    .db #0x04, #0x0A, #0b00000000

;;      _sprite
    .dw #_double_jump_spr_0

;;     _spr_w  _spr_h       _spr_size         _spr_ox  _spr_oy
    .db #0x04,  #0x06,    #SPR_DJUMP_SIZE,    #0x00,   #0x01

;;       _anim_index
    .dw #anim_interactable_djump_active_power_up

;;      _score      _type
    .db #0x00, #EI_DOUBLE_JUMP


interactable_gravity_up:
;; Datos del interactuable
;;       _w      _h   _attributes
    .db #0x02, #0x08, #0b00000000

;;      _sprite
    .dw #_gravity_spr_00

;;     _spr_w  _spr_h           _spr_size   _spr_ox  _spr_oy
    .db #0x02,  #0x08,    #SPR_GPUP_SIZE,    #0x00,   #0x00

;;       _anim_index
    .dw #anim_interactable_gravity_up_power_up

;;      _score      _type
    .db #0x00, #EI_GRAVITY_UP


interactable_gravity_down:
;; Datos del interactuable
;;       _w      _h   _attributes
    .db #0x02, #0x08, #0b00000000

;;      _sprite
    .dw #_gravity_spr_07

;;     _spr_w  _spr_h     _spr_size         _spr_ox  _spr_oy
    .db #0x02,  #0x08,    #SPR_GPUP_SIZE,    #0x00,   #0x00

;;       _anim_index
    .dw #anim_interactable_gravity_down_power_up
;;      _score      _type
    .db #0x00, #EI_GRAVITY_DOWN

interactable_collectable:
;; Datos del interactuable
;;       _w      _h   _attributes
    .db #0x02, #0x0D, #0b00000000

;;      _sprite
    .dw #_colectable_spr_0

;;     _spr_w  _spr_h           _spr_size         _spr_ox  _spr_oy
    .db #0x02,  #0x0D,    #SPR_COLLECTABLE_SIZE,    #0x00,   #0x00

;;       _anim_index
    .dw anim_interactable_colectable

;;      _score      _type
    .db #0x50, #EI_COLLECTABLE


interactable_door:
;; Datos del interactuable
;;       _w      _h   _attributes
    .db #0x02, #0x0B, #0b00000000

;;      _sprite
    .dw #_door_spr_0

;;     _spr_w  _spr_h      _spr_size         _spr_ox  _spr_oy
    .db #0x02,  #0x0B,    #SPR_DOOR_SIZE,    #0x00,   #0x00

;;       _anim_index
    .dw #0xFEFE

;;      _score  _type
    .db #0x00, #EI_DOOR
