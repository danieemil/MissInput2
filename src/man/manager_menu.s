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

.include "man/manager_menu.h.s"

.area _DATA


    ;menu_keys:: .db #0x00          ;; bit0 -> Actual key_down  |  bit1 -> Previous key_down
                                    ;; bit2 -> Actual key_up    |  bit3 -> Previous key_up
                                    ;; bit4 -> Actual key_press |  bit5 -> Previous key_press

    ;selected: .db #0x00             ;; Indica qué opción está seleccionada



.area _CODE



;;==================================================================
;;                       MAIN MENU INIT
;;------------------------------------------------------------------
;; Inicializa los elementos del menú principal
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
_mm_main_menu_init:

    ;; Pantalla de transición breve
    ld b, #0xF0
    call _sr_fill_backbuffer
    call _sr_swap_buffers
    ld b, #0x10
    call cpct_waitHalts_asm


    ;; Descomprimimos el tileset
    ld hl, #_menu_tileset_end
    ld de, #TILESET_START + TILESET_SIZE - 1
    call cpct_zx7b_decrunch_s_asm

    ;; Descomprimimos el mapa
    ld hl, #_main_menu_map_end
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

    ;; Dibujar opciones del menú principal
    ld a, (mg_front_buffer)
    ld hl, #MM_SINGLEPLAYER_POS
    ld de, #mm_singleplayer
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #MM_MULTIPLAYER_POS
    ld de, #mm_multiplayer
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #MM_OPTIONS_POS
    ld de, #mm_options
    call _sr_draw_string

    ;; Para que no se vuelva a pulsar otra opción por error
    ld b, #0x20
    call cpct_waitHalts_asm

    ret



;;==================================================================
;;                       MAIN MENU LOOP
;;------------------------------------------------------------------
;; Bucle de ejecución del menú principal
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mm_main_menu_loop:


    mml_loop:

    call _su_get_menu_key_input
    jr z, mml_end_loop

    
    mml_check_single_player:
    cp #0x01
    jr nz, mml_check_multipayer
mml_default_option:
        ld a, #GS_SINGLEPLAYER
        ld (mg_game_state), a

        ;; Transición
        ld b, #0xF0
        call _sr_fill_backbuffer

        call _sr_swap_buffers

        ld hl, #_tileset_end
        ld de, #TILESET_START + TILESET_SIZE - 1
        call cpct_zx7b_decrunch_s_asm

        ;; Para que no se vuelva a pulsar otra opción por error
        ld b, #0x50
        call cpct_waitHalts_asm

        call _mg_game_init
        jp _mg_game_loop


    mml_check_multipayer:
    cp #0x02
    jr nz, mml_check_options

        ld a, #GS_MULTIPLAYER
        ld (mg_game_state), a

        ;; Transición
        ld b, #0xF0
        call _sr_fill_backbuffer

        call _sr_swap_buffers

        ;; Para que no se vuelva a pulsar otra opción por error
        ld b, #0x50
        call cpct_waitHalts_asm

        call _mg_game_init
        jp _mg_game_loop

    mml_check_options:
    cp #0x03
    jr nz, mml_check_default_option

        call _mm_options_menu_init
        jp _mm_options_menu_loop
    

    mml_check_default_option:
    cp #0x0A
    jr z, mml_default_option



    mml_end_loop:

    ;; Gestión de sprites por si no es solo una imagen que ocupa la pantalla entera


    call cpct_waitVSYNC_asm


    jr mml_loop

    ret



;;==================================================================
;;                       OPTIONS MENU INIT
;;------------------------------------------------------------------
;; Inicializa los elementos del menú de controles
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
_mm_options_menu_init:


    ;; Pantalla de transición breve
    ld b, #0xF0
    call _sr_fill_backbuffer
    call _sr_swap_buffers
    ld b, #0x10
    call cpct_waitHalts_asm

    ;; Descomprimimos el mapa
    ld hl, #_options_menu_map_end
    ld de, #TILEMAP_START + TILEMAP_MENU_SIZE - 1
    call cpct_zx7b_decrunch_s_asm


    ;; Dibujar tilemap en el frontbuffer
    ld a, (mg_front_buffer)
    ld h, a
    ld l, #0x00
    ld de, #TILEMAP_START
    call cpct_etm_drawTilemap4x8_ag_asm

    ld a, (mg_front_buffer)
    ld hl, #OM_CONTROLS_POS
    ld de, #om_controls
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #OM_P1CONTROLS_POS
    ld de, #om_p1controls
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #OM_P2CONTROLS_POS
    ld de, #om_p2controls
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #OM_ACCESSIBILITY_POS
    ld de, #om_accessibility
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #OM_GODMODE_POS
    ld de, #om_godmode
    call _sr_draw_string

    call _mm_draw_god_mode

    ld a, (mg_front_buffer)
    ld hl, #OM_PALETTE_POS
    ld de, #om_palette
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #OM_RESTORE_POS
    ld de, #om_restore
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #OM_BACK_POS
    ld de, #om_back
    call _sr_draw_string







    ret



