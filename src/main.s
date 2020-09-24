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

;; Define one Zero-terminated string to be used later on
string: .asciz "CPCtelera up and running!";

;;
;; Start of _CODE area
;; 
.area _CODE


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
   ;; Disable firmware to prevent it from interfering with string drawing

   call _mg_game_init

   ;;DE -> Final del destino en memoria del mapa
   ld hl, #0x3000
   ld de, #_map_pruebas_size-1
   add hl, de
   ld d, h
   ld e, l
   ;;HL -> Final del archivo comprimido
   ld hl, #_map_pruebas_end
   call cpct_zx7b_decrunch_s_asm

   ld b, #25 ;;Height
   ld c, #20 ;;Width
   ld de, #20
   ld hl, #_tileset_spr_00
   call cpct_etm_setDrawTilemap4x8_ag_asm

   ld hl, #0xC000
   ld de, #0x3000
   call cpct_etm_drawTilemap4x8_ag_asm


   call _mg_game_loop_singleplayer_init
   call _mg_game_loop_singleplayer
