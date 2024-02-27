-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.21-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- muzayede için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `muzayede` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `muzayede`;

-- tablo yapısı dökülüyor muzayede.eser
CREATE TABLE IF NOT EXISTS `eser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(100) NOT NULL DEFAULT '0',
  `sanatci_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muzayede.eser: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `eser` DISABLE KEYS */;
/*!40000 ALTER TABLE `eser` ENABLE KEYS */;

-- tablo yapısı dökülüyor muzayede.islem
CREATE TABLE IF NOT EXISTS `islem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eser_id` int(11) NOT NULL DEFAULT 0,
  `musteri_id` int(11) NOT NULL DEFAULT 0,
  `satis_id` date DEFAULT NULL,
  `fiyat` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muzayede.islem: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `islem` DISABLE KEYS */;
/*!40000 ALTER TABLE `islem` ENABLE KEYS */;

-- tablo yapısı dökülüyor muzayede.musteri
CREATE TABLE IF NOT EXISTS `musteri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(30) NOT NULL DEFAULT '0',
  `soyad` varchar(30) NOT NULL DEFAULT '0',
  `telefon` char(11) NOT NULL DEFAULT '0',
  `adres` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muzayede.musteri: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `musteri` DISABLE KEYS */;
/*!40000 ALTER TABLE `musteri` ENABLE KEYS */;

-- tablo yapısı dökülüyor muzayede.sanatci
CREATE TABLE IF NOT EXISTS `sanatci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) NOT NULL DEFAULT '0',
  `soyad` varchar(50) NOT NULL DEFAULT '0',
  `ozgecmis` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muzayede.sanatci: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `sanatci` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanatci` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
