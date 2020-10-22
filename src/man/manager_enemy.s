.include "man/manager_enemy.h.s"

.macro DefineEnemyVector _me_name, _n
    _c = 0
    .rept _n
        DefineEnemyDefault _me_name, \_c
        _c = _c + 1
    .endm
.endm


.area _DATA

enemy_vector:: DefineEnemyVector enemy_vector, 10
me_num_enemy:: .db #00
me_next_enemy_l: .db #00
me_next_enemy_h: .db #00


.area _CODE

;;==================================================================
;;                       INIT ENEMY VECTOR
;;------------------------------------------------------------------
;; Inicializa los datos del vector de enemigos
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
_me_init_vector:
    
    ld hl, #me_num_enemy
    ld (hl), #0x00

    ld hl, #enemy_vector
    ld (me_next_enemy_l), hl

    ret


;;==================================================================
;;                       ADD ENEMY
;;------------------------------------------------------------------
;; Añade un enemigo del vector de enemigos y los datos del vector
;;------------------------------------------------------------------
;;
;; INPUT:
;;  A   -> Tipo de enemigo
;;  BC  -> Position X, Y
;;  DE  -> Velocity X, Y
;;      
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL, IX
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_me_add_enemy:
    
    push bc
    push de

    ld hl, #enemy_index
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
    ld hl, #me_num_enemy    
    inc (hl)

    
    ld hl, (me_next_enemy_l)

    pop de
    pop bc

    ;; IX -> Puntero a los datos característicos del tipo de enemigo
    ;; HL -> Puntero a donde hay que copiar los datos
    ;; BC -> Posición del enemigo
    ;; DE -> Velocidad inicial del enemigo

    ld (hl), b                  ;; _x
    inc hl
    ld (hl), c                  ;; _y
    inc hl

    ld a, _eet_w(ix)            ;; _w
    ld (hl), a
    inc hl

    ld a, _eet_h(ix)            ;; _h
    ld (hl), a
    inc hl

    ld (hl), d                  ;; _vx
    inc hl

    ld (hl), e                  ;; _vy
    inc hl

    ld (hl), #0x00              ;; _offset
    inc hl

    ld a, _eet_attributes(ix)   ;; _atributes
    ld (hl), a
    inc hl

    ld a, _eet_spr_l(ix)        ;; _sprite_l
    ld (hl), a
    inc hl

    ld a, _eet_spr_h(ix)        ;; _sprite_h
    ld (hl), a
    inc hl

    ld a, _eet_spr_wi(ix)       ;; _sprite_wi
    ld (hl), a
    inc hl

    ld a, _eet_spr_he(ix)       ;; _sprite_he
    ld (hl), a
    inc hl

    ld a, _eet_spr_size(ix)     ;; _sprite_size
    ld (hl), a
    inc hl

    ld (hl), b                  ;; _prev_x
    inc hl

    ld (hl), c                  ;; _prev_y
    inc hl

    ld (hl), #0x00              ;; _prev_o
    inc hl

    ld a, _eet_spr_ox(ix)       ;; _ox
    ld (hl), a
    inc hl

    ld a, _eet_spr_oy(ix)       ;; _oy
    ld (hl), a
    inc hl

    ld a, _eet_anim_ind_h(ix)   ;; _anim_index_h
    ld (hl), a
    inc hl

    ld a, _eet_anim_ind_l(ix)   ;; _anim_index_l
    ld (hl), a
    inc hl

    ld (hl), #0x00              ;; _anim_pos
    inc hl

    ld (hl), #0x00              ;; _anim_dur
    inc hl

    ld (hl), #JT_ON_GROUND      ;; _offset_Jump_Table
    inc hl

    ld a, _eet_type(ix)         ;; _type
    ld (hl), a
    inc hl

    ld (hl), #0x00              ;; _disabled
    inc hl

    ld (hl), b                  ;; _origin_x
    inc hl

    ld (hl), c                  ;; _origin_y
    inc hl

    ld (me_next_enemy_l), hl

    ret


;;==================================================================
;;                       REMOVE ENEMY
;;------------------------------------------------------------------
;; Quita a un enemigo del vector de enemigos y los datos del vector
;;------------------------------------------------------------------
;;
;; INPUT:
;;  DE -> Puntero al enemigo que quitar
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
_me_remove_enemy:

    ;; Decrementar contador
    ld hl, #me_num_enemy    
    dec (hl)

    ld hl, (me_next_enemy_l)

    xor a
    ld b, a
    dec b
    sub #_ee_size
    ld c, a
    add hl, bc

    ld (me_next_enemy_l), hl

    inc b
    ld c, #_ee_size

    ;; HL -> Puntero al último elemento del array
    ;; DE -> Puntero al elemento a borrar del array
    ;; BC -> Tamaño un elemento del vector

    
    and a      ;; Carry flag -> 0
    sbc hl, de ;; Si se elimina el último elemento no es necesario hacer ldir
    ret z

    ld hl, (me_next_enemy_l)

    ldir

    ret