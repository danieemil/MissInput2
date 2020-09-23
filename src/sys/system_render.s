.include "sys/system_render.h.s"


.area _DATA





.area _CODE
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

    ld de, #0xC000              ;;[10] Poner en un futuro el inicio del doble buffer
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