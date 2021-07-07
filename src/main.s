.include "main.h.s"
.include "man/manager_menu.h.s"

;;
;; Start of _DATA area 
;;  SDCC requires at least _DATA and _CODE areas to be declared, but you may use
;;  any one of them for any purpose. Usually, compiler puts _DATA area contents
;;  right after _CODE area contents.
;;
.area _DATA



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
   ld sp, #0x8000

   call cpct_disableFirmware_asm


   call _si_init_interruptions

   ld c, #0x01
   call cpct_setVideoMode_asm
   
   ld hl, #_g_palette
   ld de, #0x0004
   call cpct_setPalette_asm
   
   ld hl, #0x0B10
   call cpct_setPALColour_asm

   ;ld a, #GS_MULTIPLAYER
   ld a, #GS_SINGLEPLAYER
   ld (mg_game_state), a

   call _mm_main_menu_init
   call _mm_main_menu_loop
