.include "sys/system_user.h.s"

.area _DATA

.area _CODE



;;==================================================================
;;                           ADD SCORE
;;------------------------------------------------------------------
;; Anade puntuacion al jugador y la guarda en decimal
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Entity Player ptr
;;   E -> Score [Decenas, Unidades] EN DECIMAL
;;   D -> Score [Millares, Centenas] EN DECIMAL
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;   AF
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_su_add_score:

    ld a, _ep_score_du(iy)
    add e
    daa
    ld _ep_score_du(iy), a

    ld a, _ep_score_mc(iy)
    adc d
    daa
    ld _ep_score_mc(iy), a
    ret nc

    ld a, _ep_score_cdm(iy)
    inc a
    add #0x00
    daa 
    ld _ep_score_cdm(iy), a

    ret



;;==================================================================
;;                        GET KEY INPUT
;;------------------------------------------------------------------
;; Gestiona el input en función de las teclas que se han pulsado
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  DE ->  D = P1(key_r + key_l),  E = P2(key_r + key_l)
;;  p1_key_gameplay -> Estado actual y previo de la tecla de salto del jugador 1
;;  p2_key_gameplay -> Estado actual y previo de la tecla de salto del jugador 2
;;  A  -> Si se ha pulsado el botón de pausa o no
;;
;; DESTROYS:
;;  AF, BC, DE, HL, BC', DE', HL'
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_su_get_key_input:

    ld hl, #p1_key_gameplay     ;;Ponemos el actual_key en el previous_key
    sla (hl)                

    ld hl, #p2_key_gameplay
    sla (hl)

    halt
    call cpct_scanKeyboard_asm

    ld de, #0x0000
    
    call cpct_isAnyKeyPressed_f_asm
    cp #0x00
    ret z

    exx

;;Comprobar P1_key_r
    ld hl, (p1_key_r)
    call cpct_isKeyPressed_asm
    jr z, gki_check_p1_l

        exx
        inc d
        exx
        

;;Comprobar P1_key_l
gki_check_p1_l:
    ld hl, (p1_key_l)
    call cpct_isKeyPressed_asm
    jr z, gki_check_p1_j

        exx
        dec d
        exx


;;Comprobar P1_key_j
gki_check_p1_j:
    ld hl, (p1_key_j)
    call cpct_isKeyPressed_asm
    jr z, gki_check_p2_r

        ld hl, #p1_key_gameplay
        set 0, (hl)


;;Comprobar P2_key_r
gki_check_p2_r:
    ld hl, (p2_key_r)
    call cpct_isKeyPressed_asm
    jr z, gki_check_p2_l

        exx
        inc e
        exx

;;Comprobar P2_key_l
gki_check_p2_l:
    ld hl, (p2_key_l)
    call cpct_isKeyPressed_asm
    jr z, gki_check_p2_j

        exx
        dec e
        exx

;;Comprobar P2_key_j
gki_check_p2_j:
    ld hl, (p2_key_j)
    call cpct_isKeyPressed_asm
    jr z, gki_check_pause

        ld hl, #p2_key_gameplay
        set 0, (hl)
        jr gki_exit


gki_check_pause:
    ld hl, #Key_Esc
    call cpct_isKeyPressed_asm
    jr z, gki_exit
        ld a, #0x01
        jr gki_pause_exit

gki_exit:
    xor a
gki_pause_exit:
    exx
    ret




