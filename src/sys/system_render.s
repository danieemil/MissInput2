.include "sys/system_render.h.s"


.area _DATA

aux_01: .db #0x00
aux_02: .db #0x00



.area _CODE



;;==================================================================
;;                         REDRAW TILES
;;------------------------------------------------------------------
;; Redibuja la parte del tilemap que está alrededor de la entidad
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> entity_drawable_ptr
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL, BC', DE', HL'
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sr_redraw_tiles:
    ld c, _ed_pre_x(iy)
    ld b, _ed_pre_y(iy)

    ld a, _ed_ox(iy)
    add c
    ld c, a

    ld a, _ed_oy(iy)
    add b
    ld b, a

    rt_moved:
    ld l, _ed_spr_wi(iy)
    ld h, _ed_spr_he(iy)
    add hl, bc
    ex de, hl
    ;;BC -> Esquina Superior Izquierda en 
    ;;HL -> Esquina Inferior Derecha

    srl b  
    srl b
    srl b

    dec b   ;; El tilemap es tres tiles menor que la pantalla, por eso se le resta 3 a la Y
    dec b

    srl c
    srl c
    

    srl d
    srl d
    srl d

    dec d   ;; El tilemap es tres tiles menor que la pantalla, por eso se le resta 3 a la Y
    dec d

    srl e
    srl e

    ld a, d
    sub b
    ld d, a

    ld a, e
    sub c
    ld e, a 
    
    
    ;BC ->  [Y, X]  Tile que corresponde con la esquina superior izquierda
    ;DE -> [dY, dX] Diferencia en tiles de la esquina superior izquierda con la esquina inferior derecha
    
    push bc
    push de
    
    inc b   ;; El tilemap es tres tiles menor que la pantalla, por eso se le resta 3 a la Y
    inc b

    sla b   ;;obtenemos la posicion inicial del tile arriba a la izquierda
    sla b
    sla b



    sla c
    sla c

    ld a, (mg_back_buffer) 
    ld d, a
    ld e, #0x00
    call cpct_getScreenPtr_asm
    ;;HL -> Puntero a memoria de video del tile que corresponde a la esquina superior izquierda de la entity_drawable
    ;ld bc, #TILE_SIZE
    ;ld de, #SCREEN_W

    exx
    pop de
    pop bc

    ld a, b
    ld b, #0x00

    ld hl, #TILEMAP_START
    add hl, bc
    ld bc, #TILEMAP_W

    cp #0x00
    jr z, rt_loop_get_init_point_end
rt_loop_get_init_point:
        add hl, bc
        dec a
        jr nz, rt_loop_get_init_point

rt_loop_get_init_point_end:
    ;HL  -> Puntero al tile que corresponde con la esquina superior izquierda
    ;HL' -> Puntero a memoria de video del tile que corresponde a la esquina superior izquierda de la entity_drawable
    ;DE  -> [dY, dX] Diferencia en tiles de la esquina superior izquierda con la esquina inferior derecha
    ld a, e
    inc a
    ld (aux_01), a

    ld a, d
    inc a

rt_loop_redraw_tile_rows:
        push af
        push hl   ;;PUSH HL
        exx
        push hl   ;;PUSH HL'
        exx
        ld a, (aux_01)
rt_loop_redraw_tile_cols:
            push af

            ld a, (hl)
            push hl

            ld hl, #TILESET_START
            ld bc, #TILE_SIZE
            cp #0x00
            jr z, rt_loop_retdaw_get_tile_ptr_end
rt_loop_retdaw_get_tile_ptr:
                add hl, bc
                dec a
                jr nz ,rt_loop_retdaw_get_tile_ptr

rt_loop_retdaw_get_tile_ptr_end:
            ;HL -> sprite_ptr
            exx
            ld d, h
            ld e, l
            push de
            ld de, #TILE_W
            add hl, de
            exx
            pop de
            ;DE -> vmem_ptr
            call cpct_drawTileZigZagGrayCode4x8_af_asm
        
            pop hl
            inc hl

            pop af
            dec a
            jr nz, rt_loop_redraw_tile_cols

        exx
        pop hl
        ld bc, #SCREEN_W
        add hl, bc
        exx

        pop hl
        ld bc, #TILEMAP_W
        add hl, bc

        pop af
        dec a
        jr nz, rt_loop_redraw_tile_rows
    ret


