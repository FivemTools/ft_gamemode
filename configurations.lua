-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0

Config = {

  name = "Fivemtools", -- Server Name (optional)
  whitelist = true, -- Enable Whitelist (optional)
  pvp = true, -- Enable pvp (optional)
  everyIgnores = true, -- Everyone Ignores You (optional)
  policeIgnores = true, -- Police Ignores You (optional)
  noWantedLevel = true, -- Disable Wanted Level (optional)
  vehicleRewards = true, -- Disable Vehicle Rewards (optional)
  pedScenario = true, -- Disable Ped Scenario Like (Military/Police/Animal/Gang) (optional)
  traffic = 0.5, -- Vehicle traffic [0.0 - 1.0] (optional)
  pedDensity = 0.5, -- Ped Density [0.0 - 1.0] (optional)

  -- Custom message
  message = {
    noWhitelist = "This is a private server. Ask the administrator.",
    ban = "You are banned from this server !",
    notPermissionLevel = "You do not have permission to use this command.",
    notFoundCommand = "Command not found.",
  },

}
