function entityid:assign_id

tag @s add entityid_assigned
execute if score @s entityid.0 matches 0 run tag @s add entityid.nbit0
execute if score @s entityid.0 matches 1 run tag @s add entityid.bit0
execute if score @s entityid.1 matches 0 run tag @s add entityid.nbit1
execute if score @s entityid.1 matches 1 run tag @s add entityid.bit1
execute if score @s entityid.2 matches 0 run tag @s add entityid.nbit2
execute if score @s entityid.2 matches 1 run tag @s add entityid.bit2
execute if score @s entityid.3 matches 0 run tag @s add entityid.nbit3
execute if score @s entityid.3 matches 1 run tag @s add entityid.bit3
execute if score @s entityid.4 matches 0 run tag @s add entityid.nbit4
execute if score @s entityid.4 matches 1 run tag @s add entityid.bit4
execute if score @s entityid.5 matches 0 run tag @s add entityid.nbit5
execute if score @s entityid.5 matches 1 run tag @s add entityid.bit5
execute if score @s entityid.6 matches 0 run tag @s add entityid.nbit6
execute if score @s entityid.6 matches 1 run tag @s add entityid.bit6
execute if score @s entityid.7 matches 0 run tag @s add entityid.nbit7
execute if score @s entityid.7 matches 1 run tag @s add entityid.bit7
execute if score @s entityid.8 matches 0 run tag @s add entityid.nbit8
execute if score @s entityid.8 matches 1 run tag @s add entityid.bit8
execute if score @s entityid.9 matches 0 run tag @s add entityid.nbit9
execute if score @s entityid.9 matches 1 run tag @s add entityid.bit9
execute if score @s entityid.10 matches 0 run tag @s add entityid.nbit10
execute if score @s entityid.10 matches 1 run tag @s add entityid.bit10
execute if score @s entityid.11 matches 0 run tag @s add entityid.nbit11
execute if score @s entityid.11 matches 1 run tag @s add entityid.bit11
execute if score @s entityid.12 matches 0 run tag @s add entityid.nbit12
execute if score @s entityid.12 matches 1 run tag @s add entityid.bit12
execute if score @s entityid.13 matches 0 run tag @s add entityid.nbit13
execute if score @s entityid.13 matches 1 run tag @s add entityid.bit13
execute if score @s entityid.14 matches 0 run tag @s add entityid.nbit14
execute if score @s entityid.14 matches 1 run tag @s add entityid.bit14
execute if score @s entityid.15 matches 0 run tag @s add entityid.nbit15
execute if score @s entityid.15 matches 1 run tag @s add entityid.bit15
execute if score @s entityid.16 matches 0 run tag @s add entityid.nbit16
execute if score @s entityid.16 matches 1 run tag @s add entityid.bit16
execute if score @s entityid.17 matches 0 run tag @s add entityid.nbit17
execute if score @s entityid.17 matches 1 run tag @s add entityid.bit17
execute if score @s entityid.18 matches 0 run tag @s add entityid.nbit18
execute if score @s entityid.18 matches 1 run tag @s add entityid.bit18
execute if score @s entityid.19 matches 0 run tag @s add entityid.nbit19
execute if score @s entityid.19 matches 1 run tag @s add entityid.bit19
execute if score @s entityid.20 matches 0 run tag @s add entityid.nbit20
execute if score @s entityid.20 matches 1 run tag @s add entityid.bit20
execute if score @s entityid.21 matches 0 run tag @s add entityid.nbit21
execute if score @s entityid.21 matches 1 run tag @s add entityid.bit21
execute if score @s entityid.22 matches 0 run tag @s add entityid.nbit22
execute if score @s entityid.22 matches 1 run tag @s add entityid.bit22
execute if score @s entityid.23 matches 0 run tag @s add entityid.nbit23
execute if score @s entityid.23 matches 1 run tag @s add entityid.bit23
execute if score @s entityid.24 matches 0 run tag @s add entityid.nbit24
execute if score @s entityid.24 matches 1 run tag @s add entityid.bit24
execute if score @s entityid.25 matches 0 run tag @s add entityid.nbit25
execute if score @s entityid.25 matches 1 run tag @s add entityid.bit25
execute if score @s entityid.26 matches 0 run tag @s add entityid.nbit26
execute if score @s entityid.26 matches 1 run tag @s add entityid.bit26
execute if score @s entityid.27 matches 0 run tag @s add entityid.nbit27
execute if score @s entityid.27 matches 1 run tag @s add entityid.bit27
execute if score @s entityid.28 matches 0 run tag @s add entityid.nbit28
execute if score @s entityid.28 matches 1 run tag @s add entityid.bit28
execute if score @s entityid.29 matches 0 run tag @s add entityid.nbit29
execute if score @s entityid.29 matches 1 run tag @s add entityid.bit29
execute if score @s entityid.30 matches 0 run tag @s add entityid.nbit30
execute if score @s entityid.30 matches 1 run tag @s add entityid.bit30
execute if score @s entityid.31 matches 0 run tag @s add entityid.nbit31
execute if score @s entityid.31 matches 1 run tag @s add entityid.bit31

data modify entity @s pickup set value 0b

tag @s remove init