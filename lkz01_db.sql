-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Gép: localhost:3306
-- Létrehozás ideje: 2026. Okt 27. 18:22
-- Kiszolgáló verziója: 8.0.46-0ubuntu0.24.04.4
-- PHP verzió: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `lkz01_db`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int UNSIGNED NOT NULL,
  `csaladi_nev` varchar(45) NOT NULL DEFAULT '',
  `uto_nev` varchar(45) NOT NULL DEFAULT '',
  `bejelentkezes` varchar(12) NOT NULL DEFAULT '',
  `jelszo` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `csaladi_nev`, `uto_nev`, `bejelentkezes`, `jelszo`) VALUES
(14, 'Buga', 'Jakab', 'buga', 'd052f85fa58fb0497ad4bb7f2d069dd486c4a9aa'),
(15, 'Családi_55', '55', '55', 'd052f85fa58fb0497ad4bb7f2d069dd486c4a9aa'),
(16, 'Hóri', 'Horgas', 'hori', 'd052f85fa58fb0497ad4bb7f2d069dd486c4a9aa'),
(6, 'Családi_6', 'Utónév_6', 'Login6', '7ca01f28594b1a06239b1d96fc716477d198470b'),
(7, 'Családi_7', 'Utónév_7', 'Login7', '41ad7e5406d8f1af2deef2ade4753009976328f8'),
(8, 'Családi_8', 'Utónév_8', 'Login8', '3a340fe3599746234ef89591e372d4dd8b590053'),
(9, 'Családi_9', 'Utónév_99', 'Login9', 'c0298f7d314ecbc5651da5679a0a240833a88238'),
(10, 'Családi_10', 'Utónév_10', 'Login10', 'a477427c183664b57f977661ac3167b64823f366'),
(11, 'Családi_11', 'Utónév_11', 'Login11', '6c7e2151d33968a02198f7e2073b1d7b9ee65ed9'),
(12, 'Családi_12', 'Utónév_12', 'Login12', '0722b3651be10eeb8df39cced958b74a98d18ce3'),
(13, 'Tóth', 'Zoltán', 'toth', 'd052f85fa58fb0497ad4bb7f2d069dd486c4a9aa');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gep`
--

CREATE TABLE `gep` (
  `id` int NOT NULL,
  `gyarto` text COLLATE utf8mb3_hungarian_ci NOT NULL,
  `tipus` text COLLATE utf8mb3_hungarian_ci NOT NULL,
  `kijelzo` double NOT NULL,
  `memoria` int NOT NULL,
  `merevlemez` int NOT NULL,
  `videovezerlo` text COLLATE utf8mb3_hungarian_ci NOT NULL,
  `ar` int NOT NULL,
  `processzorid` int NOT NULL,
  `oprendszerid` int NOT NULL,
  `db` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `gep`
--

INSERT INTO `gep` (`id`, `gyarto`, `tipus`, `kijelzo`, `memoria`, `merevlemez`, `videovezerlo`, `ar`, `processzorid`, `oprendszerid`, `db`) VALUES
(3, 'ASUS', 'K51AC-SX001D', 15, 2048, 250, 'ATi Mobility Radeon HD3200 256MB', 101200, 1, 8, 0),
(4, 'HP', 'COMPAQ 615 NX560EA', 15, 2048, 320, 'ATi Mobility Radeon HD3200 256MB', 114800, 1, 4, 0),
(5, 'HP', 'Pavilion DV6-1110EH NL956EA', 15, 3072, 250, 'ATi Mobility Radeon HD4530 512MB', 167920, 1, 6, 3),
(6, 'ACER', 'Aspire 5536G-642G25MN', 15, 2048, 250, 'ATi Mobility Radeon HD4570 512MB', 111920, 1, 2, 3),
(7, 'ACER', 'Aspire 5536G-643G32MN', 15, 3072, 320, 'ATi Mobility Radeon HD4570 512MB', 117520, 1, 2, 2),
(8, 'MSI', 'X410-019HU', 14, 2048, 320, 'ATI Radeon Xpress 1250', 111920, 4, 6, 4),
(9, 'ASUS', 'F83T-VX005X', 14, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 115920, 4, 8, 1),
(10, 'MSI', 'VR630XL-004HU', 16, 2048, 320, 'NVIDIA GeForce Go 9100M-GS', 90800, 5, 1, 1),
(11, 'ASUS', 'N60DP-JX012V', 16, 4096, 500, 'ATi Mobility Radeon HD4670 512MB', 183920, 6, 10, 4),
(12, 'ASUS', 'K50AB-SX045D', 15, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 134320, 7, 8, 5),
(13, 'FUJITSU', 'Amilo Sa3650', 13, 2048, 250, 'ATi Mobility Radeon HD3200 256MB', 223920, 8, 6, 4),
(14, 'MSI', 'WIND U200-064HU', 12, 2048, 320, 'Intel Graphics X4500M / 256MB', 112400, 51, 6, 3),
(15, 'ACER', 'eMachine E525-901G16Mi', 15, 1024, 160, 'Intel Graphics 4500MHD ', 82800, 10, 2, 0),
(16, 'DELL', 'Inspiron 1545-106208 RED', 15, 1024, 160, 'Intel Graphics 4500MHD ', 103120, 10, 2, 3),
(17, 'TOSHIBA', 'Satellite L500-1EN', 15, 2048, 320, 'Intel Graphics X4500M / 256MB', 118800, 10, 1, 1),
(18, 'MSI', 'CR500X-012HU', 15, 2048, 320, 'NVIDIA GeForce Go 8200M 128MB', 94800, 10, 1, 1),
(19, 'MSI', 'CR500X-008HU', 15, 4096, 320, 'NVIDIA GeForce Go 8200M 128MB', 95920, 10, 1, 3),
(20, 'LENOVO', 'SL500 2746P5G', 15, 1024, 160, 'NVIDIA GeForce Go 9300M 256MB', 139920, 12, 4, 0),
(21, 'TOSHIBA', 'Satellite L300-24P', 15, 2048, 160, 'Intel Graphics 4500MHD', 98000, 12, 1, 0),
(22, 'MSI', 'VR603X-094HU', 15, 4096, 320, 'Intel Graphics 4500MHD', 99600, 12, 1, 5),
(23, 'HP', 'ProBook 4510s NX435EA', 15, 2048, 250, 'Intel Graphics 4500MHD', 111920, 12, 1, 1),
(24, 'FUJITSU', 'Esprimo V6535', 15, 1024, 160, 'Intel Graphics 4500MHD ', 95920, 13, 2, 4),
(25, 'LENOVO', 'IdeaPad G550L 59-026377', 15, 1024, 160, 'Intel Graphics 4500MHD', 94320, 14, 4, 5),
(26, 'HP', 'Presario CQ61-200SH NZ890EA', 15, 3072, 320, 'Intel Graphics 4500MHD', 127120, 14, 4, 3),
(27, 'ACER', 'eMachine E525-302G25Mi', 15, 2048, 250, 'Intel Graphics 4500MHD ', 89200, 14, 2, 0),
(28, 'HP', 'ProBook 4510s NX668EA', 15, 2048, 250, 'Intel Graphics 4500MHD ', 113520, 14, 2, 3),
(29, 'HP', 'ProBook 4310s NX580EA', 13, 1024, 160, 'Intel Graphics 4500MHD ', 119920, 14, 2, 3),
(30, 'ASUS', 'K50IJ-SX036L', 15, 2048, 250, 'Intel Graphics X4500M', 94320, 14, 8, 2),
(31, 'ASUS', 'K50IJ-SX153L', 15, 4096, 320, 'Intel Graphics X4500M / 256MB', 100720, 14, 8, 0),
(32, 'MSI', 'CR700X-023HU', 17, 3072, 320, 'NVIDIA GeForce Go 8200M 128MB', 108400, 14, 1, 0),
(33, 'DELL', 'Vostro V860-111696', 15, 1024, 250, 'Intel Graphics x3100', 79920, 17, 2, 3),
(34, 'HP', 'Mini 1199 NS528EA', 10, 1024, 80, 'Intel Graphics 950', 114000, 18, 12, 3),
(35, 'Asus', 'EEE PC 1001HA-BLK012X BLACK', 10, 1024, 160, 'Intel Graphics 4500MHD', 59920, 19, 12, 4),
(36, 'Asus', 'EEE PC 1001HA-WHI009X XP WHITE', 10, 1024, 160, 'Intel Graphics 4500MHD', 59920, 19, 12, 4),
(37, 'DELL', 'Inspiron 1011 104442 BLUE', 10, 1024, 160, 'Intel Graphics 500', 55920, 19, 2, 3),
(38, 'DELL', 'Inspiron 1011 104437 BLUE', 10, 1024, 160, 'Intel Graphics 500', 63992, 19, 12, 1),
(39, 'DELL', 'Inspiron 1011 104435 BLACK', 10, 1024, 160, 'Intel Graphics 500', 63992, 19, 12, 4),
(40, 'DELL', 'Inspiron 1011 105566 RED', 10, 1024, 160, 'Intel Graphics 500', 63992, 19, 12, 1),
(41, 'DELL', 'Inspiron 1011 104434 WHITE', 10, 1024, 160, 'Intel Graphics 500', 63992, 19, 12, 5),
(42, 'DELL', 'Inspiron 1011 104436 PINK', 10, 1024, 160, 'Intel Graphics 500', 63992, 19, 12, 0),
(43, 'DELL', 'Inspiron 1011 110960 GREEN', 10, 1024, 160, 'Intel Graphics 500', 63992, 19, 12, 5),
(44, 'DELL', 'Inspiron 1011 106751 BLACK', 10, 1024, 160, 'Intel Graphics 500', 87920, 19, 12, 3),
(45, 'ACER', 'ASPIRE ONE A150-A BLUE', 8, 1024, 120, 'Intel Graphics 950', 58320, 19, 2, 1),
(46, 'ACER', 'ASPIRE ONE D250-0Bw', 10, 1024, 160, 'Intel Graphics 950', 68720, 19, 12, 5),
(47, 'ACER', 'ASPIRE ONE D250-0Br', 10, 1024, 160, 'Intel Graphics 950', 68720, 19, 12, 3),
(48, 'MSI', 'WIND U100-1033HU', 10, 1024, 160, 'Intel Graphics 950', 71920, 19, 12, 2),
(49, 'HP', 'Mini 110c-1010SH NW642EA', 10, 1024, 160, 'Intel Graphics 950', 78320, 19, 12, 2),
(50, 'Asus', 'Eee PC 1005HA-WHI059X XP WHITE', 10, 1024, 160, 'Intel Graphics 950', 78320, 19, 12, 3),
(51, 'HP', 'Mini 731 NG660EA', 10, 1024, 80, 'Intel Graphics 950', 78320, 19, 12, 3),
(52, 'Asus', 'Eee PC 1005HA-BLK076X XP', 10, 1024, 160, 'Intel Graphics 950', 78400, 19, 12, 3),
(53, 'LENOVO', 'IdeaPad S10e NS9RLHL R', 10, 1024, 160, 'Intel Graphics 950', 79920, 19, 12, 3),
(54, 'LENOVO', 'IdeaPad S10e NS9RJHL', 10, 1024, 160, 'Intel Graphics 950', 79920, 19, 12, 5),
(55, 'Asus', 'Eee PC 1002HA-BLK022X XP B', 10, 1024, 160, 'Intel Graphics 950', 91999, 19, 12, 5),
(56, 'Asus', 'Eee PC 1004DN-BLK003X GR', 10, 1024, 120, 'Intel Graphics 4500MHD', 106700, 20, 12, 4),
(57, 'ACER', 'ASPIRE ONE D250-1Bw', 10, 1024, 160, 'Intel Graphics 950', 71120, 20, 12, 5),
(58, 'ACER', 'ASPIRE ONE D250-1B Blue', 10, 1024, 160, 'Intel Graphics 950', 71120, 20, 12, 3),
(59, 'MSI', 'WIND U123-013HU BLUE', 10, 1024, 160, 'Intel Graphics 950', 72400, 20, 12, 5),
(60, 'MSI', 'WIND U123-012HU RED', 10, 1024, 160, 'Intel Graphics 950', 72400, 20, 12, 1),
(61, 'LENOVO', 'IdeaPad S10-2 59-027093 POP ART', 10, 1024, 160, 'Intel Graphics 950', 73520, 20, 12, 3),
(62, 'LENOVO', 'IdeaPad S10-2 59-027094 FLOWER SEA', 10, 1024, 160, 'Intel Graphics 950', 73520, 20, 12, 5),
(63, 'LENOVO', 'IdeaPad S10-2 59-027108 SAILING', 10, 1024, 160, 'Intel Graphics 950', 73520, 20, 12, 0),
(64, 'MSI', 'WIND U123-014HU WHITE', 10, 1024, 160, 'Intel Graphics 950', 75600, 20, 12, 3),
(65, 'MSI', 'WIND U123-018HU GRAY', 10, 1024, 160, 'Intel Graphics 950', 75600, 20, 12, 4),
(66, 'LENOVO', 'IdeaPad S10-2 59-027036 WHITE', 10, 1024, 160, 'Intel Graphics 950', 77520, 20, 12, 3),
(67, 'Asus', 'Eee PC 1005HA-WHI058X XP W', 10, 1024, 160, 'Intel Graphics 950', 82320, 20, 12, 2),
(68, 'Asus', 'Eee PC 1005HA-BLK075X XP B', 10, 1024, 160, 'Intel Graphics 950', 82400, 20, 12, 3),
(69, 'Asus', 'Eee S101H-BRN073X XP BR', 10, 1024, 160, 'Intel Graphics 950', 87120, 20, 12, 4),
(70, 'Asus', 'Eee PC 1008HA-PIK012X XP P', 10, 1024, 160, 'Intel Graphics 950', 95920, 20, 12, 5),
(71, 'Asus', 'Eee PC 1008HA-RED008X XP R', 10, 1024, 160, 'Intel Graphics 950', 95920, 20, 12, 1),
(72, 'Asus', 'Eee PC 1008HA-BLU021X XP BL', 10, 1024, 160, 'Intel Graphics 950', 95920, 20, 12, 0),
(73, 'Asus', 'Eee PC 1008HA-WHI024X XP', 10, 1024, 160, 'Intel Graphics 950', 95920, 20, 12, 3),
(74, 'Asus', 'Eee PC 1008HA-BLU036X XP BL', 10, 1024, 160, 'Intel Graphics 950', 95920, 20, 12, 5),
(75, 'TOSHIBA', 'NB200-136', 10, 1024, 160, 'Intel GMA 950 / 256MB', 95920, 20, 11, 5),
(76, 'Asus', 'Eee PC 1101HA-BLK041X B', 11, 1024, 160, 'Intel Graphics 500', 96720, 21, 12, 4),
(77, 'Asus', 'Eee PC 1101HA-BLK028M B', 11, 2048, 250, 'Intel Graphics 500', 98000, 21, 11, 5),
(78, 'ACER', 'ASPIRE ONE 751h 52Bb BLACK', 11, 1024, 160, 'Intel Graphics 950', 81200, 21, 12, 2),
(79, 'ACER', 'ASPIRE ONE 751h 52Bb WHITE', 11, 1024, 160, 'Intel Graphics 950', 81200, 21, 12, 4),
(80, 'ACER', 'ASPIRE ONE 751h 52Bb RED', 11, 1024, 160, 'Intel Graphics 950', 81200, 21, 12, 5),
(81, 'ACER', 'ASPIRE ONE 751H PINK', 11, 1024, 160, 'Intel Graphics 950', 81200, 21, 12, 3),
(82, 'ACER', 'ASPIRE ONE 751h 52Bb BLUE', 11, 1024, 160, 'Intel Graphics 950', 81200, 21, 12, 3),
(83, 'Asus', 'Eee PC 1101HA-BLU018X BLUE', 11, 1024, 160, 'Intel Graphics 950', 96720, 21, 12, 1),
(84, 'Asus', 'Eee PC 1101HA-WHI040X W', 11, 1024, 160, 'Intel Graphics 950', 96720, 21, 12, 0),
(85, 'Asus', 'Eee PC 1101HA-WHI022M W', 11, 2048, 250, 'Intel Graphics 950', 98000, 21, 11, 4),
(86, 'DELL', 'Inspiron 1010 106752 BLACK', 10, 1024, 160, 'Intel Graphics 500', 87920, 22, 12, 0),
(87, 'ASUS', 'M51VR-AP184C', 15, 2048, 250, 'ATi Mobility Radeon HD3470 256MB', 140720, 23, 6, 4),
(88, 'FUJITSU', 'Esprimo V6535-104060', 15, 2048, 250, 'Intel Graphics 4500MHD', 110320, 23, 8, 5),
(89, 'ACER', 'Extensa 5630G-732G16N', 15, 2048, 160, 'NVIDIA GeForce Go 9300M 256MB', 127920, 24, 6, 0),
(90, 'DELL', 'Studio XPS 13-711 BLACK', 13, 4096, 320, 'NVIDIA GeForce Go 9500M-GS 256MB', 241520, 24, 6, 0),
(91, 'MSI', 'GX723X-271HU', 17, 4096, 500, 'NVIDIA GeForce GT130M 512B DDR3', 216720, 24, 1, 1),
(92, 'TOSHIBA', 'Satellite A300-1GN', 15, 3072, 320, 'ATi Mobility Radeon HD3650 512MB', 226800, 25, 6, 0),
(93, 'LENOVO', 'ThinkPad T500 NL34EHV', 15, 2048, 160, 'Intel Graphics 4500MHD', 241520, 25, 3, 1),
(94, 'LENOVO', 'ThinkPad T400 NM81UHV', 14, 2048, 160, 'Intel Graphics 4500MHD', 244720, 25, 3, 5),
(95, 'FUJITSU', 'Lifebook E8420', 15, 4096, 160, 'Intel Graphics 4500MHD', 268720, 25, 3, 5),
(96, 'FUJITSU', 'Lifebook S7220', 14, 4096, 320, 'Intel Graphics 4500MHD', 268720, 25, 3, 1),
(97, 'FUJITSU', 'Lifebook S6420', 13, 4096, 160, 'Intel Graphics 4500MHD', 279920, 25, 3, 3),
(98, 'LENOVO', 'ThinkPad T500 NL346HV', 15, 2048, 320, 'Intel Graphics 4500MHD', 279920, 25, 3, 3),
(99, 'LENOVO', 'ThinkPad T500 NJ253HV', 15, 2048, 160, 'ATi Mobility Radeon HD3650', 279920, 26, 3, 3),
(100, 'DELL', 'Studio XPS 16-713 BLACK', 16, 4096, 500, 'ATi Mobility Radeon HD3670 512MB', 266320, 26, 6, 5),
(101, 'DELL', 'Inspiron 1545-106226 Red', 15, 2048, 320, 'ATi Mobility Radeon HD4330 256MB', 169200, 26, 6, 0),
(102, 'DELL', 'Inspiron 1545-106227 Blue', 15, 2048, 320, 'ATi Mobility Radeon HD4330 256MB', 169200, 26, 6, 5),
(103, 'DELL', 'Studio 1555-110573 RED', 15, 2048, 500, 'ATi Mobility Radeon HD4570 512MB', 192720, 26, 6, 2),
(104, 'DELL', 'Studio 1555-110574 BLACK', 15, 2048, 500, 'ATi Mobility Radeon HD4570 512MB', 192720, 26, 6, 1),
(105, 'DELL', 'Studio 1555-110575 BLUE', 15, 2048, 500, 'ATi Mobility Radeon HD4570 512MB', 192720, 26, 6, 3),
(106, 'TOSHIBA', 'Satellite P300-225', 17, 4096, 500, 'ATi Mobility Radeon HD4650 1024MB', 234800, 26, 6, 3),
(107, 'DELL', 'Studio XPS M1640-106257 B', 15, 4096, 500, 'ATi Mobility Radeon HD4670 512MB', 268720, 26, 6, 2),
(108, 'DELL', 'Studio XPS M1640-106259 R', 15, 4096, 500, 'ATi Mobility Radeon HD4670 512MB', 268720, 26, 6, 5),
(109, 'LENOVO', 'ThinkPad T500 NJ42RHV', 15, 2048, 160, 'Intel Graphics 4500MHD', 255920, 26, 3, 1),
(110, 'FUJITSU', 'Lifebook S7220-1', 14, 4096, 320, 'Intel Graphics 4500MHD', 279920, 26, 3, 3),
(111, 'TOSHIBA', 'Tecra M10-14Z', 14, 3072, 250, 'NVIDIA Quadro NVS 150M 256MB', 271920, 26, 3, 3),
(112, 'DELL', 'Studio XPS M1340-106255 B', 13, 4096, 500, 'NVIDIA GeForce Go 9400M-GS 256MB', 251920, 26, 6, 5),
(113, 'DELL', 'Studio XPS M1340-106256 R', 13, 4096, 500, 'NVIDIA GeForce Go 9400M-GS 256MB', 251920, 26, 6, 4),
(114, 'ASUS', 'N80VN-GP023C', 14, 4096, 320, 'NVIDIA GeForce 9650M GT 1GB', 215920, 26, 6, 4),
(115, 'ASUS', 'U50VG-XX162V', 15, 4096, 500, 'NVIDIA GeForce G105/512MB', 219120, 27, 10, 0),
(116, 'TOSHIBA', 'Qosmio X300-14V', 17, 4096, 320, 'NVIDIA GeForce Go 9700M-GT 512MB', 399920, 27, 6, 4),
(117, 'ASUS', 'N71VG-TY046V', 17, 4096, 640, 'NVIDIA GeForce GT220M 1GB', 243920, 27, 10, 2),
(118, 'ASUS', 'N61VN-JX069V', 16, 4096, 500, 'NVIDIA GeForce GT240M 1GB', 247920, 27, 10, 4),
(119, 'MSI', 'GT628X-447HU', 15, 4096, 500, 'NVIDIA GeForce GTS 160M', 258000, 27, 1, 3),
(120, 'HP', 'EliteBook 2530p FU431EA', 12, 2048, 120, 'Intel Graphics 4500MHD', 379920, 28, 3, 0),
(121, 'ThinkPad', 'X200 NRRFWHV', 12, 2048, 250, 'Intel Graphics 4500MHD', 387120, 28, 3, 2),
(122, 'ACER', 'Timeline 3810TG-734G50N', 13, 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 174320, 29, 6, 5),
(123, 'ACER', 'Aspire Timeline 4810TG-733G25MN', 14, 3072, 250, 'ATi Mobility Radeon HD4330 512MB', 164720, 29, 10, 3),
(124, 'ACER', 'TravelMate 8471-733G25MN', 14, 3072, 250, 'Intel Graphics 4500MHD', 167920, 29, 3, 2),
(125, 'ASUS', 'UL20A-2X022V', 12, 3072, 320, 'Intel Graphics X4500M / 256MB', 146800, 29, 10, 3),
(126, 'ASUS', 'UL30A-QX164V', 13, 3072, 320, 'Intel Graphics X4500M / 256MB', 148720, 29, 10, 3),
(127, 'ASUS', 'UL50AG-XX007V', 15, 4096, 500, 'Intel Graphics X4500M / 256MB', 174320, 29, 10, 3),
(128, 'ASUS', 'UX30-QX096V', 13, 3072, 320, 'Intel Graphics X4500M / 256MB', 177520, 29, 10, 1),
(129, 'ASUS', 'UX30-QX085V', 13, 4096, 500, 'Intel Graphics X4500M / 256MB', 184720, 29, 10, 0),
(130, 'ASUS', 'UL80AG-WX011V', 14, 3072, 320, 'Intel GMA 950 / 256MB', 162320, 29, 10, 5),
(131, 'ASUS', 'UX50V-XX042V', 15, 4096, 500, 'NVIDIA GeForce G105/512MB', 203920, 29, 10, 2),
(132, 'ASUS', 'UL50VT-XX021V', 15, 4096, 500, 'NVIDIA GeForce GT210M 512GB', 191120, 29, 10, 2),
(133, 'TOSHIBA', 'Portégé A600-139', 12, 2048, 250, 'Intel Graphics 4500MHD', 271920, 30, 3, 5),
(134, 'ACER', 'Timeline 3810TG-944G50N', 13, 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 194800, 31, 6, 0),
(135, 'ACER', 'Timeline 3810T-944G32N', 13, 4096, 320, 'Intel Graphics 4500MHD', 168720, 31, 6, 2),
(136, 'ACER', 'Aspire Timeline 4810T-943G32MN', 14, 3072, 320, 'Intel Graphics 4500MHD', 189200, 31, 6, 3),
(137, 'ThinkPad', 'X301 NRFC1HV', 13, 2048, 120, 'Intel Graphics 4500MHD', 366000, 31, 3, 0),
(138, 'FUJITSU', 'Esprimo V6515-104062', 15, 2048, 250, 'NVIDIA GeForce Go 8200M 128MB', 123920, 32, 8, 1),
(139, 'FUJITSU', 'Esprimo V5535 02', 15, 2048, 160, 'SiS Mirage 3+ 256M', 103920, 34, 1, 2),
(140, 'HP', 'ProBook 4510s NX621EA', 15, 3072, 320, 'ATi Mobility Radeon HD4330 256MB', 146320, 34, 1, 0),
(141, 'HP', 'ProBook 4510s NX624EA', 15, 3072, 320, 'ATi Mobility Radeon HD4330 256MB', 157520, 34, 4, 1),
(142, 'HP', 'ProBook 4710s NX628EA', 17, 3072, 320, 'ATi Mobility Radeon HD4330 512MB', 159920, 34, 1, 4),
(143, 'HP', 'COMPAQ 610 NX549EA', 15, 1024, 160, 'Intel Graphics x3100', 104990, 34, 1, 1),
(144, 'HP', 'COMPAQ 610 NX550EA', 15, 2048, 320, 'Intel Graphics x3100', 121520, 34, 1, 3),
(145, 'HP', 'COMPAQ 610 NX552EA', 15, 2048, 320, 'Intel Graphics x3100', 125200, 34, 4, 0),
(146, 'DELL', 'Vostro A860-111877', 15, 2048, 250, 'Intel Graphics x3100 ', 94320, 34, 2, 0),
(147, 'FUJITSU', 'Esprimo V6555 MPWE5HU', 15, 2048, 250, 'NVIDIA GeForce Go 8200M 128MB', 108000, 34, 2, 2),
(148, 'MSI', 'VX600X-053HU', 15, 4096, 500, 'ATi Mobility Radeon HD3410 256MB', 136400, 35, 1, 0),
(149, 'FUJITSU', 'Esprimo V6545-104064', 15, 2048, 250, 'ATi Mobility Radeon HD3450 256MB', 143920, 35, 2, 4),
(150, 'FUJITSU', 'Amilo PI 3525', 15, 2048, 320, 'Intel Graphics 4500MHD', 111111, 35, 8, 3),
(151, 'FUJITSU', 'Esprimo V6505-104063', 15, 2048, 250, 'Intel Graphics 4500MHD ', 135920, 35, 2, 0),
(152, 'MSI', 'CX600X-042HU', 16, 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 149600, 36, 8, 1),
(153, 'DELL', 'Inspiron 1545-699 BLUE', 15, 4096, 320, 'ATi Mobility Radeon HD4330 256MB', 159920, 36, 6, 2),
(154, 'DELL', 'Studio 1555-635 RED', 15, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 176720, 36, 1, 5),
(155, 'DELL', 'Studio 1555-106249 BLUE', 15, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 190320, 36, 6, 3),
(156, 'ASUS', 'F6A-3P193X', 13, 3072, 250, 'Intel Graphics X4500M / 256MB', 159920, 36, 8, 2),
(157, 'ASUS', 'K50IN-SX024L', 15, 4096, 250, 'NVIDIA GeForce G102M/512MB', 135920, 36, 8, 1),
(158, 'DELL', 'Studio XPS M1340-110934 B', 13, 2048, 320, 'NVIDIA GeForce Go 9400M-GS 256MB', 201520, 36, 6, 5),
(159, 'HP', 'ProBook 4510s VC191EA', 15, 3072, 500, 'ATi Mobility Radeon HD4330 256MB', 187600, 37, 6, 5),
(160, 'HP', 'ProBook 4510s NA921EA', 15, 2048, 250, 'Intel Graphics 4500MHD', 203920, 37, 3, 2),
(161, 'DELL', 'Inspiron 1545-111827 Red', 15, 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, 38, 2, 2),
(162, 'DELL', 'Inspiron 1545-111826 Black', 15, 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, 38, 2, 0),
(163, 'DELL', 'Inspiron 1545-111828 Blue', 15, 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, 38, 2, 5),
(164, 'DELL', 'Inspiron 1545-111829 White', 15, 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, 38, 2, 0),
(165, 'DELL', 'Inspiron 1545-111831 Purple', 15, 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, 38, 2, 0),
(166, 'MSI', 'EX627X-400HU', 16, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 164720, 38, 1, 5),
(167, 'ASUS', 'U80V-WX101V', 14, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 199120, 38, 10, 3),
(168, 'LENOVO', 'IdeaPad G550A 59-026421', 15, 3072, 320, 'Intel Graphics 4500MHD', 135920, 38, 1, 5),
(169, 'ACER', 'Aspire 5738-663G32MN Linux', 15, 3072, 320, 'Intel Graphics 4500MHD ', 123920, 38, 2, 2),
(170, 'ASUS', 'K50IJ-SX152L', 15, 4096, 320, 'Intel Graphics X4500M / 256MB', 119920, 38, 8, 0),
(171, 'ASUS', 'K50IN-SX155L', 15, 3072, 250, 'NVIDIA GeForce G102M/512MB', 126320, 38, 2, 4),
(172, 'ASUS', 'K50IN-SX157L', 15, 4096, 500, 'NVIDIA GeForce G102M/512MB', 131920, 38, 2, 2),
(173, 'ASUS', 'U50VG-XX156V', 15, 4096, 500, 'NVIDIA GeForce G105/512MB', 195120, 38, 10, 1),
(174, 'MSI', 'EX723X-079HU', 17, 4096, 500, 'NVIDIA GeForce Go 9300M 256MB', 173520, 38, 1, 0),
(175, 'TOSHIBA', 'Satellite U500-17E', 13, 2048, 320, 'NVIDIA GeForce GT210M 512GB', 166320, 38, 10, 2),
(176, 'ASUS', 'F50SF-JX061X', 16, 4096, 500, 'NVIDIA GeForce GT220M 1GB', 167680, 38, 8, 2),
(177, 'ASUS', 'N61VG-JX070V', 16, 4096, 500, 'NVIDIA GeForce GT220M 1GB', 207920, 38, 10, 3),
(178, 'TOSHIBA', 'Satellite A500-1DN', 16, 4096, 320, 'NVIDIA GeForce GT230M 1GB', 185520, 38, 10, 2),
(179, 'LENOVO', 'SL500 NRJEBHV', 15, 2048, 320, 'Intel Graphics 4500MHD', 169520, 39, 4, 3),
(180, 'FUJITSU', 'Esprimo V5505 02', 15, 2048, 250, 'Intel Graphics x3100', 135555, 40, 4, 4),
(181, 'TOSHIBA', 'Satellite A200-23W', 15, 2048, 400, 'ATi Mobility Radeon HD2600 512MB', 175920, 41, 6, 0),
(182, 'FUJITSU', 'Esprimo D9500-101571', 15, 2048, 160, 'Intel Graphics x3100', 155920, 42, 3, 2),
(183, 'FUJITSU', 'Esprimo D9500-101570', 15, 4096, 160, 'Intel Graphics x3100', 179120, 43, 3, 3),
(184, 'Lenovo', 'ThinkPad W500 NRA3KHV', 15, 4096, 200, 'Intel Graphics 4500MHD', 380720, 44, 3, 0),
(185, 'ACER', 'Timeline 3810T-352G25N', 13, 2048, 250, 'Intel Graphics 4500MHD', 130320, 45, 6, 1),
(186, 'MSI', 'X400-048HU', 14, 2048, 500, 'Intel Graphics 4500MHD', 143920, 45, 6, 4),
(187, 'ASUS', 'UX30-QX032C', 13, 3072, 500, 'Intel Graphics X4500M / 256MB', 198800, 45, 6, 5),
(188, 'ASUS', 'U20A-2P027C', 12, 4096, 500, 'Intel Graphics X4500M / 256MB', 207920, 45, 6, 0),
(189, 'ASUS', 'UX50V-XX007C', 15, 4096, 500, 'NVIDIA GeForce G105/512MB', 244720, 45, 6, 2),
(190, 'ACER', 'Timeline 3810TZ-414G32N', 13, 4096, 320, 'Intel Graphics 4500MHD', 138320, 46, 9, 3),
(191, 'ACER', 'Timeline 5810TZ-414G32MN Vista', 15, 4096, 320, 'Intel Graphics 4500MHD', 142320, 46, 7, 3),
(192, 'ACER', 'Timeline 5810TZ-414G32MN Win7', 15, 4096, 320, 'Intel Graphics 4500MHD', 146320, 46, 9, 3),
(193, 'ACER', 'Aspire Timeline 4810TZ-413G25MN', 14, 3072, 250, 'Intel Graphics 4500MHD', 150000, 46, 10, 5),
(194, 'TOSHIBA', 'Satellite T130-10G', 13, 4096, 320, 'Intel Graphics X4500M / 256MB', 151920, 46, 10, 5),
(195, 'FUJITSU', 'Esprimo V6545', 15, 2048, 250, 'ATi Mobility Radeon HD3450 256MB', 110320, 23, 2, 1),
(196, 'TOSHIBA', 'Satellite A300-22Z', 15, 2048, 320, 'ATi Mobility Radeon HD3470 256MB', 126000, 23, 8, 5),
(197, 'FUJITSU', 'Esprimo V6505', 15, 2048, 250, 'Intel Graphics 4500MHD ', 111111, 23, 2, 2),
(198, 'FUJITSU', 'Amilo PI 3540-104877', 15, 3072, 250, 'NVIDIA GeForce Go 9300M 256MB', 115920, 23, 8, 5),
(199, 'MSI', 'VX600X-206HU', 15, 4096, 320, 'ATi Mobility Radeon HD3410 256MB', 121520, 48, 1, 4),
(200, 'TOSHIBA', 'Satellite A300-29K', 15, 2048, 320, 'ATi Mobility Radeon HD3470 256MB', 125520, 48, 8, 3),
(201, 'TOSHIBA', 'Satellite A300-22W', 15, 3072, 320, 'ATi Mobility Radeon HD3470 256MB', 131920, 48, 6, 5),
(202, 'TOSHIBA', 'Satellite A300-29J', 15, 4096, 320, 'ATi Mobility Radeon HD3470 256MB', 135120, 48, 6, 3),
(203, 'MSI', 'CX600X-018HU', 16, 4096, 320, 'ATi Mobility Radeon HD4330 256MB', 114800, 48, 8, 0),
(204, 'MSI', 'CX700X-013HU', 17, 4096, 320, 'ATi Mobility Radeon HD4330 256MB', 133520, 48, 8, 1),
(205, 'HP', 'Pavilion DV6-1120EH NM629EA', 15, 3072, 250, 'ATi Mobility Radeon HD4530 512MB', 183992, 48, 6, 3),
(206, 'ASUS', 'F83SE-VX039', 14, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 138320, 48, 8, 5),
(207, 'TOSHIBA', 'Satellite L300-2CE', 15, 2048, 250, 'Intel Graphics 4500MHD', 103600, 48, 8, 1),
(208, 'FUJITSU', 'Esprimo V6535-104061', 15, 4096, 320, 'Intel Graphics 4500MHD', 118320, 48, 8, 3),
(209, 'FUJITSU', 'Amilo Li 3910-UW5HU', 18, 4096, 320, 'Intel Graphics 4500MHD', 123920, 48, 8, 3),
(210, 'ASUS', 'K50IJ-SX025L', 15, 4096, 320, 'Intel Graphics 4500MHD', 125520, 48, 8, 3),
(211, 'HP', 'Presario CQ61-110eh NT353EA', 15, 2048, 250, 'Intel Graphics 4500MHD', 131920, 48, 4, 4),
(212, 'HP', 'ProBook 4510s VC179ES', 15, 3072, 320, 'Intel Graphics 4500MHD', 134320, 48, 1, 3),
(213, 'ASUS', 'F6A-3P154X', 13, 3072, 250, 'Intel Graphics X4500M / 256MB', 143120, 48, 8, 4),
(214, 'ASUS', 'K50IN-SX011L', 15, 4096, 320, 'NVIDIA GeForce G102M/512MB', 129520, 48, 8, 5),
(215, 'HP', 'Presario CQ61-120eh NL930EA', 15, 3072, 250, 'NVIDIA GeForce G103/512MB', 148720, 48, 4, 0),
(216, 'ACER', 'Aspire 5738ZG-422G25MN', 15, 2048, 250, 'NVIDIA GeForce G105/512MB', 123120, 48, 4, 4),
(217, 'MSI', 'EX720X-058HU', 17, 4096, 500, 'NVIDIA GeForce Go 9300M 256MB', 150320, 48, 1, 0),
(218, 'MSI', 'CX600X-072HU', 16, 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 119120, 49, 8, 4),
(219, 'DELL', 'Inspiron 1545-110961 Red', 15, 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, 49, 6, 3),
(220, 'DELL', 'Inspiron 1545-110963 Blue', 15, 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, 49, 6, 0),
(221, 'DELL', 'Inspiron 1545-110964 White', 15, 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, 49, 6, 4),
(222, 'DELL', 'Inspiron 1545-110962 Black', 15, 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, 49, 6, 3),
(223, 'ASUS', 'F83SE-VX057D', 14, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 124720, 49, 8, 2),
(224, 'ACER', 'Aspire 5738ZG-432G25MN', 15, 2048, 250, 'ATi Mobility Radeon HD4570 512MB', 126320, 49, 5, 5),
(225, 'LENOVO', 'IdeaPad G550L 59-026359', 15, 3072, 320, 'Intel Graphics 4500MHD', 103920, 49, 1, 0),
(226, 'TOSHIBA', 'Satellite L300-2C5', 15, 2048, 250, 'Intel Graphics 4500MHD', 110320, 49, 6, 3),
(227, 'ACER', 'Aspire 5738Z-434G32MN', 15, 4096, 320, 'Intel Graphics 4500MHD', 126320, 49, 6, 3),
(228, 'ACER', 'Extensa 5635Z-431G16MN', 15, 1024, 160, 'Intel Graphics 4500MHD ', 94320, 49, 2, 1),
(229, 'TOSHIBA', 'Satellite L500-1EQ', 15, 2048, 320, 'Intel Graphics X4500M / 256MB', 103920, 49, 1, 1),
(230, 'ASUS', 'K50IJ-SX148L', 15, 2048, 250, 'Intel Graphics X4500M / 256MB', 103920, 49, 8, 1),
(231, 'TOSHIBA', 'Satellite L500-1GE', 15, 4096, 320, 'Intel Graphics X4500M / 256MB', 103920, 49, 1, 4),
(232, 'ASUS', 'K50IJ-SX151L', 15, 3072, 250, 'Intel Graphics X4500M / 256MB', 110320, 49, 8, 5),
(233, 'ASUS', 'K50IJ-SX151V', 15, 3072, 250, 'Intel Graphics X4500M / 256MB', 119920, 49, 9, 0),
(234, 'ASUS', 'K50IJ-SX124L', 15, 4096, 320, 'Intel Graphics X4500M / 256MB', 120400, 49, 8, 1),
(235, 'ASUS', 'K70IJ-TY042L', 17, 4096, 320, 'Intel Graphics X4500M / 256MB', 131920, 49, 8, 1),
(236, 'ASUS', 'K50IN-SX153L', 15, 3072, 250, 'NVIDIA GeForce G102M/512MB', 111920, 49, 2, 2),
(237, 'ASUS', 'K50IN-SX154L', 15, 4096, 320, 'NVIDIA GeForce G102M/512MB', 115920, 49, 2, 5),
(238, 'ASUS', 'K50IN-SX153V', 15, 3072, 250, 'NVIDIA GeForce G102M/512MB', 127920, 49, 9, 4),
(239, 'ASUS', 'K70IO-TY073L', 17, 4096, 320, 'NVIDIA GeForce GT120M 1GB', 138320, 49, 8, 2),
(240, 'ASUS', 'K70IO-TY068V', 17, 4096, 250, 'NVIDIA GeForce GT120M 1GB', 156720, 49, 9, 0),
(241, 'ASUS', 'K61IC-JX018D', 15, 4096, 500, 'NVIDIA GeForce GT220M 1GB', 143920, 49, 8, 1),
(242, 'LENOVO', 'U350 BLACK', 13, 2048, 250, 'Intel Graphics 4500MHD', 111920, 51, 4, 0),
(243, 'MSI', 'X340-037HU', 13, 2048, 320, 'Intel Graphics 4500MHD', 135920, 51, 6, 5),
(244, 'LENOVO', 'IdeaPad S12 Black', 12, 1024, 160, 'VIA S3 Chrome 9', 97520, 52, 12, 4),
(245, 'LENOVO', 'IdeaPad S12 White', 12, 1024, 160, 'VIA S3 Chrome 9', 97520, 52, 12, 4),
(246, 'ASUS', 'K51AC-SX037D', 15, 2048, 250, 'ATi Mobility Radeon HD3200 256MB', 98320, 53, 8, 1),
(247, 'ASUS', 'K50AB-SX073D', 15, 3072, 250, 'ATi Mobility Radeon HD4570 512MB', 107120, 53, 8, 5),
(248, 'Asus', 'valami', 13, 16, 256, 'Intel', 666666, 7, 5, 1),
(249, 'Anya', 'Apa', 14, 14, 14, 'Maxtor', 555666, 4, 3, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `oprendszer`
--

CREATE TABLE `oprendszer` (
  `id` int NOT NULL,
  `nev` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- A tábla adatainak kiíratása `oprendszer`
--

INSERT INTO `oprendszer` (`id`, `nev`) VALUES
(1, 'FreeDOS'),
(2, 'Linux'),
(3, 'Microsoft Vista Business'),
(4, 'Microsoft Vista Home Basic HU'),
(5, 'Microsoft Vista Home Premium'),
(6, 'Microsoft Vista Home Premium HU'),
(7, 'Microsoft Vista Home Premium HU notebook'),
(8, 'nincs'),
(9, 'Windows 7 Home Premium HU 32Bit'),
(10, 'Windows 7 Home Premium HU 64Bit'),
(11, 'Windows 7 Starter Edition HU'),
(12, 'Windows XP Home Magyar');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `processzor`
--

CREATE TABLE `processzor` (
  `id` int NOT NULL,
  `gyarto` varchar(100) NOT NULL,
  `tipus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- A tábla adatainak kiíratása `processzor`
