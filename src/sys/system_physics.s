.include "sys/system_physics.h.s"


.area _DATA

aux_01: .db #0x00



.area _CODE


;;==================================================================
;;                            FIX Y
;;------------------------------------------------------------------
;; Rectifica la posición en Y de la entidad respecto a la colisión con el escenario
;;------------------------------------------------------------------
;;
;; INPUT:
;;  DE -> Punto en el tilemap que coincide con el tile colisionado en X
;;  B  -> VY
;;  IY -> Entity_Physics_ptr
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, B, E
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sp_fix_y::

    inc e ;; El tilemap es tres tiles menor que la pantalla, por eso se le suma 3 a la Y   
    inc e
    inc e
    
    ld a, b
    ld b, #0x00
    cp #0x00
    jp m, sfx_move_up

        dec e
        dec e
        ld b, _eph_h(iy)
        ld a, #TILE_H
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

    set 4, _eph_attributes(iy)  ;Indicamos que ahora esta en el suelo

    ret

;;==================================================================
;;                            FIX X
;;------------------------------------------------------------------
;; Rectifica la posición en X de la entidad respecto a la colisión con el escenario
;;------------------------------------------------------------------
;;
;; INPUT:
;;  DE -> Punto en el tilemap que coincide con el tile colisionado en X
;;  B  -> VX
;;  IY -> Entity_Physics_ptr
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, B, D
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

    set 3, _eph_attributes(iy)  ;Indicamos que ahora esta en la pared

    ret

;;==================================================================
;;                         CHECK MAP COLLISIONS
;;------------------------------------------------------------------
;; Comprueba las colisiones del escenario a partir de 2 puntos
;;------------------------------------------------------------------
;;
;;
;; INPUT:
;;  A -> (0 -> X orientation, 1 -> Y orientation)
;;  BC -> Punto 1
;;  DE -> Punto 2
;;  IY -> Puntero a la entidad
;;
;; OUTPUT:
;;  A  -> Tile sobre el que se colisiona
;;  DE -> Posicion X,Y del tilemap que corresponde con el punto 1
;;
;; DESTROYS:
;;  AF, BC, DE, HL, AF'
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sp_check_map_collisions::
    

    ex af, af'

    srl b
    srl b

    srl c
    srl c
    srl c

    dec c;; El tilemap es tres tiles menor que la pantalla, por eso se le resta 3 a la Y
    dec c
    dec c
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

    dec e;; El tilemap es tres tiles menor que la pantalla, por eso se le resta 3 a la Y
    dec e
    dec e

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

    ld hl, #TILEMAP_DECRUNCH
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
    
    ld b, a

    pop de
    cp c
    jr z ,cmc_no_half_Y        ;; Si la Group Id en Y de ambos puntos es diferente, seteamos el bit 2

    ex af, af'
    cp #0x00
    jr z, cmc_no_half_Y
        set 2, _eph_attributes(iy)

    cmc_no_half_Y:
    ld a, b
    cp c
    ret nc
    ld a, c
    ret

;;==================================================================
;;                      GET COLLISION POINTS X
;;------------------------------------------------------------------
;; Devuelve los dos puntos de colisión con el escenario en función de la velocidad, [en X].
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Entity_physics ptr
;;   A -> Velocidad en X.
;;
;; OUTPUT:
;;  BC -> Punto 1
;;  DE -> Punto 2
;;
;; DESTROYS:
;;  AF, BC, DE, HL,
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
;; Devuelve los dos puntos de colisión con el escenario en función de la velocidad, [en Y].
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Entity_physics ptr
;;   A -> Velocidad en Y.
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL
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
;; Actualiza las físicas del jugador.
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Puntero al jugador 
;;  DE -> D = Player(key_r + key_l),  E = Player(key_j state)
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL, AF'
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sy_manage_player_physics:

    ld a, _ep_force_x(iy)
    ld b, a 
    cp #0x00
    jr z, mpp_apply_input_x

    ;FORZAR MOVIMIENTO
    ld a, _ep_wall_dir(iy)
    cp #0x00
    jr nz, mpp_apply_input_x


    bit 4, _eph_attributes(iy) ;Comprobamos suelo
    jr z, mpp_force_movement

        bit 1, _eph_attributes(iy)
        jr z, mpp_apply_input_x

            res 1, _eph_attributes(iy)

