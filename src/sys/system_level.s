.include "sys/system_level.h.s"

.area _DATA

.area _CODE



;;==================================================================
;;                         GENERATE LEVEL
;;------------------------------------------------------------------
;; Genera a partir de un tilemap comprimido el tilemap con el
;; escenario y las entidades
;;------------------------------------------------------------------
;;
;; INPUT:
;;  DE -> Puntero al final del tilemap comprimido
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;   AF, BC, DE, HL, AF'
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_sl_generate_level:

    
;; Primero descomprimimos el mapa en memoria

    ;;DE -> Final del destino en memoria del mapa
    ld hl, #TILEMAP_START
    ld bc, #TILEMAP_SIZE-1
    add hl, bc
    ex de, hl

    ;; HL -> End tilemap comprimido
    ;; DE -> End tilemap descomprimido
    call cpct_zx7b_decrunch_s_asm




    call _me_init_vector
    call _mi_init_vector
    call _mp_init_players

    ld a, #0xFF
    ld (collectable_id), a
    ld (door_id), a

;; Segundo comprobamos la id de cada tile del tilemap
;; En el caso de que sea el id de una entidad,
;; añadimos la entidad en esa posición del tilemap


    ld hl, #TILEMAP_START
    ld de, #TILEMAP_SIZE
    ld bc, #0x0000

    gl_tilemap_loop:

        push hl
        push de
        push bc


        ;; Sacar la posición del tile en coordenadas X e Y
        inc c   ;; El tilemap es tres tiles menor que la pantalla, por eso se le suma 3 a la Y   
        inc c

        sla b
        sla b
        
        sla c
        sla c
        sla c


        ld a, (hl)
        cp #GROUP_ENTITIES
        jp c, gl_next_tile

            gl_check_enemy:
            cp #GROUP_ENEMIES
            jp nc, gl_check_interactable
                ;; Enemigos
                gl_check_enemy_saw:
                cp #GROUP_SAW
                jp nc, gl_check_enemy_rock
                    ;; Enemigo sierra
                    gl_check_enemy_saw_right:
                    cp #SAW_RIGHT
                    jr nz, gl_check_enemy_saw_right_down
                        ld de, #0x0100
                        
                        jr gl_generate_enemy_saw

                    gl_check_enemy_saw_right_down:
                    cp #SAW_RIGHT_DOWN
                    jr nz, gl_check_enemy_saw_down
                        ld de, #0x0200

                        jr gl_generate_enemy_saw

                    gl_check_enemy_saw_down:
                    cp #SAW_DOWN
                    jr nz, gl_check_enemy_saw_up
                        ld de, #0x0001

                        jr gl_generate_enemy_saw


                    gl_check_enemy_saw_up:
                    cp #SAW_UP
                    jr nz, gl_check_enemy_saw_right_up
                        ld de, #0x00FF

                        jr gl_generate_enemy_saw

                    gl_check_enemy_saw_right_up:
                    cp #SAW_RIGHT_UP
                    jp nz, gl_check_enemy_saw_left_down
                        ld de, #0x00FE

                        jr gl_generate_enemy_saw

                    gl_check_enemy_saw_left_down:
                    inc b
                    inc b
                    cp #SAW_LEFT_DOWN
                    jr nz, gl_check_enemy_saw_left
                        ld de, #0x0002

                        jr gl_generate_enemy_saw

                    gl_check_enemy_saw_left:
                    cp #SAW_LEFT
                    jr nz, gl_check_enemy_saw_left_up
                        ld de, #0xFF00

                        jr gl_generate_enemy_saw

                    gl_check_enemy_saw_left_up:
                    cp #SAW_LEFT_UP
                    jp nz, gl_next_tile
                        ld de, #0xFE00


                    gl_generate_enemy_saw:
                        ld a, #ET_SAW
                        dec a
                        jr gl_generate_enemy

                gl_check_enemy_rock:
                cp #GROUP_ROCK
                jp nc, gl_check_enemy_turtle
                    ;; Enemigo roca
                    gl_check_enemy_rock_right:
                    cp #ROCK_RIGHT
                    jr nz, gl_check_enemy_rock_left
                        ld de, #0x0100

                        jr gl_generate_enemy_rock
                    
                    gl_check_enemy_rock_left:
                        
                        ld de, #0xFF00
                        inc b
                        inc b

                    gl_generate_enemy_rock:
                        ld (hl), #0x00
                        ld a, #ET_ROCK
                        dec a
                        jr gl_generate_enemy

                gl_check_enemy_turtle:
                cp #GROUP_TURTLE
                jp nc, gl_next_tile
                    ;; Enemigo tortuga
                    gl_check_enemy_turtle_right:
                    cp #TURTLE_RIGHT
                    jr nz, gl_check_enemy_turtle_left
                        ld de, #0x0100

                        jr gl_generate_enemy_turtle

                    gl_check_enemy_turtle_left:
                        ld de, #0xFF00
                        inc b
                        inc b

                    gl_generate_enemy_turtle:
                        ld a, #ET_TURTLE
                        dec a
                        jp gl_generate_enemy


            gl_generate_enemy:
            ld (hl), #0x00
            call _me_add_enemy
            jp gl_next_tile


            gl_check_interactable:
            cp #GROUP_INTERACTABLE
            jp nc, gl_next_tile
                ;; Interactuables


                gl_check_interactable_checkpoint:
                cp #ID_CHECKPOINT
                jr nz, gl_check_interactable_door
                    dec c
                    dec c
                    dec c
                    dec c
                    ld (hl), #0x01
                    ld a, #EI_CHECKPOINT
                    jp gl_generate_interactable

                gl_check_interactable_door:
                cp #ID_DOOR
                jr nz, gl_check_interactable_double_jump_l
                    dec c
                    dec c
                    dec c
                    inc b
                    ld (hl), #0x03
                    ld a, (mi_num_interactable)
                    ld (door_id), a
                    ld a, #EI_DOOR
                    jp gl_generate_interactable

                gl_check_interactable_double_jump_l:
                cp #ID_DOUBLE_JUMP_L
                jr nz, gl_check_interactable_double_jump_r
                    ld (hl), #0x00
                    ld a, #EI_DOUBLE_JUMP
                    jp gl_generate_interactable

                gl_check_interactable_double_jump_r:
                cp #ID_DOUBLE_JUMP_R
                jr nz, gl_check_interactable_gravity_up_l
                    ld (hl), #0x00
                    inc b
                    inc b
                    ld a, #EI_DOUBLE_JUMP
                    jp gl_generate_interactable

                gl_check_interactable_gravity_up_l:
                cp #ID_GRAVITY_UP_L
                jr nz, gl_check_interactable_gravity_up_r
                    ld (hl), #0x00
                    ld a, #EI_GRAVITY_UP
                    jr gl_generate_interactable

                gl_check_interactable_gravity_up_r:
                cp #ID_GRAVITY_UP_R
                jr nz, gl_check_interactable_gravity_down_l
                    ld (hl), #0x00
                    inc b
                    inc b
                    ld a, #EI_GRAVITY_UP
                    jr gl_generate_interactable

                gl_check_interactable_gravity_down_l:
                cp #ID_GRAVITY_DOWN_L
                jr nz, gl_check_interactable_gravity_down_r
                    ld (hl), #0x00
                    ld a, #EI_GRAVITY_DOWN
                    jr gl_generate_interactable

                gl_check_interactable_gravity_down_r:
                cp #ID_GRAVITY_DOWN_R
                jr nz, gl_check_players
                    ld (hl), #0x00
                    inc b
                    inc b
                    ld a, #EI_GRAVITY_DOWN
                    jr gl_generate_interactable

                gl_check_players:
                cp #ID_PLAYERS
                jp nz, gl_check_interactable_collectable
                    ld (hl), #0x00
                    ld a, (checkpoint_level)
                    ld d, a
                    ld a, (actual_level)
                    sub d
                    jr nz, gl_init_players

                        ld a, (actual_level)
                        cp #0x00
                        jr z, gl_init_players

                        ld hl, #checkpoint_x
                        ld b, (hl)
                        inc hl
                        ld c, (hl)                    
                    
                    gl_init_players:

                    ld iy, #player_1
                    ld _eph_x(iy), b
                    ld _ed_pre_x(iy), b
                    ld _eph_y(iy), c
                    ld _ed_pre_y(iy), c

                    inc b
                    inc b
                    inc b
                    inc b

                    ld iy, #player_2
                    ld _eph_x(iy), b
                    ld _ed_pre_x(iy), b
                    ld _eph_y(iy), c
                    ld _ed_pre_y(iy), c

                    jr gl_next_tile

                gl_check_interactable_collectable:
                cp #ID_COLLECTABLE
                jp nz, gl_next_tile
                    dec c
                    dec c
                    dec c
                    dec c
                    dec c
                    inc b
                    ld (hl), #0x00
                    ld a, (mi_num_interactable)
                    ld (collectable_id), a
                    ld a, #EI_COLLECTABLE

        gl_generate_interactable:
            dec a
            call _mi_add_interactable

        gl_next_tile:
        
        pop bc
        pop de
        pop hl

        ;; BC -> Posición en el tilemap del siguiente Tile
        inc b
        ld a, #TILEMAP_W
        xor b
        jr nz, gl_no_increment
            ld b, a
            inc c

        gl_no_increment:

        inc hl
        dec de

        xor a
        or d
        jp nz, gl_tilemap_loop
        or e
        jp nz, gl_tilemap_loop

        ld a, (actual_level_attr)
        bit 6, a
        ret z

        ld a, (collectable_id)

        call _mi_search_vector
        cp #0x00
        ret nz

        ld _ei_type(ix), #EI_NONE
        ld hl, #_colectable_void_spr
        ld _ed_spr_l(ix), l
        ld _ed_spr_h(ix), h
        ld _ed_anim_ind_h(ix), #0xFE
        ld _ed_anim_ind_l(ix), #0xFE
        

