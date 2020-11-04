;;==================================================================
;;
;;    Miss Input 2 is a videogame made for Amstrad CPC 464 in 2020 particulary for the CPCRetroDev contest.
;;    Copyright (C) 2020 Daniel Saura Martínez and Enrique Vidal cayuela 
;;
;;    This program is free software: you can redistribute it and/or modify
;;    it under the terms of the GNU General Public License as published by
;;    the Free Software Foundation, either version 3 of the License, or
;;    (at your option) any later version.
;;
;;    This program is distributed in the hope that it will be useful,
;;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;    GNU General Public License for more details.
;;
;;    You should have received a copy of the GNU General Public License
;;    along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;==================================================================
.include "sys/system_physics.h.s"


.area _DATA

aux_01: .db #0x00
aux_02: .db #0x00



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

    ld hl, #TILEMAP_START
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
        set 5, _eph_attributes(iy)
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
        res 5, _eph_attributes(iy)
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
   

mpp_end_x_input:


    ld a, #PLAYER_VEL_X
    sub #0x01
    jr z, mpp_vel_x
    jr c, mpp_vel_x
    
    ld b, a

    ld a, d
    mpp_vel_x_loop:
        add d
        dec b
    jr nz, mpp_vel_x_loop

    ld d, a

    mpp_vel_x:

    ld _eph_vx(iy), d                       ;;Aplicamos la velocidad Horizontal



;;------------------------------------------SALTO------------------------------------

    ld a, _ep_wall_dir(iy)
    ld b, a

    xor a             
    ld (aux_01), a                      
    ld _eph_vy(iy), a

    bit 7, _ep_player_attr(iy)
    jp nz, mpp_no_key_j
    bit 0, e                                ;;Comprobamos el boton de saltar
    jp z, mpp_no_key_j 
        
        bit 4, _eph_attributes(iy)          ;;Comprobamos si esta en el suelo
        jr z, mpp_no_floor_jump

        bit 1, e                            ;;Comprobamos si se esta manteniendo el boton de saltar
        jp nz, mpp_hold_key_j

            push de
            push bc
            ;; Reproducimos el salto
            ld l, #9       ;; Instrumento
            ld h, #15      ;; Volumen(15 -> max)
            ld e, #28      ;; Nota (64 -> E-5, Mi5)
            ld d, #0       ;; Velocidad (1-255), 0 = original
            ld bc, #-50      ;; Pitch (más pitch, más grave)
            ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001, C2->010, C3->100)
            push iy
            call cpct_akp_SFXPlay_asm
            pop iy
            pop bc
            pop de

            ld c, #JT_INIT
            ld _ep_jump_state(iy), c
            jp mpp_jump_check_end


mpp_no_floor_jump:
        ld a, b     ;B -> _ep_wall_dir(iy)
        cp #0x00
        jr z, mpp_double_jump

            bit 1, e                            ;;Comprobamos si se esta manteniendo el boton de saltar
            jr nz, mpp_hold_key_j
                
                push af
                push de
                push bc
                ;; Reproducimos el salto
                ld l, #9       ;; Instrumento
                ld h, #15      ;; Volumen(15 -> max)
                ld e, #28      ;; Nota (64 -> E-5, Mi5)
                ld d, #0       ;; Velocidad (1-255), 0 = original
                ld bc, #-80      ;; Pitch (más pitch, más grave)
                ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001, C2->010, C3->100)
                push iy
                push ix
                call cpct_akp_SFXPlay_asm
                pop ix
                pop iy
                pop bc
                pop de
                pop af

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
                jp mpp_jump_check_end

