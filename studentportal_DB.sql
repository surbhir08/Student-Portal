-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 02:52 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_enrollment`
--

CREATE TABLE `academic_enrollment` (
  `enrollment_id` int(11) NOT NULL,
  `enrolled_date` date DEFAULT NULL,
  `enrolled_status` varchar(50) DEFAULT NULL,
  `course_enrollment_id` int(11) DEFAULT NULL,
  `student_eid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_enrollment`
--

INSERT INTO `academic_enrollment` (`enrollment_id`, `enrolled_date`, `enrolled_status`, `course_enrollment_id`, `student_eid`) VALUES
(660, '2020-09-01', 'enrolled', 505, 3),
(661, '2020-09-01', 'enrolled', 500, 4),
(667, '2020-09-05', 'enrolled', 544, 2),
(668, '2020-09-01', 'enrolled', 505, 3),
(701, '2020-09-01', 'enrolled', 400, 6),
(702, '2020-09-01', 'enrolled', 406, 7),
(703, '2020-09-01', 'enrolled', 420, 8),
(704, '2020-09-01', 'enrolled', 436, 9),
(705, '2020-09-01', 'enrolled', 420, 10),
(706, '2020-09-01', 'enrolled', 436, 11),
(707, '2020-09-01', 'enrolled', 444, 12),
(708, '2020-09-01', 'enrolled', 455, 13),
(709, '2020-09-01', 'enrolled', 487, 14),
(710, '2020-09-01', 'enrolled', 500, 15),
(711, '2020-09-01', 'enrolled', 505, 16),
(712, '2020-09-01', 'enrolled', 511, 17),
(713, '2020-09-01', 'enrolled', 520, 18),
(714, '2020-09-01', 'enrolled', 530, 19),
(715, '2020-09-01', 'enrolled', 536, 20),
(716, '2020-09-01', 'enrolled', 544, 21),
(717, '2020-09-01', 'enrolled', 555, 22),
(718, '2020-09-01', 'enrolled', 500, 23),
(719, '2020-09-01', 'enrolled', 511, 24),
(720, '2020-09-01', 'enrolled', 520, 25),
(721, '2020-09-01', 'enrolled', 530, 26),
(722, '2020-09-01', 'enrolled', 544, 27),
(723, '2020-09-01', 'enrolled', 555, 28),
(724, '2020-09-01', 'enrolled', 444, 29),
(725, '2020-09-01', 'enrolled', 400, 30),
(726, '2020-09-01', 'enrolled', 406, 28),
(727, '2020-09-01', 'enrolled', 420, 3),
(729, '2020-09-01', 'enrolled', 500, 27),
(730, '2020-09-01', 'enrolled', 505, 15),
(731, '2020-09-01', 'enrolled', 511, 16),
(866, '2020-12-06', 'enrolled', 436, 1),
(1598, '2020-12-11', 'enrolled', 436, 5),
(9535, '2020-12-11', 'enrolled', 536, 1),
(9730, '2020-12-06', 'enrolled', 400, 1),
(19370, '2020-12-14', 'enrolled', 511, 5),
(31270, '2020-12-14', 'enrolled', 455, 5),
(32381, '2020-12-08', 'enrolled', 400, 1),
(33480, '2020-12-14', 'enrolled', 400, 4),
(39950, '2020-12-06', 'enrolled', 511, 16);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(45) DEFAULT NULL,
  `course_description` varchar(45) DEFAULT NULL,
  `credit_point` int(11) DEFAULT NULL,
  `course_schedule` varchar(100) DEFAULT NULL,
  `course_instructor_id` int(11) DEFAULT NULL,
  `course_type` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `credit_point`, `course_schedule`, `course_instructor_id`, `course_type`) VALUES
(400, 'Theory of computation', 'automata', 4, 'Tue&Thur 5pm-7pm', 150, 'CSC'),
(406, 'reading comprhension', NULL, 3, 'Fri 4pm-7pm', 159, 'CSC'),
(420, 'cyber security', NULL, 4, 'Fri 4pm-7pm', 155, 'CSC'),
(436, 'database manageent system', 'DBMS query impementation', 4, 'Mon-Wed 9am-10am', 145, 'CSC'),
(444, 'advanced algorithm', 'algorithm implementation', 4, 'Mon-Wed 9am-10am', 146, 'CSC'),
(455, 'bioinformatics', 'biology', 4, 'Mon-Wed 9am-10am', 152, 'CSC'),
(487, 'deep learning', NULL, 4, 'Fri 2pm-5pm', 160, 'CSC'),
(500, 'programming language implementation', 'programming in python', 4, 'Mon & Wed 9am-10am', 144, 'CSC'),
(505, 'data management system', 'SQL query and database major project', 4, 'Tue 5pm-8pm', 145, 'CSC'),
(511, 'special topics in CS', 'ML/Human interaction', 4, 'Wed-Fri 1pm-2pm', 160, 'CSC'),
(520, 'statistics', 'mathematical', 4, 'Tue 10am-1pm', 161, 'CSC'),
(530, 'computer algebra system', 'mathematical computation', 4, 'Tue& Thur 3pm-4pm', 146, 'CSC'),
(536, 'Machine learning', 'ML with python', 4, 'Mon-Wed 9am-10am', 155, 'CSC'),
(544, 'theory of computation', 'model of computation', 4, 'Mon-Wed 11am-11:50am', 148, 'CSC'),
(555, 'programming language implementation', 'programming in python', 4, 'Mon-Wed 9am-10am', 144, 'CSC');

-- --------------------------------------------------------

--
-- Table structure for table `financial_account`
--

CREATE TABLE `financial_account` (
  `acc_id` int(11) NOT NULL,
  `acc_summary` varchar(50) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `student_financial_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `financial_account`
