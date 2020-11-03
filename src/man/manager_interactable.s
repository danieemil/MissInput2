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

.include "man/manager_interactable.h.s"

.macro DefineInteractableVector _mi_name, _n
    _c = 0
    .rept _n
        DefineInteractableDefault _mi_name, \_c
        _c = _c + 1
    .endm
.endm


.area _DATA

interactable_vector:: DefineInteractableVector interactable_vector, 10
mi_num_interactable:: .db #00
mi_next_interactable_l: .db #00
mi_next_interactable_h: .db #00


.area _CODE


;;==================================================================
;;                       SEARCH INTERACTABLE VECTOR
;;------------------------------------------------------------------
;; Inicializa los datos del vector de interactuables
;;------------------------------------------------------------------
;;
;; INPUT:
;;  A -> Posicion del elemento
;;
;; OUTPUT:
;;  IX -> puntero al interactable
;;  A -> 0: Se ha encontrado en el vector
;;
;; DESTROYS:
;;  AF, BC, HL, IX
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_mi_search_vector:

    ld ix, #interactable_vector

    ld hl, #mi_num_interactable

    cp (hl)
    jr nc, sv_interactable_not_found
    cp #0x00
    ret z

    ld bc, #_ei_size
sv_loop:

    add ix, bc
    dec a
    jr nz, sv_loop

    ret

sv_interactable_not_found:
    xor a
    dec a
    ret


;;==================================================================
;;                       INIT INTERACTABLE VECTOR
;;------------------------------------------------------------------
;; Inicializa los datos del vector de interactuables
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  HL
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_mi_init_vector:
    
    ld hl, #mi_num_interactable
    ld (hl), #0x00

    ld hl, #interactable_vector
    ld (mi_next_interactable_l), hl

    ret


;;==================================================================
;;                       ADD INTERACTABLE
;;------------------------------------------------------------------
;; Añade un interactuable del vector de interactuables y los datos del vector
;;------------------------------------------------------------------
;;
;; INPUT:
;;  A   -> Tipo de interactuable
;;  BC  -> Position X, Y
;;      
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, HL, IX
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_mi_add_interactable:
    
    push bc

    ld hl, #interactable_index
    sla a

    ld c, a
    ld b, #0x00
    add hl, bc

    ld e, (hl)
    inc hl
    ld d, (hl)

    .db #0xDD, #0x6B        ;; OPCODE ld ixl, e
    .db #0xDD, #0x62        ;; OPCODE ld ixh, d

    ;; Incrementar contador
    ld hl, #mi_num_interactable    
    inc (hl)

    
    ld hl, (mi_next_interactable_l)

    pop bc

    ;; IX -> Puntero a los datos característicos del tipo de interactuable
    ;; HL -> Puntero a donde hay que copiar los datos
    ;; BC -> Posición del interactuable

    ld (hl), b                  ;; _x
    inc hl
    ld (hl), c                  ;; _y
    inc hl

    ld a, _eit_w(ix)            ;; _w
    ld (hl), a
    inc hl

    ld a, _eit_h(ix)            ;; _h
    ld (hl), a
    inc hl

    ld (hl), #0x00              ;; _vx
    inc hl

    ld (hl), #0x00              ;; _vy
    inc hl

    ld (hl), #0x00              ;; _offset
    inc hl

    ld a, _eit_attributes(ix)   ;; _atributes
    ld (hl), a
    inc hl

    ld a, _eit_spr_l(ix)        ;; _sprite_l
    ld (hl), a
    inc hl

    ld a, _eit_spr_h(ix)        ;; _sprite_h
    ld (hl), a
    inc hl

    ld a, _eit_spr_wi(ix)       ;; _sprite_wi
    ld (hl), a
    inc hl

    ld a, _eit_spr_he(ix)       ;; _sprite_he
    ld (hl), a
    inc hl

    ld a, _eit_spr_size(ix)     ;; _sprite_size
    ld (hl), a
    inc hl

    ld (hl), b                  ;; _prev_x
    inc hl

    ld (hl), c                  ;; _prev_y
    inc hl

    ld (hl), #0x00              ;; _prev_o
    inc hl

    ld a, _eit_spr_ox(ix)       ;; _ox
    ld (hl), a
    inc hl

    ld a, _eit_spr_oy(ix)       ;; _oy
    ld (hl), a
    inc hl
    
    ld a, _eit_anim_ind_l(ix)   ;; _anim_index_l
    ld (hl), a
    inc hl

    ld a, _eit_anim_ind_h(ix)   ;; _anim_index_h
    ld (hl), a
    inc hl

    ld (hl), #0x00              ;; _anim_pos
    inc hl

    ld (hl), #0x00              ;; _anim_dur
    inc hl

    ld a, _eit_score(ix)        ;; _score
    ld (hl), a
    inc hl

    ld a, _eit_type(ix)         ;; _type
    ld (hl), a
    inc hl

    ld (hl), #0x00              ;; _disabled
    inc hl

    ld (mi_next_interactable_l), hl

    ret


;;==================================================================
;;                       REMOVE INTERACTABLE
;;------------------------------------------------------------------
;; Quita a un interactuable del vector de interactuables y los datos del vector
;;------------------------------------------------------------------
;;
;; INPUT:
;;  DE -> Puntero al interactuable que quitar
;;      
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_mi_remove_interactable:

    ;; Decrementar contador
    ld hl, #mi_num_interactable    
    dec (hl)

    ld hl, (mi_next_interactable_l)

    xor a
    ld b, a
    dec b
    sub #_ei_size
    ld c, a
    add hl, bc

    ld (mi_next_interactable_l), hl

    inc b
    ld c, #_ei_size

    ;; HL -> Puntero al último elemento del array
    ;; DE -> Puntero al elemento a borrar del array
    ;; BC -> Tamaño un elemento del vector

    
    and a      ;; Carry flag -> 0
    sbc hl, de ;; Si se elimina el último elemento no es necesario hacer ldir
    ret z

    ld hl, (mi_next_interactable_l)

    ldir

    ret
