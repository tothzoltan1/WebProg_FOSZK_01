-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Okt 28. 20:59
-- Kiszolgáló verziója: 10.11.16-MariaDB
-- PHP verzió: 8.3.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vaszilij_kapcsolat`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kapcsolati_uzenetek`
--

CREATE TABLE `kapcsolati_uzenetek` (
  `id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `uzenet` text NOT NULL,
  `bekuldes_ideje` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `kapcsolati_uzenetek`
--

INSERT INTO `kapcsolati_uzenetek` (`id`, `nev`, `email`, `uzenet`, `bekuldes_ideje`) VALUES
(1, 'Teszt Elek', 'teszt@example.com', 'Ez az első üzenetem', '2026-10-27 11:28:32'),
(2, 'Teszt Elek', 'teszt@example.com', 'Ez az első üzenetküldésem a weblaprórl', '2026-10-27 12:20:43'),
(3, 'Tesz Benedek', 'benedek@exapmle.com', 'Ez a második teszt üzenet a weblapról', '2026-10-27 12:39:27'),
(4, 'Teszt Vendég', 'vendeg@example.com', 'Vendégként ez az első üzenet a weblapról', '2026-10-27 12:52:02'),
(5, 'Vendég', 'proba@example.com', 'Vendégként küldött teszt üzenet a weblapról', '2026-10-27 13:03:22'),
(6, 'Teszt Elek', 'teszt@example.com', 'Bejelentkezett felhasználóként küldött üzenetem', '2026-10-27 13:06:26'),
(7, 'Teszt Elek', 'teszt@example.com', 'Most a ikeres üzenetküldést tesztelem a módosított űrlappal', '2026-10-27 14:22:11');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kapcsolati_uzenetek`
--
ALTER TABLE `kapcsolati_uzenetek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `kapcsolati_uzenetek`
--
ALTER TABLE `kapcsolati_uzenetek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
