//Floors

//Lava
/turf/open/lava
	name = "floor"
	icon_state = "full"
	icon = 'icons/turf/floors/scrapyard.dmi'

/turf/open/lava/can_dig_xeno_tunnel()
	return FALSE

/turf/open/lava/is_weedable()
	return NOT_WEEDABLE

/turf/open/lava/New()
	. = ..()
	set_light(1, 2, "#C48A18")

/turf/open/lava/hot_lava
	name = "lava"
	icon = 'icons/turf/floors/scrapyard.dmi'
	icon_state = "full"
	allow_construction = FALSE
	///How much damage it will deal to humans per limb
	var/human_burn = 2
	///How much damage it will deal to xenos
	var/xeno_burn = 22
	///How many fire stacks it will apply
	var/fire_stacks = 1

/turf/open/lava/hot_lava/Entered(atom/movable/moving_atom)
	. = ..()
	if(!ismob(moving_atom))
		return
	var/mob/living/victim = moving_atom
	if(victim.stat == DEAD)
		return
	victim.last_damage_data = create_cause_data("lava")
	to_chat(victim, SPAN_DANGER("The lava burns!"))
	victim.adjust_fire_stacks(fire_stacks)
	victim.fire_reagent = new /datum/reagent/napalm()
	victim.IgniteMob()
	if(isxeno(victim))
		victim.apply_damage(xeno_burn, BURN)
		return
	if(!ishuman(victim))
		return
	var/mob/living/carbon/human/human_mob = victim
	for(var/obj/limb/limb in human_mob.limbs)
		victim.apply_damage(human_burn, BURN, limb)

/turf/open/lava/hot_lava/catwalk
	icon_state = "lavacatwalk"

/turf/open/lava/hot_lava/L_piece
	icon_state = "lpiece"

/turf/open/lava/hot_lava/L_piece/north

	dir = 2

/turf/open/lava/hot_lava/L_piece/east
	dir = 8

/turf/open/lava/hot_lava/L_piece/south
	dir = 1

/turf/open/lava/hot_lava/L_piece/west
	dir = 4

/turf/open/lava/hot_lava/side
	icon_state = "side"

/turf/open/lava/hot_lava/side/north

	dir = 2

/turf/open/lava/hot_lava/side/east
	dir = 8

/turf/open/lava/hot_lava/side/south
	dir = 1

/turf/open/lava/hot_lava/side/west
	dir = 4

/turf/open/lava/hot_lava/corner
	icon_state = "corner"

/turf/open/lava/hot_lava/corner/north

	dir = 2

/turf/open/lava/hot_lava/corner/east
	dir = 8

/turf/open/lava/hot_lava/corner/south
	dir = 1

/turf/open/lava/hot_lava/corner/west
	dir = 4

/turf/open/lava/hot_lava/single_intersection
	icon_state = "single_intersection"

/turf/open/lava/hot_lava/single_intersection_direction
	icon_state = "single_intersection_direction"

/turf/open/lava/hot_lava/single_intersection_direction/north

	dir = 2

/turf/open/lava/hot_lava/single_intersection_direction/east
	dir = 8

/turf/open/lava/hot_lava/single_intersection_direction/south
	dir = 1

/turf/open/lava/hot_lava/single_intersection_direction/west
	dir = 4

/turf/open/lava/hot_lava/single_intersection_direction/north_east
	dir = 10

/turf/open/lava/hot_lava/single_intersection_direction/north_west
	dir = 6

/turf/open/lava/hot_lava/single_intersection_direction/south_east
	dir = 9

/turf/open/lava/hot_lava/single_intersection_direction/south_west
	dir = 5

/turf/open/lava/hot_lava/single_middle
	icon_state = "single_middle"

/turf/open/lava/hot_lava/single_middle/north

	dir = 2

/turf/open/lava/hot_lava/single_middle/east
	dir = 8

/turf/open/lava/hot_lava/single_middle/south
	dir = 1

/turf/open/lava/hot_lava/single_middle/west
	dir = 4

/turf/open/lava/hot_lava/single
	icon_state = "single"

/turf/open/lava/hot_lava/single_end
	icon_state = "single_end"

/turf/open/lava/hot_lava/single_end/north

	dir = 2

/turf/open/lava/hot_lava/single_end/east
	dir = 8

/turf/open/lava/hot_lava/single_end/south
	dir = 1

/turf/open/lava/hot_lava/single_end/west
	dir = 4

/turf/open/lava/hot_lava/single_corners
	icon_state = "single_corners"

/turf/open/lava/hot_lava/single_corners/north

	dir = 2

/turf/open/lava/hot_lava/single_corners/east
	dir = 8

/turf/open/lava/hot_lava/single_corners/south
	dir = 1

/turf/open/lava/hot_lava/single_corners/west
	dir = 4

// Decals - For edges

