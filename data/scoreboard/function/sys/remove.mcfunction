#> scoreboard:sys/remove
### Copyright © 2024 SoukunsanDeath
### This software is released under the MIT License, see LICENSE.

function scoreboard:sys/loop_remove with storage scoreboard: Scoreboards[0]
execute if score #DummyPlayer TempNumOfScoreboards matches 1.. run function scoreboard:sys/remove