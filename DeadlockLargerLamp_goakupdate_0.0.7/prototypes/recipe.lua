local DLL = require("prototypes.globals")

data:extend({
    -- Large Lamp Recipe
    {
        name = DLL.name,
        type = "recipe",
        enabled = false,
        ingredients = {
            { type = "item", name = "electronic-circuit", amount = 1 },
            { type = "item", name = "copper-cable", amount = 4 },
            { type = "item", name = "iron-plate", amount = 6 },
        },
        results = {
            { type = "item", name = DLL.name, amount = 1 }
        },
        subgroup = "circuit-network",  -- All lamps under circuit-network
        order = "a[lamp]-a[large-lamp]",  -- Place it first in the list
        category = "crafting"  -- Category for crafting
    },
    -- Copper Lamp Recipe
    {
        name = DLL.copper_name,
        type = "recipe",
        enabled = true,
        ingredients = {
            { type = "item", name = "copper-plate", amount = 6 },
        },
        results = {
            { type = "item", name = DLL.copper_name, amount = 1 }
        },
        subgroup = "circuit-network",  -- Copper lamp under circuit-network
        order = "a[lamp]-b[copper-lamp]",  -- Place after large lamp
        category = "crafting"  -- Category for crafting
    },
    -- Hidden Burning Recipe for Copper Lamp
    {
        name = DLL.copper_name.."-burning",
        type = "recipe",
        enabled = true,
        hidden = true,
        hide_from_stats = true,
        icon = string.format("%s/copper-lamp.png", DLL.icon_path),
        icon_size = 64,
        icon_mipmaps = 4,
        category = "lamp-burning",  -- Custom category for lamp burning
        ingredients = {},
        results = {},
        subgroup = "other",  -- Optional: Adjust this if needed
        energy_required = 25000/60,  -- Represents one "Factorio day"
    },
    -- Custom Recipe Category for Lamp Burning (if needed)
    {
        name = "lamp-burning",
        type = "recipe-category",
    },
    -- Electric Copper Lamp Recipe
    {
        name = DLL.electric_copper_name,
        type = "recipe",
        enabled = true,
        ingredients = {
            { type = "item", name = "advanced-circuit", amount = 2 },
            { type = "item", name = "copper-cable", amount = 4 },
            { type = "item", name = "iron-plate", amount = 6 },
        },
        results = {
            { type = "item", name = DLL.electric_copper_name, amount = 1 }
        },
        subgroup = "circuit-network",  -- Electric copper lamp under circuit-network
        order = "a[lamp]-c[electric-copper-lamp]",  -- Place after copper lamp
        category = "crafting"  -- Category for crafting
    },
    -- Floor Lamp Recipe
    {
        name = DLL.floor_name,
        type = "recipe",
        enabled = false,
        ingredients = {
            { type = "item", name = "electronic-circuit", amount = 1 },
            { type = "item", name = "copper-cable", amount = 4 },
            { type = "item", name = "iron-plate", amount = 6 },
        },
        results = {
            { type = "item", name = DLL.floor_name, amount = 1 }
        },
        subgroup = "circuit-network",  -- Floor lamp under circuit-network
        order = "a[lamp]-d[floor-lamp]",  -- Place after electric copper lamp
        category = "crafting"  -- Category for crafting
    }
})
