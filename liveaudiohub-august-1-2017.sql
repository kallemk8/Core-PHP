-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 01, 2017 at 12:17 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srikanth_liveaudiohub`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio_posts`
--

CREATE TABLE `audio_posts` (
  `ID` bigint(20) NOT NULL,
  `post_author` bigint(20) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL,
  `post_type` varchar(20) NOT NULL,
  `postimage` text NOT NULL,
  `menu_order` int(11) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `post_url` text NOT NULL,
  `movie_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audio_posts`
--

INSERT INTO `audio_posts` (`ID`, `post_author`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `post_type`, `postimage`, `menu_order`, `meta_title`, `meta_keywords`, `meta_description`, `post_url`, `movie_id`) VALUES
(1, 1, '2016-09-13 05:25:40', 'Cast & Crew :: Jr NTR, Samantha, Mohanlal, Nithya Menen<br/>\nMusic :: Devi Sri Prasad<br/>\nLyrics :: Ramajogayya Sastry<br/>\nDirector :: Koratala Siva<br/>\nProducer :: Naveen Yerneni, Y Ravi Shankar, CV Mohan<br/>\nCassettes & CDâ€™s On :: Lahari Music<br/>\nRipper :: tEam AtoZmp3<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Pranaamam â€“ Shankar Mahadevan<br/>\n02 â€“ Rock On Bro â€“ Raghu Dixit<br/>\n03 â€“ Apple Beauty â€“ Yazin Nizar, Neha Bhasin<br/>\n04 â€“ Jayaho Janatha â€“ Sukhwinder Singh, Vijay Prakash<br/>\n05 â€“ Nee Selavdigi â€“ Shwetha Mohan<br/>\n06 â€“ Pakka Local â€“ Sagar, Geetha Madhuri<br/>', 'Janatha Garage (2016) Movie Audio CD Rips Free Download', '', 'Open', 'posts', 'post_images/Janatha-Garage-(2016)13_09_2016-391.jpg', 1, 'NTR Janatha Garage (2016) Movie Audio Songs Free Download', 'NTR Janatha Garage, Samantha Janatha Garage, Movie Audio songs, free download', 'Listen Janatha Garage (2016) Movie Audio CD Rips Free Download', 'janatha-garage-2016-movie-audio-cd-rips-free-download', 2),
(2, 1, '2016-09-13 09:44:03', 'Inkokkadu (2016) Movie Audio CD Rips Free Download', 'Inkokkadu (2016) Movie Audio CD Rips Free Download', '', 'Open', 'posts', 'post_images/Inkokkadu-(2016)13_09_2016-443.jpg', 1, 'Inkokkadu (2016) Movie Audio CD Rips Free Download', 'Inkokkadu Telugu Movie Audio songs, Inkokkadu Telugu Movie Audio songs 2016', 'Inkokkadu (2016) Movie Audio CD Rips Free Download', 'inkokkadu-2016-movie-audio-cd-rips-free-download', 2),
(3, 1, '2016-09-19 01:43:24', 'Jyo Achyutananda (2016) Movie Audio CD Rips Free Download | Free to listen Jyo Achyutananda (2016) Movie Audio CD Rips Free Download | Latest Jyo Achyutananda (2016) Movie Mp3 Songs Free Download | New Telugu Movie audio songs 2016 | Listen Telugu Movie audio songs 2016.', 'Jyo Achyutananda (2016) Movie Mp3 Songs Free Download', '', 'Open', 'posts', 'post_images/Jyo-Achyutananda-(2016)-Movie-mp3-songs-download19_09_2016-604.jpg', 1, 'Listen and Download Jyo Achyutananda Telugu Movie Audio songs 2016', 'Listen and Download Jyo Achyutananda Telugu Movie Audio songs 2016', 'Download Jyo Achyutananda Telugu Movie Audio songs 2016 | New Telugu Movie Mp3 Songs 2016', 'jyo-achyutananda-2016-movie-mp3-songs-free-download', 2),
(4, 1, '2016-09-19 01:48:21', 'Cast & Crew :: Shantanu BhagyaRaj, Rashmi Gowtham<br/>\nMusic :: Vijay Ebnezar<br/>\nLyrics :: Bharathi Babu<br/>\nDirector :: AC.Moghil<br/>\nProducer :: Vijay Gajagouni<br/>\nCassettes & CDâ€™s On :: Lahari Music<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Odi Puvve â€“ Revanth, Mohana<br/>\n02 â€“ Narmadha â€“ Dhanunjay, Smruthi<br/>\n03 â€“ Villukalavade â€“ Dhanunjay, Smruthi<br/>\n04 â€“ Ame Chinukula â€“ Dhanunjay<br/>\n05 â€“ Ksaminchindhi â€“ Revanth, Mohana<br/>\n06 â€“ Kasanova â€“ Dhanunjay<br/>\n07 â€“ Idhi Porapaate â€“ Dhanunjay<br/>', 'Balapam Patti Bhama Odilo (2016) Movie Mp3 Songs Free Download', '', 'Open', 'posts', 'post_images/Balapam-Patti-Bhama-Odilo-(2016)19_09_2016-120.jpg', 1, 'Listen and Download Balapam Patti Bhama Odilo Movie Audio Songs', 'Listen and Download Balapam Patti Bhama Odilo Movie Audio Songs, Balapam Patti Bhama Odilo (2016) Movie Mp3 Songs Free Download', 'Listen and Download Balapam Patti Bhama Odilo Movie Audio Songs, Balapam Patti Bhama Odilo (2016) Movie Mp3 Songs Free Download', 'balapam-patti-bhama-odilo-2016-movie-mp3-songs-free-download', 2),
(5, 1, '2016-09-19 01:53:10', 'Cast & Crew :: Golden Star Ganesh, Manjari Phadnis<br/>\nMusic :: S. Narayana<br/>\nLyrics :: Vennelakanti<br/>\nDirector :: S. Narayana<br/>\nProducer :: Chiguluri Gangadhar Rao<br/>\nCassettes & CDâ€™s On :: Shivaranjani Music<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Kalalo Yadalo â€“ Dhanunjay, Lipsika<br/>\n02 â€“ Yevaro Oka Urvasi â€“ Dhanunjay<br/>\n03 â€“ Memu Ittage Meeru Attage â€“ Siddu<br/>\n04 â€“ Oo Puvva â€“ Aishwarya<br/>\n05 â€“ Oo Manasa â€“ Dhanunjay, Lipsika<br/>\n06 â€“ Cheliya Naa Cheliya â€“ Dhanunjay, Lipsika<br/>', 'Journey 2 (2016) Movie Mp3 Songs Free Download', '', 'Open', 'posts', 'post_images/Journey-2-(2016)19_09_2016-518.jpg', 1, 'Download Free Journey 2 (2016) Movie Mp3 Songs', 'Download Free Journey 2 (2016) Movie Mp3 Songs, Listen Journey 2 (2016) Movie Mp3 Songs', 'Download Free Journey 2 (2016) Movie Mp3 Songs, Listen Journey 2 (2016) Movie Mp3 Songs', 'journey-2-2016-movie-mp3-songs-free-download', 2),
(6, 1, '2016-09-19 01:58:42', 'Cast & Crew :: Srikanth<br/>\nMusic :: Sai Karthik<br/>\nLyrics :: Shyam Kasarla<br/>\nDirector :: Karanam P Babji<br/>\nProducer :: Dasari VVS.V.Prasad, V.V.Durga Prasad Anagani<br/>\nCassettes & CDâ€™s On :: Aditya Music<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Cheekati Cheelchaga â€“ Arun<br/>\n02 â€“ Rangam Lo â€“ Aparna<br/>\n03 â€“ Tellerindantaade â€“ Aparna<br/>', 'Mental (2016) Movie Mp3 Songs Free Download', '', 'Open', 'posts', 'post_images/Mental-201619_09_2016-962.jpg', 1, 'Listen and Download Mental (2016) Movie Audio Songs', 'Listen and Download Mental (2016) Movie Audio Songs, Mental (2016) Movie Mp3 Songs Free Download', 'Listen and Download Mental (2016) Movie Audio Songs, Mental (2016) Movie Mp3 Songs Free Download', 'mental-2016-movie-mp3-songs-free-download', 2),
(8, 1, '2016-09-20 07:38:20', 'Cast & Crew :: Naga Chaitanya, Sruthi Hassan, Anupama, Madonna\nMusic :: Gopi Sunder, Rajesh Murugesan\nLyrics :: Ramajogayya Sastry, Purna Chary, Shreemani\nDirector :: Chandoo Mondeti\nProducer :: Naga Vamsi Suryadevara\nCassettes & CDâ€™s On :: Aditya Music\nRipper :: tEam AtoZmp3\n\n-= TrackList =-\n\n01 â€“ Evare â€“ Vijay Yesudas\n02 â€“ Agarottula â€“ Naresh Iyer\n03 â€“ Ninna Leni â€“ Karthik\n04 â€“ Prema Pusene â€“ Karthik\n05 â€“ Bang Bang â€“ Haricharan\n06 â€“ Ennosarlu â€“ Sachin Warrier\n07 â€“ Evadu Evadu â€“ Ranjith', 'Premam (2016) Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Premam-(2016)-Movie-Mp3-Audio-Songs-Free-Download20_09_2016-943.jpg', 1, 'Premam (2016) Movie Mp3 Audio Songs Free Download', 'Premam (2016) Movie Mp3 Audio Songs Free Download, Premam (2016) Movie Audio Songs Free Download', 'Premam (2016) Movie Mp3 Audio Songs Free Download, Premam (2016) Movie Audio Songs Free Download', 'premam-2016-movie-audio-songs-free-download', 2),
(9, 1, '2016-09-23 09:37:01', 'Cast & Crew :: Ram Pothineni, Raashi Khanna<br/>\nMusic :: Mohamaad Ghibran<br/>\nLyrics :: Shree Mani, Ramajogaiah Sastry, Bhaskara Batla<br/>\nDirector :: Santosh Srinivas<br/>\nProducer :: Ram Achanta, Gopi Achanta, Anil Sunkara<br/>\nCassettes & CDâ€™s On :: Lahari Music<br/>\nRipper :: tEam AtoZmp3<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Come Back Come Back â€“ Anudeep, Yazin<br/>\n02 â€“ Baby Doll â€“ Anurag Kulkarni, Sahithi Chaganti<br/>\n03 â€“ Ompula Dhaniya â€“ Dhanunjay, Simha, Lipsika<br/>\n04 â€“ Naalo Nenenaa â€“ Sameera Bharadwaj, Chorus<br/>\n05 â€“ Hypare Hypare â€“ Dhanunjay, Geetha Madhuri, Lipsika<br/>', 'Hyper (2016) Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/hyper-telugu-movie-201623_09_2016-411.jpg', 1, 'Hyper Telugu Movie Audio Songs Free Download 2016', 'Hyper Telugu Movie Audio Songs Free Download 2016, Hyper (2016) Movie Audio Songs Free Download', 'Hyper Telugu Movie Audio Songs Free Download 2016, Hyper (2016) Movie Audio Songs Free Download', 'hyper-2016-movie-audio-songs-free-download', 2),
(10, 1, '2016-09-25 07:33:33', 'Cast & Crew :: Sunil, Richa\nMusic :: Saagar Mahathi\nLyrics :: Veeru Potla, Balaji\nDirector :: Veeru Potla\nProducer :: Rama Brahmam Sunkara\nCassettes & CDs On :: Aditya Music\nRipper :: tEam AtoZmp3\n\n-= TrackList =-\n\n01 â€“ Mecanos Gold â€“ Saagar Mahathi, Yazin Nizar, Roll Rida\n02 â€“ Kopaalenduku Babai â€“ Vijay Prakash, Ramya Behara\n03 â€“ Preme Kavalandi â€“ Haricharan, Divya Divakarv\n04 â€“ Geetha â€“ Narendra, Uma Neha', 'Eedu Gold Ehe (2016) Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Eedu-Gold-Ehe-(2016)25_09_2016-476.jpg', 1, 'Eedu Gold Ehe (2016) Movie Audio Songs Free Download', 'Eedu Gold Ehe (2016) Movie Audio Songs Free Download', 'Eedu Gold Ehe (2016) Movie Audio Songs Free Download', 'eedu-gold-ehe-2016-movie-audio-songs-free-download', 2),
(11, 1, '2016-09-25 20:07:51', 'Cast & Crew :: Prabhu Deva, Tamanna, Amy Jackson\nMusic :: Sajid â€“ Wajid\nLyrics :: Ramajogayya Sastry, Sreejo\nDirector :: Vijay\nProducer :: MVV Satyanarayana\nCassettes & CDâ€™s On :: Mango Music\nRipper :: tEam AtoZmp3\n\n-= TrackList =-\n\n01 â€“ Chal Maar â€“ Nakash Aziz\n02 â€“ Dance Chey Mazaga â€“ Geetha Madhuri\n03 â€“ Aakasham Lo Rangulanni â€“ Karthik\n04 â€“ Rang Rang Rangare â€“ Swetha Mohan', 'Abhinetri (2016) Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Abhinetri-Audio-Launch-Albums-3025_09_2016-476.jpg', 1, 'Abhinetri (2016) Movie Audio Songs Free Download', 'Abhinetri (2016) Movie Audio Songs Free Download , New Telugu Movie Songs 2016', 'Abhinetri (2016) Movie Audio Songs Free Download , New Telugu Movie Songs 2016', 'abhinetri-2016-movie-audio-songs-free-download', 2),
(12, 1, '2016-10-05 00:02:30', 'Cast & Crew :: Nawin Vijay Krishna, Nithya, Shravya<br/>\nMusic :: Achu Rajamani, Shekhar Chandra<br/>\nLyrics :: Rahman<br/>\nDirector :: PV Giri<br/>\nProducer :: Radha Kishore, Bikshamayya<br/>\nCassettes & CDâ€™s On :: Mango Music<br/>\nRipper :: tEam AtoZmp3\n<br/><br/>\n-= TrackList =-<br/>\n<br/><br/>\n01 â€“ Kalthi â€“ Dhanunjay<br/>\n02 â€“ Ninney â€“ Achu<br/>\n03 â€“ Nanney Nanney â€“ Mansi Mahadevan<br/>\n04 â€“ Party Party â€“ Sunitha Sarathy<br/>\n05 â€“ Ninney (Reprise Version) â€“ Achu<br/>', 'Nandini Nursing Home (2016) Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Nandini-Nursing-Home-(2016)05_10_2016-809.jpg', 1, 'Nandini Nursing Home (2016) Movie Audio Songs Free Download', 'Nandini Nursing Home Movie Audio Songs Free Download', 'Nandini Nursing Home Movie Audio Songs Free Download', 'nandini-nursing-home-2016-movie-audio-songs-free-download', 2),
(13, 1, '2016-10-05 09:23:45', 'Cast & Crew :: Nandamuri Kalyan Ram, Aditi Arya, Jagapati Babu<br/>\nMusic :: Anup Rubens<br/>\nLyrics :: Bhaskarbhatla, Puri Jagannadh<br/>\nDirector :: Puri Jagannadh<br/>\nProducer :: Nandamuri Kalyan Ram<br/>\nCassettes & CDâ€™s On :: Aditya Music<br/>\nRipper :: tEam AtoZmp3<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Kanulu Navaina â€“ Jubin Nautiyal, Mohana Bhogaraju<br/>\n02 â€“ Yey Yey Yey Raa â€“ Puri Jagannadh, Anoop Rubens, Rolla Rida<br/>\n03 â€“ Ela Ela Ela â€“ Shakthisree Gopalan, Krishna Lasya<br/>\n04 â€“ Podaade Poda Poda â€“ Spurthy, Teju Priya<br/>\n05 â€“ ISM â€“ Puri Jagannadh<br/>', 'ISM (2016) Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Free-Download-ISM-Telugu-Movie-Audio-Songs-201605_10_2016-669.jpeg', 1, 'ISM (2016) Movie Audio Songs Free Download', 'ISM (2016) Movie Audio Songs Free Download', 'ISM (2016) Movie Audio Songs Free Download', 'ism-2016-movie-audio-songs-free-download', 2),
(14, 1, '2016-11-01 23:52:36', 'Cast & Crew :: Sivakarthikeyan, Keerthi Suresh<br/>\nMusic :: Anirudh Ravichand<br/>\nLyrics :: Inno Genga, Shree Mani<br/>\nDirector :: Bhagyaraj Kannan<br/>\nProducer :: Raja, Dil Raju<br/>\nCassettes & CDâ€™s On :: Sony Music<br/>\nRipper :: tEam AtoZmp3<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Remo Nee Styleki â€“ Anirudh<br/>\n02 â€“ Kollagottey â€“ Anirudh<br/>\n03 â€“ Katha Kaadhey â€“ Ajesh, Srinidhi<br/>\n04 â€“ Meesa Beauty â€“ Ranjith<br/>\n05 â€“ Love Selfie â€“ Nakash Aziz<br/>\n06 â€“ Come Closer (Katha Kaadhey Reprise) â€“ Inno Genga<br/>', 'Remo (2016) Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Remo-Audio-songs-free-download-201601_11_2016-517.jpg', 1, 'Remo (2016) Movie Audio Songs Free Download', 'Remo (2016) Movie Audio Songs Free Download', 'Remo (2016) Movie Audio Songs Free Download', 'remo-2016-movie-audio-songs-free-download', 2),
(15, 1, '2016-11-02 19:20:38', 'Cast & Crew :: Vishal, Tamannaah<br/>\nMusic :: Hiphop Tamizha<br/>\nLyrics :: Dr. Challa Bhagyalakshmi<br/>\nDirector :: Suraaj<br/>\nProducer :: Hari, S. Nanthagopal<br/>\nCassettes & CDâ€™s On :: Sony Music<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Ne Koncham Nalupule â€“ K.G. Ranjith<br/>\n02 â€“ Hrudayam Hrudayam â€“ Nikhita Gandhi<br/>\n03 â€“ Dil Chahtha Hai â€“ Hemachandra, Sniggy<br/>\n04 â€“ Dabbe Ra Top u â€“ Hemachandra, Mark Antony Thomas<br/>\n05 â€“ Okkadochadu (Theme) â€“ Hemachandra<br/>', 'Okkadochadu (2016) Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Okkadochadu-(2016)-telugu-Movie-Audio-songs-201602_11_2016-591.jpg', 1, 'Okkadochadu Telugu Movie Audio Songs Free Download', 'Okkadochadu (2016) Movie Audio Songs Free Download , Okkadochadu Telugu Movie Audio Songs Free Download', 'Okkadochadu (2016) Movie Audio Songs Free Download , Okkadochadu Telugu Movie Audio Songs Free Download', 'okkadochadu-2016-movie-audio-songs-free-download', 2),
(16, 1, '2016-11-02 19:35:59', 'Cast & Crew :: Sumanth, Pallavi<br/>\nMusic :: Sricharan Pakala<br/>\nLyrics :: Kittu Vissapragada, Chaitanya Varma, Krishna Madineni<br/>\nDirector :: Mallik Ram<br/>\nProducer :: Y. Sumanth<br/>\nCassettes & CDâ€™s On :: Aditya Music<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Ayyo Baasu â€“ Mohammed Abid Ali<br/>\n02 â€“ Roju Ila â€“ Hemachandra, Geetha Madhuri<br/>\n03 â€“ Nee Valane â€“ Ishaq Vali<br/>\n04 â€“ Kaasu Paisa â€“ Siddu Jonnalagadda,(FT.Tanikella Bharani)<br/>\n05 â€“ Theerame â€“ Naresh Iyer, Sri Vidya<br/>\n06 â€“ Alalu Aagavala â€“ Poojan Kohli, Soundarya Sakalya<br/>\n07 â€“ Pelli Beatu â€“ Poojan Kohli\n08 â€“ Nee Valane (Sad) â€“ Sri Vidya, Sricharan Pakala', 'Naruda Donaruda (2016) Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Naruda-Donaruda-(2016)02_11_2016-242.jpg', 1, 'Naruda Donaruda (2016) Movie Audio Songs Free Download', 'Naruda Donaruda (2016) Movie Audio Songs Free Download', 'Naruda Donaruda (2016) Movie Audio Songs Free Download', 'naruda-donaruda-2016-movie-audio-songs-free-download', 2),
(17, 1, '2016-11-07 21:03:19', 'Cast & Crew :: Saptagiri, Roshini Prakash<br/>\nMusic :: Bulganin<br/>\nLyrics :: Chaitanya Varma<br/>\nDirector :: Arun Pawar<br/>\nProducer :: Dr K Ravi Kirane<br/>\nCassettes & CDâ€™s On :: Lahari Music<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Kekekkindo Lammi â€“ Ranjith, Geetha Madhuri<br/>\n02 â€“ Be Positive â€“ Yasin Nizar<br/>\n03 â€“ Papa Nuvu â€“ Rahul Nambiar<br/>\n04 â€“ Velugu Cheekati â€“ Vijay Bulganin<br/>\n05 â€“ Saptagiri Express (Theme Song) â€“ Bulganin', 'Sapthagiri Express (2016) Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Saptagiri-Express-Theatrical-Trailer-201607_11_2016-343.jpeg', 1, 'Sapthagiri Express (2016) Movie Audio Songs Free Download', 'Sapthagiri Express (2016) Movie Audio Songs Free Download', 'Sapthagiri Express (2016) Movie Audio Songs Free Download', 'sapthagiri-express-2016-movie-audio-songs-free-download', 2),
(18, 1, '2016-12-18 18:44:31', 'Cast & Crew :: Sharwanand, Anupama<br/>\nMusic :: Mickey J Meyer<br/>\nLyrics :: Ramajogaiah Sastry<br/>\nDirector :: Vegesna Satish<br/>\nProducer :: Dil Raju<br/>\nCassettes & CDâ€™s On :: Aditya Music<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Mellaga Tellarindoi â€“ Anurag Kulkarni, Ramya Behara, Mohana Bhogaraju<br/>\n02 â€“ Shatamanam Bhavati â€“ K. S. Chithra, Vijay Yesudas<br/>\n03 â€“ Naalo Nenu â€“ Sameera Bharadwaj<br/>\n04 â€“ Nilavade â€“ S. P. Balasubrahmanyam<br/>\n05 â€“ Hailo Hailessare â€“ Aditya Iyengar, Rohit Paritala, Mohana Bhogaraju, Divya Divakar<br/>', 'Shatamanam Bhavati Telugu Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Shatamanam-Bhavati-Telugu-Movie-Audio-Songs-Free-Download18_12_2016-110.jpg', 1, 'Shatamanam Bhavati Telugu Movie Audio Songs Free Download', 'Shatamanam Bhavati Telugu Movie Audio Songs Free Download', 'Shatamanam Bhavati Telugu Movie Audio Songs Free Download', 'shatamanam-bhavati-telugu-movie-audio-songs-free-download', 2),
(19, 1, '2016-12-23 10:48:04', 'Cast & Crew :: Hrithik Roshan, Yami Gautam<br/>\nMusic :: Rajesh Roshan<br/>\nLyrics :: Srimani, Ramajogaiah Sastry<br/>\nDirector :: Sanjay Gupta<br/>\nProducer :: Rakesh Roshan<br/>\nCassettes & CDs On :: T-Series<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Balam â€“ Rahul Nambiar, Vandana Srinivasan<br/>\n02 â€“ Kothagaa â€“ Rahul Nambiar<br/>\n03 â€“ Mona Amour â€“ Santosh Hariharan<br/>\n04 â€“ Balam (Sad) â€“ Rahul Nambiar<br/>', 'Balam Telugu Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Balam-telugu-movie-audio-songs-free-download22_12_2016-606.jpg', 1, 'Balam Telugu Movie Audio Songs Free Download', 'Balam Telugu Movie Audio Songs Free Download, Latest Balam Telugu Movie Audio Songs Free Download, New Balam Telugu Movie Audio Songs Free Download', 'Balam Telugu Movie Audio Songs Free Download, Latest Balam Telugu Movie Audio Songs Free Download, New Balam Telugu Movie Audio Songs Free Download', 'balam-telugu-movie-audio-songs-free-download', 2),
(20, 1, '2016-12-24 11:22:45', 'Release: 2016<br/>\nCast/Actors: Aamir Khan<br/>\nMusic Director: Pritam Chakraborty<br/>\nLyricist: <br/>\nComposer: <br/>\nMp3 Bitrate: 128 & 320Kbps (VBR)<br/>\n<br/>\n1 - Haanikaarak Bapu - Sarwar Khan , Sartaz Khan Barna<br/>\n2 - Dhaakad - Raftar<br/>\n3 - Gilehriyaan - Jonita Gandhi<br/>\n4 - Dangal - Daler Mehndi<br/>\n5 - Naina - Arijit Singh<br/>\n6 - Dhaakad - Aamir Khan<br/>\n7 - Idiot Banna - Jyoti Nooran, Sultana Nooran<br/>', 'Dangal Hindi Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Dangal-audio-songs23_12_2016-703.jpg', 1, 'Dangal Hindi Movie Audio Songs Free Download 2016', 'Dangal Hindi Movie Audio Songs Free Download, Dangal Hindi Movie Audio Songs Free listen 2016', 'Dangal Hindi Movie Audio Songs Free Download, Dangal Hindi Movie Audio Songs Free listen 2016', 'dangal-hindi-movie-audio-songs-free-download', 2),
(21, 1, '2016-12-26 20:50:34', 'Cast & Crew :: Nandamuri Balakrishna, Shriya Saran, Hema Malini<br/>\nMusic :: Chirantan Bhatt<br/>\nLyrics :: Sirivennela Seetharama Sastry<br/>\nDirector :: Anjanaputra Krish<br/>\nProducer :: Saibabu Jagarlamudi, Y. Rajeev Reddy, Suhasini Panguluri<br/>\nCassettes & CDs On :: Lahari Music<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Ekimeedaa â€“ Udith Narayan, Shreya Ghoshal<br/>\n02 â€“ Gana Gana Gana â€“ Simha, Anand Bhaskar, Vamsi<br/>\n03 â€“ Mrignayanaa â€“ SP Balasubrahmanyam, Shreya Ghoshal<br/>\n04 â€“ Saaho Saarvabowma Saaho â€“ Vijay Prakash, Keerthi<br/>\n05 â€“ Singhamu Pai Langhinchenu (Kadhaa Gaanam) â€“ Vijay Prakash<br/>', 'Gautamiputra Satakarni Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Gautamiputra-Satakarni-Telugu-Movie-Audio-Songs-201626_12_2016-991.jpg', 1, 'Gautamiputra Satakarni Movie Audio Songs Free Download', 'Gautamiputra Satakarni Movie Audio Songs Free Download, Telugu Movie Gautamiputra Satakarni Movie Audio Songs Free Download', 'Gautamiputra Satakarni Movie Audio Songs Free Download, Telugu Movie Gautamiputra Satakarni Movie Audio Songs Free Download', 'gautamiputra-satakarni-movie-audio-songs-free-download', 2),
(22, 1, '2016-12-31 12:22:30', 'Cast & Crew :: Megastar Chiranjeevi, Kajal Aggarwal<br/>\nMusic :: Devi Sri Prasad<br/>\nLyrics :: Devi Sri Prasad, Srimani<br/>\nDirector :: V.V.Vinayak<br/>\nProducer :: Ram Charan<br/>\nCassettes & CDs On :: Lahari Music<br/>\n<br/>\n\n-= TrackList =-<br/>\n<br/>\n01 â€“ Ammadu Lets Do Kummudu â€“ Devi Sri Prasad, Ranina Reddy<br/>\n02 â€“ Sundari â€“ Jaspreet Jasz<br/>\n03 â€“ You & Me â€“ Hariharan, Shreya Ghoshal<br/>\n04 â€“ Ratthaalu â€“ Nakash Aziz, Jasmine Sandlas<br/>', 'Khaidi No 150 Movie Audio Songs Free Download | Chiranjeevi, Kajal', '', 'Open', 'posts', 'post_images/Khaidi-No-150-(2016)-Movie-Audio-Songs-Download31_12_2016-888.jpg', 1, 'Chiranjeevi Khaidi No 150 Telugu Movie Audio Songs Free Download 2016', 'Chiranjeevi Khaidi No 150 (2016) Movie Audio Songs Free Download, DSP Khaidi No 150 Telugu Movie Audio Songs Free Download ', 'Chiranjeevi Khaidi No 150 (2016) Movie Audio Songs Free Download, DSP Khaidi No 150 Telugu Movie Audio Songs Free Download ', 'khaidi-no-150-movie-audio-songs-free-download--chiranjeevi-kajal', 2),
(23, 1, '2017-01-09 19:37:09', 'Cast & Crew :: Akkineni Nagarjuna, Anushka, Pragya Jaiswal<br/>\nMusic :: M.M Keeravani<br/>\nLyrics :: Vedavyasa<br/>\nDirector :: K Raghavendra Rao<br/>\nProducer :: A.Mahesh Reddy<br/>\nCassettes & CDâ€™s On :: Lahari Music<br/>\n<br/>\n\n-= TrackList =-<br/>\n<br/>\n01 â€“ Veyyi Vemulavada â€“ Ramya Behara<br/>\n02 â€“ Anandam â€“ Sarath Santosh, Swetha Pandit<br/>\n03 â€“ Akhilanda Koti â€“ Sarath Santosh, Srinidhi<br/>\n04 â€“ Brahmanda Bhandamula â€“ M.M Keeravani<br/>\n05 â€“ Kaliyuga Vaikuntapuri â€“ S.P Balasubramanyam, Srinidhi, Ramya Behara<br/>\n06 â€“ Vayyari Kalahamsika â€“ Revanth, Sunita<br/>\n07 â€“ Anda Pinda â€“ Balaji, Muniraju, Sneha<br/>\n08 â€“ Maha Padma Sadme â€“ Saketh<br/>\n09 â€“ Kamaneeyam â€“ S.P Balasubramanyam<br/>\n10 â€“ Brahmothsava â€“ Srinidhi<br/>\n11 â€“ Pareeksha â€“ Shankar Mahadevan<br/>\n12 â€“ Govinda Hari Govinda â€“ Dhanunjay, Srinidhi<br/>', 'Om Namo Venkatesaya (2017) Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Om-Namo-Venkatesaya-Video-Songs-Back-2-Back09_01_2017-577.jpeg', 1, 'Om Namo Venkatesaya (2017) Movie Audio Songs Free Download', 'Om Namo Venkatesaya (2017) Movie Audio Songs Free Download, New Om Namo Venkatesaya (2017) Movie Audio Songs Free Download', 'Om Namo Venkatesaya (2017) Movie Audio Songs Free Download, New Om Namo Venkatesaya (2017) Movie Audio Songs Free Download', 'om-namo-venkatesaya-2017-movie-audio-songs-free-download', 2),
(24, 1, '2017-01-14 12:56:22', 'Cast & Crew :: Nani, Keerthi Suresh<br/>\nMusic :: Devi Sri Prasad<br/>\nLyrics :: Chandrabose<br/>\nDirector :: Trinath Rao<br/>\nProducer :: Dil Raju<br/>\nCassettes & CDs On :: Aditya Music<br/>\n\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Next Enti â€“ Sagar, Ranina Reddy<br/>\n02 â€“ Arere Yekkada â€“ Naresh Iyer, Manisha Eerabathini<br/>\n03 â€“ Disturb Chestha Ninnu â€“ Prudhvi Chandra<br/>\n04 â€“ Champesaave Nannu â€“ Kapil, Sameera Bharadwaj<br/>\n05 â€“ Side Please â€“ Javed Ali<br/>', 'Nenu Local (2017) Movie Audio Songs Free Download | Nani', '', 'Open', 'posts', 'post_images/Nani-Nenu-Local-Movie-Audio-Song-Next-Enti14_01_2017-549.jpg', 1, 'Nenu Local Telugu Movie Audio Songs Free Download | Nani, Keerthy Suresh', 'Nenu Local Telugu Movie Audio Songs Free Download | Nani, Keerthy Suresh', 'Nenu Local Telugu Movie Audio Songs Free Download | Nani, Keerthy Suresh', 'nenu-local-2017-movie-audio-songs-free-download--nani', 2),
(25, 1, '2017-01-29 23:41:49', 'Cast & Crew :: Manchu Manoj, Pragya Jaiswal<br/>\nMusic :: DJ Vasanth<br/>\nLyrics :: Ramajogayya Sastry, Bhaskar Batla<br/>\nDirector :: SK Satya<br/>\nProducer :: Sreevarun Vatluri<br/>\nCassettes & CDs On :: Mango Music<br/>\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Padhe Padhe (Duet Version) â€“ Yazin Nizar, Ramya Behera<br/>\n02 â€“ Netthimedha Pettukunta â€“ Yazin Nizar<br/>\n03 â€“ Kadhile Rangula Villu Ra â€“ Vijay Yesudas<br/>\n04 â€“ Dandanaka â€“ Anurag Kulkarni, Geetha Madhuri<br/>\n05 â€“ Padhe Padhe (Solo Version) â€“ Ramya Behera<br/>\n06 â€“ Gunturodu (Theme Music) â€“ DJ Vasanth<br/>\n07 â€“ Gunturodu (Dance Beat) â€“ DJ Vasanth<br/><br/>', 'Gunturodu (2017) Movie Audio Songs Free Download | Manoj', '', 'Open', 'posts', 'post_images/Gunturodu-Movie-Song-Netthi-Meedha-Video-Song-Promo-201729_01_2017-286.jpeg', 1, 'Manoj Gunturodu Telugu Movie Audio Songs Free Download 2017', 'Manoj Gunturodu Telugu Movie Audio Songs Free Download 2017', 'Manoj Gunturodu Telugu Movie Audio Songs Free Download 2017', 'gunturodu-2017-movie-audio-songs-free-download--manoj', 2),
(26, 1, '2017-02-18 12:29:04', 'Kittu Unnadu Jagratha (2017) Movie Audio Songs Free Download | Listen and Download Kittu Unnadu Jagratha (2017) Movie Audio Songs Free | New Telugu Movie Kittu Unnadu Jagratha (2017) Movie Audio Songs Free in livevideoshub.com.\n\nCast & Crew :: Raj Tarun, Anu Emmanuel\nMusic :: Anup Rubens\nLyrics :: Ramajogaiah Sastry\nDirector :: Vamsi Krishna\nProducer :: A.K.Entertainments\nCassettes & CDâ€™s On :: Aditya Music', 'Kittu Unnadu Jagratha (2017) Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Kittu-Unnadu-Jagratha18_02_2017-626.jpg', 1, 'Kittu Unnadu Jagratha (2017) Movie Audio Songs Free Download', 'Kittu Unnadu Jagratha (2017) Movie Audio Songs Free Download', 'Kittu Unnadu Jagratha (2017) Movie Audio Songs Free Download', 'kittu-unnadu-jagratha-2017-movie-audio-songs-free-download', 2),
(27, 1, '2017-02-18 12:33:35', '<b>Winner (2017) Telugu Movie Audio Songs Free Download</b>: Listen and Download Winner (2017) Telugu Movie Audio Songs Free | New Telugu Movie Winner (2017) Audio Songs Free Download | Latest Winner (2017) Telugu Movie Audio Songs Free Download.\n<br/><br/>\nCast & Crew :: Sai Dharam Tej, Rakul Preeth<br/>\nMusic :: Thaman SS<br/>\nLyrics :: Anantha Sriram, Srimani, Ramajogayya Sastry<br/>\nDirector :: Gopichand Malineni<br/>\nProducer :: Nallamalupu Bujji, Tagore Madhu<br/>\nCassettes & CDâ€™s On :: Aditya Music<br/>', 'Winner (2017) Telugu Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Winner-Telugu-Movie-audio-Songs-201718_02_2017-351.jpg', 1, 'Winner (2017) Telugu Movie Audio Songs Free Download', 'Winner (2017) Telugu Movie Audio Songs Free Download', 'Winner (2017) Telugu Movie Audio Songs Free Download', 'winner-2017-telugu-movie-audio-songs-free-download', 2),
(28, 1, '2017-02-18 12:38:46', 'Guru (2017) Telugu Movie Audio Songs Free Download | Latest Guru (2017) Telugu Movie Audio Songs Free Download | Free Guru (2017) Telugu Movie Audio Songs Free Download | New Guru (2017) Telugu Movie Audio Songs Free Download.\n<br/><br/>\nCast & Crew :: Venkatesh, Ritika Singh<br/>\nMusic :: Santhosh Narayanan<br/>\nLyrics :: Ramajogayya Sastry<br/>\nDirector :: Sudha Kongara<br/>\nProducer :: S. Sashikanth<br/>\nCassettes & CDs On :: Lahari Music<br/>', 'Guru (2017) Telugu Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Guru-Telugu-Movie-Audio-Songs-201718_02_2017-404.jpg', 1, 'Guru (2017) Telugu Movie Audio Songs Free Download', 'Guru (2017) Telugu Movie Audio Songs Free Download', 'Guru (2017) Telugu Movie Audio Songs Free Download', 'guru-2017-telugu-movie-audio-songs-free-download', 2),
(29, 1, '2017-06-23 12:05:53', '<b>DJ Duvvada Jagannadham Audio Songs Free Download | Allu Arjun</b>: Listen and Download DJ Duvvada Jagannadham Audio Songs Free Download | Allu Arjun | Free DJ Duvvada Jagannadham Audio Songs Free Download | Allu Arjun.\n\nCast & Crew :: Allu Arjun, Pooja Hegde\nMusic :: Devi Sri Prasad\nLyrics :: Jonnavithula, Sahiti, Srimani, Balaji, Bhaskara Bhatla\nDirector :: Harish Shankar\nProducer :: Dil Raju\nCassettes & CDâ€™s On :: Aditya Music\nRipper :: tEam AtoZmp3\n\n-= TrackList =-\n\n01 â€“ DJ â€“ Vijay Prakash\n02 â€“ Asmaika â€“ M.L.R Karthikeyan , K.S. Chitra\n03 â€“ Mecchuko â€“ Nakash Aziz\n04 â€“ Seeti Maar â€“ Jaspreet Jasz, Rita\n05 â€“ Box Baddhalai Poyi â€“ Sagar, Geetha Madhuri', 'DJ Duvvada Jagannadham Audio Songs Free Download | Allu Arjun', '', 'Open', 'posts', 'post_images/DJ-Duvvada-Jagannadham23_06_2017-994.jpg', 1, 'Allu Arjun DJ Duvvada Jagannadham Audio Songs Free Download', 'Allu Arjun DJ Duvvada Jagannadham Audio Songs Free Download', 'Allu Arjun DJ Duvvada Jagannadham Audio Songs Free Download', 'dj-duvvada-jagannadham-audio-songs-free-download--allu-arjun', 2),
(30, 1, '2017-06-25 09:45:10', 'V6 Bonalu Audio Song Download | V6 Bonalu Audio Song 2017 \n\nDownload <a href=\"https://www.livevideoshub.com/v6-bonalu-video-song-hd-telangana-v6-bonala-songs-2017-bonala-songs/\">https://www.livevideoshub.com/v6-bonalu-video-song-hd-telangana-v6-bonala-songs-2017-bonala-songs/</a>', 'V6 Bonalu Audio Song', '', 'Open', 'posts', 'post_images/Download-V6-Bonalu-Video-Song-HD24_06_2017-350.jpg', 1, 'V6 Bonalu Audio Song Download | V6 Bonalu Audio Song 2017', 'V6 Bonalu Audio Song Download | V6 Bonalu Audio Song 2017', 'V6 Bonalu Audio Song Download | V6 Bonalu Audio Song 2017', 'v6-bonalu-audio-song', 2),
(31, 1, '2017-06-29 08:05:55', '<b>Ninnu Kori Telugu Movie Audio Songs Free Download</b>: Listen and Download Ninnu Kori Telugu Movie Audio Songs Free Download | Free Ninnu Kori Telugu Movie Audio Songs Free Download.\n', 'Ninnu Kori Telugu Movie Audio Songs Free Download', '', 'Open', 'posts', 'post_images/Ninnu-Kori-2017-CD-Cover-Front-Poster-Wallpapers28_06_2017-451.jpg', 1, 'Ninnu Kori Telugu Movie Audio Songs Free Download', 'Ninnu Kori Telugu Movie Audio Songs Free Download', 'Ninnu Kori Telugu Movie Audio Songs Free Download', 'ninnu-kori-telugu-movie-audio-songs-free-download', 2),
(32, 1, '2017-07-06 13:47:19', '<b>Nakshatram Telugu Movie Audio Songs Free | Sundeep,  Sai Dharam Tej</b>: Listen and Download  Nakshatram Telugu Movie Audio Songs Free | Sundeep,  Sai Dharam Tej | Free Nakshatram Telugu Movie Audio Songs | Sundeep,  Sai Dharam Tej.\n\nCast & Crew :: Sundeep Kishan, Regina, Sai Dharam Tej, Pragya Jaiswal, Tanish<br/><br/>\nMusic :: Bheems Ceciroleo, Bharath Madhusudhanan, Hari Gowra<br/><br/>\nLyrics :: Anantha Sriram, Kasarla Shyam, Balaji, Sri Mani<br/><br/>\nDirector :: Krishna Vamsi<br/><br/>\nProducer :: S Venugopal, Sajju<br/><br/>\nCassettes & CDs On :: Aditya Music<br/><br/>\n<br/><br/>\n\n-= TrackList =-\n<br/><br/>\n01 â€“ Laayire Laayire â€“ Bheems Ceciroleo, Raghuram<br/><br/>\n02 â€“ Pedaviki Nuvvante â€“ Nayana Nair, Anuraag Kulkarni<br/><br/>\n03 â€“ Hello Pillagada â€“ Aishwarya Dasari, Sai Charan<br/><br/>\n04 â€“ Ey Papa â€“ Bheems Ceciroleo<br/><br/>\n05 â€“ Sudigalalley â€“ Hari Gowra<br/><br/>\n06 â€“ Time Ledu Guru â€“ Mohana Bhogaraju<br/><br/>', 'Nakshatram Telugu Movie Audio Songs Free | Sundeep,  Sai Dharam Tej', '', 'Open', 'posts', 'post_images/Nakshatram-Audio-Songs-Free-Download06_07_2017-581.png', 1, 'Sai Dharam Tej Nakshatram Telugu Movie Audio Songs Free', 'Sai Dharam Tej Nakshatram Telugu Movie Audio Songs Free', 'Sai Dharam Tej Nakshatram Telugu Movie Audio Songs Free', 'nakshatram-telugu-movie-audio-songs-free--sundeep--sai-dharam-tej', 2),
(33, 1, '2017-07-06 13:54:42', 'Fidaa Telugu Movie Audio Songs Free Download | Varun Tej, Sai Pallavi', 'Fidaa Telugu Movie Audio Songs Free Download | Varun Tej, Sai Pallavi', '', 'Open', 'posts', 'post_images/Fidaa-Audio-Songs-201706_07_2017-112.jpg', 1, 'Varun Tej Fidaa Telugu Movie Audio Songs Free Download ', 'Varun Tej Fidaa Telugu Movie Audio Songs Free Download ', 'Varun Tej Fidaa Telugu Movie Audio Songs Free Download ', 'fidaa-telugu-movie-audio-songs-free-download--varun-tej-sai-pallavi', 2),
(34, 1, '2017-07-22 13:11:09', 'Cast & Crew :: Gopichand, Hanshika<br/>\nMusic :: Thaman S<br/>\nLyrics :: Ramajogayya Sastry, Neeraja Kona<br/>\nDirector :: Sampath Nandi<br/>\nProducer :: J Bhagavan, J Pulla Rao<br/>\nCassettes & CDâ€™s On :: Zee Music Company\n<br/>\n-= TrackList =-<br/>\n<br/>\n01 â€“ Zindagi Na Milegi Dobara â€“ Thaman S<br/>\n02 â€“ Black & White â€“ Divya Kumar<br/>\n03 â€“ Basthi Dorasani â€“ Nakash Aziz, Ramya Behara, Sony <br/>\n04 â€“ Bole Ram Bole Ram â€“ Srikrishna, ML Sruthi <br/>\n05 â€“ Goutham Nanda â€“ Theme<br/>', 'Goutham Nanda Telugu Movie Audio Songs Download | Gopichand, Hanshika', '', 'Open', 'posts', 'post_images/Goutham-Nanda-Audio-Songs-Free-Download22_07_2017-376.jpg', 1, 'Goutham Nanda Telugu Movie Audio Songs Download | Gopichand, Hanshika', 'Goutham Nanda Telugu Movie Audio Songs Download | Gopichand, Hanshika', 'Goutham Nanda Telugu Movie Audio Songs Download | Gopichand, Hanshika', 'goutham-nanda-telugu-movie-audio-songs-download--gopichand-hanshika', 2),
(35, 1, '2017-08-01 16:19:47', 'Cast & Crew :: Bellamkonda Sreenivas, Rakul Preet, Pragya Jaiswal, Catherine Tresa<br/>\r\nMusic :: Devi Sri Prasad<br/>\r\nLyrics :: Chandrabose, Ramajogayya Shastri, Srimani<br/>\r\nDirector :: Boyapati Srinu<br/>\r\nProducer :: Miryala Ravinder<br/>\r\n<br/><br/>\r\n-= TrackList =-\r\n<br/><br/>\r\n01 â€“ Andhamaina Seetakoka Chiluka â€“ Soosaj Santhosh<br/>\r\n02 â€“ Lets Party All Night â€“ Prudhvi Chandra, M M Manasi<br/>\r\n03 â€“ Rangu Rangu Kallajodu â€“ Hemachandra, Shravana Bhargavi<br/>\r\n04 â€“ Nuvvele Nuvvele â€“ Shweta Mohan<br/>\r\n05 â€“ Just Chill Boss â€“ M M Manasi, Deepak<br/>\r\n06 â€“ Veede Veede â€“ Kailash Kher<br/>\r\n07 â€“ A For Apple â€“ Mamta Sharma â€“ Sagar<br/>', 'Jaya Janaki Naayaka Audio Songs Free | Sreenivas, Rakul ', '', 'Open', 'posts', 'post_images/Jaya-Janaki-Naayaka-Audio-Songs01_08_2017-577.jpg', 1, 'Sreenivas Jaya Janaki Naayaka Audio Songs Free', 'Jaya Janaki Naayaka Audio Songs Free | Sreenivas, Rakul ', 'Jaya Janaki Naayaka Audio Songs Free | Sreenivas, Rakul ', 'jaya-janaki-naayaka-audio-songs-free--sreenivas-rakul-', 2);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` bigint(20) NOT NULL,
  `movie_name` text NOT NULL,
  `movie_desc` longtext NOT NULL,
  `movie_slug` text NOT NULL,
  `download320` text NOT NULL,
  `download128` text NOT NULL,
  `movie_image` text NOT NULL,
  `movie_status` varchar(200) NOT NULL,
  `audio_id` bigint(20) NOT NULL,
  `movie_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `movie_desc`, `movie_slug`, `download320`, `download128`, `movie_image`, `movie_status`, `audio_id`, `movie_date`) VALUES
