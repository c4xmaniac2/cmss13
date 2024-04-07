//scrapyard AREAS--------------------------------------//

/area/Scrapyard
	icon_state = "lv-626"
	can_build_special = TRUE
	powernet_name = "ground"
	minimap_color = MINIMAP_AREA_COLONY

//parent types

/area/Scrapyard/indoors
	name = "Scrapyard - Outdoors"
	icon_state = "cliff_blocked" //because this is a PARENT TYPE and you should not be using it and should also be changing the icon!!!
	ceiling = CEILING_METAL
	soundscape_playlist = SCAPE_PL_LV522_INDOORS


/area/Scrapyard/outdoors
	name = "Scrapyard - Outdoors"
	icon_state = "cliff_blocked" //because this is a PARENT TYPE and you should not be using it and should also be changing the icon!!!
	ceiling = CEILING_NONE
	soundscape_playlist = SCAPE_PL_LV522_OUTDOORS

/area/Scrapyard/oob
	name = "Scrapyard - Out Of Bounds"
	icon_state = "unknown"
	ceiling = CEILING_MAX
	is_resin_allowed = FALSE
	flags_area = AREA_NOTUNNEL

//Landing Zone 1

/area/Scrapyard/landing_zone_1
	name = "Supply Landing Zone"
	icon_state = "explored"
	is_resin_allowed =  FALSE
	is_landing_zone = TRUE
	minimap_color = MINIMAP_AREA_LZ

/area/Scrapyard/landing_zone_1/ceiling
	ceiling = CEILING_METAL

/area/Scrapyard/landing_zone_1/storage
	name = "LZ-1 Salvage Storage"
	ceiling = CEILING_METAL
	icon_state = "storage"

/area/shuttle/drop1/Scrapyard
	name = "Dropship Alamo Landing Zone"
	icon_state = "shuttle"
	icon = 'icons/turf/area_shiva.dmi'

/area/Scrapyard/landing_zone_1/lz1_console
	name = "Scrapyard - Dropship Alamo Console"
	icon_state = "tcomsatcham"
	requires_power = FALSE

/area/Scrapyard/landing_zone_1/atc
	name = "LZ-1 Air Traffic Control"
	ceiling = CEILING_METAL
	icon_state = "tcomsatcham"

/area/Scrapyard/landing_zone_1/mechanic
	name = "LZ-1 Mechanic Bay"
	ceiling = CEILING_METAL
	icon_state = "atmos"

/area/Scrapyard/landing_zone_1/engie
	name = "LZ-1 Engineering Bay"
	ceiling = CEILING_METAL
	icon_state = "engine"

/area/Scrapyard/landing_zone_1/store
	name = "LZ-1 Supply Storage"
	ceiling = CEILING_METAL
	icon_state = "garden"

/area/Scrapyard/landing_zone_1/alt
	name = "LZ-1 Auxilary Supply Storage"
	ceiling = CEILING_METAL
	icon_state = "LP"

//Landing Zone 2

/area/Scrapyard/landing_zone_2
	name = "Guest and Merchant Landing Zone"
	icon_state = "explored"
	is_resin_allowed =  FALSE
	is_landing_zone = TRUE
	minimap_color = MINIMAP_AREA_LZ

/area/Scrapyard/landing_zone_2/ceiling
	ceiling = CEILING_METAL

/area/shuttle/drop2/Scrapyard
	name = "Dropship Normandy Landing Zone"
	icon_state = "shuttle2"
	icon = 'icons/turf/area_shiva.dmi'

/area/Scrapyard/landing_zone_2/lz2_console
	name = "Dropship Normandy Console"
	icon_state = "tcomsatcham"
	requires_power = FALSE

/area/Scrapyard/landing_zone_2/store
	name = "Booger Hollow Outfitters"
	icon_state = "blueold"

/area/Scrapyard/landing_zone_2/atc
	name = "LZ-2 Air Traffic Control"
	icon_state = "tcomsatcham"

