
local entity_base = util.table.deepcopy(data.raw["beacon"]["beacon"])
local item_base = util.table.deepcopy(data.raw["item"]["beacon"])

for x, beacon in pairs(beacons) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = beacon.name    
    entity.icon = "__darkstar-modules__/graphics/icons/" .. beacon.name .. ".png"
    entity.minable.result = beacon.name
    entity.max_health = beacon.health
    entity.energy_usage = beacon.energy_con_kw .. "kW"
    entity.distribution_effectivity = beacon.efficiency
    entity.module_specification.module_slots = beacon.module_slots
    entity.supply_area_distance = beacon.supply_area
    
    
    item.name = beacon.name
    item.icon = "__darkstar-modules__/graphics/icons/" .. beacon.name .. ".png"
    item.place_result = beacon.name
    item.order = beacon.order
    item.subgroup = "ds-modules"

    data:extend({ entity, item })
end