execute as @a unless score @s givenBook matches 1 run give @a written_book{title:"Contributing to the Server",author:"Server",pages:["[\"\",{\"text\":\"Click \"},{\"text\":\"here\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function server:contribute\"}},{\"text\":\" to find out how to contribute to the server.\"}]"]} 1
scoreboard players set @a givenBook 1
execute as @a[scores={contribute_trigger=1}] run function server:contribute
scoreboard players set @a[scores={contribute_trigger=1}] contribute_trigger 0