--

INSERT INTO `processzor` (`id`, `gyarto`, `tipus`) VALUES
(4, 'AMD', 'Athlon TM Neo MV-40'),
(5, 'AMD', 'Mobil Sempron SI-40'),
(6, 'AMD', 'Turion64 X2 TL60'),
(7, 'AMD', 'Turion64 X2 TL64'),
(8, 'AMD', 'Turion64 X2 TL62'),
(10, 'Intel', 'Celeron 900'),
(12, 'Intel', 'Celeron Dual-Core T1600'),
(13, 'Intel', 'Celeron Dual-Core T1700'),
(14, 'Intel', 'Celeron Dual-Core T3000'),
(17, 'Intel', 'Celeron M 560'),
(18, 'Intel', 'Centrino Atom 1600'),
(19, 'Intel', 'Centrino Atom N270'),
(20, 'Intel', 'Centrino Atom N280'),
(21, 'Intel', 'Centrino Atom Z520'),
(22, 'Intel', 'Centrino Atom Z530'),
(23, 'Intel', 'Core Duo T3400'),
(24, 'Intel', 'Core2 Duo P7350'),
(25, 'Intel', 'Core2 Duo P8400'),
(26, 'Intel', 'Core2 Duo P8600'),
(27, 'Intel', 'Core2 Duo P8700'),
(28, 'Intel', 'Core2 Duo SL9400'),
(29, 'Intel', 'Core2 Duo SU7300'),
(30, 'Intel', 'Core2 Duo SU9300'),
(31, 'Intel', 'Core2 Duo SU9400'),
(32, 'Intel', 'Core2 Duo T5670'),
(34, 'Intel', 'Core2 Duo T5870'),
(35, 'Intel', 'Core2 Duo T6400'),
(36, 'Intel', 'Core2 Duo T6500'),
(37, 'Intel', 'Core2 Duo T6570'),
(38, 'Intel', 'Core2 Duo T6600'),
(39, 'Intel', 'Core2 Duo T6670'),
(40, 'Intel', 'Core2 Duo T7300'),
(41, 'Intel', 'Core2 Duo T7500'),
(42, 'Intel', 'Core2 Duo T8300'),
(43, 'Intel', 'Core2 Duo T9300'),
(44, 'Intel', 'Core2 Duo T9400'),
(45, 'Intel', 'Core2 Solo SU3500 ULV'),
(46, 'Intel', 'Pentium Dual Core SU4100'),
(48, 'Intel', 'Pentium dual-core T4200'),
(49, 'Intel', 'Pentium dual-core T4300'),
(51, 'Intel', 'Celeron M ULV723'),
(52, 'VIA', 'Via Nano ULV 2250'),
(53, 'AMD', 'Athlon 64 X2 QL65');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `gep`
--
ALTER TABLE `gep`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `oprendszer`
--
ALTER TABLE `oprendszer`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `processzor`
--
ALTER TABLE `processzor`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT a táblához `gep`
--
ALTER TABLE `gep`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT a táblához `oprendszer`
--
ALTER TABLE `oprendszer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT a táblához `processzor`
--
ALTER TABLE `processzor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
