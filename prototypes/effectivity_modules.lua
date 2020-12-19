
local module_base = util.table.deepcopy(data.raw["module"]["effectivity-module-3"])

for x, effectivity_module in pairs(effectivity_modules) do
    
    item = util.table.deepcopy(module_base)

    item.name = effectivity_module.name
    item.localised_name = { "module-name.effectivity", effectivity_module.teir }
    item.icon = "__zombiesextended-modules__/graphics/icons/" .. effectivity_module.name .. ".png"
    item.tier = effectivity_module.teir
    item.effect = { 
                    consumption = { bonus = effectivity_module.energy_consumption },
                    pollution = { bonus = effectivity_module.pollution }
                  }

    item.order = item.order .. effectivity_module.order

    if settings.startup["zombies-use-seperate-tab"].value == true then        
        item.subgroup = "ds-modules"
    end
    
    item.beacon_tint.primary = { 65, 65, 65 },

    table.insert(data.raw["technology"][effectivity_module.technology].effects, { type = "unlock-recipe", recipe = effectivity_module.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = effectivity_module.name,
        enabled = false,
        energy_required = effectivity_module.energy_required,
        ingredients = effectivity_module.ingredients,
        result = effectivity_module.name
    }})
end