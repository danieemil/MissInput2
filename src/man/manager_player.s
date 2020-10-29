.include "man/manager_player.h.s"

.area _DATA
;                  Etiqueta    X      Y      W      H      VX     VY       ATTR           SPR          SPRW  SPRH SPRSIZE   OX    OY
DefineEntityPlayer player_1, #0x10, #0x30, #0x02, #0x09, #0xFF, #0x00, #0b10110001, _player_spr_00, #0x03, #0x09, #0x36, #0x00, #0x00, #anim_player_jump_R, #0b00000000
DefineEntityPlayer player_2, #0x13, #0x40, #0x02, #0x09, #0x00, #0x00, #0b10110001, _player_2_spr_00, #0x03, #0x09, #0x36, #0x00, #0x00, #anim_player_jump_R, #0b00000001

.area _CODE
;;==================================================================
;;                       INIT PLAYERS
;;------------------------------------------------------------------
;; Inicializa los jugadores con los valores por defecto
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
;; CYCLES: []
;;==================================================================
_mp_init_players:

    ld hl, #player_1

    call _mp_init_player

    jr _mp_init_player



;;==================================================================
;;                       INIT PLAYER
;;------------------------------------------------------------------
;; Inicializa a un jugador con los valores por defecto
;;------------------------------------------------------------------
;;
;; INPUT:
;;  HL -> Puntero al jugador para inicializar
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================

_mp_init_player:

    xor a

    ld (hl), a                  ;; _x
    inc hl

    ld (hl), a                  ;; _y
    inc hl

    ld (hl), #PLAYER_EPH_W      ;; _w
    inc hl

    ld (hl), #PLAYER_EPH_H      ;; _h
    inc hl

    ld (hl), a                  ;; _vx
    inc hl

    ld (hl), a                  ;; _vy
    inc hl

    ld (hl), a                  ;; _offset
    inc hl

    ld (hl), #PLAYER_EPH_ATTR   ;; _attributes
    inc hl

    ld (hl), a                  ;; _sprite_l
    inc hl

    ld (hl), a                  ;; _sprite_h
    inc hl

    ld (hl), #PLAYER_ED_W       ;; _sprite_wi
    inc hl

    ld (hl), #PLAYER_ED_H       ;; _sprite_he
    inc hl

    ld (hl), #PLAYER_ED_SPR_SIZE;; _sprite_size
    inc hl

    ;ld (hl), a                 ;; _prev_x
    inc hl
    
    ;ld (hl), a                 ;; _prev_y
    inc hl

    ;ld (hl), a                 ;; _prev_o
    inc hl

    ld (hl), a                  ;; _ox
    inc hl

    ld (hl), a                  ;; _oy
    inc hl

    ld (hl), #>anim_player_jump_R;; _anim_index_h
    inc hl

    ld (hl), #<anim_player_jump_R;; _anim_index_l  porque Enrique lo hizo así
    inc hl

    ld (hl), a                  ;; _anim_pos
    inc hl

    ld (hl), a                  ;; _anim_dur
    inc hl

    ld (hl), #JT_ON_GROUND      ;; _offset_Jump_Table
    inc hl

    ld (hl), a                  ;; _offset_wall
    inc hl

    ld (hl), a                  ;; _forced_x
    inc hl

    ;ld (hl), a                 ;; _score_cm_dm
    inc hl

    ;ld (hl), a                 ;; _score_m_c
    inc hl

    ;ld (hl), a                 ;; _score_d_u
    inc hl

    ;ld (hl), a                 ;; _deaths [Millares, Centenas]
    inc hl

    ;ld (hl), a                 ;; _deaths [Decenas, Unidades]
    inc hl

    ld a, (hl)
    and #0b00010001

    ld (hl), a               ;; _player_attr
    inc hl

    ret
