-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0

resource_type "gametype" { name = "FiveMTools v0.14.1" }

dependencies {
  "ft_players",
}

client_scripts {
  "configurations.lua", -- Configuration file
  "client/cl_init.lua", -- Init Client
  "client/cl_playerEvents.lua", -- Player events
}

server_scripts {
  -- "configurations.lua", -- Configuration file
  -- "server/sv_utils.lua", -- Utils
  -- "server/sv_commands.lua", -- Commands mananagers
  -- "server/sv_init.lua", -- Init Server
}

exports {}

server_exports {
  -- "AddCommand",
}
