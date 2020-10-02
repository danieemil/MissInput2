.include "sys/system_physics.h.s"


.area _DATA





.area _CODE


;;==================================================================
;;                         MANAGE PLAYER PHYSICS
;;------------------------------------------------------------------
;; Actualiza la posicion de una entidad.
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Entity_physics ptr
;;   D -> VX
;;   E -> VY
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  
            ; 0  1  2  3  4  5  6  7  8....
    ;TILESET = F, F, F, F, S, S, S, S, S, S, S, S, S, S, S, S, S, M, M, M, M, M

;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sp_check_map_collisions:
    
    ret


;;==================================================================
;;                         MANAGE PLAYER PHYSICS
;;------------------------------------------------------------------
;; Actualiza la posicion de una entidad.
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Entity_physics ptr
;;   D -> Key Input X
;;   E -> 
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
_sy_manage_player_physics:

    ;TRANSFORMAR INPUT
    ld a, d                                 ;;Obtenemos la direccion del jugador
    cp #0x00
    jr z, mpp_no_orientation
    cp #0xFF
    jr nz, mpp_change_orientation_right
        res 5, _eph_attributes(iy)
        jr mpp_no_orientation
mpp_change_orientation_right:
        set 5, _eph_attributes(iy)
mpp_no_orientation:

                                            ;;Aplicamos la velocidad Horizontal
    ld _eph_vx(iy), d
    
    xor a                                   ;;SALTO
    ld _eph_vy(iy), a

    bit 0, e                                ;;Comprobamos el boton de saltar
    jr z, mpp_no_key_j 

        ld hl, #jump_table
        ld b, #0x00
        ld c, _ep_jump_state(iy)
        add hl, bc

        ld a, (hl)
        cp #0x80
        jr nz, mpp_jump_continue

            ld hl, #jump_table
            ld a, (hl)
            ld c, #0xFF

mpp_jump_continue:
        inc c
        ld _ep_jump_state(iy), c

        ld _eph_vy(iy), a

mpp_no_key_j:   

    ld e, a

    ;APLICAR FUERZAS
    call _sp_move_entity

    ;MANEJAR COLISIONES
    call _sp_check_map_collisions


    ret


;;==================================================================
;;                         MOVE ENTITY
;;------------------------------------------------------------------
;; Actualiza la posicion de una entidad.
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Entity_physics ptr
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, AF'
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