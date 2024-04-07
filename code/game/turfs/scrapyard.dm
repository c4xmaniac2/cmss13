/turf/open/floor/lava
	name = "lava"
	icon = 'icons/turf/floors/floors.dmi'
	icon_state = "lava"
	allow_construction = FALSE
	///How much damage it will deal to humans per limb
	var/human_burn = 2
	///How much damage it will deal to xenos
	var/xeno_burn = 22
	///How many fire stacks it will apply
	var/fire_stacks = 1

/turf/open/floor/lava/is_weedable()
    return NOT_WEEDABLE

/turf/open/floor/lava/New()
	. = ..()
	set_light(1, 2, "#C48A18")

/turf/open/floor/lava/Entered(atom/movable/moving_atom)
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
