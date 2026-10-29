-- The starter kit uses Factorio's equipment and graphics with mod-specific names.
local armor = table.deepcopy(data.raw.armor["modular-armor"])
armor.name = "accelerated-start-armor"
armor.localised_name = {"item-name.accelerated-start-armor"}
armor.localised_description = {"item-description.accelerated-start-armor"}
armor.equipment_grid = "accelerated-start-grid"
armor.hidden_in_factoriopedia = true

local robot = table.deepcopy(data.raw["construction-robot"]["construction-robot"])
robot.name = "accelerated-start-robot"
robot.localised_name = {"entity-name.accelerated-start-robot"}
robot.localised_description = {"entity-description.accelerated-start-robot"}
robot.minable.result = "accelerated-start-robot"
robot.energy_per_tick = "0J"
robot.energy_per_move = "0J"

local item = table.deepcopy(data.raw.item["construction-robot"])
item.name = robot.name
item.localised_name = robot.localised_name
item.localised_description = robot.localised_description
item.place_result = robot.name
item.hidden_in_factoriopedia = true

data:extend({
  {
    type = "equipment-grid",
    name = "accelerated-start-grid",
    width = 6,
    height = 6,
    equipment_categories = {"armor"}
  },
  armor,
  robot,
  item
})
