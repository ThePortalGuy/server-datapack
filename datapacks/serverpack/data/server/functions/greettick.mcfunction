# Step 1: Reset everyone's "joined" score to 0 (assumes they left)



# Step 2: Give score of 1 to players currently online
execute as @a run scoreboard players add numPlayers joined 1


# Step 3: Say hello to players who just changed from 0 to 1 (i.e. they joined this tick)
#{"text":"Hello, welcome back!","color":"gold"}
execute as @a if score numPlayers joined > oldNumPlayers joined run execute run tellraw @a [{"text":"Welcome to the ","color":"gold"},{"text":"s","color":"red"},{"text":"e","color":"gold"},{"text":"r","color":"yellow"},{"text":"v","color":"green"},{"text":"e","color":"aqua"},{"text":"r","color":"blue"},{"text":"!","color":"light_purple"}]
execute store result score oldNumPlayers joined run scoreboard players get numPlayers joined
scoreboard players set numPlayers joined 0