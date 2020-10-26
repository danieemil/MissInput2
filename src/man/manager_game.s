.include "man/manager_game.h.s"

.area _DATA
    mg_front_buffer:: .db #0xC0
    mg_back_buffer:: .db #0x80
    mg_game_state:: .db #0x00

    actual_level:: .db #0x00

    ;CHECKPOINT DATA
    checkpoint_x::   .db #0x10
    checkpoint_y::   .db #0x30
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
    

    ;; Temporizador
    timer_state::   .db #0x00       ;0 -> Temporizador pausado, 1 -> Temporizador contando
    seconds_dc::    .db #0x00       ;Décimas y centésimas de segundo (0 - 100)
    seconds::       .db #0x00       ;Segundos (0 - 60)
    minutes::       .dw #0x0000     ;Minutos (0 - 65536) 65536 minutos = 1092 horas :////


    ;; Música
    playing_music:: .db #0x00       ;0 -> Música parada, 1 -> Música reproduciéndose


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
_mg_game_init:

    ld de, #_ambient_sound
    call cpct_akp_musicInit_asm
    ld a, #0x01
    ld (playing_music), a
    ld (timer_state), a
    
    ;; Llamamos a level factory para que genere el nivel(map_pruebas)
    ld de, #_map_00_end
    call _sl_generate_level
    

    ;; Seleccionar tileset
    ld b, #25 ;;Height
    ld c, #20 ;;Width
    ld de, #20
    ld hl, #_tileset_spr_00
    call cpct_etm_setDrawTilemap4x8_ag_asm

    ;; Dibujar tilemap en el backbuffer
    ld a, (mg_back_buffer)
    ld h, a
    ld l, #0x00
    ld bc, #HUD_SIZE
    add hl, bc
    ld de, #TILEMAP_START
    call cpct_etm_drawTilemap4x8_ag_asm

    ;; Copiar tilemap en el frontbuffer
    call _sr_copy_back_to_front

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

    call _su_get_key_input
    dec a
    jr nz, gl_game_not_paused

        ld a, #0x00
        ld (playing_music), a
        ld (timer_state), a
        call _sr_swap_buffers
        call _mm_pause_menu_init
        jp _mm_pause_menu_loop

    gl_game_not_paused:
;;FISICAS DEL JUGADOR-------------------
    push de

    ;Fisicas P1
    ld iy, #player_1

    call _sr_redraw_tiles           ;;Redibujamos los tiles de fondo
    ld b, _eph_x(iy)                ;;Establecemos la posicion actual a la pasada
    ld _ed_pre_x(iy), b
    ld b, _eph_y(iy)
    ld _ed_pre_y(iy), b
    ld b, _eph_offset(iy)
    ld _ed_pre_o(iy), b

    pop de
    push de

    ld  a, (p1_key_gameplay)
    ld  e, a
    call _sy_manage_player_physics  ;;Aplicamos las fisicas al jugador 1

    pop de
    ld a, (mg_game_state)
    cp #GS_MULTIPLAYER              ;;Comprobamos si esta en modo multijugador
    jr nz, gl_no_p2_physics

    ;Fisicas P2
    ld iy, #player_2
    push de

    call _sr_redraw_tiles           ;;Redibujamos los tiles de fondo
    ld b, _eph_x(iy)                ;;Establecemos la posicion actual a la pasada
    ld _ed_pre_x(iy), b
    ld b, _eph_y(iy)
    ld _ed_pre_y(iy), b
    ld b, _eph_offset(iy)
    ld _ed_pre_o(iy), b


    pop de
    ld d, e
    ld a, (p2_key_gameplay)
    ld e, a
    call _sy_manage_player_physics

gl_no_p2_physics:

    ;; Dibujar interactuables
    ld iy, #interactable_vector
    ld a, (mi_num_interactable)
    ld b, #0x00
    ld c, #_ei_size
    call _sr_draw_entity_vector



    ;; Gestión de los enemigos
    ld iy, #enemy_vector
    ld a, (me_num_enemy)
    ld b, #0x00
    ld c, #_ee_size

    cp #00
    jr z, gl_end_physics
    gl_loop_enemy_vector:
    
        push af
        push bc

        call _sr_redraw_tiles_fast
        ld b, _eph_x(iy)                ;;Establecemos la posicion actual a la pasada
        ld _ed_pre_x(iy), b
        ld b, _eph_y(iy)
        ld _ed_pre_y(iy), b
        ld b, _eph_offset(iy)
        ld _ed_pre_o(iy), b

        ld a, _ee_disabled(iy) ; Si la entidad está deshabilitada no se comprueban sus colisiones
        cp #0x00
        jr nz, gl_entity_disabled
            
            ;; Loop de ejecución de cada enemigo activo
            call _sa_manage_enemy_ai
            call _sp_manage_enemy_physics
            
            ld a, _ee_disabled(iy)
            cp #0x00
            jr nz, gl_entity_disabled
                call _sr_draw_entity
            jr gl_next_entity

        gl_entity_disabled:
            dec _ee_disabled(iy)
        
        gl_next_entity:
        pop bc
        pop af
        add iy, bc
        dec a
        jr nz, gl_loop_enemy_vector


gl_end_physics:;------------------------

    ;;Animaciones del jugador 2
    ld a, (mg_game_state)
    cp #GS_MULTIPLAYER              ;;Comprobamos si esta en modo multijugador
    jr nz, gl_no_p2_render

    ld iy, #player_2
    call _sr_manage_player_animations
    ld hl, #0x0438
    call _sr_apply_animation
    call _sr_draw_entity

gl_no_p2_render:

    ;;Animaciones del jugador 1
    ld iy, #player_1
    call _sr_manage_player_animations
    ld hl, #0x0000
    call _sr_apply_animation
    call _sr_draw_entity


    call _sr_swap_buffers
    call cpct_waitVSYNC_asm


    jp _mg_game_loop
