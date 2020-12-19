
local module_base = util.table.deepcopy(data.raw["module"]["productivity-module-3"])

for x, productivity_module in pairs(productivity_modules) do
    
    item = util.table.deepcopy(module_base)

    item.name = productivity_module.name
    item.localised_name = { "module-name.productivity", productivity_module.teir }
    item.icon = "__zombiesextended-modules__/graphics/icons/" .. productivity_module.name .. ".png"
    item.tier = productivity_module.teir
    item.effect = {
                    productivity = {bonus = productivity_module.productivity},
                    consumption = {bonus = productivity_module.energy_consumption},
                    pollution = {bonus = productivity_module.pollution},
                    speed = {bonus = productivity_module.speed}
                  }
    item.order = item.order .. productivity_module.order

    if settings.startup["zombies-use-seperate-tab"].value == true then        
        item.subgroup = "ds-modules"
    end
    
    table.insert(data.raw["technology"][productivity_module.technology].effects, { type = "unlock-recipe", recipe = productivity_module.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = productivity_module.name,
        enabled = false,
        energy_required = productivity_module.energy_required,
        ingredients = productivity_module.ingredients,
        result = productivity_module.name
    }})
end