-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0

resource_type "gametype" { name = "FiveMTools v0.14.1" }

resource_manifest_version "77731fab-63ca-442c-a67b-abc70f28dfa5"

client_scripts {

  "configurations.lua", -- Configuration file
  "client/cl_init.lua", -- Init Client
  "client/cl_playerEvents.lua", -- Player events

}

server_scripts {

  "configurations.lua", -- Configuration file
  "server/sv_utils.lua", -- Utils
  "server/sv_commands.lua", -- Commands mananagers
  "server/sv_init.lua", -- Init Server

}

exports {

}

server_exports {

  "AddCommand",
}
