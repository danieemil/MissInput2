.include "man/manager_player.h.s"

.area _DATA
;                  Etiqueta    X      Y      W      H      VX     VY       ATTR           SPR          SPRW  SPRH SPRSIZE    
DefineEntityPlayer player_1, #0x10, #0x30, #0x02, #0x09, #0xFF, #0x00, #0b10110000, _prueba02_spr_0, #0x03, #0x09, #0x36;#0x36
DefineEntityPlayer player_2, #0x13, #0x40, #0x02, #0x08, #0x00, #0x00, #0x80,       _prueba01_spr_0, #0x03, #0x08  #0x30




.area _CODE
;;==================================================================
;;                       INIT PLAYERS
;;------------------------------------------------------------------
;; Inicializa los jugadores con los valores por defecto
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
_mp_init_players:
    




    ret



