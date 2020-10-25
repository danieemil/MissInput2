.include "sys/system_interrupt.h.s"

.area _DATA

.area _CODE



;;==================================================================
;;                      INCREMENT TIMER 
;;------------------------------------------------------------------
;; Incrementa en una centésima de segundo el valor del contador
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;   AF, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_si_increment_timer:

    ;; Aumentar una centésima de segundo (que equivale a tres interrupciones)
    ld hl, #seconds_dc
    inc (hl)
    ld a, (hl)
    cp #SEC_DC_TO_SEC
    ret c
    
    ld (hl), #0x00


    ;; Aumentar un segundo
    inc hl
    inc (hl)
    ld a, (hl)
    cp #SEC_TO_MIN
    ret c

    ld (hl), #0x00
    

    ;; PD: Para aumentar los minutos correctamente hay que tener en cuenta
    ;;     que el valor está en "little endian".

    ;; Aumentar un minuto
    inc hl
    inc hl
    inc (hl)
    ret nc

    ;; Aumentar unidad equivalente a 256 minutos
    dec hl
    inc (hl)
    ret nc

    ;; En serio has estado 1091 horas jugando...? Bestial ;/
    
    ret


;;==================================================================
;;                          RESET TIMER 
;;------------------------------------------------------------------
;; Pone todos los valores del timer a 0x00
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;   HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_si_reset_timer:
    ld hl, #seconds_dc
    ld (hl), #0x00

    inc hl
    ld (hl), #0x00

    inc hl
    ld (hl), #0x00

    inc hl
    ld (hl), #0x00

ret


;;==================================================================
;;                        INIT INTERRUPTIONS 
;;------------------------------------------------------------------
;; Inicializa las interrupciones para que se usen las funciones personalizadas
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;   AF, HL
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_si_init_interruptions:

    ;; Sincronizarse con el raster
    call cpct_waitVSYNC_asm
    halt
    halt
    call cpct_waitVSYNC_asm

    ld a, #0xC3              ; JP OPCODE
    ld (INTERRUPT_DIR), a
    ld hl, #_si_first_interruption
    ld (INTERRUPT_FUNC_DIR), hl
    ld a, #0xC9              ; RET OPCODE
    ld (INTERRUPT_DIR + 3), a

    ret




;;==================================================================
;;                        FIRST INTERRUPTION 
;;------------------------------------------------------------------
;; Esta función se llama 1 vez de cada 6 interrupciones producidas
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
_si_first_interruption:
   
    push af
    push hl

    ld a, (timer_state)
    cp #0x00
    dec a
    jr nz, fi_continue

        call _si_increment_timer

    fi_continue:
    ld hl, #_si_second_interruption
    ld (INTERRUPT_FUNC_DIR), hl

    pop hl
    pop af

    ei
    reti


;;==================================================================
;;                        SECOND INTERRUPTION 
;;------------------------------------------------------------------
;; Esta función se llama 1 vez de cada 6 interrupciones producidas
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
_si_second_interruption:

   
    push hl

    ld hl, #_si_third_interruption
    ld (INTERRUPT_FUNC_DIR), hl

    pop hl

    ei
    reti


;;==================================================================
;;                        THIRD INTERRUPTION 
;;------------------------------------------------------------------
;; Esta función se llama 1 vez de cada 6 interrupciones producidas
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
_si_third_interruption:

    push hl

    ld hl, #_si_fourth_interruption
    ld (INTERRUPT_FUNC_DIR), hl

    pop hl

    ei
    reti



;;==================================================================
;;                        FOURTH INTERRUPTION 
;;------------------------------------------------------------------
;; Esta función se llama 1 vez de cada 6 interrupciones producidas
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
_si_fourth_interruption:

    push af
    push hl


    ld a, (timer_state)
    cp #0x00
    dec a
    jr nz, foi_continue

        call _si_increment_timer

    foi_continue:

    ld hl, #_si_fifth_interruption
    ld (INTERRUPT_FUNC_DIR), hl

    pop hl
    pop af
    
    ei
    reti



;;==================================================================
;;                        FIFTH INTERRUPTION 
;;------------------------------------------------------------------
;; Esta función se llama 1 vez de cada 6 interrupciones producidas
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
_si_fifth_interruption:

    push hl

    ld hl, #_si_sixth_interruption
    ld (INTERRUPT_FUNC_DIR), hl

    pop hl

    ei
    reti



;;==================================================================
;;                        SIXTH INTERRUPTION 
;;------------------------------------------------------------------
;; Esta función se llama 1 vez de cada 6 interrupciones producidas
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
_si_sixth_interruption:

    push af
    push bc
    push de
    push hl

    ex af, af'
    exx

    push af
    push bc
    push de
    push hl


    ;; Código super destructor de registros
    ld a, (playing_music)
    cp #0x00
    jr z, si_not_playing_music

        call cpct_akp_musicPlay_asm

    si_not_playing_music:
    ld hl, #_si_first_interruption
    ld (INTERRUPT_FUNC_DIR), hl

    pop hl
    pop de
    pop bc
    pop af

    exx
    ex af, af'

    pop hl
    pop de
    pop bc
    pop af
    
    ei
    reti
