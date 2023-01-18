-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 18 Oca 2023, 10:56:15
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `dpu`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

DROP TABLE IF EXISTS `hakkimizda`;
CREATE TABLE IF NOT EXISTS `hakkimizda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kate_id` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icerik` varchar(3500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`id`, `kate_id`, `baslik`, `icerik`) VALUES
(7, 1, '', 'Kurumsal kimliğimizi çevreye duyarlı bir anlayış ile harmanlayıp,çözüm odaklı bir dinamik ve yeniliklere açık yapımızı muhafaza ederek,hizmet sunmak,genç,dinamik ve yeniliklere açık yapımızı muhafaza ederek,sektörde öncü ve lider bir Tarım Ürünleri firması olmak,pazar payımızı arttırmaktır.'),
(8, 2, '', 'Kurumumuzu,Tarım Ürünleri hizmetinde sektörde lider yaparken,mutlak müşteri memnuniyetini ilke edinmek,sürdürülebilir çevre koruma ve sağlıklı toplum ve çevre için,sektördeki yenilikleri tekip ederek,teknoloji,vizyon ve sistemlerimizde gerekli güncellemeleri sürekli yapan,uzun vadede de,sektörümüzde bu trendleri takip eden değil,bu trendleri ortaya koyan,böylece öncü ve lider konumunu sürekli muhafaza eden bir kurum olmaktır.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletişim`
--

DROP TABLE IF EXISTS `iletişim`;
CREATE TABLE IF NOT EXISTS `iletişim` (
  `kategorir_id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`kategorir_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `iletişim`
--

INSERT INTO `iletişim` (`kategorir_id`, `mail`, `tel`, `metin`) VALUES
(2, 'fcn ', '0231', 'sdfghjkl'),
(1, 'lkm', '22222', 'mul');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

DROP TABLE IF EXISTS `kategoriler`;
CREATE TABLE IF NOT EXISTS `kategoriler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`id`, `isim`) VALUES
(1, 'SEBZE'),
(2, 'MEYVE');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategorilerr`
--

DROP TABLE IF EXISTS `kategorilerr`;
CREATE TABLE IF NOT EXISTS `kategorilerr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kategorilerr`
--

INSERT INTO `kategorilerr` (`id`, `isim`) VALUES
(1, 'şikayet'),
(2, 'öneri');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategorr`
--

DROP TABLE IF EXISTS `kategorr`;
CREATE TABLE IF NOT EXISTS `kategorr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kategorr`
--

INSERT INTO `kategorr` (`id`, `isim`) VALUES
(1, 'MİSYONUMUZ\r\n                                             '),
(2, 'VİZYONUMUZ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `satinalin`
--

DROP TABLE IF EXISTS `satinalin`;
CREATE TABLE IF NOT EXISTS `satinalin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `secenek_id` int(11) NOT NULL,
  `adres` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notekle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kartno` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skt` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cvv` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `secenek`
--

DROP TABLE IF EXISTS `secenek`;
CREATE TABLE IF NOT EXISTS `secenek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `secenek`
--

INSERT INTO `secenek` (`id`, `isim`) VALUES
(1, 'İŞYERİ'),
(2, 'EV');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepetim`
--

DROP TABLE IF EXISTS `sepetim`;
CREATE TABLE IF NOT EXISTS `sepetim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icerik` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fiyat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`) VALUES
(3, 'sefa', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(2, 'nuri', 'e89820fe1b2285d2136590089f0f137ed70ac452'),
(4, 'halil', '43814346e21444aaf4f70841bf7ed5ae93f55a9d');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ürünler`
--

DROP TABLE IF EXISTS `ürünler`;
CREATE TABLE IF NOT EXISTS `ürünler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icerik` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fiyat` int(11) NOT NULL,
  `resim` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `ürünler`
--

INSERT INTO `ürünler` (`id`, `kategori_id`, `baslik`, `icerik`, `fiyat`, `resim`) VALUES
(23, 2, 'Sıkmalık Portakal', '2 kg', 34, 'sıkmalık.jpeg'),
(22, 2, 'Portakal', '1 kg', 22, 'portakal.jpeg'),
(21, 2, 'Yerli Muz', '750 g', 24, 'muz.jpeg'),
(19, 2, 'Kestane', '500 g', 40, 'kestane.jpeg'),
(20, 2, 'Çilek', '400 g', 35, 'çilek.jpeg'),
(24, 2, 'Nar', '750 g', 24, 'nar.jpeg'),
(25, 2, 'Granny Smith Elma', '1 kg', 22, 'elma.jpeg'),
(26, 2, 'Ayva', '800 g', 17, 'ayva.jpeg'),
(27, 2, 'Avokado', '1 adet', 20, 'avokado.jpeg'),
(28, 1, 'Kokteyl Domates', '500 g', 17, 'kokteyl.jpeg'),
(29, 1, 'Domates', '1 kg', 24, 'domates.jpeg'),
(30, 1, 'Salkım Domates', '600 g', 23, 'salkım.jpeg'),
(31, 1, 'limon', '1 kg', 20, 'limon.jpeg'),
(32, 1, 'Tatlı Sivri Kıl Biber', '250 g', 18, 'tatlı biber.jpeg'),
(33, 1, 'Sivri Biber', '500 g', 16, 'sivri biber.jpeg'),
(34, 1, 'Sarımsak', '250 g', 16, 'sarımsak.jpeg'),
(35, 1, 'Patates', '2 kg', 31, 'patates.jpeg'),
(36, 1, 'Kabak', '1 kg', 20, 'kabak.jpeg'),
(37, 1, 'Patlıcan', '1 kg', 24, 'patlıcan.jpeg'),
(38, 1, 'Brokoli', '500 g', 13, 'brokoli.jpeg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
