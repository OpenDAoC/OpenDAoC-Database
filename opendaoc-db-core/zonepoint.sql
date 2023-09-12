/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE TABLE IF NOT EXISTS `zonepoint` (
  `Id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `TargetX` int(11) NOT NULL DEFAULT 0,
  `TargetY` int(11) NOT NULL DEFAULT 0,
  `TargetZ` int(11) NOT NULL DEFAULT 0,
  `TargetRegion` smallint(5) unsigned NOT NULL DEFAULT 0,
  `TargetHeading` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SourceX` int(11) NOT NULL DEFAULT 0,
  `SourceY` int(11) NOT NULL DEFAULT 0,
  `SourceZ` int(11) NOT NULL DEFAULT 0,
  `SourceRegion` smallint(5) unsigned NOT NULL DEFAULT 0,
  `Realm` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ClassType` text DEFAULT NULL,
  `LastTimeRowUpdated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `ZonePoint_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`ZonePoint_ID`),
  KEY `I_ZonePoint_Id` (`Id`),
  KEY `I_ZonePoint_Realm` (`Realm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*!40000 ALTER TABLE `zonepoint` DISABLE KEYS */;
REPLACE INTO `zonepoint` (`Id`, `TargetX`, `TargetY`, `TargetZ`, `TargetRegion`, `TargetHeading`, `SourceX`, `SourceY`, `SourceZ`, `SourceRegion`, `Realm`, `ClassType`, `LastTimeRowUpdated`, `ZonePoint_ID`) VALUES
	(156, 32366, 21177, 8071, 50, 3088, 455054, 463288, 4711, 51, 1, '', '2022-06-04 10:49:22', '2b888d4c-b5a9-4a81-a95f-8c7d67270ab5'),
	(168, 310228, 645039, 4848, 200, 3345, 423900, 440147, 5998, 181, 3, '', '2000-01-01 00:00:00', '420'),
	(36, 322934, 457822, 6632, 200, 2052, 30310, 35231, 15619, 221, 3, '', '2022-05-31 14:02:53', '46ce7e86-e4e9-47e5-9e41-18d1644939d0'),
	(157, 455039, 462483, 4685, 51, 1955, 32147, 21220, 8069, 50, 1, '', '2022-06-05 03:32:27', '743637bb-d540-4e1e-a414-641b77cb8c58'),
	(68, 709125, 941529, 2726, 100, 1462, 24178, 24873, 13920, 127, 2, '', '2022-06-20 14:57:28', '9cb2d7be-11cf-442e-9199-1812fca436ff'),
	(69, 709125, 941529, 2726, 100, 1462, 27986, 29830, 14145, 127, 2, '', '2022-06-09 01:49:35', '9df4ddae-1675-4d64-a902-3d2471bab871'),
	(66, 391919, 684996, 5448, 1, 1958, 28333, 32747, 15069, 23, 1, '', '2022-06-19 15:10:19', 'a5dba514-70bf-4596-9303-8877008b2c9f'),
	(103, 585039, 477305, 2600, 1, 2990, 38123, 53671, 4172, 253, 1, '', '2021-12-14 14:55:47', 'Abermai Exit Alb'),
	(105, 334435, 419941, 5184, 200, 405, 18174, 17523, 4321, 253, 3, '', '2021-12-11 19:28:30', 'Abermai Exit Hib'),
	(104, 766160, 669487, 5736, 100, 0, 54842, 24060, 4320, 253, 2, '', '2021-12-14 15:46:58', 'Abermai Exit Mid'),
	(81, 31211, 27924, 22893, 249, 3072, 599716, 536189, 2960, 1, 1, 'DOL.GS.ServerRules.DFEnterJumpPoint', '2000-01-01 00:00:00', 'ALB DF ENTRANCE ALB'),
	(81, 31211, 27924, 22893, 249, 3072, 599708, 536194, 2960, 1, 3, 'DOL.GS.ServerRules.DFEnterJumpPoint', '2000-01-01 00:00:00', 'ALB DF ENTRANCE HIB'),
	(81, 31211, 27924, 22893, 249, 3072, 599745, 536184, 2960, 1, 2, 'DOL.GS.ServerRules.DFEnterJumpPoint', '2000-01-01 00:00:00', 'ALB DF ENTRANCE MID'),
	(153, 525818, 542658, 3168, 51, 2048, 564976, 509200, 2811, 1, 0, '', '2000-01-01 00:00:00', 'ALB SI ENTRANCE'),
	(154, 462076, 633125, 1749, 1, 10, 525872, 542106, 3173, 51, 0, '', '2000-01-01 00:00:00', 'ALB SI EXIT'),
	(160, 28648, 31962, 16205, 62, 185, 21177, 42721, 7878, 50, 0, '', '2000-01-01 00:00:00', 'avalon city crystal cave'),
	(155, 31159, 47380, 8307, 50, 2011, 454964, 475456, 4719, 51, 0, '', '2000-01-01 00:00:00', 'avalon city entrance'),
	(158, 455370, 475496, 4713, 51, 3109, 31152, 47917, 8262, 50, 0, '', '2000-01-01 00:00:00', 'avalon city exit'),
	(29, 322934, 457822, 6632, 200, 2052, 38771, 32732, 14839, 221, 3, '', '2022-05-31 14:04:43', 'b79d3919-2485-44ee-a660-87133776892e'),
	(10, 41126, 26461, 8254, 10, 13, 517028, 497999, 3367, 1, 0, '', '2000-01-01 00:00:00', 'BMS > CAMELOT ENTRANCE'),
	(59, 371943, 672546, 5865, 1, 3699, 34793, 43742, 15189, 23, 1, '', '2022-06-02 23:58:52', 'c29da0fa-66f5-4923-8e9d-a8c32cba966c'),
	(67, 756038, 791352, 4683, 100, 199, 31660, 36491, 16384, 129, 2, '', '2022-06-05 19:26:23', 'c46da77b-a827-468c-9a86-7da2de35a7b4'),
	(1, 585039, 477305, 2600, 1, 2990, 38103, 53718, 4164, 250, 1, '', '2021-12-14 14:59:24', 'Caledonia Exit Alb'),
	(11, 334435, 419941, 5184, 200, 405, 18140, 17533, 4323, 250, 3, '', '2021-12-11 19:32:48', 'Caledonia Exit Hib'),
	(2, 766160, 669487, 5736, 100, 0, 54894, 24070, 4320, 250, 2, '', '2021-12-14 15:49:32', 'Caledonia Exit Mid'),
	(9, 516852, 497979, 3367, 1, 1018, 41123, 26442, 8253, 10, 0, '', '2000-01-01 00:00:00', 'CAMELOT > BMS EXIT'),
	(5, 551998, 511923, 2911, 1, 6146, 32629, 32493, 7999, 10, 0, '', '2000-01-01 00:00:00', 'CAMELOT > CH EXIT'),
	(31, 31120, 29939, 16239, 23, 3180, 384005, 681415, 6839, 1, 0, '', '2000-01-01 00:00:00', 'Cardova Entrance'),
	(30, 383999, 681606, 6805, 1, 90, 31094, 29295, 16434, 23, 0, '', '2000-01-01 00:00:00', 'Cardova Exit'),
	(6, 32444, 32485, 8000, 10, 1027, 551980, 512082, 2911, 1, 0, '', '2000-01-01 00:00:00', 'CH > CAMELOT Entrance'),
	(14, 31604, 37783, 7678, 201, 1060, 311643, 474288, 5220, 200, 0, '', '2000-01-01 00:00:00', 'CONNACHT > TNN HIB'),
	(159, 21094, 42184, 7909, 50, 3, 28621, 31142, 16418, 62, 0, '', '2000-01-01 00:00:00', 'crystal cave avalon city exit'),
	(53, 780886, 856808, 7780, 100, 1923, 30081, 31751, 16683, 128, 0, '', '2000-01-01 00:00:00', 'Cursed Tomb => Gotar'),
	(79, 30550, 27898, 22893, 249, 3065, 601798, 430727, 5856, 1, 1, 'DOL.GS.ServerRules.DFEnterJumpPoint', '2021-07-19 03:32:51', 'DF ENTRANCE ALB RELIC 1'),
	(87, 46325, 40969, 21357, 249, 2045, 325269, 433985, 6297, 200, 0, 'DOL.GS.ServerRules.DFEnterJumpPoint', '2000-01-01 00:00:00', 'DF Entrance HIB'),
	(84, 18798, 18667, 22892, 249, 1022, 760580, 700467, 6328, 100, 1, 'DOL.GS.ServerRules.DFEnterJumpPoint', '2000-01-01 00:00:00', 'DF ENTRANCE MID ALB'),
	(84, 18798, 18667, 22892, 249, 1022, 760606, 700489, 6321, 100, 3, 'DOL.GS.ServerRules.DFEnterJumpPoint', '2000-01-01 00:00:00', 'DF ENTRANCE MID HIB'),
	(84, 18798, 18667, 22892, 249, 1022, 760600, 700475, 6340, 100, 2, 'DOL.GS.ServerRules.DFEnterJumpPoint', '2000-01-01 00:00:00', 'DF ENTRANCE MID MID'),
	(82, 18798, 18667, 22892, 249, 1022, 771939, 626406, 7184, 100, 2, 'DOL.GS.ServerRules.DFEnterJumpPoint', '2021-07-19 03:32:51', 'DF ENTRANCE MID RELIC 1'),
	(83, 18798, 18667, 22892, 249, 1022, 676906, 710798, 7104, 100, 2, 'DOL.GS.ServerRules.DFEnterJumpPoint', '2021-07-19 20:16:53', 'DF ENTRANCE MID RELIC 2'),
	(74, 599195, 536170, 2960, 1, 259, 36118, 30504, 22381, 249, 1, '', '2000-01-01 00:00:00', 'DF EXIT ALB ALB'),
	(74, 324957, 433427, 6317, 200, 180, 36118, 30504, 22381, 249, 3, '', '2000-01-01 00:00:00', 'DF EXIT ALB HIB'),
	(74, 760782, 700723, 6292, 100, 7727, 36118, 30504, 22381, 249, 2, '', '2021-12-15 11:05:19', 'DF EXIT ALB MID'),
	(76, 599195, 536170, 2960, 1, 259, 23768, 31990, 18284, 249, 1, '', '2000-01-01 00:00:00', 'DF EXIT CENTER ALB'),
	(76, 324957, 433427, 6317, 200, 180, 23781, 32005, 18284, 249, 3, '', '2000-01-01 00:00:00', 'DF EXIT CENTER HIB'),
	(76, 760782, 700723, 6292, 100, 7727, 23804, 31980, 18284, 249, 2, '', '2000-01-01 00:00:00', 'DF EXIT CENTER MID'),
	(72, 599195, 536170, 2960, 1, 0, 41722, 36569, 20333, 249, 1, '', '2000-01-01 00:00:00', 'DF EXIT HIB ALB'),
	(72, 324957, 433427, 6317, 200, 180, 41722, 36569, 20333, 249, 3, '', '2000-01-01 00:00:00', 'DF EXIT HIB HIB'),
	(72, 760782, 700723, 6292, 100, 7727, 41722, 36569, 20333, 249, 2, '', '2021-12-15 11:05:19', 'DF EXIT HIB MID'),
	(70, 599195, 536170, 2960, 1, 0, 11944, 18725, 22380, 249, 1, '', '2000-01-01 00:00:00', 'DF EXIT MID ALB'),
	(70, 324957, 433427, 6317, 200, 180, 12718, 18672, 22381, 249, 3, '', '2000-01-01 00:00:00', 'DF EXIT MID HIB'),
	(70, 760782, 700723, 6292, 100, 7727, 11920, 18671, 22380, 249, 2, '', '2000-01-01 00:00:00', 'DF EXIT MID MID'),
	(75, 599195, 536170, 2960, 1, 259, 30489, 9426, 15725, 249, 1, '', '2000-01-01 00:00:00', 'DF INQUISITOR EXIT ALB'),
	(75, 324957, 433427, 6317, 200, 0, 30454, 9434, 15725, 249, 3, '', '2000-01-01 00:00:00', 'DF INQUISITOR EXIT HIB'),
	(75, 760782, 700723, 6292, 100, 7727, 30484, 9432, 15725, 249, 2, '', '2000-01-01 00:00:00', 'DF INQUISITOR EXIT MID'),
	(78, 45050, 48892, 15460, 249, 35, 42048, 49652, 20833, 249, 0, '', '2000-01-01 00:00:00', 'DF LEGION PURGATORY'),
	(73, 599195, 536170, 2960, 1, 259, 15606, 30428, 16237, 249, 1, '', '2000-01-01 00:00:00', 'DF MUTILATOR EXIT ALB'),
	(73, 324957, 433427, 6317, 200, 0, 15610, 30344, 16237, 249, 3, '', '2000-01-01 00:00:00', 'DF MUTILATOR EXIT HIB'),
	(73, 760782, 700723, 6292, 100, 7727, 15604, 30412, 16264, 249, 2, '', '2021-07-11 23:08:16', 'DF MUTILATOR EXIT MID'),
	(93, 32259, 30624, 16045, 246, 91, 718392, 654864, 6386, 100, 1, '', '2021-07-24 10:32:05', 'dodens entrance alb'),
	(93, 32259, 30624, 16045, 246, 91, 718376, 654816, 6386, 100, 3, '', '2021-07-25 13:24:52', 'dodens entrance hib'),
	(93, 32259, 30624, 16045, 246, 91, 718400, 654863, 6386, 100, 2, '', '2021-07-13 01:16:59', 'dodens entrance mid'),
	(91, 718069, 654836, 6365, 100, 270, 33914, 30693, 16065, 246, 1, '', '2021-09-01 12:19:17', 'dodens exit alb'),
	(91, 718069, 654836, 6365, 100, 270, 33898, 30691, 16069, 246, 3, '', '2021-08-24 11:48:12', 'dodens exit hib'),
	(91, 718069, 654836, 6365, 100, 270, 33973, 30623, 16079, 246, 2, '', '2021-09-03 21:18:59', 'dodens exit mid'),
	(92, 24912, 30905, 16511, 248, 0, 46897, 31390, 13464, 246, 1, '', '2021-09-01 12:24:09', 'dodens SH entrance alb'),
	(92, 24912, 30905, 16511, 248, 0, 46898, 31522, 13441, 246, 3, '', '2021-08-24 12:00:02', 'dodens SH entrance hib'),
	(92, 24912, 30905, 16511, 248, 0, 46893, 31493, 13441, 246, 2, '', '2021-08-23 20:06:43', 'dodens SH entrance mid'),
	(85, 46325, 40969, 21357, 249, 2045, 400771, 465841, 3080, 200, 3, 'DOL.GS.ServerRules.DFEnterJumpPoint', '2021-07-18 11:23:39', 'DUN DAGDA DF ENTRANCE'),
	(86, 46325, 40969, 21357, 249, 2045, 348776, 373379, 5071, 200, 3, 'DOL.GS.ServerRules.DFEnterJumpPoint', '2000-01-01 00:00:00', 'DUN LAMFHOTA DF ENTRANCE'),
	(49, 33534, 33660, 16049, 220, 1063, 397971, 488565, 7603, 200, 0, '', '2000-01-01 00:00:00', 'Entrance Coruscating Mine'),
	(40, 34693, 33173, 16447, 129, 1039, 756189, 791086, 4695, 100, 0, '', '2000-01-01 00:00:00', 'Entrance East Svealand => Nisse\'s lair'),
	(46, 27318, 32267, 17266, 223, 3064, 247379, 472830, 5598, 200, 0, '', '2000-01-01 00:00:00', 'Entrance Koalinth Tribal Caverns'),
	(45, 32722, 34761, 15179, 222, 1918, 325668, 568892, 5187, 200, 0, '', '2000-01-01 00:00:00', 'Entrance Spraggons Den'),
	(47, 35393, 30865, 14990, 224, 1036, 296010, 705974, 6483, 200, 0, '', '2000-01-01 00:00:00', 'Entrance Treibh Caillte'),
	(48, 397621, 488916, 7510, 200, 219, 33775, 33887, 16150, 220, 0, '', '2000-01-01 00:00:00', 'Exit Coruscating Mine'),
	(57, 247386, 472495, 5544, 200, 2119, 27212, 32079, 17266, 223, 0, '', '2000-01-01 00:00:00', 'Exit Koalinth Tribal Caverns'),
	(55, 322934, 457822, 6632, 200, 2052, 31084, 29388, 16458, 221, 0, '', '2000-01-01 00:00:00', 'Exit Muire Tomb'),
	(56, 326034, 569029, 5155, 200, 119, 32636, 34995, 15206, 222, 0, '', '2000-01-01 00:00:00', 'Exit Spraggons Den'),
	(58, 295965, 705660, 6456, 200, 2036, 35464, 30182, 15245, 224, 0, '', '2000-01-01 00:00:00', 'Exit Treibh Caillte'),
	(170, 33801, 24157, 16084, 180, 611, 351771, 362348, 4488, 181, 0, '', '2000-01-01 00:00:00', 'Fomor Entrance'),
	(171, 351860, 362578, 4485, 181, 3155, 33893, 23939, 16136, 180, 0, '', '2000-01-01 00:00:00', 'Fomor Exit'),
	(176, 32072, 29524, 17051, 191, 184, 394139, 243486, 4274, 181, 0, '', '2000-01-01 00:00:00', 'Galladoria Entrance'),
	(177, 394207, 243959, 4158, 181, 165, 31753, 29163, 17219, 191, 0, '', '2000-01-01 00:00:00', 'Galladoria Exit'),
	(42, 30116, 31234, 16523, 128, 3029, 780867, 857045, 7769, 100, 0, '', '2000-01-01 00:00:00', 'Gotar => Cursed Tomb'),
	(88, 32395, 31847, 16158, 277, 180, 598581, 361828, 3605, 1, 1, '', '2021-07-12 16:01:47', 'hall of corrupt entrance alb'),
	(88, 32395, 31847, 16158, 277, 180, 598585, 361823, 3605, 1, 2, '', '2000-01-01 00:00:00', 'hall of corrupt entrance hib'),
	(88, 32395, 31847, 16158, 277, 180, 598555, 361884, 3605, 1, 3, '', '2021-08-25 11:19:06', 'hall of corrupt entrance mid'),
	(89, 598397, 361947, 3600, 1, 233, 31870, 31072, 15846, 277, 1, '', '2021-08-25 12:31:27', 'hall of corrupt exit alb'),
	(89, 598397, 361947, 3600, 1, 233, 31891, 31065, 15846, 277, 3, '', '2021-08-25 11:37:10', 'hall of corrupt exit hib'),
	(89, 598397, 361947, 3600, 1, 233, 31870, 31072, 15846, 277, 2, '', '2000-01-01 00:00:00', 'hall of corrupt exit mid'),
	(90, 37690, 29013, 16512, 248, 90, 26191, 37697, 13476, 277, 1, '', '2021-09-15 06:18:53', 'HC SH ENTRANCE ALB'),
	(90, 37690, 29013, 16512, 248, 90, 26191, 37697, 13476, 277, 3, '', '2000-01-01 00:00:00', 'HC SH ENTRANCE HIB'),
	(90, 37690, 29013, 16512, 248, 90, 26191, 37697, 13476, 277, 2, '', '2000-01-01 00:00:00', 'HC SH ENTRANCE MID'),
	(111, 585030, 561505, 3576, 2, 1073, 554895, 523579, 2512, 1, 1, '', '2022-01-03 18:16:53', 'Housing Alb Entrance'),
	(108, 555613, 523837, 2512, 1, 3058, 585537, 561789, 3576, 2, 1, '', '2022-01-03 17:02:12', 'Housing Alb Exit'),
	(113, 555546, 526065, 3008, 202, 189, 297816, 479928, 5392, 200, 0, '', '2000-01-01 00:00:00', 'Housing Hib Entrance'),
	(110, 297758, 479054, 5386, 200, 0, 555549, 525675, 3008, 202, 0, '', '2000-01-01 00:00:00', 'Housing Hib Exit'),
	(112, 526393, 561724, 3638, 102, 3077, 814641, 722026, 5456, 100, 2, '', '2022-01-03 17:08:03', 'Housing Mid Entrance'),
	(109, 814312, 721989, 5456, 100, 1034, 525986, 561414, 3640, 102, 2, '', '2022-01-03 17:06:17', 'Housing Mid Exit'),
	(161, 34991, 37707, 17231, 161, 326, 421431, 433900, 4324, 151, 0, '', '2000-01-01 00:00:00', 'iarnvidiur lair entrance'),
	(162, 421465, 433659, 4324, 151, 7, 34994, 37776, 17296, 161, 0, '', '2000-01-01 00:00:00', 'iarnvidiur lair exit'),
	(17, 32869, 36103, 8002, 101, 1133, 805489, 731160, 5028, 100, 0, '', '2000-01-01 00:00:00', 'jordheim entrance 2'),
	(16, 36051, 33658, 8002, 101, 1954, 784806, 752792, 5001, 100, 0, '', '2000-01-01 00:00:00', 'jordheim entrance 3'),
	(15, 36069, 31900, 8005, 101, 270, 784851, 754451, 5001, 100, 2, '', '2000-01-01 00:00:00', 'jordheim entrance 4'),
	(22, 805561, 730996, 5029, 100, 3020, 32893, 36286, 8002, 101, 2, '', '2000-01-01 00:00:00', 'jordheim exit 1'),
	(23, 807267, 731109, 5026, 100, 1225, 31100, 36272, 8034, 101, 2, '', '2000-01-01 00:00:00', 'jordheim exit 2'),
	(21, 784631, 754513, 5001, 100, 2000, 36195, 31891, 8005, 101, 0, '', '2000-01-01 00:00:00', 'jordheim exit 3'),
	(20, 784689, 752787, 5000, 100, 270, 36279, 33707, 8001, 101, 2, '', '2000-01-01 00:00:00', 'jordheim exit 4'),
	(18, 31086, 36070, 8000, 101, 2983, 807295, 731195, 5029, 100, 0, '', '2000-01-01 00:00:00', 'jordheim mularn entrance'),
	(32, 30116, 31234, 16523, 22, 3099, 544022, 635904, 1823, 1, 0, '', '2000-01-01 00:00:00', 'Keltoi Fogou entrance'),
	(33, 543752, 635815, 1801, 1, 1082, 30088, 31734, 16706, 22, 0, '', '2000-01-01 00:00:00', 'Keltoi Fogou Exit'),
	(150, 33013, 31379, 15698, 61, 270, 386927, 479721, 3664, 51, 0, '', '2000-01-01 00:00:00', 'krordon entrance'),
	(151, 386877, 479749, 3668, 51, 180, 33079, 31348, 15804, 61, 0, '', '2021-08-30 18:01:16', 'krordon exit'),
	(13, 18002, 36126, 6253, 201, 2590, 332389, 485179, 5221, 200, 0, '', '2000-01-01 00:00:00', 'LOUGH DERG > TNN HIB'),
	(52, 709125, 941529, 2726, 100, 1462, 35383, 30203, 15187, 127, 0, '', '2000-01-01 00:00:00', 'MainEntrance Varulvham => Skona Ravina'),
	(94, 32915, 29238, 16268, 276, 2038, 445881, 392547, 6411, 200, 1, '', '2021-07-12 00:34:45', 'marfach entrance alb'),
	(94, 32915, 29238, 16268, 276, 2038, 445883, 392571, 6411, 200, 2, '', '2021-07-20 22:57:45', 'marfach entrance hib'),
	(94, 32915, 29238, 16268, 276, 2038, 445869, 392577, 6411, 200, 3, '', '2021-08-23 11:12:36', 'marfach entrance mid'),
	(95, 445571, 392603, 6365, 200, 261, 32878, 28267, 16273, 276, 1, '', '2021-09-01 12:47:31', 'marfach exit alb'),
	(95, 445571, 392603, 6365, 200, 261, 32976, 28282, 16270, 276, 3, '', '2021-08-25 11:07:37', 'marfach exit hib'),
	(95, 445571, 392603, 6365, 200, 261, 32920, 28282, 16272, 276, 2, '', '2021-09-29 16:19:12', 'marfach exit mid'),
	(96, 41144, 44332, 16512, 248, 90, 26191, 37697, 13476, 277, 1, '', '2021-09-15 06:18:53', 'MC SH ENTRANCE ALB'),
	(96, 41144, 44332, 16512, 248, 90, 26191, 37697, 13476, 277, 3, '', '2000-01-01 00:00:00', 'MC SH ENTRANCE HIB'),
	(96, 41144, 44332, 16512, 248, 90, 26191, 37697, 13476, 277, 2, '', '2000-01-01 00:00:00', 'MC SH ENTRANCE MID'),
	(165, 294206, 355969, 3570, 151, 182, 808830, 725039, 4882, 100, 0, '', '2000-01-01 00:00:00', 'MID SI ENTRANCE'),
	(166, 771193, 836394, 4624, 100, 359, 294122, 355624, 3570, 151, 0, '', '2000-01-01 00:00:00', 'MID SI EXIT'),
	(24, 33150, 32732, 16480, 21, 2069, 603376, 523018, 3136, 1, 0, '', '2021-06-23 17:09:17', 'mithra entrance'),
	(25, 603481, 522761, 3120, 1, 0, 32862, 32743, 16553, 21, 0, '', '2021-07-12 10:30:15', 'mithra exit'),
	(38, 599096, 538607, 2402, 1, 2020, 32862, 32743, 16553, 21, 0, '', '2021-07-12 10:30:15', 'mithra exit 2'),
	(39, 595155, 533593, 2606, 1, 0, 32862, 32743, 16553, 21, 0, '', '2021-07-12 10:30:15', 'mithra exit 3'),
	(37, 602440, 529453, 2550, 1, 0, 32862, 32743, 16553, 21, 0, '', '2021-07-12 10:30:15', 'mithra exit 4'),
	(44, 31120, 29939, 16239, 221, 90, 322927, 458013, 6673, 200, 0, '', '2000-01-01 00:00:00', 'Muire Tomb Entrance'),
	(41, 32737, 33173, 16624, 126, 2037, 778585, 678628, 6570, 100, 0, '', '2000-01-01 00:00:00', 'MularnVale => Vendo Caverns'),
	(60, 585039, 477305, 2600, 1, 2990, 38097, 53718, 4154, 251, 1, '', '2021-12-14 14:58:21', 'Murdaigean Exit Alb'),
	(62, 334435, 419941, 5184, 200, 405, 18179, 17523, 4355, 251, 3, '', '2021-12-18 19:57:23', 'Murdaigean Exit Hib'),
	(61, 766160, 669487, 5736, 100, 0, 54818, 24064, 4320, 251, 2, '', '2021-12-14 15:48:56', 'Murdaigean Exit Mid'),
	(27, 32152, 31841, 16375, 125, 90, 757745, 883978, 5397, 100, 0, '', '2000-01-01 00:00:00', 'Myrkwood Forrest => Spindelhalla'),
	(51, 756038, 791352, 4683, 100, 199, 34568, 33563, 16444, 129, 0, '', '2000-01-01 00:00:00', 'Nisse\'s Lair => East Svealand'),
	(99, 47362, 31508, 13303, 246, 3731, 24908, 31015, 16511, 248, 1, '', '2021-08-24 12:00:02', 'SH EXIT DODENS ALB'),
	(99, 47362, 31508, 13303, 246, 3731, 24908, 31015, 16511, 248, 3, '', '2021-08-24 12:00:02', 'SH EXIT DODENS HIB'),
	(99, 47362, 31508, 13303, 246, 3731, 24908, 31015, 16511, 248, 2, '', '2021-08-24 12:00:02', 'SH EXIT DODENS MID'),
	(97, 32125, 43898, 14725, 276, 2031, 41054, 44231, 16534, 248, 1, '', '2021-09-15 06:19:47', 'SH EXIT MARFACH ALB'),
	(97, 32125, 43898, 14725, 276, 2031, 41176, 44273, 16512, 248, 3, '', '2021-10-16 10:12:42', 'SH EXIT MARFACH HIB'),
	(97, 32125, 43898, 14725, 276, 2031, 41131, 44253, 16511, 248, 2, '', '2021-10-05 10:45:56', 'SH EXIT MARFACH MID'),
	(98, 26428, 37869, 13478, 277, 4095, 37591, 29010, 16512, 248, 1, '', '2021-08-25 18:41:16', 'SH HC EXIT ALB'),
	(98, 26428, 37869, 13478, 277, 4095, 37591, 29010, 16512, 248, 3, '', '2000-01-01 00:00:00', 'SH HC EXIT HIB'),
	(98, 26428, 37869, 13478, 277, 4095, 37561, 29010, 16512, 248, 2, '', '2021-08-25 19:06:27', 'SH HC EXIT MID'),
	(152, 31666, 35982, 18639, 60, 4077, 318175, 368845, 5242, 51, 0, '', '2000-01-01 00:00:00', 'sidi entrance'),
	(169, 318241, 368754, 5342, 51, 15, 31647, 35864, 18639, 60, 0, '', '2000-01-01 00:00:00', 'sidi exit'),
	(167, 423803, 439910, 5967, 181, 1896, 348198, 492819, 5240, 200, 0, '', '2000-01-01 00:00:00', 'SILVERMINE > DOMNANN'),
	(43, 35342, 30885, 14992, 127, 1060, 709369, 941867, 2800, 100, 0, '', '2000-01-01 00:00:00', 'Skona Ravina => Varulvham'),
	(28, 757759, 884229, 5344, 100, 180, 31992, 31844, 16371, 125, 0, '', '2000-01-01 00:00:00', 'Spindlhalla => Myrkwood Forrest'),
	(7, 31424, 34307, 16496, 20, 1161, 585762, 585248, 2109, 1, 0, '', '2000-01-01 00:00:00', 'Stonehenge entrance'),
	(8, 585994, 585029, 2096, 1, 2560, 31757, 34296, 16496, 20, 0, '', '2000-01-01 00:00:00', 'Stonehenge exit'),
	(35, 32476, 34737, 15179, 24, 2044, 488303, 436764, 4952, 1, 0, '', '2000-01-01 00:00:00', 'Tepoks Mine entrance'),
	(34, 488339, 437041, 4925, 1, 169, 32670, 34980, 15198, 24, 0, '', '2000-01-01 00:00:00', 'Tepoks Mine exit'),
	(63, 585039, 477305, 2600, 1, 2990, 38116, 53679, 4154, 252, 1, '', '2021-12-14 14:57:31', 'Thidranki Exit Alb'),
	(65, 334435, 419941, 5184, 200, 405, 18187, 17522, 4320, 252, 3, '', '2021-12-12 19:18:29', 'Thidranki Exit Hib'),
	(64, 766160, 669487, 5736, 100, 0, 54842, 24053, 4320, 252, 2, '', '2021-12-14 15:48:22', 'Thidranki Exit Mid'),
	(26, 311589, 473954, 5219, 200, 2580, 31802, 38049, 7693, 201, 0, '', '2000-01-01 00:00:00', 'TNN > CONNACHT HIB'),
	(19, 332733, 485215, 5215, 200, 189, 17703, 35966, 6261, 201, 0, '', '2000-01-01 00:00:00', 'TNN > LOUGH DERG HIB'),
	(163, 28284, 47911, 16000, 150, 1904, 304016, 277289, 6990, 151, 0, '', '2000-01-01 00:00:00', 'trollheim entrance'),
	(164, 304037, 277523, 6970, 151, 180, 28522, 48433, 16001, 150, 0, '', '2000-01-01 00:00:00', 'trollheim exit'),
	(174, 38038, 27675, 13247, 190, 180, 283113, 389741, 4216, 181, 0, '', '2000-01-01 00:00:00', 'Tur Suil Entrance'),
	(175, 283255, 389439, 4216, 181, 0, 38027, 27381, 13247, 190, 0, '', '2000-01-01 00:00:00', 'Tur Suil Exit'),
	(172, 35612, 17899, 19050, 160, 244, 398621, 271246, 8575, 151, 0, '', '2000-01-01 00:00:00', 'tuscaren glacier entrance'),
	(173, 399178, 270766, 8674, 151, 244, 35917, 17839, 19061, 160, 0, '', '2000-01-01 00:00:00', 'tuscaren glacier exit'),
	(50, 778630, 679004, 6583, 100, 169, 32769, 33536, 16621, 126, 0, '', '2000-01-01 00:00:00', 'Vendo Caverns => Vale of Mularn');
/*!40000 ALTER TABLE `zonepoint` ENABLE KEYS */;