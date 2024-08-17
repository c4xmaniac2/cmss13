//Floors
/turf/open/gm/lava
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

/turf/open/gm/lava/can_dig_xeno_tunnel()
	return FALSE

/turf/open/gm/lava/is_weedable()
	return NOT_WEEDABLE

/turf/open/gm/lava/New()
	. = ..()
	set_light(1, 2, "#C48A18")

/turf/open/gm/lava/Entered(atom/movable/moving_atom)
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

/turf/open/gm/lava/lpiece
	icon_state = "lpiece"

/turf/open/gm/lava/corner
	icon_state = "corner"

/turf/open/gm/lava/side
	icon_state = "side"

/turf/open/gm/lava/single_intersection
	icon_state = "single_intersection"

/turf/open/gm/lava/single_intersection_direction
	icon_state = "single_intersection_direction"

/turf/open/gm/lava/single_middle
	icon_state = "single_middle"

/turf/open/gm/lava/single
	icon_state = "single"

/turf/open/gm/lava/single_end
	icon_state = "single_end"

/turf/open/gm/lava/single_corners
	icon_state = "single_corners"


/turf/open/floor/scrapyard
	icon = 'icons/turf/floors/scrapyard.dmi'
	icon_state = "basalt"
	allow_construction = TRUE
	baseturfs = /turf/open/floor/scrapyard

/turf/open/floor/scrapyard/is_weedable()
	return FULLY_WEEDABLE

/turf/open/floor/scrapyard/basaltglow
	icon_state = "basaltglow"

/turf/open/floor/scrapyard/basaltglow/New()
	. = ..()
	set_light(1, 2, "#C48A18")

/turf/open/floor/scrapyard/brock
	icon_state = "brock"

/turf/open/floor/scrapyard/lavacatwalk
	icon_state = "lavacatwalk"

/turf/open/floor/scrapyard/lavacatwalk/New()
	. = ..()
	set_light(1, 2, "#C48A18")
/turf/open/floor/scrapyard/lavacatwalk/is_weedable()
	return NOT_WEEDABLE

/turf/open/floor/scrapyard/brockside
	icon_state = "brock_side"

/turf/open/floor/scrapyard/lpiecerock
	icon_state = "lpiece_rock"

/turf/open/floor/scrapyard/siderock
	icon_state = "side_rock"

/turf/open/floor/scrapyard/cornerrock
	icon_state = "corner_rock"

/turf/open/floor/scrapyard/sandtocave
	icon_state = "sand_to_cave"

/turf/open/floor/scrapyard/sandtocavecorner
	icon_state = "sand_to_cave_corner"

/turf/open/floor/scrapyard/basalttodirt
	icon_state = "basalt_to_dirt"

/turf/open/floor/scrapyard/basalttodirtcorner
	icon_state = "basalt_to_dirt_corner"

/turf/open/floor/scrapyard/sand
	icon_state = "sand"

/turf/open/floor/scrapyard/dirtrock
	icon_state = "basalt_purple"

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
