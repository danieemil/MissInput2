.include "man/manager_player.h.s"

.area _DATA
;                  Etiqueta    X      Y      W      H      VX     VY       ATTR           SPR          SPRW  SPRH SPRSIZE   OX    OY
DefineEntityPlayer player_1, #0x10, #0x30, #0x02, #0x09, #0xFF, #0x00, #0b10110001, _player_spr_00, #0x03, #0x09, #0x36, #0x00, #0x00, #anim_player_jump_R;#0x36
DefineEntityPlayer player_2, #0x13, #0x40, #0x02, #0x09, #0x00, #0x00, #0b10110001, _player_2_spr_00, #0x03, #0x09, #0x36, #0x00, #0x00, #anim_player_jump_R

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
;;  AF, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mp_init_players:
    
    ld a, #0x00

    ld hl, #player_1

    call _mp_init_player
    dec a
    jr z, _mp_init_player

    ret



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
;;  HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================

_mp_init_player:
    ld (hl), #0x00              ;; _x
    inc hl

    ld (hl), #0x00              ;; _y
    inc hl

    ld (hl), #PLAYER_EPH_W      ;; _w
    inc hl

    ld (hl), #PLAYER_EPH_H      ;; _h
    inc hl

    ld (hl), #0x00              ;; _vx
    inc hl

    ld (hl), #0x00              ;; _vy
    inc hl

    ld (hl), #0x00              ;; _offset
    inc hl

    ld (hl), #PLAYER_EPH_ATTR   ;; _attributes
    inc hl

    ld (hl), #<_player_spr_00    ;; _sprite_l
    inc hl

    ld (hl), #>_player_spr_00    ;; _sprite_h
    inc hl

    ld (hl), #PLAYER_ED_W       ;; _sprite_wi
    inc hl

    ld (hl), #PLAYER_ED_H       ;; _sprite_he
    inc hl

    ld (hl), #PLAYER_ED_SPR_SIZE;; _sprite_size
    inc hl

    ;ld (hl), #0x00              ;; _prev_x
    inc hl
    
    ;ld (hl), #0x00              ;; _prev_y
    inc hl

    ;ld (hl), #0x00              ;; _prev_o
    inc hl

    ld (hl), #0x00              ;; _ox
    inc hl

    ld (hl), #0x00              ;; _oy
    inc hl

    ld (hl), #0x00              ;; _anim_index_l
    inc hl

    ld (hl), #0x00              ;; _anim_index_h
    inc hl

    ld (hl), #0x00              ;; _anim_pos
    inc hl

    ld (hl), #0x00              ;; _anim_dur
    inc hl

    ld (hl), #JT_ON_GROUND      ;; _offset_Jump_Table
    inc hl

    ld (hl), #0x00              ;; _offset_wall
    inc hl

    ld (hl), #0x00              ;; _forced_x
    inc hl

    ;ld (hl), #0x00              ;; _score_cm_dm
    inc hl

    ;ld (hl), #0x00              ;; _score_m_c
    inc hl

    ;ld (hl), #0x00              ;; _score_d_u
    inc hl

    ;ld (hl), #0x00              ;; _deaths
    inc hl

    ld (hl), #0x00               ;; _player_attr
    inc hl

    ret
