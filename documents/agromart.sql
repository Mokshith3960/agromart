-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 06, 2026 at 02:00 AM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agromart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(30) NOT NULL,
  `admin_username` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1002 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_username`, `admin_password`) VALUES
(1001, 'admin@gmail.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
CREATE TABLE IF NOT EXISTS `consumer` (
  `consumer_id` int NOT NULL AUTO_INCREMENT,
  `consumer_name` varchar(30) NOT NULL,
  `consumer_email` varchar(30) NOT NULL,
  `consumer_contact_number` varchar(12) NOT NULL,
  `consumer_address` text NOT NULL,
  `consumer_username` varchar(30) NOT NULL,
  `consumer_password` varchar(30) NOT NULL,
  PRIMARY KEY (`consumer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2061 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consumer`
--

INSERT INTO `consumer` (`consumer_id`, `consumer_name`, `consumer_email`, `consumer_contact_number`, `consumer_address`, `consumer_username`, `consumer_password`) VALUES
(2001, 'Aarav Sharma', 'aarav.sharma0@rediffmail.com', '8827716899', '126 MG Road, Bengaluru, Karnataka', 'admin', 'admin'),
(2002, 'Priya Nair', 'priya.nair1@yahoo.com', '8440500514', '38 Anna Salai, Chennai, Tamil Nadu', 'priy_nai', 'priya244'),
(2003, 'Rohan Mehta', 'rohan.mehta2@hotmail.com', '9143110167', '15 Linking Road, Mumbai, Maharashtra', 'roha_meh', 'rohan179'),
(2004, 'Sneha Pillai', 'sneha.pillai3@outlook.com', '9646187446', '182 Park Street, Kolkata, West Bengal', 'sneh_pil', 'sneha543'),
(2005, 'Karan Verma', 'karan.verma4@hotmail.com', '8987607425', '103 Civil Lines, Delhi, Delhi', 'kara_ver', 'karan815'),
(2006, 'Divya Reddy', 'divya.reddy5@outlook.com', '8939815284', '85 Banjara Hills, Hyderabad, Telangana', 'divy_red', 'divya128'),
(2007, 'Arjun Patel', 'arjun.patel6@yahoo.com', '8628926957', '106 CG Road, Ahmedabad, Gujarat', 'arju_pat', 'arjun824'),
(2008, 'Meera Joshi', 'meera.joshi7@yahoo.com', '8852504181', '200 Station Road, Pune, Maharashtra', 'meer_jos', 'meera602'),
(2009, 'Vikram Singh', 'vikram.singh8@gmail.com', '9053953140', '139 Hazratganj, Lucknow, Uttar Pradesh', 'vikr_sin', 'vikram152'),
(2010, 'Ananya Das', 'ananya.das9@hotmail.com', '8302206891', '117 Salt Lake, Jaipur, Rajasthan', 'anan_das', 'ananya976'),
(2011, 'Rahul Iyer', 'rahul.iyer10@yahoo.com', '8338022427', '20 Nungambakkam, Chandigarh, Punjab', 'rahu_iye', 'rahul400'),
(2012, 'Pooja Agarwal', 'pooja.agarwal11@hotmail.com', '7827047642', '92 Malviya Nagar, Bhopal, Madhya Pradesh', 'pooj_aga', 'pooja279'),
(2013, 'Suresh Kumar', 'suresh.kumar12@gmail.com', '9012779498', '96 Alwarpet, Indore, Madhya Pradesh', 'sure_kum', 'suresh690'),
(2014, 'Lakshmi Rao', 'lakshmi.rao13@hotmail.com', '9102489921', '25 Jayanagar, Nagpur, Maharashtra', 'laks_rao', 'lakshmi339'),
(2015, 'Nikhil Bose', 'nikhil.bose14@rediffmail.com', '9022640505', '78 FC Road, Coimbatore, Tamil Nadu', 'nikh_bos', 'nikhil472'),
(2016, 'Swati Kulkarni', 'swati.kulkarni15@gmail.com', '7873279039', '174 Ballygunge, Vizag, Andhra Pradesh', 'swat_kul', 'swati748'),
(2017, 'Aditya Ghosh', 'aditya.ghosh16@rediffmail.com', '9651204714', '24 Koramangala, Kochi, Kerala', 'adit_gho', 'aditya937'),
(2018, 'Nandita Menon', 'nandita.menon17@outlook.com', '7742782430', '12 Ashok Nagar, Surat, Gujarat', 'nand_men', 'nandita689'),
(2019, 'Tarun Saxena', 'tarun.saxena18@rediffmail.com', '9693605724', '176 Rajouri Garden, Vadodara, Gujarat', 'taru_sax', 'tarun368'),
(2020, 'Ritu Bajaj', 'ritu.bajaj19@yahoo.com', '8354447552', '49 Connaught Place, Patna, Bihar', 'ritu_baj', 'ritu303'),
(2021, 'Sanjay Yadav', 'sanjay.yadav20@rediffmail.com', '8559641985', '119 MG Road, Bengaluru, Karnataka', 'sanj_yad', 'sanjay517'),
(2022, 'Kavya Patil', 'kavya.patil21@hotmail.com', '7529426131', '27 Anna Salai, Chennai, Tamil Nadu', 'kavy_pat', 'kavya464'),
(2023, 'Deepak Mishra', 'deepak.mishra22@hotmail.com', '7560974534', '184 Linking Road, Mumbai, Maharashtra', 'deep_mis', 'deepak717'),
(2024, 'Sunita Gowda', 'sunita.gowda23@outlook.com', '7518358947', '114 Park Street, Kolkata, West Bengal', 'suni_gow', 'sunita112'),
(2025, 'Rajesh Naidu', 'rajesh.naidu24@rediffmail.com', '9759700101', '127 Civil Lines, Delhi, Delhi', 'raje_nai', 'rajesh422'),
(2026, 'Anjali Tiwari', 'anjali.tiwari25@gmail.com', '8284182545', '170 Banjara Hills, Hyderabad, Telangana', 'anja_tiw', 'anjali289'),
(2027, 'Vivek Chaudhari', 'vivek.chaudhari26@rediffmail.c', '9035854545', '185 CG Road, Ahmedabad, Gujarat', 'vive_cha', 'vivek101'),
(2028, 'Nisha Prajapati', 'nisha.prajapati27@yahoo.com', '8998291770', '60 Station Road, Pune, Maharashtra', 'nish_pra', 'nisha107'),
(2029, 'Manoj Rawat', 'manoj.rawat28@hotmail.com', '7790707437', '83 Hazratganj, Lucknow, Uttar Pradesh', 'mano_raw', 'manoj487'),
(2030, 'Geeta Devi', 'geeta.devi29@rediffmail.com', '8951907795', '8 Salt Lake, Jaipur, Rajasthan', 'geet_dev', 'geeta991'),
(2031, 'Harish Lal', 'harish.lal30@yahoo.com', '9659375197', '119 Nungambakkam, Chandigarh, Punjab', 'hari_lal', 'harish340'),
(2032, 'Vandana Naik', 'vandana.naik31@yahoo.com', '7253011463', '185 Malviya Nagar, Bhopal, Madhya Pradesh', 'vand_nai', 'vandana442'),
(2033, 'Sunil Sahu', 'sunil.sahu32@hotmail.com', '9034595343', '190 Alwarpet, Indore, Madhya Pradesh', 'suni_sah', 'sunil966'),
(2034, 'Rekha Kumbhar', 'rekha.kumbhar33@hotmail.com', '9692895423', '45 Jayanagar, Nagpur, Maharashtra', 'rekh_kum', 'rekha815'),
(2035, 'Girish Gupta', 'girish.gupta34@rediffmail.com', '7866566230', '104 FC Road, Coimbatore, Tamil Nadu', 'giri_gup', 'girish173'),
(2036, 'Shreya Shah', 'shreya.shah35@gmail.com', '9536930149', '87 Ballygunge, Vizag, Andhra Pradesh', 'shre_sha', 'shreya384'),
(2037, 'Prasad Jain', 'prasad.jain36@rediffmail.com', '8286527405', '126 Koramangala, Kochi, Kerala', 'pras_jai', 'prasad619'),
(2038, 'Usha Khanna', 'usha.khanna37@yahoo.com', '8337040132', '28 Ashok Nagar, Surat, Gujarat', 'usha_kha', 'usha344'),
(2039, 'Ravi Malhotra', 'ravi.malhotra38@rediffmail.com', '7442100607', '186 Rajouri Garden, Vadodara, Gujarat', 'ravi_mal', 'ravi396'),
(2040, 'Lalitha Chopra', 'lalitha.chopra39@hotmail.com', '9675717043', '107 Connaught Place, Patna, Bihar', 'lali_cho', 'lalitha210'),
(2041, 'Krish Srivastava', 'krish.srivastava40@rediffmail.', '8334136470', '133 MG Road, Bengaluru, Karnataka', 'kris_sri', 'krish729'),
(2042, 'Bhavna Pandey', 'bhavna.pandey41@rediffmail.com', '9559656557', '199 Anna Salai, Chennai, Tamil Nadu', 'bhav_pan', 'bhavna466'),
(2043, 'Shyam Tripathi', 'shyam.tripathi42@rediffmail.co', '9489619552', '141 Linking Road, Mumbai, Maharashtra', 'shya_tri', 'shyam399'),
(2044, 'Padma Dubey', 'padma.dubey43@gmail.com', '8307710933', '150 Park Street, Kolkata, West Bengal', 'padm_dub', 'padma230'),
(2045, 'Ankit Shukla', 'ankit.shukla44@rediffmail.com', '7750273272', '78 Civil Lines, Delhi, Delhi', 'anki_shu', 'ankit926'),
(2046, 'Smita Dwivedi', 'smita.dwivedi45@hotmail.com', '8129673089', '135 Banjara Hills, Hyderabad, Telangana', 'smit_dwi', 'smita214'),
(2047, 'Varun Mukherjee', 'varun.mukherjee46@yahoo.com', '9592622798', '67 CG Road, Ahmedabad, Gujarat', 'varu_muk', 'varun717'),
(2048, 'Hema Banerjee', 'hema.banerjee47@hotmail.com', '8211366794', '46 Station Road, Pune, Maharashtra', 'hema_ban', 'hema704'),
(2049, 'Ganesh Chatterjee', 'ganesh.chatterjee48@hotmail.co', '8565190408', '35 Hazratganj, Lucknow, Uttar Pradesh', 'gane_cha', 'ganesh147'),
(2050, 'Sarita Roy', 'sarita.roy49@hotmail.com', '8398965990', '36 Salt Lake, Jaipur, Rajasthan', 'sari_roy', 'sarita165'),
(2051, 'Dinesh Sharma', 'dinesh.sharma50@hotmail.com', '8675672175', '42 Nungambakkam, Chandigarh, Punjab', 'dine_sha', 'dinesh107'),
(2052, 'Mala Nair', 'mala.nair51@outlook.com', '8007442730', '187 Malviya Nagar, Bhopal, Madhya Pradesh', 'mala_nai', 'mala319'),
(2053, 'Subramaniam Mehta', 'subramaniam.mehta52@outlook.co', '9503772034', '50 Alwarpet, Indore, Madhya Pradesh', 'subr_meh', 'subramaniam555'),
(2054, 'Vimala Pillai', 'vimala.pillai53@yahoo.com', '8925185733', '198 Jayanagar, Nagpur, Maharashtra', 'vima_pil', 'vimala909'),
(2055, 'Mohan Verma', 'mohan.verma54@hotmail.com', '7800022079', '49 FC Road, Coimbatore, Tamil Nadu', 'moha_ver', 'mohan834'),
(2056, 'Chitra Reddy', 'chitra.reddy55@rediffmail.com', '9012241064', '150 Ballygunge, Vizag, Andhra Pradesh', 'chit_red', 'chitra281'),
(2057, 'Balaji Patel', 'balaji.patel56@gmail.com', '8908327039', '87 Koramangala, Kochi, Kerala', 'bala_pat', 'balaji645'),
(2058, 'Revathi Joshi', 'revathi.joshi57@yahoo.com', '9347046173', '170 Ashok Nagar, Surat, Gujarat', 'reva_jos', 'revathi449'),
(2059, 'Santosh Singh', 'santosh.singh58@yahoo.com', '8488134582', '157 Rajouri Garden, Vadodara, Gujarat', 'sant_sin', 'santosh458'),
(2060, 'Mythili Das', 'mythili.das59@yahoo.com', '7406681721', '74 Connaught Place, Patna, Bihar', 'myth_das', 'mythili254');

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

DROP TABLE IF EXISTS `crops`;
CREATE TABLE IF NOT EXISTS `crops` (
  `crop_id` int NOT NULL AUTO_INCREMENT,
  `crop_name` varchar(30) NOT NULL,
  `crop_description` text NOT NULL,
  `farmer_id` int NOT NULL,
  `crop_initial_amount` int NOT NULL,
  `crop_amount` int DEFAULT NULL,
  `consumer_id` int DEFAULT NULL,
  `image_location` text NOT NULL,
  PRIMARY KEY (`crop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3063 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`crop_id`, `crop_name`, `crop_description`, `farmer_id`, `crop_initial_amount`, `crop_amount`, `consumer_id`, `image_location`) VALUES
