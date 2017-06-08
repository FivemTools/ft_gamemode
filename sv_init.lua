-- @Author: samuelds
-- @Date:   2017-05-10T23:34:27+02:00
-- @Project: FiveM Tools
-- @Last modified by:   samuelds
-- @Last modified time: 2017-06-08T23:39:23+02:00
-- @License: GNU General Public License v3.0

-- Load lib MySQL --
require "resources/mysql-async/lib/MySQL"

-- Init --
PlayersManager = PlayersManager() -- Player
CommandsManager = CommandsManager() -- Commands

-- SQL --

-- Player (SOON)
-- MySQL.Sync.execute("CREATE TABLE IF NOT EXISTS players (
--   id int(11) NOT NULL AUTO_INCREMENT,
--   steamId varchar(255) DEFAULT NULL,
--   ban tinyint(1) NOT NULL DEFAULT '0',
--   whitelist tinyint(1) NOT NULL DEFAULT '0',
--   permissionLevel int(1) NOT NULL DEFAULT '0',
--   role int(1) NOT NULL DEFAULT '0',
--   createdAt datetime DEFAULT NULL,
--   PRIMARY KEY (id),
--   KEY steamId (steamId)
-- )")