;;==================================================================
;;                     OPTIONS MENU LOOP
;;------------------------------------------------------------------
;; Bucle de ejecución del menú de opciones
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mm_options_menu_loop:

    oml_loop:

    call _su_get_menu_key_input
    jr z, oml_loop

    oml_check_controls_player_1:
    cp #0x01
    jr nz, oml_check_controls_player_2
        ;; Para que no se pulse la misma tecla por error

        ld a, (mg_front_buffer)
        call _sr_draw_submenu_box

        ld a, (mg_front_buffer)
        ld hl, #OM_CHANGECONTROLS_POS
        ld de, #om_changecontrols
        call _sr_draw_string

        ld b, #0x50
        call cpct_waitHalts_asm

        ld hl, #mg_p1_keys
        call _su_set_player_keys

        call _mm_options_menu_init
        jr oml_loop


    oml_check_controls_player_2:
    cp #0x02
    jr nz, oml_check_god_mode
        ;; Para que no se pulse la misma tecla por error

        ld a, (mg_front_buffer)
        call _sr_draw_submenu_box

        ld a, (mg_front_buffer)
        ld hl, #OM_CHANGECONTROLS_POS
        ld de, #om_changecontrols
        call _sr_draw_string

        ld b, #0x50
        call cpct_waitHalts_asm

        ld hl, #mg_p2_keys
        call _su_set_player_keys

        call _mm_options_menu_init
        jr oml_loop


    oml_check_god_mode:
    cp #0x03
    jr nz, oml_check_palette
        ;; Para que no se pulse la misma tecla por error
        oml_toggle_god_mode:

        ld a, (god_mode)
        xor #0x01
        ld (god_mode), a

        call _mm_draw_god_mode

        ld b, #0x50
        call cpct_waitHalts_asm
        
        jr oml_loop

    oml_check_palette:
    cp #0x04
    jr nz, oml_check_default_keys

        ld hl, #palette_index
        ld a, (palette)
        inc a
        ld (palette), a
        sla a
        sla a
        ld b, #0x00
        ld c, a
        add hl, bc

        ld a, (hl)
        cp #0xFF
        jr nz, oml_change_palette
            xor a
            ld (palette), a
            ld hl, #palette_index

        oml_change_palette:
        ld de, #0x0004
        call cpct_setPalette_asm

        ld b, #0x50
        call cpct_waitHalts_asm

        jp oml_loop

    oml_check_default_keys:
    cp #0x05
    jr nz, oml_check_main_menu
        ;; Reiniciar las teclas de los jugadores
        ld hl, #mg_p1_keys
        ld (hl), #<P1_KEY_R
        inc hl
        ld (hl), #>P1_KEY_R
        inc hl
        ld (hl), #<P1_KEY_L
        inc hl
        ld (hl), #>P1_KEY_L
        inc hl
        ld (hl), #<P1_KEY_J
        inc hl
        ld (hl), #>P1_KEY_J
        inc hl

        ld hl, #mg_p2_keys
        ld (hl), #<P2_KEY_R
        inc hl
        ld (hl), #>P2_KEY_R
        inc hl
        ld (hl), #<P2_KEY_L
        inc hl
        ld (hl), #>P2_KEY_L
        inc hl
        ld (hl), #<P2_KEY_J
        inc hl
        ld (hl), #>P2_KEY_J
        inc hl

        ;; Reiniciar el god mode
        xor a
        ld (god_mode), a

        call _mm_draw_god_mode

        ;; Reiniciar la paleta
        xor a
        ld (palette), a
        ld hl, #palette_index
        ld de, #0x0004
        call cpct_setPalette_asm


        jp oml_loop

    oml_check_main_menu:
    cp #0x06
    jr nz, oml_check_back
        oml_go_back:
        call _mm_main_menu_init
        jp _mm_main_menu_loop

    oml_check_back:
    cp #0x0B
    jp nz, oml_loop
        jr oml_go_back

    jp oml_loop

    ret



