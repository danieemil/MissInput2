.include "sys/system_ai.h.s"

.area _DATA

.area _CODE


;;==================================================================
;;                          MANAGE ENEMY AI
;;------------------------------------------------------------------
;; Maneja al enemigo en función del tipo de enemigo que es y sus datos
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Puntero al enemigo
;;
;; OUTPUT:
;;  DE -> D = Enemy(key_r + key_l) E -> Enemy(key_u + key_d)
;;
;; DESTROYS:
;;  AF, DE
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_sa_manage_enemy_ai:
    
    ld de, #0x0000

    ld a, _ee_type(iy)
    cp #ET_TURTLE
    jr z, _sa_enemy_turtle_behaviour

    cp #ET_SAW
    jr z, _sa_enemy_saw_behaviour

    cp #ET_ROCK
    jr z, _sa_enemy_rock_behaviour

    ret



;;==================================================================
;;                   ENEMY TURTLE BEHAVIOUR
;;------------------------------------------------------------------
;; Ejecuta el arbol de decisiones del enemigo "Turtle"
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Puntero al enemigo
;;
;; OUTPUT:
;;  DE -> D = Enemy(key_r + key_l) E -> Enemy(key_u + key_d)
;;
;; DESTROYS:
;;  AF, DE
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_sa_enemy_turtle_behaviour:


    ld d, _eph_vx(iy)
    ld e, _eph_vy(iy)

    bit 3, _eph_attributes(iy)
    jr nz, etb_change_dir_x
        bit 2, _eph_attributes(iy)
        jr nz, etb_change_dir_x
            ret

    etb_change_dir_x:
        xor a
        sub d
        ld d, a

    ret




;;==================================================================
;;                   ENEMY SAW BEHAVIOUR
;;------------------------------------------------------------------
;; Ejecuta el arbol de decisiones del enemigo "Saw"
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Puntero al enemigo
;;
;; OUTPUT:
;;  DE -> D = Enemy(key_r + key_l) E -> Enemy(key_u + key_d)
;;
;; DESTROYS:
;;  NONE
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_sa_enemy_saw_behaviour:

    ld d, _eph_vx(iy)
    ld e, _eph_vy(iy)

    bit 3, _eph_attributes(iy)
    jr nz, esb_die
        bit 4, _eph_attributes(iy)
        jr nz, esb_die
            ret

    esb_die:
        dec _ee_disabled(iy)        ; Desactivamos al enemigo
        ld a, _ee_origin_x(iy)      ; Reposicionamos al enemigo en su posición de inicio
        ld _eph_x(iy), a
        ld a, _ee_origin_y(iy)
        ld _eph_y(iy), a

    ret

;;==================================================================
;;                   ENEMY ROCK BEHAVIOUR
;;------------------------------------------------------------------
;; Ejecuta el arbol de decisiones del enemigo "Rock"
;;------------------------------------------------------------------
;;
;; INPUT:
;;  IY -> Puntero al enemigo
;;
;; OUTPUT:
;;  DE -> D = Enemy(key_r + key_l) E -> Enemy(key_u + key_d)
;;
;; DESTROYS:
;;  NONE
;;
;;------------------------------------------------------------------
;; CYCLES: []
;;==================================================================
_sa_enemy_rock_behaviour:
    
    ld d, _eph_vx(iy)
    ld e, _eph_vy(iy)

    bit 3, _eph_attributes(iy)
    jr nz, erb_die
        ret

    erb_die:
        dec _ee_disabled(iy)        ; Desactivamos al enemigo
        ld a, _ee_origin_x(iy)      ; Reposicionamos al enemigo en su posición de inicio
        ld _eph_x(iy), a
        ld a, _ee_origin_y(iy)
        ld _eph_y(iy), a

    ret