local science_t1 = {{"automation-science-pack",1}}
local science_t2 = {{"automation-science-pack",1},{"logistic-science-pack",1}}
local science_t3 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1}}
local science_t4 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1}}
local science_t5 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1},{"utility-science-pack",1}}
local science_t6 = {{"automation-science-pack",1},{"logistic-science-pack",1},{"chemical-science-pack",1},{"production-science-pack",1},{"utility-science-pack",1},{"space-science-pack",1}}

technologies = {
    { order = "a-a-a", name = "effect-transmission-mk1", count = 200, time = 60, prerequisite = {"effect-transmission"}, ingredients = science_t4 },
    { order = "a-a-b", name = "effect-transmission-mk2", count = 400, time = 60, prerequisite = {"effect-transmission-mk1"}, ingredients = science_t5 },
    { order = "a-a-c", name = "effect-transmission-mk3", count = 600, time = 60, prerequisite = {"effect-transmission-mk2"}, ingredients = science_t6 },

    { order = "a-b-a", name = "speed-module-mk1", count = 400, time = 60, prerequisite = {"speed-module-3"}, ingredients = science_t5 },
    { order = "a-b-b", name = "speed-module-mk2", count = 600, time = 60, prerequisite = {"speed-module-mk1"}, ingredients = science_t6 },
    { order = "a-b-c", name = "speed-module-mk3", count = 800, time = 60, prerequisite = {"speed-module-mk2"}, ingredients = science_t6 },
    
    { order = "a-c-a", name = "effectivity-module-mk1", count = 400, time = 60, prerequisite = {"effectivity-module-3"}, ingredients = science_t5 },
    { order = "a-c-b", name = "effectivity-module-mk2", count = 600, time = 60, prerequisite = {"effectivity-module-mk1"}, ingredients = science_t6 },
    { order = "a-c-c", name = "effectivity-module-mk3", count = 800, time = 60, prerequisite = {"effectivity-module-mk2"}, ingredients = science_t6 },
    
    { order = "a-d-a", name = "productivity-module-mk1", count = 400, time = 60, prerequisite = {"productivity-module-3"}, ingredients = science_t5 },
    { order = "a-d-b", name = "productivity-module-mk2", count = 600, time = 60, prerequisite = {"productivity-module-mk1"}, ingredients = science_t6 },
    { order = "a-d-c", name = "productivity-module-mk3", count = 800, time = 60, prerequisite = {"productivity-module-mk2"}, ingredients = science_t6 },
}

beacons = {
    { order = "a-a", name = "beacon-mk1", health = 200, efficiency = 1, energy_con_kw = 960, supply_area = 3, module_slots = 2, ingredients = { {"beacon", 2},{"complex-processing-unit", 10} }, technology = "effect-transmission-mk1" },
    { order = "a-b", name = "beacon-mk2", health = 200, efficiency = 2, energy_con_kw = 1920, supply_area = 3, module_slots = 2, ingredients = { {"beacon-mk1", 2},{"complex-processing-unit", 10},{"vibranium-plate", 30} }, technology = "effect-transmission-mk2" },
    { order = "a-c", name = "beacon-mk3", health = 200, efficiency = 3, energy_con_kw = 3840, supply_area = 3, module_slots = 2, ingredients = { {"beacon-mk2", 2},{"complex-processing-unit", 10},{"vibranium-plate", 30} }, technology = "effect-transmission-mk3" },
}

speed_modules = {
    { order = "b-a", name = "speed-module-mk1", energy_consumption = 1, speed = 1, teir = 4, energy_required = 120, ingredients = { {"speed-module-3", 3},{"complex-processing-unit", 20},{"vibranium-plate", 30} }, technology = "speed-module-mk1" },
    { order = "b-b", name = "speed-module-mk2", energy_consumption = 1.5, speed = 1.5, teir = 5, energy_required = 240, ingredients = { {"speed-module-mk1", 3},{"complex-processing-unit", 20},{"vibranium-plate", 30} }, technology = "speed-module-mk2" },
    { order = "b-c", name = "speed-module-mk3", energy_consumption = 2, speed = 2, teir = 6, energy_required = 480, ingredients = { {"speed-module-mk2", 3},{"complex-processing-unit", 20},{"vibranium-plate", 30} }, technology = "speed-module-mk3" },
}

effectivity_modules = {
    { order = "c-a", name = "effectivity-module-mk1", energy_consumption = -1, pollution = -0.2, teir = 4, energy_required = 120, ingredients = { {"effectivity-module-3", 3},{"complex-processing-unit", 20},{"vibranium-plate", 30} }, technology = "effectivity-module-mk1" },
    { order = "c-b", name = "effectivity-module-mk2", energy_consumption = -2, pollution = -0.4, teir = 5, energy_required = 240, ingredients = { {"effectivity-module-mk1", 3},{"complex-processing-unit", 20},{"vibranium-plate", 30} }, technology = "effectivity-module-mk2" },
    { order = "c-c", name = "effectivity-module-mk3", energy_consumption = -3, pollution = -0.8, teir = 6, energy_required = 480, ingredients = { {"effectivity-module-mk2", 3},{"complex-processing-unit", 20},{"vibranium-plate", 30} }, technology = "effectivity-module-mk3" },
}

productivity_modules = {
    { order = "d-a", name = "productivity-module-mk1", productivity = 0.2, energy_consumption = 1, pollution = 0.15, speed = -0.15, teir = 4, energy_required = 120, ingredients = { {"productivity-module-3", 3},{"complex-processing-unit", 20},{"vibranium-plate", 30} }, technology = "productivity-module-mk1" },
    { order = "d-b", name = "productivity-module-mk2", productivity = 0.3, energy_consumption = 1.2, pollution = 0.2, speed = -0.15, teir = 5, energy_required = 240, ingredients = { {"productivity-module-mk1", 3},{"complex-processing-unit", 20},{"vibranium-plate", 30} }, technology = "productivity-module-mk2" },
    { order = "d-c", name = "productivity-module-mk3", productivity = 0.4, energy_consumption = 1.6, pollution = 0.3, speed = -0.15, teir = 6, energy_required = 480, ingredients = { {"productivity-module-mk2", 3},{"complex-processing-unit", 20},{"vibranium-plate", 30} }, technology = "productivity-module-mk3" },
}