/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE TABLE IF NOT EXISTS `accountxrealmloyalty` (
  `AccountId` varchar(255) NOT NULL,
  `Realm` int(11) NOT NULL DEFAULT 0,
  `LoyalDays` int(11) NOT NULL DEFAULT 0,
  `MinimumLoyalDays` int(11) NOT NULL DEFAULT 0,
  `LastLoyaltyUpdate` datetime DEFAULT NULL,
  `RealmLoyaltyID` int(11) NOT NULL AUTO_INCREMENT,
  `LastTimeRowUpdated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`RealmLoyaltyID`),
  KEY `I_AccountXRealmLoyalty_AccountId` (`AccountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*!40000 ALTER TABLE `accountxrealmloyalty` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountxrealmloyalty` ENABLE KEYS */;