--

INSERT INTO `financial_account` (`acc_id`, `acc_summary`, `due_date`, `student_financial_id`) VALUES
(1020, '$14000', '2020-12-08', 2),
(1021, '$14000', '2020-12-08', 5),
(1022, '$14000', '2020-12-08', 3),
(1023, '$14000', '2020-12-08', 1),
(1024, '$14000', '2020-12-08', 4),
(1025, '$14000', '2020-12-08', 5),
(1026, '$14000', '2020-12-08', 6),
(1027, '$14000', '2020-12-08', 7),
(1028, '$14000', '2020-12-08', 8),
(1029, '$14000', '2020-12-08', 9),
(1030, '$14000', '2020-12-08', 10),
(1031, '$14000', '2020-12-08', 11),
(1032, '$14000', '2020-12-08', 12),
(1033, '$14000', '2020-12-08', 13),
(1034, '$14000', '2020-12-08', 14),
(1035, '$14000', '2020-12-08', 15),
(1036, '$14000', '2020-12-08', 16),
(1037, '$14000', '2020-12-08', 17),
(1038, '$14000', '2020-12-08', 18),
(1039, '$14000', '2020-12-08', 19),
(1040, '$14000', '2020-12-08', 20),
(1041, '$14000', '2020-12-08', 21),
(1042, '$14000', '2020-12-08', 22),
(1043, '$14000', '2020-12-08', 23),
(1044, '$14000', '2020-12-08', 24),
(1045, '$14000', '2020-12-08', 25),
(1046, '$14000', '2020-12-08', 26),
(1047, '$14000', '2020-12-08', 27),
(1048, '$14000', '2020-12-08', 28),
(1049, '$14000', '2020-12-08', 29),
(1050, '$14000', '2020-12-08', 30),
(1051, '$14000', '2020-05-08', 1),
(1052, '$14000', '2020-05-08', 2);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `instructor_id` int(11) NOT NULL,
  `instructor_name` varchar(55) DEFAULT NULL,
  `designation` varchar(55) DEFAULT NULL,
  `qualification` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`instructor_id`, `instructor_name`, `designation`, `qualification`) VALUES
(144, 'L.Hamel', 'AP', 'PHD'),
(145, 'A.Hendawi', 'AP', 'PHD'),
(146, 'E.Lamagna', 'AP', 'PHD'),
(147, 'K.Venkatasubramanian', 'AP', 'PHD'),
(148, 'Melissa', 'AP', 'PHD'),
(149, 'Rachel Jhonson', 'AP', 'PHD'),
(150, 'Robert William', 'AP', 'PHD'),
(151, 'Jake Millar', 'AP', 'PHD'),
(152, 'Maria Rossi', 'AP', 'PHD'),
(153, 'Jhon Marco', 'AP', 'PHD'),
(154, 'Heather Harris', 'AP', 'PHD'),
(155, 'Marry Jacob', 'AP', 'PHD'),
(156, 'Rosy Gill', 'AP', 'PHD'),
(157, 'Abigail Watson', 'AP', 'PHD'),
(158, 'Jhon Jhonson', 'AP', 'PHD'),
(159, 'Hillary Clinton', 'AP', 'PHD'),
(160, 'Kamala Harris', 'AP', 'PHD'),
(161, 'Sophie Ross', 'AP', 'PHD');