;;==================================================================
;;                         REDRAW VECTOR
;;------------------------------------------------------------------
;; Redibuja la parte del tilemap que está alrededor de cada entidad del vector de entidades
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Inicio del vector de entidades
;;  A  -> Número de elementos del vector
;;  BC -> Tamaño de cada elemento del vector
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL, BC', DE', HL'
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sr_redraw_vector:

    cp #0x00
    ret z
    rv_loop_vector:
    
        push af
        push bc

        call _sr_redraw_tiles_fast
        ld b, _eph_x(iy)                ;;Establecemos la posicion actual a la pasada
        ld _ed_pre_x(iy), b
        ld b, _eph_y(iy)
        ld _ed_pre_y(iy), b
        ld b, _eph_offset(iy)
        ld _ed_pre_o(iy), b

        pop bc
        pop af
        add iy, bc
        dec a
        jr nz, rv_loop_vector

    ret


;;==================================================================
;;                         SWAP BUFFERS
;;------------------------------------------------------------------
;; Intercambia el backbuffer y el frontbuffer, y modifica el CRTC para que apunte al frontbuffer
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, HL
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sr_swap_buffers:
    ld hl, (mg_front_buffer)   ;; Inicialmente (80C0)
    ld a, l                 ;; Carga el front buffer en el back buffer
    ld (mg_back_buffer) , a
    ld a, h                 ;; Carga el back buffer en el front buffer
    ld (mg_front_buffer), a


    srl a
    srl a
    ld l, a

    jp cpct_setVideoMemoryPage_asm


;;==================================================================
;;                         DRAW ENTITY    -    OPTIMIZARRRR
;;------------------------------------------------------------------
;; Dibuja una entidad a partir de un puntero a la misma.
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Entity_drawable ptr
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL, IX
;;
;;------------------------------------------------------------------
;; CYCLES: [2361 | 12949]
;;==================================================================
_sr_draw_entity:

    ld a, (mg_back_buffer)
    ld d, a
    ld e, #0x00              ;;[10] Poner en un futuro el inicio del doble buffer
    ld b, _eph_y(iy)            ;;[19]
    ld a, _ed_oy(iy)
    add b
    ld b, a

    ld c, _eph_x(iy)            ;;[19] -> [48]
    ld a, _ed_ox(iy)
    add c
    ld c, a

    bit 6, _eph_attributes(iy)  ;;[20]
    jr z, sde_no_add_b          ;;[7 | 12]
        ld a, _ed_spr_he(iy)    ;;[20]
        add b                   ;;[4]
        dec a                   ;;[4]
        ld b, a                 ;;[4]  -> [27 | 64]
sde_no_add_b:                   

    call cpct_getScreenPtr_asm  ;;[277]
    ex de, hl                   ;;[4]  -> [281]
    
    
    ld h, _ed_spr_h(iy)         ;;[19]
    ld l, _ed_spr_l(iy)         ;;[19]
    ld b, #0x00                 ;;[7]
    ld c, _ed_spr_size(iy)      ;;[19]
    ld a, _eph_offset(iy)       ;;[]
    cp #0x00
    jr z, sde_offset_continue
sde_offset_loop:
        add hl, bc
        dec a
        jr nz, sde_offset_loop
sde_offset_continue:

    ld c, _ed_spr_wi(iy)        ;;[19]
    ld b, _ed_spr_he(iy)        ;;[19] -> [38]

    ld a, _eph_attributes(iy)   ;;[19]
    bit 7, a                    ;;[8]
    jr nz, sde_masqued          ;;[7 | 12]  -> [34 | 39]

    and #0b01000000             ;;[7]
    jp z, cpct_drawSprite_asm   ;;[2046 | 5418] -> [2053 | 5425] -> [2556 | 5926]
    
    ld   a, _ed_spr_wi(iy)      ;;[19]
    ld   b, _ed_spr_he(iy)      ;;[19]
    ex de, hl                   ;;[4]
    jp cpct_drawSpriteVFlip_asm ;;[2234 | 6170] -> [2283 | 6219] -> [2823 | 6715]

