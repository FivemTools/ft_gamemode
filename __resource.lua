-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0

resource_type "gametype" { name = "FiveMTools v0.13.0" }

resource_manifest_version "77731fab-63ca-442c-a67b-abc70f28dfa5"

client_scripts {

  "configurations.lua", -- Configuration file

  -- FiveM events --
  "client/cl_playerEvents.lua",
  "client/cl_mapEvents.lua",

  -- Init
  "cl_init.lua",

  -- Events --
  "external/cl_players.lua",

  -- Export --
  "external/cl_exports.lua",

}

server_scripts {

  "configurations.lua", -- Configuration file

  -- Tools
  "sv_utils.lua",

  -- Player classes
  "server/sv_player.lua",
  "server/sv_players.lua",
  "server/sv_commands.lua",

  -- Init
  "sv_init.lua",

  -- FiveM events
  "events/sv_playersEvents.lua",
  "events/sv_chatEvents.lua",

  -- Events
  "external/sv_players.lua",
  "external/sv_events.lua",

}

exports {

  -- Player
  "SetPlayerData",
  "GetPlayerData",

}
