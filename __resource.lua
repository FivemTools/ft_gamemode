-- @Date:   2017-06-11T23:18:02+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-25T12:06:11+02:00
-- @License: GNU General Public License v3.0

resource_type "gametype" { name = "FiveMTools v0.10" }

resource_manifest_version "77731fab-63ca-442c-a67b-abc70f28dfa5"

-- Scripts
client_scripts {

  -- Configurations --
  "configurations.lua",

  -- FiveM events --
  "events/cl_playerEvents.lua",
  "events/cl_mapEvents.lua",

  -- Init
  "cl_init.lua",

  -- Events --
  "external/cl_players.lua",

  -- Export --
  "external/cl_exports.lua",

}

server_scripts {

  -- Configurations --
  "configurations.lua",

  -- Tools --
  "sv_utils.lua",

  -- Player classes --
  "classes/sv_player.lua",
  "classes/sv_playersManager.lua",
  "classes/sv_commandsManager.lua",

   -- Init
  "sv_init.lua",

  -- FiveM events --
  "events/sv_playersEvents.lua",
  "events/sv_chatEvents.lua",

  -- Events --
  "external/sv_commands.lua",
  "external/sv_players.lua",
  "external/sv_events.lua",

}

exports {

  -- Player
  "SetPlayerData",
  "GetPlayerData",

}
