/obj/effect/spawner/random_pill
	name = "random pill spawner"
	icon = 'icons/landmarks.dmi'
	icon_state = "random_pill"
	///The list of reagent id's that will be picked from
	var/list/potential_chem_list = list()
	///The amount of reagents picked from the potential_chem_list
	var/unique_chem_amnt = 1
	///The min units of reagent per picked chem
	var/chem_min_units = 5
	///The max units of reagent per picked chem
	var/chem_max_units = 30
	///The percent chance of the pill spawning
	var/spawn_prob = 100
	///parent type that gets ignored during unit tests
	var/abstract_type = /obj/effect/spawner/random_pill

/obj/effect/spawner/random_pill/Initialize(mapload, ...)
	..()
	. = INITIALIZE_HINT_QDEL
	if(istypestrict(src, abstract_type))
		return

	if(!potential_chem_list)
		CRASH("[src] is missing a potential_chem_list")
	if(!unique_chem_amnt)
		CRASH("[src] is missing a unique_chem_amnt")
	if(!chem_min_units || !chem_max_units)
		CRASH("[src] is missing a chem_min_units or chem_max_units")
	if(!prob(spawn_prob))
		return

	return INITIALIZE_HINT_ROUNDSTART

/obj/effect/spawner/random_pill/LateInitialize()
    . = ..()
    var/obj/item/reagent_container/pill/pill = new(loc)
    pill.identificable = FALSE
    for(var/i in 1 to unique_chem_amnt)
        var/selected_chem = pick_n_take(potential_chem_list)
        pill.reagents.add_reagent(selected_chem, rand(chem_min_units, chem_max_units))
    qdel(src)

/obj/effect/spawner/random_pill/neutral ///This is the full random pill
    potential_chem_list = list("inaprovaline","paracetamol","tramadol","oxycodone","kelotane","dermaline","dexalin","dexalinp","tricordrazine","anti_toxin","thwei","neuraline","arithrazine","russianred","alkysine","imidazoline","peridaxon","bicaridine","meralyne","adrenaline","ultrazine","rezadone","spaceacillin","methylphenidate","paroxetine","molecularacid","amatoxin","mutagen","cyanide","mindbreaker","dinitroaniline","chloralhydrate","formaldehyde","plasticide","space_drugs","mercury","sugar","iron","uranium","fuel","cleaner","impedrezene","nicotine","ammonia","glue","diethylamine","napalm","napalmx","napalmb","R189","chlorine trifluoride","potassium_hydroxide","ammonium_nitrate","Chitin Plasma","Catecholamine Plasma","Neurotoxin Plasma","antineurotoxin","nutriment","meatprotein","lipozine","capsaicin","condensedcapsaicin","frostoil","psilocybin","hell_ramen","poisonberryjuice","watermelonjuice","grenadine","soymilk","cream","milkshake","souto_vanilla","souto_classic","cola","aspen","coffee","nothing","machosauce","tonic","gargleblaster","neurotoxin","hippiesdelight","ethanol","beer","whiskey","thirteenloko","pwine","blackout","booger","phoronspecial","demonsblood","acidspit","changelingsting")

/obj/effect/spawner/random_pill/helpful ///This is only beneficial chems
	potential_chem_list = list("inaprovaline","paracetamol","tramadol","oxycodone","kelotane","dermaline","dexalin","dexalinp","tricordrazine","anti_toxin","thwei","neuraline","arithrazine","russianred","alkysine","imidazoline","peridaxon","bicaridine","meralyne","adrenaline","ultrazine","rezadone","spaceacillin","methylphenidate","paroxetine","sugar","iron","antineurotoxin","nutrient","meatprotien")

/obj/effect/spawner/random_pill/hell ///Only the harmful chems
	potential_chem_list = list("molecularacid","amatoxin","mutagen","cyanide","mindbreaker","dinitroaniline","chloralhydrate","formaldehyde","plasticide","space_drugs","mercury","sugar","uranium","fuel","cleaner","impedrezene","nicotine","ammonia","glue","diethylamine","napalm","napalmx","napalmb","R189","chlorine trifluoride","potassium_hydroxide","ammonium_nitrate","Neurotoxin Plasma","antineurotoxin","nutriment","lipozine","capsaicin","condensedcapsaicin","frostoil","psilocybin","hell_ramen","poisonberryjuice","grenadine","soymilk","aspen","nothing","machosauce","tonic","gargleblaster","neurotoxin","hippiesdelight","ethanol","beer","whiskey","thirteenloko","pwine","blackout","booger","phoronspecial","demonsblood","acidspit","changelingsting")