/area/Scrapyard/landing_zone_2/bunk
	name = "Amicalola  Motel"
	icon_state = "purple"

/area/Scrapyard/landing_zone_2/vip
	name = "VIP Bunk"
	icon_state = "Sleep"

/area/Scrapyard/landing_zone_2/storage
	name = "LZ-2 Storage"
	icon_state = "storage"

//Comms Relays

/area/Scrapyard/outside/telecomm1
	name = "LZ1 Communications Relay"
	icon_state = "ass_line"
	ceiling = CEILING_UNDERGROUND_ALLOW_CAS
	is_resin_allowed = FALSE

/area/Scrapyard/outside/telecomm2
	name = "Salvage Yard Communications Relay"
	icon_state = "ass_line"
	ceiling = CEILING_UNDERGROUND_ALLOW_CAS
	is_resin_allowed = FALSE

/area/Scrapyard/outside/telecomm3
	name = "LZ2 Communications Relay"
	icon_state = "ass_line"
	ceiling = CEILING_UNDERGROUND_ALLOW_CAS
	is_resin_allowed = FALSE

/area/Scrapyard/outside/telecomm4
	name = "Administration Communications Relay"
	icon_state = "ass_line"
	ceiling = CEILING_METAL
	is_resin_allowed = FALSE

//Outdoors areas
/area/Scrapyard/outdoors/colony_streets
	name = "Colony Street Ruins"
	icon_state = "green"
	ceiling = CEILING_UNDERGROUND_ALLOW_CAS

/area/Scrapyard/outdoors/colony_streets/south_street
	name = "CR-137 // Martin Luther King Jr. Boulevard"
	icon_state = "south"
	ceiling = CEILING_UNDERGROUND_BLOCK_CAS

/area/Scrapyard/outdoors/colony_streets/south_east_street
	name = "CR-153 // Hiawassee Drive"
	icon_state = "southeast"
	ceiling = CEILING_UNDERGROUND_BLOCK_CAS

/area/Scrapyard/outdoors/colony_streets/south_west_street
	name = "CR-142 // Major John McCullen Memorial Road"
	icon_state = "southwest"
	ceiling = CEILING_UNDERGROUND_BLOCK_CAS

/area/Scrapyard/outdoors/colony_streets/north_west_street
	name = "CR-70 // Appalachian Highway"
	icon_state = "northwest"

/area/Scrapyard/outdoors/colony_streets/north_east_street
	name = "CR-55 // Old Stonewall Lane"
	icon_state = "northeast"

/area/Scrapyard/outdoors/colony_streets/lavapit1
	name = "North Lava Reservoir"
	icon_state = "away1"
	ceiling = CEILING_NONE

/area/Scrapyard/outdoors/colony_streets/centralwalk
	name = "Robert McCollen Promenade"
	icon_state = "hallC1"
	ceiling = CEILING_NONE

/area/Scrapyard/outdoors/colony_streets/lavapit2
	name = "Western Lava Reservoir"
	icon_state = "away2"
	ceiling = CEILING_NONE

/area/Scrapyard/outdoors/colony_streets/lavapit3
	name = "Eastern Lava Reservoir"
	icon_state = "away3"
	ceiling = CEILING_NONE

/area/Scrapyard/outdoors/colony_streets/lavapit4
	name = "South Western Lava Reservoir"
	icon_state = "away2"
	ceiling = CEILING_NONE

/area/Scrapyard/outdoors/colony_streets/lavapit5
	name = "South Eastern Lava Reservoir"
	icon_state = "away3"
	ceiling = CEILING_NONE

//misc areas
/area/Scrapyard/indoors/misc
	name = "Misc Buildings"
	icon_state = "green"

/area/Scrapyard/indoors/misc/TWEcamp
	name = "Royal Marine Encampment"
	icon_state = "blue"
	ceiling = CEILING_UNDERGROUND_BLOCK_CAS

