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

    ;; Cargamos la imagen en el frontbuffer
    ld de, #_main_menu_screen_end
    call _sr_decompress_image_on_video_memory

    ;; Para que no se vuelva a pulsar otra opción por error
    ld b, #0x50
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

        call _mg_game_init
        call _mg_game_loop


    mml_check_multipayer:
    cp #0x02
    jr nz, mml_check_controls

        ld a, #GS_MULTIPLAYER
        ld (mg_game_state), a

        call _mg_game_init
        call _mg_game_loop

    mml_check_controls:
    cp #0x03
    jr nz, mml_check_credits

        call _mm_controls_menu_init
        jp _mm_controls_menu_loop

    mml_check_credits:
    cp #0x04
    jr nz, mml_check_default_option

        call _mm_credits_menu_init
        jp _mm_credits_menu_loop
    
    mml_check_default_option:
    cp #0x0A
    jr z, mml_default_option



    mml_end_loop:

    ;; Gestión de sprites por si no es solo una imagen que ocupa la pantalla entera


    call cpct_waitVSYNC_asm


    jr mml_loop

    ret




;;==================================================================
;;                       CONTROLS MENU INIT
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
_mm_controls_menu_init:

    ;; Para que no se vuelva a pulsar otra opción por error
    ld b, #0x50
    call cpct_waitHalts_asm

    ret



;;==================================================================
;;                     CONTROLS MENU LOOP
;;------------------------------------------------------------------
;; Bucle de ejecución del menú de controles
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
_mm_controls_menu_loop:


    cml_loop:

    call _su_get_menu_key_input
    jr z, cml_loop

    cml_check_first:
    cp #0x01
    jr nz, cml_check_second


    cml_check_second:
    cp #0x02
    jr nz, cml_check_third


    cml_check_third:
    cp #0x03
    jr nz, cml_check_back



    cml_check_back:
    cp #0x0B
    jr nz, crml_loop

        call _mm_main_menu_init
        jp _mm_main_menu_loop

    jr cml_loop

    ret



;;==================================================================
;;                      CREDITS MENU INIT
;;------------------------------------------------------------------
;; Inicializa los elementos del menú de créditos
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
_mm_credits_menu_init:

    ;; Para que no se vuelva a pulsar otra opción por error
    ld b, #0x50
    call cpct_waitHalts_asm

    ret



;;==================================================================
;;                     CREDITS MENU LOOP
;;------------------------------------------------------------------
;; Bucle de ejecución del menú de créditos
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
_mm_credits_menu_loop:


    crml_loop:

    call _su_get_menu_key_input
    jr z, crml_loop

    crml_check_first:
    cp #0x01
    jr nz, crml_check_second


    crml_check_second:
    cp #0x02
    jr nz, crml_check_third


    crml_check_third:
    cp #0x03
    jr nz, crml_check_back


    crml_check_back:
    cp #0x04
    jr nz, crml_loop

        call _mm_main_menu_init
        jp _mm_main_menu_loop

    jr crml_loop

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
    ld de, #_main_menu_screen_end
    call _sr_decompress_image_on_video_memory

    ;; Para que no se vuelva a pulsar otra opción por error
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
        call _sr_copy_back_to_front

        ;; Para que no se vuelva a pulsar otra opción por error
        ld b, #0x50
        call cpct_waitHalts_asm

        ld a, #0x01
        ld (playing_music), a
        ld (timer_state), a

        jp _mg_game_loop


    pml_check_main_menu:
    cp #0x02
    jr nz, pml_end_loop

        call _mm_main_menu_init
        jp _mm_main_menu_loop


    pml_end_loop:

    ;; Gestión de sprites por si no es solo una imagen que ocupa la pantalla entera


    call cpct_waitVSYNC_asm


    jr pml_loop

    ret