mpp_double_jump:
        bit 1, e                            ;;Comprobamos si se esta manteniendo el boton de saltar
        jr nz, mpp_hold_key_j

            bit 0, _eph_attributes(iy)
            jr z, mpp_no_key_j

                res 0, _eph_attributes(iy)  ;;REiniciamos el doble salto
                ld _ep_force_x(iy), #0x00

                push de
                push bc
                ;; Reproducimos el cambio de gravedad hacia abajo
                ld l, #10       ;; Instrumento
                ld h, #15      ;; Volumen(15 -> max)
                ld e, #28      ;; Nota (64 -> E-5, Mi5)
                ld d, #0       ;; Velocidad (1-255), 0 = original
                ld bc, #-0x0010;; Pitch (más pitch, más grave)
                ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001, C2->010, C3->100)
                push iy
                call cpct_akp_SFXPlay_asm
                pop iy
                pop bc
                pop de

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
                cp #SOLID
                jr z, mpp_jump_check_wall_up

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

    bit 6, _eph_attributes(iy)  ;;Comprobamos la gravedad
    jr z, mpp_no_change_gravity
        
        neg

mpp_no_change_gravity:
    ld _eph_vy(iy), a

    ;A -> VY
    ;D -> VX
    push af
    

    ;APLICAR FUERZAS Y MANEJAR COLISIONES EN X
    call _sp_move_entity_x
    ld a, d                    ;VX
    cp #0x00
    jp z, mpp_no_map_collision_x
        ld b, a
        push bc
        call _sp_get_collision_points_x
        xor a
        call _sp_check_map_collisions
        pop bc
                                                    ;;TRANSPARENTES X
        cp #TRANSPARENT
        jr nz, mpp_collision_x_dangerous
            jp mpp_no_map_collision_x

mpp_collision_x_dangerous:                          ;;PELIGROSOS X
        cp #DANGEROUS
        jr nz, mpp_collision_x_solid
            pop af

            ld l, #4
            ld a, (tries)
            cp #0xFF
            jr nz, mpp_play_death_x
            
                ld l, #5       ;; Instrumento

            mpp_play_death_x:
            push iy
            push ix

            ld bc, #PLAYER_2_PITCH

            bit 0, _ep_player_attr(iy)
            jr nz, mpp_play_death_x_2
                ld bc, #PLAYER_1_PITCH

            mpp_play_death_x_2:
            ;; Reproducimos la muerte del jugador
            ld h, #15      ;; Volumen(15 -> max)
            ld e, #48      ;; Nota (64 -> E-5, Mi5)
            ld d, #0       ;; Velocidad (1-255), 0 = original
            ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001(1), C2->010(2), C3->100(4))
            call cpct_akp_SFXPlay_asm
            pop ix
            pop iy

            set 3, _ep_player_attr(iy)
            ld a, #0x15
            ld _ep_anim_counter(iy), a
            ret

mpp_collision_x_solid:                              ;;SOLIDOS X
        cp #SOLID
        jr nz, mpp_collision_x_gdown
            sla b
            sla b
            sla b
            ld _ep_wall_dir(iy), b
            call _sp_fix_x  
            jr mpp_no_map_collision_x

mpp_collision_x_gdown:
        cp #GRAVITY_DOWN
        jr nz, mpp_collision_x_gup
            bit 6, _eph_attributes(iy)
            jr z, mpp_no_map_collision_x

            ;; Reproducimos el cambio de gravedad hacia abajo
            ld l, #2       ;; Instrumento
            ld h, #15      ;; Volumen(15 -> max)
            ld e, #12      ;; Nota (64 -> E-5, Mi5)
            ld d, #0       ;; Velocidad (1-255), 0 = original
            ld bc, #0      ;; Pitch (más pitch, más grave)
            ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001, C2->010, C3->100)
            push iy
            call cpct_akp_SFXPlay_asm
            pop iy

            res 6, _eph_attributes(iy)  ;;Revertimos la gravedad
            call _sp_apply_change_gravity
            jr mpp_no_map_collision_x


