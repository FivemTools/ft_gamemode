-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0

resource_type "gametype" { name = "FiveMTools v0.14.1" }

resource_manifest_version "77731fab-63ca-442c-a67b-abc70f28dfa5"

client_scripts {

  "configurations.lua", -- Configuration file
  "client/cl_init.lua", -- Init Client
  "client/cl_player.lua", -- Player
  "client/cl_playerEvents.lua", -- Player events

}

server_scripts {

  "@mysql-async/lib/MySQL.lua", -- Load mysql-async
  "configurations.lua", -- Configuration file
  "server/sv_utils.lua", -- Utils
  "server/sv_player.lua", -- Player manager
  "server/sv_players.lua", -- Players managers
  "server/sv_commands.lua", -- Commands mananagers
  "server/sv_init.lua", -- Init Server

}

exports {

  "SetPlayerData",
  "GetPlayerData",

}

server_exports {

  "AddCommand",
  "GetPlayers",
  "GetPlayer",
  "PlayerExist",

}