mpp_force_movement:
    ld a, b
    cp #0x00
    jp m, mpp_check_force_x_left

        cp #FORCE_X_R_MIN
        jr nc, mpp_apply_force_x_right

            ld a, d
            cp #0x00 
            jr nz, mpp_apply_input_x

mpp_apply_force_x_right:
        dec _ep_force_x(iy)
        ld d, #0x01
        jr mpp_no_orientation


mpp_check_force_x_left:
        cp #FORCE_X_L_MIN
        jr c, mpp_apply_force_x_left

            ld a, d
            cp #0x00 
            jr nz, mpp_apply_input_x

mpp_apply_force_x_left:      
        inc _ep_force_x(iy)
        ld d, #0xff
        jr mpp_no_orientation


    ;TRANSFORMAR INPUT
mpp_apply_input_x:
    ld _ep_force_x(iy), #0x00
    ld a, d                                 ;;Obtenemos la direccion del jugador
    cp #0x00
    jr z, mpp_no_orientation
    cp #0xFF
    jr nz, mpp_change_orientation_right     ;;IZQUIERDA--------------------------------

        ld a, _ep_wall_dir(iy)
        cp #0x00
        jr z, mpp_change_orientation_left_continue
        jp m, mpp_change_orientation_left_continue

            dec _ep_wall_dir(iy)
            jr z, mpp_change_orientation_left_continue

            ld d, #0x00
            jr mpp_no_orientation

mpp_change_orientation_left_continue:
        res 5, _eph_attributes(iy)

        jr mpp_no_orientation

mpp_change_orientation_right:               ;;DERECHA----------------------------------
        ld a, _ep_wall_dir(iy)
        cp #0x00
        jp p, mpp_change_orientation_right_continue

            inc _ep_wall_dir(iy)
            jr z, mpp_change_orientation_right_continue

            ld d, #0x00
            jr mpp_no_orientation

mpp_change_orientation_right_continue:
        set 5, _eph_attributes(iy)


mpp_no_orientation:
    ;sla d
   

mpp_end_x_input:
    ld _eph_vx(iy), d                       ;;Aplicamos la velocidad Horizontal



;;------------------------------------------SALTO------------------------------------
    ld a, _ep_wall_dir(iy)
    ld b, a

    xor a             
    ld (aux_01), a                      
    ld _eph_vy(iy), a

    bit 0, e                                ;;Comprobamos el boton de saltar
    jr z, mpp_no_key_j 
        
        bit 4, _eph_attributes(iy)          ;;Comprobamos si esta en el suelo
        jr z, mpp_no_floor_jump

        bit 1, e                            ;;Comprobamos si se esta manteniendo el boton de saltar
        jr nz, mpp_hold_key_j

            ld c, #JT_INIT
            ld _ep_jump_state(iy), c
            jp mpp_jump_check_end


mpp_no_floor_jump:
        ld a, b     ;B -> _ep_wall_dir(iy)
        cp #0x00
        jr z, mpp_double_jump

            bit 1, e                            ;;Comprobamos si se esta manteniendo el boton de saltar
            jr nz, mpp_hold_key_j
                

                set 1, _eph_attributes(iy)
                ld c, #JT_WALL_JUMP
                ld _ep_jump_state(iy), c
                ld _ep_wall_dir(iy), #0x00
                ld _ep_force_x(iy), #FORCE_X_L
                ld _eph_vx(iy), #0xFE
                
                cp #0x00
                jp p, mpp_jump_check_end
                ld _ep_force_x(iy), #FORCE_X_R
                ld _eph_vx(iy), #0x02
                jr mpp_jump_check_end

