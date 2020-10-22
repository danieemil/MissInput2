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
_sr_add_score:

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
;;
;; DESTROYS:
;;  AF, BC, DE, HL, AF', BC', DE', HL'
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_sr_get_key_input:
    
    ex af, af'

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
    jr z, gki_exit

        ld hl, #p2_key_gameplay
        set 0, (hl)

gki_exit:
    exx
    ret