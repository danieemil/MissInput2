.include "sys/system_render.h.s"


.area _DATA

aux_01: .db #0x00
aux_02: .db #0x00



.area _CODE



;;==================================================================
;;                         REDRAW TILES
;;------------------------------------------------------------------
;; Dibuja una entidad a partir de un puntero a la misma.
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> entity_drawable_ptr
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL, IX
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sr_redraw_tiles:
    ld c, _ed_pre_x(iy)
    ld b, _ed_pre_y(iy)
    ld l, _ed_spr_wi(iy)
    ld h, _ed_spr_he(iy)
    add hl, bc
    ex de, hl
    ;;BC -> Esquina Superior Izquierda en 
    ;;HL -> Esquina Inferior Derecha

    srl b
    srl b
    srl b

    srl c
    srl c
    

    srl d
    srl d
    srl d

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

    ld hl, #MAPA_DIR
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

            ld hl, #_tileset_spr_00
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
;;                         INIT BUFFERS
;;------------------------------------------------------------------
;; Dibuja una entidad a partir de un puntero a la misma.
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL, IX
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sr_init_buffers:
    ld hl, #0xC000
    ld de, #0x8000
    ld bc, #0x4000
    ldir
    ret


;;==================================================================
;;                         SWAP BUFFERS
;;------------------------------------------------------------------
;; Dibuja una entidad a partir de un puntero a la misma.
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  AF, BC, DE, HL, IX
;;
;;------------------------------------------------------------------
;; CYCLES: [ | ]
;;==================================================================
_sr_swap_buffers:
    ld a, (mg_front_buffer)
    ld b, a
    ld a, (mg_back_buffer)
    ld (mg_front_buffer), a
    ld a, b
    ld (mg_back_buffer), a

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
    ld c, _eph_x(iy)            ;;[19] -> [48]

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