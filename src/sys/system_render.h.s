.include "main.h.s"

.globl mg_front_buffer
.globl mg_back_buffer
.globl mg_game_state

.globl tries

.globl _sr_draw_entity
.globl _sr_draw_entity_vector
.globl _sr_swap_buffers
.globl _sr_redraw_tiles
.globl _sr_redraw_tiles_fast
.globl _sr_redraw_vector
.globl _sr_decompress_image_on_video_memory
.globl _sr_manage_player_animations
.globl _sr_copy_back_to_front
.globl _sr_fill_backbuffer
.globl _sr_draw_HUD
.globl _sr_update_hud_player_data
.globl _sr_update_hud_skull
.globl _sr_draw_string
.globl _sr_draw_submenu_box
.globl _sr_draw_number_2d

.globl _sr_apply_animation