mpp_double_jump:
        bit 1, e                            ;;Comprobamos si se esta manteniendo el boton de saltar
        jr nz, mpp_hold_key_j

            bit 0, _eph_attributes(iy)
            jr z, mpp_no_key_j

                res 0, _eph_attributes(iy)
                ld _ep_force_x(iy), #0x00
                ld c, #JT_INIT
                ld _ep_jump_state(iy), c
                jp mpp_jump_check_end


mpp_hold_key_j:
        
        ld a, #0x01
        ld (aux_01), a
        


mpp_no_key_j:                               ;;No se ha pulsado el boton de saltar

        ld c, _ep_jump_state(iy)
        ld a, c

        cp #JT_PROGRESSIVE_MAX
        jr nc, mpp_jump_check_wall
        cp #JT_PTOGRESSIVE_MIN
        jr c, mpp_jump_check_wall

            ld a, (aux_01)
            cp #0x00
            jr nz, mpp_jump_check_wall

                ld c, #JT_PROGRESSIVE_MAX
                ld _ep_jump_state(iy), c

mpp_jump_check_wall:

        ld a, b     ;B -> _ep_wall_dir(iy)
        cp #0x00
        jr z, mpp_jump_check_end
    
            bit 4, _eph_attributes(iy) ;Comprobamos suelo
            jr nz, mpp_jump_check_end

                ld a, _eph_x(iy)
                push af

                ld a, b
                cp #0x00
                jp m, mpp_jump_check_wall_left
                                                ;;WALL RIGHT
                    inc _eph_x(iy)    
                    ld a, #0x01   

                    jr mpp_jump_check_wall_left_end

mpp_jump_check_wall_left:                           ;;WALL LEFT
                    dec _eph_x(iy)
                    ld a, #0xFF


mpp_jump_check_wall_left_end:
                    push bc
                    push de
                    call _sp_get_collision_points_x
                    xor a
                    call _sp_check_map_collisions
                    pop de
                    pop bc
                    ld b, a


                pop af
                ld _eph_x(iy), a
                ; B -> Tile con el que se colisiona
                ; C -> Offset de la Jump Table


                ld a, b
                ld e, c
                ld c, #JT_ON_GROUND
                cp #0x00
                jr nz, mpp_jump_check_wall_up

                    ld c, e
                    ld _ep_wall_dir(iy), #0x00
                    jr mpp_jump_check_end

mpp_jump_check_wall_up:

    ld a, e
    cp #JT_ON_WALL
    jr nc, mpp_jump_check_end
        
        ld c, e

mpp_jump_check_end:

    ld hl, #jump_table
    call _sp_aply_jumptable
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
        xor a
        call _sp_check_map_collisions
        pop bc
                                                    ;;TRANSPARENTES X
        cp #0x00
        jr nz, mpp_collision_x_dangerous
            jr mpp_no_map_collision_x

mpp_collision_x_dangerous:                          ;;PELIGROSOS X
        cp #0x01
        jr nz, mpp_collision_x_solid
            jr mpp_no_map_collision_x

mpp_collision_x_solid:                              ;;SOLIDOS X
        cp #0x02
        jr nz, mpp_no_map_collision_x
            sla b
            sla b
            sla b
            ld _ep_wall_dir(iy), b
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
        ld a, #0x01
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
        jr nz, mpp_no_map_collision_y
            ld _ep_wall_dir(iy), #0x00
            call _sp_fix_y                          ;Corregimos la posicion en Y
            ld _ep_jump_state(iy), #JT_ON_GROUND    ;Ponemos la jump table a la posicion de colision con el suelo
            jr mpp_no_map_collision_y

mpp_no_map_collision_y:


    ; MANEJAR COLISIONES CON LOS ENEMIGOS
    ld a, (me_num_enemy)
    cp #0x00
    jr z, mpp_no_enemy
    ld ix, #enemy_vector
    ld de, #_ee_size

    call _sp_check_entity_vector_collision
    cp #0x00
    jr z, mpp_no_enemy

    dec _ee_disabled(ix)

    ;.db #0xDD, #0x5D        ;; OPCODE ld e, ixl
    ;.db #0xDD, #0x54        ;; OPCODE ld d, ixh
    ;call _me_remove_enemy
