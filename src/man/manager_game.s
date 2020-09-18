
.include "man/manager_game.h.s"

.area _DATA
    mg_game_state: .db #0x00
    mg_video_addr: .dw #0xC000

    p1_key_r:: .dw #0x0407      ;;'E'
    p1_key_l:: .dw #0x0807      ;;'W'
    p1_key_j:: .dw #0x0808      ;;'Q'

    p2_key_r:: .dw #0x0803      ;;'I'
    p2_key_l:: .dw #0x0404      ;;'O'
    p2_key_j:: .dw #0x0804      ;;'P'

.area _CODE






;;==================================================================
;;                   GAME LOOP SINGLEPLAYER INIT
;;------------------------------------------------------------------
;; Descripcion
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  NONE
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mg_game_loop_singleplayer_init:

    ret
    


;;==================================================================
;;                      GAME LOOP SINGLEPLAYER
;;------------------------------------------------------------------
;; Descripcion
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  NONE
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mg_game_loop_singleplayer:

    ld ix, #player_1

    call _sr_draw_entity

    call cpct_waitVSYNC_asm

    jp _mg_game_loop_singleplayer






;;==================================================================
;;                            GAME INIT
;;------------------------------------------------------------------
;; Descripcion
;;------------------------------------------------------------------
;;
;; INPUT:
;;  NONE
;;
;; OUTPUT:
;;  NONE
;;
;; DESTROYS:
;;  NONE
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_mg_game_init:
    

    call cpct_disableFirmware_asm

    ld c, #0x01
    call cpct_setVideoMode_asm

    ld hl, #_g_palette
    ld de, #0x0004
    call cpct_setPalette_asm

    ld hl, #0x0B10
    call cpct_setPALColour_asm

    ret