/obj/effect/lava
	icon = 'icons/turf/floors/scrapyard.dmi'
	layer = TURF_LAYER
	plane = FLOOR_PLANE
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT

/obj/effect/lava/edges/brock_side
	icon_state = "brock_side"

/obj/effect/lava/edges/basalt/l_piece
	icon_state = "lpiece_rock"

/obj/effect/lava/edges/basalt/side_rock
	icon_state = "side_rock"

/obj/effect/lava/edges/basalt/corner_rock
	icon_state = "corner_rock"

// Lava Rock & Dirt

/turf/open/lava/basalt/cave
	icon_state = "basalt_to_cave"
	allow_construction = TRUE


/turf/open/lava/basalt/cave/is_weedable()
	return FULLY_WEEDABLE

/turf/open/lava/basalt/cave/north

	dir = 2

/turf/open/lava/basalt/cave/east
	dir = 8

/turf/open/lava/basalt/cave/south
	dir = 1

/turf/open/lava/basalt/cave/west
	dir = 4

/turf/open/lava/basalt/cave/north_east
	dir = 10

/turf/open/lava/basalt/cave/north_west
	dir = 6

/turf/open/lava/basalt/cave/south_east
	dir = 9

/turf/open/lava/basalt/cave/south_west
	dir = 5

/turf/open/lava/basalt/cave/corner
	icon_state = "basalt_to_cave_corner"

/turf/open/lava/basalt/cave/corner/north

	dir = 2

/turf/open/lava/basalt/cave/corner/east
	dir = 8

/turf/open/lava/basalt/cave/corner/south
	dir = 1

/turf/open/lava/basalt/cave/corner/west
	dir = 4

/turf/open/lava/basalt/dirt
	icon_state = "basalt_to_dirt"

/turf/open/lava/basalt/dirt/north

	dir = 2

/turf/open/lava/basalt/dirt/east
	dir = 8

/turf/open/lava/basalt/dirt/south
	dir = 1

/turf/open/lava/basalt/dirt/west
	dir = 4

/turf/open/lava/basalt/dirt/north_east
	dir = 10

/turf/open/lava/basalt/dirt/north_west
	dir = 6

/turf/open/lava/basalt/dirt/south_east
	dir = 9

/turf/open/lava/basalt/dirt/south_west
	dir = 5

/turf/open/lava/basalt/dirt/corner
	icon_state = "basalt_to_dirt_corner"

/turf/open/lava/basalt/dirt/corner/north

	dir = 2

/turf/open/lava/basalt/dirt/corner/east
	dir = 8

/turf/open/lava/basalt/dirt/corner/south
	dir = 1

/turf/open/lava/basalt/dirt/corner/west
	dir = 4

/turf/open/lava/basalt
	icon_state = "basalt"

/turf/open/lava/basalt/glowing
	icon_state = "basaltglow"

/turf/open/lava/basalt/glowing/New()
	. = ..()
	set_light(1, 2, "#C48A18")

/turf/open/lava/dirt
	icon_state = "dirt"

/turf/open/lava/sand
	icon_state = "sand"

/turf/open/lava/brock
	icon_state = "brock"


//Walls
/turf/closed/wall/scrapyard/scrapyard
	name = "colony wall"
	desc = "Tough looking walls that have been blasted by sand since the day they were erected. A testament to human willpower."
	icon = 'icons/turf/walls/scrapyard/scrapyard.dmi'
	icon_state = "scrapyard_interior"
	walltype = WALL_SCRAPYARD

/turf/closed/wall/scrapyard/reinforced
	name = "reinforced colony wall"
	icon = 'icons/turf/walls/scrapyard/scrapyard.dmi'
	icon_state = "scrapyard_interior_r"
	walltype = WALL_SCRAPYARDR
	damage_cap = HEALTH_WALL_REINFORCED

/turf/closed/wall/scrapyard/reinforced/hull
	name = "heavily reinforced colony wall"
	icon = 'icons/turf/walls/scrapyard/scrapyard.dmi'
	icon_state = "scrapyard_interior_h"
	hull = TRUE

/turf/closed/wall/scrapyard/rock
	name = "rock wall"
	icon = 'icons/turf/walls/scrapyard/scrapyard.dmi'
	icon_state = "scrapyard_rock"
	desc = "Tall black, malevolent, jagged rocks peering down at you."
	walltype = WALL_SCRAPYARD_ROCK
	hull = TRUE

/turf/closed/wall/scrapyard/rock/glow
	name = "rock wall"
	icon = 'icons/turf/walls/scrapyard/scrapyard_glow.dmi'
	icon_state = "scrapyard_glow_rock"
	desc = "Tall black, malevolent, jagged rocks peering down at you. Lava faintly glows from within casting a bit of merciful light."
	walltype = WALL_SCRAPYARD_ROCK
/turf/closed/wall/scrapyard_glow/New()
	. = ..()
	set_light(1, 2, "#C48A18")