/area/Scrapyard/indoors/misc/bunker
	name = "Emily McCollen Emergency Bunker"
	icon_state = "purple"
	ceiling = CEILING_UNDERGROUND_BLOCK_CAS

/area/Scrapyard/indoors/misc/training
	name = "USCM Recruitment and Training Center"
	icon_state = "green"
	ceiling = CEILING_UNDERGROUND_BLOCK_CAS

/area/Scrapyard/indoors/misc/reservoir
	name = "Elizabeth McCollen Reservoir"
	icon_state = "blue"
	ceiling = CEILING_UNDERGROUND_BLOCK_CAS

/area/Scrapyard/indoors/misc/uppcamp
	name = "UPP Expedition Camp"
	icon_state = "green"
	ceiling = CEILING_UNDERGROUND_BLOCK_CAS

/area/Scrapyard/indoors/misc/graveyard
	name = "Peter Weyland Memorial Cemetary"
	icon_state = "yellow"
	ceiling = CEILING_UNDERGROUND_ALLOW_CAS

/area/Scrapyard/indoors/misc/bodyshop
	name = "John Hudson Body Shop"
	icon_state = "red"
	ceiling = CEILING_UNDERGROUND_ALLOW_CAS

/area/Scrapyard/indoors/misc/synthshop
	name = "Synthetic Repair Shop"
	icon_state = "yellow"
	ceiling = CEILING_UNDERGROUND_ALLOW_CAS

//South West Diamond
/area/Scrapyard/indoors/sw_diamond
	name = "South Western Diamond"
	icon_state = "blue"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS
	minimap_color = MINIMAP_AREA_ENGI_CAVE

/area/Scrapyard/indoors/sw_diamond/pump
	name = "South Western Slag Bay"
	icon_state = "mechbay"

/area/Scrapyard/indoors/sw_diamond/reactor
	name = "Col. Richard 'Mad Dog' McCollen Reactor Room"
	icon_state = "red"

/area/Scrapyard/indoors/sw_diamond/officea
	name = "South Western Control Office A"
	icon_state = "green"

/area/Scrapyard/indoors/sw_diamond/officeb
	name = "South Western Control Office B"
	icon_state = "blue"

/area/Scrapyard/indoors/sw_diamond/officeb
	name = "South Western Control Office B"
	icon_state = "blue"

/area/Scrapyard/indoors/sw_diamond/storage
	name = "South Western Slag Storage"
	icon_state = "storage"

/area/Scrapyard/indoors/sw_diamond/tool
	name = "South Western Tool Storage"
	icon_state = "explored"

/area/Scrapyard/indoors/sw_diamond/roffice
	name = "Col. Richard 'Mad Dog' McCollen Reactor Control Room"
	icon_state = "toxlab"

/area/Scrapyard/indoors/sw_diamond/work
	name = "South Western Workshop"
	icon_state = "fitness"

/area/Scrapyard/indoors/sw_diamond/rest
	name = "South Western Rec Room"
	icon_state = "Sleep"

/area/Scrapyard/indoors/sw_diamond/prep
	name = "South Western Prep Room"
	icon_state = "yellow"

//South Central Diamond
/area/Scrapyard/indoors/s_diamond
	name = "South Central Diamond"
	icon_state = "yellow"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS
	minimap_color = MINIMAP_AREA_ENGI_CAVE

/area/Scrapyard/indoors/s_diamond/pumpcontrol
	name = "Primary Pump Controller"
	icon_state = "yellow"

/area/Scrapyard/indoors/s_diamond/maintwest
	name = "Western Pump Maintenance Shaft"
	icon_state = "purple"

/area/Scrapyard/indoors/s_diamond/mainteast
	name = "Eastern Pump Maintenance Shaft"
	icon_state = "green"

//South East Diamond
/area/Scrapyard/indoors/se_diamond
	name = "South Eastern Diamond"
	icon_state = "green"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS
	minimap_color = MINIMAP_AREA_ENGI_CAVE

