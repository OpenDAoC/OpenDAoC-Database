/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE TABLE IF NOT EXISTS `loototd` (
  `MobName` varchar(100) NOT NULL,
  `ItemTemplateID` varchar(100) NOT NULL,
  `MinLevel` int(11) NOT NULL DEFAULT 0,
  `LastTimeRowUpdated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `LootOTD_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`LootOTD_ID`),
  KEY `I_LootOTD_MobName` (`MobName`),
  KEY `I_LootOTD_ItemTemplateID` (`ItemTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*!40000 ALTER TABLE `loototd` DISABLE KEYS */;
/*!40000 ALTER TABLE `loototd` ENABLE KEYS */;

