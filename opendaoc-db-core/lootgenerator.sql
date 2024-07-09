/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE IF NOT EXISTS `lootgenerator` (
  `MobName` text DEFAULT NULL,
  `MobGuild` text DEFAULT NULL,
  `MobFaction` text DEFAULT NULL,
  `RegionID` smallint(5) unsigned NOT NULL DEFAULT 0,
  `LootGeneratorClass` text NOT NULL,
  `ExclusivePriority` int(11) NOT NULL DEFAULT 0,
  `LastTimeRowUpdated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `LootGenerator_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`LootGenerator_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*!40000 ALTER TABLE `lootgenerator` DISABLE KEYS */;
REPLACE INTO `lootgenerator` (`MobName`, `MobGuild`, `MobFaction`, `RegionID`, `LootGeneratorClass`, `ExclusivePriority`, `LastTimeRowUpdated`, `LootGenerator_ID`) VALUES
	(NULL, NULL, NULL, 163, 'DOL.GS.LootGeneratorExpOrb', 0, '2000-01-01 00:00:00', 'Atlas Orbs'),
	(NULL, NULL, NULL, 0, 'DOL.GS.ROGMobGenerator', 0, '2000-01-01 00:00:00', 'Atlas ROGs'),
	(NULL, NULL, NULL, 0, 'DOL.GS.LootGeneratorMoney', 0, '2000-01-01 00:00:00', 'money'),
	(NULL, NULL, NULL, 0, 'DOL.GS.LootGeneratorOneTimeDrop', 0, '2000-01-01 00:00:00', 'otd'),
	(NULL, NULL, NULL, 0, 'DOL.GS.LootGeneratorTemplate', 0, '2000-01-01 00:00:00', 'template');
/*!40000 ALTER TABLE `lootgenerator` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