;;==================================================================
;;                       PAUSE MENU INIT
;;------------------------------------------------------------------
;; Inicializa los elementos del menú de pausa
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mm_pause_menu_init:

    call cpct_akp_SFXStopAll_asm
    call cpct_akp_stop_asm

    ;; Para que no se vuelva a pulsar otra opción por error
    
    call _sr_copy_back_to_front

    ld a, (mg_front_buffer)
    call _sr_draw_submenu_box

    ld a, (mg_front_buffer)
    ld hl, #PM_PAUSE_POS
    ld de, #pm_pause
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #PM_RETURN_POS   
    ld de, #pm_return
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #PM_MAINMENU_POS   
    ld de, #pm_mainmenu
    call _sr_draw_string


    
    ld b, #0x50
    call cpct_waitHalts_asm

    ret



;;==================================================================
;;                       PAUSE MENU LOOP
;;------------------------------------------------------------------
;; Bucle de ejecución del menú de pausa
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mm_pause_menu_loop:


    pml_loop:

    call _su_get_menu_key_input
    jr z, pml_end_loop

    pml_check_resume:
    cp #0x01
    jr z, pml_game_loop
    cp #0x0A
    jr z, pml_game_loop
    cp #0x0B
    jr z, pml_game_loop

        jr pml_check_main_menu

        pml_game_loop:
        
        ;; Borrar lo que hay en el frontbuffer copiando el contenido del backbuffer
        ;
        call _sr_swap_buffers


        ;; Dibujar tilemap en el backbuffer
        ld a, (mg_back_buffer)
        ld h, a
        ld l, #0x00
        ld bc, #HUD_SIZE
        add hl, bc
        ld de, #TILEMAP_START
        call cpct_etm_drawTilemap4x8_ag_asm


        ;; Para que no se vuelva a pulsar otra opción por error
        ld b, #0x50
        call cpct_waitHalts_asm

        ld a, #0x01
        ld (playing_music), a
        ld (timer_state), a

        jp _mg_game_loop
        ;ret

    pml_check_main_menu:
    cp #0x02
    jr nz, pml_end_loop

        call _sr_swap_buffers

        call _su_reset_data
        call _mm_main_menu_init
        ;pop hl  ;vacia la pila para no hacer ret (Si explota algo ya sabes)
        jp _mm_main_menu_loop


    pml_end_loop:

    ;; Gestión de sprites por si no es solo una imagen que ocupa la pantalla entera


    call cpct_waitVSYNC_asm


    jr pml_loop

    ret





;;==================================================================
;;                       CONGRATS MENU INIT
;;------------------------------------------------------------------
;; Inicializa los elementos del menú de final del juego
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mm_congrats_menu_init:


    ;; Descomprimimos el tileset
    ld hl, #_menu_tileset_end
    ld de, #TILESET_START + TILESET_SIZE - 1
    call cpct_zx7b_decrunch_s_asm

    ;; Descomprimimos el mapa
    ld hl, #_end_menu_map_end
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


    ld a, (mg_front_buffer)
    ld hl, #EM_COMPLETED 
    ld de, #em_completed
    call _sr_draw_string


    ld a, (mg_front_buffer)
    ld hl, #EM_SCORE 
    ld de, #em_score
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #EM_DEATHS 
    ld de, #em_deaths
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #EM_P1 
    ld de, #em_p1
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #EM_P2 
    ld de, #em_p2
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #EM_TIME
    ld de, #em_time
    call _sr_draw_string

    ld a, (mg_front_buffer)
    ld hl, #EM_CONTINUE 
    ld de, #em_key
    call _sr_draw_string