mpp_collision_x_gup:
        cp #GRAVITY_UP
        jr nz, mpp_no_map_collision_x
            bit 6, _eph_attributes(iy)
            jr nz, mpp_no_map_collision_x

            ;; Reproducimos el cambio de gravedad hacia arriba
            ld l, #1       ;; Instrumento
            ld h, #15      ;; Volumen(15 -> max)
            ld e, #12      ;; Nota (64 -> E-5, Mi5)
            ld d, #0       ;; Velocidad (1-255), 0 = original
            ld bc, #0      ;; Pitch (más pitch, más grave)
            ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001, C2->010, C3->100)
            push iy
            call cpct_akp_SFXPlay_asm
            pop iy

            set 6, _eph_attributes(iy)  ;;Invertimos la gravedad
            call _sp_apply_change_gravity


mpp_no_map_collision_x:

    ;APLICAR FUERZAS Y MANEJAR COLISIONES EN Y
    res 0, _eph_attributes(iy)  ;;Reiniciamos el doble salto
    call _sp_move_entity_y
    pop af
    cp #0x00
    jp z, mpp_no_map_collision_y
        ld b, a
        push bc
        call _sp_get_collision_points_y
        ld a, #0x01
        call _sp_check_map_collisions
        pop bc
                                                    ;;TRANSPARENTES Y
        cp #TRANSPARENT
        jr nz, mpp_collision_y_dangerous
            res 4, _eph_attributes(iy)
            jp mpp_no_map_collision_y

mpp_collision_y_dangerous:                          ;;PELIGROSOS Y
        cp #DANGEROUS
        jr nz, mpp_collision_y_solid

            ld l, #4
            ld a, (tries)
            cp #0xFF
            jr nz, mpp_play_death
            
                ld l, #5       ;; Instrumento

            mpp_play_death:
            push iy
            push ix

            ld bc, #PLAYER_2_PITCH

            bit 0, _ep_player_attr(iy)
            jr nz, mpp_play_death_2
                ld bc, #PLAYER_1_PITCH

            mpp_play_death_2:
            ;; Reproducimos la muerte del jugador
            ld h, #15      ;; Volumen(15 -> max)
            ld e, #48      ;; Nota (64 -> E-5, Mi5)
            ld d, #0       ;; Velocidad (1-255), 0 = original
            ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001(1), C2->010(2), C3->100(4))
            call cpct_akp_SFXPlay_asm
            pop ix
            pop iy


            set 3, _ep_player_attr(iy)
            ld a, #0x15
            ld _ep_anim_counter(iy), a
            ret

mpp_collision_y_solid:                              ;;SOLIDOS Y
        cp #SOLID
        jr nz, mpp_collision_y_gdown
            ld _ep_wall_dir(iy), #0x00
            call _sp_fix_y                          ;Corregimos la posicion en Y
            ld _ep_jump_state(iy), #JT_ON_GROUND    ;Ponemos la jump table a la posicion de colision con el suelo
            jr mpp_no_map_collision_y

mpp_collision_y_gdown:
        cp #GRAVITY_DOWN
        jr nz, mpp_collision_y_gup
        
            res 4, _eph_attributes(iy)

            bit 6, _eph_attributes(iy)
            jr z, mpp_no_map_collision_y

            ;; Reproducimos el cambio de gravedad hacia abajo
            ld l, #2       ;; Instrumento
            ld h, #15      ;; Volumen(15 -> max)
            ld e, #12      ;; Nota (64 -> E-5, Mi5)
            ld d, #0       ;; Velocidad (1-255), 0 = original
            ld bc, #0      ;; Pitch (más pitch, más grave)
            ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001, C2->010, C3->100)
            push iy
            call cpct_akp_SFXPlay_asm
            pop iy

            res 6, _eph_attributes(iy)  ;;Revertimos la gravedad

            call _sp_apply_change_gravity
            jr mpp_no_map_collision_y


mpp_collision_y_gup:
        cp #GRAVITY_UP
        jr nz, mpp_no_map_collision_y

            res 4, _eph_attributes(iy)

            bit 6, _eph_attributes(iy)
            jr nz, mpp_no_map_collision_y

            ;; Reproducimos el cambio de gravedad hacia arriba
            ld l, #1       ;; Instrumento
            ld h, #15      ;; Volumen(15 -> max)
            ld e, #12      ;; Nota (64 -> E-5, Mi5)
            ld d, #0       ;; Velocidad (1-255), 0 = original
            ld bc, #0      ;; Pitch (más pitch, más grave)
            ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001, C2->010, C3->100)
            push iy
            call cpct_akp_SFXPlay_asm
            pop iy

            set 6, _eph_attributes(iy)  ;;Invertimos la gravedad
            call _sp_apply_change_gravity