(1, 'Janatha Garage (2016)', 'Listen Janatha Garage (2016) Movie Audio CD Rips Free Download', 'janatha-garage-2016', 'http://www11.zippyshare.com/d/ZqLTgayS/3657213/Janatha%20Garage%20%282016%29%20~320Kbps.zip', 'http://www11.zippyshare.com/d/UtBAedXM/1672233/Janatha%20Garage%20%282016%29%20~128Kbps.zip', '', '2016', 1, '2016'),
(2, 'Inkokkadu (2016)', 'Inkokkadu (2016) Movie Audio CD Rips Free Download', 'inkokkadu-2016', 'http://www.atozmp3.lol/1/2016/Inkokkadu/Inkokkadu%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Inkokkadu/Inkokkadu%20(2016)%20~128Kbps.zip', '', '2016', 2, '2016'),
(3, 'Jyo Achyutananda (2016)', 'Download Jyo Achyutananda Telugu Movie Audio songs 2016 | New Telugu Movie Mp3 Songs 2016', 'jyo-achyutananda-2016', 'http://www.atozmp3.lol/1/2016/Jyo-Achyutananda/Jyo%20Achyutananda%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Jyo-Achyutananda/Jyo%20Achyutananda%20(2016)%20~128Kbps.zip', '', '2016', 3, '2016'),
(4, 'Balapam Patti Bhama Odilo (2016)', 'Listen and Download Balapam Patti Bhama Odilo Movie Audio Songs, Balapam Patti Bhama Odilo (2016) Movie Mp3 Songs Free Download', 'balapam-patti-bhama-odilo-2016', 'http://www.atozmp3.lol/1/2016/Balapam-Patti-Bhama-Odilo/Balapam%20Patti%20Bhama%20Odilo%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Balapam-Patti-Bhama-Odilo/Balapam%20Patti%20Bhama%20Odilo%20(2016)%20~128Kbps.zip', '', '2016', 4, '2016'),
(5, 'Journey 2 (2016)', 'Download Free Journey 2 (2016) Movie Mp3 Songs, Listen Journey 2 (2016) Movie Mp3 Songs', 'journey-2-2016', 'http://www.atozmp3.lol/1/2016/Journey-2/Journey%202%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Journey-2/Journey%202%20(2016)%20~128Kbps.zip', '', '2016', 5, '2016'),
(6, 'Mental (2016)', 'Listen and Download Mental (2016) Movie Audio Songs, Mental (2016) Movie Mp3 Songs Free Download', 'mental-2016', 'http://www.atozmp3.lol/1/2016/Mental/Mental%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Mental/Mental%20(2016)%20~128Kbps.zip', '', '2016', 6, '2016'),
(8, 'Premam (2016)', 'Premam (2016) Movie Mp3 Audio Songs Free Download, Premam (2016) Movie Audio Songs Free Download', 'premam-2016', 'http://atozmp3.lol/1/2016/Premam/Premam%20(2016)%20~%20320KBPS.zip', 'http://atozmp3.lol/1/2016/Premam/Premam%20(2016)%20~%20128KBPS.zip', '', '2016', 8, '2016'),
(9, 'Hyper (2016)', 'Hyper Telugu Movie Audio Songs Free Download 2016, Hyper (2016) Movie Audio Songs Free Download', 'hyper-2016', 'http://www.atozmp3.lol/1/2016/Hyper/Hyper%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Hyper/Hyper%20(2016)%20~128Kbps.zip', '', '2016', 9, '2016'),
(10, 'Eedu Gold Ehe (2016) ', 'Eedu Gold Ehe (2016) Movie Audio Songs Free Download', 'eedu-gold-ehe-2016-', 'http://www.atozmp3.lol/1/2016/Eedu-Gold-Ehe/Eedu%20Gold%20Ehe%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Eedu-Gold-Ehe/Eedu%20Gold%20Ehe%20(2016)%20~128Kbps.zip', '', '2016', 10, '2016'),
(11, 'Abhinetri (2016)', 'Abhinetri (2016) Movie Audio Songs Free Download , New Telugu Movie Songs 2016', 'abhinetri-2016', 'http://www.atozmp3.lol/1/2016/Abhinetri/Abhinetri%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Abhinetri/Abhinetri%20(2016)%20~128Kbps.zip', '', '2016', 11, '2016'),
(12, 'Nandini Nursing Home (2016)', 'Nandini Nursing Home (2016) Movie Audio Songs Free Download', 'nandini-nursing-home-2016', 'http://www.atozmp3.lol/1/2016/Nandini-Nursing-Home/Nandini%20Nursing%20Home%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Nandini-Nursing-Home/Nandini%20Nursing%20Home%20(2016)%20~128Kbps.zip', '', '2016', 12, '2016'),
(13, 'ISM (2016)', 'ISM (2016) Movie Audio Songs Free Download', 'ism-2016', 'http://www.atozmp3.lol/1/2016/ISM/ISM%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/ISM/ISM%20(2016)%20~128Kbps.zip', '', '2016', 13, '2016'),
(14, 'Remo (2016)', 'Remo (2016) Movie Audio Songs Free Download', 'remo-2016', 'http://www.atozmp3.lol/1/2016/Remo/Remo%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Remo/Remo%20(2016)%20~128Kbps.zip', '', '2016', 14, '2016'),
(15, 'Okkadochadu (2016)', 'Okkadochadu (2016) Movie Audio Songs Free Download , Okkadochadu Telugu Movie Audio Songs Free Download', 'okkadochadu-2016', 'http://www.atozmp3.lol/1/2016/Okkadochadu/Okkadochadu%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Okkadochadu/Okkadochadu%20(2016)%20~128Kbps.zip', '', '2016', 15, '2016'),
(16, 'Naruda Donaruda (2016)', 'Naruda Donaruda (2016) Movie Audio Songs Free Download', 'naruda-donaruda-2016', 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/Naruda%20Donaruda%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/Naruda%20Donaruda%20(2016)%20~128Kbps.zip', '', '2016', 16, '2016'),
(17, 'Sapthagiri Express (2016)', 'Sapthagiri Express (2016) Movie Audio Songs Free Download', 'sapthagiri-express-2016', 'http://www.atozmp3.lol/1/2016/Sapthagiri-Express/Sapthagiri%20Express%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Sapthagiri-Express/Sapthagiri%20Express%20(2016)%20~128Kbps.zip', '', '2016', 17, '2016'),
(18, 'Shatamanam Bhavati', 'Shatamanam Bhavati Telugu Movie Audio Songs Free Download', 'shatamanam-bhavati', 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/Shatamanam%20Bhavati%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/128/01%20-%20Mellaga%20Tellarindoi%20%5bwww.AtoZmp3.in%5d.mp3', '', '2016', 18, '2016'),
(19, 'Balam (2016)', 'Balam Telugu Movie Audio Songs Free Download, Latest Balam Telugu Movie Audio Songs Free Download, New Balam Telugu Movie Audio Songs Free Download', 'balam-2016', 'http://www.atozmp3.lol/1/2016/Balam/Balam%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Balam/Balam%20(2016)%20~128Kbps.zip', '', '2016', 19, '2016'),
(20, 'Dangal (2016)', 'Dangal Hindi Movie Audio Songs Free Download, Dangal Hindi Movie Audio Songs Free listen 2016', 'dangal-2016', 'http://320net.songspk.onl/indian/Dangal-320Kbps-2016[Songspk.GURU].zip', 'http://320net.songspk.onl/128/indian/Dangal-128Kbps-2016[Songspk.GURU].zip', '', '2016', 20, '2016'),
(21, 'Gautamiputra Satakarni (2016)', 'Gautamiputra Satakarni Movie Audio Songs Free Download, Telugu Movie Gautamiputra Satakarni Movie Audio Songs Free Download', 'gautamiputra-satakarni-2016', 'http://www.atozmp3.lol/1/2016/Gautamiputra-Satakarni/Gautamiputra%20Satakarni%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Gautamiputra-Satakarni/Gautamiputra%20Satakarni%20(2016)%20~128Kbps.zip', '', '2016', 21, '2016'),
(22, 'Khaidi No 150 (2016)', 'Chiranjeevi Khaidi No 150 (2016) Movie Audio Songs Free Download, DSP Khaidi No 150 Telugu Movie Audio Songs Free Download ', 'khaidi-no-150-2016', 'http://www.atozmp3.lol/1/2016/Khaidi-No-150/Khaidi%20No%20150%20(2016)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2016/Khaidi-No-150/Khaidi%20No%20150%20(2016)%20~128Kbps.zip', '', '2016', 22, '2016'),
(23, 'Om Namo Venkatesaya (2017)', 'Om Namo Venkatesaya (2017) Movie Audio Songs Free Download, New Om Namo Venkatesaya (2017) Movie Audio Songs Free Download', 'om-namo-venkatesaya-2017', 'http://www.atozmp3.lol/1/2017/Om-Namo-Venkatesaya/Om%20Namo%20Venkatesaya%20(2017)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2017/Om-Namo-Venkatesaya/Om%20Namo%20Venkatesaya%20(2017)%20~128Kbps.zip', '', '2016', 23, '2016'),
(24, 'Nenu Local (2017)', 'Nenu Local Telugu Movie Audio Songs Free Download | Nani, Keerthy Suresh', 'nenu-local-2017', 'http://www.atozmp3.lol/1/2017/Nenu-Local/Nenu%20Local%20(2017)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2017/Nenu-Local/Nenu%20Local%20(2017)%20~128Kbps.zip', '', '2016', 24, '2016'),
(25, 'Gunturodu (2107)', 'Manoj Gunturodu Telugu Movie Audio Songs Free Download 2017', 'gunturodu-2107', 'http://www.atozmp3.lol/1/2017/Gunturodu/Gunturodu%20(2017)%20~320Kbps.zip', 'http://www.atozmp3.lol/1/2017/Gunturodu/Gunturodu%20(2017)%20~128Kbps.zip', '', '2016', 25, '2016'),
(26, 'Kittu Unnadu Jagratha (2017) ', 'Kittu Unnadu Jagratha (2017) Movie Audio Songs Free Download', 'kittu-unnadu-jagratha-2017-', '', '', '', '2016', 26, '2016'),
(27, 'Winner (2017)', 'Winner (2017) Telugu Movie Audio Songs Free Download', 'winner-2017', '', '', '', '2016', 27, '2016'),
(28, 'Guru (2017)', 'Guru (2017) Telugu Movie Audio Songs Free Download', 'guru-2017', '', '', '', '2016', 28, '2016'),
(29, 'DJ Duvvada Jagannadham', 'Allu Arjun DJ Duvvada Jagannadham Audio Songs Free Download', 'dj-duvvada-jagannadham', 'http://www.zintata.com/1/?S*971c8', 'http://www.zintata.com/1/?S*971c8', '', '2017', 29, '2017'),
(30, 'V6 Bonalu', 'V6 Bonalu Audio Song Download | V6 Bonalu Audio Song 2017', 'v6-bonalu', 'https://www.livevideoshub.com/v6-bonalu-video-song-hd-telangana-v6-bonala-songs-2017-bonala-songs/', 'https://www.livevideoshub.com/v6-bonalu-video-song-hd-telangana-v6-bonala-songs-2017-bonala-songs/', '', '2017', 30, '2017'),
(31, 'Ninnu Kori (2017)', 'Ninnu Kori Telugu Movie Audio Songs Free Download', 'ninnu-kori-2017', 'http://www.zintata.com/1/?S*e3d38', 'http://www.zintata.com/1/?S*a4e35', '', '2017', 31, '2017'),
(32, 'Nakshatram (2017)', 'Sai Dharam Tej Nakshatram Telugu Movie Audio Songs Free', 'nakshatram-2017', 'http://www.zintata.com/1/?S*6eee6', 'http://www.zintata.com/1/?S*b2b43', '', '2017', 32, '2017'),
(33, 'Fidaa (2017)', 'Varun Tej Fidaa Telugu Movie Audio Songs Free Download ', 'fidaa-2017', '#', '#', '', '2017', 33, '2017'),
(34, 'Goutham Nanda (2017)', 'Goutham Nanda Telugu Movie Audio Songs Download | Gopichand, Hanshika', 'goutham-nanda-2017', 'http://www.zintata.com/1/?S*c794b', 'http://www.zintata.com/1/?S*f6031', '', '2017', 34, '2017'),
(35, 'Jaya Janaki Naayaka (2017)', 'Jaya Janaki Naayaka Audio Songs Free | Sreenivas, Rakul ', 'jaya-janaki-naayaka-2017', 'http://www.zintata.com/1/?S*b7efb', 'http://www.zintata.com/1/?S*f16b5', '', '2017', 35, '2017');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` bigint(128) NOT NULL,
  `song_name` text NOT NULL,
  `song_desc` longtext NOT NULL,
  `movie_id` bigint(20) NOT NULL,
  `audio_id` bigint(20) NOT NULL,
  `download320` text NOT NULL,
  `download128` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `song_name`, `song_desc`, `movie_id`, `audio_id`, `download320`, `download128`) VALUES
(1, '01 â€“ Pranaamam â€“ Shankar Mahadevan', '01 â€“ Pranaamam â€“ Shankar Mahadevan', 1, 1, 'http://www.atozmp3.lol/1/2016/Janatha-Garage/320/01%20-%20Pranaamam%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Janatha-Garage/128/01%20-%20Pranaamam%20%5bwww.AtoZmp3.in%5d.mp3'),
(2, '02 â€“ Rock On Bro â€“ Raghu Dixit', '02 â€“ Rock On Bro â€“ Raghu Dixit', 1, 1, 'http://www.atozmp3.lol/1/2016/Janatha-Garage/320/02%20-%20Rock%20On%20Bro%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Janatha-Garage/128/02%20-%20Rock%20On%20Bro%20%5bwww.AtoZmp3.in%5d.mp3'),
(3, '03 â€“ Apple Beauty â€“ Yazin Nizar, Neha Bhasin', '03 â€“ Apple Beauty â€“ Yazin Nizar, Neha Bhasin', 1, 1, 'http://www.atozmp3.lol/1/2016/Janatha-Garage/320/03%20-%20Apple%20Beauty%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Janatha-Garage/128/03%20-%20Apple%20Beauty%20%5bwww.AtoZmp3.in%5d.mp3'),
(4, '04 â€“ Jayaho Janatha â€“ Sukhwinder Singh, Vijay Prakash', '04 â€“ Jayaho Janatha â€“ Sukhwinder Singh, Vijay Prakash', 1, 1, 'http://www.atozmp3.lol/1/2016/Janatha-Garage/320/04%20-%20Jayaho%20Janatha%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Janatha-Garage/128/04%20-%20Jayaho%20Janatha%20%5bwww.AtoZmp3.in%5d.mp3'),
(5, '05 â€“ Nee Selavdigi â€“ Shwetha Mohan', '05 â€“ Nee Selavdigi â€“ Shwetha Mohan', 1, 1, 'http://www.atozmp3.lol/1/2016/Janatha-Garage/320/05%20-%20Nee%20Selavdigi%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Janatha-Garage/128/05%20-%20Nee%20Selavdigi%20%5bwww.AtoZmp3.in%5d.mp3'),
(6, '06 â€“ Pakka Local â€“ Sagar, Geetha Madhuri', '06 â€“ Pakka Local â€“ Sagar, Geetha Madhuri', 1, 1, 'http://www.atozmp3.lol/1/2016/Janatha-Garage/320/06%20-%20Pakka%20Local%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Janatha-Garage/128/06%20-%20Pakka%20Local%20%5bwww.AtoZmp3.in%5d.mp3'),
(7, '01 â€“ Chilaka O Chilaka ', '01 â€“ Chilaka O Chilaka Christopher Stanley, Abhay Jodhpurkar, Sunitha Sarathy', 2, 2, 'http://www.atozmp3.lol/1/2016/Inkokkadu/320/01%20-%20Chilaka%20O%20Chilaka%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Inkokkadu/128/01%20-%20Chilaka%20O%20Chilaka%20%5bwww.AtoZmp3.in%5d.mp3'),
(8, '02 â€“ Chinni Gundello ', '02 â€“ Chinni Gundello â€“ N.C Karunya, Ramya NSK, Sunitha Sarathy', 2, 2, 'http://www.atozmp3.lol/1/2016/Inkokkadu/320/02%20-%20Chinni%20Gundelo%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Inkokkadu/128/02%20-%20Chinni%20Gundelo%20%5bwww.AtoZmp3.in%5d.mp3'),
(9, '03 â€“ Kanne Veede ', '03 â€“ Kanne Veede â€“ Tipu, Pravin Salvi, Srimathumitha', 2, 2, 'http://www.atozmp3.lol/1/2016/Inkokkadu/320/03%20-%20Kanne%20Veede%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Inkokkadu/128/03%20-%20Kanne%20Veede%20%5bwww.AtoZmp3.in%5d.mp3'),
(10, '04 â€“ Iragadeesy Inuparaddu ', '04 â€“ Iragadeesy Inuparaddu â€“ MC Vickey, Maalavika Manoj, Seimathumitha', 2, 2, 'http://www.atozmp3.lol/1/2016/Inkokkadu/320/04%20-%20Iragadeesey%20Inuparaddu%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Inkokkadu/128/04%20-%20Iragadeesey%20Inuparaddu%20%5bwww.AtoZmp3.in%5d.mp3'),
(11, '05 â€“ Face Off (Theme)', '05 â€“ Face Off (Theme) â€“ Maria Roe Vincent, Maalavika Manoj, Srimathumitha', 2, 2, 'http://www.atozmp3.lol/1/2016/Inkokkadu/320/05%20-%20Face%20Off%20(Theme)%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Inkokkadu/128/05%20-%20Face%20Off%20(Theme)%20%5bwww.AtoZmp3.in%5d.mp3'),
(12, '01 â€“ Evare â€“ Vijay Yesudas', '', 8, 8, 'http://atozmp3.lol/1/2016/Premam/320/01%20-%20Evare%20%5bwww.AtoZmp3.in%5d.mp3', 'http://atozmp3.lol/1/2016/Premam/128/01%20-%20Evare%20%5bwww.AtoZmp3.in%5d.mp3'),
(13, '02 â€“ Agarottula â€“ Naresh Iyer', '', 8, 8, 'http://atozmp3.lol/1/2016/Premam/320/02%20-%20Agarothula%20%5bwww.AtoZmp3.in%5d.mp3', 'http://atozmp3.lol/1/2016/Premam/128/02%20-%20Agarothula%20%5bwww.AtoZmp3.in%5d.mp3'),
(14, '03 â€“ Ninna Leni â€“ Karthik', '', 8, 8, 'http://atozmp3.lol/1/2016/Premam/320/03%20-%20Ninna%20Leni%20%5bwww.AtoZmp3.in%5d.mp3', 'http://atozmp3.lol/1/2016/Premam/128/03%20-%20Ninna%20Leni%20%5bwww.AtoZmp3.in%5d.mp3'),
(15, '04 â€“ Prema Pusene â€“ Karthik', '', 8, 8, 'http://atozmp3.lol/1/2016/Premam/320/04%20-%20Prema%20Pusani%20%5bwww.AtoZmp3.in%5d.mp3', 'http://atozmp3.lol/1/2016/Premam/128/04%20-%20Prema%20Pusani%20%5bwww.AtoZmp3.in%5d.mp3'),
(16, '05 â€“ Bang Bang â€“ Haricharan', '', 8, 8, 'http://atozmp3.lol/1/2016/Premam/320/05%20-%20Bang%20Bang%20%5bwww.AtoZmp3.in%5d.mp3', 'http://atozmp3.lol/1/2016/Premam/128/05%20-%20Bang%20Bang%20%5bwww.AtoZmp3.in%5d.mp3'),
(17, '06 â€“ Ennosarlu â€“ Sachin Warrier', '', 8, 8, 'http://atozmp3.lol/1/2016/Premam/320/06%20-%20Enno%20Sarlu%20%5bwww.AtoZmp3.in%5d.mp3', 'http://atozmp3.lol/1/2016/Premam/128/06%20-%20Enno%20Sarlu%20%5bwww.AtoZmp3.in%5d.mp3'),
(18, '07 â€“ Evadu Evadu â€“ Ranjith', '', 8, 8, 'http://atozmp3.lol/1/2016/Premam/320/07%20-%20Evadu%20Evadu%20%5bwww.AtoZmp3.in%5d.mp3', 'http://atozmp3.lol/1/2016/Premam/128/07%20-%20Evadu%20Evadu%20%5bwww.AtoZmp3.in%5d.mp3'),
(19, '01 â€“ Come Back Come Back â€“ Anudeep, Yazin', '', 9, 9, 'http://www.atozmp3.lol/1/2016/Hyper/320/01%20-%20Come%20Back%20Come%20Back%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Hyper/128/01%20-%20Come%20Back%20Come%20Back%20%5bwww.AtoZmp3.in%5d.mp3'),
(20, '02 â€“ Baby Doll â€“ Anurag Kulkarni, Sahithi Chaganti', '', 9, 9, 'http://www.atozmp3.lol/1/2016/Hyper/320/02%20-%20Baby%20Doll%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Hyper/128/02%20-%20Baby%20Doll%20%5bwww.AtoZmp3.in%5d.mp3'),
(21, '03 â€“ Ompula Dhaniya â€“ Dhanunjay, Simha, Lipsika', '', 9, 9, 'http://www.atozmp3.lol/1/2016/Hyper/320/03%20-%20Ompula%20Dhaniya%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Hyper/128/03%20-%20Ompula%20Dhaniya%20%5bwww.AtoZmp3.in%5d.mp3'),
(22, '04 â€“ Naalo Nenenaa â€“ Sameera Bharadwaj, Chorus', '', 9, 9, 'http://www.atozmp3.lol/1/2016/Hyper/320/04%20-%20Naalo%20Nenenaa%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Hyper/128/04%20-%20Naalo%20Nenenaa%20%5bwww.AtoZmp3.in%5d.mp3'),
(23, '05 â€“ Hypare Hypare â€“ Dhanunjay, Geetha Madhuri, Lipsika', '', 9, 9, 'http://www.atozmp3.lol/1/2016/Hyper/320/05%20-%20Hypare%20Hypare%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Hyper/128/05%20-%20Hypare%20Hypare%20%5bwww.AtoZmp3.in%5d.mp3'),
(24, '01 â€“ Mecanos Gold', 'Saagar Mahathi, Yazin Nizar, Roll Rida', 10, 10, 'http://www.atozmp3.lol/1/2016/Eedu-Gold-Ehe/320/01%20-%20Mecanos%20Gold%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Eedu-Gold-Ehe/128/01%20-%20Mecanos%20Gold%20%5bwww.AtoZmp3.in%5d.mp3'),
(25, '02 â€“ Kopaalenduku Babai', 'Vijay Prakash, Ramya Behara', 10, 10, 'http://www.atozmp3.lol/1/2016/Eedu-Gold-Ehe/320/02%20-%20Kopaalenduku%20Babai%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Eedu-Gold-Ehe/128/02%20-%20Kopaalenduku%20Babai%20%5bwww.AtoZmp3.in%5d.mp3'),
(26, '03 â€“ Preme Kavalandi', 'Haricharan, Divya Divakarv', 10, 10, 'http://www.atozmp3.lol/1/2016/Eedu-Gold-Ehe/320/03%20-%20Preme%20Kavalandi%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Eedu-Gold-Ehe/128/03%20-%20Preme%20Kavalandi%20%5bwww.AtoZmp3.in%5d.mp3'),
(27, '04 â€“ Geetha', 'Narendra, Uma Neha', 10, 10, 'http://www.atozmp3.lol/1/2016/Eedu-Gold-Ehe/320/04%20-%20Geetha%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Eedu-Gold-Ehe/128/04%20-%20Geetha%20%5bwww.AtoZmp3.in%5d.mp3'),
(28, '01 â€“ Chal Maar â€“ Nakash Aziz', '', 11, 11, 'http://www.atozmp3.lol/1/2016/Abhinetri/320/01%20-%20Chal%20Maar%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Abhinetri/128/01%20-%20Chal%20Maar%20%5bwww.AtoZmp3.in%5d.mp3'),
(29, '02 â€“ Dance Chey Mazaga â€“ Geetha Madhuri', '', 11, 11, 'http://www.atozmp3.lol/1/2016/Abhinetri/320/02%20-%20Dance%20Chey%20Mazaga%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Abhinetri/128/02%20-%20Dance%20Chey%20Mazaga%20%5bwww.AtoZmp3.in%5d.mp3'),
(30, '03 â€“ Aakasham Lo Rangulanni â€“ Karthik', '', 11, 11, 'http://www.atozmp3.lol/1/2016/Abhinetri/320/03%20-%20Aakasham%20Lo%20Rangulanni%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Abhinetri/128/03%20-%20Aakasham%20Lo%20Rangulanni%20%5bwww.AtoZmp3.in%5d.mp3'),
(31, '04 â€“ Rang Rang Rangare â€“ Swetha Mohan', '', 11, 11, 'http://www.atozmp3.lol/1/2016/Abhinetri/320/04%20-%20Rang%20Rang%20Rangare%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Abhinetri/128/04%20-%20Rang%20Rang%20Rangare%20%5bwww.AtoZmp3.in%5d.mp3'),
(32, '01 â€“ Kalthi â€“ Dhanunjay', '', 12, 12, 'http://www.atozmp3.lol/1/2016/Nandini-Nursing-Home/320/01%20-%20Kalthi%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Nandini-Nursing-Home/128/01%20-%20Kalthi%20%5bwww.AtoZmp3.in%5d.mp3'),
(33, '02 â€“ Ninney â€“ Achu', '', 12, 12, 'http://www.atozmp3.lol/1/2016/Nandini-Nursing-Home/320/02%20-%20Ninney%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Nandini-Nursing-Home/128/02%20-%20Ninney%20%5bwww.AtoZmp3.in%5d.mp3'),
(34, '03 â€“ Nanney Nanney â€“ Mansi Mahadevan', '', 12, 12, 'http://www.atozmp3.lol/1/2016/Nandini-Nursing-Home/320/03%20-%20Nanne%20Nanne%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Nandini-Nursing-Home/128/03%20-%20Nanne%20Nanne%20%5bwww.AtoZmp3.in%5d.mp3'),
(35, '04 â€“ Party Party â€“ Sunitha Sarathy', '', 12, 12, 'http://www.atozmp3.lol/1/2016/Nandini-Nursing-Home/320/04%20-%20Party%20Party%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Nandini-Nursing-Home/128/04%20-%20Party%20Party%20%5bwww.AtoZmp3.in%5d.mp3'),
(36, '', '', 12, 12, '', ''),
(37, '05 â€“ Ninney (Reprise Version) â€“ Achu', '', 12, 12, 'http://www.atozmp3.lol/1/2016/Nandini-Nursing-Home/320/05%20-%20Ninney%20(Reprise%20Version)%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Nandini-Nursing-Home/128/05%20-%20Ninney%20(Reprise%20Version)%20%5bwww.AtoZmp3.in%5d.mp3'),
(38, '01 â€“ Kanulu Navaina ', 'Jubin Nautiyal, Mohana Bhogaraju', 13, 13, 'http://www.atozmp3.lol/1/2016/ISM/320/01%20-%20Kanulu%20Navainaa%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/ISM/128/01%20-%20Kanulu%20Navainaa%20%5bwww.AtoZmp3.in%5d.mp3'),
(39, '02 â€“ Yey Yey Yey Raa', 'Puri Jagannadh, Anoop Rubens, Rolla Rida', 13, 13, 'http://www.atozmp3.lol/1/2016/ISM/320/02%20-%20Yey%20Yey%20Yey%20Raa%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/ISM/128/02%20-%20Yey%20Yey%20Yey%20Raa%20%5bwww.AtoZmp3.in%5d.mp3'),
(40, '03 â€“ Ela Ela Ela', 'Shakthisree Gopalan, Krishna Lasya', 13, 13, 'http://www.atozmp3.lol/1/2016/ISM/320/03%20-%20Ela%20Ela%20Ela%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/ISM/128/03%20-%20Ela%20Ela%20Ela%20%5bwww.AtoZmp3.in%5d.mp3'),
(41, '04 â€“ Podaade Poda Poda', 'Spurthy, Teju Priya', 13, 13, 'http://www.atozmp3.lol/1/2016/ISM/320/04%20-%20Podaade%20Poda%20Poda%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/ISM/128/04%20-%20Podaade%20Poda%20Poda%20%5bwww.AtoZmp3.in%5d.mp3'),
(42, '05 â€“ ISM', 'Puri Jagannadh', 13, 13, 'http://www.atozmp3.lol/1/2016/ISM/320/05%20-%20ISM%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/ISM/128/05%20-%20ISM%20%5bwww.AtoZmp3.in%5d.mp3'),
(43, '01 â€“ Remo Nee Styleki â€“ Anirudh', '', 14, 14, 'http://www.atozmp3.lol/1/2016/Remo/320/01%20-%20Remo%20Nee%20Styleki%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Remo/128/01%20-%20Remo%20Nee%20Styleki%20%5bwww.AtoZmp3.in%5d.mp3'),
(44, '02 â€“ Kollagottey â€“ Anirudh', '', 14, 14, 'http://www.atozmp3.lol/1/2016/Remo/320/02%20-%20Kollagotte%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Remo/128/02%20-%20Kollagotte%20%5bwww.AtoZmp3.in%5d.mp3'),
(45, '03 â€“ Katha Kaadhey â€“ Ajesh, Srinidhi', '', 14, 14, 'http://www.atozmp3.lol/1/2016/Remo/320/03%20-%20Katha%20Kaadhey%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Remo/128/03%20-%20Katha%20Kaadhey%20%5bwww.AtoZmp3.in%5d.mp3'),
(46, '04 â€“ Meesa Beauty â€“ Ranjith', '', 14, 14, 'http://www.atozmp3.lol/1/2016/Remo/320/04%20-%20Meesa%20Beauty%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Remo/128/04%20-%20Meesa%20Beauty%20%5bwww.AtoZmp3.in%5d.mp3'),
(47, '05 â€“ Love Selfie â€“ Nakash Aziz', '', 14, 14, 'http://www.atozmp3.lol/1/2016/Remo/320/05%20-%20Love%20Selfie%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Remo/128/05%20-%20Love%20Selfie%20%5bwww.AtoZmp3.in%5d.mp3'),
(48, '06 â€“ Come Closer (Katha Kaadhey Reprise) â€“ Inno Genga', '', 14, 14, 'http://www.atozmp3.lol/1/2016/Remo/320/06%20-%20Come%20Closer%20(Katha%20Kaadhey%20Reprise)%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Remo/128/06%20-%20Come%20Closer%20(Katha%20Kaadhey%20Reprise)%20%5bwww.AtoZmp3.in%5d.mp3'),
(49, '01 â€“ Ne Koncham Nalupule â€“ K.G. Ranjith', '', 15, 15, 'http://www.atozmp3.lol/1/2016/Okkadochadu/320/01%20-%20Ne%20Koncham%20Nalupule%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Okkadochadu/128/01%20-%20Ne%20Koncham%20Nalupule%20%5bwww.AtoZmp3.in%5d.mp3'),
(50, '02 â€“ Hrudayam Hrudayam â€“ Nikhita Gandhi', '', 15, 15, 'http://www.atozmp3.lol/1/2016/Okkadochadu/320/02%20-%20Hrudayam%20Hrudayam%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Okkadochadu/128/02%20-%20Hrudayam%20Hrudayam%20%5bwww.AtoZmp3.in%5d.mp3'),
(51, '03 â€“ Dil Chahtha Hai â€“ Hemachandra, Sniggy', '', 15, 15, 'http://www.atozmp3.lol/1/2016/Okkadochadu/320/03%20-%20Dil%20Chahtha%20Hai%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Okkadochadu/128/03%20-%20Dil%20Chahtha%20Hai%20%5bwww.AtoZmp3.in%5d.mp3'),
(52, '04 â€“ Dabbe Ra Top u', 'Hemachandra, Mark Antony Thomas', 15, 15, 'http://www.atozmp3.lol/1/2016/Okkadochadu/320/04%20-%20Dabbe%20Ra%20Top%20u%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Okkadochadu/128/04%20-%20Dabbe%20Ra%20Top%20u%20%5bwww.AtoZmp3.in%5d.mp3'),
(53, '05 â€“ Okkadochadu (Theme) â€“ Hemachandra', '', 15, 15, 'http://www.atozmp3.lol/1/2016/Okkadochadu/320/05%20-%20Okkadochadu%20(Theme)%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Okkadochadu/128/05%20-%20Okkadochadu%20(Theme)%20%5bwww.AtoZmp3.in%5d.mp3'),
(54, '01 â€“ Ayyo Baasu â€“ Mohammed Abid Ali', '', 16, 16, 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/320/01%20-%20Ayyo%20Baasu%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/128/01%20-%20Ayyo%20Baasu%20%5bwww.AtoZmp3.in%5d.mp3'),
(55, '02 â€“ Roju Ila â€“ Hemachandra, Geetha Madhuri', '', 16, 16, 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/320/02%20-%20Roju%20Ila%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/128/02%20-%20Roju%20Ila%20%5bwww.AtoZmp3.in%5d.mp3'),
(56, '03 â€“ Nee Valane â€“ Ishaq Vali', '', 16, 16, 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/320/03%20-%20Nee%20Valane%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/128/03%20-%20Nee%20Valane%20%5bwww.AtoZmp3.in%5d.mp3'),
(57, '04 â€“ Kaasu Paisa â€“', 'Siddu Jonnalagadda,(FT.Tanikella Bharani)', 16, 16, 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/320/04%20-%20Kaasu%20Paisa%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/128/04%20-%20Kaasu%20Paisa%20%5bwww.AtoZmp3.in%5d.mp3'),
(58, '05 â€“ Theerame â€“ Naresh Iyer, Sri Vidya', '', 16, 16, 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/320/05%20-%20Theerame%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/128/05%20-%20Theerame%20%5bwww.AtoZmp3.in%5d.mp3'),
(59, '06 â€“ Alalu Aagavala â€“ Poojan Kohli, Soundarya Sakalya', '', 16, 16, 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/320/06%20-%20Alalu%20Aagavala%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/128/06%20-%20Alalu%20Aagavala%20%5bwww.AtoZmp3.in%5d.mp3'),
(60, '07 â€“ Pelli Beatu â€“ Poojan Kohli', '', 16, 16, 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/320/07%20-%20Pelli%20Beatu%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/128/07%20-%20Pelli%20Beatu%20%5bwww.AtoZmp3.in%5d.mp3'),
(61, '08 â€“ Nee Valane (Sad) â€“ Sri Vidya, Sricharan Pakala', '', 16, 16, 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/320/08%20-%20Nee%20Valane%20(Sad)%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Naruda-Donaruda/128/08%20-%20Nee%20Valane%20(Sad)%20%5bwww.AtoZmp3.in%5d.mp3'),
(62, '01 â€“ Kekekkindo Lammi â€“ Ranjith, Geetha Madhuri', '', 17, 17, 'http://www.atozmp3.lol/1/2016/Sapthagiri-Express/320/01%20-%20Kekekkindo%20Lammi%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Sapthagiri-Express/128/01%20-%20Kekekkindo%20Lammi%20%5bwww.AtoZmp3.in%5d.mp3'),
(63, '02 â€“ Be Positive â€“ Yasin Nizar', '', 17, 17, 'http://www.atozmp3.lol/1/2016/Sapthagiri-Express/320/02%20-%20Be%20Positive%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Sapthagiri-Express/128/02%20-%20Be%20Positive%20%5bwww.AtoZmp3.in%5d.mp3'),
(64, '03 â€“ Papa Nuvu â€“ Rahul Nambiar', '', 17, 17, 'http://www.atozmp3.lol/1/2016/Sapthagiri-Express/320/03%20-%20Papa%20Nuvu%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Sapthagiri-Express/128/03%20-%20Papa%20Nuvu%20%5bwww.AtoZmp3.in%5d.mp3'),
(65, '04 â€“ Velugu Cheekati â€“ Vijay Bulganin', '', 17, 17, 'http://www.atozmp3.lol/1/2016/Sapthagiri-Express/320/04%20-%20Velugu%20Cheekati%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Sapthagiri-Express/128/04%20-%20Velugu%20Cheekati%20%5bwww.AtoZmp3.in%5d.mp3'),
(66, '05 â€“ Saptagiri Express (Theme Song) â€“ Bulganin', '', 17, 17, 'http://www.atozmp3.lol/1/2016/Sapthagiri-Express/320/05%20-%20Saptagiri%20Express%20(Theme%20Song)%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Sapthagiri-Express/128/05%20-%20Saptagiri%20Express%20(Theme%20Song)%20%5bwww.AtoZmp3.in%5d.mp3'),
(67, '01 â€“ Mellaga Tellarindoi ', 'Anurag Kulkarni, Ramya Behara, Mohana Bhogaraju', 18, 18, 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/320/01%20-%20Mellaga%20Tellarindoi%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/128/01%20-%20Mellaga%20Tellarindoi%20%5bwww.AtoZmp3.in%5d.mp3'),
(68, '02 â€“ Shatamanam Bhavati', 'K. S. Chithra, Vijay Yesudas', 18, 18, 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/320/02%20-%20Shatamanam%20Bhavati%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/128/02%20-%20Shatamanam%20Bhavati%20%5bwww.AtoZmp3.in%5d.mp3'),
(69, '03 â€“ Naalo Nenu â€“ Sameera Bharadwaj', '', 18, 18, 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/320/03%20-%20Naalo%20Nenu%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/128/03%20-%20Naalo%20Nenu%20%5bwww.AtoZmp3.in%5d.mp3'),
(70, '04 â€“ Nilavade â€“ S. P. Balasubrahmanyam', '', 18, 18, 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/320/04%20-%20Nilavade%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/128/04%20-%20Nilavade%20%5bwww.AtoZmp3.in%5d.mp3'),
(71, '04 â€“ Nilavade â€“ S. P. Balasubrahmanyam', '', 18, 18, 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/128/04%20-%20Nilavade%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/128/04%20-%20Nilavade%20%5bwww.AtoZmp3.in%5d.mp3'),
(72, '05 â€“ Hailo Hailessare ', 'Aditya Iyengar, Rohit Paritala, Mohana Bhogaraju, Divya Divakar', 18, 18, 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/320/05%20-%20Hailo%20Hailessare%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Shatamanam-Bhavati/128/05%20-%20Hailo%20Hailessare%20%5bwww.AtoZmp3.in%5d.mp3'),
(73, '01 â€“ Balam â€“ Rahul Nambiar, Vandana Srinivasan', '', 19, 19, 'http://www.atozmp3.lol/1/2016/Balam/320/01%20-%20Balam%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Balam/128/01%20-%20Balam%20%5bwww.AtoZmp3.in%5d.mp3'),
(74, '02 â€“ Kothagaa â€“ Rahul Nambiar', '', 19, 19, 'http://www.atozmp3.lol/1/2016/Balam/320/02%20-%20Kothagaa%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Balam/128/02%20-%20Kothagaa%20%5bwww.AtoZmp3.in%5d.mp3'),
(75, '03 â€“ Mona Amour â€“ Santosh Hariharan', '', 19, 19, 'http://www.atozmp3.lol/1/2016/Balam/320/03%20-%20Mona%20Amour%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Balam/128/03%20-%20Mona%20Amour%20%5bwww.AtoZmp3.in%5d.mp3'),
(76, '04 â€“ Balam (Sad) â€“ Rahul Nambiar', '', 19, 19, 'http://www.atozmp3.lol/1/2016/Balam/320/04%20-%20Balam%20(Sad)%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Balam/128/04%20-%20Balam%20(Sad)%20%5bwww.AtoZmp3.in%5d.mp3'),
(77, '1 - Haanikaarak Bapu', 'Sarwar Khan , Sartaz Khan Barna', 20, 20, 'http://sound30.mp3slash.net/320/indian/dangal/01%20-%20Haanikaarak%20Bapu%20-%20Dangal%20[Songspk.GURU].mp3', 'http://sound30.mp3slash.net/320/indian/dangal/01%20-%20Haanikaarak%20Bapu%20-%20Dangal%20[Songspk.GURU].mp3'),
(78, '2 - Dhaakad - Raftar', '', 20, 20, 'http://sound30.mp3slash.net/320/indian/dangal/02%20-%20Dhaakad%20-%20Dangal%20[Songspk.GURU].mp3', ''),
(79, '3 - Gilehriyaan - Jonita Gandhi', '', 20, 20, 'http://sound30.mp3slash.net/320/indian/dangal/03%20-%20Gilehriyaan%20-%20Dangal%20[Songspk.GURU].mp3', ''),
(80, '4 - Dangal - Daler Mehndi', '', 20, 20, 'http://sound30.mp3slash.net/320/indian/dangal/04%20-%20Dangal%20[Songspk.GURU].mp3', ''),
(81, '5 - Naina - Arijit Singh', '', 20, 20, 'http://sound30.mp3slash.net/320/indian/dangal/05%20-%20Naina%20-%20Dangal%20[Songspk.GURU].mp3', ''),
(82, '6 - Dhaakad - Aamir Khan', '', 20, 20, 'http://sound30.mp3slash.net/320/indian/dangal/06%20-%20Dhaakad%20(Aamir%20Khan%20Version)%20-%20Dangal%20[Songspk.GURU].mp3', ''),
(83, '7 - Idiot Banna - Jyoti Nooran, Sultana Nooran', '', 20, 20, 'http://sound30.mp3slash.net/320/indian/dangal/06%20-%20Dhaakad%20(Aamir%20Khan%20Version)%20-%20Dangal%20[Songspk.GURU].mp3', ''),
(84, '01 â€“ Ekimeedaa â€“ Udith Narayan, Shreya Ghoshal', '', 21, 21, 'http://www.atozmp3.lol/1/2016/Gautamiputra-Satakarni/320/01%20-%20Ekimeedaa%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Gautamiputra-Satakarni/128/01%20-%20Ekimeedaa%20%5bwww.AtoZmp3.in%5d.mp3'),
(85, '02 â€“ Gana Gana Gana â€“ Simha, Anand Bhaskar, Vamsi', '', 21, 21, 'http://www.atozmp3.lol/1/2016/Gautamiputra-Satakarni/320/02%20-%20Gana%20Gana%20Gana%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Gautamiputra-Satakarni/128/02%20-%20Gana%20Gana%20Gana%20%5bwww.AtoZmp3.in%5d.mp3'),
(86, '03 â€“ Mrignayanaa â€“ SP Balasubrahmanyam, Shreya Ghoshal', '', 21, 21, 'http://www.atozmp3.lol/1/2016/Gautamiputra-Satakarni/320/03%20-%20Mrignayanaa%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Gautamiputra-Satakarni/128/03%20-%20Mrignayanaa%20%5bwww.AtoZmp3.in%5d.mp3'),
(87, '04 â€“ Saaho Saarvabowma Saaho â€“ Vijay Prakash, Keerthi', '', 21, 21, 'http://www.atozmp3.lol/1/2016/Gautamiputra-Satakarni/320/04%20-%20Saaho%20Saarvabowma%20Saaho%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Gautamiputra-Satakarni/128/04%20-%20Saaho%20Saarvabowma%20Saaho%20%5bwww.AtoZmp3.in%5d.mp3'),
(88, '05 â€“ Singhamu Pai Langhinchenu (Kadhaa Gaanam) â€“ Vijay Prakash', '', 21, 21, 'http://www.atozmp3.lol/1/2016/Gautamiputra-Satakarni/320/05%20-%20Singhamu%20Pai%20Langhinchenu%20(Kadhaa%20Gaanam)%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Gautamiputra-Satakarni/128/05%20-%20Singhamu%20Pai%20Langhinchenu%20(Kadhaa%20Gaanam)%20%5bwww.AtoZmp3.in%5d.mp3'),
(89, '01 â€“ Ammadu Lets Do Kummudu â€“ Devi Sri Prasad, Ranina Reddy', '', 22, 22, 'http://www.atozmp3.lol/1/2016/Khaidi-No-150/320/01%20-%20Ammadu%20Lets%20Do%20Kummudu%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Khaidi-No-150/128/01%20-%20Ammadu%20Lets%20Do%20Kummudu%20%5bwww.AtoZmp3.in%5d.mp3'),
(90, '02 â€“ Sundari â€“ Jaspreet Jasz', '', 22, 22, 'http://www.atozmp3.lol/1/2016/Khaidi-No-150/320/02%20-%20Sundari%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Khaidi-No-150/128/02%20-%20Sundari%20%5bwww.AtoZmp3.in%5d.mp3'),
(91, '03 â€“ You & Me â€“ Hariharan, Shreya Ghoshal', '', 22, 22, 'http://www.atozmp3.lol/1/2016/Khaidi-No-150/320/03%20-%20You%20&%20Me%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Khaidi-No-150/128/03%20-%20You%20&%20Me%20%5bwww.AtoZmp3.in%5d.mp3'),
(92, '04 â€“ Ratthaalu â€“ Nakash Aziz, Jasmine Sandlas', '', 22, 22, 'http://www.atozmp3.lol/1/2016/Khaidi-No-150/320/04%20-%20Ratthaalu%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2016/Khaidi-No-150/128/04%20-%20Ratthaalu%20%5bwww.AtoZmp3.in%5d.mp3'),
(93, '01 â€“ Veyyi Vemulavada â€“ Ramya Behara', '', 23, 23, 'http://www.atozmp3.lol/1/2017/Om-Namo-Venkatesaya/320/01%20-%20Veyi%20Naamaala%20Vaada%20%5bwww.AtoZmp3.in%5d.mp3', ''),
(94, '01 â€“ Ardhamaindha â€“ Anurag Kulakarni', '', 26, 26, 'http://www.atozmp3.lol/1/Singles/Kittu-Unnadu-Jagratha/320/01%20-%20Ardhamaindha%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/Singles/Kittu-Unnadu-Jagratha/128/01%20-%20Ardhamaindha%20%5bwww.AtoZmp3.in%5d.mp3'),
(95, '02 â€“ Johny Johny Yes Papa â€“ Ranjith', '', 26, 26, 'http://www.atozmp3.lol/1/Singles/Kittu-Unnadu-Jagratha/320/02%20-%20Johny%20Johny%20Yes%20Papa%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/Singles/Kittu-Unnadu-Jagratha/128/02%20-%20Johny%20Johny%20Yes%20Papa%20%5bwww.AtoZmp3.in%5d.mp3'),
(96, '01 â€“ Sitara â€“ Yazin, Sanjana', '', 27, 27, 'http://www.atozmp3.lol/1/Singles/Winner/320/01%20-%20Sitara%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/Singles/Winner/128/01%20-%20Sitara%20%5bwww.AtoZmp3.in%5d.mp3'),
(97, '02 â€“ Pichonne Ayipoya â€“ Deepak, Christopher Stanley, Sai Charan', '', 27, 27, 'http://www.atozmp3.lol/1/Singles/Winner/320/02%20-%20Pichonne%20Ayipoya%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/Singles/Winner/128/02%20-%20Pichonne%20Ayipoya%20%5bwww.AtoZmp3.in%5d.mp3'),
(98, '03 â€“ Suyaa Suyaa â€“ Anurag Kulkarni, Suma Kanakala', '', 27, 27, 'http://www.atozmp3.lol/1/Singles/Winner/320/03%20-%20Suyaa%20Suyaa%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/Singles/Winner/128/03%20-%20Suyaa%20Suyaa%20%5bwww.AtoZmp3.in%5d.mp3'),
(99, '04 â€“ Naa B C Center lu â€“ Nakash Aziz, Sharmila, Antara, Sharmila', '', 27, 27, 'http://www.atozmp3.lol/1/Singles/Winner/320/04%20-%20Naa%20B%20C%20Center%20lu%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/Singles/Winner/128/04%20-%20Naa%20B%20C%20Center%20lu%20%5bwww.AtoZmp3.in%5d.mp3'),
(100, '01 â€“ O Sakkanoda â€“ Dhee', '', 28, 28, 'http://www.atozmp3.lol/1/Singles/Guru/320/01%20-%20O%20Sakkanoda%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/Singles/Guru/128/01%20-%20O%20Sakkanoda%20%5bwww.AtoZmp3.in%5d.mp3'),
(101, '05 â€“ Bhajarangabali', 'MLR Karthik, Naveen Madhavan, Aditya Aiyengar, Srikrishna, Sarath Santhosh, Hymath, Arun kaundinya', 27, 27, 'http://www.atozmp3.lol/1/2017/Winner/320/05%20-%20Bhajarangabali%20%5bwww.AtoZmp3.in%5d.mp3', 'http://www.atozmp3.lol/1/2017/Winner/128/05%20-%20Bhajarangabali%20%5bwww.AtoZmp3.in%5d.mp3'),
(102, 'V6 Bonala Song', '', 30, 30, '#', '#'),
(103, '01 â€“ Vachinde â€“ Madhu Priya, Ramki', '', 33, 33, 'http://www.zintata.com/1/?S*fb7c4', 'http://www.zintata.com/1/?S*fba2'),
(104, '02 â€“ Edo Jarugutondi â€“ Aravind Srinivas, Renuka', '', 33, 33, 'http://www.zintata.com/1/?S*849d9', 'http://www.zintata.com/1/?S*708a7'),
(105, '03 â€“ Hey Pillagaada â€“ Sindhuri, Sinov Raj', '', 33, 33, 'http://www.zintata.com/1/?S*6371d', 'http://www.zintata.com/1/?S*62c41'),
(106, '04 â€“ Oosupodu â€“ Hemachandra', '', 33, 33, 'http://www.zintata.com/1/?S*dbd45', 'http://www.zintata.com/1/?S*400d3'),
(107, '05 â€“ Hey Mister â€“ Deepak', '', 33, 33, 'http://www.zintata.com/1/?S*da5e6', 'http://www.zintata.com/1/?S*72bf'),
(108, '06 â€“ Fidaa â€“ Hemachandra, Malavika', '', 33, 33, 'http://www.zintata.com/1/?S*d0e75', 'http://www.zintata.com/1/?S*b1a69');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `term_group` int(11) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `name`, `slug`, `term_group`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(7, 'Telugu Songs', 'telugu-songs', 1, 'Download Latest Telugu Movie Audio Songs | Free to Listen Telugu Audio Songs 2016', 'Download Latest Telugu Movie Audio Songs, Free to Listen Telugu Audio Songs 2016', 'Download Latest Telugu Movie Audio Songs | Free to Listen Telugu Audio Songs 2016'),
(8, 'Hindi Songs', 'hindi-songs', 1, 'Hindi Movie Audio Songs 2016 | Download Latest Hindi Movie Audio Songs 2017', 'Hindi Movie Audio Songs 2016, Latest Hindi Movie Audio Songs 2017, Download Latest Hindi Movie Audio Songs 2017', 'Hindi Movie Audio Songs 2016, Latest Hindi Movie Audio Songs 2017, Download Latest Hindi Movie Audio Songs 2017');

-- --------------------------------------------------------

--
-- Table structure for table `term_relationships`
--

CREATE TABLE `term_relationships` (
  `postid` bigint(20) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `term_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `term_relationships`
--

INSERT INTO `term_relationships` (`postid`, `term_id`, `term_order`) VALUES
(1, 7, 1),
(2, 7, 0),
(3, 7, 0),
(4, 7, 0),
(5, 7, 0),
(6, 7, 0),
(7, 5, 0),
(8, 7, 0),
(9, 7, 0),
(10, 7, 0),
(11, 7, 0),
(12, 7, 0),
(13, 7, 0),
(14, 7, 0),
(15, 7, 0),
(16, 7, 0),
(17, 7, 0),
(18, 7, 0),
(19, 7, 0),
(20, 8, 0),
(21, 7, 0),
(22, 7, 0),
(23, 7, 0),
(24, 7, 0),
(25, 7, 0),
(26, 7, 0),
(27, 7, 0),
(28, 7, 0),
(29, 7, 0),
(30, 7, 0),
(31, 7, 0),
(32, 7, 0),
(33, 7, 0),
(34, 7, 0),
(34, 7, 0),
(35, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `term_taxonomy`
--

CREATE TABLE `term_taxonomy` (
  `term_taxonomy_id` bigint(20) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `taxonomy` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `parent` bigint(20) NOT NULL,
  `count` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `term_taxonomy`
--

INSERT INTO `term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(4, 7, 'category', 'Download Latest Telugu Movie Audio Songs | Free to Listen Telugu Audio Songs 2016', 1, 1),
(5, 8, 'category', 'Hindi Movie Audio Songs 2016 | Latest Hindi Movie Audio Songs 2017 | Download Latest Hindi Movie Audio Songs 2017', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audio_posts`
--
ALTER TABLE `audio_posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `term_taxonomy`
--
ALTER TABLE `term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audio_posts`
--
ALTER TABLE `audio_posts`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `song_id` bigint(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `term_taxonomy`
--
ALTER TABLE `term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
