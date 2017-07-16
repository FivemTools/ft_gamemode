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
  "client/cl_init.lua",

  -- Events --
  "client/cl_players.lua",

  -- Export --
  "client/cl_exports.lua",

}

server_scripts {

  "configurations.lua", -- Configuration file

  -- Tools
  "server/sv_utils.lua",

  -- Player classes
  "server/sv_player.lua",
  "server/sv_players.lua",
  "server/sv_commands.lua",

  -- Init
  "server/sv_init.lua",

}

exports {

  -- Player
  "SetPlayerData",
  "GetPlayerData",

}