sde_masqued:

    and #0b01000000                     ;;[7]
    jp z, cpct_drawSpriteMasked_asm     ;;[1858 | 12434] -> [1865 | 12441] -> [2361 | 12949]
    
    ld   a, _ed_spr_wi(iy)              ;;[19]
    ld   b, _ed_spr_he(iy)              ;;[19]
    ld   c, #0x00                       ;;[7]
    ld  ix, #0x0000                     ;;[14]
    add ix, bc                          ;;[15]
    ex de, hl                           ;;[4]
    jp cpct_drawSpriteVFlipMasked_asm   ;;[3686 | 12038] -> [3771 | 12123] -> [4316 | 12668]



;;==================================================================
;;                       DRAW ENTITY VECTOR
;;------------------------------------------------------------------
;; Dibuja todas las entidades de un vector.
;; PD: El contador del vector tiene que estar un byte antes del vector
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY  -> Puntero al principio del vector
;;  A   -> Número de elementos del vector
;;  BC  -> Tamaño de cada elemento del vector
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL, IX, IY, AF'
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sr_draw_entity_vector:

    cp #00
    ret z
    dev_vector_loop:
        ex af, af'
        push bc

        ld a, _ee_disabled(iy)
        cp #0x00
        jr nz, dev_next_entity
            call _sr_draw_entity
            jr dev_next_entity

        dev_next_entity:
        pop bc
        ex af, af'

        add iy, bc
        dec a
        jr nz, dev_vector_loop

    ret



;;==================================================================
;;                       REDRAW ENTITY FAST
;;------------------------------------------------------------------
;; Redibuja el fondo de los sprites con un cuadrado del color de fondo
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY  -> Puntero al entity_drawable
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
_sr_redraw_tiles_fast:

    ld c, _ed_pre_x(iy)
    ld b, _ed_pre_y(iy)

    ld a, _ed_ox(iy)
    add c
    ld c, a

    ld a, _ed_oy(iy)
    add b
    ld b, a

    ld a, (mg_back_buffer)
    ld d, a
    ld e, #0x00
    call cpct_getScreenPtr_asm

    ex de, hl
    
    ld b, _ed_spr_he(iy)
    ld c, _ed_spr_wi(iy)
    ld a, _ed_pre_o(iy)
    cp #0x00
    jr nz, rtf_draw_full_sprite
      
      dec c

rtf_draw_full_sprite:
    ld a, #0xF0
    call cpct_drawSolidBox_asm

    ret


;;==================================================================
;;                       MANAGE PLAYER ANIMATIONS
;;------------------------------------------------------------------
;; Controla la animacion de la entidad y la cambia de ser necesario
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY  -> Puntero al entity_drawable
;;
;; OUTPUT:
;;  DE  -> Animacion que corresponderia al jugador 
;;
;; DESTROYS:
;;  AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sr_manage_player_animations:

    ld de, #anim_player_door
    bit 5, _ep_player_attr(iy)
    ret nz

    bit 5, _eph_attributes(iy)              ;;Comprobamos Izquierda/Derecha
    jr nz, ma_right

ma_left:                                    ;;----IZQUIERDA-----------------------------------------
        bit 4, _eph_attributes(iy)          ;;Comprobamos si esta en el suelo
        jr z, ma_left_no_ground

            ld a, _eph_vx(iy)               ;;Comprobamos si se esta moviendo
            cp #0x00
            jr nz, ma_left_ground_movement

                ld de, #anim_player_idle_L  ;;Cargamos la animacion de suelo sin moverse izquierda
                ret

ma_left_ground_movement:
                ld de, #anim_player_run_L  ;;Cargamos la animacion de suelo corriendo izquierda
                ret

ma_left_no_ground:

            ld a, _ep_wall_dir(iy)
            cp #0x00
            jr nz, ma_left_no_ground_wall

                ld de, #anim_player_jump_L
                ret

ma_left_no_ground_wall:

                ld de, #anim_player_wall_L
                ret

ma_right:                                   ;;----DERECHA-------------------------------------------
        bit 4, _eph_attributes(iy)          ;;Comprobamos si esta en el suelo
        jr z, ma_right_no_ground

            ld a, _eph_vx(iy)               ;;Comprobamos si se esta moviendo
            cp #0x00
            jr nz, ma_right_ground_movement

                ld de, #anim_player_idle_R  ;;Cargamos la animacion de suelo sin moverse izquierda
                ret

ma_right_ground_movement:

                ld de, #anim_player_run_R  ;;Cargamos la animacion de suelo corriendo izquierda
                ret

