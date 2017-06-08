/**
 * @Author: samuelds
 * @Date:   2017-06-08T19:15:48+02:00
 * @Project: FiveM Tools
 * @Last modified by:   samuelds
 * @Last modified time: 2017-06-08T23:39:17+02:00
 * @License: GNU General Public License v3.0
 */

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steamId` varchar(255) DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  `whitelist` tinyint(1) NOT NULL DEFAULT '0',
  `permissionLevel` int(1) NOT NULL DEFAULT '0',
  `role` int(1) NOT NULL DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `steamId` (`steamId`)
);
