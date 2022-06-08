-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table lumayagssis.courses
CREATE TABLE IF NOT EXISTS `courses` (
  `course_code` varchar(10) NOT NULL,
  `course_description` varchar(250) NOT NULL,
  PRIMARY KEY (`course_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lumayagssis.courses: ~5 rows (approximately)
INSERT INTO `courses` (`course_code`, `course_description`) VALUES
	('BSCA', 'Bachelor of Science in Computer Application'),
	('BSEE', 'Bachelor of Science in Electrical Engineering'),
	('BSIT', 'Bachelor of Science in Information Technology'),
	('BSN', 'Bachelor of Science in Nursing'),
	('BSSTAT', 'Bachelor of Science in Statistics');

-- Dumping structure for table lumayagssis.record
CREATE TABLE IF NOT EXISTS `record` (
  `ID` varchar(50) NOT NULL DEFAULT '0',
  `Name` varchar(200) NOT NULL,
  `Gender` varchar(10) NOT NULL DEFAULT '',
  `Yearlevel` varchar(5) NOT NULL DEFAULT '',
  `Coursecode` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table lumayagssis.record: ~62 rows (approximately)
INSERT INTO `record` (`ID`, `Name`, `Gender`, `Yearlevel`, `Coursecode`) VALUES
	('2019-0021', 'Arcamo, Francis Ann Emmanuel G.', 'Male', '3', 'BSSTAT'),
	('2019-0212', 'Maisog, John Conrad Seg B.', 'Male', '3', 'BSN'),
	('2019-0655', 'Bendit, Rutchegen C.', 'Female', '3', 'BSSTAT'),
	('2019-1193', 'Hadjisalic, Raihana', 'Female', '3', 'BSSTAT'),
	('2019-1203', 'Lacubtan, AJ Jhones S.', 'Male', '3', 'BSIT'),
	('2019-1261', 'Tan-awon, Kimberly D.', 'Female', '3', 'BSSTAT'),
	('2019-1352', 'Vidal, Vincent A.', 'Male', '3', 'BSSTAT'),
	('2019-1453', 'Oledan, Christine Jane B.', 'Female', '3', 'BSCE'),
	('2019-1594', 'Undag, Lloyd Kayle L.', 'Male', '3', 'BSSTAT'),
	('2019-1873', 'Zaide, Jhoebelle Phette L.', 'Female', '3', 'BSCE'),
	('2019-1952', 'Macalisang, Nifty Vaniah L.', 'Female', '3', 'BSSTAT'),
	('2019-2048', 'Cabiladas, Glynese Fritz D.', 'Female', '3', 'BSSTAT'),
	('2019-2270', 'Martinez, Ryan James J.', 'Male', '3', 'BSSTAT'),
	('2019-2292', 'Payusan, Justine B.', 'Female', '3', 'BSN'),
	('2019-2351', 'Batocael, Margaret A.', 'Female', '3', 'BSSTAT'),
	('2019-2588', 'Musa, Widad P.', 'Female', '3', 'BSN'),
	('2019-2645', 'Ursal, Mark Jounyl B.', 'Male', '3', 'BSSTAT'),
	('2019-3432', 'Elga, Renalyn V.', 'Female', '3', 'BSSTAT'),
	('2019-3513', 'Randa, Eulyza R.', 'Female', '3', 'BSSTAT'),
	('2019-3589', 'Bernardo, Aiko Marielle C.', 'Female', '3', 'BSIT'),
	('2019-3875', 'Madidis, Hannah Jane R.', 'Female', '3', 'BSSTAT'),
	('2019-4555', 'Rangaig, Khalid A.', 'Male', '3', 'BSCA'),
	('2019-5242', 'Tagaytay, Joe Carlo M.', 'Male', '3', 'BSSTAT'),
	('2019-5307', 'Bentilacion, Mike Jerald B.', 'Male', '3', 'BSN'),
	('2019-5442', 'Noval, Russel Gian C.', 'Male', '3', 'BSSTAT'),
	('2019-5636', 'Layawa, Charlene Mea A.', 'Female', '3', 'BSSTAT'),
	('2019-5711', 'Sabado, Joseph Bernard M.', 'Male', '3', 'BSCA'),
	('2019-6184', 'Tinoy, Jonathan L.', 'Male', '3', 'BSSTAT'),
	('2019-6300', 'Hermosa, Jalen Rose V.', 'Female', '3', 'BSSTAT'),
	('2019-7504', 'Manigsaca, Grace Raquel E.', 'Female', '3', 'BSSTAT'),
	('2019-7736', 'Macalanggan, Cairoden U.', 'Male', '3', 'BSSTAT'),
	('2019-7829', 'Urot, Jheryll E.', 'Female', '3', 'BSSTAT'),
	('2019-8052', 'Siacor, Azreil C.', 'Male', '3', 'BSSTAT'),
	('2019-8928', 'Asequia, Jahyah N.', 'Female', '3', 'BSSTAT'),
	('2019-8953', 'Bagul, Fatima L.', 'Female', '3', 'BSSTAT'),
	('2020-0085', 'Jalop, Karen Duncano', 'Female', '2', 'BSIT'),
	('2020-0565', 'Tercio,Jhon Ralfh Venecer Honi', 'Male', '2', 'BSSTAT'),
	('2020-0645', 'Bobadilla, Cyreene Joy Piolo', 'Female', '2', 'BSSTAT'),
	('2020-0997', 'Indino, Jolandex Mae Ogdol', 'Female', '2', 'BSSTAT'),
	('2020-1061', 'Bajao, Ma. Carmel Navesis', 'Female', '2', 'BSN'),
	('2020-1193', 'Lucaser, Sheila Mae Oberes', 'Female', '2', 'BSSTAT'),
	('2020-1300', 'Lumayag, Judy Mae Malon', 'Female', '2', 'BSSTAT'),
	('2020-1508', 'Mainit, Dana Bacote', 'Female', '2', 'BSIT'),
	('2020-1782', 'Plaza, Bea Michaela Orap-Orap', 'Female', '2', 'BSSTAT'),
	('2020-1813', 'Abaya, Mycah Therese Tumanda', 'Female', '2', 'BSCA'),
	('2020-1828', 'Barlisan, Anna Rose Marabello', 'Female', '2', 'BSSTAT'),
	('2020-1940', 'Telmoso, Jane Ann Solatorio', 'Female', '2', 'BSSTAT'),
	('2020-2066', 'Rabago, Fel Andrei Dionela', 'Male', '2', 'BSIT'),
	('2020-2157', 'Gapol, Clint Juluar Lico', 'Male', '2', 'BSSTAT'),
	('2020-4732', 'Daluran, Dunevy', 'Female', '2', 'BSIT'),
	('2020-4733', 'Tagbo, Shilo Vicente', 'Male', '2', 'BSSTAT'),
	('2020-4764', 'Mancera, Julibel Sebial', 'Female', '2', 'BSSTAT'),
	('2020-4805', 'Pasco, Ranfil Conog', 'Male', '2', 'BSSTAT'),
	('2020-4809', 'Fruta, Jhon Paul', 'Male', '2', 'BSEE'),
	('2020-4810', 'Badelles, Crizyl Mae', 'Female', '2', 'BSEE'),
	('2020-4813', 'Inutan, Jezel Marie Gumba', 'Female', '2', 'BSSTAT'),
	('2020-4855', 'Revelo, Katheleen Claire Uy', 'Female', '2', 'BSCA'),
	('2020-4872', 'Bayal, Jerel Jane Maning', 'Female', '2', 'BSSTAT'),
	('2020-4906', 'Tala, Lynn Stefanny Dela Pe?a', 'Female', '2', 'BSIT'),
	('2020-4981', 'Vequizo, Kiesha Pearl B', 'Female', '2', 'BSCE'),
	('2020-5181', 'Manos, Shiela Marie Bernales', 'Female', '2', 'BSSTAT'),
	('2028-9238', 'fenjf', 'male', '4', 'BSSTAT');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
