.include "man/manager_player.h.s"

.area _DATA
;                  Etiqueta    X      Y      W      H      VX     VY    ATTR    SPR     KEY     
DefineEntityPlayer player_1, #0x00, #0x00, #0x02, #0x08, #0x00, #0x00, #0x00, #0x0000, #0x00  
DefineEntityPlayer player_2, #0x00, #0x00, #0x02, #0x08, #0x00, #0x00, #0x00, #0x0000, #0x00  




.area _CODE
;;==================================================================
;;               MANAGER PLAYER INIT SINGLEPLAYER
;;------------------------------------------------------------------
;; Descripcion
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
_mp_init_singleplayer:
    
    ret



