/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE TABLE IF NOT EXISTS `keephookpoint` (
  `HookPointID` int(11) NOT NULL DEFAULT 0,
  `KeepComponentSkinID` int(11) NOT NULL DEFAULT 0,
  `Z` int(11) NOT NULL DEFAULT 0,
  `Y` int(11) NOT NULL DEFAULT 0,
  `X` int(11) NOT NULL DEFAULT 0,
  `Heading` int(11) NOT NULL DEFAULT 0,
  `Height` int(11) NOT NULL DEFAULT 0,
  `LastTimeRowUpdated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `KeepHookPoint_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`KeepHookPoint_ID`),
  KEY `I_KeepHookPoint_HookPointID` (`HookPointID`),
  KEY `I_KeepHookPoint_Height` (`Height`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*!40000 ALTER TABLE `keephookpoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `keephookpoint` ENABLE KEYS */;

