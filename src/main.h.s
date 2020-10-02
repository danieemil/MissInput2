;;GLOBLS :D

.globl cpct_disableFirmware_asm
.globl cpct_scanKeyboard_asm
.globl cpct_isAnyKeyPressed_f_asm
.globl cpct_isKeyPressed_asm
.globl cpct_zx7b_decrunch_s_asm


.globl cpct_drawSprite_asm
.globl cpct_drawSpriteVFlip_asm
.globl cpct_drawSpriteMasked_asm
.globl cpct_drawSpriteVFlipMasked_asm


.globl cpct_setPalette_asm
.globl cpct_setVideoMode_asm
.globl cpct_setPALColour_asm
.globl cpct_getScreenPtr_asm
.globl cpct_waitVSYNC_asm

.globl cpct_etm_setDrawTilemap4x8_ag_asm
.globl cpct_etm_drawTilemap4x8_ag_asm

.globl _cpct_keyboardStatusBuffer
.globl _g_palette

;;SPRITES
.globl _tileset_spr_00
.globl _prueba01_spr_0

;;MAPAS
.include "bins/map_pruebas.h.s"


;;ENTIDADES
.globl player_1
.globl player_2



;;GAME STATES
GS_MAIN_MENU = 0
GS_SINGLEPLAYER = 1
GS_MULTIPLAYER = 2

;;ENTITY PHYSICS CONSTS
_eph_x           = 0
_eph_y           = 1
_eph_w           = 2
_eph_h           = 3
_eph_vx          = 4
_eph_vy          = 5
_eph_offset      = 6
_eph_attributes  = 7
_eph_size        = 8

;;ENTITY DRAWABLE CONSTS
_ed_spr_l       = 0 + _eph_size
_ed_spr_h       = 1 + _eph_size
_ed_spr_wi      = 2 + _eph_size
_ed_spr_he      = 3 + _eph_size
_ed_spr_size    = 4 + _eph_size
_ed_pre_x       = 5 + _eph_size
_ed_pre_y       = 6 + _eph_size
_ed_size        = 7 + _eph_size

;;ENTITY PLAYER CONSTS
_ep_jump_state  = 0 + _ed_size
_ep_size        = 1 + _ed_size

;;JUMP TABLE
JT_ON_GROUND = 9

;;SPRITE SIZES
PLAYER = 48  ;; 0x30 

