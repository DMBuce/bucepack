# runs on server load

# create frienderchestchest if necessary
execute in minecraft:the_end run forceload add 29977806 29977806 29977826 29977826
execute in minecraft:the_end positioned 29977808 1 29977808 unless block ~1 0 ~1 minecraft:end_portal run function buce:frienderchest/init
execute in minecraft:the_end run forceload remove 29977806 29977806 29977826 29977826

