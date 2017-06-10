-- @Author: samuelds
-- @Date:   2017-05-28T09:34:12+02:00
-- @Project: FiveM Tools
-- @Last modified by:
-- @Last modified time: 2017-06-10T18:31:18+02:00
-- @License: GNU General Public License v3.0

resource_type "gametype" { name = "FiveM Tools v0.6" }

resource_manifest_version "77731fab-63ca-442c-a67b-abc70f28dfa5"

-- Scripts
client_scripts {

  -- Configurations --
  "configurations.lua",

  -- FiveM events --
  "events/cl_events.lua",

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
