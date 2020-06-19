
local module_base = util.table.deepcopy(data.raw["module"]["effectivity-module-3"])

for x, effectivity_module in pairs(effectivity_modules) do
    
    item = util.table.deepcopy(module_base)

    item.name = effectivity_module.name
    item.localised_name = { "module-name.effectivity", effectivity_module.teir }
    item.icon = "__zombiesextended-modules__/graphics/icons/" .. effectivity_module.name .. ".png"    
    item.order = effectivity_module.order
    item.subgroup = "ds-modules"
    item.tier = effectivity_module.teir
    item.effect = { consumption = {bonus = effectivity_module.energy_consumption}}

    table.insert(data.raw["technology"][effectivity_module.technology].effects, { type = "unlock-recipe", recipe = effectivity_module.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = effectivity_module.name,
        enabled = false,
        ingredients = effectivity_module.ingredients,
        result = effectivity_module.name
    }})
end