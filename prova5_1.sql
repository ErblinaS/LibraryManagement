-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2023 at 07:07 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prova5_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_ID` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_ID`, `first_name`, `last_name`) VALUES
(1, 'Goodman', 'Nelson'),
(2, 'Sir Karl', 'Popper'),
(3, 'Arthur C.', 'Clarke'),
(4, 'Sarah J', 'Maas'),
(5, 'Nietzsche', 'Friedrich'),
(6, 'Cecil', 'Jenkins'),
(7, 'Mike', 'Ashley'),
(8, 'Jonathan', 'Clements'),
(9, 'Edith', 'Durham'),
(10, 'Elez', 'Biberaj'),
(11, 'Andrew', 'Nagorski'),
(12, 'Matthew', 'Nicholls'),
(13, 'Robin', 'Cross'),
(14, 'Kristo', 'Frasheri'),
(15, 'Jusuf', 'Buxhovi'),
(16, 'Aristotle', ''),
(17, 'Plato', ''),
(18, 'Ernest', 'Becker'),
(19, 'Soren', 'Kierkegaard'),
(20, 'Ben', 'Dupre'),
(21, 'James M.', 'Russell'),
(22, 'Diana', 'Gabaldon'),
(23, 'George R.R', 'Martin'),
(24, 'J.K.', 'Rowling'),
(25, 'William', 'Gibson'),
(26, 'Andy', 'Weir'),
(27, 'Philip K.', 'Dick'),
(28, 'Lauren', 'Wilkinson'),
(29, 'Aaron', 'Rosenberg'),
(30, 'Kim Stanley', 'Robinson'),
(31, 'Lee', 'Child'),
(32, 'Neil', 'Gaiman'),
(33, 'Daniel', 'Smith'),
(34, 'John', 'Grisham'),
(35, 'Agatha', 'Christie'),
(36, 'Dan', 'Brown'),
(37, 'Jeffrey', 'Archer'),
(38, 'Caroline', 'Kepnes'),
(39, 'Rahpl', 'Ellison'),
(40, 'Jack', 'London'),
(41, 'Alexandre', 'Dumas'),
(42, 'Cassandra', 'Robbins'),
(43, 'Mark', 'Greaney'),
(44, 'James', 'Rollins'),
(45, 'Joseph', 'Conrad'),
(46, 'Paul', 'Ekman'),
(47, 'Ellen', 'Forney'),
(48, 'Rhonda', 'Byrne'),
(49, 'Marco', 'Navoni'),
(50, 'Joseph', 'Condrad'),
(51, 'Jeffrey M.', 'Schwartz'),
(52, 'Canter and David ', ''),
(53, 'Nicholas', 'Sparks'),
(54, 'Anna', 'Todd'),
(55, 'Colleen', 'Hoover'),
(56, 'Danielle', 'Steel'),
(57, 'Sophie', 'Kinsella'),
(58, 'Barbara', 'Taylor'),
(59, 'Kevin', 'Kwan'),
(60, 'George W.', 'Bush'),
(61, 'Karen', 'Blumenthal'),
(62, 'Barack', 'Obama'),
(63, 'Mother', 'Teresa'),
(64, 'Chris', 'Kyle'),
(65, 'Alex', 'Ferguson'),
(66, 'Alan', 'Crawford'),
(67, 'Michelle', 'Obama'),
(68, 'Chris', 'Salewicz'),
(69, 'Trevor', 'Noah'),
(70, 'Irvin', 'Yalom');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ISBN` char(13) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `page_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ISBN`, `book_name`, `page_count`) VALUES
('9780007255535', 'Bob Marley The Untold Story', 420),
('9780007304097', 'Breaking The Rules', 432),
('9780007310173', 'Green Mars', 571),
('9780007527533', 'Abc Murders', 256),
('9780007548248', 'A Clash Of Kings', 761),
('9780008164904', 'Big Four', 282),
('9780062561435', 'Brain Lock', 272),
('9780099590750', 'A time to kill', 672),
('9780140444490', 'Fear And Trembling', 200),
('9780140449037', 'Protagoras And Meno', 176),
('9780140449747', 'Phaedrus', 68),
('9780199586431', 'Aristotleeudemian Ethics Owc', 195),
('9780241237229', 'Agency', 400),
('9780241491515', 'A Promised Land', 768),
('9780241953518', 'All tomorrows Parties', 368),
('9780330517959', 'Be Careful What You Wish For', 400),
('9780340919408', 'Alex Ferguson My Autobiography', 341),
('9780349407425', 'Creatures Of A Day', 215),
('9780349410067', 'Becoming Myself', 352),
('9780349700991', 'American Spy', 304),
('9780415249928', 'All Life Is Problem Solving', 182),
('9780415714815', 'Criminal Psychology', 194),
('9780451457998', '2001 A Space Odyssey', 221),
('9780486264721', 'The call of the Wild’', 64),
('9780486298689', 'Beyond Good and Evil', 150),
('9780486456430', 'The count of the Monte Cristo', 448),
('9780486821566', 'American Sniper Film Tie In', 435),
('9780515147018', 'The Gray Man', 464),
('9780525572671', 'Artemis', 309),
('9780552160896', 'Angels and Demons', 768),
('9780552165884', 'A Perfect Life', 448),
('9780553818130', '61 Hours', 448),
('9780586056998', '2010 Odyssey Two', 322),
('9780586203194', '2061 Odyssey Three', 308),
('9780595443390', 'The Eye of God', 643),
('9780674290716', 'Fact, Fiction, and Forecast', 160),
('9780679732761', 'Invisible Man', 581),
('9780751541168', 'A Bend In The Road', 370),
('9780751551877', 'A Walk to Remember', 208),
('9780751565362', 'Harry Potter And The Cursed Child', 336),
('9780753556603', '41 A Portrait Of My Father', 294),
('9780753817650', 'Emotions Revealed', 282),
('9780755334155', 'Fragile Things', 400),
('9780857504517', 'Blue Moon', 447),
('9780976714088', 'Kosova', 519),
('9781118641101', 'Angela Merkel A Chancellorship Forged In Crisis', 224),
('9781408855669', 'Harry Potter And The Chamber Of Secrets', 341),
('9781408855683', 'Harry Potter And The Goblet Of Fire', 636),
('9781408855706', 'Harry Potter And The Half Blood Prince Vol 6', 672),
('9781408855713', 'Harry Potter And The Deathly Hallows Vol 7', 784),
('9781408873823', 'A Biography Of Hillary Rodham Clinton', 645),
('9781416550860', 'Beyond The Dark Portal', 432),
('9781471154621', 'November 9', 343),
('9781471192647', 'Hidden Bodies', 448),
('9781472106896', 'Marbles', 248),
('9781473222342', 'Against The Fall Of Night', 223),
('9781473635302', 'Born A Crime', 372),
('9781501104008', 'After We Collided', 688),
('9781501104046', 'After We Fell', 848),
('9781501181115', '1941 The Year Germany Lost The War', 400),
('9781505234725', 'The three musketeers', 398),
('9781524763138', 'Becoming', 448),
('9781526606167', 'Harry Potter And The Prisoner Of Azkaban Vol 3', 464),
('9781526617163', 'A Court Of Mist And Fury', 656),
('9781526617187', 'A Court Of Frost And Starlight', 261),
('9781529342321', 'A time for Mercy', 480),
('9781573222867', 'Blade Runner', 208),
('9781643137506', 'Between two Kings', 496),
('9781780872643', '50 Events You Really Need To Know History Of War', 208),
('9781782401315', '30 Second Ancient Rome', 160),
('9781784751326', 'A Breath Of Snow And Ashes Outlander 6', 992),
('9781786495792', 'Crazy Rich Asians Film Tie In', 448),
('9781787631977', 'Christmas Shopaholic', 425),
('9781788164269', 'Denial of Death', 336),
('9781841195513', 'A Brief History Of British Kings & Queens', 623),
('9781845290764', 'A Brief History Of The Vikings', 352),
('9781845298685', 'A Brief History Of France', 336),
('9781846045219', 'A Simple Path', 288),
('9781847370297', 'The Secret', 198),
('9781848667358', '50 Philosophy Ideas You Really Need To Know', 208),
('9781849010016', 'A Brief Guide To Philosophical Classics', NULL),
('9781853260650', 'The Secret Agent', 256),
('9781903616093', 'Albanian And The Albanians', 306),
('9781909489943', 'Big Game', 272),
('9781936594146', 'Heart of darkness', 72),
('9781982128401', 'After', 608),
('9788854413528', ' Leonardo Da Vinci And The Secrets Of The Codex Atlanticus ', 208),
('9789358583993', 'Power', 312),
('9789928195029', 'Albania And China A Study Of An Unequal Alliance', 195),
('9789954585485', 'Skenderbeu Dhe Lufta Shqiptaro Osmane Ne Shek 15', NULL),
('9798611586020', 'White Fang', 116);

-- --------------------------------------------------------

--
-- Table structure for table `book_authors`
--

CREATE TABLE `book_authors` (
  `ISBN` char(13) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `author_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `book_authors`
