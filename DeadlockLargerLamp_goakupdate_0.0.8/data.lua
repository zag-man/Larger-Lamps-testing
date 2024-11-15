-- DEADLOCK's LARGER LAMPS

-- Update prototypes access (Factorio 2.0+)
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.entity")
require("prototypes.technology")

-- Increase light renderer search radius (0.17.70 onwards)

local limit = 25
local utility_constants = data.raw["utility-constants"]

-- Ensure utility_constants is valid before attempting to update
if utility_constants and utility_constants.default and utility_constants.default.light_renderer_search_distance_limit and utility_constants.default.light_renderer_search_distance_limit < limit then
    utility_constants.default.light_renderer_search_distance_limit = limit
end