ma_right_no_ground:

            ld a, _ep_wall_dir(iy)
            cp #0x00
            jr nz, ma_right_no_ground_wall

                ld de, #anim_player_jump_R
                ret

ma_right_no_ground_wall:

                ld de, #anim_player_wall_R
                ret


    ret


;;==================================================================
;;                       APPLY ANIMATIONS
;;------------------------------------------------------------------
;; Comprueba la animacion actual del jugador y la cambia o la actualiza
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY  -> Puntero al entity_drawable
;;  DE  -> Animacion a la que se quiere actualizar
;;  HL  -> Offset del puntero Sprite Respecto al puntero de la animacion
;;
;; OUTPUT:
;;  A -> Si ha llegado al final de la animacion (0 NO, 1 Si)
;;
;; DESTROYS:
;;  AF, BC, DE, HL
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sr_apply_animation:

    ld a, _ed_anim_ind_h(iy)        ;;Comprobamos si la animacion actual y la que pasan es la misma
    xor d
    ld b, a
    ld a, _ed_anim_ind_l(iy)
    xor e
    or b
    jr z, aa_continue_animation

        ld _ed_anim_ind_h(iy), d
        ld _ed_anim_ind_l(iy), e
        ld c, #0xFF
        ld b, #0x00
        ld _ed_anim_pos(iy), c
        ld _ed_anim_dur(iy), b
        jr aa_continue_animation_no_load

aa_continue_animation:

    ld c, _ed_anim_pos(iy)
    ld b, _ed_anim_dur(iy)

aa_continue_animation_no_load:
    ;;DE -> animacion
    ;;C  -> anim_pos
    ;;B  -> anim_dur

    ld a, b
    cp #0x00
    jr z, aa_change_animation_sprite 

        dec a
        ld _ed_anim_dur(iy), a
        xor a
        ret

aa_change_animation_sprite:

        inc c
        push hl
        push bc
        sla c
        sla c
        ld b, #0x00


        ld h, d
        ld l, e
        add hl, bc
        pop bc
        ld a, (hl)
        cp #0xFE
        jr z, aa_change_animation_sprite_infinite
        cp #0xFF
        jr nz, aa_change_animation_sprite_continue

            ex de, hl
            ld c, #0x00

aa_change_animation_sprite_continue:
        ;;C  -> Posicion
        ld e, (hl)  ;;DE -> Sprite
        inc hl
        ld d, (hl)
        inc hl
        ld b, (hl)  ;;B  -> Duracion 

        pop hl
        add hl, de
        ex de, hl

        ld _ed_spr_l(iy), e
        ld _ed_spr_h(iy), d
        ld _ed_anim_pos(iy), c
        ld _ed_anim_dur(iy), b
        xor a

    ret

aa_change_animation_sprite_infinite:
    pop hl
    ld _ed_anim_dur(iy), #0xFF
    ld a, #0x01
    ret






