.include "sys/system_physics.h.s"


.area _DATA





.area _CODE


;;==================================================================
;;                            FIX Y
;;------------------------------------------------------------------
;; Comprueba las colisiones del escenario a partir de 2 puntos
;;------------------------------------------------------------------
;;
;; INPUT:
;;  DE -> Punto en el tilemap que coincide con el tile colisionado en X
;;  B  -> VY
;;  IY -> Entity_Physics_ptr
;;
;; OUTPUT:
;;   
;;
;; DESTROYS:
;;  
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sp_fix_y::

    ld a, b
    ld b, #0x00
    cp #0x00
    jp m, sfx_move_up

        dec e
        dec e
        ld a, #TILE_H
        ld b, _eph_h(iy)
        sub b
        ld b, a

sfx_move_up:
        inc e

    sla e
    sla e
    sla e

    ld a, e
    add b

    ld _eph_y(iy), a

    ret

;;==================================================================
;;                            FIX X
;;------------------------------------------------------------------
;; Comprueba las colisiones del escenario a partir de 2 puntos
;;------------------------------------------------------------------
;;
;; INPUT:
;;  DE -> Punto en el tilemap que coincide con el tile colisionado en X
;;  B  -> VX
;;  IY -> Entity_Physics_ptr
;;
;; OUTPUT:
;;   
;;
;; DESTROYS:
;;  
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sp_fix_x::

    ld a, b
    ld b, #0x00
    cp #0x00
    jp m, sfx_move_left

        dec d
        dec d
        ld a, #TILE_W
        ld b, _eph_w(iy)
        sub b
        ld b, a

sfx_move_left:
        inc d

    sla d
    sla d

    ld a, d
    add b

    ld _eph_x(iy), a
    ld _eph_offset(iy), #0x00


    ret

;;==================================================================
;;                         CHECK MAP COLLISIONS
;;------------------------------------------------------------------
;; Comprueba las colisiones del escenario a partir de 2 puntos
;;------------------------------------------------------------------
;;
;; INPUT:
;;  BC -> Punto 1
;;  DE -> Punto 2
;;
;; OUTPUT:
;;   A  -> Tile sobre el que se colisiona
;;   BC -> Posicion X,Y del tilemap que corresponde con el punto 1
;;
;; DESTROYS:

            ; 0  1  2  3  4  5  6  7  8....
    ;TILESET = F, F, F, F, S, S, S, S, S, S, S, S, S, S, S, S, S, M, M, M, M, M

;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sp_check_map_collisions::
    
    srl b
    srl b

    srl c
    srl c
    srl c
    ;B/4 -> Sacamos la posicion en el tilemap
    ;C/8 -> Sacamos la posicion en el tilemap
    ;DEBUG
    ;ld a, b
    ;ld (0x5000), a
    ;ld a, c
    ;ld (0x5001), a

    srl d
    srl d

    srl e
    srl e
    srl e
    push de
    ;D/4 -> Sacamos la posicion en el tilemap
    ;E/8 -> Sacamos la posicion en el tilemap
    ;DEBUG
    ;ld a, d
    ;ld (0x5002), a
    ;ld a, e
    ;ld (0x5003), a

    ld a, d ; -> Obtenemos la diferencia en X de los 2 puntos
    sub b
    ld d, a

    ld a, e ; -> Obtenemos la diferencia en Y de los 2 puntos
    sub c
    ld e, a

    ld hl, #MAPA_DIR
    ld a, c 
    ld c, b
    ld b, #0x00
    add hl, bc
    ld bc, #TILEMAP_W
    cp #0x00
    jr z, cmc_loop_point_1_end
cmc_loop_point_1:
        add hl, bc
        dec a
        jr nz, cmc_loop_point_1

cmc_loop_point_1_end:
    ld b, (hl)

;Comprobamos X
    
    ld c, e     ; -> Aplicamos la diferencia en X
    ld e, d
    ld d, a
    add hl, de 

    ld a, c     ; -> Aplicamos la diferencia en Y
    ld de, #TILEMAP_W
    cp #0x00
    jr z, cmc_loop_point_2_end
cmc_loop_point_2:
        add hl, de
        dec a
        jr nz, cmc_loop_point_2

cmc_loop_point_2_end:
    ld a, (hl)
    ;B -> Tile en el que cae el punto 1
    ;A -> Tile en el que cae el punto 2
    
;COMPROBAMOS EL TILE CON EL QUE COLISIONA
    call _sp_check_tile_id_group
    ld c, a
    ld a, b
    call _sp_check_tile_id_group

    pop de
    cp c
    ret nc
    ld a, c
    ret

