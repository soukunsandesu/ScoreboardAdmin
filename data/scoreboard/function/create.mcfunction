#> scoreboard:create
### Copyright © 2024 SoukunsanDeath
### This software is released under the MIT License, see LICENSE.

execute unless data storage scoreboard: {Init:true} run function scoreboard:sys/storage_init

scoreboard objectives add TempNumOfScoreboards dummy
execute store result score #DummyPlayer TempNumOfScoreboards run data get storage scoreboard: NumOfScoreboards

$scoreboard objectives add $(name) $(type)

$data modify storage scoreboard: Scoreboards append value {Name:$(name)}
scoreboard players add #DummyPlayer TempNumOfScoreboards 1

execute store result storage scoreboard: NumOfScoreboards int 1 run scoreboard players get #DummyPlayer TempNumOfScoreboards
scoreboard objectives remove TempNumOfScoreboards
