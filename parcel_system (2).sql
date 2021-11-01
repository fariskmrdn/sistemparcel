-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2021 at 06:09 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parcel_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `hep_acc`
--

CREATE TABLE `hep_acc` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `hep_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hep_acc`
--

INSERT INTO `hep_acc` (`id`, `name`, `hep_id`, `password`) VALUES
(1, 'FAZIAH', 'faziahhep', '123456'),
(2, 'ASWA AMANINA BINTI ABU SHAIRI', 'aswa', 'aswasyahmi151218'),
(3, 'MASNI BINTI RAHMAN', 'masnirahman', 'mas123'),
(4, 'NUR SYAZWANI BINTI AHMAD KAMARRUDIN', 'mishwaneh', 'wanehkvks089');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `consignment` varchar(100) NOT NULL,
  `courier` varchar(100) NOT NULL,
  `arrival` datetime NOT NULL,
  `assigned` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `receiver`, `tel`, `consignment`, `courier`, `arrival`, `assigned`) VALUES
(12, 'nur rabiyatul iqlima', '0174557735', '624831954768', 'J&T Express', '2021-10-24 16:54:00', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN'),
(13, 'nur fathinah bt mohd fadly', '', 'SPXMY01215654149A', 'Shopee Express', '2021-10-24 17:19:00', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN'),
(17, 'IZZ DIN', '', 'SPXMY014521499055', 'Shopee Express', '2021-10-24 17:28:00', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN'),
(23, 'NORELYDA EMMELYN BINTI NOR', '01128821067', 'SPXMY014705919124', 'Shopee Express', '2021-10-24 17:48:00', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN'),
(24, 'MUHAMMAD ZHARFAN', '0136086063', 'SPXMY01374836314A', 'Shopee Express', '2021-10-24 17:51:00', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN'),
(26, 'NORELYDA EMMELYN', '01128821067', '624913660740', 'J&T Express', '2021-10-24 17:56:00', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN'),
(27, 'MUHAMMAD HARITH IKHWAN', '0146332189', '5920162373651671', 'DHL Commerce', '2021-10-24 17:57:00', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN'),
(29, 'NORELYDA EMMELYN', '01128821067', '624898847953', 'J&T Express', '2021-10-24 17:59:00', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN'),
(70, 'NUR DINI AIYANI', '0178409798', 'F2222646-121730', 'Others', '2021-10-28 12:41:00', 'MUHAMMAD ALMY SYAHMI BIN MOHD ASRA');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_hep`
--

CREATE TABLE `inventory_hep` (
  `id` int(11) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `consignment` varchar(100) NOT NULL,
  `courier` varchar(100) NOT NULL,
  `arrival` datetime NOT NULL,
  `assigned` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_hep`
--

INSERT INTO `inventory_hep` (`id`, `receiver`, `tel`, `consignment`, `courier`, `arrival`, `assigned`) VALUES
(10, 'Aimi nabilah binti asmuni', '', '8402156873', 'Others', '2021-10-28 15:16:00', 'MASNI BINTI RAHMAN'),
(14, 'MAHANI', '', '600260696936', 'J&T Express', '2021-10-28 15:20:00', 'MASNI BINTI RAHMAN'),
(15, 'Azmin bin osman', '', '23879614920', 'SkyNet Express', '2021-10-28 15:21:00', 'MASNI BINTI RAHMAN'),
(16, 'Hazirah binti mahmud', '', 'SPXMY01836449035A', 'Shopee Express', '2021-10-28 15:21:00', 'MASNI BINTI RAHMAN'),
(20, 'Harisah Yaakub', '', 'ERC582364079MY', 'PosLaju', '2021-10-28 15:24:00', 'MASNI BINTI RAHMAN'),
(22, 'Norlaile Binti Amin', '0166167026', 'ERC656893328MY', 'PosLaju', '2021-10-29 10:40:00', 'ASWA AMANINA ABU SHAIRI'),
(35, 'NUR ADILA BINTI KHIRMAN', '0134564586', '630500950677', 'J&T Express', '2021-11-01 09:45:00', 'ASWA AMANINA BINTI ABU SHAIRI'),
(40, 'ISZAM ROZRIZAL YAHYA', '', 'ERC657295388MY', 'PosLaju', '2021-11-01 10:32:00', 'MASNI BINTI RAHMAN'),
(44, 'NURUL HIDAYAH BINTI HAMZAH', '', '5920137717743591', 'DHL Commerce', '2021-11-01 16:24:00', 'ASWA AMANINA BINTI ABU SHAIRI'),
(45, 'intan fairuz binti jaafar', '', '630504849021', 'J&T Express', '2021-11-01 16:58:00', 'MASNI BINTI RAHMAN');

-- --------------------------------------------------------

--
-- Table structure for table `settlements`
--

CREATE TABLE `settlements` (
  `id` int(11) NOT NULL,
  `receiver` varchar(150) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `consignment` varchar(100) NOT NULL,
  `courier` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  `handler` varchar(100) NOT NULL,
  `pmethod` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settlements`
--

INSERT INTO `settlements` (`id`, `receiver`, `tel`, `consignment`, `courier`, `time`, `handler`, `pmethod`) VALUES
(1, 'NISA ZAINAL', '01161838602', '620600014764971', 'J&T Express', '2021-10-24 21:14:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(2, 'MUHAMMAD ADAM HARITH BIN MUHAMMAD FAUZI', '01110129069', 'SPE4512497561', 'NinjaVan', '2021-10-26 11:40:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(3, 'MUHAMMAD ADAM HARITH BIN MUHAMMAD FAUZI', '01110129069', 'SPE8680788680', 'NinjaVan', '2021-10-26 11:41:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'online'),
(4, 'MAISARAH BINTI MADZLIN', '0198873577', 'EP74617173', 'PosLaju', '2021-10-26 11:45:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(5, 'MAISARAH BINTI MADZLIN', '0198873577', 'EP746389303MY', 'PosLaju', '2021-10-26 11:45:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(6, 'MAISARAH BINTI MADZLIN', '0198873577', 'EP746389317MY', 'PosLaju', '2021-10-26 11:45:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(7, 'MAISARAH BINTI MADZLIN', '0198873577', 'EP746389277MY', 'PosLaju', '2021-10-26 11:46:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(8, 'MAISARAH BINTI MADZLIN', '0198873577', 'EP746389294MY', 'PosLaju', '2021-10-26 11:46:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(9, 'AMMAR NAJMI', '', 'SPXMY01654690371A', 'Shopee Express', '2021-10-26 11:50:00.000000', 'MUHAMMAD ADIB BIN MOHD NAZRI', 'cash'),
(10, 'NUR RABIATUL ADAWIYAH', '', 'PL840981882827', 'J&T Express', '2021-10-26 12:22:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(11, 'AFIQAH ZULKIFLI', '', '620000609494372', 'J&T Express', '0000-00-00 00:00:00.000000', 'AIN HIDAYAH BINTI MOHD AZRI', 'cash'),
(12, 'HAFIZATUL ATHIRAH', '0172898173', 'PL183883836734', 'PosLaju', '2021-10-26 14:42:00.000000', 'AIN HIDAYAH BINTI MOHD AZRI', 'cash'),
(13, 'MAISARAH MADZLIN', '', '620000608464799', 'J&T Express', '2021-10-26 15:09:00.000000', 'AIN HIDAYAH BINTI MOHD AZRI', 'cash'),
(14, 'PN ZARINA HEP', '0193757474', 'NVMYHGPTX000041410', 'NinjaVan', '2021-10-26 15:10:00.000000', 'AIN HIDAYAH BINTI MOHD AZRI', 'cash'),
(15, 'MAISARAH ALI', '0142622330', 'SPXMY01955359669A', 'Shopee Express', '2021-10-26 15:16:00.000000', 'AIN HIDAYAH BINTI MOHD AZRI', 'cash'),
(16, 'SITI AIMAIRAH', '0142622330', '60850116743400', 'Others', '2021-10-26 15:18:00.000000', 'AIN HIDAYAH BINTI MOHD AZRI', 'cash'),
(17, 'MALEK BIN WAHAB', '', 'SPXMY01677882127A', 'Shopee Express', '0000-00-00 00:00:00.000000', 'NUR FARAH IZZATI BT HAINUDDIN', 'cash'),
(18, 'LUQMAN HAKIM BIN MOHAMAD NASIR', '', '600359288113', 'J&T Express', '2021-10-24 16:33:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'online'),
(19, 'AZHARI', '', 'SPXMY01079894262A', 'Shopee Express', '2021-10-22 16:34:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(20, 'MUHAMMAD ZAIDI BIN SAHAD', '', '620000596172649', 'J&T Express', '2021-10-21 16:35:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(21, 'DANISH PUTERA ILYASA', '', '600359658621', 'J&T Express', '2021-10-25 16:35:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(22, 'NUR SYAUQINA BINTI MOHAMED SABRI', '', '600360083416', 'J&T Express', '2021-10-26 20:42:00.000000', 'MUHAMMAD ADIB BIN MOHD NAZRI', 'cash'),
(23, 'MIZA AFRINA', '', '600360203216', 'J&T Express', '2021-10-26 20:44:00.000000', 'MUHAMMAD ADIB BIN MOHD NAZRI', 'cash'),
(24, 'NURUL AIN SHAZWANI BT AHMAD ZAINI', '0163922198', '620000600050178', 'J&T Express', '2021-10-26 20:46:00.000000', 'MUHAMMAD ADIB BIN MOHD NAZRI', 'cash'),
(25, 'ZARITH SOFIA', '', '620000611087945', 'J&T Express', '2021-10-26 20:47:00.000000', 'MUHAMMAD ADIB BIN MOHD NAZRI', 'cash'),
(26, 'LICANANI', '', '620000608459824', 'J&T Express', '2021-10-26 20:48:00.000000', 'MUHAMMAD ADIB BIN MOHD NAZRI', 'cash'),
(27, 'HANIS HAZIQAH', '0166761022', 'ERC656503566MY', 'PosLaju', '2021-10-27 12:36:00.000000', 'NURATHIRAH SYAHIRAH BINTI SUHAILI', 'cash'),
(28, 'NUR FARISHA', '', 'SPXMY01171981512A', 'Shopee Express', '2021-10-27 12:47:00.000000', 'SYSTEM ADMINISTRATION', 'cash'),
(29, 'ZARITH SOFIA', '', 'EP812317000MY', 'PosLaju', '2021-10-27 12:48:00.000000', 'SYSTEM ADMINISTRATION', 'cash'),
(30, 'AINNUR MAISARAH', '', 'SPXMY01431813470A', 'Shopee Express', '2021-10-27 12:49:00.000000', 'SYSTEM ADMINISTRATION', 'cash'),
(31, 'AINNUR MAISARAH', '', 'SPXMY01221433693A', 'Shopee Express', '2021-10-27 12:49:00.000000', 'SYSTEM ADMINISTRATION', 'cash'),
(32, 'AINNUR MAISARAH', '', '620200011820069', 'J&T Express', '2021-10-27 12:50:00.000000', 'SYSTEM ADMINISTRATION', 'cash'),
(33, 'AINNUR MAISARAH', '', '620000606741170', 'J&T Express', '2021-10-27 12:50:00.000000', 'SYSTEM ADMINISTRATION', 'cash'),
(34, 'HEZ', '', 'F2221452-121771', 'Others', '2021-10-27 12:51:00.000000', 'SYSTEM ADMINISTRATION', 'cash'),
(35, 'RAS ATIQAH', '', 'PL233379451565', 'PosLaju', '2021-10-27 12:51:00.000000', 'SYSTEM ADMINISTRATION', 'cash'),
(36, 'NUR IRDINA BINTI MAHANI', '01128089593', '5920118302869361', 'DHL Commerce', '2021-10-27 12:52:00.000000', 'SYSTEM ADMINISTRATION', 'cash'),
(37, 'MIZA AFRINA', '0134938752', 'SPXMY01305575613A', 'Shopee Express', '2021-10-27 12:53:00.000000', 'SYSTEM ADMINISTRATION', 'cash'),
(38, 'NUR HANI BINTI HALIM', '', '620000618223202', 'J&T Express', '2021-10-27 14:20:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(39, 'ENGKU RABIATUL', '', '620000613491122', 'J&T Express', '0000-00-00 00:00:00.000000', 'NURATHIRAH SYAHIRAH BINTI SUHAILI', 'cash'),
(40, 'LICANANI', '', 'SPE0729400202', 'NinjaVan', '2021-10-27 14:51:00.000000', 'NURATHIRAH SYAHIRAH BINTI SUHAILI', 'cash'),
(41, 'AMMAR NAJMI', '', '620000616154780', 'J&T Express', '2021-10-27 15:21:00.000000', 'NURATHIRAH SYAHIRAH BINTI SUHAILI', 'cash'),
(42, 'UMMI AISYAH NAJLA NADHIRAH', '0194180208', 'PGAA0000688612', 'Others', '2021-10-27 15:24:00.000000', 'NURATHIRAH SYAHIRAH BINTI SUHAILI', 'cash'),
(43, 'NUR INSYIRAH BINTI ABD MALEK', '', '620000606647858', 'J&T Express', '2021-10-27 20:51:00.000000', 'MOHD FIKRI BIN JURAIMI', 'cash'),
(44, 'ASMA RAZALI', '', '620000603483244', 'Select Courier', '2021-10-27 20:52:00.000000', 'MOHD FIKRI BIN JURAIMI', 'cash'),
(45, 'MUHAMMAD DANISH FARHAN BIN ISMADI', '', 'SPXMY01252118701A', 'Shopee Express', '2021-10-28 12:57:00.000000', 'MUHAMMAD ALMY SYAHMI BIN MOHD ASRA', 'cash'),
(46, 'FARHANAH ADLYNA', '0104558285', 'SPXMY01142036491A', 'Shopee Express', '2021-10-28 13:41:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(47, 'NISA ZAINAL', '01161838602', 'SPXMY01230538066A', 'Shopee Express', '2021-10-28 14:07:00.000000', 'MUHAMMAD ALMY SYAHMI BIN MOHD ASRA', 'cash'),
(48, 'Licanani', '', '620000610887545', 'J&T Express', '2021-10-28 14:26:00.000000', 'MUHAMMAD ALMY SYAHMI BIN MOHD ASRA', 'cash'),
(49, 'SURIANI BINTI TAIMAH', '0198605769', 'SPXMY01979174547A', 'Shopee Express', '2021-10-28 16:15:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(50, 'SITI SARAH', '', 'SPXMY01481492358A', 'Shopee Express', '2021-10-28 20:50:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(51, 'SITI SARAH', '', '620000615161065', 'J&T Express', '2021-10-28 20:50:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(52, 'SITI SARAH', '', 'SPE2438979321', 'NinjaVan', '2021-10-28 20:51:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash'),
(53, 'ABU BIN BAKAR', '0123456789', 'EP00001', 'PosLaju', '2021-10-30 21:22:00.000000', 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `settlements_hep`
--

CREATE TABLE `settlements_hep` (
  `id` int(11) NOT NULL,
  `receiver` varchar(150) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `consignment` varchar(100) NOT NULL,
  `courier` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  `handler` varchar(100) NOT NULL,
  `pmethod` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settlements_hep`
--

INSERT INTO `settlements_hep` (`id`, `receiver`, `tel`, `consignment`, `courier`, `time`, `handler`, `pmethod`) VALUES
(3, 'SHAKINA', '', 'Ep234', 'Select Courier', '2021-10-28 15:10:00.000000', 'MASNI BINTI RAHMAN', 'cash'),
(4, 'Mohd nazly bin abd hamid', '', 'NLMYA12611207', 'NinjaVan', '2021-10-28 15:29:00.000000', 'MASNI BINTI RAHMAN', 'cash'),
(5, 'Ainatul Shahira', '01126926811', 'LZMPA00325547', 'Others', '2021-10-28 15:48:00.000000', 'MASNI BINTI RAHMAN', 'cash'),
(6, 'Ainatul shahira binti musa', '', 'LZMPA00325350 1 1 KAH03', 'Others', '2021-10-28 15:49:00.000000', 'MASNI BINTI RAHMAN', 'cash'),
(7, 'Nur adila binti khirman', '', '630497344318', 'J&T Express', '2021-10-29 07:59:00.000000', 'ASWA AMANINA BINTI ABU SHAIRI', 'cash'),
(8, 'NUR ADILA BINTI KHIRMAN', '', '630499668572', 'J&T Express', '2021-10-29 08:01:00.000000', 'MASNI BINTI RAHMAN', 'cash'),
(9, 'Nor Zurina Ahmad', '0166754293', '630497551095', 'J&T Express', '2021-10-29 08:14:00.000000', 'MASNI BINTI RAHMAN', 'cash'),
(10, 'Nurazreen Idayu Rameley', '', 'NLMYXST01008372563', 'Select Courier', '2021-10-29 09:49:00.000000', '', 'cash'),
(11, 'Zailanur Hamdan', '', '620000625078016', 'J&T Express', '2021-10-29 13:11:00.000000', '', 'cash'),
(12, 'Zailanur Hamdan', '', '620000627522632', 'J&T Express', '2021-10-29 13:12:00.000000', '', 'cash'),
(13, 'Zailanur Hamdan', '', '600361688893', 'J&T Express', '2021-10-29 13:12:00.000000', '', 'cash'),
(14, 'Zharfan', '', '620000620200432', 'J&T Express', '2021-10-29 11:38:00.000000', '', 'cash'),
(15, 'Muhammad Zharfan', '0136086063', 'Spxmy01374836314A', 'Shopee Express', '2021-10-29 11:38:00.000000', '', 'cash'),
(16, 'Siti murni binti mat yusoff', '', '620000627466087', 'J&T Express', '2021-10-29 11:39:00.000000', '', 'cash'),
(17, 'Intan fairuz binti jaafar', '', 'SPXMY01442654305A', 'Shopee Express', '2021-10-29 11:39:00.000000', '', 'cash'),
(18, 'Muhd Hanif bin Che Hussin', '', '650251458268', 'J&T Express', '2021-10-29 11:40:00.000000', '', 'cash'),
(19, 'Mohd zamri bin mustapa', '', 'LZMPA00318052', 'Others', '2021-10-29 11:40:00.000000', '', 'cash'),
(20, 'Mohd zamri bin mustapa', '', 'LZMPA00315615', 'Others', '2021-10-29 11:40:00.000000', '', 'cash'),
(21, 'Fatimah Satu', '', 'SPE0360565703', 'NinjaVan', '2021-10-29 11:41:00.000000', '', 'cash'),
(22, 'Amilia binti Md Noordin', '', '620000623573608', 'J&T Express', '2021-11-01 09:34:00.000000', 'ASWA AMANINA BINTI ABU SHAIRI', 'cash'),
(23, 'AMILIA BT MD NOORDIN', '', 'Spxmy01568738113a', 'Others', '2021-11-01 09:36:00.000000', 'ASWA AMANINA BINTI ABU SHAIRI', 'cash'),
(24, 'Norehan binti nasiruddin', '', '860301249149312', 'CityLink Express', '2021-11-01 13:29:00.000000', '', 'cash'),
(25, 'NOREHAN NASIRUDDIN', '0199427414', '860301249147721', 'CityLink Express', '2021-11-01 13:29:00.000000', '', 'cash'),
(26, 'Robiatun nasiruddin', '0132055843', '860301249149123', 'CityLink Express', '2021-11-01 13:29:00.000000', '', 'cash'),
(27, 'SYED FAHMI', '0195062265', '998900004547025', 'CityLink Express', '2021-11-01 13:32:00.000000', '', 'cash'),
(28, 'Fatimah Satu', '', 'SPE1393311284', 'NinjaVan', '2021-11-01 14:47:00.000000', 'ASWA AMANINA BINTI ABU SHAIRI', 'cash'),
(29, 'Intan Fairuz binti Jaafar', '', 'PL390770140492', 'PosLaju', '2021-11-01 16:29:00.000000', 'ASWA AMANINA BINTI ABU SHAIRI', 'cash'),
(30, 'INTAN FAIRUZ BINTI JAAFAR', '', 'PL239843504648', 'PosLaju', '2021-11-01 16:29:00.000000', 'ASWA AMANINA BINTI ABU SHAIRI', 'cash'),
(31, 'Intan Fairuz binti Jaafar', '', 'SPE1684927620', 'NinjaVan', '2021-11-01 16:30:00.000000', 'ASWA AMANINA BINTI ABU SHAIRI', 'cash'),
(32, 'Syarafina Nadiah Shaharin', '', 'SPXMY01621280499A', 'Shopee Express', '2021-11-01 16:30:00.000000', 'ASWA AMANINA BINTI ABU SHAIRI', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `user_acc`
--

CREATE TABLE `user_acc` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `mpp_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_acc`
--

INSERT INTO `user_acc` (`id`, `name`, `mpp_id`, `password`) VALUES
(1, 'FARIS AIMAN HIDAYAT BIN KAMARUDDIN', 'fariskmrdn', '030117100353'),
(2, 'SYSTEM ADMINISTRATION', 'SYSTEM', 'KVKSMPP21'),
(3, 'MOHD FIKRI BIN JURAIMI', 'fikriakademik', '030402100539'),
(4, 'NOORANIRA AQILA BINTI AB WAHAB', 'aniraaqila', 'nooranira'),
(6, 'VAENGADEISH A/L SHANGGAR', 'VAENGASALAH', '123456'),
(8, 'ABDUL WASI\' BIN ABD HALIM', 'itswasi', 'wasi161'),
(9, 'MUHAMMAD AIMAN MAZWAN BIN ESA', 'AIMAN MAZWAN', 'AIMAN2002'),
(10, 'NUR QISTINA BINTI AMRIZAL ', 'qis_hehe', 'kaylapowerwan2'),
(11, 'NURATHIRAH SYAHIRAH BINTI SUHAILI', 'athirah', 'airah2003'),
(12, 'NURUL AIN SHAZWANI BT AHMAD ZAINI', 'AinShaz', 'Ain7803'),
(13, 'MUHAMMAD ALMY SYAHMI BIN MOHD ASRA', 'geminics', 'almy1234'),
(14, 'MUHAMMAD ADIB BIN MOHD NAZRI', 'ADIBNAZRI', '123456'),
(15, 'AIN HIDAYAH BINTI MOHD AZRI', 'aindayah_', '01112002'),
(16, 'NUR FARAH IZZATI BT HAINUDDIN', 'NURFARAH', 'farahcantiksangat'),
(17, 'FAQRUL HAKIMI BIN MOHD SALIM', 'FQRLL30', 'FAQRULHAKIMI'),
(18, 'MUHAMAD NAQUIB BIN MOHD MASROR', 'NAQUIBOY', 'NAQUIB02'),
(19, 'ASWA AMANINA BINTI ABU SHAIRI', 'aswa', 'aswasyahmi151218'),
(20, 'FAZIAH', 'faziahhep', '123456'),
(21, 'MASNI BINTI RAHMAN', 'masnirahman', 'mas123'),
(22, 'NUR SYAZWANI BINTI AHMAD KAMARRUDIN', 'mishwaneh', 'wanehkvks089');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hep_acc`
--
ALTER TABLE `hep_acc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hep_id` (`hep_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `consignment` (`consignment`);

--
-- Indexes for table `inventory_hep`
--
ALTER TABLE `inventory_hep`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `consignment` (`consignment`);

--
-- Indexes for table `settlements`
--
ALTER TABLE `settlements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `consignment` (`consignment`);

--
-- Indexes for table `settlements_hep`
--
ALTER TABLE `settlements_hep`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `consignment` (`consignment`);

--
-- Indexes for table `user_acc`
--
ALTER TABLE `user_acc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mpp_id` (`mpp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hep_acc`
--
ALTER TABLE `hep_acc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `inventory_hep`
--
ALTER TABLE `inventory_hep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `settlements`
--
ALTER TABLE `settlements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `settlements_hep`
--
ALTER TABLE `settlements_hep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user_acc`
--
ALTER TABLE `user_acc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