ret







;;==================================================================
;;                            MANAGE END LEVEL
;;------------------------------------------------------------------
;; A
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;   AF
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_sl_manage_end_level:
    
    ld iy, #interactable_vector
    ld de, #_ei_size
    ld a, (door_id)
    cp #0x00
    jr z, mel_loop_find_door_end
mel_loop_find_door:
        add iy, de
        dec a
        jr nz, mel_loop_find_door
mel_loop_find_door_end:


    bit 0, _eph_attributes(iy)
    jr nz, mel_door_opened
    ld hl, #0x0000
    ld de, #anim_interactable_door
    call _sr_apply_animation
    ;a -> End?
    cp #0x00
    ret z

        set 0, _eph_attributes(iy)

        ld a, (tries)
        cp #0xFF
        jr z, mel_door_opened            

mel_door_opened:

    ld iy, #player_1
    bit 6, _ep_player_attr(iy)
    jr z, mel_door_opened_check_p2

        set 5, _ep_player_attr(iy)
        res 6, _ep_player_attr(iy)

        ld a, (actual_level)
        sla a
        sla a
        ld b, #0x00
        ld c, a
        ld hl, #level_index
        add hl, bc
        inc hl
        inc hl
        bit 7, (hl)
        jr nz, mel_door_opened_check_p2

        ld hl, (level_score)
        ex de, hl
        call _su_add_score

