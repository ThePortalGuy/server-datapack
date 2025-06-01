# tick.mcfunction

# Step 1: Reset everyone's "joined" score to 0 (assumes they left)
scoreboard players set @a joined 0

# Step 2: Give score of 1 to players currently online
execute as @a run scoreboard players set @s joined 1

# Step 3: Say hello to players who just changed from 0 to 1 (i.e. they joined this tick)
execute as @a[scores={joined=1..}] unless entity @s[distance=..0.1] run tellraw @s {"text":"Hello, welcome back!","color":"gold"}