mpp_no_map_collision_y:

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
    jp nz, mpp_check_double_jump_item

        ;; Reproducimos el audio de tocar el checkpoint
        ld l, #7       ;; Instrumento
        ld h, #15      ;; Volumen(15 -> max)
        ld e, #12      ;; Nota (64 -> E-5, Mi5)
        ld d, #0       ;; Velocidad (1-255), 0 = original
        ld bc, #0      ;; Pitch (más pitch, más grave)
        ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001, C2->010, C3->100)
        push iy
        push ix
        call cpct_akp_SFXPlay_asm
        pop ix
        pop iy

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

        ld a, (actual_level)
        ld (checkpoint_level), a

        ;; Si el otro jugador estaba muerto le revivimos
        ld ix, #player_2
        bit 0, _ep_player_attr(iy)
        jr z, mpp_is_player_1
            ld ix, #player_1

        mpp_is_player_1:

        ld a, #0x04

        bit 5, _ep_player_attr(ix)
        jr z, mpp_door_not_opened
            dec a

        mpp_door_not_opened:
        ld (tries), a

        call _sr_update_hud_skull

        bit 4, _ep_player_attr(ix)
        ret z

        res 4, _ep_player_attr(ix)
        push ix
        pop hl
        call _mp_init_player

        ;; Posicionar al jugador revivido en el checkpoint
        ld a, (checkpoint_x)
        ld _eph_x(ix), a
        ld _ed_pre_x(ix), a
        ld a, (checkpoint_y)
        ld _eph_y(ix), a
        ld _ed_pre_y(ix), a

        

        ret

mpp_check_double_jump_item:
    cp #EI_DOUBLE_JUMP
    jr nz, mpp_check_gravity_up_item
        
        ld _ed_anim_pos(ix), #0x00
        ld _ed_anim_dur(ix), #0x10

        push iy  

            ld bc, #_double_jump_spr_4
            ld _ed_spr_l(ix), c
            ld _ed_spr_h(ix), b

        push ix 
        pop iy  

            call _sr_draw_entity

        pop iy
        set 0, _eph_attributes(iy)  ;;seteamos el doble salto
        ret

mpp_check_gravity_up_item:
    cp #EI_GRAVITY_UP
    jr nz, mpp_check_gravity_down_item
        bit 6, _eph_attributes(iy)
        ret nz

        ;; Reproducimos el cambio de gravedad hacia arriba
        ld l, #1       ;; Instrumento
        ld h, #15      ;; Volumen(15 -> max)
        ld e, #12      ;; Nota (64 -> E-5, Mi5)
        ld d, #0       ;; Velocidad (1-255), 0 = original
        ld bc, #0      ;; Pitch (más pitch, más grave)
        ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001, C2->010, C3->100)
        push iy
        call cpct_akp_SFXPlay_asm
        pop iy


        set 6, _eph_attributes(iy)  ;;Invertimos la gravedad
        jp _sp_apply_change_gravity

mpp_check_gravity_down_item:
    cp #EI_GRAVITY_DOWN
    jr nz, mpp_check_collectable_item
        bit 6, _eph_attributes(iy)
        ret z

        ;; Reproducimos el cambio de gravedad hacia abajo
        ld l, #2       ;; Instrumento
        ld h, #15      ;; Volumen(15 -> max)
        ld e, #12      ;; Nota (64 -> E-5, Mi5)
        ld d, #0       ;; Velocidad (1-255), 0 = original
        ld bc, #0      ;; Pitch (más pitch, más grave)
        ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001, C2->010, C3->100)
        push iy
        call cpct_akp_SFXPlay_asm
        pop iy


        res 6, _eph_attributes(iy)  ;;Revertimos la gravedad
        jp _sp_apply_change_gravity

