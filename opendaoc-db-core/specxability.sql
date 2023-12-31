/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE TABLE IF NOT EXISTS `specxability` (
  `SpecXAbility_ID` varchar(255) NOT NULL DEFAULT '',
  `Spec` varchar(100) NOT NULL,
  `SpecLevel` int(11) NOT NULL DEFAULT 0,
  `AbilityKey` varchar(100) NOT NULL,
  `AbilityLevel` int(11) NOT NULL DEFAULT 0,
  `SpecXabilityID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassId` int(11) NOT NULL,
  `LastTimeRowUpdated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`SpecXabilityID`),
  KEY `I_SpecXAbility_Spec` (`Spec`),
  KEY `I_SpecXAbility_AbilityKey` (`AbilityKey`)
) ENGINE=InnoDB AUTO_INCREMENT=3305 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*!40000 ALTER TABLE `specxability` DISABLE KEYS */;
REPLACE INTO `specxability` (`SpecXAbility_ID`, `Spec`, `SpecLevel`, `AbilityKey`, `AbilityLevel`, `SpecXabilityID`, `ClassId`, `LastTimeRowUpdated`) VALUES
	('', 'Stealth', 25, 'Climb Walls', 0, 1, 9, '2000-01-01 00:00:00'),
	('', 'Stealth', 50, 'Safe Fall', 5, 2, 9, '2000-01-01 00:00:00'),
	('', 'Stealth', 16, 'Detect Hidden', 0, 3, 9, '2000-01-01 00:00:00'),
	('', 'Shields', 10, 'Guard', 2, 4, 0, '2000-01-01 00:00:00'),
	('', 'Stealth', 5, 'Distraction', 0, 6, 9, '2000-01-01 00:00:00'),
	('', 'Shields', 15, 'Guard', 3, 7, 0, '2000-01-01 00:00:00'),
	('', 'Stealth', 40, 'Safe Fall', 4, 8, 9, '2000-01-01 00:00:00'),
	('', 'Stealth', 20, 'Safe Fall', 2, 9, 9, '2000-01-01 00:00:00'),
	('', 'Shields', 5, 'Guard', 1, 10, 0, '2000-01-01 00:00:00'),
	('', 'Shields', 7, 'Engage', 0, 11, 0, '2000-01-01 00:00:00'),
	('', 'Stealth', 30, 'Safe Fall', 3, 12, 9, '2000-01-01 00:00:00'),
	('', 'Stealth', 8, 'Danger Sense', 0, 13, 9, '2000-01-01 00:00:00'),
	('', 'CharacterCareer', 1, 'Sprint', 0, 15, 0, '2000-01-01 00:00:00'),
	('', 'VikingCareer', 1, 'Weaponry: Staves', 0, 28, 0, '2000-01-01 00:00:00'),
	('', 'VikingCareer', 1, 'MidArmor', 3, 29, 0, '2000-01-01 00:00:00'),
	('', 'VikingCareer', 1, 'Weaponry: Axes', 0, 30, 0, '2000-01-01 00:00:00'),
	('', 'VikingCareer', 1, 'Weaponry: Hammers', 0, 31, 0, '2000-01-01 00:00:00'),
	('', 'VikingCareer', 1, 'Weaponry: Swords', 0, 32, 0, '2000-01-01 00:00:00'),
	('', 'VikingCareer', 1, 'Shield', 1, 33, 0, '2000-01-01 00:00:00'),
	('', 'BerserkerCareer', 5, 'Berserk', 1, 34, 0, '2000-01-01 00:00:00'),
	('', 'BerserkerCareer', 10, 'Berserk', 2, 35, 0, '2000-01-01 00:00:00'),
	('', 'BerserkerCareer', 15, 'Berserk', 3, 36, 0, '2000-01-01 00:00:00'),
	('', 'BerserkerCareer', 20, 'Berserk', 4, 37, 0, '2000-01-01 00:00:00'),
	('', 'BerserkerCareer', 1, 'Evade', 1, 38, 0, '2000-01-01 00:00:00'),
	('', 'BerserkerCareer', 10, 'Evade', 2, 39, 0, '2000-01-01 00:00:00'),
	('', 'BerserkerCareer', 20, 'Evade', 3, 40, 0, '2000-01-01 00:00:00'),
	('', 'BerserkerCareer', 10, 'Protect', 1, 41, 0, '2000-01-01 00:00:00'),
	('', 'SavageCareer', 1, 'Evade', 1, 45, 0, '2000-01-01 00:00:00'),
	('', 'Shields', 10, 'Guard', 2, 46, 0, '2000-01-01 00:00:00'),
	('', 'SavageCareer', 20, 'Evade', 3, 47, 0, '2000-01-01 00:00:00'),
	('', 'SavageCareer', 30, 'Evade', 4, 49, 0, '2000-01-01 00:00:00'),
	('', 'SavageCareer', 1, 'Weaponry: Hand to Hand', 0, 52, 0, '2000-01-01 00:00:00'),
	('', 'SavageCareer', 10, 'Evade', 2, 53, 0, '2000-01-01 00:00:00'),
	('', 'SkaldCareer', 12, 'Protect', 1, 54, 0, '2000-01-01 00:00:00'),
	('', 'SkaldCareer', 19, 'Protect', 2, 55, 0, '2000-01-01 00:00:00'),
	('', 'SkaldCareer', 20, 'Evade', 1, 56, 0, '2000-01-01 00:00:00'),
	('', 'SkaldCareer', 20, 'MidArmor', 4, 57, 0, '2000-01-01 00:00:00'),
	('', 'SkaldCareer', 1, 'Shield', 1, 58, 0, '2000-01-01 00:00:00'),
	('', 'ThaneCareer', 12, 'Shield', 2, 59, 0, '2000-01-01 00:00:00'),
	('', 'ThaneCareer', 12, 'MidArmor', 4, 60, 0, '2000-01-01 00:00:00'),
	('', 'ThaneCareer', 10, 'Protect', 1, 61, 0, '2000-01-01 00:00:00'),
	('', 'ThaneCareer', 15, 'Intercept', 0, 62, 0, '2000-01-01 00:00:00'),
	('', 'ThaneCareer', 20, 'Protect', 2, 63, 0, '2000-01-01 00:00:00'),
	('', 'ThaneCareer', 51, 'Call of a thousand storms', 0, 64, 0, '2000-01-01 00:00:00'),
	('', 'WarriorCareer', 5, 'Shield', 2, 71, 0, '2000-01-01 00:00:00'),
	('', 'WarriorCareer', 10, 'Shield', 3, 72, 0, '2000-01-01 00:00:00'),
	('', 'WarriorCareer', 10, 'MidArmor', 4, 73, 0, '2000-01-01 00:00:00'),
	('', 'WarriorCareer', 1, 'Weaponry: Thrown', 0, 74, 0, '2000-01-01 00:00:00'),
	('', 'WarriorCareer', 7, 'Protect', 1, 77, 0, '2000-01-01 00:00:00'),
	('', 'WarriorCareer', 12, 'Intercept', 0, 78, 0, '2000-01-01 00:00:00'),
	('', 'WarriorCareer', 13, 'Protect', 2, 79, 0, '2000-01-01 00:00:00'),
	('', 'WarriorCareer', 15, 'Evade', 1, 80, 0, '2000-01-01 00:00:00'),
	('', 'WarriorCareer', 18, 'Protect', 3, 82, 0, '2000-01-01 00:00:00'),
	('', 'AcolyteCareer', 1, 'AlbArmor', 2, 108, 0, '2000-01-01 00:00:00'),
	('', 'AcolyteCareer', 1, 'Shield', 1, 109, 0, '2000-01-01 00:00:00'),
	('', 'AcolyteCareer', 1, 'Weaponry: Crushing', 0, 110, 0, '2000-01-01 00:00:00'),
	('', 'AcolyteCareer', 1, 'Weaponry: Staves', 0, 111, 0, '2000-01-01 00:00:00'),
	('', 'ClericCareer', 1, 'AlbArmor', 2, 112, 0, '2000-01-01 00:00:00'),
	('', 'ClericCareer', 1, 'Shield', 1, 113, 0, '2000-01-01 00:00:00'),
	('', 'FriarCareer', 1, 'Evade', 1, 115, 0, '2000-01-01 00:00:00'),
	('', 'FriarCareer', 10, 'Evade', 2, 116, 0, '2000-01-01 00:00:00'),
	('', 'FriarCareer', 15, 'Evade', 3, 117, 0, '2000-01-01 00:00:00'),
	('', 'FriarCareer', 22, 'Evade', 4, 118, 0, '2000-01-01 00:00:00'),
	('', 'FriarCareer', 33, 'Evade', 5, 119, 0, '2000-01-01 00:00:00'),
	('', 'RogueCareer', 1, 'AlbArmor', 2, 125, 0, '2000-01-01 00:00:00'),
	('', 'RogueCareer', 1, 'Evade', 1, 126, 0, '2000-01-01 00:00:00'),
	('', 'RogueCareer', 1, 'Weaponry: Slashing', 0, 127, 0, '2000-01-01 00:00:00'),
	('', 'RogueCareer', 1, 'Weaponry: Thrusting', 0, 128, 0, '2000-01-01 00:00:00'),
	('', 'RogueCareer', 1, 'Weaponry: Staves', 0, 129, 0, '2000-01-01 00:00:00'),
	('', 'AssassinCareer', 5, 'Evade', 2, 132, 0, '2000-01-01 00:00:00'),
	('', 'AssassinCareer', 10, 'Evade', 3, 133, 0, '2000-01-01 00:00:00'),
	('', 'AssassinCareer', 20, 'Evade', 4, 134, 0, '2000-01-01 00:00:00'),
	('', 'AssassinCareer', 30, 'Evade', 5, 135, 0, '2000-01-01 00:00:00'),
	('', 'AssassinCareer', 40, 'Evade', 6, 137, 0, '2000-01-01 00:00:00'),
	('', 'AssassinCareer', 50, 'Evade', 7, 138, 0, '2000-01-01 00:00:00'),
	('', 'MinstrelCareer', 1, 'AlbArmor', 2, 141, 0, '2000-01-01 00:00:00'),
	('', 'MinstrelCareer', 15, 'Evade', 2, 142, 0, '2000-01-01 00:00:00'),
	('', 'ScoutCareer', 1, 'AlbArmor', 2, 143, 0, '2000-01-01 00:00:00'),
	('', 'ScoutCareer', 5, 'Shield', 1, 144, 0, '2000-01-01 00:00:00'),
	('', 'ScoutCareer', 1, 'Weaponry: Archery', 0, 145, 0, '2000-01-01 00:00:00'),
	('', 'ScoutCareer', 1, 'Weaponry: Longbows', 0, 146, 0, '2000-01-01 00:00:00'),
	('', 'ScoutCareer', 12, 'Evade', 2, 147, 0, '2000-01-01 00:00:00'),
	('', 'ScoutCareer', 20, 'Evade', 3, 148, 0, '2000-01-01 00:00:00'),
	('', 'CharacterQuickcastUserCareer', 1, 'QuickCast', 0, 151, 0, '2000-01-01 00:00:00'),
	('', 'AlbClothCasterCareer', 1, 'AlbArmor', 1, 152, 0, '2000-01-01 00:00:00'),
	('', 'MidClothCasterCareer', 1, 'MidArmor', 1, 153, 0, '2000-01-01 00:00:00'),
	('', 'HibClothCasterCareer', 1, 'HibArmor', 1, 154, 0, '2000-01-01 00:00:00'),
	('', 'AlbClothCasterCareer', 1, 'Weaponry: Staves', 0, 155, 0, '2000-01-01 00:00:00'),
	('', 'MidClothCasterCareer', 1, 'Weaponry: Staves', 0, 156, 0, '2000-01-01 00:00:00'),
	('', 'HibClothCasterCareer', 1, 'Weaponry: Staves', 0, 157, 0, '2000-01-01 00:00:00'),
	('', 'ValewalkerCareer', 1, 'Weaponry: Scythe', 0, 158, 0, '2000-01-01 00:00:00'),
	('', 'ValewalkerCareer', 1, 'Evade', 1, 159, 0, '2000-01-01 00:00:00'),
	('', 'ValewalkerCareer', 10, 'Evade', 2, 160, 0, '2000-01-01 00:00:00'),
	('', 'ValewalkerCareer', 15, 'Protect', 1, 161, 0, '2000-01-01 00:00:00'),
	('', 'ValewalkerCareer', 19, 'Intercept', 0, 162, 0, '2000-01-01 00:00:00'),
	('', 'ValewalkerCareer', 20, 'Evade', 3, 163, 0, '2000-01-01 00:00:00'),
	('', 'ValewalkerCareer', 23, 'Protect', 2, 164, 0, '2000-01-01 00:00:00'),
	('', 'ValewalkerCareer', 30, 'Evade', 4, 165, 0, '2000-01-01 00:00:00'),
	('', 'ValewalkerCareer', 32, 'Protect', 3, 166, 0, '2000-01-01 00:00:00'),
	('', 'MidgardRogueCareer', 1, 'MidArmor', 2, 167, 0, '2000-01-01 00:00:00'),
	('', 'MidgardRogueCareer', 1, 'Weaponry: Staves', 0, 168, 0, '2000-01-01 00:00:00'),
	('', 'MidgardRogueCareer', 1, 'Weaponry: Swords', 0, 169, 0, '2000-01-01 00:00:00'),
	('', 'MidgardRogueCareer', 1, 'Evade', 1, 170, 0, '2000-01-01 00:00:00'),
	('', 'ShadowbladeCareer', 1, 'Weaponry: Axes', 0, 171, 0, '2000-01-01 00:00:00'),
	('', 'ShadowbladeCareer', 1, 'Weaponry: Thrown', 0, 172, 0, '2000-01-01 00:00:00'),
	('', 'ShadowbladeCareer', 1, 'Weaponry: Left Axes', 0, 173, 0, '2000-01-01 00:00:00'),
	('', 'ShadowbladeCareer', 5, 'Shield', 1, 174, 0, '2000-01-01 00:00:00'),
	('', 'StalkerCareer', 1, 'HibArmor', 2, 177, 0, '2000-01-01 00:00:00'),
	('', 'StalkerCareer', 1, 'Weaponry: Staves', 0, 178, 0, '2000-01-01 00:00:00'),
	('', 'StalkerCareer', 1, 'Weaponry: Blades', 0, 179, 0, '2000-01-01 00:00:00'),
	('', 'StalkerCareer', 1, 'Weaponry: Piercing', 0, 180, 0, '2000-01-01 00:00:00'),
	('', 'StalkerCareer', 1, 'Evade', 1, 181, 0, '2000-01-01 00:00:00'),
	('', 'NightshadeCareer', 1, 'Shield', 1, 182, 0, '2000-01-01 00:00:00'),
	('', 'RangerCareer', 1, 'Weaponry: Recurved Bows', 0, 184, 0, '2000-01-01 00:00:00'),
	('', 'RangerCareer', 1, 'Shield', 1, 185, 0, '2000-01-01 00:00:00'),
	('', 'RangerCareer', 10, 'HibArmor', 3, 186, 0, '2000-01-01 00:00:00'),
	('', 'RangerCareer', 12, 'Evade', 2, 188, 0, '2000-01-01 00:00:00'),
	('', 'RangerCareer', 25, 'Evade', 3, 189, 0, '2000-01-01 00:00:00'),
	('', 'SeerCareer', 1, 'MidArmor', 2, 210, 0, '2000-01-01 00:00:00'),
	('', 'HunterCareer', 10, 'MidArmor', 3, 211, 0, '2000-01-01 00:00:00'),
	('', 'HunterCareer', 1, 'Weaponry: Spears', 0, 212, 0, '2000-01-01 00:00:00'),
	('', 'SeerCareer', 10, 'MidArmor', 3, 213, 0, '2000-01-01 00:00:00'),
	('', 'HunterCareer', 1, 'Weaponry: Composite Bows', 0, 214, 0, '2000-01-01 00:00:00'),
	('', 'HunterCareer', 20, 'Evade', 2, 216, 0, '2000-01-01 00:00:00'),
	('', 'GuardianCareer', 5, 'Shield', 2, 217, 0, '2000-01-01 00:00:00'),
	('', 'ChampionCareer', 20, 'HibArmor', 4, 218, 0, '2000-01-01 00:00:00'),
	('', 'RangerCareer', 1, 'Weaponry: Archery', 0, 219, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 1, 'HibArmor', 3, 220, 0, '2000-01-01 00:00:00'),
	('', 'SeerCareer', 20, 'MidArmor', 4, 221, 0, '2000-01-01 00:00:00'),
	('', 'SeerCareer', 1, 'Weaponry: Staves', 0, 222, 0, '2000-01-01 00:00:00'),
	('', 'SeerCareer', 1, 'Weaponry: Hammers', 0, 223, 0, '2000-01-01 00:00:00'),
	('', 'SeerCareer', 1, 'Shield', 1, 224, 0, '2000-01-01 00:00:00'),
	('', 'GuardianCareer', 1, 'HibArmor', 3, 226, 0, '2000-01-01 00:00:00'),
	('', 'GuardianCareer', 1, 'Shield', 1, 227, 0, '2000-01-01 00:00:00'),
	('', 'GuardianCareer', 1, 'Weaponry: Blunt', 0, 228, 0, '2000-01-01 00:00:00'),
	('', 'GuardianCareer', 1, 'Weaponry: Blades', 0, 229, 0, '2000-01-01 00:00:00'),
	('', 'GuardianCareer', 1, 'Weaponry: Piercing', 0, 230, 0, '2000-01-01 00:00:00'),
	('', 'GuardianCareer', 1, 'Weaponry: Staves', 0, 231, 0, '2000-01-01 00:00:00'),
	('', 'GuardianCareer', 1, 'Evade', 1, 232, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 15, 'HibArmor', 4, 233, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 10, 'Shield', 3, 234, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 1, 'Weaponry: Large Weapons', 0, 235, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 1, 'Weaponry: Celtic Spears', 0, 236, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 11, 'Protect', 1, 237, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 12, 'Intercept', 0, 238, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 15, 'Stag', 1, 239, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 1, 'Weaponry: Shortbows', 0, 240, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 20, 'Protect', 2, 241, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 25, 'Stag', 2, 242, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 27, 'Protect', 3, 243, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 35, 'Stag', 3, 244, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 45, 'Stag', 4, 245, 0, '2000-01-01 00:00:00'),
	('', 'ChampionCareer', 1, 'HibArmor', 3, 246, 0, '2000-01-01 00:00:00'),
	('', 'ChampionCareer', 5, 'Shield', 2, 247, 0, '2000-01-01 00:00:00'),
	('', 'ChampionCareer', 1, 'Weaponry: Large Weapons', 5, 248, 0, '2000-01-01 00:00:00'),
	('', 'ChampionCareer', 15, 'Protect', 1, 249, 0, '2000-01-01 00:00:00'),
	('', 'ChampionCareer', 18, 'Intercept', 0, 250, 0, '2000-01-01 00:00:00'),
	('', 'ChampionCareer', 25, 'Protect', 2, 251, 0, '2000-01-01 00:00:00'),
	('', 'WardenCareer', 10, 'HibArmor', 3, 252, 0, '2000-01-01 00:00:00'),
	('', 'BlademasterCareer', 1, 'Weaponry: Shortbows', 0, 253, 0, '2000-01-01 00:00:00'),
	('', 'BlademasterCareer', 15, 'Evade', 2, 254, 0, '2000-01-01 00:00:00'),
	('', 'BlademasterCareer', 15, 'Protect', 1, 255, 0, '2000-01-01 00:00:00'),
	('', 'BlademasterCareer', 19, 'Intercept', 0, 256, 0, '2000-01-01 00:00:00'),
	('', 'BlademasterCareer', 20, 'Triple Wield', 0, 257, 0, '2000-01-01 00:00:00'),
	('', 'BlademasterCareer', 23, 'Protect', 2, 258, 0, '2000-01-01 00:00:00'),
	('', 'HeroCareer', 5, 'Shield', 2, 259, 0, '2000-01-01 00:00:00'),
	('', 'BlademasterCareer', 25, 'Evade', 3, 260, 0, '2000-01-01 00:00:00'),
	('', 'BlademasterCareer', 30, 'Flurry', 0, 261, 0, '2000-01-01 00:00:00'),
	('', 'BlademasterCareer', 32, 'Protect', 3, 262, 0, '2000-01-01 00:00:00'),
	('', 'DruidCareer', 10, 'HibArmor', 3, 263, 0, '2000-01-01 00:00:00'),
	('', 'FighterCareer', 5, 'Shield', 2, 264, 0, '2000-01-01 00:00:00'),
	('', 'FighterCareer', 1, 'AlbArmor', 3, 265, 0, '2000-01-01 00:00:00'),
	('', 'FighterCareer', 1, 'Shield', 1, 266, 0, '2000-01-01 00:00:00'),
	('', 'FighterCareer', 1, 'Weaponry: Staves', 0, 267, 0, '2000-01-01 00:00:00'),
	('', 'FighterCareer', 1, 'Weaponry: Slashing', 0, 268, 0, '2000-01-01 00:00:00'),
	('', 'FighterCareer', 1, 'Weaponry: Thrusting', 0, 269, 0, '2000-01-01 00:00:00'),
	('', 'FighterCareer', 1, 'Weaponry: Crushing', 0, 270, 0, '2000-01-01 00:00:00'),
	('', 'ArmsmanCareer', 10, 'Weaponry: Two Handed', 0, 271, 0, '2000-01-01 00:00:00'),
	('', 'ArmsmanCareer', 5, 'Weaponry: Polearms', 0, 272, 0, '2000-01-01 00:00:00'),
	('', 'ArmsmanCareer', 1, 'AlbArmor', 3, 273, 0, '2000-01-01 00:00:00'),
	('', 'ArmsmanCareer', 1, 'Shield', 1, 274, 0, '2000-01-01 00:00:00'),
	('', 'ArmsmanCareer', 15, 'Weaponry: Crossbow', 0, 275, 0, '2000-01-01 00:00:00'),
	('', 'ArmsmanCareer', 11, 'Protect', 1, 276, 0, '2000-01-01 00:00:00'),
	('', 'ArmsmanCareer', 12, 'Intercept', 0, 277, 0, '2000-01-01 00:00:00'),
	('', 'ArmsmanCareer', 20, 'Protect', 2, 278, 0, '2000-01-01 00:00:00'),
	('', 'ArmsmanCareer', 27, 'Protect', 3, 279, 0, '2000-01-01 00:00:00'),
	('', 'PaladinCareer', 1, 'AlbArmor', 3, 280, 0, '2000-01-01 00:00:00'),
	('', 'PaladinCareer', 1, 'Shield', 1, 281, 0, '2000-01-01 00:00:00'),
	('', 'PaladinCareer', 5, 'Weaponry: Two Handed', 0, 282, 0, '2000-01-01 00:00:00'),
	('', 'PaladinCareer', 9, 'Protect', 1, 283, 0, '2000-01-01 00:00:00'),
	('', 'PaladinCareer', 10, 'Intercept', 0, 284, 0, '2000-01-01 00:00:00'),
	('', 'PaladinCareer', 14, 'Protect', 2, 285, 0, '2000-01-01 00:00:00'),
	('', 'PaladinCareer', 19, 'Protect', 3, 286, 0, '2000-01-01 00:00:00'),
	('', 'MercenaryCareer', 10, 'Weaponry: Shortbows', 0, 288, 0, '2000-01-01 00:00:00'),
	('', 'MercenaryCareer', 10, 'Evade', 1, 289, 0, '2000-01-01 00:00:00'),
	('', 'MercenaryCareer', 15, 'Protect', 1, 290, 0, '2000-01-01 00:00:00'),
	('', 'MercenaryCareer', 19, 'Intercept', 0, 291, 0, '2000-01-01 00:00:00'),
	('', 'MercenaryCareer', 20, 'Dirty Tricks', 0, 292, 0, '2000-01-01 00:00:00'),
	('', 'MercenaryCareer', 23, 'Protect', 2, 293, 0, '2000-01-01 00:00:00'),
	('', 'MercenaryCareer', 30, 'Flurry', 0, 294, 0, '2000-01-01 00:00:00'),
	('', 'MercenaryCareer', 32, 'Protect', 3, 295, 0, '2000-01-01 00:00:00'),
	('', 'LightTankCareer', 35, 'Enhanced Evade', 0, 299, 0, '2000-01-01 00:00:00'),
	('', 'ReaverCareer', 17, 'Shield', 3, 302, 0, '2000-01-01 00:00:00'),
	('', 'ReaverCareer', 5, 'Weaponry: Flexible', 0, 303, 0, '2000-01-01 00:00:00'),
	('', 'ReaverCareer', 9, 'Protect', 1, 304, 0, '2000-01-01 00:00:00'),
	('', 'ReaverCareer', 15, 'Evade', 1, 305, 0, '2000-01-01 00:00:00'),
	('', 'ReaverCareer', 20, 'Protect', 2, 306, 0, '2000-01-01 00:00:00'),
	('', 'ReaverCareer', 30, 'Protect', 3, 307, 0, '2000-01-01 00:00:00'),
	('', 'InfiltratorCareer', 5, 'Weaponry: Crossbow', 0, 308, 0, '2000-01-01 00:00:00'),
	('', 'NaturalistCareer', 1, 'Weaponry: Staves', 0, 309, 0, '2000-01-01 00:00:00'),
	('', 'NaturalistCareer', 1, 'Weaponry: Blunt', 0, 310, 0, '2000-01-01 00:00:00'),
	('', 'NaturalistCareer', 1, 'Weaponry: Blades', 0, 311, 0, '2000-01-01 00:00:00'),
	('', 'NaturalistCareer', 1, 'Shield', 1, 312, 0, '2000-01-01 00:00:00'),
	('', 'NaturalistCareer', 1, 'HibArmor', 2, 313, 0, '2000-01-01 00:00:00'),
	('', 'DruidCareer', 20, 'HibArmor', 4, 314, 0, '2000-01-01 00:00:00'),
	('', 'WardenCareer', 5, 'Shield', 2, 316, 0, '2000-01-01 00:00:00'),
	('', 'WardenCareer', 20, 'HibArmor', 4, 317, 0, '2000-01-01 00:00:00'),
	('', 'WardenCareer', 1, 'Weaponry: Shortbows', 0, 318, 0, '2000-01-01 00:00:00'),
	('', 'BardCareer', 15, 'HibArmor', 3, 319, 0, '2000-01-01 00:00:00'),
	('', 'BardCareer', 1, 'Weaponry: Instruments', 0, 321, 0, '2000-01-01 00:00:00'),
	('', 'BardCareer', 10, 'Evade', 1, 322, 0, '2000-01-01 00:00:00'),
	('', 'BardCareer', 25, 'Evade', 2, 323, 0, '2000-01-01 00:00:00'),
	('', 'Warlord', 1, 'Siege Master', 0, 324, 0, '2000-01-01 00:00:00'),
	('', 'Spymaster', 1, 'Pickpocket', 0, 325, 0, '2000-01-01 00:00:00'),
	('', 'Spymaster', 3, 'Enduring Poison', 0, 326, 0, '2000-01-01 00:00:00'),
	('', 'Spymaster', 4, 'Sabotage', 0, 327, 0, '2000-01-01 00:00:00'),
	('', 'Spymaster', 7, 'Lookout', 0, 328, 0, '2000-01-01 00:00:00'),
	('', 'Sojourner', 1, 'Unburdened Warrior', 0, 329, 0, '2000-01-01 00:00:00'),
	('', 'Perfecter', 4, 'Greatness', 0, 330, 0, '2000-01-01 00:00:00'),
	('', 'Battlemaster', 8, 'Bodyguard', 0, 331, 0, '2000-01-01 00:00:00'),
	('', 'Stealth', 50, 'Safe Fall', 5, 332, 23, '2000-01-01 00:00:00'),
	('', 'Stealth', 50, 'Safe Fall', 5, 333, 49, '2000-01-01 00:00:00'),
	('', 'Stealth', 40, 'Safe Fall', 4, 334, 23, '2000-01-01 00:00:00'),
	('', 'Stealth', 40, 'Safe Fall', 4, 335, 49, '2000-01-01 00:00:00'),
	('', 'Stealth', 20, 'Safe Fall', 2, 336, 23, '2000-01-01 00:00:00'),
	('', 'Stealth', 16, 'Detect Hidden', 0, 337, 23, '2000-01-01 00:00:00'),
	('', 'Stealth', 16, 'Detect Hidden', 0, 338, 49, '2000-01-01 00:00:00'),
	('', 'Stealth', 20, 'Safe Fall', 2, 339, 49, '2000-01-01 00:00:00'),
	('', 'Stealth', 30, 'Safe Fall', 3, 340, 23, '2000-01-01 00:00:00'),
	('', 'Stealth', 30, 'Safe Fall', 3, 341, 49, '2000-01-01 00:00:00'),
	('', 'Stealth', 8, 'Danger Sense', 0, 354, 23, '2000-01-01 00:00:00'),
	('', 'Stealth', 8, 'Danger Sense', 0, 355, 49, '2000-01-01 00:00:00'),
	('', 'Stealth', 8, 'Danger Sense', 0, 356, 4, '2000-01-01 00:00:00'),
	('', 'Stealth', 5, 'Distraction', 0, 357, 23, '2000-01-01 00:00:00'),
	('', 'Stealth', 5, 'Distraction', 0, 358, 49, '2000-01-01 00:00:00'),
	('', 'Stealth', 50, 'Safe Fall', 5, 360, 4, '2000-01-01 00:00:00'),
	('', 'Stealth', 40, 'Safe Fall', 4, 361, 4, '2000-01-01 00:00:00'),
	('', 'Stealth', 30, 'Safe Fall', 3, 362, 4, '2000-01-01 00:00:00'),
	('', 'Stealth', 20, 'Safe Fall', 2, 363, 4, '2000-01-01 00:00:00'),
	('', 'Stealth', 25, 'Climb Walls', 0, 364, 23, '2000-01-01 00:00:00'),
	('', 'Stealth', 25, 'Climb Walls', 0, 365, 49, '2000-01-01 00:00:00'),
	('', 'Stealth', 25, 'Climb Walls', 0, 366, 4, '2000-01-01 00:00:00'),
	('', 'MinstrelCareer', 1, 'Weaponry: Instruments', 0, 367, 0, '2016-05-30 14:12:00'),
	('', 'ClericCareer', 10, 'AlbArmor', 3, 400, 0, '2000-01-01 00:00:00'),
	('', 'ClericCareer', 20, 'AlbArmor', 4, 401, 0, '2000-01-01 00:00:00'),
	('', 'ClericCareer', 10, 'Shield', 2, 402, 0, '2000-01-01 00:00:00'),
	('', 'MinstrelCareer', 10, 'AlbArmor', 3, 403, 0, '2000-01-01 00:00:00'),
	('', 'MinstrelCareer', 20, 'AlbArmor', 4, 404, 0, '2000-01-01 00:00:00'),
	('', 'MinstrelCareer', 5, 'Shield', 1, 405, 0, '2000-01-01 00:00:00'),
	('', 'ScoutCareer', 10, 'AlbArmor', 3, 406, 0, '2000-01-01 00:00:00'),
	('', 'ChampionCareer', 2, 'Shield', 5, 407, 0, '2000-01-01 00:00:00'),
	('', 'ArmsmanCareer', 5, 'AlbArmor', 4, 408, 0, '2000-01-01 00:00:00'),
	('', 'ArmsmanCareer', 15, 'AlbArmor', 5, 409, 0, '2000-01-01 00:00:00'),
	('', 'ArmsmanCareer', 5, 'Shield', 2, 410, 0, '2000-01-01 00:00:00'),
	('', 'ArmsmanCareer', 10, 'Shield', 3, 411, 0, '2000-01-01 00:00:00'),
	('', 'PaladinCareer', 10, 'AlbArmor', 4, 412, 0, '2000-01-01 00:00:00'),
	('', 'PaladinCareer', 20, 'AlbArmor', 5, 413, 0, '2000-01-01 00:00:00'),
	('', 'PaladinCareer', 5, 'Shield', 2, 414, 0, '2000-01-01 00:00:00'),
	('', 'PaladinCareer', 10, 'Shield', 3, 415, 0, '2000-01-01 00:00:00'),
	('', 'MercenaryCareer', 10, 'AlbArmor', 4, 416, 0, '2000-01-01 00:00:00'),
	('', 'MercenaryCareer', 1, 'Shield', 1, 417, 0, '2000-01-01 00:00:00'),
	('', 'MercenaryCareer', 5, 'Shield', 2, 418, 0, '2000-01-01 00:00:00'),
	('', 'ReaverCareer', 10, 'AlbArmor', 4, 419, 0, '2000-01-01 00:00:00'),
	('', 'InfiltratorCareer', 5, 'Shield', 1, 422, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 3, 'Critical Shot', 1, 423, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 6, 'Critical Shot', 2, 424, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 9, 'Critical Shot', 3, 425, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 12, 'Critical Shot', 4, 426, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 15, 'Critical Shot', 5, 427, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 18, 'Critical Shot', 6, 428, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 21, 'Critical Shot', 7, 429, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 24, 'Critical Shot', 8, 430, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 27, 'Critical Shot', 9, 431, 0, '2000-01-01 00:00:00'),
	('', 'Composite Bow', 3, 'Critical Shot', 1, 432, 0, '2000-01-01 00:00:00'),
	('', 'Composite Bow', 6, 'Critical Shot', 2, 433, 0, '2000-01-01 00:00:00'),
	('', 'Composite Bow', 9, 'Critical Shot', 3, 434, 0, '2000-01-01 00:00:00'),
	('', 'Composite Bow', 12, 'Critical Shot', 4, 435, 0, '2000-01-01 00:00:00'),
	('', 'Composite Bow', 15, 'Critical Shot', 5, 436, 0, '2000-01-01 00:00:00'),
	('', 'Composite Bow', 18, 'Critical Shot', 6, 437, 0, '2000-01-01 00:00:00'),
	('', 'Composite Bow', 21, 'Critical Shot', 7, 438, 0, '2000-01-01 00:00:00'),
	('', 'Composite Bow', 24, 'Critical Shot', 8, 439, 0, '2000-01-01 00:00:00'),
	('', 'Composite Bow', 27, 'Critical Shot', 9, 440, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 3, 'Critical Shot', 1, 441, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 6, 'Critical Shot', 2, 442, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 9, 'Critical Shot', 3, 443, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 12, 'Critical Shot', 4, 444, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 15, 'Critical Shot', 5, 445, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 18, 'Critical Shot', 6, 446, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 21, 'Critical Shot', 7, 447, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 24, 'Critical Shot', 8, 448, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 27, 'Critical Shot', 9, 449, 0, '2000-01-01 00:00:00'),
	('', 'ThaneCareer', 12, 'Shield', 2, 591, 0, '2000-01-01 00:00:00'),
	('', 'ScoutCareer', 30, 'Camouflage', 0, 980, 0, '2000-01-01 00:00:00'),
	('', 'RangerCareer', 30, 'Camouflage', 0, 981, 0, '2000-01-01 00:00:00'),
	('', 'HunterCareer', 30, 'Camouflage', 0, 982, 0, '2000-01-01 00:00:00'),
	('', 'Composite Bow', 35, 'Rapid Fire', 1, 983, 0, '2000-01-01 00:00:00'),
	('', 'Composite Bow', 45, 'Rapid Fire', 2, 984, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 45, 'Rapid Fire', 2, 988, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 35, 'Rapid Fire', 1, 989, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 50, 'Penetrating Arrow', 3, 990, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 40, 'Penetrating Arrow', 2, 991, 0, '2000-01-01 00:00:00'),
	('', 'Longbows', 30, 'Penetrating Arrow', 1, 992, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 45, 'Rapid Fire', 2, 993, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 35, 'Rapid Fire', 1, 994, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 50, 'Penetrating Arrow', 3, 995, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 40, 'Penetrating Arrow', 2, 996, 0, '2000-01-01 00:00:00'),
	('', 'Recurve Bow', 30, 'Penetrating Arrow', 1, 997, 0, '2000-01-01 00:00:00'),
	('', 'CharacterCareer', 5, 'Tireless', 0, 999, 99, '2022-07-06 00:00:00'),
	('', 'Stealth', 5, 'Distraction', 0, 1000, 4, '2000-01-01 00:00:00'),
	('', 'BerserkerCareer', 40, 'Charge', 1, 3292, 0, '2000-01-01 00:00:00'),
	('', 'MercenaryCareer', 40, 'Charge', 1, 3293, 0, '2000-01-01 00:00:00'),
	('', 'BlademasterCareer', 40, 'Charge', 1, 3294, 0, '2000-01-01 00:00:00'),
	('', 'Stealth', 10, 'Safe Fall', 1, 3295, 4, '2000-01-01 00:00:00'),
	('', 'Stealth', 10, 'Safe Fall', 1, 3296, 9, '2000-01-01 00:00:00'),
	('', 'Stealth', 10, 'Safe Fall', 1, 3297, 23, '2000-01-01 00:00:00'),
	('', 'Stealth', 10, 'Safe Fall', 1, 3298, 49, '2000-01-01 00:00:00'),
	('', 'Composite Bow', 30, 'Penetrating Arrow', 1, 3300, 0, '2021-11-24 18:26:47'),
	('', 'Composite Bow', 40, 'Penetrating Arrow', 2, 3301, 0, '2021-11-24 18:27:07'),
	('', 'Composite Bow', 50, 'Penetrating Arrow', 3, 3302, 0, '2021-11-24 18:27:26'),
	('', 'BerserkerCareer', 5, 'Weaponry: Thrown', 1, 3303, 0, '2022-02-24 23:23:48'),
	('', 'SavageCareer', 40, 'Charge', 1, 3304, 0, '2000-01-01 00:00:00');
/*!40000 ALTER TABLE `specxability` ENABLE KEYS */;

