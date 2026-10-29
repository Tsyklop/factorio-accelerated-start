local grant_kit = require("scripts.starter-kit").grant

local function configure_freeplay()
  local interface = remote.interfaces.freeplay
  if not interface then return end
  if interface.set_skip_intro and settings.startup["accelerated-start-skip-intro"].value then
    remote.call("freeplay", "set_skip_intro", true)
  end
  if interface.set_disable_crashsite and settings.startup["accelerated-start-disable-crashsite"].value then
    remote.call("freeplay", "set_disable_crashsite", true)
  end
end

local function initialize()
  storage.received = storage.received or {}
  configure_freeplay()
  for _, player in pairs(game.players) do grant_kit(player) end
end

script.on_init(initialize)
script.on_configuration_changed(initialize)
script.on_event({
  defines.events.on_player_created,
  defines.events.on_player_joined_game,
  defines.events.on_player_respawned,
  defines.events.on_player_controller_changed
}, function(event)
  local player = game.get_player(event.player_index)
  if player then grant_kit(player) end
end)
script.on_event(defines.events.on_player_removed, function(event)
  if storage.received then storage.received[event.player_index] = nil end
end)

commands.add_command("accelerated-start", {"accelerated-start.command-help"}, function(command)
  local player = command.player_index and game.get_player(command.player_index)
  if not player then return end
  local granted, reason = grant_kit(player)
  player.print({"accelerated-start." .. (granted and "kit-granted" or reason)})
end)