mel_door_opened_check_p2:
    ld iy, #player_2
    bit 6, _ep_player_attr(iy)
    jr z, mel_door_opened_end

        set 5, _ep_player_attr(iy)
        res 6, _ep_player_attr(iy)

        ld a, (actual_level)
        sla a
        sla a
        ld b, #0x00
        ld c, a
        ld hl, #level_index
        add hl, bc
        inc hl
        inc hl
        bit 7, (hl)
        jr nz, mel_door_opened_end

        ld hl, (level_score)
        ex de, hl
        call _su_add_score

mel_door_opened_end:

    ld hl, #0x0075
    ld (level_score), hl

    
    
    ld a, (mg_game_state)
    cp #GS_SINGLEPLAYER
    jr nz, mel_check_multiplayer

        ld a, #0x45
        ld (transition), a
        ret


mel_check_multiplayer:
    ld iy, #player_1
    ld a, _ep_player_attr(iy)
    and #0b00110000
    jr z, mel_no_transition
    ld iy, #player_2
    ld a, _ep_player_attr(iy)
    and #0b00110000
    jr z, mel_no_transition

        ld a, #0x45
        ld (transition), a
        ret

    mel_no_transition:
        ld a, (tries)
        cp #0xFF
        ret z
        
        ld a, #0x03
        ld (tries), a
        call _sr_update_hud_skull


    ret


;;==================================================================
;;                        TRANSITION LEVEL
;;------------------------------------------------------------------
;; A
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  A -> Indica si se puede cambiar de nivel (0 -> Si, >=1 -> NO)
;; BC -> Puntero al siguiente mapa
;; DESTROYS:
;;   AF
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_sl_transition_level:

    ld a, (transition)
    dec a
    ld (transition), a
    cp #0x00
    ret nz


    ;;SETEAR VARIABLES PARA EL SIGUIENTE NIVEL
    ld a, (actual_level)
    ld c, a
    
    inc a
    ld (actual_level), a
    
    sla c
    sla c
    ld b, #0x00
    ld hl, #level_index
    add hl, bc

    inc hl
    inc hl
    set 7, (hl) ;; Marcar nivel como completado

    ;; Comprobar si era el nivel final
    inc hl
    ld a, (hl)
    cp #0xFF
    jr nz, tl_not_end
        pop hl

        ;; Parar la música y el temporizador
        ld a, #0x00
        ld (playing_music), a
        ld (timer_state), a
        call cpct_akp_stop_asm

        call _mm_congrats_menu_init
        jp _mm_congrats_menu_loop

    tl_not_end:
    
    xor a
    ret