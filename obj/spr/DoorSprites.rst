                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module DoorSprites
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _door_spr_4
                             12 	.globl _door_spr_3
                             13 	.globl _door_spr_2
                             14 	.globl _door_spr_1
                             15 	.globl _door_spr_0
                             16 ;--------------------------------------------------------
                             17 ; special function registers
                             18 ;--------------------------------------------------------
                             19 ;--------------------------------------------------------
                             20 ; ram data
                             21 ;--------------------------------------------------------
                             22 	.area _DATA
                             23 ;--------------------------------------------------------
                             24 ; ram data
                             25 ;--------------------------------------------------------
                             26 	.area _INITIALIZED
                             27 ;--------------------------------------------------------
                             28 ; absolute external ram data
                             29 ;--------------------------------------------------------
                             30 	.area _DABS (ABS)
                             31 ;--------------------------------------------------------
                             32 ; global & static initialisations
                             33 ;--------------------------------------------------------
                             34 	.area _HOME
                             35 	.area _GSINIT
                             36 	.area _GSFINAL
                             37 	.area _GSINIT
                             38 ;--------------------------------------------------------
                             39 ; Home
                             40 ;--------------------------------------------------------
                             41 	.area _HOME
                             42 	.area _HOME
                             43 ;--------------------------------------------------------
                             44 ; code
                             45 ;--------------------------------------------------------
                             46 	.area _CODE
                             47 	.area _CODE
   37F4                      48 _door_spr_0:
   37F4 FC                   49 	.db #0xfc	; 252
   37F5 F3                   50 	.db #0xf3	; 243
   37F6 F3                   51 	.db #0xf3	; 243
   37F7 FC                   52 	.db #0xfc	; 252
   37F8 F0                   53 	.db #0xf0	; 240
   37F9 F0                   54 	.db #0xf0	; 240
   37FA FC                   55 	.db #0xfc	; 252
   37FB F3                   56 	.db #0xf3	; 243
   37FC F3                   57 	.db #0xf3	; 243
   37FD FC                   58 	.db #0xfc	; 252
   37FE F0                   59 	.db #0xf0	; 240
   37FF F0                   60 	.db #0xf0	; 240
   3800 FC                   61 	.db #0xfc	; 252
   3801 F3                   62 	.db #0xf3	; 243
   3802 F3                   63 	.db #0xf3	; 243
   3803 FC                   64 	.db #0xfc	; 252
   3804 F0                   65 	.db #0xf0	; 240
   3805 F0                   66 	.db #0xf0	; 240
   3806 FF                   67 	.db #0xff	; 255
   3807 FF                   68 	.db #0xff	; 255
   3808 F4                   69 	.db #0xf4	; 244
   3809 F2                   70 	.db #0xf2	; 242
   380A                      71 _door_spr_1:
   380A FC                   72 	.db #0xfc	; 252
   380B F3                   73 	.db #0xf3	; 243
   380C F3                   74 	.db #0xf3	; 243
   380D FC                   75 	.db #0xfc	; 252
   380E F0                   76 	.db #0xf0	; 240
   380F F0                   77 	.db #0xf0	; 240
   3810 FC                   78 	.db #0xfc	; 252
   3811 F3                   79 	.db #0xf3	; 243
   3812 F3                   80 	.db #0xf3	; 243
   3813 FC                   81 	.db #0xfc	; 252
   3814 F0                   82 	.db #0xf0	; 240
   3815 F0                   83 	.db #0xf0	; 240
   3816 FF                   84 	.db #0xff	; 255
   3817 FF                   85 	.db #0xff	; 255
   3818 F4                   86 	.db #0xf4	; 244
   3819 F2                   87 	.db #0xf2	; 242
   381A FF                   88 	.db #0xff	; 255
   381B FF                   89 	.db #0xff	; 255
   381C FF                   90 	.db #0xff	; 255
   381D FF                   91 	.db #0xff	; 255
   381E FF                   92 	.db #0xff	; 255
   381F FF                   93 	.db #0xff	; 255
   3820                      94 _door_spr_2:
   3820 FC                   95 	.db #0xfc	; 252
   3821 F3                   96 	.db #0xf3	; 243
   3822 F3                   97 	.db #0xf3	; 243
   3823 FC                   98 	.db #0xfc	; 252
   3824 F0                   99 	.db #0xf0	; 240
   3825 F0                  100 	.db #0xf0	; 240
   3826 FF                  101 	.db #0xff	; 255
   3827 FF                  102 	.db #0xff	; 255
   3828 F4                  103 	.db #0xf4	; 244
   3829 F2                  104 	.db #0xf2	; 242
   382A FF                  105 	.db #0xff	; 255
   382B FF                  106 	.db #0xff	; 255
   382C FF                  107 	.db #0xff	; 255
   382D FF                  108 	.db #0xff	; 255
   382E FF                  109 	.db #0xff	; 255
   382F FF                  110 	.db #0xff	; 255
   3830 FF                  111 	.db #0xff	; 255
   3831 FF                  112 	.db #0xff	; 255
   3832 FF                  113 	.db #0xff	; 255
   3833 FF                  114 	.db #0xff	; 255
   3834 FF                  115 	.db #0xff	; 255
   3835 FF                  116 	.db #0xff	; 255
   3836                     117 _door_spr_3:
   3836 FF                  118 	.db #0xff	; 255
   3837 FF                  119 	.db #0xff	; 255
   3838 F4                  120 	.db #0xf4	; 244
   3839 F2                  121 	.db #0xf2	; 242
   383A FF                  122 	.db #0xff	; 255
   383B FF                  123 	.db #0xff	; 255
   383C FF                  124 	.db #0xff	; 255
   383D FF                  125 	.db #0xff	; 255
   383E FF                  126 	.db #0xff	; 255
   383F FF                  127 	.db #0xff	; 255
   3840 FF                  128 	.db #0xff	; 255
   3841 FF                  129 	.db #0xff	; 255
   3842 FF                  130 	.db #0xff	; 255
   3843 FF                  131 	.db #0xff	; 255
   3844 FF                  132 	.db #0xff	; 255
   3845 FF                  133 	.db #0xff	; 255
   3846 FF                  134 	.db #0xff	; 255
   3847 FF                  135 	.db #0xff	; 255
   3848 FF                  136 	.db #0xff	; 255
   3849 FF                  137 	.db #0xff	; 255
   384A FF                  138 	.db #0xff	; 255
   384B FF                  139 	.db #0xff	; 255
   384C                     140 _door_spr_4:
   384C FF                  141 	.db #0xff	; 255
   384D FF                  142 	.db #0xff	; 255
   384E FF                  143 	.db #0xff	; 255
   384F FF                  144 	.db #0xff	; 255
   3850 FF                  145 	.db #0xff	; 255
   3851 FF                  146 	.db #0xff	; 255
   3852 FF                  147 	.db #0xff	; 255
   3853 FF                  148 	.db #0xff	; 255
   3854 FF                  149 	.db #0xff	; 255
   3855 FF                  150 	.db #0xff	; 255
   3856 FF                  151 	.db #0xff	; 255
   3857 FF                  152 	.db #0xff	; 255
   3858 FF                  153 	.db #0xff	; 255
   3859 FF                  154 	.db #0xff	; 255
   385A FF                  155 	.db #0xff	; 255
   385B FF                  156 	.db #0xff	; 255
   385C FF                  157 	.db #0xff	; 255
   385D FF                  158 	.db #0xff	; 255
   385E FF                  159 	.db #0xff	; 255
   385F FF                  160 	.db #0xff	; 255
   3860 FF                  161 	.db #0xff	; 255
   3861 FF                  162 	.db #0xff	; 255
                            163 	.area _INITIALIZER
                            164 	.area _CABS (ABS)
