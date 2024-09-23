#> scoreboard:sys/loop_remove
### Copyright © 2024 SoukunsanDeath
### This software is released under the MIT License, see LICENSE.

$scoreboard objectives remove $(Name)

data remove storage scoreboard: Scoreboards[0]
scoreboard players remove #DummyPlayer TempNumOfScoreboards 1

execute if score #DummyPlayer TempNumOfScoreboards matches 0 run data modify storage scoreboard: Scoreboards set value []
execute if score #DummyPlayer TempNumOfScoreboards matches 0 run data modify storage scoreboard: NumOfScoreboards set value 0
execute if score #DummyPlayer TempNumOfScoreboards matches 0 run scoreboard objectives remove TempNumOfScoreboards