/area/Scrapyard/indoors/se_diamond/pump
	name = "South Eastern Slag Bay"
	icon_state = "mechbay"

/area/Scrapyard/indoors/se_diamond/pumpcontrol
	name = "South Eastern Slag Controller"
	icon_state = "red"

/area/Scrapyard/indoors/se_diamond/pumpcontrol2
	name = "South Eastern Auxilary Slag Controller"
	icon_state = "blue"

/area/Scrapyard/indoors/se_diamond/pumpcontrol2
	name = "South Eastern Auxilary Slag Controller"
	icon_state = "blue"

/area/Scrapyard/indoors/se_diamond/telecomms
	name = "South Eastern Telecomms Office"
	icon_state = "purple"

/area/Scrapyard/indoors/se_diamond/chow
	name = "Dana McCollen Event Hall"
	icon_state = "cafeteria"

/area/Scrapyard/indoors/se_diamond/prep
	name = "South Eastern Prep Room"
	icon_state = "Sleep"

/area/Scrapyard/indoors/se_diamond/store
	name = "South Eastern Slag Storage"
	icon_state = "storage"

/area/Scrapyard/indoors/se_diamond/mech
	name = "South Eastern Repair Bay"
	icon_state = "engine"

/area/Scrapyard/indoors/se_diamond/mech
	name = "South Eastern Repair Bay"
	icon_state = "engine"

/area/Scrapyard/indoors/se_diamond/tool
	name = "South Eastern Tool Storage"
	icon_state = "explored"

//Security Diamond
/area/Scrapyard/indoors/sec
	name = "Security Department"
	icon_state = "red"
	ceiling = CEILING_GLASS
	minimap_color = MINIMAP_AREA_SEC

/area/Scrapyard/indoors/sec/prison
	name = "Prison Cells"
	icon_state = "yellow"

/area/Scrapyard/indoors/sec/office
	name = "Colonial Marshals Office"
	icon_state = "blue"

/area/Scrapyard/indoors/sec/warden
	name = "Warden's Office"
	icon_state = "red"

/area/Scrapyard/indoors/sec/vault
	name = "Bobbie McCollen Vault"
	icon_state = "purple"

/area/Scrapyard/indoors/sec/det
	name = "Detective's Office"
	icon_state = "detective"

//Medical Diamond
/area/Scrapyard/indoors/medbay
	name = "Medical Department"
	icon_state = "medbay"
	ceiling = CEILING_GLASS
	minimap_color = MINIMAP_AREA_MEDBAY

/area/Scrapyard/indoors/medbay/cryo
	name = "Urgent Care Triage"
	icon_state = "medbay"

/area/Scrapyard/indoors/medbay/surgery
	name = "Jeffery McCollen Surgical Theatre"
	icon_state = "medbay"

/area/Scrapyard/indoors/medbay/morgue
	name = "Morgue"
	icon_state = "blue"

/area/Scrapyard/indoors/medbay/cmo
	name = "CMO's Office"
	icon_state = "CMO"

//Central Diamond
/area/Scrapyard/indoors/cic
	name = "Colony Administration"
	icon_state = "mechbay"
	ceiling = CEILING_GLASS
	minimap_color = MINIMAP_AREA_COMMAND

/area/Scrapyard/indoors/cic/wjs
	name = "AI Reception and Working Joe Housing"
	icon_state = "quart"
	ceiling = CEILING_METAL

/area/Scrapyard/indoors/cic/airoom
	name = "J.P. McCollen AI Chambers"
	icon_state = "quart"
	ceiling = CEILING_METAL

/area/Scrapyard/indoors/cic/dorms
	name = "Administration Dorms"
	icon_state = "mechbay"

/area/Scrapyard/indoors/cic/clroom
	name = "Corporate Management Office"
	icon_state = "captain"

