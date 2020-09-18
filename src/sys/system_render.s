.include "sys/system_render.h.s"


.area _DATA





.area _CODE
;;==================================================================
;;                         DRAW ENTITY
;;------------------------------------------------------------------
;; Dibuja una entidad a partir de un puntero a la misma.
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IX -> Entity_drawable ptr
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
_sr_draw_entity:

    ld de, #0xC000              ;;Poner en un futuro el inicio del doble buffer
    ld c, _eph_x(ix)
    ld b, _eph_y(ix)
    call cpct_getScreenPtr_asm
    ex de, hl

    ld c, _ed_spr_wi(ix) 
    ld b, _ed_spr_he(ix)
    ld hl, #_prueba01_spr  ;Sprite ptr

    

    call cpct_drawSpriteMasked_asm

    ret