mpp_check_collectable_item:
    cp #EI_COLLECTABLE
    jr nz, mpp_check_door_item

        ld bc, #_colectable_void_spr

        ld _ed_spr_l(ix), c
        ld _ed_spr_h(ix), b
        ld _ei_type(ix), #0x00
        ld e, _ei_score(ix)
        ld d, #0x00

        ld _ed_anim_ind_h(ix), #0xFE
        ld _ed_anim_ind_l(ix), #0xFE

        call _su_add_score

        ld hl, #level_index
        ld b, #0x00
        ld a, (actual_level)
        ld c, a
        sla c
        sla c
        add hl, bc
        inc hl
        inc hl
        ;; HL -> Puntero a atributos del nivel actual
        set 6, (hl)

        ;; Reproducimos el salto/doble salto
        ld l, #6       ;; Instrumento
        ld h, #15      ;; Volumen(15 -> max)
        ld e, #36      ;; Nota (64 -> E-5, Mi5)
        ld d, #0       ;; Velocidad (1-255), 0 = original
        ld bc, #0      ;; Pitch (más pitch, más grave)
        ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001, C2->010, C3->100)
        push iy
        call cpct_akp_SFXPlay_asm
        pop iy

        ret

mpp_check_door_item:
    cp #EI_DOOR
    jr nz, mpp_end_check_interactables

        bit 5, _ep_player_attr(iy)
        ret nz

        set 1, _eph_attributes(iy)
        res 6, _eph_attributes(iy)
        set 7, _ep_player_attr(iy)
        ld a, _eph_x(iy)
        ld b, _eph_x(ix)
        sub b
        jr z, mpp_check_door_item_check_end
        jr nc, mpp_check_door_item_player_right
mpp_check_door_item_player_left:

            ld _ep_force_x(iy), #FORCE_X_R
            ret

mpp_check_door_item_player_right:

            ld _ep_force_x(iy), #FORCE_X_L
            ret

mpp_check_door_item_check_end:

        ld a, _eph_offset(iy)
        cp #0x00
        jr z, mpp_check_door_item_end_end
        ld _ep_force_x(iy), #FORCE_X_L
        ret

mpp_check_door_item_end_end:
        
        
        bit 6, _ep_player_attr(iy)
        jr nz, mpp_set_door_data

        push de
        push bc
        ;; Reproducimos el salto
        ld l, #8       ;; Instrumento
        ld h, #15      ;; Volumen(15 -> max)
        ld e, #24      ;; Nota (64 -> E-5, Mi5)
        ld d, #0       ;; Velocidad (1-255), 0 = original
        ld bc, #0x00      ;; Pitch (más pitch, más grave)
        ld a, #2       ;; Canal, bit-flag, tres bits de derecha (C1->001, C2->010, C3->100)
        push iy
        push ix
        call cpct_akp_SFXPlay_asm
        pop ix
        pop iy
        pop bc
        pop de

        mpp_set_door_data:
        res 1, _eph_attributes(iy)
        set 6, _ep_player_attr(iy)
        ld _ep_force_x(iy), #0x00

        ret

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
    jr nc, ctig_check_group_gravity_up
    
        ;; Comprobar si el GOD MODE está activado
        ld a, (god_mode)
        cp #0x00
        jr z, ctig_not_god

            ld a, #SOLID
            ret

        ctig_not_god:
            ld a, #DANGEROUS
        ret

ctig_check_group_gravity_up:
    cp #GROUP_GDOWN
    jr nc, ctig_check_group_gravity_down

        ld a, #GRAVITY_DOWN
        ret

