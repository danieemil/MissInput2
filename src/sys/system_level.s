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
        inc c
        inc c
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
                gl_check_enemy_turtle:
                cp #GROUP_TURTLE
                jr nc, gl_check_enemy_saw
                    ;; Enemigo tortuga
                    gl_check_enemy_turtle_right:
                    jr nz, gl_check_enemy_turtle_left
                        ld de, #0x0100

                        jr gl_generate_enemy_turtle

                    gl_check_enemy_turtle_left:
                        ld de, #0xFF00
                        inc b
                        inc b

                    gl_generate_enemy_turtle:
                        ld a, #ET_TURTLE
                        jp gl_generate_enemy

                gl_check_enemy_saw:
                cp #GROUP_SAW
                jp nc, gl_check_enemy_rock
                    ;; Enemigo sierra
                    gl_check_enemy_saw_right:
                    jr nz, gl_check_enemy_saw_right_down
                        ld de, #0x0100
                        
                        jr gl_generate_enemy_saw

                    gl_check_enemy_saw_right_down:
                    cp #SAW_RIGHT_DOWN
                    jr nz, gl_check_enemy_saw_down
                        ld de, #0x0101

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
                        ld de, #0x01FF

                        jr gl_generate_enemy_saw

                    gl_check_enemy_saw_left_down:
                    inc b
                    inc b
                    cp #SAW_LEFT_DOWN
                    jr nz, gl_check_enemy_saw_left
                        ld de, #0xFF01

                        jr gl_generate_enemy_saw

                    gl_check_enemy_saw_left:
                    cp #SAW_LEFT
                    jr nz, gl_check_enemy_saw_left_up
                        ld de, #0xFF00

                        jr gl_generate_enemy_saw

                    gl_check_enemy_saw_left_up:
                    cp #SAW_LEFT_UP
                    jr nz, gl_next_tile
                        ld de, #0xFFFF


                    gl_generate_enemy_saw:
                        ld a, #ET_SAW
                        jr gl_generate_enemy

                gl_check_enemy_rock:
                cp #GROUP_ROCK
                jp nc, gl_next_tile
                    ;; Enemigo roca
                    gl_check_enemy_rock_right:
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
                        jr gl_generate_enemy

            gl_generate_enemy:
            ld (hl), #0x00
            call _me_add_enemy
            jp gl_next_tile


            gl_check_interactable:
            cp #GROUP_INTERACTABLE
            jr nc, gl_next_tile
                ;; Interactuables

                gl_check_interactable_checkpoint:
                jr nz, gl_check_interactable_double_jump
                    ld (hl), #0x01
                    ld a, #EI_CHECKPOINT
                    jr gl_generate_interactable

                gl_check_interactable_double_jump:
                cp #ID_DOUBLE_JUMP
                jr nz, gl_check_interactable_gravity_up
                    ld (hl), #0x00
                    ld a, #EI_DOUBLE_JUMP
                    jr gl_generate_interactable

                gl_check_interactable_gravity_up:
                cp #ID_GRAVITY_UP
                jr nz, gl_check_interactable_gravity_down
                    ld (hl), #0x00
                    ld a, #EI_GRAVITY_UP
                    jr gl_generate_interactable

                gl_check_interactable_gravity_down:
                cp #ID_GRAVITY_DOWN
                jr nz, gl_check_interactable_collectable
                    ld (hl), #0x00
                    ld a, #EI_GRAVITY_DOWN
                    jr gl_generate_interactable

                gl_check_interactable_collectable:
                cp #ID_COLLECTABLE
                jp nz, gl_next_tile
                    ld (hl), #0x00
                    ld a, #EI_COLLECTABLE

        gl_generate_interactable:
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

ret




