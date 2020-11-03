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

.include "data.h.s"

.area _DATA

;;LEVEL DATA -----------------------------------
level_index:

    ;;LEVEL 00
    .dw _map_17_end ;;Tilemap del Nivel #0x28FF
    .db #0x00       ;;Level Attr
    .db #0x00       ;;

    ;;LEVEL 00
    .dw _map_09_end ;;Tilemap del Nivel #0x28FF
    .db #0x00       ;;Level Attr
    .db #0x00       ;;

    ;;LEVEL 01
    .dw _map_08_end ;;Tilemap del Nivel
    .db #0x00       ;;Level Attr
    .db #0x00       ;;

    ;;LEVEL 02
    .dw _map_01_end ;;Tilemap del Nivel
    .db #0x00       ;;Level Attr
    .db #0x00       ;;Nivel final

    ;;LEVEL 02
    .dw _map_02_end ;;Tilemap del Nivel
    .db #0x00       ;;Level Attr
    .db #0x00       ;;Nivel final

    ;;LEVEL 02
    .dw _map_04_end ;;Tilemap del Nivel
    .db #0x00       ;;Level Attr
    .db #0x00       ;;Nivel final

    ;;LEVEL 03
    .dw _map_05_end ;;Tilemap del Nivel
    .db #0x00       ;;Level Attr
    .db #0xFF       ;;Nivel final

;;Level Attr [C c 0 0 0 0 0 0]
; C -> Completed (1 -> Nivel Completado, 0 -> Nivel NO Completado)
; c -> Collecable (1 -> Collectable Cogido, 0 -> Collectable NO Cogido)
; - ->
; - ->
; - ->
; - ->
; - ->
; - ->

palette_index:
    .db #0x54, #0x54, #0x4c, #0x4b      ;; Paleta por defecto
    .db #0x54, #0x54, #0x40, #0x4b      ;; Miss Input 2 psicodélico
    ;.db #0x4c, #0x4c, #0x4b, #0x54      ;; Miss Input 2 psicodélico 2
    .db #0x44, #0x44, #0x4C, #0x4A
    .db #0x5C, #0x5C, #0x4C, #0x4B
    .db #0x56, #0x56, #0x52, #0x4B
    .db #0x44, #0x44, #0x55, #0x5B
    .db #0x5E, #0x5E, #0x4A, #0x49

    .db #0xFF






;;ALL TEXTS
mm_singleplayer: .asciz "1[@SINGLEPLAYER/"
mm_multiplayer: .asciz "2[@MULTIPLAYER/"
mm_options: .asciz "3[@OPTIONS/"

om_controls: .asciz "CONTROLS/"
om_p1controls: .asciz "1[@P1@CONTROLS/"
om_p2controls: .asciz "2[@P2@CONTROLS/"
om_accessibility: .asciz "ACCESSIBILITY/"
om_godmode: .asciz "3[@GOD@MODE/"
om_palette: .asciz "4[@PALETTE/"
om_restore: .asciz "5[@RESTORE@DEFAULT/"
om_back: .asciz "6[@BACK/"
om_changecontrols: .asciz "PRESS@A@KEY@TO@CHANGE@CONTROLS/"
om_rightkey: .asciz "[@RIGHT@[/"
om_leftkey: .asciz "[@LEFT@[@/"
om_jumpkey: .asciz "[@JUMP@[@/"
om_off: .asciz "=??/"
om_on: .asciz "=>@/"


pm_pause: .asciz "[@PAUSE@[/"
pm_return: .asciz "1[@RESUME/"
pm_mainmenu: .asciz "2[@MAIN@MENU/"

em_completed: .asciz "YOU@HAVE@COMPLETED@MISS@INPUT@2/"
em_score: .asciz "SCORE/"
em_deaths: .asciz "DEATHS/"
em_p1: .asciz "P1[/"
em_p2: .asciz "P2[/"
em_time: .asciz "[FINAL@TIME[/"
em_key: .asciz "[PRESS@ANY@KEY@TO@CONTINUE[/"
em_no_p2_score: .asciz "[[[[[[[/"
em_no_p2_deaths: .asciz "[[[[/"






_hud_number_index:
    .dw _hud_spr_00
    .dw _hud_spr_01
    .dw _hud_spr_02
    .dw _hud_spr_03
    .dw _hud_spr_04
    .dw _hud_spr_05
    .dw _hud_spr_06
    .dw _hud_spr_07
    .dw _hud_spr_08
    .dw _hud_spr_09


