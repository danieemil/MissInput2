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

    ld b, #0xF0
    call _sr_fill_backbuffer

    call _sr_swap_buffers

    ;; Para que no se vuelva a pulsar otra opción por error
    ld b, #0x50
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

    ;ld a, (mg_front_buffer)
    ;call _sr_draw_submenu_box



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

        ld hl, #_tileset_end
        ld de, #TILESET_START + TILESET_SIZE - 1
        call cpct_zx7b_decrunch_s_asm

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


    ld b, #0xF0
    call _sr_fill_backbuffer

    call _sr_swap_buffers

    ;; Para que no se vuelva a pulsar otra opción por error
    ld b, #0x50
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
        ld b, #0x50
        call cpct_waitHalts_asm

        ld hl, #mg_p1_keys
        call _su_set_player_keys
        jr oml_loop

    oml_check_controls_player_2:
    cp #0x02
    jr nz, oml_check_god_mode
        ;; Para que no se pulse la misma tecla por error
        ld b, #0x50
        call cpct_waitHalts_asm

        ld hl, #mg_p2_keys
        call _su_set_player_keys
        jr oml_loop

    oml_check_god_mode:
    cp #0x03
    jr nz, oml_check_palette
        ;; Para que no se pulse la misma tecla por error
        oml_toggle_god_mode:

        call _sr_swap_buffers

        ld b, #0x50
        call cpct_waitHalts_asm
        
        call _sr_swap_buffers

        ld a, (god_mode)
        xor #0x01
        ld (god_mode), a
        
        jr oml_loop

    oml_check_palette:
    cp #0x04
    jr nz, oml_check_default_keys
        ld b, #0x50
        call cpct_waitHalts_asm

        jr oml_loop

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

        ;; Reiniciar la paleta


        jr oml_loop

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

    ;; Cargamos la imagen en el frontbuffer
    ;ld de, #_main_menu_screen_end
    ;call _sr_decompress_image_on_video_memory

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


        ;; Seleccionar tileset
        ;ld b, #23 ;;Height
        ;ld c, #20 ;;Width
        ;ld de, #20
        ;ld hl, #_tileset_spr_00
        ;call cpct_etm_setDrawTilemap4x8_ag_asm

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