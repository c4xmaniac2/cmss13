#define KEYCARD_SWIPE_COOLDOWN "keycard_swipe_cooldown"

/obj/structure/machinery/magnetic_swipe
    name = "generic card swipe control”
    desc = "a swipe connected to nothing”
    icon_state = "PUT A SPRITE HERE”
    indestructible = TRUE
    var/required_code
    var/door_id

/obj/structure/machinery/magnetic_swipe/attackby(obj/item/attacking_item, mob/user)
    . = ..()
    if(inoperable())
        return

    if(istype(attacking_item, /obj/item/prop/keycard))
        check_keycard(attacking_item, user)

/obj/structure/machinery/magnetic_swipe/proc/check_keycard(obj/item/prop/keycard/card, mob/user)
    if(TIMER_COOLDOWN_CHECK(src, KEYCARD_SWIPE_COOLDOWN))
        to_chat(user, SPAN_WARNING("[src] was swiped with a keycard too recently."))
        return

    visible_message(SPAN_NOTICE("[user] swipes [card] against [src]."))
    COOLDOWN_START(src, KEYCARD_SWIPE_COOLDOWN, 5 SECONDS)

    if(card.card_code != required_code)
        visible_message(SPAN_NOTICE("[src] buzzes and displays a red light."))
        return

    visible_message(SPAN_NOTICE("[src] beeps and displays a green light."))
    for(var/obj/structure/machinery/door/poddoor/door in GLOB.machines)
        if(door.id != door_id)
            continue
        if(door.density)
            INVOKE_ASYNC(door, TYPE_PROC_REF(/obj/structure/machinery/door, open))
        else
            INVOKE_ASYNC(door, TYPE_PROC_REF(/obj/structure/machinery/door, close))

/obj/item/prop/keycard
    name = "generic keycard”
    desc = "a keycard for nothing”
    icon_state = "PUT A SPRITE HERE”
    unacidable = TRUE
    var/card_code

#undef KEYCARD_SWIPE_COOLDOWN
