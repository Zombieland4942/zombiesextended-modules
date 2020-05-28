
local module_base = util.table.deepcopy(data.raw["module"]["productivity-module-3"])

for x, productivity_module in pairs(productivity_modules) do
    
    item = util.table.deepcopy(module_base)

    item.name = productivity_module.name
    item.localised_name = { "module-name.productivity", productivity_module.teir }
    item.icon = "__darkstar-modules__/graphics/icons/" .. productivity_module.name .. ".png"    
    item.order = productivity_module.order
    item.subgroup = "ds-modules"
    item.tier = productivity_module.teir
    item.effect = {
                    productivity = {bonus = productivity_module.productivity},
                    consumption = {bonus = productivity_module.energy_consumption},
                    pollution = {bonus = productivity_module.pollution},
                    speed = {bonus = productivity_module.speed}
                  }

    data:extend({ item })
end