ctig_check_group_gravity_down:

        ld a, #GRAVITY_UP
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

        ld a, _ee_type(ix)
        cp #0x00
        jr z, cevc_next_entity

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
        ld _ee_jump_state(iy), c
        

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
        ld c, _ee_jump_state(iy)
        call _sp_aply_jumptable

    mep_not_aply_jumptable:
    ld _eph_vy(iy), a


    ld b, a
    ld a, d
    ld d, b

    ;; A -> VX
    ;; D -> VY
    ex af, af'
    ld a, _eph_x(iy)
    ld (aux_01), a
    ld a, _eph_offset(iy)
    ld (aux_02), a
    ex af, af'

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
    jr z, mep_collided_on_x
    cp #DANGEROUS
    jr z, mep_collided_on_x

        jr mep_no_move_x

        mep_collided_on_x:
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

        res 4, _eph_attributes(iy)
        cp #SOLID
        jr z, mep_collided_on_y
        cp #DANGEROUS
        jr z, mep_collided_on_y

            jr mep_no_move_y

            mep_collided_on_y:
            ld b, _eph_vy(iy)
            call _sp_fix_y
            ld _ee_jump_state(iy), #JT_ON_GROUND    ;Ponemos la jump table a la posicion de colision con el suelo



    mep_no_move_y:

    ;; Solo para el enemigo tortuga -> Si está en un borde, que vuelva hacia atrás
    ld a, _ee_type(iy)
    cp #ET_TURTLE
    jr nz, mep_check_player_1_collision

    bit 2, _eph_attributes(iy)
    jr z, mep_check_player_1_collision

    ex af, af'
    ld a, (aux_01)
    ld _eph_x(iy), a
    ld a, (aux_02)
    ld _eph_offset(iy), a
    ex af, af'

    ld a, _ee_disabled(iy)
    cp #0x00
    ret nz

    mep_check_player_1_collision:
    ;; Se supone que el siguiente cacho de código hace que las colisiones entre enemigos y
    ;; jugadores sean más precisas

    ;; Comprobar si el GOD MODE está activado
    ld a, (god_mode)
    cp #0x00
    jr nz, mep_no_player_collision

    ld ix, #player_1
    bit 3, _ep_player_attr(ix)
    jr nz, mep_check_player_2_collision
    call _sp_check_entity_collision
    cp #0x00
    jr z, mep_check_player_2_collision

        ld l, #4
        ld a, (tries)
        cp #0xFF
        jr nz, mep_play_death
        
            ld l, #5       ;; Instrumento

        mep_play_death:
        push iy
        push ix
        ;; Reproducimos la muerte del jugador 1
        ld h, #15               ;; Volumen(15 -> max)
        ld e, #48               ;; Nota (64 -> E-5, Mi5)
        ld d, #0                ;; Velocidad (1-255), 0 = original
        ld bc, #PLAYER_1_PITCH  ;; Pitch (más pitch, más grave)
        ld a, #3                ;; Canal, bit-flag, tres bits de derecha (C1->001(1), C2->010(2), C3->100(4))
        call cpct_akp_SFXPlay_asm
        pop ix
        pop iy


        set 3, _ep_player_attr(ix)
        ld a, #0x15
        ld _ep_anim_counter(ix), a

    mep_check_player_2_collision:
    ld ix, #player_2
    bit 3, _ep_player_attr(ix)
    jr nz, mep_no_player_collision
    
    call _sp_check_entity_collision
    cp #0x00
    jr z, mep_no_player_collision

        ld l, #4
        ld a, (tries)
        cp #0xFF
        jr nz, mep_play_death_2
        
            ld l, #5       ;; Instrumento

        mep_play_death_2:
        push iy
        push ix
        ;; Reproducimos la muerte del jugador 2
        ld h, #15               ;; Volumen(15 -> max)
        ld e, #48               ;; Nota (64 -> E-5, Mi5)
        ld d, #0                ;; Velocidad (1-255), 0 = original
        ld bc, #PLAYER_2_PITCH  ;; Pitch (más pitch, más grave)
        ld a, #2                ;; Canal, bit-flag, tres bits de derecha (C1->001(1), C2->010(2), C3->100(4))
        call cpct_akp_SFXPlay_asm
        pop ix
        pop iy

        set 3, _ep_player_attr(ix)
        ld a, #0x15
        ld _ep_anim_counter(ix), a

    mep_no_player_collision:

