local DLL = require("prototypes.globals")

local function config_refresh(event)
    if event.mod_changes["DeadlockLargerLamp"] then
        for _, force in pairs(game.forces) do
            local technology = game.technology_prototypes[DLL.technology]
            local recipe = game.recipe_prototypes[DLL.name]
            local floor_recipe = game.recipe_prototypes[DLL.floor_name]
            local electric_copper_recipe = game.recipe_prototypes[DLL.electric_copper_name]

            -- Check if technology is researched, then enable the recipes
            if technology and recipe and floor_recipe then
                force.recipes[DLL.name].enabled = force.technologies[DLL.technology].researched
                force.recipes[DLL.floor_name].enabled = force.technologies[DLL.technology].researched
                log("Enabled recipes for " .. DLL.name .. " and " .. DLL.floor_name)
            end

            -- Enable Electric Copper Lamp Recipe when technology is researched
            if electric_copper_recipe then
                force.recipes[DLL.electric_copper_name].enabled = force.technologies[DLL.technology].researched
                log("Enabled recipe for " .. DLL.electric_copper_name)
            end
        end
    end
end

script.on_configuration_changed(config_refresh)
