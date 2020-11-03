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


.include "man/manager_game.h.s"

.area _DATA
    mg_front_buffer:: .db #0xC0
    mg_back_buffer:: .db #0x80
    mg_game_state:: .db #0x00

    actual_level:: .db #0x00
    actual_level_attr:: .db #0x00
    transition:: .db #0xFF

    god_mode:: .db #0x00

    tries:: .db #0x04
    level_score:: .dw #0x0100

    ;CHECKPOINT DATA
    checkpoint_x::   .db #0x10
    checkpoint_y::   .db #0xA7
    checkpoint_level:: .db #0x00

    ;INTERACTABLE DATA
    door_id:: .db #0xFF
    collectable_id:: .db #0xFF

    p1_key_gameplay:: .db #0x00         ;; bit0 -> Actual key_j  |  bit1 -> Previous key_j  |  bit 3 -> No Jump
    p2_key_gameplay:: .db #0x00

    mg_p1_keys:
    p1_key_r:: .dw #P1_KEY_R      ;;Default - 'E'
    p1_key_l:: .dw #P1_KEY_L      ;;Default - 'W'
    p1_key_j:: .dw #P1_KEY_J      ;;Default - 'Q'

    mg_p2_keys:
    p2_key_r:: .dw #P2_KEY_R      ;;Default - 'I'
    p2_key_l:: .dw #P2_KEY_L      ;;Default - 'O'
    p2_key_j:: .dw #P2_KEY_J      ;;Default - 'P'

    p1_counter: .db #0xFF
    p2_counter: .db #0xFF

;                     0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22
    jump_table:: .db -3, -3, -3, -2, -2, -2, -2, -1, -1, -1, -1,  0,  0,  0,  1,  1,  1,  1,  2,  2,  2,  2,  3, #0x80

;                           0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22
    enemy_jump_table:: .db -3, -3, -3, -2, -2, -2, -2, -1, -1, -1, -1,  0,  0,  0,  1,  1,  1,  1,  1,  1,  2,  2,  2, #0x80

    ;; Temporizador
    timer_state::   .db #0x00       ;0 -> Temporizador pausado, 1 -> Temporizador contando
    seconds_dc::    .db #0x00       ;Décimas y centésimas de segundo (0 - 100)
    seconds::       .db #0x00       ;Segundos (0 - 60)
    minutes::       .db #0x00       ;Minutos (0 - 60)
    hours::         .db #0x00       ;Horas(0 - 100)


    ;; Música
    playing_music:: .db #0x00       ;0 -> Música parada, 1 -> Música reproduciéndose
    music_muted:: .db #0x00         ;0 -> Música no muteada, 1 -> Música muteada.
    mute_key_state:: .db #0x00      ;0b000000YX -> X = Estado actual, Y = Estado anterior

    ;; Paleto
    palette:: .db #0x00


.area _CODE






;;==================================================================
;;                   GAME INIT
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
    ld de, #_effects
    call cpct_akp_SFXInit_asm

    ld a, (music_muted)
    xor #0x01
    ld (playing_music), a
    ld (timer_state), a
    
    ;; Llamamos a level factory para que genere el nivel(map_pruebas)
    ld a, (actual_level)
    ld c, a
    sla c
    sla c
    ld b, #0x00
    ld hl, #level_index
    add hl, bc

    ld e, (hl)
    inc hl
    ld d, (hl)
    inc hl
    ld a, (hl)
    ld (actual_level_attr), a
    inc hl
    ld c, (hl)
    ;DE -> Tilemap_end_ptr
    ;C  -> Otros (Por ahora paleta o algo :/)

    ld a, #0xFF
    ld (transition), a
    ld (tries), a
    ld hl, #0x0100
    ld (level_score), hl

    ld a, (actual_level)
    ld b, a
    ld a, (checkpoint_level)
    sub b
    jr nz, gi_calavera
        ld a, #0x04
        ld (tries), a

    gi_calavera:

    call _sl_generate_level

    ld b, #0xF0
    call _sr_fill_backbuffer
    
    ;; Descomprimir el tileset
    ld hl, #_tileset_end
    ld de, #TILESET_START + TILESET_SIZE - 1
    call cpct_zx7b_decrunch_s_asm

    ;; Seleccionar tileset
    ld b, #23 ;;Height
    ld c, #20 ;;Width
    ld de, #20
    ld hl, #TILESET_START
    call cpct_etm_setDrawTilemap4x8_ag_asm


    ;; Dibujar tilemap en el backbuffer
    ld a, (mg_back_buffer)
    ld h, a
    ld l, #0x00
    ld bc, #HUD_SIZE
    add hl, bc
    ld de, #TILEMAP_START
    call cpct_etm_drawTilemap4x8_ag_asm


    call _sr_draw_HUD
    
    

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

        ;; Parar la música y el temporizador
        ld a, #0x00
        ld (playing_music), a
        ld (timer_state), a
        call cpct_akp_stop_asm
        call cpct_akp_SFXStopAll_asm

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

    bit 2, _ep_player_attr(iy)
    jr z, gl_check_p1_death

        ld a, _ep_anim_counter(iy)
        cp #0xFF
        jr z, gl_check_p1_death
        cp #0x00
        jr nz, gl_continue_respawn_anim_p1

            res 2, _ep_player_attr(iy)

gl_continue_respawn_anim_p1:
        dec a
        ld _ep_anim_counter(iy), a
        jr gl_check_p2

gl_check_p1_death:
    bit 3, _ep_player_attr(iy)
    jr z, gl_check_p1_physics

        ld a, _ep_anim_counter(iy)
        cp #0xFF
        jr z, gl_check_p1_physics

        dec a
        ld _ep_anim_counter(iy), a
        
        cp #0x00
        call z, _sp_player_death

        jr gl_check_p2
        