(3001, 'Paddy', 'Freshly harvested paddy rice from fertile river plains.', 4001, 1454, 1278, 2001, '../images/crops/paddy.jpg'),
(3002, 'Wheat', 'Hard wheat variety, suitable for flour and bread.', 4002, 4025, 2970, 2002, '../images/crops/wheat.jpg'),
(3003, 'Turmeric', 'Raw turmeric rhizomes, organically grown.', 4003, 3765, 2434, 2003, '../images/crops/turmeric.jpg'),
(3004, 'Red Chilli', 'Dried red chillies, medium-heat variety.', 4004, 10906, 9791, 2004, '../images/crops/red_chilli.jpg'),
(3005, 'Pigeon Pea', 'Toor dal crop, high-yield variety from Andhra Pradesh.', 4005, 2308, 1916, 2005, '../images/crops/pigeon_pea.jpg'),
(3006, 'Mustard', 'Yellow mustard seeds ready for oil extraction.', 4006, 10734, 5815, 2006, '../images/crops/mustard.jpg'),
(3007, 'Groundnut', 'Fresh groundnuts harvested from sandy loam soil.', 4007, 11896, 6381, 2007, '../images/crops/groundnut.jpg'),
(3008, 'Sugarcane', 'Mature sugarcane for jaggery and sugar production.', 4008, 4189, 3709, 2008, '../images/crops/sugarcane.jpg'),
(3009, 'Sesame', 'White sesame crop from rain-fed dry lands.', 4009, 1566, 1191, 2009, '../images/crops/sesame.jpg'),
(3010, 'Coriander', 'Dried coriander seeds, aromatic and freshly harvested.', 4010, 7729, 3171, 2010, '../images/crops/coriander.jpg'),
(3011, 'Black Pepper', 'Pepper berries from vine plantations in Kerala.', 4011, 7410, 3379, 2011, '../images/crops/black_pepper.jpg'),
(3012, 'Coconut', 'Mature coconuts for oil and fresh consumption.', 4012, 5494, 2908, 2012, '../images/crops/coconut.jpg'),
(3013, 'Chickpea', 'Desi chana variety, protein-rich legume crop.', 4013, 10640, 4606, 2013, '../images/crops/chickpea.jpg'),
(3014, 'Moong Bean', 'Green gram crop, short-duration summer pulse.', 4014, 6306, 4153, 2014, '../images/crops/moong.jpg'),
(3015, 'Cardamom', 'Small cardamom from the Western Ghats highlands.', 4015, 7540, 5073, 2015, '../images/crops/cardamom.jpg'),
(3016, 'Sorghum', 'Jowar crop, drought-tolerant coarse cereal.', 4016, 8830, 8026, 2016, '../images/crops/sorghum.jpg'),
(3017, 'Finger Millet', 'Ragi crop, high in calcium and naturally gluten-free.', 4017, 8846, 4713, 2017, '../images/crops/ragi.jpg'),
(3018, 'Sunflower', 'Sunflower heads ready for oil seed extraction.', 4018, 9575, 6199, 2018, '../images/crops/sunflower.jpg'),
(3019, 'Amla', 'Indian gooseberry fruits, harvested fresh from orchards.', 4019, 8451, 3296, 2019, '../images/crops/amla.jpg'),
(3020, 'Ginger', 'Fresh green ginger rhizomes, spicy and aromatic.', 4020, 4646, 2777, 2020, '../images/crops/ginger.jpg'),
(3021, 'Cotton', 'High-staple cotton bolls for textile industry.', 4021, 1353, 1353, 2021, '../images/crops/cotton.jpg'),
(3022, 'Soybean', 'High-protein soybean crop from black soil regions.', 4022, 10110, 7109, 2022, '../images/crops/soybean.jpg'),
(3023, 'Lentil', 'Red lentils (masoor), fast-cooking and nutritious.', 4023, 3029, 2631, 2023, '../images/crops/lentil.jpg'),
(3024, 'Maize', 'Yellow maize cobs, versatile food and feed crop.', 4024, 4935, 4568, 2024, '../images/crops/maize.jpg'),
(3025, 'Bajra', 'Pearl millet, drought-resistant staple crop.', 4025, 2323, 1723, 2025, '../images/crops/bajra.jpg'),
(3026, 'Tomato', 'Fresh hybrid tomatoes, vine-ripened and firm.', 4026, 6987, 6810, 2026, '../images/crops/tomato.jpg'),
(3027, 'Onion', 'Red onions, pungent and long shelf-life variety.', 4027, 6039, 4384, 2027, '../images/crops/onion.jpg'),
(3028, 'Potato', 'White potato, high-starch variety from hills.', 4028, 8847, 8452, 2028, '../images/crops/potato.jpg'),
(3029, 'Garlic', 'Fresh garlic bulbs with strong aroma.', 4029, 7999, 6415, 2029, '../images/crops/garlic.jpg'),
(3030, 'Banana', 'Cavendish bananas, ready for market.', 4030, 1680, 1467, 2030, '../images/crops/banana.jpg'),
(3031, 'Paddy', 'Freshly harvested paddy rice from fertile river plains.', 4031, 9576, 6613, 2031, '../images/crops/paddy.jpg'),
(3032, 'Wheat', 'Hard wheat variety, suitable for flour and bread.', 4032, 8148, 4309, 2032, '../images/crops/wheat.jpg'),
(3033, 'Turmeric', 'Raw turmeric rhizomes, organically grown.', 4033, 9593, 9181, 2033, '../images/crops/turmeric.jpg'),
(3034, 'Red Chilli', 'Dried red chillies, medium-heat variety.', 4034, 4646, 2800, 2034, '../images/crops/red_chilli.jpg'),
(3035, 'Pigeon Pea', 'Toor dal crop, high-yield variety from Andhra Pradesh.', 4035, 11469, 5619, 2035, '../images/crops/pigeon_pea.jpg'),
(3036, 'Mustard', 'Yellow mustard seeds ready for oil extraction.', 4036, 4115, 3650, 2036, '../images/crops/mustard.jpg'),
(3037, 'Groundnut', 'Fresh groundnuts harvested from sandy loam soil.', 4037, 8578, 8557, 2037, '../images/crops/groundnut.jpg'),
(3038, 'Sugarcane', 'Mature sugarcane for jaggery and sugar production.', 4038, 5775, 5747, 2038, '../images/crops/sugarcane.jpg'),
(3039, 'Sesame', 'White sesame crop from rain-fed dry lands.', 4039, 7043, 2849, 2039, '../images/crops/sesame.jpg'),
(3040, 'Coriander', 'Dried coriander seeds, aromatic and freshly harvested.', 4040, 8440, 4721, 2040, '../images/crops/coriander.jpg'),
(3041, 'Black Pepper', 'Pepper berries from vine plantations in Kerala.', 4041, 4971, 3157, 2041, '../images/crops/black_pepper.jpg'),
(3042, 'Coconut', 'Mature coconuts for oil and fresh consumption.', 4042, 5792, 4154, 2042, '../images/crops/coconut.jpg'),
(3043, 'Chickpea', 'Desi chana variety, protein-rich legume crop.', 4043, 7891, 5915, 2043, '../images/crops/chickpea.jpg'),
(3044, 'Moong Bean', 'Green gram crop, short-duration summer pulse.', 4044, 9037, 6220, 2044, '../images/crops/moong.jpg'),
(3045, 'Cardamom', 'Small cardamom from the Western Ghats highlands.', 4045, 3664, 2324, 2045, '../images/crops/cardamom.jpg'),
(3046, 'Sorghum', 'Jowar crop, drought-tolerant coarse cereal.', 4046, 11400, 6249, 2046, '../images/crops/sorghum.jpg'),
(3047, 'Finger Millet', 'Ragi crop, high in calcium and naturally gluten-free.', 4047, 4592, 4114, 2047, '../images/crops/ragi.jpg'),
(3048, 'Sunflower', 'Sunflower heads ready for oil seed extraction.', 4048, 4352, 1389, 2048, '../images/crops/sunflower.jpg'),
(3049, 'Amla', 'Indian gooseberry fruits, harvested fresh from orchards.', 4049, 6867, 3956, 2049, '../images/crops/amla.jpg'),
(3050, 'Ginger', 'Fresh green ginger rhizomes, spicy and aromatic.', 4050, 10026, 7067, 2050, '../images/crops/ginger.jpg'),
(3051, 'Cotton', 'High-staple cotton bolls for textile industry.', 4051, 5761, 2542, 2051, '../images/crops/cotton.jpg'),
(3052, 'Soybean', 'High-protein soybean crop from black soil regions.', 4052, 3866, 3209, 2052, '../images/crops/soybean.jpg'),
(3053, 'Lentil', 'Red lentils (masoor), fast-cooking and nutritious.', 4053, 11789, 8568, 2053, '../images/crops/lentil.jpg'),
(3054, 'Maize', 'Yellow maize cobs, versatile food and feed crop.', 4054, 3574, 2147, 2054, '../images/crops/maize.jpg'),
(3055, 'Bajra', 'Pearl millet, drought-resistant staple crop.', 4055, 10763, 10032, 2055, '../images/crops/bajra.jpg'),
(3056, 'Tomato', 'Fresh hybrid tomatoes, vine-ripened and firm.', 4056, 10408, 8808, 2056, '../images/crops/tomato.jpg'),
(3057, 'Onion', 'Red onions, pungent and long shelf-life variety.', 4057, 5846, 5526, 2057, '../images/crops/onion.jpg'),
(3058, 'Potato', 'White potato, high-starch variety from hills.', 4058, 1079, 1074, 2058, '../images/crops/potato.jpg'),
(3059, 'Garlic', 'Fresh garlic bulbs with strong aroma.', 4059, 5371, 2910, 2059, '../images/crops/garlic.jpg'),
(3060, 'Banana', 'Cavendish bananas, ready for market.', 4060, 3161, 1351, 2060, '../images/crops/banana.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

DROP TABLE IF EXISTS `farmers`;
CREATE TABLE IF NOT EXISTS `farmers` (
  `farmer_id` int NOT NULL AUTO_INCREMENT,
  `farmer_name` varchar(30) NOT NULL,
  `farmer_email` varchar(30) NOT NULL,
  `farmer_contact_number` varchar(12) NOT NULL,
  `farmer_address` text NOT NULL,
  `farmer_username` varchar(30) NOT NULL,
  `farmer_password` varchar(30) NOT NULL,
  PRIMARY KEY (`farmer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4061 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`farmer_id`, `farmer_name`, `farmer_email`, `farmer_contact_number`, `farmer_address`, `farmer_username`, `farmer_password`) VALUES
(4001, 'Sneha Reddy', 'sneha.reddy100@hotmail.com', '8098758967', 'Village Rampur, Dist. Agra, Uttar Pradesh', 'admin', 'admin'),
(4002, 'Karan Patel', 'karan.patel101@gmail.com', '7099277807', 'Village Wadi, Dist. Nashik, Maharashtra', 'kara_patf', 'karan@12'),
(4003, 'Divya Joshi', 'divya.joshi102@outlook.com', '8962633273', 'Village Sitapur, Dist. Varanasi, Uttar Pradesh', 'divy_josf', 'divya@72'),
(4004, 'Arjun Singh', 'arjun.singh103@yahoo.com', '9304176590', 'Village Tiptur, Dist. Tumkur, Karnataka', 'arju_sinf', 'arjun@97'),
(4005, 'Meera Das', 'meera.das104@hotmail.com', '9397387735', 'Village Ongole, Dist. Prakasam, Andhra Pradesh', 'meer_dasf', 'meera@29'),
(4006, 'Vikram Iyer', 'vikram.iyer105@gmail.com', '7139460770', 'Village Deoband, Dist. Saharanpur, Uttar Pradesh', 'vikr_iyef', 'vikram@25'),
(4007, 'Ananya Agarwal', 'ananya.agarwal106@rediffmail.c', '9591169348', 'Village Dhulia, Dist. Dhule, Maharashtra', 'anan_agaf', 'ananya@48'),
(4008, 'Rahul Kumar', 'rahul.kumar107@rediffmail.com', '7165672202', 'Village Morbi, Dist. Rajkot, Gujarat', 'rahu_kumf', 'rahul@74'),
(4009, 'Pooja Rao', 'pooja.rao108@yahoo.com', '8516741290', 'Village Pauri, Dist. Garhwal, Uttarakhand', 'pooj_raof', 'pooja@77'),
(4010, 'Suresh Bose', 'suresh.bose109@yahoo.com', '9667404112', 'Village Siwan, Dist. Siwan, Bihar', 'sure_bosf', 'suresh@30'),
(4011, 'Lakshmi Kulkarni', 'lakshmi.kulkarni110@outlook.co', '7577892042', 'Village Tonk, Dist. Tonk, Rajasthan', 'laks_kulf', 'lakshmi@91'),
(4012, 'Nikhil Ghosh', 'nikhil.ghosh111@hotmail.com', '8038998437', 'Village Hoshiarpur, Dist. Hoshiarpur, Punjab', 'nikh_ghof', 'nikhil@16'),
(4013, 'Swati Menon', 'swati.menon112@rediffmail.com', '7302221277', 'Village Calangute, Dist. North Goa, Goa', 'swat_menf', 'swati@34'),
(4014, 'Aditya Saxena', 'aditya.saxena113@rediffmail.co', '9214716105', 'Village Durg, Dist. Durg, Chhattisgarh', 'adit_saxf', 'aditya@55'),
(4015, 'Nandita Bajaj', 'nandita.bajaj114@outlook.com', '7986540812', 'Village Palakkad, Dist. Palakkad, Kerala', 'nand_bajf', 'nandita@40'),
(4016, 'Tarun Yadav', 'tarun.yadav115@hotmail.com', '8263291065', 'Village Nalgonda, Dist. Nalgonda, Telangana', 'taru_yadf', 'tarun@63'),
(4017, 'Ritu Patil', 'ritu.patil116@yahoo.com', '9763565681', 'Village Muzaffarpur, Dist. Muzaffarpur, Bihar', 'ritu_patf', 'ritu@82'),
(4018, 'Sanjay Mishra', 'sanjay.mishra117@gmail.com', '7482571922', 'Village Coimbatore, Dist. Coimbatore, Tamil Nadu', 'sanj_misf', 'sanjay@96'),
(4019, 'Kavya Gowda', 'kavya.gowda118@yahoo.com', '8934871151', 'Village Alwar, Dist. Alwar, Rajasthan', 'kavy_gowf', 'kavya@64'),
(4020, 'Deepak Naidu', 'deepak.naidu119@yahoo.com', '8969141167', 'Village Kolhapur, Dist. Kolhapur, Maharashtra', 'deep_naif', 'deepak@73'),
(4021, 'Sunita Tiwari', 'sunita.tiwari120@outlook.com', '8503266516', 'Village Amravati, Dist. Amravati, Maharashtra', 'suni_tiwf', 'sunita@86'),
(4022, 'Rajesh Chaudhari', 'rajesh.chaudhari121@rediffmail', '7244281404', 'Village Bidar, Dist. Bidar, Karnataka', 'raje_chaf', 'rajesh@16'),
(4023, 'Anjali Prajapati', 'anjali.prajapati122@yahoo.com', '9103758865', 'Village Kurnool, Dist. Kurnool, Andhra Pradesh', 'anja_praf', 'anjali@55'),
(4024, 'Vivek Rawat', 'vivek.rawat123@yahoo.com', '9614453463', 'Village Bhavnagar, Dist. Bhavnagar, Gujarat', 'vive_rawf', 'vivek@12'),
(4025, 'Nisha Devi', 'nisha.devi124@hotmail.com', '7321783564', 'Village Bareilly, Dist. Bareilly, Uttar Pradesh', 'nish_devf', 'nisha@26'),
(4026, 'Manoj Lal', 'manoj.lal125@hotmail.com', '7101968681', 'Village Hisar, Dist. Hisar, Haryana', 'mano_lalf', 'manoj@25'),
(4027, 'Geeta Naik', 'geeta.naik126@outlook.com', '8822486104', 'Village Rohtak, Dist. Rohtak, Haryana', 'geet_naif', 'geeta@48'),
(4028, 'Harish Sahu', 'harish.sahu127@hotmail.com', '9219769232', 'Village Bathinda, Dist. Bathinda, Punjab', 'hari_sahf', 'harish@52'),
(4029, 'Vandana Kumbhar', 'vandana.kumbhar128@hotmail.com', '8347218652', 'Village Shimla, Dist. Shimla, Himachal Pradesh', 'vand_kumf', 'vandana@32'),
(4030, 'Sunil Gupta', 'sunil.gupta129@yahoo.com', '9224572511', 'Village Dehradun, Dist. Dehradun, Uttarakhand', 'suni_gupf', 'sunil@37'),
(4031, 'Rekha Shah', 'rekha.shah130@rediffmail.com', '9440769773', 'Village Rampur, Dist. Agra, Uttar Pradesh', 'rekh_shaf', 'rekha@48'),
(4032, 'Girish Jain', 'girish.jain131@yahoo.com', '7384823826', 'Village Wadi, Dist. Nashik, Maharashtra', 'giri_jaif', 'girish@25'),
(4033, 'Shreya Khanna', 'shreya.khanna132@rediffmail.co', '8580107449', 'Village Sitapur, Dist. Varanasi, Uttar Pradesh', 'shre_khaf', 'shreya@57'),
(4034, 'Prasad Malhotra', 'prasad.malhotra133@gmail.com', '7397015749', 'Village Tiptur, Dist. Tumkur, Karnataka', 'pras_malf', 'prasad@80'),
(4035, 'Usha Chopra', 'usha.chopra134@yahoo.com', '8563664476', 'Village Ongole, Dist. Prakasam, Andhra Pradesh', 'usha_chof', 'usha@83'),
(4036, 'Ravi Srivastava', 'ravi.srivastava135@rediffmail.', '7885515810', 'Village Deoband, Dist. Saharanpur, Uttar Pradesh', 'ravi_srif', 'ravi@16'),
(4037, 'Lalitha Pandey', 'lalitha.pandey136@rediffmail.c', '7299479986', 'Village Dhulia, Dist. Dhule, Maharashtra', 'lali_panf', 'lalitha@35'),
(4038, 'Krish Tripathi', 'krish.tripathi137@hotmail.com', '8214110955', 'Village Morbi, Dist. Rajkot, Gujarat', 'kris_trif', 'krish@85'),
(4039, 'Bhavna Dubey', 'bhavna.dubey138@hotmail.com', '7742384582', 'Village Pauri, Dist. Garhwal, Uttarakhand', 'bhav_dubf', 'bhavna@65'),
(4040, 'Shyam Shukla', 'shyam.shukla139@rediffmail.com', '8228068108', 'Village Siwan, Dist. Siwan, Bihar', 'shya_shuf', 'shyam@52'),
(4041, 'Padma Dwivedi', 'padma.dwivedi140@gmail.com', '7120417017', 'Village Tonk, Dist. Tonk, Rajasthan', 'padm_dwif', 'padma@30'),
(4042, 'Ankit Mukherjee', 'ankit.mukherjee141@gmail.com', '7579565807', 'Village Hoshiarpur, Dist. Hoshiarpur, Punjab', 'anki_mukf', 'ankit@43'),
(4043, 'Smita Banerjee', 'smita.banerjee142@yahoo.com', '8809075731', 'Village Calangute, Dist. North Goa, Goa', 'smit_banf', 'smita@79'),
(4044, 'Varun Chatterjee', 'varun.chatterjee143@gmail.com', '9793942455', 'Village Durg, Dist. Durg, Chhattisgarh', 'varu_chaf', 'varun@95'),
(4045, 'Hema Roy', 'hema.roy144@outlook.com', '7866671112', 'Village Palakkad, Dist. Palakkad, Kerala', 'hema_royf', 'hema@29'),
(4046, 'Ganesh Sharma', 'ganesh.sharma145@hotmail.com', '9248836894', 'Village Nalgonda, Dist. Nalgonda, Telangana', 'gane_shaf', 'ganesh@61'),
(4047, 'Sarita Nair', 'sarita.nair146@gmail.com', '8777791640', 'Village Muzaffarpur, Dist. Muzaffarpur, Bihar', 'sari_naif', 'sarita@77'),
(4048, 'Dinesh Mehta', 'dinesh.mehta147@gmail.com', '8301677752', 'Village Coimbatore, Dist. Coimbatore, Tamil Nadu', 'dine_mehf', 'dinesh@35'),
(4049, 'Mala Pillai', 'mala.pillai148@hotmail.com', '7082145987', 'Village Alwar, Dist. Alwar, Rajasthan', 'mala_pilf', 'mala@83'),
(4050, 'Subramaniam Verma', 'subramaniam.verma149@yahoo.com', '9215370684', 'Village Kolhapur, Dist. Kolhapur, Maharashtra', 'subr_verf', 'subramaniam@44'),
(4051, 'Vimala Reddy', 'vimala.reddy150@hotmail.com', '9548417993', 'Village Amravati, Dist. Amravati, Maharashtra', 'vima_redf', 'vimala@74'),
(4052, 'Mohan Patel', 'mohan.patel151@hotmail.com', '8195777528', 'Village Bidar, Dist. Bidar, Karnataka', 'moha_patf', 'mohan@27'),
(4053, 'Chitra Joshi', 'chitra.joshi152@rediffmail.com', '7962351276', 'Village Kurnool, Dist. Kurnool, Andhra Pradesh', 'chit_josf', 'chitra@89'),
(4054, 'Balaji Singh', 'balaji.singh153@hotmail.com', '7006862326', 'Village Bhavnagar, Dist. Bhavnagar, Gujarat', 'bala_sinf', 'balaji@64'),
(4055, 'Revathi Das', 'revathi.das154@gmail.com', '9478962588', 'Village Bareilly, Dist. Bareilly, Uttar Pradesh', 'reva_dasf', 'revathi@32'),
(4056, 'Santosh Iyer', 'santosh.iyer155@gmail.com', '8123469202', 'Village Hisar, Dist. Hisar, Haryana', 'sant_iyef', 'santosh@26'),
(4057, 'Mythili Agarwal', 'mythili.agarwal156@outlook.com', '9912377025', 'Village Rohtak, Dist. Rohtak, Haryana', 'myth_agaf', 'mythili@45'),
(4058, 'Aarav Kumar', 'aarav.kumar157@rediffmail.com', '7278625879', 'Village Bathinda, Dist. Bathinda, Punjab', 'aara_kumf', 'aarav@68'),
(4059, 'Priya Rao', 'priya.rao158@yahoo.com', '8473989692', 'Village Shimla, Dist. Shimla, Himachal Pradesh', 'priy_raof', 'priya@33'),
(4060, 'Rohan Bose', 'rohan.bose159@rediffmail.com', '7070213706', 'Village Dehradun, Dist. Dehradun, Uttarakhand', 'roha_bosf', 'rohan@97');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE IF NOT EXISTS `feedbacks` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `feedback_from` varchar(30) NOT NULL,
  `feedback_to` varchar(30) NOT NULL,
  `feedback_subject` varchar(40) NOT NULL,
  `feedback_message` text NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5061 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`feedback_id`, `feedback_from`, `feedback_to`, `feedback_subject`, `feedback_message`) VALUES
(5001, 'aara_sha', 'sneh_redf', 'Great Quality', 'Very happy with the quality. Will definitely order again!'),
(5002, 'priy_nai', 'kara_patf', 'Excellent Product', 'Product was exactly as described. Great experience overall.'),
(5003, 'roha_meh', 'divy_josf', 'Good Experience', 'Fresh produce delivered on time. Highly recommended.'),
(5004, 'sneh_pil', 'arju_sinf', 'Fresh Produce', 'Pure quality with no adulteration. Very impressed.'),
(5005, 'kara_ver', 'meer_dasf', 'Satisfied Customer', 'Good packaging and clean product. Satisfied with purchase.'),
(5006, 'divy_red', 'vikr_iyef', 'Top Quality', 'The flavour was excellent and very natural. Thank you!'),
(5007, 'arju_pat', 'anan_agaf', 'Fast Delivery', 'Fast delivery and great quality. Keep it up!'),
(5008, 'meer_jos', 'rahu_kumf', 'Pure and Natural', 'Authentic product with no chemicals. 5 stars!'),
(5009, 'vikr_sin', 'pooj_raof', 'Highly Recommended', 'Really good value for money. Will recommend to friends.'),
(5010, 'anan_das', 'sure_bosf', 'Will Order Again', 'Quality exceeded my expectations. Ordering again soon.'),
(5011, 'rahu_iye', 'laks_kulf', 'Good Packaging', 'Product was fresh and well-packed. Great service!'),
(5012, 'pooj_aga', 'nikh_ghof', 'Value for Money', 'Clean, genuine, and aromatic. Loved the product.'),
(5013, 'sure_kum', 'swat_menf', 'Very Fresh', 'Exactly what I needed. No complaints at all.'),
(5014, 'laks_rao', 'adit_saxf', 'Outstanding Quality', 'Good taste and fresh. Thank you for the quick dispatch.'),
(5015, 'nikh_bos', 'nand_bajf', 'Authentic Product', 'Amazing product quality. One of the best I have bought.'),
(5016, 'swat_kul', 'taru_yadf', 'Great Quality', 'Very happy with the quality. Will definitely order again!'),
(5017, 'adit_gho', 'ritu_patf', 'Excellent Product', 'Product was exactly as described. Great experience overall.'),
(5018, 'nand_men', 'sanj_misf', 'Good Experience', 'Fresh produce delivered on time. Highly recommended.'),
(5019, 'taru_sax', 'kavy_gowf', 'Fresh Produce', 'Pure quality with no adulteration. Very impressed.'),
(5020, 'ritu_baj', 'deep_naif', 'Satisfied Customer', 'Good packaging and clean product. Satisfied with purchase.'),
(5021, 'sanj_yad', 'suni_tiwf', 'Top Quality', 'The flavour was excellent and very natural. Thank you!'),
(5022, 'kavy_pat', 'raje_chaf', 'Fast Delivery', 'Fast delivery and great quality. Keep it up!'),
(5023, 'deep_mis', 'anja_praf', 'Pure and Natural', 'Authentic product with no chemicals. 5 stars!'),
(5024, 'suni_gow', 'vive_rawf', 'Highly Recommended', 'Really good value for money. Will recommend to friends.'),
(5025, 'raje_nai', 'nish_devf', 'Will Order Again', 'Quality exceeded my expectations. Ordering again soon.'),
(5026, 'anja_tiw', 'mano_lalf', 'Good Packaging', 'Product was fresh and well-packed. Great service!'),
(5027, 'vive_cha', 'geet_naif', 'Value for Money', 'Clean, genuine, and aromatic. Loved the product.'),
(5028, 'nish_pra', 'hari_sahf', 'Very Fresh', 'Exactly what I needed. No complaints at all.'),
(5029, 'mano_raw', 'vand_kumf', 'Outstanding Quality', 'Good taste and fresh. Thank you for the quick dispatch.'),
(5030, 'geet_dev', 'suni_gupf', 'Authentic Product', 'Amazing product quality. One of the best I have bought.'),
(5031, 'hari_lal', 'rekh_shaf', 'Great Quality', 'Very happy with the quality. Will definitely order again!'),
(5032, 'vand_nai', 'giri_jaif', 'Excellent Product', 'Product was exactly as described. Great experience overall.'),
(5033, 'suni_sah', 'shre_khaf', 'Good Experience', 'Fresh produce delivered on time. Highly recommended.'),
(5034, 'rekh_kum', 'pras_malf', 'Fresh Produce', 'Pure quality with no adulteration. Very impressed.'),
(5035, 'giri_gup', 'usha_chof', 'Satisfied Customer', 'Good packaging and clean product. Satisfied with purchase.'),
(5036, 'shre_sha', 'ravi_srif', 'Top Quality', 'The flavour was excellent and very natural. Thank you!'),
(5037, 'pras_jai', 'lali_panf', 'Fast Delivery', 'Fast delivery and great quality. Keep it up!'),
(5038, 'usha_kha', 'kris_trif', 'Pure and Natural', 'Authentic product with no chemicals. 5 stars!'),
(5039, 'ravi_mal', 'bhav_dubf', 'Highly Recommended', 'Really good value for money. Will recommend to friends.'),
(5040, 'lali_cho', 'shya_shuf', 'Will Order Again', 'Quality exceeded my expectations. Ordering again soon.'),
(5041, 'kris_sri', 'padm_dwif', 'Good Packaging', 'Product was fresh and well-packed. Great service!'),
(5042, 'bhav_pan', 'anki_mukf', 'Value for Money', 'Clean, genuine, and aromatic. Loved the product.'),
(5043, 'shya_tri', 'smit_banf', 'Very Fresh', 'Exactly what I needed. No complaints at all.'),
(5044, 'padm_dub', 'varu_chaf', 'Outstanding Quality', 'Good taste and fresh. Thank you for the quick dispatch.'),
(5045, 'anki_shu', 'hema_royf', 'Authentic Product', 'Amazing product quality. One of the best I have bought.'),
(5046, 'smit_dwi', 'gane_shaf', 'Great Quality', 'Very happy with the quality. Will definitely order again!'),
(5047, 'varu_muk', 'sari_naif', 'Excellent Product', 'Product was exactly as described. Great experience overall.'),
(5048, 'hema_ban', 'dine_mehf', 'Good Experience', 'Fresh produce delivered on time. Highly recommended.'),
(5049, 'gane_cha', 'mala_pilf', 'Fresh Produce', 'Pure quality with no adulteration. Very impressed.'),
(5050, 'sari_roy', 'subr_verf', 'Satisfied Customer', 'Good packaging and clean product. Satisfied with purchase.'),
(5051, 'dine_sha', 'vima_redf', 'Top Quality', 'The flavour was excellent and very natural. Thank you!'),
(5052, 'mala_nai', 'moha_patf', 'Fast Delivery', 'Fast delivery and great quality. Keep it up!'),
(5053, 'subr_meh', 'chit_josf', 'Pure and Natural', 'Authentic product with no chemicals. 5 stars!'),
(5054, 'vima_pil', 'bala_sinf', 'Highly Recommended', 'Really good value for money. Will recommend to friends.'),
(5055, 'moha_ver', 'reva_dasf', 'Will Order Again', 'Quality exceeded my expectations. Ordering again soon.'),
(5056, 'chit_red', 'sant_iyef', 'Good Packaging', 'Product was fresh and well-packed. Great service!'),
(5057, 'bala_pat', 'myth_agaf', 'Value for Money', 'Clean, genuine, and aromatic. Loved the product.'),
(5058, 'reva_jos', 'aara_kumf', 'Very Fresh', 'Exactly what I needed. No complaints at all.'),
(5059, 'sant_sin', 'priy_raof', 'Outstanding Quality', 'Good taste and fresh. Thank you for the quick dispatch.'),
(5060, 'myth_das', 'roha_bosf', 'Authentic Product', 'Amazing product quality. One of the best I have bought.');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `notification_from_id` int NOT NULL,
  `notification_from` varchar(30) NOT NULL,
  `notification_to` varchar(30) NOT NULL,
  `notification_subject` varchar(30) NOT NULL,
  `notification_message` text NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6062 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_from_id`, `notification_from`, `notification_to`, `notification_subject`, `notification_message`) VALUES
(6001, 4001, 'sneh_redf', 'aara_sha', 'Order Dispatched', 'Your order has been dispatched and will arrive in 2-3 days.'),
(6002, 2002, 'priy_nai', 'kara_patf', 'Order Shipped', 'Your order has been shipped via local courier.'),
(6003, 1001, 'admin', 'mano_raw', 'Order Delivered', 'Your order has been delivered successfully. Enjoy!'),
(6004, 4004, 'arju_sinf', 'sneh_pil', 'Order Received', 'We have received your order and are processing it.'),
(6005, 2005, 'kara_ver', 'meer_dasf', 'Payment Confirmed', 'Payment confirmed. Your order will be dispatched shortly.'),
(6006, 1001, 'admin', 'vikr_sin', 'Payment Pending', 'Your payment is pending. Please complete the transaction.'),
(6007, 4007, 'anan_agaf', 'arju_pat', 'Order Cancelled', 'Your order has been cancelled as requested.'),
(6008, 2008, 'meer_jos', 'rahu_kumf', 'Order Ready', 'Your order is packed and ready for dispatch.'),
(6009, 1001, 'admin', 'ravi_mal', 'New Product Available', 'A new product has been added that matches your interests.'),
(6010, 4010, 'sure_bosf', 'anan_das', 'Account Update', 'Your account details have been updated successfully.'),
(6011, 2011, 'rahu_iye', 'laks_kulf', 'Review Requested', 'Please share your feedback for your recent purchase.'),
(6012, 1001, 'admin', 'nand_men', 'Offer Alert', 'Special discount available on your next order!'),
(6013, 4013, 'swat_menf', 'sure_kum', 'Delivery Delayed', 'Your delivery has been slightly delayed. We apologise.'),
(6014, 2014, 'laks_rao', 'adit_saxf', 'Order Processing', 'Your order is currently being processed by the farmer.'),
(6015, 1001, 'admin', 'deep_mis', 'Stock Updated', 'Stock for your favourite product has been updated.'),
(6016, 4016, 'taru_yadf', 'swat_kul', 'Order Dispatched', 'Your order has been dispatched and will arrive in 2-3 days.'),
(6017, 2017, 'adit_gho', 'ritu_patf', 'Order Shipped', 'Your order has been shipped via local courier.'),
(6018, 1001, 'admin', 'anja_tiw', 'Order Delivered', 'Your order has been delivered successfully. Enjoy!'),
(6019, 4019, 'kavy_gowf', 'taru_sax', 'Order Received', 'We have received your order and are processing it.'),
(6020, 2020, 'ritu_baj', 'deep_naif', 'Payment Confirmed', 'Payment confirmed. Your order will be dispatched shortly.'),
(6021, 1001, 'admin', 'adit_saxf', 'Payment Pending', 'Your payment is pending. Please complete the transaction.'),
(6022, 4022, 'raje_chaf', 'kavy_pat', 'Order Cancelled', 'Your order has been cancelled as requested.'),
(6023, 2023, 'deep_mis', 'anja_praf', 'Order Ready', 'Your order is packed and ready for dispatch.'),
(6024, 1001, 'admin', 'rahu_kumf', 'New Product Available', 'A new product has been added that matches your interests.'),
(6025, 4025, 'nish_devf', 'raje_nai', 'Account Update', 'Your account details have been updated successfully.'),
(6026, 2026, 'anja_tiw', 'mano_lalf', 'Review Requested', 'Please share your feedback for your recent purchase.'),
(6027, 1001, 'admin', 'shya_tri', 'Offer Alert', 'Special discount available on your next order!'),
(6028, 4028, 'hari_sahf', 'nish_pra', 'Delivery Delayed', 'Your delivery has been slightly delayed. We apologise.'),
(6029, 2029, 'mano_raw', 'vand_kumf', 'Order Processing', 'Your order is currently being processed by the farmer.'),
(6030, 1001, 'admin', 'nish_pra', 'Stock Updated', 'Stock for your favourite product has been updated.'),
(6031, 4031, 'rekh_shaf', 'hari_lal', 'Order Dispatched', 'Your order has been dispatched and will arrive in 2-3 days.'),
(6032, 2032, 'vand_nai', 'giri_jaif', 'Order Shipped', 'Your order has been shipped via local courier.'),
(6033, 1001, 'admin', 'taru_sax', 'Order Delivered', 'Your order has been delivered successfully. Enjoy!'),
(6034, 4034, 'pras_malf', 'rekh_kum', 'Order Received', 'We have received your order and are processing it.'),
(6035, 2035, 'giri_gup', 'usha_chof', 'Payment Confirmed', 'Payment confirmed. Your order will be dispatched shortly.'),
(6036, 1001, 'admin', 'meer_dasf', 'Payment Pending', 'Your payment is pending. Please complete the transaction.'),
(6037, 4037, 'lali_panf', 'pras_jai', 'Order Cancelled', 'Your order has been cancelled as requested.'),
(6038, 2038, 'usha_kha', 'kris_trif', 'Order Ready', 'Your order is packed and ready for dispatch.'),
(6039, 1001, 'admin', 'padm_dwif', 'New Product Available', 'A new product has been added that matches your interests.'),
(6040, 4040, 'shya_shuf', 'lali_cho', 'Account Update', 'Your account details have been updated successfully.'),
(6041, 2041, 'kris_sri', 'padm_dwif', 'Review Requested', 'Please share your feedback for your recent purchase.'),
(6042, 1001, 'admin', 'gane_shaf', 'Offer Alert', 'Special discount available on your next order!'),
(6043, 4043, 'smit_banf', 'shya_tri', 'Delivery Delayed', 'Your delivery has been slightly delayed. We apologise.'),
(6044, 2044, 'padm_dub', 'varu_chaf', 'Order Processing', 'Your order is currently being processed by the farmer.'),
(6045, 1001, 'admin', 'raje_chaf', 'Stock Updated', 'Stock for your favourite product has been updated.'),
(6046, 4046, 'gane_shaf', 'smit_dwi', 'Order Dispatched', 'Your order has been dispatched and will arrive in 2-3 days.'),
(6047, 2047, 'varu_muk', 'sari_naif', 'Order Shipped', 'Your order has been shipped via local courier.'),
(6048, 1001, 'admin', 'bhav_dubf', 'Order Delivered', 'Your order has been delivered successfully. Enjoy!'),
(6049, 4049, 'mala_pilf', 'gane_cha', 'Order Received', 'We have received your order and are processing it.'),
(6050, 2050, 'sari_roy', 'subr_verf', 'Payment Confirmed', 'Payment confirmed. Your order will be dispatched shortly.'),
(6051, 1001, 'admin', 'smit_banf', 'Payment Pending', 'Your payment is pending. Please complete the transaction.'),
(6052, 4052, 'moha_patf', 'mala_nai', 'Order Cancelled', 'Your order has been cancelled as requested.'),
(6053, 2053, 'subr_meh', 'chit_josf', 'Order Ready', 'Your order is packed and ready for dispatch.'),
(6054, 1001, 'admin', 'subr_verf', 'New Product Available', 'A new product has been added that matches your interests.'),
(6055, 4055, 'reva_dasf', 'moha_ver', 'Account Update', 'Your account details have been updated successfully.'),
(6056, 2056, 'chit_red', 'sant_iyef', 'Review Requested', 'Please share your feedback for your recent purchase.'),
(6057, 1001, 'admin', 'subr_verf', 'Offer Alert', 'Special discount available on your next order!'),
(6058, 4058, 'aara_kumf', 'reva_jos', 'Delivery Delayed', 'Your delivery has been slightly delayed. We apologise.'),
(6059, 2059, 'sant_sin', 'priy_raof', 'Order Processing', 'Your order is currently being processed by the farmer.'),
(6060, 1001, 'admin', 'nikh_bos', 'Stock Updated', 'Stock for your favourite product has been updated.'),
(6061, 4001, 'sneha.reddy100@hotmail.com', '2001', 'Test', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `farmer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `invoice_number` varchar(30) NOT NULL,
  `amount` int NOT NULL,
  `status` varchar(30) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7063 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `farmer_id`, `product_id`, `invoice_number`, `amount`, `status`, `datetime`) VALUES
(7001, 4001, 9001, 'INV-2025-7001', 2315, 'Cancelled', '2025-10-03 00:06:24'),
(7002, 4002, 9002, 'INV-2025-7002', 2059, 'Processing', '2025-10-18 03:50:34'),
(7003, 4003, 9003, 'INV-2025-7003', 1953, 'Processing', '2025-11-28 15:34:22'),
(7004, 4004, 9004, 'INV-2025-7004', 815, 'Delivered', '2026-03-02 22:02:20'),
(7005, 4005, 9005, 'INV-2025-7005', 2432, 'Pending', '2025-09-07 10:52:49'),
(7006, 4006, 9006, 'INV-2025-7006', 297, 'Pending', '2026-04-03 01:14:55'),
(7007, 4007, 9007, 'INV-2025-7007', 403, 'Delivered', '2025-09-14 10:37:30'),
(7008, 4008, 9008, 'INV-2025-7008', 573, 'Shipped', '2025-11-20 17:04:59'),
(7009, 4009, 9009, 'INV-2025-7009', 425, 'Cancelled', '2025-10-01 21:34:28'),
(7010, 4010, 9010, 'INV-2025-7010', 917, 'Pending', '2025-08-16 03:22:24'),
(7011, 4011, 9011, 'INV-2025-7011', 379, 'Cancelled', '2025-12-17 14:14:13'),
(7012, 4012, 9012, 'INV-2025-7012', 1679, 'Delivered', '2026-01-25 05:03:11'),
(7013, 4013, 9013, 'INV-2025-7013', 1426, 'Delivered', '2025-10-30 03:35:04'),
(7014, 4014, 9014, 'INV-2025-7014', 1718, 'Processing', '2026-04-08 16:10:40'),
(7015, 4015, 9015, 'INV-2025-7015', 990, 'Processing', '2025-11-21 14:16:46'),
(7016, 4016, 9016, 'INV-2025-7016', 339, 'Cancelled', '2025-12-28 09:25:08'),
(7017, 4017, 9017, 'INV-2025-7017', 380, 'Cancelled', '2025-06-28 13:36:42'),
(7018, 4018, 9018, 'INV-2025-7018', 560, 'Delivered', '2025-11-24 18:13:53'),
(7019, 4019, 9019, 'INV-2025-7019', 1679, 'Delivered', '2025-07-21 12:57:12'),
(7020, 4020, 9020, 'INV-2025-7020', 1542, 'Delivered', '2025-07-30 14:07:55'),
(7021, 4021, 9021, 'INV-2025-7021', 1864, 'Shipped', '2025-08-07 00:35:33'),
(7022, 4022, 9022, 'INV-2025-7022', 1910, 'Pending', '2025-12-25 04:39:57'),
(7023, 4023, 9023, 'INV-2025-7023', 2037, 'Processing', '2025-06-27 21:53:17'),
(7024, 4024, 9024, 'INV-2025-7024', 1301, 'Cancelled', '2026-02-02 17:57:21'),
(7025, 4025, 9025, 'INV-2025-7025', 564, 'Processing', '2026-01-18 18:41:55'),
(7026, 4026, 9026, 'INV-2025-7026', 1532, 'Cancelled', '2026-04-18 01:33:38'),
(7027, 4027, 9027, 'INV-2025-7027', 1292, 'Pending', '2025-07-15 00:00:46'),
(7028, 4028, 9028, 'INV-2025-7028', 460, 'Shipped', '2025-10-08 19:29:06'),
(7029, 4029, 9029, 'INV-2025-7029', 2443, 'Delivered', '2025-11-15 03:45:48'),
(7030, 4030, 9030, 'INV-2025-7030', 1360, 'Shipped', '2025-08-15 08:29:20'),
(7031, 4031, 9031, 'INV-2025-7031', 1688, 'Processing', '2025-12-31 00:59:29'),
(7032, 4032, 9032, 'INV-2025-7032', 927, 'Processing', '2025-09-19 02:02:30'),
(7033, 4033, 9033, 'INV-2025-7033', 816, 'Pending', '2025-10-03 04:00:01'),
(7034, 4034, 9034, 'INV-2025-7034', 2347, 'Delivered', '2026-01-30 19:30:33'),
(7035, 4035, 9035, 'INV-2025-7035', 736, 'Shipped', '2025-09-30 10:39:33'),
(7036, 4036, 9036, 'INV-2025-7036', 632, 'Pending', '2025-08-06 10:13:35'),
(7037, 4037, 9037, 'INV-2025-7037', 2419, 'Processing', '2025-08-28 23:35:07'),
(7038, 4038, 9038, 'INV-2025-7038', 1274, 'Shipped', '2025-08-31 10:12:50'),
(7039, 4039, 9039, 'INV-2025-7039', 1223, 'Shipped', '2026-05-02 03:11:34'),
(7040, 4040, 9040, 'INV-2025-7040', 1978, 'Processing', '2026-04-28 01:56:13'),
(7041, 4041, 9041, 'INV-2025-7041', 1167, 'Delivered', '2026-01-03 07:41:15'),
(7042, 4042, 9042, 'INV-2025-7042', 826, 'Delivered', '2025-06-01 08:26:07'),
(7043, 4043, 9043, 'INV-2025-7043', 1193, 'Processing', '2025-09-17 00:25:59'),
(7044, 4044, 9044, 'INV-2025-7044', 1590, 'Shipped', '2026-02-26 22:24:06'),
(7045, 4045, 9045, 'INV-2025-7045', 1562, 'Cancelled', '2025-07-15 19:46:51'),
(7046, 4046, 9046, 'INV-2025-7046', 922, 'Pending', '2025-09-06 11:33:04'),
(7047, 4047, 9047, 'INV-2025-7047', 2070, 'Delivered', '2026-03-09 03:00:40'),
(7048, 4048, 9048, 'INV-2025-7048', 1705, 'Delivered', '2025-11-20 21:33:11'),
(7049, 4049, 9049, 'INV-2025-7049', 2001, 'Pending', '2025-08-07 03:54:12'),
(7050, 4050, 9050, 'INV-2025-7050', 1997, 'Processing', '2025-08-13 22:19:25'),
(7051, 4051, 9051, 'INV-2025-7051', 1040, 'Delivered', '2025-08-26 06:18:43'),
(7052, 4052, 9052, 'INV-2025-7052', 710, 'Delivered', '2026-05-02 11:57:20'),
(7053, 4053, 9053, 'INV-2025-7053', 463, 'Processing', '2026-04-15 21:41:23'),
(7054, 4054, 9054, 'INV-2025-7054', 1133, 'Cancelled', '2026-01-27 12:13:28'),
(7055, 4055, 9055, 'INV-2025-7055', 2010, 'Processing', '2025-08-23 19:09:21'),
(7056, 4056, 9056, 'INV-2025-7056', 627, 'Shipped', '2025-09-16 17:04:56'),
(7057, 4057, 9057, 'INV-2025-7057', 1164, 'Processing', '2026-01-28 07:44:59'),
(7058, 4058, 9058, 'INV-2025-7058', 2284, 'Pending', '2026-03-03 02:31:00'),
(7059, 4059, 9059, 'INV-2025-7059', 457, 'Pending', '2025-11-07 01:03:09'),
(7060, 4060, 9060, 'INV-2025-7060', 655, 'Delivered', '2025-07-25 23:02:56'),
(7061, 4001, 9005, 'A4Y6RDT1LO', 95, 'ORDER PLACED', '2026-06-03 16:34:29'),
(7062, 4001, 9008, '9GAAO33KP7', 85, 'ORDER PLACED', '2026-06-06 01:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` int NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8063 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_number`, `status`, `datetime`, `amount`) VALUES
(8001, 'INV-2025-7001', 'Refunded', '2026-02-09 18:42:08', 2315),
(8002, 'INV-2025-7002', 'Pending', '2025-12-02 14:07:32', 2059),
(8003, 'INV-2025-7003', 'Pending', '2025-10-15 02:26:50', 1953),
(8004, 'INV-2025-7004', 'Paid', '2026-03-20 16:39:56', 815),
(8005, 'INV-2025-7005', 'Pending', '2025-11-20 11:14:19', 2432),
(8006, 'INV-2025-7006', 'Pending', '2025-11-05 10:52:46', 297),
(8007, 'INV-2025-7007', 'Paid', '2025-09-14 05:05:36', 403),
(8008, 'INV-2025-7008', 'Paid', '2025-07-06 08:38:40', 573),
(8009, 'INV-2025-7009', 'Failed', '2025-12-06 15:35:02', 425),
(8010, 'INV-2025-7010', 'Pending', '2025-08-20 09:05:45', 917),
(8011, 'INV-2025-7011', 'Refunded', '2025-08-15 16:38:49', 379),
(8012, 'INV-2025-7012', 'Paid', '2025-06-01 18:21:50', 1679),
(8013, 'INV-2025-7013', 'Paid', '2026-02-16 09:20:29', 1426),
(8014, 'INV-2025-7014', 'Pending', '2025-06-13 19:52:41', 1718),
(8015, 'INV-2025-7015', 'Pending', '2025-09-01 09:41:54', 990),
(8016, 'INV-2025-7016', 'Refunded', '2026-01-12 12:40:35', 339),
(8017, 'INV-2025-7017', 'Failed', '2025-07-14 15:46:16', 380),
(8018, 'INV-2025-7018', 'Paid', '2025-10-29 11:14:59', 560),
(8019, 'INV-2025-7019', 'Paid', '2026-01-25 22:33:40', 1679),
(8020, 'INV-2025-7020', 'Paid', '2025-11-23 14:49:01', 1542),
(8021, 'INV-2025-7021', 'Pending', '2025-08-04 13:31:57', 1864),
(8022, 'INV-2025-7022', 'Pending', '2025-09-24 08:51:44', 1910),
(8023, 'INV-2025-7023', 'Paid', '2026-03-02 23:51:31', 2037),
(8024, 'INV-2025-7024', 'Failed', '2026-04-15 16:49:55', 1301),
(8025, 'INV-2025-7025', 'Paid', '2025-09-21 01:45:16', 564),
(8026, 'INV-2025-7026', 'Refunded', '2025-06-30 21:12:35', 1532),
(8027, 'INV-2025-7027', 'Pending', '2025-10-27 21:08:00', 1292),
(8028, 'INV-2025-7028', 'Paid', '2026-03-18 08:10:14', 460),
(8029, 'INV-2025-7029', 'Paid', '2025-07-03 11:46:52', 2443),
(8030, 'INV-2025-7030', 'Paid', '2026-01-08 06:37:37', 1360),
(8031, 'INV-2025-7031', 'Paid', '2025-07-31 04:32:57', 1688),
(8032, 'INV-2025-7032', 'Pending', '2026-03-12 19:11:15', 927),
(8033, 'INV-2025-7033', 'Pending', '2026-04-25 18:21:46', 816),
(8034, 'INV-2025-7034', 'Paid', '2026-05-06 05:53:43', 2347),
(8035, 'INV-2025-7035', 'Pending', '2025-10-10 10:28:08', 736),
(8036, 'INV-2025-7036', 'Pending', '2026-01-02 05:06:07', 632),
(8037, 'INV-2025-7037', 'Paid', '2025-08-22 00:15:21', 2419),
(8038, 'INV-2025-7038', 'Paid', '2025-12-13 13:41:01', 1274),
(8039, 'INV-2025-7039', 'Paid', '2026-04-07 18:29:49', 1223),
(8040, 'INV-2025-7040', 'Pending', '2025-10-21 21:10:14', 1978),
(8041, 'INV-2025-7041', 'Paid', '2025-09-29 22:21:41', 1167),
(8042, 'INV-2025-7042', 'Paid', '2026-01-12 05:56:12', 826),
(8043, 'INV-2025-7043', 'Paid', '2026-01-31 10:56:56', 1193),
(8044, 'INV-2025-7044', 'Paid', '2025-11-22 02:14:08', 1590),
(8045, 'INV-2025-7045', 'Failed', '2026-02-19 01:39:14', 1562),
(8046, 'INV-2025-7046', 'Pending', '2025-10-01 05:52:21', 922),
(8047, 'INV-2025-7047', 'Paid', '2026-04-02 09:09:40', 2070),
(8048, 'INV-2025-7048', 'Paid', '2026-04-19 18:49:56', 1705),
(8049, 'INV-2025-7049', 'Pending', '2026-02-22 17:47:59', 2001),
(8050, 'INV-2025-7050', 'Pending', '2026-02-21 03:51:17', 1997),
(8051, 'INV-2025-7051', 'Paid', '2026-01-12 22:13:25', 1040),
(8052, 'INV-2025-7052', 'Paid', '2025-07-09 08:58:27', 710),
(8053, 'INV-2025-7053', 'Pending', '2026-03-05 12:31:20', 463),
(8054, 'INV-2025-7054', 'Refunded', '2026-02-06 04:14:07', 1133),
(8055, 'INV-2025-7055', 'Paid', '2026-01-30 11:57:13', 2010),
(8056, 'INV-2025-7056', 'Pending', '2025-11-04 22:10:02', 627),
(8057, 'INV-2025-7057', 'Paid', '2026-05-07 16:47:09', 1164),
(8058, 'INV-2025-7058', 'Pending', '2025-09-18 16:29:38', 2284),
(8059, 'INV-2025-7059', 'Pending', '2025-12-13 04:51:44', 457),
(8060, 'INV-2025-7060', 'Paid', '2025-09-17 01:11:45', 655),
(8061, 'A4Y6RDT1LO', 'ORDER PLACED', '2026-06-03 16:34:29', 95),
(8062, '9GAAO33KP7', 'ORDER PLACED', '2026-06-06 01:00:09', 85);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) NOT NULL,
  `product_description` text NOT NULL,
  `product_amount` int NOT NULL,
  `consumer_id` int NOT NULL,
  `image_location` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9064 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_amount`, `consumer_id`, `image_location`) VALUES
(9001, 'Basmati Rice', 'Premium long-grain basmati rice, aged 2 years.', 120, 2001, '../images/products/basmati_rice.jpg'),
(9002, 'Wheat Flour', 'Stone-ground whole wheat flour, rich in fibre.', 55, 2002, '../images/products/wheat_flour.jpg'),
(9003, 'Organic Turmeric', 'Pure organic turmeric powder, high curcumin content.', 90, 2003, '../images/products/turmeric.jpg'),
(9004, 'Red Chilli Powder', 'Sun-dried red chilli powder, medium spice level.', 75, 2004, '../images/products/red_chilli.jpg'),
(9005, 'Toor Dal', 'Fresh split pigeon peas, protein-rich and tasty.', 95, 2005, '../images/products/toor_dal.jpg'),
(9006, 'Mustard Oil', 'Cold-pressed mustard oil, ideal for cooking.', 180, 2006, '../images/products/mustard_oil.jpg'),
(9007, 'Groundnut Oil', 'Refined groundnut oil, light and flavourful.', 160, 2007, '../images/products/groundnut_oil.jpg'),
(9008, 'Jaggery', 'Unrefined cane jaggery blocks, natural sweetener.', 85, 2008, '../images/products/jaggery.jpg'),
(9009, 'Sesame Seeds', 'White sesame seeds, perfect for cooking.', 110, 2009, '../images/products/sesame_seeds.jpg'),
(9010, 'Coriander Powder', 'Freshly ground coriander seeds, aromatic.', 60, 2010, '../images/products/coriander.jpg'),
(9011, 'Black Pepper', 'Whole black peppercorns, strong aroma.', 200, 2011, '../images/products/black_pepper.jpg'),
(9012, 'Coconut Oil', 'Cold-pressed virgin coconut oil, pure.', 220, 2012, '../images/products/coconut_oil.jpg'),
(9013, 'Chana Dal', 'Split chickpeas, high in protein and fibre.', 80, 2013, '../images/products/chana_dal.jpg'),
(9014, 'Moong Dal', 'Green moong dal, easy to digest.', 90, 2014, '../images/products/moong_dal.jpg'),
(9015, 'Cardamom', 'Green cardamom pods, intensely aromatic.', 350, 2015, '../images/products/cardamom.jpg'),
(9016, 'Sorghum Flour', 'Jowar flour, gluten-free and iron-rich.', 65, 2016, '../images/products/jowar_flour.jpg'),
(9017, 'Ragi Flour', 'Finger millet flour, excellent calcium source.', 70, 2017, '../images/products/ragi_flour.jpg'),
(9018, 'Sunflower Oil', 'Refined sunflower oil, light and healthy.', 145, 2018, '../images/products/sunflower_oil.jpg'),
(9019, 'Honey', 'Raw wildflower honey, unprocessed and pure.', 300, 2019, '../images/products/honey.jpg'),
(9020, 'Amla Powder', 'Dried Indian gooseberry powder, rich in Vit C.', 130, 2020, '../images/products/amla_powder.jpg'),
(9021, 'Ginger Powder', 'Dried ginger powder, warm and spicy flavour.', 85, 2021, '../images/products/ginger_powder.jpg'),
(9022, 'Masoor Dal', 'Red lentils, fast-cooking and nutritious.', 75, 2022, '../images/products/masoor_dal.jpg'),
(9023, 'Maize Flour', 'Yellow corn flour, great for bhakri.', 50, 2023, '../images/products/maize_flour.jpg'),
(9024, 'Bajra Flour', 'Pearl millet flour, rich in iron.', 60, 2024, '../images/products/bajra_flour.jpg'),
(9025, 'Soybean Oil', 'Refined soybean oil, neutral taste.', 130, 2025, '../images/products/soybean_oil.jpg'),
(9026, 'Tomato Puree', 'Fresh tomato puree, no preservatives.', 45, 2026, '../images/products/tomato_puree.jpg'),
(9027, 'Onion Powder', 'Dehydrated onion powder, strong flavour.', 70, 2027, '../images/products/onion_powder.jpg'),
(9028, 'Garlic Paste', 'Fresh garlic paste, ready to use.', 55, 2028, '../images/products/garlic_paste.jpg'),
(9029, 'Banana Chips', 'Crispy banana chips, lightly salted.', 80, 2029, '../images/products/banana_chips.jpg'),
(9030, 'Cotton Seed Oil', 'Refined cottonseed oil, high smoke point.', 140, 2030, '../images/products/cotton_oil.jpg'),
(9031, 'Basmati Rice', 'Premium long-grain basmati rice, aged 2 years.', 120, 2031, '../images/products/basmati_rice.jpg'),
(9032, 'Wheat Flour', 'Stone-ground whole wheat flour, rich in fibre.', 55, 2032, '../images/products/wheat_flour.jpg'),
(9033, 'Organic Turmeric', 'Pure organic turmeric powder, high curcumin content.', 90, 2033, '../images/products/turmeric.jpg'),
(9034, 'Red Chilli Powder', 'Sun-dried red chilli powder, medium spice level.', 75, 2034, '../images/products/red_chilli.jpg'),
(9035, 'Toor Dal', 'Fresh split pigeon peas, protein-rich and tasty.', 95, 2035, '../images/products/toor_dal.jpg'),
(9036, 'Mustard Oil', 'Cold-pressed mustard oil, ideal for cooking.', 180, 2036, '../images/products/mustard_oil.jpg'),
(9037, 'Groundnut Oil', 'Refined groundnut oil, light and flavourful.', 160, 2037, '../images/products/groundnut_oil.jpg'),
(9038, 'Jaggery', 'Unrefined cane jaggery blocks, natural sweetener.', 85, 2038, '../images/products/jaggery.jpg'),
(9039, 'Sesame Seeds', 'White sesame seeds, perfect for cooking.', 110, 2039, '../images/products/sesame_seeds.jpg'),
(9040, 'Coriander Powder', 'Freshly ground coriander seeds, aromatic.', 60, 2040, '../images/products/coriander.jpg'),
(9041, 'Black Pepper', 'Whole black peppercorns, strong aroma.', 200, 2041, '../images/products/black_pepper.jpg'),
(9042, 'Coconut Oil', 'Cold-pressed virgin coconut oil, pure.', 220, 2042, '../images/products/coconut_oil.jpg'),
(9043, 'Chana Dal', 'Split chickpeas, high in protein and fibre.', 80, 2043, '../images/products/chana_dal.jpg'),
(9044, 'Moong Dal', 'Green moong dal, easy to digest.', 90, 2044, '../images/products/moong_dal.jpg'),
(9045, 'Cardamom', 'Green cardamom pods, intensely aromatic.', 350, 2045, '../images/products/cardamom.jpg'),
(9046, 'Sorghum Flour', 'Jowar flour, gluten-free and iron-rich.', 65, 2046, '../images/products/jowar_flour.jpg'),
(9047, 'Ragi Flour', 'Finger millet flour, excellent calcium source.', 70, 2047, '../images/products/ragi_flour.jpg'),
(9048, 'Sunflower Oil', 'Refined sunflower oil, light and healthy.', 145, 2048, '../images/products/sunflower_oil.jpg'),
(9049, 'Honey', 'Raw wildflower honey, unprocessed and pure.', 300, 2049, '../images/products/honey.jpg'),
(9050, 'Amla Powder', 'Dried Indian gooseberry powder, rich in Vit C.', 130, 2050, '../images/products/amla_powder.jpg'),
(9051, 'Ginger Powder', 'Dried ginger powder, warm and spicy flavour.', 85, 2051, '../images/products/ginger_powder.jpg'),
(9052, 'Masoor Dal', 'Red lentils, fast-cooking and nutritious.', 75, 2052, '../images/products/masoor_dal.jpg'),
(9053, 'Maize Flour', 'Yellow corn flour, great for bhakri.', 50, 2053, '../images/products/maize_flour.jpg'),
(9054, 'Bajra Flour', 'Pearl millet flour, rich in iron.', 60, 2054, '../images/products/bajra_flour.jpg'),
(9055, 'Soybean Oil', 'Refined soybean oil, neutral taste.', 130, 2055, '../images/products/soybean_oil.jpg'),
(9056, 'Tomato Puree', 'Fresh tomato puree, no preservatives.', 45, 2056, '../images/products/tomato_puree.jpg'),
(9057, 'Onion Powder', 'Dehydrated onion powder, strong flavour.', 70, 2057, '../images/products/onion_powder.jpg'),
(9058, 'Garlic Paste', 'Fresh garlic paste, ready to use.', 55, 2058, '../images/products/garlic_paste.jpg'),
(9059, 'Banana Chips', 'Crispy banana chips, lightly salted.', 80, 2059, '../images/products/banana_chips.jpg'),
(9060, 'Cotton Seed Oil', 'Refined cottonseed oil, high smoke point.', 140, 2060, '../images/products/cotton_oil.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
