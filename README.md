# Math

A datapack designed to provide common mathematical services to client datapacks.

## Using with other datapacks

The client datapack must have the following files with the indicated content for Math to work as intended:

<code>\<namespace>/minecraft/tags/function/load.json</code>

    {
      "replace": false,
      "values": [
        "math:init",
        ...
      ]
    }

<code>\<namespace>/minecraft/tags/function/tick.json</code>

    {
      "replace": false,
      "values": [
        "math:main",
        ...
      ]
    }

## Generating random numbers

Generate a random number using Math with the following commands.

    /data modify storage minecraft:math random set value { min:1, max:100 }
    
    /function math:random with storage minecraft:math random

The output of this function will be saved in the scoreboard and can be accessed with the following command.

    /scoreboard players get #random constant

## Selecting a random item from a list

Select a random item from a list with the following commands.

    /data modify storage minecraft:example path.to.list set value [ 1, 2, 3 ]
    
    /data modify storage minecraft:example math.spin set value { namespace:"minecraft:example", path:"path.to.list" }
    
    /function math:spin/start with storage minecraft:example math.spin
    
    /data get storage minecraft:math spin.list[0]