_hud_letter_index:
    .dw _offon_spr_0
    .dw _offon_spr_1
    .dw _offon_spr_2
    .dw _letter_spr_00
    .dw _letter_spr_01
    .dw _letter_spr_02
    .dw _letter_spr_03
    .dw _letter_spr_04
    .dw _letter_spr_05
    .dw _letter_spr_06
    .dw _letter_spr_07
    .dw _letter_spr_08
    .dw _letter_spr_09
    .dw _letter_spr_10
    .dw _letter_spr_11
    .dw _letter_spr_12
    .dw _letter_spr_13
    .dw _letter_spr_14
    .dw _letter_spr_15
    .dw _letter_spr_16
    .dw _letter_spr_17
    .dw _letter_spr_18
    .dw _letter_spr_19
    .dw _letter_spr_20
    .dw _letter_spr_21
    .dw _letter_spr_22
    .dw _letter_spr_23
    .dw _letter_spr_24
    .dw _letter_spr_25
    .dw _letter_spr_26
    .dw _letter_spr_27



;;PLAYER ANIMATIONS ----------------------------
anim_player_idle_R:
    .dw _player_spr_00      ;Sprite
    .db #0xFF               ;Duracion
    .db #0x00               ;Padding
    
    .dw #0xFFFF             ;REPEAT_ed_anim_pos

anim_player_idle_L:
    .dw _player_spr_01      ;Sprite
    .db #0xFF               ;Duracion
    .db #0x00               ;Padding
    
    .dw #0xFFFF             ;REPEAT_ed_anim_pos

anim_player_wall_L:
    .dw _player_spr_14      ;Sprite
    .db #0xFF               ;Duracion
    .db #0x00               ;Padding
    
    .dw #0xFFFF             ;REPEAT_ed_anim_pos

anim_player_wall_R:
    .dw _player_spr_12      ;Sprite
    .db #0xFF               ;Duracion
    .db #0x00               ;Padding
    
    .dw #0xFFFF             ;REPEAT_ed_anim_pos

anim_player_jump_L:
    .dw _player_spr_05      ;Sprite
    .db #0xFF               ;Duracion
    .db #0x00               ;Padding
    
    .dw #0xFFFF             ;REPEAT_ed_anim_pos

anim_player_jump_R:
    .dw _player_spr_04      ;Sprite
    .db #0xFF               ;Duracion
    .db #0x00               ;Padding
    
    .dw #0xFFFF             ;REPEAT_ed_anim_pos


anim_player_run_R:
    .dw _player_spr_00      ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _player_spr_04
    .db #0x09
    .db #0x00

    .dw _player_spr_00
    .db #0x03
    .db #0x00

    .dw _player_spr_08
    .db #0x09
    .db #0x00
    
    .dw #0xFFFF             ;REPEAT_ed_anim_pos

anim_player_run_L:
    .dw _player_spr_01      ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _player_spr_05
    .db #0x09
    .db #0x00

    .dw _player_spr_01
    .db #0x03
    .db #0x00

    .dw _player_spr_09
    .db #0x09
    .db #0x00
    
    .dw #0xFFFF             ;REPEAT_ed_anim_pos

anim_player_door:

    .dw _player_spr_00      ;Sprite
    .db #0x20               ;Duracion
    .db #0x00               ;Padding

    .dw _player_2_spr_15      ;Sprite
    .db #0x10               ;Duracion
    .db #0x00               ;Padding

    .dw _player_2_spr_13      ;Sprite
    .db #0x10              ;Duracion
    .db #0x00               ;Padding

    .dw #0xFEFE             ;REPEAT_ed_anim_pos


anim_player_2_door:

    .dw _player_2_spr_00      ;Sprite
    .db #0x20               ;Duracion
    .db #0x00               ;Padding

    .dw _player_2_spr_15      ;Sprite
    .db #0x10               ;Duracion
    .db #0x00               ;Padding

    .dw _player_2_spr_13      ;Sprite
    .db #0x10              ;Duracion
    .db #0x00               ;Padding

    .dw #0xFEFE             ;REPEAT_ed_anim_pos


anim_player_death:

    .dw _player_spr_16      ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _player_2_spr_17      ;Sprite
    .db #0x03              ;Duracion
    .db #0x00               ;Padding

    .dw _player_spr_17      ;Sprite
    .db #0x03             ;Duracion
    .db #0x00               ;Padding

    .dw _player_spr_13      ;Sprite
    .db #0x03             ;Duracion
    .db #0x00               ;Padding

    .dw _player_2_spr_13   ;Sprite
    .db #0x03             ;Duracion
    .db #0x00               ;Padding


    .dw #0xFEFE             ;REPEAT_ed_anim_pos

anim_player_2_death:

    .dw _player_2_spr_16      ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _player_2_spr_17      ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _player_spr_17      ;Sprite
    .db #0x03              ;Duracion
    .db #0x00               ;Padding

    .dw _player_spr_13      ;Sprite
    .db #0x03              ;Duracion
    .db #0x00               ;Padding

    .dw _player_2_spr_13   ;Sprite
    .db #0x03              ;Duracion
    .db #0x00               ;Padding


    .dw #0xFEFE             ;REPEAT_ed_anim_pos