gl_check_p1_physics:
    ld a, _ep_player_attr(iy)
    ld b, a
    and #0b00010000
    jr nz, gl_check_p2
    ld a, b
    and #0b01100000
    jr z, gl_no_p1_in_door

        ld de, #0x0000

    gl_no_p1_in_door:
    call _sy_manage_player_physics  ;;Aplicamos las fisicas al jugador 1




;;PLAYER 2============================================================================

    gl_check_p2:

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


    bit 2, _ep_player_attr(iy)
    jr z, gl_check_p2_death

        ld a, _ep_anim_counter(iy)
        cp #0xFF
        jr z, gl_check_p2_death
        cp #0x00
        jr nz, gl_continue_respawn_anim_p2

            res 2, _ep_player_attr(iy)

gl_continue_respawn_anim_p2:
        dec a
        ld _ep_anim_counter(iy), a
        jr gl_no_p2_physics

gl_check_p2_death:
    bit 3, _ep_player_attr(iy)
    jr z, gl_check_p2_physics

        ld a, _ep_anim_counter(iy)
        cp #0xFF
        jr z, gl_check_p2_physics
        
        dec a
        ld _ep_anim_counter(iy), a
        
        cp #0x00
        call z, _sp_player_death
        
        jr gl_no_p2_physics



gl_check_p2_physics:
    ld a, _ep_player_attr(iy)
    ld b, a
    and #0b00011000
    jr nz, gl_no_p2_physics
    ld a, b
    and #0b01100000
    jr z, gl_no_p2_in_door

        ld de, #0x0000

    gl_no_p2_in_door:
    call _sy_manage_player_physics

gl_no_p2_physics:

    ;;GESTION DEL FIN DEL NIVEL---------------------------------------
    ld iy, #player_2
    bit 6, _ep_player_attr(iy)
    jr nz, gl_end_level
    ld iy, #player_1
    bit 6, _ep_player_attr(iy)
    jr z, gl_end_level_continue
gl_end_level:
    call _sl_manage_end_level

gl_end_level_continue:

    ld a, (transition)
    cp #0xFF
    jr z, gl_no_transition

        call _sl_transition_level
        cp #0x00
        jr nz, gl_no_transition

            ;CAMBIO DE NIVEL

            ;; Parar la música y el temporizador
            ld a, #0x00
            ld (playing_music), a
            ld (timer_state), a
            call cpct_akp_SFXStopAll_asm
            call cpct_akp_stop_asm

            ;; Pantalla de transición entre niveles
            
            ;; Descomprimimos el tileset
            ld hl, #_menu_tileset_end
            ld de, #TILESET_START + TILESET_SIZE - 1
            call cpct_zx7b_decrunch_s_asm

            ;; Descomprimimos el mapa
            ld hl, #_level_complete_menu_map_end
            ld de, #TILEMAP_START + TILEMAP_MENU_SIZE - 1
            call cpct_zx7b_decrunch_s_asm

            ;; Cargamos y seleccionamos el tileset
            ld b, #25 ;;Height
            ld c, #20 ;;Width
            ld de, #20
            ld hl, #TILESET_START
            call cpct_etm_setDrawTilemap4x8_ag_asm

            ;; Dibujar tilemap en el frontbuffer
            ld a, (mg_front_buffer)
            ld h, a
            ld l, #0x00
            ld de, #TILEMAP_START
            call cpct_etm_drawTilemap4x8_ag_asm

            ld b, #0xFF
            call cpct_waitHalts_asm

            call _mg_game_init
            jp _mg_game_loop


gl_no_transition:

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
                ld de, #anim_enemy_S
                ld hl, #0x0480

                ld a, _ee_type(iy)
                cp #ET_SAW
                jr z, gl_continue_enemy_animation

                ld hl, #0x0300
                
                ld de, #anim_enemy_R
                cp #ET_ROCK
                jr z, gl_continue_enemy_animation

                    ld hl, #0x0000
                    
                    ld a, _eph_vx(iy)
                    cp #0x00
                    jp p, gl_continue_enemy_animation

                        ld de, #anim_enemy_L
                
gl_continue_enemy_animation:          
                call _sr_apply_animation
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

    ld iy, #player_2
    bit 4, _ep_player_attr(iy)
    jr z, gl_check_p2_render
        ld iy, #player_1
        bit 4, _ep_player_attr(iy)
        jr z, gl_no_p2_render
        jr gl_no_p1_render



gl_check_p2_render:
    ;;Animaciones del jugador 2
    ld a, (mg_game_state)
    cp #GS_MULTIPLAYER              ;;Comprobamos si esta en modo multijugador
    jr nz, gl_no_p2_render

    ld iy, #player_2
    call _sr_manage_player_animations
    ld hl, #0x0438
    cp #0x00
    jr z, gl_p2_continue_render
    
    ld hl, #0x00
    cp #0x01
    jr z, gl_p2_door_anim
    cp #0x02
    jr z, gl_p2_death_anim

        ld de, #anim_player_2_respawn
        jr gl_p2_continue_render

gl_p2_death_anim:
        ld de, #anim_player_2_death
        jr gl_p2_continue_render

gl_p2_door_anim:

        ld de, #anim_player_2_door

gl_p2_continue_render:
    call _sr_apply_animation
    call _sr_draw_entity

gl_no_p2_render:

    ld iy, #player_1
    bit 4, _ep_player_attr(iy)
    jr nz, gl_no_p1_render
    ;;Animaciones del jugador 1
    
    call _sr_manage_player_animations
    ld hl, #0x0000
    call _sr_apply_animation
    call _sr_draw_entity

gl_no_p1_render:

    call _sr_swap_buffers
    call cpct_waitVSYNC_asm


    jp _mg_game_loop