;;==================================================================
;;                      GET COLLISION POINTS X
;;------------------------------------------------------------------
;; Actualiza la posicion de una entidad.
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Entity_physics ptr
;;   A -> Vel.
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
_sp_get_collision_points_x::

    ld b, _eph_x(iy)
    ld c, _eph_y(iy)
    ld h, #0x00
    ld l, _eph_h(iy)

    add hl, bc
    ex de, hl
    dec e
    ;;BC -> Arriba Izquierda
    ;;DE -> Abajo Izquierda

    cp #0x00
    ret m

    ld a, _eph_w(iy)
    add b
    ld b, a
    ld d, a
    ;;BC -> Arriba Derecha
    ;;DE -> Abajo Derecha
    
    ld a, _eph_offset(iy)
    cp #0x00
    ret nz

    dec b
    dec d
    ;;BC -> Arriba Derecha Derecha
    ;;DE -> Abajo Derecha Derecha

    ret

;;==================================================================
;;                      GET COLLISION POINTS Y
;;------------------------------------------------------------------
;; Actualiza la posicion de una entidad.
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Entity_physics ptr
;;   A -> Vel.
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
_sp_get_collision_points_y::

    ld b, _eph_x(iy)
    ld c, _eph_y(iy)

    ld h, _eph_w(iy)
    ld l, #0x00
    add hl, bc

    ex de, hl
    ;;BC -> Arriba Izquierda
    ;;DE -> Arriba Derecha

    cp #0x00
    jp m, gcpy_check_offset

    ld a, _eph_h(iy)
    add c
    dec a
    ld c, a
    ld e, a
    ;;BC -> Abajo Izquierda
    ;;DE -> Abajo Derecha

gcpy_check_offset:

    ld a, _eph_offset(iy)
    cp #0x00
    ret nz

    dec d
    ;;BC -> Abajo Izquierda
    ;;DE -> Abajo Derecha Derecha

    ret
        


;;==================================================================
;;                         MANAGE PLAYER PHYSICS
;;------------------------------------------------------------------
;; Actualiza la posicion de una entidad.
;;------------------------------------------------------------------
;;
;; INPUT:
;;  DE -> D = Player(key_r + key_l),  E = Player(key_j state)
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


    ld _eph_vx(iy), d                       ;;Aplicamos la velocidad Horizontal
    
;;------------------------------------------SALTO------------------------------------
    xor a                                   
    ld _eph_vy(iy), a

    bit 0, e                                ;;Comprobamos el boton de saltar
    jr z, mpp_no_key_j 
        
        bit 4, _eph_attributes(iy)
        jr z, mpp_no_key_j

        bit 1, e                            ;;Comprobamos si se esta manteniendo el boton de saltar
        jr nz, mpp_hold_key_j

            ld _ep_jump_state(iy), #JT_INIT


mpp_hold_key_j:


mpp_no_key_j:                               ;;No se ha pulsado el boton de saltar

        ld hl, #jump_table
        ld b, #0x00
        ld c, _ep_jump_state(iy)
        add hl, bc

        ld a, (hl)
        cp #0x80
        jr nz, mpp_jump_continue

            dec hl
            dec c
            ld a, (hl)

mpp_jump_continue:
        inc c
        ld _ep_jump_state(iy), c

        ld _eph_vy(iy), a


    ;A -> VY
    ;D -> VX
    push af
    

    ;APLICAR FUERZAS Y MANEJAR COLISIONES EN X
    call _sp_move_entity_x
    ld a, d                    ;VX
    cp #0x00
    jr z, mpp_no_map_collision_x
        ld b, a
        push bc
        call _sp_get_collision_points_x
        call _sp_check_map_collisions
        pop bc
        cp #0x00
        jr z, mpp_no_map_collision_x
            call _sp_fix_x


mpp_no_map_collision_x:

    ;APLICAR FUERZAS Y MANEJAR COLISIONES EN Y
    call _sp_move_entity_y
    pop af
    cp #0x00
    jr z, mpp_no_map_collision_y
        ld b, a
        push bc
        call _sp_get_collision_points_y
        call _sp_check_map_collisions
        pop bc
                                                    ;;TRANSPARENTES Y
        cp #0x00
        jr nz, mpp_collision_y_dangerous
            res 4, _eph_attributes(iy)
            jr mpp_no_map_collision_y