mpp_no_enemy:

    ; MANEJAR COLISIONES CON LOS INTERACTABLES
    ld a, (mi_num_interactable)
    cp #0x00
    ret z
    ld ix, #interactable_vector
    ld de, #_ei_size

    call _sp_check_entity_vector_collision
    cp #0x00
    ret z

    ld a, _ei_type(ix)
    cp #EI_CHECKPOINT
    jr nz, mpp_end_check_interactables

        ld a, _eph_x(ix)
        ld (checkpoint_x), a
        ld a, _eph_y(ix)
        ld (checkpoint_y), a
        dec a
        ld _eph_y(ix), a
        ld bc, #0x0004
        ld l, _ed_spr_l(ix)
        ld h, _ed_spr_h(ix)
        add hl, bc
        ld _ed_spr_l(ix), l
        ld _ed_spr_h(ix), h
        ld _ei_type(ix), #0x00

mpp_end_check_interactables:
    ret


;;==================================================================
;;                         MOVE ENTITY X
;;------------------------------------------------------------------
;; Actualiza la posicion de una entidad en el eje X.
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
;; Actualiza la posicion de una entidad en el eje Y.
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

    ret





;;==================================================================
;;                      CHECK TILE ID GROUP
;;------------------------------------------------------------------
;; Comprueba a qué grupo de colisiones pertenece en función de su id en el tileset
;;------------------------------------------------------------------
;;
;;           0  1  2  3  4  5  6  7  8....
;; TILESET = F, F, F, F, S, S, S, S, S, S, S, S, S, S, S, S, S, M, M, M, M, M
;;
;; INPUT:
;;   A -> Tile ID
;;
;; OUTPUT:
;;   A -> Tile ID Group
;;
;; DESTROYS:
;;  AF
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
;;  B -> Colisión de IY respecto de IX (-1 -> A su izquierda, 0 -> Muy a dentro, 1 -> A su derecha)
;;
;; DESTROYS:
;;  AF, BC, 
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
add _eph_w(ix)
ld b, a
inc b
ld a, _eph_x(iy)
cp b
jr nc, cec_no_entity_collision              ;; X - X2 + W2

    add _eph_w(iy)
    ld b, a
    inc b
    ld a, _eph_x(ix)
    sub b
    jr nc, cec_no_entity_collision          ;; X2 - X + W
        
        ld a, _eph_y(ix)
        add _eph_h(ix)
        ld b, a
        ld a, _eph_y(iy)
        cp b
        jr nc, cec_no_entity_collision      ;; Y - Y2 + H2

            add _eph_h(iy)
            ld b, a
            ld a, _eph_y(ix)
            sub b
            jr nc, cec_no_entity_collision  ;; Y2 - Y + H

                ;;Offset
                ld a, _eph_x(iy)
                ld b, _eph_x(ix)
                cp b
                jr c, cec_right_offset
                    ;; a -> Derecha, b -> Izquierda
                    sub b
                    cp _eph_w(ix)
                    jr nc, cec_left_edge
                        ld b, #0x00
                        jr cec_colliding

                    cec_left_edge:

                    ld a, _eph_offset(iy) ;; Derecha
                    ld c, _eph_offset(ix) ;; Izquierda

                    ld b, #0x01

                    jr cec_check_offset

                cec_right_offset:
                ;; a -> Izquierda, b -> Derecha
                ld c, a
                ld a, b
                ld b, c

                sub b
                cp _eph_w(iy)
                jr nc, cec_right_edge
                    ld b, #0x00
                    jr cec_colliding

                cec_right_edge:

                ld b, #0xFF

                ld a, _eph_offset(ix) ;; Derecha
                ld c, _eph_offset(iy) ;; Izquierda 

                cec_check_offset:
                ;; Si el offset de la derecha es >= al de la izquierda NO hay colisión
                ;; A -> Derecha
                ;; C -> Izquierda

                cp c
                jr nc, cec_no_entity_collision

                cec_colliding:
                    ld a, #01
                    ret

                    
