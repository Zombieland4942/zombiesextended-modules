
local entity_base = util.table.deepcopy(data.raw["beacon"]["beacon"])
local item_base = util.table.deepcopy(data.raw["item"]["beacon"])

for x, beacon in pairs(beacons) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = beacon.name    
    entity.icon = "__zombiesextended-modules__/graphics/icons/" .. beacon.name .. ".png"
    entity.minable.result = beacon.name
    entity.max_health = beacon.health
    entity.energy_usage = beacon.energy_con_kw .. "kW"
    entity.distribution_effectivity = beacon.efficiency
    entity.module_specification.module_slots = beacon.module_slots
    entity.supply_area_distance = beacon.supply_area
    
    entity.graphics_set.animation_list[1].animation.layers[1].filename = "__zombiesextended-modules__/graphics/entity/" .. beacon.name .. "/beacon-bottom.png"
    entity.graphics_set.animation_list[1].animation.layers[1].hr_version.filename = "__zombiesextended-modules__/graphics/entity/" .. beacon.name .. "/hr-beacon-bottom.png"
    entity.graphics_set.animation_list[2].animation.filename = "__zombiesextended-modules__/graphics/entity/" .. beacon.name .. "/beacon-top.png"
    entity.graphics_set.animation_list[2].animation.hr_version.filename = "__zombiesextended-modules__/graphics/entity/" .. beacon.name .. "/hr-beacon-top.png"

    item.name = beacon.name
    item.icon = "__zombiesextended-modules__/graphics/icons/" .. beacon.name .. ".png"
    item.place_result = beacon.name
    item.order = beacon.order
    item.subgroup = "ds-modules"

    table.insert(data.raw["technology"][beacon.technology].effects, { type = "unlock-recipe", recipe = beacon.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = beacon.name,
        enabled = false,
        ingredients = beacon.ingredients,
        result = beacon.name
    }})
end