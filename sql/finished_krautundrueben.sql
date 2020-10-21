-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 21. Okt 2020 um 08:10
-- Server-Version: 10.4.14-MariaDB
-- PHP-Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `krautundrueben`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ALLERGENE`
--

CREATE TABLE `ALLERGENE` (
  `ALLERGENNR` int(11) NOT NULL,
  `ALLERGEN` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `ALLERGENE`
--

INSERT INTO `ALLERGENE` (`ALLERGENNR`, `ALLERGEN`) VALUES
(1, 'Laktose'),
(2, 'Weizen'),
(3, 'Gluten'),
(4, 'Stärke'),
(5, 'Karotte');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BESTELLUNG`
--

CREATE TABLE `BESTELLUNG` (
  `BESTELLNR` int(11) NOT NULL,
  `KUNDENNR` int(11) DEFAULT NULL,
  `BESTELLDATUM` date DEFAULT NULL,
  `RECHNUNGSBETRAG` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `BESTELLUNG`
--

INSERT INTO `BESTELLUNG` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`) VALUES
(1, 2001, '2020-07-01', '6.21'),
(2, 2002, '2020-07-08', '32.96'),
(3, 2003, '2020-08-01', '24.08'),
(4, 2004, '2020-08-02', '19.90'),
(5, 2005, '2020-08-02', '6.47'),
(6, 2006, '2020-08-10', '6.96'),
(7, 2007, '2020-08-10', '2.41'),
(8, 2008, '2020-08-10', '13.80'),
(9, 2009, '2020-08-10', '8.67'),
(10, 2007, '2020-08-15', '17.98'),
(11, 2005, '2020-08-12', '8.67'),
(12, 2003, '2020-08-13', '20.87');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BESTELLUNGZUTAT`
--

CREATE TABLE `BESTELLUNGZUTAT` (
  `BESTELLNR` int(11) NOT NULL,
  `ZUTATENNR` int(11) NOT NULL,
  `MENGE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `BESTELLUNGZUTAT`
--

INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES
(1, 1001, 5),
(1, 1002, 3),
(1, 1004, 3),
(1, 1006, 2),
(2, 1003, 4),
(2, 1005, 5),
(2, 6408, 5),
(2, 9001, 10),
(3, 3001, 5),
(3, 6300, 15),
(4, 3003, 2),
(4, 5001, 7),
(5, 1001, 5),
(5, 1002, 4),
(5, 1004, 5),
(6, 1010, 5),
(7, 1009, 9),
(8, 1008, 7),
(8, 1012, 5),
(9, 1007, 4),
(9, 1012, 5),
(10, 1011, 7),
(10, 4001, 7),
(11, 1012, 5),
(11, 5001, 2),
(12, 1010, 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ERNAHRUNGSKATEGORIEN`
--

CREATE TABLE `ERNAHRUNGSKATEGORIEN` (
  `KATEGORIENR` int(11) NOT NULL,
  `KATEGORIE` varchar(99) DEFAULT NULL,
  `BESCHREIBUNG` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `ERNAHRUNGSKATEGORIEN`
--

INSERT INTO `ERNAHRUNGSKATEGORIEN` (`KATEGORIENR`, `KATEGORIE`, `BESCHREIBUNG`) VALUES
(1, 'Vegan', 'Darf keine tierischen Produkte enthalten.'),
(2, 'Vegatarisch', 'Darf kein Fleisch enthalten.'),
(3, 'Frutarisch', 'Vegetarische Ernährungsweise die auf Früchten basiert.'),
(4, 'ohne Gentechnik', 'Darf keine Gentechnisch modifizierten Lebensmittel enthalten.'),
(5, 'Laktosefrei', 'Darf keine Milchprodukte enthalten.'),
(6, 'Glutenfrei', 'Darf kein Gluten enthalten.'),
(7, 'Low Carb', 'Kohlenhydrate minimierte ernährungsweise.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `KUNDE`
--

CREATE TABLE `KUNDE` (
  `KUNDENNR` int(11) NOT NULL,
  `NACHNAME` varchar(50) DEFAULT NULL,
  `VORNAME` varchar(50) DEFAULT NULL,
  `GEBURTSDATUM` date DEFAULT NULL,
  `STRASSE` varchar(50) DEFAULT NULL,
  `HAUSNR` varchar(6) DEFAULT NULL,
  `PLZ` varchar(5) DEFAULT NULL,
  `ORT` varchar(50) DEFAULT NULL,
  `TELEFON` varchar(25) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `KUNDE`
--

INSERT INTO `KUNDE` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES
(2001, 'Wellensteyn', 'Kira', '1990-05-05', 'Eppendorfer Landstrasse', '104', '20249', 'Hamburg', '040/443322', 'k.wellensteyn@yahoo.de'),
(2002, 'Foede', 'Dorothea', '2000-03-24', 'Ohmstraße', '23', '22765', 'Hamburg', '040/543822', 'd.foede@web.de'),
(2003, 'Leberer', 'Sigrid', '1989-09-21', 'Bilser Berg', '6', '20459', 'Hamburg', '0175/1234588', 'sigrid@leberer.de'),
(2004, 'Soerensen', 'Hanna', '1974-04-03', 'Alter Teichweg', '95', '22049', 'Hamburg', '040/634578', 'h.soerensen@yahoo.de'),
(2005, 'Schnitter', 'Marten', '1964-04-17', 'Stübels', '10', '22835', 'Barsbüttel', '0176/447587', 'schni_mart@gmail.com'),
(2006, 'Maurer', 'Belinda', '1978-09-09', 'Grotelertwiete', '4a', '21075', 'Hamburg', '040/332189', 'belinda1978@yahoo.de'),
(2007, 'Gessert', 'Armin', '1978-01-29', 'Küstersweg', '3', '21079', 'Hamburg', '040/67890', 'armin@gessert.de'),
(2008, 'Haessig', 'Jean-Marc', '1982-08-30', 'Neugrabener Bahnhofstraße', '30', '21149', 'Hamburg', '0178-67013390', 'jm@haessig.de'),
(2009, 'Urocki', 'Eric', '1999-12-04', 'Elbchaussee', '228', '22605', 'Hamburg', '0152-96701390', 'urocki@outlook.de');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `LIEFERANT`
--

CREATE TABLE `LIEFERANT` (
  `LIEFERANTENNR` int(11) NOT NULL,
  `LIEFERANTENNAME` varchar(50) DEFAULT NULL,
  `STRASSE` varchar(50) DEFAULT NULL,
  `HAUSNR` varchar(6) DEFAULT NULL,
  `PLZ` varchar(5) DEFAULT NULL,
  `ORT` varchar(50) DEFAULT NULL,
  `TELEFON` varchar(25) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `LIEFERANT`
--

INSERT INTO `LIEFERANT` (`LIEFERANTENNR`, `LIEFERANTENNAME`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES
(101, 'Bio-Hof Müller', 'Dorfstraße', '74', '24354', 'Weseby', '04354-9080', 'mueller@biohof.de'),
(102, 'Obst-Hof Altes Land', 'Westerjork 74', '76', '21635', 'Jork', '04162-4523', 'info@biohof-altesland.de'),
(103, 'Molkerei Henning', 'Molkereiwegkundekunde', '13', '19217', 'Dechow', '038873-8976', 'info@molkerei-henning.de');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `REZEPTALERGENE`
--

CREATE TABLE `REZEPTALERGENE` (
  `REZEPTNR` int(11) NOT NULL,
  `ALLERGENNR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `REZEPTALERGENE`
--

INSERT INTO `REZEPTALERGENE` (`REZEPTNR`, `ALLERGENNR`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 3),
(3, 4),
(3, 5),
(4, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `REZEPTE`
--

CREATE TABLE `REZEPTE` (
  `REZEPTNR` int(11) NOT NULL,
  `REZEPT` varchar(99) DEFAULT NULL,
  `ZUBEREITUNG` text DEFAULT NULL,
  `PORTIONEN` int(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `REZEPTE`
--

INSERT INTO `REZEPTE` (`REZEPTNR`, `REZEPT`, `ZUBEREITUNG`, `PORTIONEN`) VALUES
(1, 'Lachslasagne', 'Den Spinat 5 min vorgaren, auspressen bis er ganz trocken ist und würzen. Den Lachs etwas auftauen lassen, in kleine Stücke schneiden und mit Zitrone, Salz und Pfeffer würzen. Für die Bechamel-Soße wird die Butter im Topf erhitzt, das Mehl verrührt und mit der Milch aufgegossen. Die Brühe dazugeben und 5 min. kochen lassen. Danach die Sahne dazurühren und nochmals aufkochen lassen. Schließlich den Parmesan hinzufügen und mit Pfeffer und Muskat abschmecken. Jetzt alles abwechselnd in eine feuerfeste Form schichten, zuerst die Soße, dann Lasagneblätter, Soße, Spinat, Lachs, Käse, Lasagneblätter, usw. Letzte Schicht ist Soße. Die Lasagne anschließend bei 200 Grad 45 min. in den Backofen.', 4),
(2, 'Thaicurry mit Hähnchen', 'Die Hühnerbrust in Streifen schneiden und in einer Marinade aus Sojasauce, Pfeffer und Zucker ca. 1 Stunde marinieren. Im Wok oder in der Pfanne gut anbraten. Herausnehmen. Gemischtes Gemüse und Bambussprossen waschen und sehr fein schneiden, ebenfalls anbraten, dann herausnehmen. Die Currypaste und die Kokosmilch im Wok verrühren und kurz (!) durchköcheln lassen. Dann Fleisch und Gemüse wieder zugeben und noch kurz köcheln lassen. Mit Sojasauce abschmecken. In der Zwischenzeit den Reis kochen und abtropfen lassen.', 4),
(3, 'Kartoffelsuppe', 'Kartoffeln und Karotte schälen und in grobe Würfel schneiden. Zwiebel würfeln. Lauch in Ringe schneiden. Zwiebeln in etwas Olivenöl glasig dünsten, Lauch dazugeben. Mit der Gemüsebrühe ablöschen. Die gewürfelten Kartoffeln und Karotte in die Brühe geben. Alles für ca. 20 min köcheln lassen. Anschließend alles mit dem Pürierstab zu einer Suppe pürieren, mit Pfeffer und Muskat abschmecken. Die in Scheiben geschnittenen Würstchen in den Suppenteller geben und die heiße Kartoffelsuppe darüber gießen.', 4),
(4, 'Milchreis mit Apfelmus', 'In einem großen Topf die Butter schmelzen, anschließend den Rundkornreis kurz in der Butter anschwitzen. Nun die zimmerwarme Vollmilch sowie 4 EL Zucker hinzugeben. Vanillezucker hinzugeben. Alles unter vorsichtigem Rühren mit dem Holzkochlöffel einmal aufkochen lassen und dabei aufpassen, dass sich nichts am Topfboden ansetzt. Nun den Topf auf eine Herdplatte stellen, die auf kleinster Stufe heizt. Den Milchreis im geschlossenen Topf exakt 30 Minuten ziehen lassen. Nach der Hälfte der Zeit einmal umrühren. Nach 30 Minuten ist der Milchreis servierfertig, er kann warm oder kalt gegessen werden. Nach Geschmack Apfelmus dazu reichen.', 4),
(5, 'Sommerlicher Couscous-Salat', 'Couscous in eine Schale geben und mit kochender Gemüsebrühe übergießen. Kurz umrühren, quellen lassen und evtl. Wasser nachgeben. Inzwischen das Gemüse waschen und anschließend würfeln. Die Kräuter waschen und kleinhacken. Diese Zutaten mit dem Couscous vermischen. Nun Öl hinzugeben und zum Schluss mit Salz und Pfeffer abschmecken.', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `REZEPTKATEGORIEN`
--

CREATE TABLE `REZEPTKATEGORIEN` (
  `REZEPTNR` int(11) NOT NULL,
  `KATEGORIENR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `REZEPTKATEGORIEN`
--

INSERT INTO `REZEPTKATEGORIEN` (`REZEPTNR`, `KATEGORIENR`) VALUES
(1, 4),
(1, 7),
(2, 5),
(3, 1),
(3, 2),
(3, 5),
(4, 4),
(5, 1),
(5, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `REZEPTZUTATEN`
--

CREATE TABLE `REZEPTZUTATEN` (
  `REZEPTNR` int(11) NOT NULL,
  `ZUTATENNR` int(11) NOT NULL,
  `MENGE` int(99) DEFAULT NULL,
  `EINHEIT` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `REZEPTZUTATEN`
--

INSERT INTO `REZEPTZUTATEN` (`REZEPTNR`, `ZUTATENNR`, `MENGE`, `EINHEIT`) VALUES
(1, 9002, 300, 'gramm'),
(1, 9003, 800, 'gramm'),
(1, 9004, 500, 'gramm'),
(1, 9005, 150, 'gramm'),
(1, 3003, 50, 'gramm'),
(1, 9006, 2, 'Esslöffel'),
(1, 3001, 250, 'milliliter'),
(1, 7043, 125, 'milliliter'),
(1, 9007, 200, 'gramm'),
(1, 9008, 75, 'gramm'),
(1, 9009, 1, 'Stück'),
(1, 9010, 1, 'Prise'),
(1, 9011, 1, 'Prise'),
(2, 9012, 500, 'gramm'),
(2, 9013, 250, 'gramm'),
(2, 9014, 2, 'Esslöffel'),
(2, 9015, 1, 'Esslöffel'),
(2, 1009, 1, 'Zehe'),
(2, 9016, 1, 'Glas'),
(2, 9017, 125, 'milliliter'),
(2, 9018, 1, 'Esslöffel'),
(2, 9010, 1, 'Prise'),
(3, 1006, 5, 'Stück'),
(3, 1005, 1, 'Stück'),
(3, 1008, 1, 'Stange'),
(3, 1002, 1, 'Stück'),
(3, 7043, 1000, 'milliliter'),
(3, 9001, 2, 'Stück'),
(3, 9019, 1, 'Prise'),
(3, 9010, 1, 'Prise'),
(3, 1012, 1, 'Prise'),
(3, 9020, 1, 'Prise'),
(3, 9011, 1, 'Prise'),
(4, 3001, 1, 'Liter'),
(4, 9021, 250, 'gramm'),
(4, 9015, 4, 'Esslöffel'),
(4, 3003, 1, 'Esslöffel'),
(4, 9022, 1, 'Päckchen'),
(4, 9023, 1, 'Glas'),
(5, 6408, 200, 'gramm'),
(5, 7043, 300, 'milliliter'),
(5, 1003, 3, 'Stück'),
(5, 1001, 1, 'Stück'),
(5, 9027, 1, 'Stück'),
(5, 9024, 3, 'Esslöffel'),
(5, 9025, 2, 'Esslöffel'),
(5, 9026, 1, 'Prise'),
(5, 9010, 1, 'Prise');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ZUTAT`
--

CREATE TABLE `ZUTAT` (
  `ZUTATENNR` int(11) NOT NULL,
  `BEZEICHNUNG` varchar(50) DEFAULT NULL,
  `EINHEIT` varchar(25) DEFAULT NULL,
  `NETTOPREIS` decimal(10,2) DEFAULT NULL,
  `BESTAND` int(11) DEFAULT NULL,
  `LIEFERANT` int(11) DEFAULT NULL,
  `KALORIEN` int(11) DEFAULT NULL,
  `KOHLENHYDRATE` decimal(10,2) DEFAULT NULL,
  `PROTEIN` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `ZUTAT`
--

INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES
(1001, 'Zucchini', 'Stück', '0.89', 100, 101, 19, '2.00', '1.60'),
(1002, 'Zwiebel', 'Stück', '0.15', 50, 101, 28, '4.90', '1.20'),
(1003, 'Tomate', 'Stück', '0.45', 50, 101, 18, '2.60', '1.00'),
(1004, 'Schalotte', 'Stück', '0.20', 500, 101, 25, '3.30', '1.50'),
(1005, 'Karotte', 'Stück', '0.30', 500, 101, 41, '10.00', '0.90'),
(1006, 'Kartoffel', 'Stück', '0.15', 1500, 101, 71, '14.60', '2.00'),
(1007, 'Rucola', 'Bund', '0.90', 10, 101, 27, '2.10', '2.60'),
(1008, 'Lauch', 'Stück', '1.20', 35, 101, 29, '3.30', '2.10'),
(1009, 'Knoblauch', 'Stück', '0.25', 250, 101, 141, '28.40', '6.10'),
(1010, 'Basilikum', 'Bund', '1.30', 10, 101, 41, '5.10', '3.10'),
(1011, 'Süßkartoffel', 'Stück', '2.00', 200, 101, 86, '20.00', '1.60'),
(1012, 'Schnittlauch', 'Bund', '0.90', 10, 101, 28, '1.00', '3.00'),
(2001, 'Apfel', 'Stück', '1.20', 750, 102, 54, '14.40', '0.30'),
(3001, 'Vollmilch. 3.5%', 'Liter', '1.50', 50, 103, 65, '4.70', '3.40'),
(3002, 'Mozzarella', 'Packung', '3.50', 20, 103, 241, '1.00', '18.10'),
(3003, 'Butter', 'Stück', '3.00', 50, 103, 741, '0.60', '0.70'),
(4001, 'Ei', 'Stück', '0.40', 300, 102, 137, '1.50', '11.90'),
(5001, 'Wiener Würstchen', 'Paar', '1.80', 40, 101, 331, '1.20', '9.90'),
(6300, 'Kichererbsen', 'Dose', '1.00', 400, 103, 150, '21.20', '9.00'),
(6408, 'Couscous', 'Packung', '1.90', 15, 102, 351, '67.00', '12.00'),
(7043, 'Gemüsebrühe', 'Würfel', '0.20', 4000, 101, 1, '0.50', '0.50'),
(9001, 'Tofu-Würstchen', 'Stück', '1.80', 20, 103, 252, '7.00', '17.00'),
(9002, 'Lasagneplatten', 'Stück', '0.21', 500, 101, 23, '12.00', '2.00'),
(9003, 'Spinat', 'kilogramm', '0.45', 5, 102, 12, '5.00', '10.00'),
(9004, 'Lachs', 'kilogramm', '1.42', 2, 101, 45, '15.00', '20.00'),
(9005, 'Käse', 'kilogramm', '0.70', 2, 101, 250, '1.00', '3.00'),
(9006, 'Mehl', 'kilogramm', '0.23', 6, 101, 23, '3.00', '1.00'),
(9007, 'Sahne', 'Liter', '0.45', 1, 101, 120, '4.00', '3.00'),
(9008, 'Parmesan', 'gramm', '55.00', 1, 101, 121, '2.50', '3.10'),
(9009, 'Zitrone', 'Stück', '0.23', 200, 101, 24, '1.20', '0.70'),
(9010, 'Pfeffer', 'gramm', '0.21', 470, 101, 12, '0.30', '0.30'),
(9011, 'Muskat', 'gramm', '0.45', 400, 101, 17, '0.70', '0.40'),
(9012, 'Hähnchenbrustfilet', 'gramm', '0.76', 500, 101, 26, '12.00', '43.00'),
(9013, 'Reis', 'kilogramm', '0.12', 15, 101, 56, '14.00', '3.00'),
(9014, 'Sojasauce', 'Liter', '0.42', 1, 101, 34, '1.00', '2.00'),
(9015, 'Zucker', 'kilogramm', '0.41', 3, 101, 142, '0.10', '0.20'),
(9016, 'Bambussprossen', 'Stück', '0.21', 200, 101, 45, '3.00', '5.00'),
(9017, 'Kokosmilch', 'Liter', '0.24', 1, 101, 34, '12.00', '15.00'),
(9018, 'Currypaste', 'gramm', '0.65', 500, 101, 23, '4.00', '3.00'),
(9019, 'Petersilie', 'Bund', '0.32', 15, 101, 12, '1.00', '1.00'),
(9020, 'Majoran', 'gramm', '0.22', 500, 101, 5, '0.41', '0.20'),
(9021, 'Milchreis', 'kilogramm', '1.30', 4, 101, 67, '2.00', '3.00'),
(9022, 'Vanillezucker', 'gramm', '0.76', 400, 101, 87, '0.40', '0.30'),
(9023, 'Apfelmus', 'gramm', '0.96', 450, 101, 45, '2.40', '1.30'),
(9024, 'Oregano', 'gramm', '0.32', 130, 101, 23, '2.60', '3.30'),
(9025, 'Pflanzenöl', 'Liter', '0.42', 5, 101, 76, '6.60', '3.00'),
(9026, 'Salz', 'kilogramm', '0.10', 5, 101, 3, '0.00', '0.00'),
(9027, 'Paprikaschote', 'Stück', '0.34', 200, 101, 45, '2.00', '0.70');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `ALLERGENE`
--
ALTER TABLE `ALLERGENE`
  ADD PRIMARY KEY (`ALLERGENNR`);

--
-- Indizes für die Tabelle `BESTELLUNG`
--
ALTER TABLE `BESTELLUNG`
  ADD PRIMARY KEY (`BESTELLNR`),
  ADD KEY `KUNDENNR` (`KUNDENNR`);

--
-- Indizes für die Tabelle `BESTELLUNGZUTAT`
--
ALTER TABLE `BESTELLUNGZUTAT`
  ADD PRIMARY KEY (`BESTELLNR`,`ZUTATENNR`),
  ADD KEY `ZUTATENNR` (`ZUTATENNR`);

--
-- Indizes für die Tabelle `ERNAHRUNGSKATEGORIEN`
--
ALTER TABLE `ERNAHRUNGSKATEGORIEN`
  ADD PRIMARY KEY (`KATEGORIENR`);

--
-- Indizes für die Tabelle `KUNDE`
--
ALTER TABLE `KUNDE`
  ADD PRIMARY KEY (`KUNDENNR`);

--
-- Indizes für die Tabelle `LIEFERANT`
--
ALTER TABLE `LIEFERANT`
  ADD PRIMARY KEY (`LIEFERANTENNR`);

--
-- Indizes für die Tabelle `REZEPTALERGENE`
--
ALTER TABLE `REZEPTALERGENE`
  ADD KEY `REZEPTNR` (`REZEPTNR`),
  ADD KEY `ALLERGENNR` (`ALLERGENNR`);

--
-- Indizes für die Tabelle `REZEPTE`
--
ALTER TABLE `REZEPTE`
  ADD PRIMARY KEY (`REZEPTNR`);

--
-- Indizes für die Tabelle `REZEPTKATEGORIEN`
--
ALTER TABLE `REZEPTKATEGORIEN`
  ADD KEY `REZEPTNR` (`REZEPTNR`),
  ADD KEY `KATEGORIENR` (`KATEGORIENR`);

--
-- Indizes für die Tabelle `REZEPTZUTATEN`
--
ALTER TABLE `REZEPTZUTATEN`
  ADD KEY `REZEPTNR` (`REZEPTNR`),
  ADD KEY `ZUTATENNR` (`ZUTATENNR`);

--
-- Indizes für die Tabelle `ZUTAT`
--
ALTER TABLE `ZUTAT`
  ADD PRIMARY KEY (`ZUTATENNR`),
  ADD KEY `LIEFERANT` (`LIEFERANT`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `ALLERGENE`
--
ALTER TABLE `ALLERGENE`
  MODIFY `ALLERGENNR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `BESTELLUNG`
--
ALTER TABLE `BESTELLUNG`
  MODIFY `BESTELLNR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `ERNAHRUNGSKATEGORIEN`
--
ALTER TABLE `ERNAHRUNGSKATEGORIEN`
  MODIFY `KATEGORIENR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `REZEPTE`
--
ALTER TABLE `REZEPTE`
  MODIFY `REZEPTNR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `BESTELLUNG`
--
ALTER TABLE `BESTELLUNG`
  ADD CONSTRAINT `BESTELLUNG_ibfk_1` FOREIGN KEY (`KUNDENNR`) REFERENCES `KUNDE` (`KUNDENNR`);

--
-- Constraints der Tabelle `BESTELLUNGZUTAT`
--
ALTER TABLE `BESTELLUNGZUTAT`
  ADD CONSTRAINT `BESTELLUNGZUTAT_ibfk_1` FOREIGN KEY (`BESTELLNR`) REFERENCES `BESTELLUNG` (`BESTELLNR`),
  ADD CONSTRAINT `BESTELLUNGZUTAT_ibfk_2` FOREIGN KEY (`ZUTATENNR`) REFERENCES `ZUTAT` (`ZUTATENNR`);

--
-- Constraints der Tabelle `REZEPTALERGENE`
--
ALTER TABLE `REZEPTALERGENE`
  ADD CONSTRAINT `REZEPTALERGENE_ibfk_1` FOREIGN KEY (`REZEPTNR`) REFERENCES `REZEPTE` (`REZEPTNR`),
  ADD CONSTRAINT `REZEPTALERGENE_ibfk_2` FOREIGN KEY (`ALLERGENNR`) REFERENCES `ALLERGENE` (`ALLERGENNR`);

--
-- Constraints der Tabelle `REZEPTKATEGORIEN`
--
ALTER TABLE `REZEPTKATEGORIEN`
  ADD CONSTRAINT `REZEPTKATEGORIEN_ibfk_1` FOREIGN KEY (`REZEPTNR`) REFERENCES `REZEPTE` (`REZEPTNR`),
  ADD CONSTRAINT `REZEPTKATEGORIEN_ibfk_2` FOREIGN KEY (`KATEGORIENR`) REFERENCES `ERNAHRUNGSKATEGORIEN` (`KATEGORIENR`);

--
-- Constraints der Tabelle `REZEPTZUTATEN`
--
ALTER TABLE `REZEPTZUTATEN`
  ADD CONSTRAINT `REZEPTZUTATEN_ibfk_1` FOREIGN KEY (`REZEPTNR`) REFERENCES `REZEPTE` (`REZEPTNR`),
  ADD CONSTRAINT `REZEPTZUTATEN_ibfk_2` FOREIGN KEY (`ZUTATENNR`) REFERENCES `ZUTAT` (`ZUTATENNR`);

--
-- Constraints der Tabelle `ZUTAT`
--
ALTER TABLE `ZUTAT`
  ADD CONSTRAINT `ZUTAT_ibfk_1` FOREIGN KEY (`LIEFERANT`) REFERENCES `LIEFERANT` (`LIEFERANTENNR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
