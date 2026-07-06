execute if score #random constant matches 1.. run data modify storage minecraft:math spin.list append from storage minecraft:math spin.list[0]
execute if score #random constant matches 1.. run data remove storage minecraft:math spin.list[0]
scoreboard players remove #random constant 1
execute if score #random constant matches 1.. run function math:spin/iterate