-- --------------------------------------------------------

--
-- Table structure for table `liberary_record`
--

CREATE TABLE `liberary_record` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(50) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `liberary_record`
--

INSERT INTO `liberary_record` (`book_id`, `book_name`, `issue_date`, `return_date`, `student_id`) VALUES
(10, 'BECOMING', '2020-11-08', '2020-11-16', 3),
(11, 'Database Concepts', '2020-11-09', '2020-11-17', 2),
(12, 'PLIPY', '2020-11-10', '2020-11-18', 1),
(13, 'Computer Algebra', '2020-11-08', '2020-11-16', 4),
(14, 'Origin', '2020-11-08', '2020-11-16', 5),
(15, 'The Algorithm Design Manual by Steven Skiena', '2020-09-04', '2020-09-12', 3),
(16, 'Algorithms to Live By', '2020-08-20', '2020-08-30', 2),
(17, 'The Spirit of Computing', '2020-05-15', '2020-05-30', 1),
(18, 'Pearls of Functional Algorithm Design', '2020-09-16', '2020-07-30', 2),
(19, 'Grokking algorithms', '2020-10-14', '2020-10-28', 3),
(20, 'Essentials of Computer Architecture by Douglas Com', '2020-09-04', '2020-09-20', 4),
(21, 'Engineering a Compiler 2nd Ed by Cooper & Torczon', '2020-11-16', '2020-11-22', 5),
(22, 'The Basics of Compiler Design by Torben Mogensen', '2020-10-06', '2020-10-25', 6),
(23, 'Principles of Program Analysis by Flemming Nielson', '2020-11-01', '2020-11-15', 7),
(24, 'Dragon book', '2020-12-01', '2020-12-15', 8),
(25, 'C# in depth by John Skeet', '2020-11-14', '2020-11-28', 9),
(26, 'Elements of Programming', '2020-07-01', '2020-07-15', 10),
(27, 'Designing for Scalability with Erlang/OTP — Implem', '2020-08-01', '2020-08-15', 11),
(28, 'The Go Programming Language', '2020-08-15', '2020-08-25', 12),
(29, 'Web-dev-golang-anti-textbook', '2020-09-02', '2020-09-18', 13),
(30, 'The Annotated Turing', '2020-10-22', '2020-11-05', 14),
(31, 'Code by Charles Petzold', '2020-12-05', '2020-12-20', 15),
(32, 'The Imposters Handbook by Rob Connelly’s', '2020-09-02', '2020-09-20', 16),
(33, 'The Elements of Computing Systems', '2020-11-15', '2020-11-25', 17),
(34, 'A Science of Operations by Mark Priestley', '2020-09-10', '2020-09-20', 18),
(35, 'The Practice of Programming by Pike, Kernighan', '2020-09-02', '2020-09-20', 19),
(36, 'Designing Data-Intensive Applications', '2020-10-10', '2020-10-25', 20),
(37, 'D is for Digital', '2020-08-16', '2020-08-30', 21),
(38, 'The Plausibility of Life by Kirschner & Gerhart ', '2020-11-05', '2020-11-25', 22),
(39, 'Grammar of graphics', '2020-10-06', '2020-10-26', 23),
(40, 'CTCI ', '2020-08-04', '2020-08-24', 24),
(41, 'Elements of programming interviews', '2020-10-10', '2020-10-25', 25),
(42, 'Secrets of the Javascript ninja', '2020-11-15', '2020-11-30', 26),
(43, 'Eloquent JavaScript', '2020-08-11', '2020-08-25', 27),
(44, 'AI: A Modern Approach by Peter Norvig', '2020-09-14', '2020-09-30', 28),
(45, 'Markov Logic: An Interface Layer for Artificial In', '2020-10-12', '2020-10-28', 29),
(46, 'The Art of Multiprocessor Programming by Shavit', '2020-11-05', '2020-11-25', 30),
(47, 'Applied Microsoft .NET Framework Programming', '2020-10-16', '2020-10-26', 30),
(48, 'A First Course in Network Theory', '2020-09-10', '2020-09-25', 28),
(49, 'The Design and Implementation of the FreeBSD Opera', '2020-09-03', '2020-09-15', 27),
(50, 'Learn Python the hard way', '2020-08-25', '2020-09-10', 15);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` int(13) NOT NULL,
  `f_name` varchar(55) DEFAULT NULL,
  `l_name` varchar(55) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `contact` varchar(5000) DEFAULT NULL,
  `emergency_contact` varchar(5000) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `stree_address` varchar(55) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `f_name`, `l_name`, `email_id`, `contact`, `emergency_contact`, `DOB`, `stree_address`, `city`, `state`, `zip_code`, `user_id`, `password`) VALUES
(1, 'surbhi', 'rathore', 'surbhi_rathore@gmail.com', '4012195536', '4015248854', '1994-12-19', '305 greenwich ave', 'warwick', 'RI', 2886, 'test_id1', 'test_id1'),
(2, 'sneha', 'singh', 'sneha.0@gmail.com', '4012845574', '4012159956', '1992-05-02', '310 greenwich ave', 'cranston', 'MA', 2885, 'test_id2', 'test_id2'),
(3, 'shreya', 'rathore', 'shreya.0@gmail.com', '1254021165', '2015102214', '1991-05-04', '317 greenwich ave', 'kingston', 'NJ', 2880, 'test_id3', 'test_id3'),
(4, 'gaurav', 'sinha', 'gaurav.sinha@gmail.com', '4015214478', '8452154485', '1990-02-15', '315 greenwich ave', 'warwick', 'CA', 2881, 'test_id4', 'test_id4'),
(5, 'sanchit', 'kaushik', 'sanchit_kaushik1010@gmail.com', '4012546623', '4152514415', '1993-11-19', '312 greenwich ave', 'metuchen', 'NJ', 2883, 'test_id5', 'test_id5'),
(6, 'bella', 'jhonson', 'bella.0@gmail.com', '4012365526', '2013658897', '1994-11-23', '200 old avenue', 'horn pond', 'MA', 7881, 'test_id6', 'test_id6'),
(7, 'sia', 'chawla', 'sia.0@gmail.com', '4102145523', '7485478854', '1995-12-19', 'burlington ave', 'burlington', 'MA', 7554, 'test_id7', 'test_id7'),
(8, 'heather', 'watson', 'heather.0@gmail.com', '1024546620', '4141254415', '0000-00-00', 'Parade Street', 'Providence', 'RI', 2800, 'test_id8', 'test_id8'),
(9, 'ava', 'rossi', 'ava.0@gmail.com', '4102510025', '4102102256', '0000-00-00', 'Second Street', 'newport', 'RI', 2880, 'test_id9', 'test_id9'),
(10, 'oliver', 'ray', 'oliver.0@gmail.com', '4101215541', '4646520015', '0000-00-00', 'Arbor Drive', 'Providence', 'RI', 2888, 'test_id10', 'test_id10'),
(11, 'larry', 'jhones', 'larry.0@gmail.com', '4102154410', '4012152259', '1994-08-08', 'Brockton Avenue', 'Warwick', 'RI', 2886, 'test_id11', 'test_id11'),
(12, 'Trey', 'wilson', 'trey.0@gmail.com', '1402541125', '2010214452', '1994-08-05', 'Brooksby Village Way', 'Camillus ', 'NY', 13031, 'test_id12', 'test_id12'),
(13, 'Rohit', 'singh', 'rohit.0@gmail.com', '4012154424', '4012195526', '1994-02-02', '101 Street', 'Albion ', 'NY', 14424, 'test_id13', 'test_id13'),
(14, 'anna', 'davis', 'anna.0@gmail.com', '1254129956', '4521552133', '1995-01-01', '42 Fairhaven Commons Way', 'Albany ', 'NY', 12205, 'test_id14', 'test_id14'),
(15, 'resller', 'brown', 'resller.0@gmail.com', '4012152236', '2015123365', '1996-01-01', '374 William S Canning Blvd', 'Amherst ', 'NY', 14228, 'test_id15', 'test_id15'),
(16, 'ava', 'smith', 'ava.0@gmail.com', '4012154412', '5252142254', '1995-02-02', 'Plymouth Street', 'Providence ', 'RI', 2081, 'test_id16', 'test_id16'),
(17, 'gill', 'wilson', 'gill.0@gmail.com', '4012150026', '4215426698', '1987-01-01', 'Washington St', 'Cranston', 'RI', 2886, 'test_id17', 'test_id17'),
(18, 'myra', 'singh', 'myra.0@gmail.com', '5264125502', '8587456695', '1999-01-01', 'Jungle Road', 'Groton ', 'CT', 6418, 'test_id18', 'test_id18'),
(19, 'heather', 'jhonson', 'heather.0@gmail.com', '2013625548', '4152014452', '1995-01-19', '100 Avenue', 'Providence', 'RI', 2889, 'test_id19', 'test_id19'),
(20, 'sam', 'ross', 'sam.0@gmail.com', '2013658874', '4152633325', '2001-02-02', 'Massachusetts Ave', 'Hudson ', 'MA', 1749, 'test_id20', 'test_id20'),
(21, 'sean', 'william', 'sean.0@gmail.com', '5014125541', '1021402215', '1987-02-02', 'East Ave, Central Square', 'Leicester ', 'MA', 1542, 'test_id21', 'test_id21'),
(22, 'kelly', 'ray', 'kelly.0@gmail.com', '2036529985', '1024512265', '1995-08-08', 'East Ave, Central Square', 'Warwick', 'RI', 2886, 'test_id22', 'test_id22'),
(23, 'joe', 'biden', 'joe.0@gmail.com', '4021536652', '4152503365', '1987-01-01', 'Brewerton Rd', 'Attleboro ', 'MA', 2760, 'test_id23', 'test_id23'),
(24, 'jhon', 'will', 'jhon.0@gmail.com', '4021515528', '2541023365', '1999-01-01', 'Transit Road', 'Northborough ', 'MA', 1532, 'test_id24', 'test_id24'),
(25, 'miley', 'sam', 'miley.0@gmail.com', '4021523365', '4152639945', '1995-02-02', '3949 Route 31', 'Northhampton ', 'MA', 1060, 'test_id25', 'test_id25'),
(26, 'mikel', 'watson', 'mikel.0@gmail.com', '4021052245', '4548125545', '1987-01-01', 'rooked Hill Road', 'Mobile ', 'AL', 36609, 'test_id26', 'test_id26'),
(27, 'mical', 'harris', 'mical.0@gmail.com', '4021015541', '4152659945', '1995-08-08', 'Troy Road', 'Montgomery ', 'AL', 36117, 'test_id27', 'test_id27'),
(28, 'jake', 'william', 'jake.0@gmail.com', '1010210045', '4150362254', '1994-12-12', 'Hempstead Turnpike', 'Northport ', 'AL', 35476, 'test_id28', 'test_id28'),
(29, 'danny', 'jhonson', 'danny.0@gmail.com', '2020254414', '4012163358', '1998-09-08', 'Catskill', 'Oxford ', 'AL', 36203, 'test_id29', 'test_id29'),
(30, 'julian', 'ray', 'julian.0@gmail.com', '5012142201', '2014596685', '1998-09-08', 'Sanford Farm Shpg Center', 'Leominster ', 'MA', 1453, 'test_id30', 'test_id30'),
(3704, 'rubina', 'dalaik', 'rubina_0@gmail.com', '4015412668', '4101254487', '1992-05-05', '300 Greenwich Ave', 'Warwick', 'Rhode Island', 2886, 'rubina00', 'rubina00'),
(9641, 'Abhishek', 'kapoor', 'abhishek@gmail.com', '4015469985', '4015789945', '1192-05-05', '319 Greenwich Ave', 'Warwick', 'RI', 2886, 'abhishek008', 'abhishek008'),
(26675, 'Jacob', 'Davis', 'jacob@gmail.com', '4012563385', '4015269985', '1997-08-08', '307 greenwich ave', 'warwick', 'rhode island', 2886, 'jacob1214', 'jacob_test'),
(26900, 'rahul', 'kapoor', 'rahul_kapoor@gmail.com', '4012158856', '4012597748', '1995-06-06', '304 Greenwich Ave', 'Warwick', 'Rhode Island', 2886, 'rahul_kapoor', 'rahul_kapoor'),
(27503, 'surbhi', 'singh', 'surbhi_singh@gmail.com', '4012641158', '4012198874', '1994-08-08', '311 greenwich ave', 'warwick', 'Rhode Island', 2886, 'surbhi_10', 'surbhi_10'),
(28767, 'surbhi', 'singh', 'surbhi_singh01@gmail.com', '4012158874', '4012196639', '1994-05-05', '311 greenwich ave', 'warwick', 'Rhode Island', 2886, 'surbhi_0808', 'surbhi_0808'),
(30080, 'alicia', 'jacob', 'alacia_jacob@gmail.com', '4012156625', '4512146623', '1994-05-05', '304 greenwich ave', 'warwick', 'rhode island', 2886, 'alacia10', 'alacia10');

-- --------------------------------------------------------

--
-- Table structure for table `student_academic`
--

CREATE TABLE `student_academic` (
  `academic_id` int(11) NOT NULL,
  `course_name` varchar(50) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL,
  `course_status` varchar(50) DEFAULT NULL,
  `course_credit` int(11) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `student_academic_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_academic`
--

INSERT INTO `student_academic` (`academic_id`, `course_name`, `term`, `course_status`, `course_credit`, `grade`, `student_academic_id`) VALUES
(200, 'Computer Algebra', 'Fall 2020', 'in Progress', 4, 'null', 1),
(201, 'PLI', 'Fall 2020', 'In Progress', 4, 'null', 1),
(202, 'Computer Algebra', 'Fall 2020', 'in Progress', 4, 'null', 4),
(203, 'Statistics', 'Spring 2019', 'completed', 4, 'A', 3),
(204, 'Big Data Analytics', 'Spring 2020', 'enrolled', 3, 'null', 2),
(205, 'Operating System', 'Spring 2020', 'enrolled', 4, 'null', 5),
(206, 'Theory of computation', 'Spring 2020', 'enrolled', 4, 'null', 6),
(207, 'bioinformatics', 'Spring 2019', 'completed', 4, 'A', 7),
(208, 'deep learning', 'Spring 2019', 'completed', 4, 'A', 8),
(209, 'Computer Algebra', 'Fall 2020', 'in Progress', 4, 'null', 9),
(210, 'Big Data Analytics', 'Spring 2020', 'enrolled', 4, 'A', 10),
(211, 'statistics', 'Summer 2019', 'completed', 4, 'A', 11),
(212, 'statistics', 'Summer 2019', 'completed', 4, 'A', 12),
(213, 'statistics', 'Summer 2019', 'completed', 4, 'A', 13),
(214, 'bioinformatics', 'Spring 2019', 'completed', 4, 'A', 14),
(215, 'programming language implementation', 'Fall 2020', 'in Progress', 4, 'null', 15),
(216, 'programming language implementation', 'Fall 2020', 'in Progress', 4, 'null', 16),
(217, 'programming language implementation', 'Fall 2020', 'in Progress', 4, 'null', 17),
(218, 'programming language implementation', 'Fall 2020', 'in Progress', 4, 'null', 18),
(219, 'Machine learning', 'Fall 2020', 'in Progress', 4, 'null', 19),
(220, 'Machine learning', 'Fall 2020', 'in Progress', 4, 'null', 20),
(221, 'Machine learning', 'Fall 2020', 'in Progress', 4, 'null', 21),
(222, 'Machine learning', 'Fall 2020', 'in Progress', 4, 'null', 22),
(223, 'Machine learning', 'Fall 2020', 'in Progress', 4, 'null', 23),
(224, 'Machine learning', 'Fall 2020', 'in Progress', 4, 'null', 24),
(225, 'Machine learning', 'Fall 2020', 'in Progress', 4, 'null', 25),
(226, 'theory of computation', 'Fall 2020', 'in Progress', 4, 'null', 26),
(227, 'theory of computation', 'Fall 2020', 'in Progress', 4, 'null', 27),
(228, 'theory of computation', 'Fall 2020', 'in Progress', 4, 'null', 28),
(229, 'theory of computation', 'Fall 2020', 'in Progress', 4, 'null', 29),
(230, 'theory of computation', 'Fall 2020', 'in Progress', 4, 'null', 30),
(231, 'theory of computation', 'Fall 2020', 'in Progress', 4, 'null', 1),
(232, 'theory of computation', 'Fall 2020', 'in Progress', 4, 'null', 2),
(233, 'cyber security', 'Spring 2019', 'completed', 4, 'null', 3),
(234, 'cyber security', 'Spring 2019', 'completed', 4, 'A', 4),
(235, 'cyber security', 'Spring 2019', 'completed', 4, 'A', 5),
(236, 'cyber security', 'Spring 2019', 'completed', 4, 'A', 6),
(237, 'cyber security', 'Spring 2019', 'completed', 4, 'A', 7),
(238, 'cyber security', 'Spring 2019', 'completed', 4, 'A', 8),
(239, 'cyber security', 'Spring 2019', 'completed', 4, 'A', 9),
(240, 'cyber security', 'Spring 2019', 'completed', 4, 'A', 10),
(241, 'cyber security', 'Spring 2019', 'completed', 4, 'A', 11),
(242, 'cyber security', 'Spring 2019', 'completed', 4, 'A', 12),
(243, 'cyber security', 'Spring 2019', 'completed', 4, 'A', 13),
(244, 'cyber security', 'Spring 2019', 'completed', 4, 'A', 14),
(245, 'cyber security', 'Spring 2019', 'completed', 4, 'A', 15),
(246, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'A', 16),
(247, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'A', 17),
(248, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'A', 18),
(249, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'A', 19),
(250, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'null', 20),
(251, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'null', 21),
(252, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'null', 22),
(253, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'null', 23),
(254, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'null', 24),
(255, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'null', 25),
(256, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'null', 26),
(257, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'null', 27),
(258, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'null', 28),
(259, 'database manageent system', 'summer 2019', 'completed', 4, 'A', 29),
(260, 'database manageent system', 'summer 2019', 'completed', 4, 'A', 30),
(261, 'database manageent system', 'summer 2019', 'completed', 4, 'A', 5),
(262, 'database manageent system', 'summer 2019', 'completed', 4, 'A', 10),
(263, 'database manageent system', 'summer 2019', 'completed', 4, 'A', 15),
(264, 'database manageent system', 'summer 2019', 'completed', 4, 'A', 20),
(265, 'advanced algorithm', 'Spring 2020', 'enrolled', 4, 'null', 5),
(266, 'database manageent system', 'summer 2019', 'completed', 4, 'A', 19),
(267, 'database manageent system', 'summer 2019', 'completed', 4, 'A', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_enrollment`
--
ALTER TABLE `academic_enrollment`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `course_enrollment_id` (`course_enrollment_id`),
  ADD KEY `student_eid` (`student_eid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `course_instructor_id` (`course_instructor_id`);

--
-- Indexes for table `financial_account`
--
ALTER TABLE `financial_account`
  ADD PRIMARY KEY (`acc_id`),
  ADD KEY `student_financial_id` (`student_financial_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`instructor_id`);

--
-- Indexes for table `liberary_record`
--
ALTER TABLE `liberary_record`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `student_academic`
--
ALTER TABLE `student_academic`
  ADD PRIMARY KEY (`academic_id`),
  ADD KEY `student_academic_id` (`student_academic_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_enrollment`
--
ALTER TABLE `academic_enrollment`
  ADD CONSTRAINT `academic_enrollment_ibfk_1` FOREIGN KEY (`course_enrollment_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `academic_enrollment_ibfk_2` FOREIGN KEY (`student_eid`) REFERENCES `student` (`s_id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`course_instructor_id`) REFERENCES `instructor` (`instructor_id`);

--
-- Constraints for table `financial_account`
--
ALTER TABLE `financial_account`
  ADD CONSTRAINT `financial_account_ibfk_1` FOREIGN KEY (`student_financial_id`) REFERENCES `student` (`s_id`);

--
-- Constraints for table `liberary_record`
--
ALTER TABLE `liberary_record`
  ADD CONSTRAINT `liberary_record_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`s_id`);

--
-- Constraints for table `student_academic`
--
ALTER TABLE `student_academic`
  ADD CONSTRAINT `student_academic_ibfk_1` FOREIGN KEY (`student_academic_id`) REFERENCES `student` (`s_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