mpp_collision_y_dangerous:                          ;;PELIGROSOS Y
        cp #0x01
        jr nz, mpp_collision_y_solid
            jr mpp_no_map_collision_y

mpp_collision_y_solid:                              ;;SOLIDOS Y
        cp #0x02
        jr nz, mpp_collision_y_solid
            call _sp_fix_y                          ;Corregimos la posicion en Y
            set 4, _eph_attributes(iy)              ;Indicamos que ahora esta en el suelo
            ld _ep_jump_state(iy), #JT_ON_GROUND    ;Ponemos la jump table a la posicion de colision con el suelo
            jr mpp_no_map_collision_y

mpp_no_map_collision_y:


    ; MANEJAR COLISIONES CON LAS ENTIDADES
    call _sp_check_entity_collision



    ret


;;==================================================================
;;                         MOVE ENTITY X
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
_sp_move_entity_x:

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


;;==================================================================
;;                         MOVE ENTITY Y
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
_sp_move_entity_y:

    ld a, _eph_y(iy)
    ld c, _eph_vy(iy)
    add c
    ld _eph_y(iy), a





;;==================================================================
;;                      CHECK TILE ID GROUP
;;------------------------------------------------------------------
;; Actualiza la posicion de una entidad.
;;------------------------------------------------------------------
;;
;; INPUT:
;;   A -> Tile ID
;;
;; OUTPUT:
;;   A -> Tile ID Group
;;
;; DESTROYS:
;;  
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sp_check_tile_id_group:

    cp #GROUP_TRANSPARENT
    jr nc, ctig_check_group_solid

        ld a, #TRANSPARENT
        ret

ctig_check_group_solid:
    cp #GROUP_SOLID
    jr nc, ctig_check_group_dangerous

        ld a, #SOLID
        ret

ctig_check_group_dangerous:
    cp #GROUP_DANGEROUS
    ;jr nc, ctig_check_group_

        ld a, #DANGEROUS
        ret
    ret


;;==================================================================
;;                        CHECK ENTITY COLLISION
;;------------------------------------------------------------------
;; Comprueba si han colisionado dos entidades entre sí
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Entity_physics ptr
;;  IX -> Entity_physics_2 ptr
;;
;; OUTPUT:
;;  A -> (0 -> No colisión, 1 -> Colisión)
;;
;; DESTROYS:
;;  AF, BC, AF'
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sp_check_entity_collision:


;; Colisiones en eje X o eje Y

;; X            -> Posición
;; X + W        -> Posición + Tamaño en el eje

;; X2
;; X2 + W2

;;
;; Forma general de las físicas (no óptimo)
;; if(X < X2 + W2 && X + W > X2) -> Colisiona
;; if(X - (X2 + W2) < 0)
;;      if(x2 - (X + W) < 0)
;;          colisiona ;/



ld a, _eph_x(ix)
ld b, _eph_w(ix)
add b
ld b, a
inc b
ld a, _eph_x(iy)
sub b
jr nc, no_entity_collision              ;; X - X2 + W2



    ld a, _eph_x(iy)
    ld b, _eph_w(iy)
    add b
    ld b, a
    inc b
    ld a, _eph_x(ix)
    sub b
    jr nc, no_entity_collision          ;; X2 - X + W
        
        ld a, _eph_y(ix)
        ld b, _eph_h(ix)
        add b
        ld b, a
        ld a, _eph_y(iy)
        cp b
        jr nc, no_entity_collision      ;; Y - Y2 + H2

            ld b, _eph_h(iy)
            add b
            ld b, a
            ld a, _eph_y(ix)
            sub b
            jr nc, no_entity_collision  ;; Y2 - Y + H


                ;;Offset
                ld a, _eph_x(iy)
                ld b, _eph_x(ix)
                cp b
                jr nc, left_offset
                    ;; a -> derecha, b -> izquierda
                    sub b
                    cp _eph_w(iy)
                    jr c, .

                    ld e, _eph_offset(iy) ;; Derecha
                    ld a, _eph_offset(ix) ;; Izquierda

                    jr check_offset

                left_offset:
                ;; a -> izquierda, b -> derecha
                ld c, a
                ld a, b
                ld b, c

                sub b
                cp _eph_w(ix)
                jr c, .

                ld e, _eph_offset(ix)
                ld a, _eph_offset(iy)

                check_offset:
                ;; Si el offset de la derecha es >= al de la izquierda NO hay colisión
                ;; A -> Derecha
                ;; E -> Izquierda

                cp e
                jr c, .
                

no_entity_collision:

    ret