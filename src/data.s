.include "data.h.s"

.area _DATA

;;PLAYER ANIMATIONS-----------------------------

anim_player_idle:
    .dw _player_spr_00      ;Sprite
    ;.db #0x07               ;Duracion
    ;.db #0x00               ;Padding

    .dw _player_spr_04
    ;.db #0x07
    ;.db #0x00

    .dw _player_spr_00
    ;.db #0x07
    ;.db #0x00

    .dw _player_spr_08
    ;.db #0x07
    ;.db #0x00
    
    .dw #0x8080             ;REPEAT