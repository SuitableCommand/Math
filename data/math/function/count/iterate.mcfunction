execute if data storage minecraft:math count.list[0] run scoreboard players add #count constant 1
execute if data storage minecraft:math count.list[0] run data remove storage minecraft:math count.list[0]
execute if data storage minecraft:math count.list[0] run function math:count/iterate
