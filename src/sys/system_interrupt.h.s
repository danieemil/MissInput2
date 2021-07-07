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

;;DEPENDENCIAS
.include "main.h.s"

.globl timer_state
.globl hours
.globl minutes
.globl seconds
.globl seconds_dc

.globl playing_music

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
