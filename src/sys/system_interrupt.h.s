;;DEPENDENCIAS
.include "main.h.s"

.globl minutes
.globl seconds
.globl seconds_dc

;;FUNCIONES
.globl _si_reset_timer
.globl _si_init_interruptions

;;CONSTANTES

    ;; INTERRUPTIONS
INTERRUPT_DIR       = 0x0038
INTERRUPT_FUNC_DIR  = 0x0039

    ;; TIMER
SEC_TO_MIN      = 60    ;; Segundos en un minuto
SEC_DC_TO_SEC   = 100   ;; Centésismas de segundo en un segundo