;;==================================================================
;;                DECOMPRESS IMAGE ON VIDEO MEMORY
;;------------------------------------------------------------------
;; Descomprime una imagen que ocupa toda la pantalla en memoria de
;; video
;;------------------------------------------------------------------
;;
;; INPUT:
;;  DE  -> Puntero al final de la imagen comprimida
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
_sr_decompress_image_on_video_memory:

    ld a, (#mg_front_buffer)
    ld h, a
    ld l, #0x00
    ld bc, #0x4000 - 1
    add hl, bc
    ex de, hl
    jp cpct_zx7b_decrunch_s_asm



;;==================================================================
;;                COPY BACKBUFFER TO FRONTBUFFER
;;------------------------------------------------------------------
;; Copia el backbuffer en el frontbuffer
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
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
_sr_copy_back_to_front:
    ld a, (mg_back_buffer)
    ld h, a
    ld l, #0x00
    ld a, (mg_front_buffer)
    ld d, a
    ld e, #0x00
    ld bc, #0x4000
    ldir

    ret




;;==================================================================
;;                      FILL BACKBUFFER
;;------------------------------------------------------------------
;; Copia el backbuffer en el frontbuffer
;;------------------------------------------------------------------
;;
;; INPUT:
;;  B -> Color de la pantalla
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
_sr_fill_backbuffer:
    ld a, (mg_back_buffer)
    ld h, a
    ld l, #0x00
    ld (hl), b
    ld d, h
    ld e, l
    inc de
    ld bc, #0x4000 - 1
    ldir

    ret


;;==================================================================
;;                           DRAW HUD
;;------------------------------------------------------------------
;; Dibuja el HUD
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
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
_sr_draw_HUD:

;IZQUIERDA ------------------------------------------------------------

    

;Dibujamos la linea de separacion entre el juego y el HUD    
    ld a, (mg_back_buffer)
    add #0x38
    ld h, a
    ld b, #0x50
    ld l, b
    ld a, #0xFF
dh_draw_hud_line_loop:

        ld (hl), a
        inc hl

    dec b
    jr nz, dh_draw_hud_line_loop


;Dibujamos los iconos de P1 y P2

    ld a, (mg_back_buffer)
    ld d, a
    ld e, #0x00
    ld bc, #0x0F04
    ld a, #0xFF
    
    push de
    call cpct_drawSolidBox_asm      ;Dibujamos el fondo blanco
    pop de

    ld hl, #0x2801
    add hl, de
    ld de, #_hud_spr_12
    ex de, hl
    ld bc, #0x0501
    push de
    call cpct_drawSprite_asm        ;Icono de P1 1
    pop de

    inc de
    ld hl, #_hud_spr_13
    ld bc, #0x0501
    push de
    call cpct_drawSprite_asm        ;Icono de P1 2
    pop de

    inc de
    inc de
    inc de
    ld hl, #_hud_spr_10
    ld bc, #0x0501
    push de
    call cpct_drawSprite_asm        ;Icono Muertes 1
    pop de

    inc de
    ld hl, #_hud_spr_11
    ld bc, #0x0501
    push de
    call cpct_drawSprite_asm        ;Icono Muertes 2
    pop de

    ld a, #0x06
    add e
    ld e, a
    ld a, #0x10
    sub d
    neg
    ld d, a
    ld bc, #0x0901
    ld a, #0xF4
    push de
    call cpct_drawSolidBox_asm      ;Separacion Muertes/Puntuacion 1
    pop de


    ld a, #0x08
    add e
    ld e, a
    ld a, #0x10
    add d
    ld d, a
    ld hl, #_hud_spr_00
    ld bc, #0x0501
    push de
    call cpct_drawSprite_asm        ;Ultimo digito de puntiacion 1
    pop de



    ld a,#0x0E
    add e
    ld e, a
    ld a, (mg_back_buffer)
    ld d, a
    ld bc, #0x0F01
    ld a, #0xF5
    push de
    call cpct_drawSolidBox_asm      ;Separacion Puntuacion/Calaveras 1
    pop  de

    ld a, #0x0B
    add e
    ld e, a
    ld bc, #0x0F01
    ld a, #0xFA
    push de
    call cpct_drawSolidBox_asm      ;Separacion Puntuacion/Calaveras 2
    pop  de



    ld a, #0x14
    add e
    ld e, a
    ld a, #0x28
    add d
    ld d, a
    ld hl, #_hud_spr_00
    ld bc, #0x0501
    push de
    call cpct_drawSprite_asm        ;Ultimo digito de puntiacion 2
    pop de


    inc de
    inc de
    ld a, #0x10
    sub d
    neg
    ld d, a
    ld bc, #0x0901
    ld a, #0xF4
    push de
    call cpct_drawSolidBox_asm      ;Separacion Muertes/Puntuacion 2
    pop  de

    inc de
    inc de
    ld a, #0x10
    add d
    ld d, a
    ld hl, #_hud_spr_10
    ld bc, #0x0501
    push de
    call cpct_drawSprite_asm        ;Icono Muertes P2 1
    pop de

    inc de
    ld hl, #_hud_spr_11
    ld bc, #0x0501
    push de
    call cpct_drawSprite_asm        ;Icono Muertes P2 2
    pop de

    ld a, #0x06
    add e
    ld e, a
    ld a, (mg_back_buffer)
    ld d, a
    ld bc, #0x0F04
    ld a, #0xFF
    push de
    call cpct_drawSolidBox_asm      ;Dibujamos el fondo blanco 2
    pop  de

    inc de
    ld a, #0x28
    add d
    ld d, a
    ld hl, #_hud_spr_14
    ld bc, #0x0501
    push de
    call cpct_drawSprite_asm        ;Icono P2 1 
    pop de

    inc de
    ld hl, #_hud_spr_15
    ld bc, #0x0501
    push de
    call cpct_drawSprite_asm        ;Icono P2 2
    pop de

    


    ld iy, #player_1
    ld a, #0x00
    call _sr_update_hud_player_data
    ld a, #0x01
    call _sr_update_hud_player_data


    ld iy, #player_2
    ld a, #0x00
    call _sr_update_hud_player_data
    ld a, #0x02
    call _sr_update_hud_player_data

    call _sr_update_hud_skull

    ret


;;==================================================================
;;                       UPDATE HUD SKULL
;;------------------------------------------------------------------
;; Dibuja el HUD
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> player_ptr
;;   A -> Info to update (0 -> muertes, 1 -> puntuacion)
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
_sr_update_hud_skull:

    ld a, (tries)
    ld de, #HUD_SKULL_1 
    ;CALAVERA 1
    cp #0xFF
    jr z, uhs_skull_1_transparent
    cp #0x04
    jr z, uhs_skull_1_transparent

        ld hl, #_hud_skull_spr_1
        jr uhs_skull_1_draw

uhs_skull_1_transparent:

        ld hl, #_hud_skull_spr_0

uhs_skull_1_draw:

    ld bc, #0x0702
    push hl
    push de
    call cpct_drawSprite_asm
    pop de
    pop hl
    ld a, #0x40
    add d
    ld d, a
    ld bc, #0x0702
    call cpct_drawSprite_asm


    ld a, (tries)
    ld de, #HUD_SKULL_2 
    ;CALAVERA 2
    cp #0xFF
    jr z, uhs_skull_2_red
    cp #0x02
    jr c, uhs_skull_2_transparent
    cp #0x04
    jr z, uhs_skull_2_transparent

        ld hl, #_hud_skull_spr_1
        jr uhs_skull_2_draw

uhs_skull_2_transparent:

        ld hl, #_hud_skull_spr_0
        jr uhs_skull_2_draw

uhs_skull_2_red:

        ld hl, #_hud_skull_spr_2

uhs_skull_2_draw:

    ld bc, #0x0702
    push hl
    push de
    call cpct_drawSprite_asm
    pop de
    pop hl
    ld a, #0x40
    add d
    ld d, a
    ld bc, #0x0702
    call cpct_drawSprite_asm

    ld a, (tries)
    ld de, #HUD_SKULL_3
    ;CALAVERA 3
    cp #0xFF
    jr z, uhs_skull_3_transparent
    cp #0x04
    jr z, uhs_skull_3_transparent
    cp #0x03
    jr c, uhs_skull_3_transparent

        ld hl, #_hud_skull_spr_1
        jr uhs_skull_3_draw

uhs_skull_3_transparent:

        ld hl, #_hud_skull_spr_0

uhs_skull_3_draw:

    ld bc, #0x0702
    push hl
    push de
    call cpct_drawSprite_asm
    pop de
    pop hl
    ld a, #0x40
    add d
    ld d, a
    ld bc, #0x0702
    call cpct_drawSprite_asm



    ret



;;==================================================================
;;                       UPDATE HUD PLAYER DATA
;;------------------------------------------------------------------
;; Dibuja el HUD
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> player_ptr
;;   A -> Info to update (0 -> muertes, 1 -> puntuacion)
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
_sr_update_hud_player_data:

    ex af, af'
    bit 0, _ep_player_attr(iy)
    jr z, uhpd_player_1_data

        ld de, #HUD_P2_SCORE
        ld bc, #HUD_P2_DEATHS
        jr uhpd_player_data_selected

uhpd_player_1_data:

        ld de, #HUD_P1_SCORE
        ld bc, #HUD_P1_DEATHS

uhpd_player_data_selected:

    ex af, af'
    cp #0x00
    jr z, uhpd_update_deaths

uhpd_update_score:

    ld a, #0x02
uhpd_draw_score_loop:
    ex af, af'
    push de

        ld a, _ep_score_cdm(iy)
        push de
        call _sr_draw_number_2d
        pop de

        inc de
        inc de
        ld a, _ep_score_mc(iy)
        push de
        call _sr_draw_number_2d
        pop de

        inc de
        inc de
        ld a, _ep_score_du(iy)
        call _sr_draw_number_2d

    pop de
    ld a, #0x40
    add d
    ld d, a
        
    ex af, af'
    dec a
    jr nz, uhpd_draw_score_loop
    ret

uhpd_update_deaths:

    ld d, b
    ld e, c

    ld a, #0x02

uhpd_draw_deaths_loop:
    ex af, af'
    push de
    
        ld a, _ep_deaths_mc(iy)
        push de
        call _sr_draw_number_2d
        pop de

        inc de
        inc de
        ld a, _ep_deaths_du(iy)
        call _sr_draw_number_2d
    
    pop de
    ld a, #0x40
    add d
    ld d, a

    ex af, af'
    dec a
    jr nz, uhpd_draw_deaths_loop
    
    ret

;;==================================================================
;;                        DRAW NUMBER 2D
;;------------------------------------------------------------------
;; Dibuja dos digitos de un numero formateado con BCD
;;------------------------------------------------------------------
;;
;; INPUT:
;;  DE -> Vmem ptr
;;   A -> Numero a dibujar
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
_sr_draw_number_2d:

    
    push af
    and #0b11110000
    srl a
    srl a
    srl a
    ld c, a
    ld b, #0x00
    ;;C -> Digito Izquierda * 2
    ld hl, #_hud_number_index
    add hl, bc
    ld c, (hl)
    inc hl 
    ld b, (hl)
    ld h ,b
    ld l ,c
    ld bc, #0x0501
    push de
    call cpct_drawSprite_asm
    pop de

    inc de
    pop af
    and #0b00001111
    sla a
    ld c, a
    ld b, #0x00
    ;;C -> Digito Derecha * 2
    ld hl, #_hud_number_index
    add hl, bc
    ld c, (hl)
    inc hl 
    ld b, (hl)
    ld h ,b
    ld l ,c
    ld bc, #0x0501
    call cpct_drawSprite_asm
    
    ret



;;==================================================================
;;                         DRAW STRING
;;------------------------------------------------------------------
;; Redibuja la parte del tilemap que está alrededor de la entidad
;;------------------------------------------------------------------
;;
;; INPUT:
;;  HL -> Puntero al String
;;  DE -> Puntero a la memoria de video
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL, BC', DE', HL'
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sr_draw_string:

    ld a, (hl)
    cp #END_STRING
    ret z
    
    push hl
    cp #START_CHARACTERS
    jr c, ds_draw_number
ds_draw_character:

        sub #START_CHARACTERS
        ld hl, #_hud_letter_index 
        jr ds_continue_draw

ds_draw_number:

        sub #START_NUMBERS
        ld hl, #_hud_number_index

ds_continue_draw:

    sla a
    ld b, #0x00
    ld c, a
    add hl, bc
    ld c, (hl)
    inc hl
    ld b, (hl)
    ld h, b
    ld l, c

    ld bc, #0x0501

    ;HL -> Puntero al sprite
    ;DE -> Puntero a Vmem
    ;BC -> Tamano del sprite

    push de
    call cpct_drawSprite_asm
    pop de
    inc de

    pop hl
    inc hl
    jr _sr_draw_string



;;==================================================================
;;                         DRAW SUBMENU BOX
;;------------------------------------------------------------------
;; Redibuja la parte del tilemap que está alrededor de la entidad
;;------------------------------------------------------------------
;;
;; INPUT:
;;  A  -> Buffer donde se va a dibujar
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL, BC', DE', HL'
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sr_draw_submenu_box:

    ld b, a
    ld c, #0x00

    push bc

    ld hl, #SUBMENU_BOX_1_POS
    add hl, bc
    ex de, hl
    ld bc, #0x2840
    ld a, #0xF0
    call cpct_drawSolidBox_asm

    pop bc
    push bc

    ld hl, #SUBMENU_BOX_2_POS
    add hl, bc
    ex de, hl
    ld bc, #0x2810
    ld a, #0xF0
    call cpct_drawSolidBox_asm

    pop bc

    ld hl, #SUBMENU_BOX_LINE_TOP
    add hl, bc
    ex de, hl

    ld hl, #SUBMENU_BOX_LINE_BOTTOM
    add hl, bc

    ld c, #0x50
dsb_draw_lines_loop:

        ld a, #0xFF
        ld (hl), a
        ld (de), a

        inc de
        inc hl

        dec c
        jr nz, dsb_draw_lines_loop

    ret