--

INSERT INTO `book_authors` (`ISBN`, `author_ID`) VALUES
('9780007255535', 68),
('9780007304097', 58),
('9780007310173', 30),
('9780007527533', 35),
('9780007548248', 23),
('9780008164904', 35),
('9780062561435', 51),
('9780099590750', 34),
('9780140444490', 19),
('9780140449037', 17),
('9780140449747', 17),
('9780199586431', 16),
('9780241237229', 25),
('9780241491515', 62),
('9780241953518', 25),
('9780330517959', 37),
('9780340919408', 65),
('9780349407425', 70),
('9780349410067', 70),
('9780349700991', 28),
('9780415249928', 2),
('9780415714815', 52),
('9780451457998', 3),
('9780486264721', 40),
('9780486298689', 5),
('9780486456430', 41),
('9780486821566', 64),
('9780515147018', 43),
('9780525572671', 26),
('9780552160896', 36),
('9780552165884', 56),
('9780553818130', 31),
('9780586056998', 3),
('9780586203194', 3),
('9780595443390', 44),
('9780674290716', 1),
('9780679732761', 39),
('9780751541168', 53),
('9780751551877', 53),
('9780751565362', 24),
('9780753556603', 60),
('9780753817650', 46),
('9780755334155', 32),
('9780857504517', 31),
('9780976714088', 15),
('9781118641101', 66),
('9781408855669', 24),
('9781408855683', 24),
('9781408855706', 24),
('9781408855713', 24),
('9781408873823', 61),
('9781416550860', 29),
('9781471154621', 55),
('9781471192647', 38),
('9781472106896', 47),
('9781473222342', 3),
('9781473635302', 69),
('9781501104008', 54),
('9781501104046', 54),
('9781501181115', 11),
('9781505234725', 41),
('9781524763138', 67),
('9781526606167', 24),
('9781526617163', 4),
('9781526617187', 4),
('9781529342321', 34),
('9781573222867', 27),
('9781643137506', 41),
('9781780872643', 13),
('9781782401315', 12),
('9781784751326', 22),
('9781786495792', 59),
('9781787631977', 57),
('9781788164269', 18),
('9781841195513', 7),
('9781845290764', 8),
('9781845298685', 6),
('9781846045219', 63),
('9781847370297', 48),
('9781848667358', 20),
('9781849010016', 21),
('9781853260650', 50),
('9781903616093', 9),
('9781909489943', 33),
('9781936594146', 45),
('9781982128401', 54),
('9788854413528', 49),
('9789358583993', 42),
('9789928195029', 10),
('9789954585485', 14),
('9798611586020', 40);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `ISBN` char(13) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `ID_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`ISBN`, `ID_type`) VALUES
('9780007255535', 6),
('9780007304097', 3),
('9780007310173', 1),
('9780007527533', 2),
('9780007548248', 5),
('9780008164904', 2),
('9780062561435', 9),
('9780099590750', 2),
('9780140444490', 8),
('9780140449037', 8),
('9780140449747', 8),
('9780199586431', 8),
('9780241237229', 1),
('9780241491515', 6),
('9780241953518', 1),
('9780330517959', 2),
('9780340919408', 6),
('9780349407425', 9),
('9780349410067', 9),
('9780349700991', 2),
('9780415249928', 8),
('9780415714815', 9),
('9780451457998', 1),
('9780451457998', 2),
('9780451457998', 5),
('9780451457998', 7),
('9780451457998', 10),
('9780486264721', 7),
('9780486298689', 1),
('9780486298689', 8),
('9780486456430', 7),
('9780486821566', 6),
('9780515147018', 7),
('9780525572671', 1),
('9780552160896', 2),
('9780552165884', 1),
('9780552165884', 3),
('9780553818130', 2),
('9780586056998', 1),
('9780586203194', 1),
('9780595443390', 7),
('9780674290716', 8),
('9780679732761', 7),
('9780751541168', 3),
('9780751551877', 3),
('9780751565362', 5),
('9780753556603', 6),
('9780753817650', 9),
('9780755334155', 1),
('9780857504517', 2),
('9780976714088', 4),
('9781118641101', 6),
('9781408855669', 5),
('9781408855683', 5),
('9781408855706', 2),
('9781408855706', 5),
('9781408855706', 7),
('9781408855713', 2),
('9781408855713', 5),
('9781408855713', 7),
('9781408873823', 6),
('9781416550860', 1),
('9781471154621', 3),
('9781471192647', 2),
('9781472106896', 9),
('9781473222342', 1),
('9781473635302', 6),
('9781501104008', 3),
('9781501104046', 3),
('9781501181115', 4),
('9781501181115', 6),
('9781505234725', 7),
('9781524763138', 6),
('9781526606167', 2),
('9781526606167', 5),
('9781526606167', 7),
('9781526617163', 5),
('9781526617187', 5),
('9781529342321', 2),
('9781573222867', 1),
('9781643137506', 7),
('9781780872643', 4),
('9781782401315', 4),
('9781784751326', 3),
('9781784751326', 4),
('9781784751326', 5),
('9781786495792', 3),
('9781787631977', 3),
('9781788164269', 8),
('9781841195513', 4),
('9781845290764', 4),
('9781845290764', 6),
('9781845298685', 4),
('9781846045219', 6),
('9781847370297', 9),
('9781848667358', 8),
('9781849010016', 2),
('9781849010016', 7),
('9781849010016', 8),
('9781853260650', 9),
('9781903616093', 4),
('9781909489943', 1),
('9781909489943', 3),
('9781936594146', 7),
('9781982128401', 3),
('9788854413528', 9),
('9789358583993', 7),
('9789928195029', 4),
('9789954585485', 2),
('9789954585485', 4),
('9789954585485', 7),
('9798611586020', 7);

-- --------------------------------------------------------

--
-- Table structure for table `book_copy`
--

CREATE TABLE `book_copy` (
  `bc_ID` int(11) NOT NULL,
  `ISBN` char(13) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `publisher_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_copy`
--

INSERT INTO `book_copy` (`bc_ID`, `ISBN`, `publisher_ID`) VALUES
(1, '9780674290716', 1),
(2, '9780415249928', 2),
(3, '9780586056998', 3),
(4, '9780586203194', 3),
(5, '9781526617187', 4),
(6, '9781526617163', 4),
(7, '9780486298689', 5),
(8, '9781845298685', 6),
(9, '9781841195513', 7),
(10, '9781845290764', 7),
(11, '9781903616093', 8),
(12, '9789928195029', 9),
(13, '9781501181115', 10),
(14, '9781782401315', 10),
(15, '9781780872643', 11),
(16, '9780976714088', 12),
(17, '9780199586431', 13),
(18, '9780140449747', 14),
(19, '9780140449037', 15),
(20, '9781788164269', 16),
(21, '9780140444490', 17),
(22, '9781848667358', 17),
(23, '9781784751326', 17),
(24, '9780007548248', 12),
(25, '9781408855669', 7),
(26, '9781408855683', 18),
(27, '9780751565362', 3),
(28, '9781408855713', 4),
(29, '9781408855706', 4),
(30, '9781526606167', 7),
(31, '9781849010016', 8),
(32, '9789954585485', 4),
(33, '9781473222342', 19),
(34, '9780241953518', 17),
(35, '9780241237229', 17),
(36, '9781573222867', 19),
(37, '9781416550860', 10),
(38, '9780007310173', 3),
(39, '9780525572671', 22),
(40, '9780755334155', 20),
(41, '9781909489943', 23),
(42, '9781529342321', 24),
(43, '9780099590750', 25),
(44, '9780553818130', 26),
(45, '9780857504517', 27),
(46, '9780349700991', 7),
(47, '9780007527533', 3),
(48, '9780008164904', 3),
(49, '9780552160896', 28),
(50, '9780330517959', 29),
(51, '9781471192647', 10),
(52, '9780679732761', 21),
(53, '9780486264721', 5),
(54, '9798611586020', 29),
(55, '9780486456430', 5),
(56, '9781643137506', 30),
(57, '9789358583993', 21),
(58, '9780515147018', 31),
(59, '9781505234725', 10),
(60, '9780595443390', 32),
(61, '9781936594146', 10),
(62, '9780753817650', 19),
(63, '9781472106896', 7),
(64, '9781847370297', 10),
(65, '9788854413528', 33),
(66, '9781853260650', 34),
(67, '9780062561435', 3),
(68, '9780349410067', 7),
(69, '9780349407425', 7),
(70, '9780415714815', 2),
(71, '9780751541168', 35),
(72, '9781982128401', 10),
(73, '9781501104008', 10),
(74, '9781501104046', 10),
(75, '9781471154621', 10),
(76, '9781909489943', 26),
(77, '9781787631977', 26),
(78, '9780751551877', 35),
(79, '9780007304097', 3),
(80, '9781786495792', 37),
(81, '9780753556603', 38),
(82, '9781408873823', 4),
(83, '9780241491515', 17),
(84, '9781846045219', 38),
(85, '9780486821566', 3),
(86, '9780340919408', 24),
(87, '9781118641101', 41),
(88, '9781524763138', 40),
(89, '9780007255535', 3),
(90, '9781473635302', 39);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID_type` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID_type`, `category_name`) VALUES
(1, 'Fiction'),
(2, 'Mystery'),
(3, 'Romance'),
(4, 'Historical'),
(5, 'Fantasy'),
(6, 'Biography'),
(7, 'Action and Adventure'),
(8, 'Philosophy'),
(9, 'Psychology'),
(10, 'Drama');

-- --------------------------------------------------------

--
-- Table structure for table `hold`
--

CREATE TABLE `hold` (
  `ID_user` int(11) NOT NULL,
  `bc_ID` int(11) NOT NULL,
  `start_time` date NOT NULL,
  `end_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hold`
--

INSERT INTO `hold` (`ID_user`, `bc_ID`, `start_time`, `end_time`) VALUES
(1, 5, '2022-05-02', '2022-05-22'),
(1, 10, '2022-06-05', '2022-06-25'),
(2, 8, '2022-03-03', '2022-03-23'),
(2, 9, '2022-03-03', '2022-03-23'),
(2, 10, '2022-02-15', '2022-02-25'),
(3, 22, '2022-06-05', '2022-06-25'),
(3, 23, '2022-06-05', '2022-06-25'),
(4, 22, '2022-02-15', '2022-02-25'),
(50, 6, '2022-06-02', '2022-06-22'),
(52, 12, '2022-03-03', '2022-03-23'),
(52, 45, '2022-03-03', '2022-03-23'),
(52, 50, '2022-03-03', '2022-03-23'),
(54, 46, '2022-06-05', '2022-06-25'),
(56, 47, '2022-02-15', '2022-02-25'),
(58, 40, '2022-02-15', '2022-02-25'),
(59, 15, '2022-06-05', '2022-06-25'),
(59, 41, '2022-06-05', '2022-06-25'),
(60, 13, '2022-04-03', '2022-04-23'),
(60, 42, '2022-03-03', '2022-03-23'),
(61, 11, '2022-02-05', '2022-02-25'),
(62, 22, '2022-02-15', '2022-02-25'),
(63, 14, '2022-05-05', '2022-05-25'),
(64, 16, '2022-07-15', '2022-07-25'),
(65, 18, '2022-09-02', '2022-09-22'),
(66, 20, '2022-03-03', '2022-03-23'),
(67, 24, '2022-06-05', '2022-06-25'),
(68, 10, '2022-02-15', '2022-02-25'),
(69, 25, '2022-02-15', '2022-02-25'),
(70, 23, '2022-06-05', '2022-06-25'),
(71, 21, '2022-03-03', '2022-03-23'),
(72, 19, '2022-10-05', '2022-10-25'),
(73, 17, '2022-08-15', '2022-08-25'),
(74, 26, '2022-05-02', '2022-05-22'),
(75, 27, '2022-06-05', '2022-06-25'),
(77, 28, '2022-03-03', '2022-03-23'),
(78, 22, '2022-06-05', '2022-06-25'),
(79, 10, '2022-02-15', '2022-02-25'),
(80, 22, '2022-09-15', '2022-09-25'),
(81, 29, '2022-06-05', '2022-06-25'),
(82, 29, '2022-03-03', '2022-03-23'),
(83, 60, '2022-05-02', '2022-05-22'),
(84, 17, '2022-06-05', '2022-06-25'),
(86, 59, '2022-03-03', '2022-03-23'),
(87, 58, '2022-06-05', '2022-06-25'),
(88, 16, '2022-02-15', '2022-02-25'),
(89, 56, '2022-02-15', '2022-02-25'),
(90, 57, '2022-06-05', '2022-06-25'),
(91, 9, '2022-03-03', '2022-03-23'),
(92, 51, '2022-05-02', '2022-05-22'),
(93, 52, '2022-06-05', '2022-06-25'),
(94, 53, '2022-03-03', '2022-03-23'),
(95, 54, '2022-06-05', '2022-06-25'),
(96, 49, '2022-06-05', '2022-06-25'),
(97, 48, '2022-02-15', '2022-02-25'),
(98, 55, '2022-02-15', '2022-02-25'),
(99, 43, '2022-06-05', '2022-06-25'),
(100, 44, '2022-05-02', '2022-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `publisher_ID` int(11) NOT NULL,
  `publisher_name` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`publisher_ID`, `publisher_name`) VALUES
(1, 'Harvard University Press'),
(2, 'Taylor & Francis Ltd'),
(3, 'Harpercollins Publishers'),
(4, 'Bloomsburry Publishing'),
(5, 'Dover Publications Inc.'),
(6, 'Robinson'),
(7, 'Little Brown Book Group'),
(8, 'Learning Design Ltd'),
(9, 'Aiis & Tirana Times'),
(10, 'Simon & Schuster Ltd'),
(11, 'The Ivy Press'),
(12, 'Quercus Publishing'),
(13, 'A.Sh.Sh'),
(14, 'Faik Konica'),
(15, 'Oxford University Press'),
(16, 'Profile Books Ltd'),
(17, 'Penguin Books Ltd'),
(18, 'Cornerstone'),
(19, 'Orion Publishing Co'),
(20, 'Headline Publishing'),
(21, 'Vintage Books'),
(22, 'Crown House Publishing'),
(23, 'Chicken House Ltd'),
(24, 'Hodder & Stoughton General Divi'),
(25, 'Arrow Books'),
(26, 'Transworld Publishers Ltd'),
(27, 'Icon Books Ltd'),
(28, 'Corgi Books'),
(29, 'Pan Macmillan'),
(30, 'Pegasus Books'),
(31, 'Berkley'),
(32, 'William Morrow'),
(33, 'William Morrow'),
(34, 'White Star Publisher'),
(35, 'Wordsworth Editions Ltd'),
(36, 'Sphere'),
(37, 'Transworld Publishers Ltd'),
(38, 'Atlantic Books'),
(39, 'Ebury Publishing'),
(40, 'John Murray Publishers Ltd'),
(41, 'Crown House Publishing'),
(42, 'John Wiley & Sons Inc');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID_user` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID_user`, `first_name`, `last_name`, `birthdate`, `gender`) VALUES
(1, 'Genta', 'Berisha', '1999-05-15', 'F'),
(2, 'Arjeta', 'Muji', '1999-10-28', 'F'),
(3, 'Donika', 'Bajrami', '2000-07-12', 'F'),
(4, 'Admir', 'Zeqiri', '1999-01-25', 'M'),
(5, 'Anisa', 'Shabani', '1999-12-30', 'F'),
(6, 'Dren', 'Krasniqi', '1999-03-09', 'M'),
(7, 'Arber', 'Gashi', '1999-03-03', 'M'),
(8, 'Besart', 'Halili', '1999-06-26', 'M'),
(9, 'Labinot', 'Murtezi', '1999-01-26', 'M'),
(10, 'Erona', 'Ibrahimi', '1999-02-10', 'F'),
(11, 'Anita', 'Hasani', '2000-09-13', 'F'),
(12, 'Erblina', 'Svarqa', '2000-10-06', 'F'),
(13, 'Qendrim', 'Hasani', '2002-05-09', 'M'),
(14, 'Ria', 'Halili', '1997-10-28', 'F'),
(15, 'Natyra', 'Krasniqi', '2006-03-13', 'F'),
(16, 'Arbenit', 'Gashi', '2000-06-22', 'M'),
(17, 'Qendresa', 'Shefkiu', '2002-02-11', 'F'),
(18, 'Liridon', 'Sherifi', '1996-08-04', 'M'),
(19, 'Mirjeta', 'Sadiku', '1996-06-06', 'F'),
(20, 'Fitor', 'Shabani', '2001-07-18', 'M'),
(21, 'Lindrit', 'Ademaj', '2002-07-04', 'M'),
(22, 'Diorita', 'Halimi', '1999-06-18', 'F'),
(23, 'Gentrit', 'Sadriu', '2004-03-19', 'M'),
(24, 'Donita', 'Shabani', '2001-10-18', 'F'),
(25, 'Xheneta', 'Hasani', '1998-08-05', 'F'),
(26, 'Doruntina', 'Maliqi', '1998-03-14', 'F'),
(27, 'Elvis', 'Morina', '1998-12-12', 'M'),
(28, 'Elvira', 'Nuredini', '2000-01-21', 'F'),
(29, 'Luan', 'Bytyci', '1997-08-17', 'M'),
(30, 'Vlora', 'Thaqi', '1996-09-13', 'F'),
(31, 'Albana', 'Aliu', '2003-05-15', 'F'),
(32, 'Egzon', 'Imeri', '1995-02-07', 'M'),
(33, 'Altin', 'Bedriu', '2000-06-18', 'M'),
(34, 'Lorika', 'Berisha', '1999-11-26', 'F'),
(35, 'Arta', 'Selimi', '2002-12-16', 'F'),
(36, 'Faton', 'Ismaili', '2004-02-24', 'M'),
(37, 'Shkelqim', 'Behluli', '1998-04-24', 'M'),
(38, 'Dafina', 'Elezi', '2004-09-23', 'F'),
(39, 'Agon', 'Halimi', '1998-08-05', 'M'),
(40, 'Erina', 'Sopa', '2004-12-26', 'F'),
(41, 'Matin', 'Rexhaj', '2005-03-15', 'M'),
(42, 'Majda', 'Isufi', '2000-10-24', 'F'),
(43, 'Lirim', 'Aliu', '1999-06-18', 'M'),
(44, 'Arlinda', 'Hyseni', '1998-12-12', 'F'),
(45, 'Flamur', 'Kajtazi', '1997-10-30', 'M'),
(46, 'Lea', 'Nuredini', '2001-11-13', 'F'),
(47, 'Visar', 'Latifi', '2002-07-04', 'M'),
(48, 'Dea', 'Salihu', '2002-01-19', 'F'),
(49, 'Blend', 'Mustafa', '1998-08-13', 'M'),
(50, 'Blerina', 'Mehmeti', '2000-09-11', 'F'),
(51, 'Diella', 'Gashi', '2005-02-15', 'F'),
(52, 'Orika', 'Musliu', '1998-06-24', 'F'),
(53, 'Laura', 'Ibrahimi', '1999-03-18', 'F'),
(54, 'Donijeta', 'Zylfiu', '1996-11-15', 'F'),
(55, 'Nazmije', 'Krasniqi', '1997-11-30', 'F'),
(56, 'Arbresha', 'Muqaku', '1996-08-24', 'F'),
(57, 'Ardian', 'Murati', '2002-01-04', 'M'),
(58, 'Floreta', 'Salihu', '2002-09-19', 'F'),
(59, 'Anita', 'Mustafa', '1998-01-23', 'F'),
(60, 'Ardita', 'Mehmeti', '2002-09-11', 'F'),
(61, 'Andi', 'Selishta', '2005-03-23', 'M'),
(62, 'Hysnije', 'Kervalla', '1998-10-24', 'F'),
(63, 'Butrint', 'Aliu', '1999-04-18', 'M'),
(64, 'Flon', 'Hyseni', '1998-03-12', 'M'),
(65, 'Dardan', 'Muharremi', '1997-10-30', 'M'),
(66, 'Adea', 'Nuredini', '2001-11-13', 'F'),
(67, 'Shkodran', 'Lutfiu', '2002-07-04', 'M'),
(68, 'Rina', 'Salihu', '2002-01-19', 'F'),
(69, 'Flamur', 'Abazi', '1998-08-13', 'M'),
(70, 'Melisa', 'Shabani', '2000-09-11', 'F'),
(71, 'Dion', 'Rexha', '2005-03-15', 'M'),
(72, 'Fiona', 'Isufi', '2000-10-24', 'F'),
(73, 'Blerand', 'Aliu', '1999-06-18', 'M'),
(74, 'Valentina', 'Hyseni', '1998-12-12', 'F'),
(75, 'Endrit', 'Kajtazi', '1997-10-30', 'M'),
(76, 'Yllka', 'Nuredini', '2001-11-13', 'F'),
(77, 'Valon', 'Latifi', '2002-07-04', 'M'),
(78, 'Valbona', 'Salihu', '2002-01-19', 'F'),
(79, 'Valmir', 'Muharremi', '1998-08-13', 'M'),
(80, 'Hana', 'Mehmeti', '2000-09-11', 'F'),
(81, 'Valdon', 'Rexhaj', '2005-03-15', 'M'),
(82, 'Vanesa', 'Kurti', '2000-10-24', 'F'),
(83, 'Elion', 'Aziri', '1999-06-18', 'M'),
(84, 'Blinera', 'Limani', '1998-12-12', 'F'),
(85, 'Lorik', 'Muja', '1997-10-30', 'M'),
(86, 'Olta', 'Nuredini', '2001-11-13', 'F'),
(87, 'Benet', 'Latifi', '2002-07-04', 'M'),
(88, 'Lorika', 'Qerimi', '2002-01-19', 'F'),
(89, 'Art', 'Agaj', '1998-08-13', 'M'),
(90, 'Argjenda', 'Rexhepi', '2000-09-11', 'F'),
(91, 'Almir', 'Islami', '2005-03-15', 'M'),
(92, 'Malona', 'Leka', '2000-10-24', 'F'),
(93, 'Shpend', 'Ukshini', '1999-06-18', 'M'),
(94, 'Eronita', 'Selimi', '1998-12-12', 'F'),
(95, 'Luan', 'Fejzullahu', '1997-10-30', 'M'),
(96, 'Eda', 'Berisha', '2001-11-13', 'F'),
(97, 'Orges', 'Leka', '2002-07-04', 'M'),
(98, 'Flandra', 'Ramadani', '2002-01-19', 'F'),
(99, 'Bind', 'Hajdari', '1998-08-13', 'M'),
(100, 'Eliona', 'Tahiri', '2000-09-11', 'F');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_ID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `book_authors`
--
ALTER TABLE `book_authors`
  ADD PRIMARY KEY (`ISBN`,`author_ID`),
  ADD KEY `fk_a` (`author_ID`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`ISBN`,`ID_type`),
  ADD KEY `fk_type` (`ID_type`);

--
-- Indexes for table `book_copy`
--
ALTER TABLE `book_copy`
  ADD PRIMARY KEY (`bc_ID`),
  ADD KEY `fk_ISBN` (`ISBN`),
  ADD KEY `fk_publisher` (`publisher_ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID_type`);

--
-- Indexes for table `hold`
--
ALTER TABLE `hold`
  ADD PRIMARY KEY (`ID_user`,`bc_ID`),
  ADD KEY `fk_bcopy` (`bc_ID`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publisher_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `book_copy`
--
ALTER TABLE `book_copy`
  MODIFY `bc_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `publisher_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_authors`
--
ALTER TABLE `book_authors`
  ADD CONSTRAINT `fk_a` FOREIGN KEY (`author_ID`) REFERENCES `authors` (`author_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_book` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `bookf` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_type` FOREIGN KEY (`ID_type`) REFERENCES `category` (`ID_type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_copy`
--
ALTER TABLE `book_copy`
  ADD CONSTRAINT `fk_ISBN` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_publisher` FOREIGN KEY (`publisher_ID`) REFERENCES `publishers` (`publisher_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hold`
--
ALTER TABLE `hold`
  ADD CONSTRAINT `fk_bcopy` FOREIGN KEY (`bc_ID`) REFERENCES `book_copy` (`bc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`ID_user`) REFERENCES `users` (`ID_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