ret




;;==================================================================
;;                    APPLY CHANGE GRAVITY
;;------------------------------------------------------------------
;; Cambia la tabla de saltos para adaptarse al cambio de gravedad
;;------------------------------------------------------------------
;;
;; INPUT:
;;  
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
_sp_apply_change_gravity:

    ld a, _ep_jump_state(iy)

    cp #JT_GRAVITY_CONTINUE
    jr nc, acg_check_fall

        ld a, #JT_ON_GROUND
        jr acg_check_end

acg_check_fall:
    cp #JT_ON_GROUND
    ret c

        ld a, #JT_GRAVITY_MARGIN

acg_check_end:
    ld _ep_jump_state(iy), a
    ret




;;==================================================================
;;                    APPLY PLAYER DEATH
;;------------------------------------------------------------------
;; Mata al jugador teniendo en cuenta el estado actual del juego
;;------------------------------------------------------------------
;;
;; INPUT:
;;  
;;  IY  -> Puntero al jugador
;;
;; OUTPUT:
;;
;; DESTROYS:
;;  AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sp_player_death:

;; El jugador muere
    push iy
    pop hl
    ld ix, #player_1
    ld a, _ep_player_attr(iy)
    and #0b00000001
    jr nz, pd_is_player_2
        ld ix, #player_2

    pd_is_player_2:

    call _mp_init_player

    ld a, (checkpoint_x)
    ld _eph_x(iy), a
    ld a, (checkpoint_y)
    ld _eph_y(iy), a


    ;INCREMENTAR MUERTES
    ld a, _ep_deaths_du(iy)
    ld b, #0x01
    add b
    daa
    ld _ep_deaths_du(iy), a
    jr nc, pd_no_death_carry
        ld a, _ep_deaths_mc(iy)
        cp #0x99
        jr nz, pd_no_max_deaths

            ld _ep_deaths_du(iy), #0x99
            jr pd_no_death_carry

pd_no_max_deaths:

        add b
        daa
        ld _ep_deaths_mc(iy), a

pd_no_death_carry:

    ld a, #0x00
    call _sr_update_hud_player_data

    set 2, _ep_player_attr(iy)
    ld a, #0x15
    ld _ep_anim_counter(iy), a

    ld a, (tries)
    cp #0x04
    ret z

    cp #0xFF
    jr nz, pd_staying_alive
        set 4, _ep_player_attr(iy)      ; Quedarse muerto

        ld a, (mg_game_state)
        cp #GS_SINGLEPLAYER
        jr z, pd_checkpoint_level

        bit 4, _ep_player_attr(ix)      ; Si está muerto del todo
        jr nz, pd_checkpoint_level

            bit 5, _ep_player_attr(ix)
            ret z

            ld a, #0x45
            ld (transition), a

            ret

        pd_checkpoint_level:

        ;; Revivir a los jugadores
        res 4, _ep_player_attr(iy)
        res 4, _ep_player_attr(ix)

        ;; Volver al último checkpoint
        ld a, (checkpoint_level)
        ld (actual_level), a

        pd_init_level:

        ;; Parar la música y el temporizador
        ld a, #0x00
        ld (playing_music), a
        ld (timer_state), a
        call cpct_akp_SFXStopAll_asm
        call cpct_akp_stop_asm


        ;; Pantalla de transición entre niveles
        ld b, #0x0F
        call _sr_fill_backbuffer
        call _sr_copy_back_to_front

        ld b, #0xF0
        call cpct_waitHalts_asm

        call _mg_game_init
        ret

    pd_staying_alive:

    ld hl, (level_score)
    xor a
    ld a, l
    sub #0x25
    daa
    ld l, a
    ld (level_score), hl

    ld a, (tries)
    dec a
    ld (tries), a
    push af
    call _sr_update_hud_skull
    pop af
    ret nz

    ld a, #0x01
    ld (transition), a
    ret

