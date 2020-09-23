.include "sys/system_physics.h.s"


.area _DATA





.area _CODE

;;==================================================================
;;                         MOVE ENTITY
;;------------------------------------------------------------------
;; Actualiza la posicion de una entidad.
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Entity_drawable ptr
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sp_move_entity:

    ld a, _eph_y(iy)
    ld c, _eph_vy(iy)
    add c
    ld _eph_y(iy), a
    
    
    ld a, _eph_offset(iy)
    ld b, _eph_x(iy)
    ex af, af'

    ld c, #0x01
    ld a, _eph_vx(iy)
    cp #0x00
    ret z
    jp p, sme_loop
    ld c, #0xFF
    neg

sme_loop:
    ex af, af' ;; A -> Offset
    add c
    cp #0xFF
    jr nz, sme_check_04

        dec b
        ld a, #0x03

sme_check_04:    
    cp #0x04
    jr nz, sme_loop_continue

        inc b
        xor a

sme_loop_continue:
    ex af, af' ;; A -> Vel. X 
    dec a
    jr nz, sme_loop

    ex af, af'
    ld _eph_offset(iy), a
    ld _eph_x(iy), b

    ret