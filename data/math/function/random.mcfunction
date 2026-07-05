### ===========================================================
### macro data: { min: <int>, max: <int> }
### ===========================================================
### This function generates a random number bounded by $min and
### $max, inclusive.
### The result will be stored as a score in [$random constant].
### ===========================================================

$execute store result score #random constant run random value $(min)..$(max)
