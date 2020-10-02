.include "man/manager_player.h.s"

.area _DATA
;                  Etiqueta    X      Y      W      H      VX     VY       ATTR           SPR          SPRW  SPRH SPRSIZE    
DefineEntityPlayer player_1, #0x10, #0x40, #0x02, #0x08, #0x01, #0x00, #0b10110000, _prueba01_spr_0, #0x03, #0x08, #0x30
DefineEntityPlayer player_2, #0x00, #0x00, #0x02, #0x08, #0x00, #0x00, #0x80,       _prueba01_spr_0, #0x03, #0x08, #0x30




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



