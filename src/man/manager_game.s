.include "man/manager_game.h.s"

.area _DATA
    mg_front_buffer:: .db #0xC0
    mg_back_buffer:: .db #0x80
    mg_game_state:: .db #0x00

    

    p1_key_gameplay:: .db #0x00         ;; bit0 -> Actual key_j  |  bit1 -> Previous key_j
    p2_key_gameplay:: .db #0x00

    p1_key_r:: .dw #0x0407      ;;Default - 'E'
    p1_key_l:: .dw #0x0807      ;;Default - 'W'
    p1_key_j:: .dw #0x0808      ;;Default - 'Q'

    p2_key_r:: .dw #0x0803      ;;Default - 'I'
    p2_key_l:: .dw #0x0404      ;;Default - 'O'
    p2_key_j:: .dw #0x0804      ;;Default - 'P'


    jump_table:: .db -4, -4, -4, -2, -2, -2, -1, -1, -1, -1, 00, 1, 1, 1, 1,2,#0x80
    

.area _CODE






;;==================================================================
;;                   GAME LOOP SINGLEPLAYER INIT
;;------------------------------------------------------------------
;; Descripcion
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  NONE
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mg_game_loop_singleplayer_init:
    call _sr_init_buffers
    ret
    


;;==================================================================
;;                      GAME LOOP SINGLEPLAYER
;;------------------------------------------------------------------
;; Descripcion
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  NONE
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mg_game_loop_singleplayer:

    call _sr_get_key_input
    
;;FISICAS DEL JUGADOR-------------------
    push de

    ;Fisicas P1
    ld iy, #player_1
    
    call _sr_redraw_tiles           ;;Redibujamos los tiles de fondo
    ld b, _eph_x(iy)                ;;Establecemos la posicion actual a la pasada
    ld _ed_pre_x(iy), b
    ld b, _eph_y(iy)
    ld _ed_pre_y(iy), b

    pop de
    push de

    ld  a, (p1_key_gameplay)
    ld  e, a
    call _sy_manage_player_physics  ;;Aplicamos las fisicas al jugador 1

    pop de
    ld a, (mg_game_state)
    cp #GS_MULTIPLAYER              ;;Comprobamos si esta en modo multijugador
    jr nz, gl_end_physics

    ;Fisicas P2

gl_end_physics:;------------------------
    
    ld iy, #player_1
    call _sr_draw_entity

    call cpct_waitVSYNC_asm
    call _sr_swap_buffers

    jp _mg_game_loop_singleplayer






;;==================================================================
;;                            GAME INIT
;;------------------------------------------------------------------
;; Descripcion
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  NONE
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mg_game_init:
    call cpct_disableFirmware_asm

    ld c, #0x01
    call cpct_setVideoMode_asm

    ld hl, #_g_palette
    ld de, #0x0004
    call cpct_setPalette_asm

    ld hl, #0x0B10
    call cpct_setPALColour_asm

    call _sr_init_buffers
    ret