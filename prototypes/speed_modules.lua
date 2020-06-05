
local module_base = util.table.deepcopy(data.raw["module"]["speed-module-3"])

for x, speed_module in pairs(speed_modules) do
    
    item = util.table.deepcopy(module_base)

    item.name = speed_module.name
    item.localised_name = { "module-name.speed", speed_module.teir }
    item.icon = "__darkstar-modules__/graphics/icons/" .. speed_module.name .. ".png"    
    item.order = speed_module.order
    item.subgroup = "ds-modules"
    item.tier = speed_module.teir
    item.effect = { speed = {bonus = speed_module.speed}, consumption = {bonus = speed_module.energy_consumption}}

    table.insert(data.raw["technology"][speed_module.technology].effects, { type = "unlock-recipe", recipe = speed_module.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = speed_module.name,
        enabled = false,
        ingredients = speed_module.ingredients,
        result = speed_module.name
    }})
end