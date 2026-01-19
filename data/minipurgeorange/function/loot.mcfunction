#Copyright JayPyro2000 2025. All Rights Reserved.

function mphelper:place/random/ground/templates_from_list {list: "minipurgeorange:variables drops", count: 1, max_from_mid: 1000, min_from_mid: 30}
execute run function minipurgeorange:announcer with storage minipurge:variables

# Generate a new random time for the next loot drop between 300 and 900 seconds (5 to 15 minutes).
execute store result storage minipurgeorange:variables orange_loot_time int 1 run random value 300..900

# Go around again.
execute run function minipurgeorange:dispatcher with storage minipurgeorange:variables