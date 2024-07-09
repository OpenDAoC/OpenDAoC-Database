/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE IF NOT EXISTS `dataquestrewardquest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `QuestName` varchar(255) NOT NULL,
  `StartNPC` varchar(100) NOT NULL,
  `StartRegionID` smallint(5) unsigned NOT NULL,
  `StoryText` text DEFAULT NULL,
  `Summary` text DEFAULT NULL,
  `AcceptText` text DEFAULT NULL,
  `QuestGoals` text DEFAULT NULL,
  `GoalType` text DEFAULT NULL,
  `GoalRepeatNo` text DEFAULT NULL,
  `GoalTargetName` text DEFAULT NULL,
  `GoalTargetText` text DEFAULT NULL,
  `StepCount` int(11) DEFAULT NULL,
  `FinishNPC` text DEFAULT NULL,
  `AdvanceText` text DEFAULT NULL,
  `CollectItemTemplate` text DEFAULT NULL,
  `MaxCount` smallint(5) unsigned NOT NULL,
  `MinLevel` tinyint(3) unsigned NOT NULL,
  `MaxLevel` tinyint(3) unsigned NOT NULL,
  `RewardMoney` bigint(20) DEFAULT NULL,
  `RewardXP` bigint(20) DEFAULT NULL,
  `RewardCLXP` bigint(20) DEFAULT NULL,
  `RewardRP` bigint(20) DEFAULT NULL,
  `RewardBP` bigint(20) DEFAULT NULL,
  `OptionalRewardItemTemplates` text DEFAULT NULL,
  `FinalRewardItemTemplates` text DEFAULT NULL,
  `FinishText` text DEFAULT NULL,
  `QuestDependency` text DEFAULT NULL,
  `AllowedClasses` varchar(200) DEFAULT NULL,
  `ClassType` text DEFAULT NULL,
  `XOffset` text DEFAULT NULL,
  `YOffset` text DEFAULT NULL,
  `ZoneID` text DEFAULT NULL,
  `LastTimeRowUpdated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*!40000 ALTER TABLE `dataquestrewardquest` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataquestrewardquest` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
