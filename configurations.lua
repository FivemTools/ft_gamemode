-- @Date:   2017-05-10T23:34:27+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-25T16:16:32+02:00
-- @License: GNU General Public License v3.0

Config = {

  name = "Fivemtools", -- Server Name (optional)
  whitelist = true, -- Enable Whitelist (optional)
  pvp = true, -- Enable pvp (optional)
  everyIgnores = true, -- Everyone Ignores You (optional)
  policeIgnores = true, -- Police Ignores You (optional)
  noWantedLevel = true, -- Disable Wanted Level (optional)
  vehicleRewards = true, -- Disable Vehicle Rewards (optional)
  traffic = 1.0, -- Vehicle traffic [0.0 - 1.0] (optional)
  pedDensity = 1.0, -- Ped Density [0.0 - 1.0] (optional)

  -- Dispatch
  dispatch = {
    cop = true, -- Disable Cop (optional)
    gang = true, -- Disable Gang (optional)
    biker = true, -- Disable Biker (optional)
    ambulance = true, -- Disable Ambulance (optional)
    fireDepartment = true, -- Disable Fire Department (optional)
  },

  -- Custom message
  message = {
    noWhitelist = "This is a private server. Ask the administrator.",
    ban = "You are banned from this server !",
    notPermissionLevel = "You do not have permission to use this command.",
  },

}
