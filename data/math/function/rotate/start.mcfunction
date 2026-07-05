### ===================================================
### macro data: { namespace: <string>, path: <string> }
### ===================================================
### This function will rotate a specified list in data
### storage such that a random element is at index 0.
### ===================================================

# count elements in list
$data modify storage minecraft:math count.list set from storage $(namespace) $(path)
function math:count/start

# return early if list size <= 1
execute unless score #count constant matches 2.. run return fail

# determine how many positions to shift the list
data modify storage minecraft:math random set value { min: 1, max: 0 }
execute store result storage minecraft:math random.max int 1 run scoreboard players get #count constant
function math:random with storage minecraft:math random

#store target list
$data modify storage minecraft:math rotate.list set from storage $(namespace) $(path)

function math:rotate/iterate
