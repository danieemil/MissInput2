;;GLOBLS

.globl cpct_disableFirmware_asm
.globl cpct_zx7b_decrunch_s_asm
.globl cpct_scanKeyboard_asm
.globl cpct_isAnyKeyPressed_f_asm
.globl cpct_isKeyPressed_asm


.globl cpct_drawSprite_asm
.globl cpct_drawSpriteVFlip_asm
.globl cpct_drawSpriteMasked_asm
.globl cpct_drawSpriteVFlipMasked_asm
.globl cpct_drawTileZigZagGrayCode4x8_af_asm


.globl cpct_setPalette_asm
.globl cpct_setVideoMode_asm
.globl cpct_setPALColour_asm
.globl cpct_getScreenPtr_asm
.globl cpct_waitVSYNC_asm
.globl cpct_setVideoMemoryPage_asm


.globl cpct_etm_setDrawTilemap4x8_ag_asm
.globl cpct_etm_drawTilemap4x8_ag_asm

.globl _cpct_keyboardStatusBuffer
.globl _g_palette

;;SPRITES
.globl _tileset_spr_00
.globl _prueba01_spr_0
.globl _prueba02_spr_0


;;AMSTRAD CONSTS
SCREEN_W = 80
SCREEN_H = 200

;;TILEMAP CONSTS
.include "bins/map_pruebas.h.s"

TILEMAP_VMEM_START  = 0xC000+(80*3)
TILEMAP_DECRUNCH    = 0x3000
TILEMAP_W           = 20
TILEMAP_H           = 22
TILE_SIZE           = 4 * 8
TILE_W              = 4
TILE_H              = 8

;;GAME STATES
GS_MAIN_MENU        = 0
GS_SINGLEPLAYER     = 1
GS_MULTIPLAYER      = 2

;;ENTITY PHYSICS CONSTS
_eph_x              = 0
_eph_y              = 1
_eph_w              = 2
_eph_h              = 3
_eph_vx             = 4
_eph_vy             = 5
_eph_offset         = 6
_eph_attributes     = 7
_eph_size           = 8

_ephf_orientation   = 5
_ephf_ground        = 4
_ephf_wall          = 3
_ephf_h_ground      = 2

;;ENTITY DRAWABLE CONSTS
_ed_spr_l       = 0 + _eph_size
_ed_spr_h       = 1 + _eph_size
_ed_spr_wi      = 2 + _eph_size
_ed_spr_he      = 3 + _eph_size
_ed_spr_size    = 4 + _eph_size
_ed_pre_x       = 5 + _eph_size
_ed_pre_y       = 6 + _eph_size
_ed_size        = 7 + _eph_size

_edf_mask       = 7
_edf_flip       = 6

;;ENTITY INTERACTABLE CONSTS
_ei_size       = _ed_size

_eit_w          = 0
_eit_h          = 1
_eit_attributes = 2
_eit_spr_l      = 3
_eit_spr_h      = 4
_eit_spr_wi     = 5
_eit_spr_he     = 6
_eit_spr_size   = 7

;;ENTITY ENEMY CONSTS
_ee_jump_state      = 0 + _ed_size ;;Offset de la tabla de saltos
_ee_type            = 1 + _ed_size
_ee_disabled        = 2 + _ed_size
_ee_size            = 3 + _ed_size

_eef_gravity        = 1

;; ENEMY TYPE CONSTS
_eet_w          = 0
_eet_h          = 1
_eet_attributes = 2
_eet_spr_l      = 3
_eet_spr_h      = 4
_eet_spr_wi     = 5
_eet_spr_he     = 6
_eet_spr_size   = 7
_eet_type       = 8

ET_TURTLE       = 0
ET_SAW          = 1
ET_ROCK         = 2

;;ENTITY PLAYER CONSTS
_ep_jump_state = 0 + _ed_size ;;Offset de la tabla de saltos
_ep_wall_dir   = 1 + _ed_size ;;Indica si esta chocando con una pared y su orientacion
_ep_force_x    = 2 + _ed_size ;;Force X
_ep_size       = 3 + _ed_size

;;PLAYERS
.globl player_1
.globl player_2

;; ENEMIES
.globl enemy_index
.globl enemy_vector
.globl me_num_enemy

;; INTERACTUABLES
.globl interactable_index
.globl interactable_vector
.globl mi_num_interactable

;;JUMP TABLE
JT_INIT         = 0
JT_WALL_JUMP    = 0
JT_ON_GROUND    = 14
JT_ON_WALL      = 15
JT_END          = 22

FORCE_X_R           = #0b01111111
FORCE_X_L           = #0b10000000
FORCE_X_R_MIN       = FORCE_X_R - 2
FORCE_X_L_MIN       = FORCE_X_L + 3

;;SPRITE SIZES
PLAYER = 48  ;; 0x30 


;;COLLISION CONSTS
GROUP_TRANSPARENT   = 1
GROUP_SOLID         = 16
GROUP_DANGEROUS     = 19


TRANSPARENT = 0     ; Prioridad +
DANGEROUS   = 1     ; Prioridad ++
SOLID       = 2     ; Prioridad +++