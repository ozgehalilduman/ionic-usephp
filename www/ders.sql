-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 18 Şub 2016, 07:22:03
-- Sunucu sürümü: 10.1.8-MariaDB
-- PHP Sürümü: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ders`
--
CREATE DATABASE IF NOT EXISTS `ders` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `ders`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

DROP TABLE IF EXISTS `dersler`;
CREATE TABLE IF NOT EXISTS `dersler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dersad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `derssaati` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `dersler`
--

INSERT INTO `dersler` (`id`, `dersad`, `derssaati`) VALUES
(1, 'INTERNET PROGRAMCILIGI', 6),
(2, 'VERİTABANI', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersprogrami`
--

DROP TABLE IF EXISTS `dersprogrami`;
CREATE TABLE IF NOT EXISTS `dersprogrami` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sinif` int(11) NOT NULL,
  `ders` int(11) NOT NULL,
  `ogretmen` int(11) NOT NULL,
  `saat` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `dersprogrami`
--

INSERT INTO `dersprogrami` (`id`, `sinif`, `ders`, `ogretmen`, `saat`) VALUES
(3, 1, 1, 1, 1),
(4, 1, 1, 1, 2),
(5, 1, 1, 1, 3),
(6, 1, 2, 2, 4),
(7, 1, 2, 2, 5),
(8, 2, 2, 2, 1),
(9, 2, 2, 2, 2),
(10, 2, 2, 2, 3),
(11, 2, 1, 1, 4),
(12, 2, 1, 1, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular`
--

DROP TABLE IF EXISTS `duyurular`;
CREATE TABLE IF NOT EXISTS `duyurular` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `gonderen` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `duyurular`
--

INSERT INTO `duyurular` (`id`, `baslik`, `gonderen`) VALUES
(1, 'baslik-1', 'umut askım'),
(2, 'baslik-2', 'enes yeter'),
(3, 'baslik-7', 'behlül üzüm'),
(4, 'baslik-8', 'burak küçük'),
(5, 'baslik-3', 'hasan gül'),
(6, 'baslik-4', 'erkan temiz'),
(7, 'baslik-5', 'batuhan cagan'),
(8, 'baslik-6', 'celalcan metin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenciler`
--

DROP TABLE IF EXISTS `ogrenciler`;
CREATE TABLE IF NOT EXISTS `ogrenciler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `okulno` int(6) NOT NULL,
  `ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `tc` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `sinif` varchar(6) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tc` (`tc`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ogrenciler`
--

INSERT INTO `ogrenciler` (`id`, `okulno`, `ad`, `soyad`, `tc`, `sinif`) VALUES
(1, 1100, 'AHMET EREN', 'PEKER', '12345678901', 'TL12'),
(2, 1131, 'KAAN', 'ÖZGEN', '12345678902', 'TL12'),
(3, 2107, 'UMUT AŞKIM', 'DURMAZ', '12345678903', 'ATL12'),
(4, 2088, 'ENES', 'YETER', '12345678904', 'ATL12'),
(5, 2058, 'BEHLÜL', 'ÜZÜM', '12345678905', 'ATL12'),
(6, 2084, 'UMUTCAN', 'AĞCA', '12345678906', 'ATL12');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogretmenler`
--

DROP TABLE IF EXISTS `ogretmenler`;
CREATE TABLE IF NOT EXISTS `ogretmenler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `brans` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ogretmenler`
--

INSERT INTO `ogretmenler` (`id`, `ad`, `soyad`, `brans`) VALUES
(1, 'ÖZGE HALİL', 'DUMAN', 'BİLİŞİM TEKNOLOJİLERİ'),
(2, 'UFUK', 'CAYMAZ', 'FİZİK');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siniflar`
--

DROP TABLE IF EXISTS `siniflar`;
CREATE TABLE IF NOT EXISTS `siniflar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sinif` varchar(12) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siniflar`
--

INSERT INTO `siniflar` (`id`, `sinif`) VALUES
(1, 'TL12'),
(2, 'ATL12');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ogretmen` int(11) NOT NULL,
  `uname` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `upsw` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `uyetki` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ogretmen` (`ogretmen`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `ogretmen`, `uname`, `upsw`, `uyetki`) VALUES
(1, 1, 'ogretmen', '1234', 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yoklama`
--

DROP TABLE IF EXISTS `yoklama`;
CREATE TABLE IF NOT EXISTS `yoklama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ogretmen` int(11) NOT NULL,
  `ders` int(11) NOT NULL,
  `saat` int(11) NOT NULL,
  `ogrenci` int(11) NOT NULL,
  `tarih` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `zilsaatleri`
--

DROP TABLE IF EXISTS `zilsaatleri`;
CREATE TABLE IF NOT EXISTS `zilsaatleri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `derssaat` int(11) NOT NULL,
  `zilsaat` varchar(5) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `zilsaatleri`
--

INSERT INTO `zilsaatleri` (`id`, `derssaat`, `zilsaat`) VALUES
(1, 1, '08:00'),
(2, 2, '09:00'),
(3, 3, '10:00'),
(4, 4, '11:00'),
(5, 5, '12:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
