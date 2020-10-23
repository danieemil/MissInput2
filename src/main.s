;;-----------------------------LICENSE NOTICE------------------------------------
;;  This file is part of CPCtelera: An Amstrad CPC Game Engine 
;;  Copyright (C) 2018 ronaldo / Fremos / Cheesetea / ByteRealms (@FranGallegoBR)
;;
;;  This program is free software: you can redistribute it and/or modify
;;  it under the terms of the GNU Lesser General Public License as published by
;;  the Free Software Foundation, either version 3 of the License, or
;;  (at your option) any later version.
;;
;;  This program is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;  GNU Lesser General Public License for more details.
;;
;;  You should have received a copy of the GNU Lesser General Public License
;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;-------------------------------------------------------------------------------

;; Include all CPCtelera constant definitions, macros and variables

;.include "cpctelera.h.s"
.include "main.h.s"
.include "man/manager_game.h.s"

;;
;; Start of _DATA area 
;;  SDCC requires at least _DATA and _CODE areas to be declared, but you may use
;;  any one of them for any purpose. Usually, compiler puts _DATA area contents
;;  right after _CODE area contents.
;;
.area _DATA

;;
;; Start of _CODE area
;; 
.area _CODE

_first_interruption:
   
   push iy
   push ix

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


   ld hl, #_second_interruption
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

   pop ix
   pop iy

   ei
   reti

_second_interruption:

   
   push iy
   push ix

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


   ld hl, #_third_interruption
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

   pop ix
   pop iy

   ei
   reti

_third_interruption:

   push iy
   push ix

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


   ld hl, #_fourth_interruption
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

   pop ix
   pop iy

   ei
   reti

_fourth_interruption:

   push iy
   push ix

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


   ld hl, #_fifth_interruption
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

   pop ix
   pop iy
   
   ei
   reti

_fifth_interruption:

   push iy
   push ix

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


   ld hl, #_sixth_interruption
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

   pop ix
   pop iy
   
   ei
   reti

_sixth_interruption:

   push iy
   push ix

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
   call cpct_akp_musicPlay_asm

   ld hl, #_first_interruption
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

   pop ix
   pop iy
   
   ei
   reti


_init_interruptions:

   ld a, #0xC3              ; JP OPCODE
   ld (INTERRUPT_DIR), a
   ld hl, #_first_interruption
   ld (INTERRUPT_FUNC_DIR), hl
   ld a, #0xC9              ; RET OPCODE
   ld (INTERRUPT_DIR + 3), a

   ret




;; 
;; Declare all function entry points as global symbols for the compiler.
;; (The linker will know what to do with them)
;; WARNING: Every global symbol declared will be linked, so DO NOT declare 
;; symbols for functions you do not use.
;;

;;
;; MAIN function. This is the entry point of the application.
;;    _main:: global symbol is required for correctly compiling and linking
;;
_main::
   ld sp, #0x8000

   call _mg_game_init

   ld a, #GS_MULTIPLAYER
   ld (mg_game_state), a

   call _mg_game_loop_init
   call _mg_game_loop