cec_no_entity_collision:
    xor a
    ret

;;==================================================================
;;                    CHECK ENTITY VECTOR COLLISION
;;------------------------------------------------------------------
;; Comprueba si una entidad ha colisionado con alguna entidad del vector
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY  -> Puntero a la entidad
;;  IX  -> Puntero al vector de entidades
;;  A   -> Número de elementos de la entidad
;;  DE  -> Tamaño de cada elemento del vector
;;
;; OUTPUT:
;;  A   -> (0 -> No colisión, 1 -> Colisión)
;;  B   -> Colisión de IY respecto de IX (-1 -> A su izquierda, 0 -> Muy a dentro, 1 -> A su derecha)
;;  IX  -> Puntero a la entidad con la que ha colisionado / Fin del vector
;;
;; DESTROYS:
;;  AF, BC, IX, AF'
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sp_check_entity_vector_collision:

    cevc_loop_vector:

        ex af, af'
        ld a, _ee_disabled(ix) ; Si la entidad está deshabilitada no se comprueban sus colisiones
        cp #0x00
        jr nz, cevc_entity_disabled
            call _sp_check_entity_collision
            cp #0x00
            ret nz
            jr cevc_next_entity

        cevc_entity_disabled:
            ;dec _ee_disabled(ix)

        cevc_next_entity:
        ex af, af'

        add ix, de
        dec a
        jr nz, cevc_loop_vector

    ret


;;==================================================================
;;                    APLY JUMPTABLE
;;------------------------------------------------------------------
;; Modifica la velocidad en Y de acuerdo a su posición en la tabla de saltos
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY  -> Puntero a la entidad
;;  C   -> Offset de la jumptable
;;  HL  -> Puntero a la jumptable
;;
;; OUTPUT:
;;  A -> Velocidad en Y resultante
;;
;; DESTROYS:
;;  AF, BC, HL,
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sp_aply_jumptable:

        ld b, #0x00
        add hl, bc
        ld a, (hl)
        cp #0x80
        jr nz, aj_jump_continue

            dec hl
            dec c
            ld a, (hl)

    aj_jump_continue:
        inc c
        ld _ep_jump_state(iy), c
        

    ret


;;==================================================================
;;                    MANAGE ENEMY PHYSICS
;;------------------------------------------------------------------
;; Maneja las físicas asociadas a cada enemigo
;;------------------------------------------------------------------
;;
;; INPUT:
;;  
;;  DE -> D = Enemy(key_r + key_l) E -> Enemy(key_u + key_d)
;;  IY  -> Puntero al enemigo
;;
;; OUTPUT:
;;
;; DESTROYS:
;;  AF, BC, DE, HL, AF'
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sp_manage_enemy_physics:


    ld _eph_vx(iy), d

    ld a, e
    bit 1, _eph_attributes(iy)
    jr z, mep_not_aply_jumptable

        ld hl, #jump_table
        call _sp_aply_jumptable

    mep_not_aply_jumptable:
    ld _eph_vy(iy), a


    ld b, a
    ld a, d
    ld d, b

    ;; A -> VX
    ;; D -> VY

    push de

    cp #0x00
    jr z, mep_no_move_x

    push af
    call _sp_move_entity_x
    pop af

    res 3, _eph_attributes(iy)

    call _sp_get_collision_points_x
    xor a
    call _sp_check_map_collisions

    cp #SOLID
    jr nz, mep_no_move_x
        ld b, _eph_vx(iy)
        call _sp_fix_x
        


    mep_no_move_x:

    pop de

    ld a, d
    cp #0x00
    jr z, mep_no_move_y

        
        push af
        call _sp_move_entity_y
        pop af

        call _sp_get_collision_points_y

        ld a, #0x01
        res 2, _eph_attributes(iy)
        call _sp_check_map_collisions

        cp #SOLID
        jr nz, mep_no_move_y
            ld b, _eph_vy(iy)
            call _sp_fix_y

    mep_no_move_y:

ret
