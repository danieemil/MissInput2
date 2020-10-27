.include "data.h.s"

.area _DATA

;;PLAYER ANIMATIONS-----------------------------
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
    .dw _player_spr_13      ;Sprite
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

    .dw _player_spr_14      ;Sprite
    .db #0x10               ;Duracion
    .db #0x00               ;Padding

    .dw _player_spr_15      ;Sprite
    .db #0x10              ;Duracion
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
    .db #0x50               ;Duracion
    .db #0x00               ;Padding

    .dw _door_spr_2         ;Sprite
    .db #0x50               ;Duracion
    .db #0x00               ;Padding


    .dw _door_spr_3         ;Sprite
    .db #0x50               ;Duracion
    .db #0x00               ;Padding


    .dw _door_spr_4         ;Sprite
    .db #0x50               ;Duracion
    .db #0x00               ;Padding


    .dw #0xFEFE             ;REPEAT_ed_anim_pos