anim_player_respawn:

    .dw _player_2_spr_13   ;Sprite
    .db #0x03              ;Duracion
    .db #0x00               ;Padding

    .dw _player_spr_13      ;Sprite
    .db #0x03              ;Duracion
    .db #0x00               ;Padding

    .dw _player_spr_17      ;Sprite
    .db #0x03              ;Duracion
    .db #0x00               ;Padding

    .dw _player_2_spr_17      ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _player_spr_16      ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw #0xFEFE             ;REPEAT_ed_anim_pos

anim_player_2_respawn:

    .dw _player_2_spr_13   ;Sprite
    .db #0x03              ;Duracion
    .db #0x00               ;Padding

    .dw _player_spr_13      ;Sprite
    .db #0x03              ;Duracion
    .db #0x00               ;Padding

    .dw _player_spr_17      ;Sprite
    .db #0x03              ;Duracion
    .db #0x00               ;Padding

    .dw _player_2_spr_17      ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _player_2_spr_16      ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw #0xFEFE             ;REPEAT_ed_anim_pos


;;ENEMY ANIMATIONS-----------------------------
anim_enemy_R:
    .dw _enemy_spr_00      ;Sprite
    .db #0x0A               ;Duracion
    .db #0x00               ;Padding

    .dw _enemy_spr_04      ;Sprite
    .db #0x0A               ;Duracion
    .db #0x00               ;Padding

    .dw #0xFFFF             ;REPEAT_ed_anim_pos

anim_enemy_L:
    .dw _enemy_spr_08      ;Sprite
    .db #0x0A               ;Duracion
    .db #0x00               ;Padding

    .dw _enemy_spr_12      ;Sprite
    .db #0x0A               ;Duracion
    .db #0x00               ;Padding

    .dw #0xFFFF             ;REPEAT_ed_anim_pos


anim_enemy_S:
    .dw _enemy_spr_00      ;Sprite
    .db #0x02               ;Duracion
    .db #0x00               ;Padding

    .dw _enemy_spr_04      ;Sprite
    .db #0x02               ;Duracion
    .db #0x00               ;Padding

    .dw #0xFFFF             ;REPEAT_ed_anim_pos



;;INTERACTABLE ANIMATIONS-----------------------------
anim_interactable_door:
    .dw _door_spr_0         ;Sprite
    .db #0x0A               ;Duracion
    .db #0x00               ;Padding

    .dw _door_spr_1         ;Sprite
    .db #0x20               ;Duracion
    .db #0x00               ;Padding

    .dw _door_spr_2         ;Sprite
    .db #0x20               ;Duracion
    .db #0x00               ;Padding


    .dw _door_spr_3         ;Sprite
    .db #0x20               ;Duracion
    .db #0x00               ;Padding


    .dw _door_spr_4         ;Sprite
    .db #0x05               ;Duracion
    .db #0x00               ;Padding


    .dw #0xFEFE             ;REPEAT_ed_anim_pos


anim_interactable_gravity_up_power_up:

    .dw _gravity_spr_00     ;Sprite
    .db #0x10               ;Duracion
    .db #0x00               ;Padding

    .dw _gravity_spr_01     ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _gravity_spr_02     ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _gravity_spr_03     ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _gravity_spr_04     ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _gravity_spr_05     ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _gravity_spr_06     ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw #0xFFFF             ;REPEAT_ed_anim_pos

anim_interactable_gravity_down_power_up:

    .dw _gravity_spr_07     ;Sprite
    .db #0x10               ;Duracion
    .db #0x00               ;Padding

    .dw _gravity_spr_08     ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _gravity_spr_09     ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _gravity_spr_10     ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _gravity_spr_11     ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _gravity_spr_12     ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _gravity_spr_13     ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw #0xFFFF             ;REPEAT_ed_anim_pos



anim_interactable_djump_active_power_up:

    .dw _double_jump_spr_4  ;Sprite
    .db #0x15               ;Duracion
    .db #0x00               ;Padding

anim_interactable_djump_power_up:

    .dw _double_jump_spr_0  ;Sprite
    .db #0x10               ;Duracion
    .db #0x00               ;Padding

    .dw _double_jump_spr_1  ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _double_jump_spr_2  ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _double_jump_spr_3  ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw _double_jump_spr_2  ;Sprite
    .db #0x03               ;Duracion
    .db #0x00               ;Padding

    .dw #0xFDFD             ;REPEAT_ed_anim_pos


anim_interactable_colectable:

    .dw _colectable_spr_0   ;Sprite
    .db #0x0A               ;Duracion
    .db #0x00               ;Padding

    .dw _colectable_spr_1   ;Sprite
    .db #0x0A               ;Duracion
    .db #0x00               ;Padding

    .dw _colectable_spr_2   ;Sprite
    .db #0x0A               ;Duracion
    .db #0x00               ;Padding

    .dw _colectable_spr_3   ;Sprite
    .db #0x0A               ;Duracion
    .db #0x00               ;Padding

    .dw #0xFFFF             ;REPEAT_ed_anim_pos
