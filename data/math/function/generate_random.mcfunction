summon minecraft:marker ~ ~ ~ {Tags:["math_random"]}

execute store result score #random constant run data get entity @e[type=minecraft:marker,limit=1,tag=math_random] UUID[0] 1
scoreboard players operation #random constant /= #percent constant
scoreboard players operation #random constant /= #percent constant
scoreboard players operation #random constant %= #percent constant
scoreboard players add #random constant 1

kill @e[type=minecraft:marker,limit=1,tag=math_random]