;;PLAYER 1 DATA ------------------------------------
    ld iy, #player_1
    ld a, (mg_front_buffer)
    ld hl, #EM_P1_SCORE_DCM
    ld b, a
    ld c, #0x00
    add hl, bc
    ex de, hl
    ld a, _ep_score_cdm(iy)
    push de
    call _sr_draw_number_2d
    pop de
    inc de
    inc de
    ld a, _ep_score_mc(iy)
    push de
    call _sr_draw_number_2d
    pop de
    inc de
    inc de
    ld a, _ep_score_du(iy)
    push de
    call _sr_draw_number_2d
    pop de
    inc de
    inc de
    ld hl, #_hud_spr_00
    ld bc, #0x0501
    call cpct_drawSprite_asm

    ld a, (mg_front_buffer)
    ld hl, #EM_P1_DEATHS_MC
    ld b, a
    ld c, #0x00
    add hl, bc
    ex de, hl
    ld a, _ep_deaths_mc(iy)
    push de
    call _sr_draw_number_2d
    pop de
    inc de
    inc de
    ld a, _ep_deaths_du(iy)
    call _sr_draw_number_2d

    ld a, (mg_game_state)
    cp #GS_SINGLEPLAYER
    jr nz, cmi_draw_p2_data

        ld a, (mg_front_buffer)
        ld hl, #EM_P2_SCORE_DCM
        ld de, #em_no_p2_score
        call _sr_draw_string

        ld a, (mg_front_buffer)
        ld hl, #EM_P2_DEATHS_MC
        ld de, #em_no_p2_deaths
        call _sr_draw_string

        jr cmi_end_draw_player_data

cmi_draw_p2_data:
;;PLAYER 2 DATA ------------------------------------
    ld iy, #player_2
    ld a, (mg_front_buffer)
    ld hl, #EM_P2_SCORE_DCM
    ld b, a
    ld c, #0x00
    add hl, bc
    ex de, hl
    ld a, _ep_score_cdm(iy)
    push de
    call _sr_draw_number_2d
    pop de
    inc de
    inc de
    ld a, _ep_score_mc(iy)
    push de
    call _sr_draw_number_2d
    pop de
    inc de
    inc de
    ld a, _ep_score_du(iy)
    push de
    call _sr_draw_number_2d
    pop de
    inc de
    inc de
    ld hl, #_hud_spr_00
    ld bc, #0x0501
    call cpct_drawSprite_asm

    ld a, (mg_front_buffer)
    ld hl, #EM_P2_DEATHS_MC
    ld b, a
    ld c, #0x00
    add hl, bc
    ex de, hl
    ld a, _ep_deaths_mc(iy)
    push de
    call _sr_draw_number_2d
    pop de
    inc de
    inc de
    ld a, _ep_deaths_du(iy)
    call _sr_draw_number_2d

cmi_end_draw_player_data:

;;DIBUJADO DE CRONOMETRO--------------------------------

    ld iy, #player_2
    ld a, (mg_front_buffer)
    ld hl, #EM_TOTAL_TIME
    ld b, a
    ld c, #0x00
    add hl, bc
    ex de, hl
    ld a, (hours)
    push de
    call _sr_draw_number_2d
    pop de

    inc de
    inc de
    ld hl, #_dospuntos_spr
    ld bc, #0x0501
    push de
    call cpct_drawSprite_asm
    pop de

    inc de
    ld a, (minutes)
    push de
    call _sr_draw_number_2d
    pop de

    inc de
    inc de
    ld hl, #_dospuntos_spr
    ld bc, #0x0501
    push de
    call cpct_drawSprite_asm
    pop de

    inc de
    ld a, (seconds)
    push de
    call _sr_draw_number_2d
    pop de


    ;; Para que no se salte la pantalla final por error
    ld b, #0xA0
    call cpct_waitHalts_asm

    ret



;;==================================================================
;;                       CONGRATS MENU LOOP
;;------------------------------------------------------------------
;; Bucle de ejecución del menú de final del juego
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mm_congrats_menu_loop:

    cml_loop:
    
    ;; Escanear teclado
    halt
    call cpct_scanKeyboard_asm

    call cpct_isAnyKeyPressed_f_asm
    cp #0x00
    jr z, cml_loop

    call _su_reset_data
    call _mm_main_menu_init
    jp _mm_main_menu_loop


    jr cml_loop

    ret


;;==================================================================
;;                        DRAW GOD MODE
;;------------------------------------------------------------------
;; Dibuja el estado de GOD MODE para el menú de opciones
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mm_draw_god_mode:

    ld hl, #OM_OFF_POS
    ld de, #om_off

    ld a, (god_mode)
    cp #0x00
    jr z, dgm_not_god

        ld hl, #OM_ON_POS
        ld de, #om_on

    dgm_not_god:

    ld a, (mg_front_buffer)
    call _sr_draw_string

    ret
