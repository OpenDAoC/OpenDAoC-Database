/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE TABLE IF NOT EXISTS `relic` (
  `RelicID` int(11) NOT NULL DEFAULT 0,
  `Region` int(11) NOT NULL DEFAULT 0,
  `X` int(11) NOT NULL DEFAULT 0,
  `Y` int(11) NOT NULL DEFAULT 0,
  `Z` int(11) NOT NULL DEFAULT 0,
  `Heading` int(11) NOT NULL DEFAULT 0,
  `Realm` int(11) NOT NULL DEFAULT 0,
  `OriginalRealm` int(11) NOT NULL DEFAULT 0,
  `LastRealm` int(11) NOT NULL DEFAULT 0,
  `relicType` int(11) NOT NULL DEFAULT 0,
  `LastTimeRowUpdated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `Relic_ID` varchar(255) DEFAULT NULL,
  `LastCaptureDate` datetime DEFAULT NULL,
  `OwningGuildID` text NOT NULL,
  PRIMARY KEY (`RelicID`),
  UNIQUE KEY `U_Relic_Relic_ID` (`Relic_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*!40000 ALTER TABLE `relic` DISABLE KEYS */;
REPLACE INTO `relic` (`RelicID`, `Region`, `X`, `Y`, `Z`, `Heading`, `Realm`, `OriginalRealm`, `LastRealm`, `relicType`, `LastTimeRowUpdated`, `Relic_ID`, `LastCaptureDate`, `OwningGuildID`) VALUES
	(17, 100, 676804, 710510, 7744, 3992, 2, 2, 2, 1, '2023-05-15 11:40:20', '17', '2022-09-16 21:38:04', ''),
	(25, 1, 506652, 308796, 7664, 555, 1, 1, 1, 1, '2023-05-15 11:40:20', '25', '2022-09-13 21:53:27', ''),
	(30, 1, 601545, 430727, 6496, 3104, 1, 1, 1, 0, '2023-05-15 11:40:20', '30', '2023-04-04 16:25:01', ''),
	(72, 200, 400594, 465627, 3720, 3598, 3, 3, 3, 1, '2023-05-15 11:40:20', '72', '2023-04-06 14:01:40', ''),
	(77, 200, 348482, 373376, 5712, 3138, 3, 3, 3, 0, '2023-05-15 11:40:20', '77', '2022-09-27 20:59:47', ''),
	(78, 100, 772136, 626640, 7824, 1541, 2, 2, 2, 0, '2023-05-15 11:40:20', '78', '2022-09-14 22:10:53', '');
/*!40000 ALTER TABLE `relic` ENABLE KEYS */;

