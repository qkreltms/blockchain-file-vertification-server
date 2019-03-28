-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.15 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- dbpdfsign 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `dbpdfsign` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `dbpdfsign`;

-- 테이블 dbpdfsign.tblloginuserinfo 구조 내보내기
CREATE TABLE IF NOT EXISTS `tblloginuserinfo` (
  `uidUserInfo` varchar(50) NOT NULL,
  `strID` varchar(50) NOT NULL,
  `strPassword` varchar(50) NOT NULL,
  `dtCreatedDateTime` datetime NOT NULL,
  `strEmail` varchar(200) NOT NULL,
  PRIMARY KEY (`uidUserInfo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 dbpdfsign.tblloginuserinfo:~1 rows (대략적) 내보내기
DELETE FROM `tblloginuserinfo`;
/*!40000 ALTER TABLE `tblloginuserinfo` DISABLE KEYS */;
INSERT INTO `tblloginuserinfo` (`uidUserInfo`, `strID`, `strPassword`, `dtCreatedDateTime`, `strEmail`) VALUES
	('91d68239-8414-4452-81fc-277f395f6da5', 'djdmsehd', 'helloworld', '2019-03-26 01:28:04', 'djdmsehd18@gmail.com');
/*!40000 ALTER TABLE `tblloginuserinfo` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
