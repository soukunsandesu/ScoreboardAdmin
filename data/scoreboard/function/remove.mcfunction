#> scoreboard:create
### Copyright © 2024 SoukunsanDeath
### This software is released under the MIT License, see LICENSE.

scoreboard objectives add TempNumOfScoreboards dummy
execute store result score #DummyPlayer TempNumOfScoreboards run data get storage scoreboard: NumOfScoreboards
function scoreboard:sys/remove