;;==================================================================
;;                        GET MENU KEY INPUT
;;------------------------------------------------------------------
;; Gestiona el input en función de las teclas que se han pulsado para los menús
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  A -> Número que se ha pulsado (0x00 si no se ha pulsado nada)
;;
;; DESTROYS:
;;  AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_su_get_menu_key_input:

    ;; Escanear teclado
    halt
    call cpct_scanKeyboard_asm

    xor a
    call cpct_isAnyKeyPressed_f_asm
    cp #0x00
    ret z

    ;;Comprobar teclas pulsadas (las que nos interesan)
    gmki_check_1:
    ld hl, #Key_1
    call cpct_isKeyPressed_asm
    jr z, gmki_check_2
        ld a, #0x01
        ret
    
    gmki_check_2:
    ld hl, #Key_2
    call cpct_isKeyPressed_asm
    jr z, gmki_check_3
        ld a, #0x02
        ret
        
    gmki_check_3:
    ld hl, #Key_3
    call cpct_isKeyPressed_asm
    jr z, gmki_check_4
        ld a, #0x03
        ret
    
    gmki_check_4:
    ld hl, #Key_4
    call cpct_isKeyPressed_asm
    jr z, gmki_check_5
        ld a, #0x04
        ret
    
    gmki_check_5:
    ld hl, #Key_5
    call cpct_isKeyPressed_asm
    jr z, gmki_check_6
        ld a, #0x05
        ret
    
    gmki_check_6:
    ld hl, #Key_6
    call cpct_isKeyPressed_asm
    jr z, gmki_check_7
        ld a, #0x06
        ret
    
    gmki_check_7:
    ld hl, #Key_7
    call cpct_isKeyPressed_asm
    jr z, gmki_check_8
        ld a, #0x07
        ret
    
    gmki_check_8:
    ld hl, #Key_8
    call cpct_isKeyPressed_asm
    jr z, gmki_check_9
        ld a, #0x09
        ret

    gmki_check_9:
    ld hl, #Key_9
    call cpct_isKeyPressed_asm
    jr z, gmki_check_default 
        ld a, #0x09
        ret

    gmki_check_default:
    ld hl, #Key_Space
    call cpct_isKeyPressed_asm
    jr z, gmki_check_back
        ld a, #0x0A
        ret

    gmki_check_back:
    ld hl, #Key_Esc
    call cpct_isKeyPressed_asm
    jr z, gmki_no_input
        ld a, #0x0B
        ret
    
    gmki_no_input:
    xor a

    ret


;;==================================================================
;;                           RESET GAME DATA
;;------------------------------------------------------------------
;; Reinicia los datos que no se reinician entre niveles
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;   AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_su_reset_data:

    ld iy, #player_1
    ld b, #0x02
    xor a
    rd_players_loop:
    ld _ep_score_cdm(iy), a
    ld _ep_score_du(iy), a
    ld _ep_score_mc(iy), a
    ld _ep_deaths_mc(iy), a
    ld _ep_deaths_du(iy), a
    ld iy, #player_2
    dec b
    jr nz, rd_players_loop
    
    ld (actual_level), a
    
    ld (timer_state), a
    ld (seconds_dc), a
    ld (seconds), a
    ld (minutes), a

    
    ld hl, #level_index
    ld b, #NUM_LEVELS
    rd_levels_loop:
        inc hl
        inc hl
        ld (hl), a
        inc hl
        inc hl

    dec b
    jr nz, rd_levels_loop

    ld (checkpoint_level), a

    ld a, #0x10
    ld (checkpoint_x), a
    ld a, #0xA7
    ld (checkpoint_y), a
    

    ret





;;==================================================================
;;                        GET KEY PRESSED
;;------------------------------------------------------------------
;; Devuelve el valor de la primera tecla pulsada
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  DE -> Valor de la tecla pulsada (la primera que encuentra al recorrer el buffer)
;;  F(Carry) -> Si el carry flag está seteado es que ha pulsado alguna tecla
;;
;; DESTROYS:
;;   AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_su_get_key_pressed:

    ;; Escanear teclado
    halt
    call cpct_scanKeyboard_asm

    xor a
    call cpct_isAnyKeyPressed_f_asm
    cp #0x00
    ret z


    ld hl, #_cpct_keyboardStatusBuffer
    ;; Iterar sobre el keyboard status buffer para sacar la tecla pulsada
    cka_keyboard_loop:
    ld e, #0x00
    lines_loop:
        ld a, (hl)
        ld d, #0x01

        bits_loop:
            srl a
            ret c
            sla d
        jr nc, bits_loop

    inc hl
    inc e
    cp #0x0A
    jr nz, lines_loop

    ;; Resetear la carry flag
    xor a
    

    ret