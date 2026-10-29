local kit = {}
local EQUIPMENT = {
  {name = "fission-reactor-equipment", position = {0, 0}},
  {name = "exoskeleton-equipment", position = {4, 0}},
  {name = "personal-roboport-equipment", position = {0, 4}},
  {name = "night-vision-equipment", position = {2, 4}}
}

function kit.grant(player)
  storage.received = storage.received or {}
  if storage.received[player.index] then return false, "already-received" end

  local character = player.character or player.cutscene_character
  if not character or not character.valid then return false, "no-character" end
  local armor_inventory = character.get_inventory(defines.inventory.character_armor)
  local main = character.get_main_inventory()
  if not armor_inventory or not main then return false, "no-character" end

  -- Keep already-worn armor. A full inventory postpones the grant rather than
  -- overwriting an item; /accelerated-start retries after space is available.
  local destination = armor_inventory[1]
  if destination.valid_for_read then destination = main.find_empty_stack() end
  if not destination then return false, "inventory-full" end

  destination.set_stack({name = "accelerated-start-armor", count = 1})
  for _, definition in ipairs(EQUIPMENT) do
    local equipment = destination.grid.put(definition)
    assert(equipment, "Accelerated Start: starter equipment does not fit")
    equipment.energy = equipment.max_energy
  end

  local remainder = 10 - main.insert({name = "accelerated-start-robot", count = 10})
  if remainder > 0 then
    character.surface.spill_item_stack({
      position = character.position,
      stack = {name = "accelerated-start-robot", count = remainder},
      enable_looted = true,
      force = character.force,
      allow_belts = false
    })
  end
  storage.received[player.index] = true
  return true
end

return kit
