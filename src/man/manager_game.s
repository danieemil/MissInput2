.include "man/manager_game.h.s"

.area _DATA
    mg_front_buffer:: .db #0xC0
    mg_back_buffer:: .db #0x80
    mg_game_state:: .db #0x00

    actual_level:: .db #0x00

    ;CHECKPOINT DATA
    checkpoint_x::   .db #0x00
    checkpoint_y::   .db #0x00
    checkpoint_level:: .db #0x00

    p1_key_gameplay:: .db #0x00         ;; bit0 -> Actual key_j  |  bit1 -> Previous key_j
    p2_key_gameplay:: .db #0x00

    p1_key_r:: .dw #0x0407      ;;Default - 'E'
    p1_key_l:: .dw #0x0807      ;;Default - 'W'
    p1_key_j:: .dw #0x0808      ;;Default - 'Q'

    p2_key_r:: .dw #0x0803      ;;Default - 'I'
    p2_key_l:: .dw #0x0404      ;;Default - 'O'
    p2_key_j:: .dw #0x0804      ;;Default - 'P'

;                     0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22
    jump_table:: .db -3, -3, -3, -2, -2, -2, -2, -1, -1, -1, -1,  0,  0,  0,  1,  1,  1,  1,  2,  2,  2,  2,  3, #0x80
    

.area _CODE






;;==================================================================
;;                   GAME LOOP INIT
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
_mg_game_loop_init:
    call _sr_init_buffers
    call _me_init_vector
    call _mi_init_vector
    
    
    ;; Creando un enemigo tortuga
    xor a               ;; Tipo de enemigo
    ld b, #0x08         ;; Posicion en X
    ld c, #0x90         ;; Posicion en Y
    ld d, #0xFF         ;; Velocidad en X
    ld e, #0x00         ;; Velocidad en Y
    call _me_add_enemy

    ;; Creando un enemigo sierra
    ld a, #0x01         ;; Tipo de enemigo
    ld b, #0x05         ;; Posicion en X
    ld c, #0x6E         ;; Posicion en Y
    ld d, #0x01         ;; Velocidad en X
    ld e, #0x00         ;; Velocidad en Y
    call _me_add_enemy

    ;; Creando un enemigo roca
    ld a, #0x02         ;; Tipo de enemigo
    ld b, #0x30         ;; Posicion en X
    ld c, #0x30         ;; Posicion en Y
    ld d, #0xFF         ;; Velocidad en X
    ld e, #0x00         ;; Velocidad en Y
    call _me_add_enemy


    ;; Creando un CHECKPOINT
    ld a, #00           ;; Tipo de enemigo
    ld b, #0x24         ;; Posicion en X
    ld c, #0x94         ;; Posicion en Y
    call _mi_add_interactable

    ;; Creando un GRAVITY UP
    ld a, #02           ;; Tipo de enemigo
    ld b, #0x38         ;; Posicion en X
    ld c, #0x7E         ;; Posicion en Y
    call _mi_add_interactable

    ;; Creando un GRAVITY DOWN
    ld a, #03           ;; Tipo de enemigo
    ld b, #0x38         ;; Posicion en X
    ld c, #0x50         ;; Posicion en Y
    call _mi_add_interactable

    ret
    


;;==================================================================
;;                           GAME LOOP
;;------------------------------------------------------------------
;; Bucle inicial en el que se ejecuta el juego (NO MENUS)
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL, AF', BC', DE', HL'
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mg_game_loop:

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
    ld iy, #player_2
    push de

    call _sr_redraw_tiles           ;;Redibujamos los tiles de fondo
    ld b, _eph_x(iy)                ;;Establecemos la posicion actual a la pasada
    ld _ed_pre_x(iy), b
    ld b, _eph_y(iy)
    ld _ed_pre_y(iy), b


    pop de
    ld d, e
    ld a, (p2_key_gameplay)
    ld e, a
    call _sy_manage_player_physics


    ;; Limpieza de los enemigos
    ld iy, #enemy_vector
    ld a, (me_num_enemy)
    ld b, #0x00
    ld c, #_ee_size
    call _sr_redraw_vector



    ;; Físicas de los enemigos
    ld iy, #enemy_vector
    ld a, (me_num_enemy)
    ld b, #0x00
    ld c, #_ee_size

    
    cp #00
    jr z, gl_end_physics
    gl_loop_enemy_vector:
    
        push af
        push bc
        ld a, _ee_disabled(iy) ; Si la entidad está deshabilitada no se comprueban sus colisiones
        cp #0x00
        jr nz, gl_entity_disabled
            call _sa_manage_enemy_ai
            call _sp_manage_enemy_physics

        gl_entity_disabled:

        pop bc
        pop af
        add iy, bc
        dec a
        jr nz, gl_loop_enemy_vector


gl_end_physics:;------------------------
    
    ;; Dibujar interactuables
    ld iy, #interactable_vector
    ld a, (mi_num_interactable)
    ld b, #0x00
    ld c, #_ei_size
    call _sr_draw_entity_vector

    ;; Dibujar enemigos
    ld iy, #enemy_vector
    ld a, (me_num_enemy)
    ld b, #0x00
    ld c, #_ee_size
    call _sr_draw_entity_vector

    ;; Dibujar jugadores
    ld iy, #player_2
    call _sr_draw_entity
    ld iy, #player_1
    call _sr_draw_entity


    call _sr_swap_buffers
    call cpct_waitVSYNC_asm


    jp _mg_game_loop






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

    call _init_interruptions

    ld de, #_ambient_sound
    call cpct_akp_musicInit_asm

    ld a, #0x00
    ;;call cpct_akp_setFadeVolume_asm

    ld c, #0x01
    call cpct_setVideoMode_asm

    ld hl, #_g_palette
    ld de, #0x0004
    call cpct_setPalette_asm

    ld hl, #0x0B10
    call cpct_setPALColour_asm

    call _sr_init_buffers
    
    ret