/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE TABLE IF NOT EXISTS `keepcapturelog` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DateTaken` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `KeepName` text NOT NULL,
  `KeepType` text NOT NULL,
  `NumEnemies` int(11) NOT NULL DEFAULT 0,
  `CombatTime` int(11) NOT NULL DEFAULT 0,
  `RPReward` int(11) NOT NULL DEFAULT 0,
  `BPReward` int(11) NOT NULL DEFAULT 0,
  `XPReward` bigint(20) NOT NULL DEFAULT 0,
  `MoneyReward` bigint(20) NOT NULL DEFAULT 0,
  `CapturedBy` text NOT NULL,
  `RPGainerList` text NOT NULL,
  `LastTimeRowUpdated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*!40000 ALTER TABLE `keepcapturelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `keepcapturelog` ENABLE KEYS */;