/area/Scrapyard/indoors/cic/panick
	name = "Panick Room"
	icon_state = "captain"
	ceiling = CEILING_METAL

/area/Scrapyard/indoors/cic/ceoffice
	name = "Chief Engineer's Office"
	icon_state = "ass_line"
	minimap_color = MINIMAP_AREA_ENGI

/area/Scrapyard/indoors/cic/power
	name = "Auxilary Power Room"
	icon_state = "engine_smes"
	minimap_color = MINIMAP_AREA_ENGI

/area/Scrapyard/indoors/cic/pump1
	name = "Western Pump Transfer Room"
	icon_state = "engine_smes"
	minimap_color = MINIMAP_AREA_ENGI

/area/Scrapyard/indoors/cic/pump2
	name = "Eastern Pump Transfer Room"
	icon_state = "engine_smes"
	minimap_color = MINIMAP_AREA_ENGI

/area/Scrapyard/indoors/cic/bath1
	name = "Admin Showers"
	icon_state = "green"

/area/Scrapyard/indoors/cic/bath2
	name = "Admin Toilets"
	icon_state = "blue"

/area/Scrapyard/indoors/cic/foyer
	name = "Admin Foyer"
	icon_state = "library"

/area/Scrapyard/indoors/cic/hall1
	name = "West Admin Hallway"
	icon_state = "blueold"

/area/Scrapyard/indoors/cic/hall2
	name = "East Admin Hallway"
	icon_state = "blueold"

/area/Scrapyard/indoors/cic/checkpoint1
	name = "Security Checkpoint Oscar"
	icon_state = "brig"
	ceiling = CEILING_METAL
	minimap_color = MINIMAP_AREA_SEC

/area/Scrapyard/indoors/cic/checkpoint2
	name = "Security Checkpoint Mike"
	icon_state = "brig"
	ceiling = CEILING_METAL
	minimap_color = MINIMAP_AREA_SEC

//Dorms Diamond
/area/Scrapyard/indoors/dorms
	name = "SFC Donald McCollen Memorial Dorms"
	icon_state = "Sleep"
	ceiling = CEILING_UNDERGROUND_METAL_ALLOW_CAS

/area/Scrapyard/indoors/dorms/comp
	name = "Rec Room"
	icon_state = "quartstorage"

//Elevators and Club
/area/Scrapyard/indoors/club
	name = "Honky-Tonk"
	icon_state = "tcomsatcham"
	ceiling = CEILING_UNDERGROUND_METAL_ALLOW_CAS

/area/Scrapyard/indoors/club/drug
	name = "Drug Lab"
	icon_state = "green"

/area/Scrapyard/indoors/club/mafia
	name = "Honk-Tonk Owner's Office"
	icon_state = "dark"

/area/Scrapyard/indoors/club/kitchen
	name = "Club Kitchen"
	icon_state = "storage"

/area/Scrapyard/indoors/club/elevators
	name = "Elevators"
	icon_state = "landing_pad"

/area/Scrapyard/indoors/club/poker
	name = "Honky-Tonk Storage Room"
	icon_state = "storage"

//Chow Diamond
/area/Scrapyard/indoors/chow
	name = "Chow Hall"
	icon_state = "cafeteria"
	ceiling = CEILING_UNDERGROUND_METAL_ALLOW_CAS

/area/Scrapyard/indoors/chow/admin
	name = "Admin Chow Hall"
	icon_state = "blueold"

/area/Scrapyard/indoors/chow/kitchen
	name = "Chow Hall Kitchen"
	icon_state = "kitchen"

//Salvage Diamond
/area/Scrapyard/indoors/salvage
	name = "Ronald McCollen Jr. Salvage Bay #1"
	icon_state = "quartstorage"
	ceiling = CEILING_UNDERGROUND_METAL_ALLOW_CAS

/area/Scrapyard/indoors/salvage/prep
	name = "Salvage "
	icon_state = "yellow"
