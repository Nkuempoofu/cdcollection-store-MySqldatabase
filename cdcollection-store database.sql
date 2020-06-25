-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 11:15 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cdcollection`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `artist_id`, `genre_id`, `name`, `description`, `image`, `release_date`) VALUES
(1, 1, 2, 'Blame It On Baby', 'With three albums, two Grammy nominations, and an XXL nod now under his belt, DaBaby has fully hit his stride just a year after his commitment to a major record label. While the worsening COVID-19 outbreak has forced Baby (along with every other artist in the music industry) off the road, he’s been wisely spending his time in lockdown writing and recording new music—as well as balancing that time with his two young children. ', 'https://specials-images.forbesimg.com/imageserve/1206613437/960x0.jpg?fit=scale', '2020-05-05'),
(2, 2, 5, 'Future Nostalgia', 'Future Nostalgia steps up from No. 2 to No. 1, becoming Dua Lipa’s first leader in the country. Her self-titled debut full-length only rose as high as No. 3, but it did help her become a household name in the U.K. and beyond thanks to a slew of successful singles.', 'https://specials-images.forbesimg.com/imageserve/1190344702/960x0.jpg?fit=scale', '2019-02-07'),
(3, 3, 1, 'Love In The Future', 'John Legend is ready to give Chris Brown, Usher and Frank Ocean some serious competition for best R&B album of the year when his fourth studio album drops later this year. The singer filmed a video announcing the name of his first album in four years, titled Love In The Future.', 'https://www.mcall.com/resizer/cN3Io0-kDSdqUdz_hmJAEM6YDSE=/800x522/top/cloudfront-us-east-1.images.arcpublishing.com/tronc/ECV2WERTFVTBDUIJ75KLBHM3NE.jpg', '2019-05-15'),
(4, 4, 3, 'Madame X', 'Madonna Louise Ciccone (born August 16, 1958) is an American singer, songwriter, actress, model and director', 'https://images.search.yahoo.com/images/view;_ylt=AwrJ6wp5Fu1eZQsAwlKJzbkF;_ylu=X3oDMTIzaWhjcDlvBHNlYwNzcgRzbGsDaW1nBG9pZANjYjUxZTgyYzg5NDZmNTg0ZGVmYjUzMDZlMGQ3NjkyMwRncG9zAzQ0BGl0A2Jpbmc-?back=https%3A%2F%2Fimages.search.yahoo.com%2Fsearch%2Fimages%3Fp%3D', '2020-06-02'),
(5, 5, 2, 'Music To Be Murdered By', 'The new project features 20 songs, and the tracklist include features with the likes of Ed Sheeran, Skylar Grey, and even Juice WRLD.\r\n\r\nEminem also collaborated with Young M.A, Royce Da 5’9”, White Gold,Q-Tip, Denaun, Anderson .Paak, Don Toliver, KXNG Crooked and Joell Ortiz.', 'https://www.instagram.com/p/B7aJBHGhNHc/?utm_source=ig_embed', '2020-04-07'),
(6, 6, 4, 'Slim & B', 'Chris Brown & Young Thug Slime & B. American veteran singer and dancer Chris Brown initially announced that he was going to drop a joint project with Young Thug today, and we have been patiently waiting. They have collaborated countless times before, but this is the first full joint project they do together.', 'https://pagesix.com/wp-content/uploads/sites/3/2020/01/royalty-brown-chris-brown.jpg?quality=90&strip=all&w=618&h=410&crop=1', '2020-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `bio`) VALUES
(1, 'DaBaby', '\"Rockstar\" is a song by American rapper DaBaby, featuring vocals from American rapper Roddy Ricch. The song was released on April 24, 2020 as the second single from DaBaby\'s third studio album Blame It on Baby (2020).'),
(2, 'Dua Lipa', 'Dua Lipa is an English singer, songwriter, and model. Her musical career began at age 14, when she began covering songs by other artists on YouTube. In 2015, she was signed with Warner Music Group and released her first single soon after. In December 2016, a documentary about Lipa was commissioned by The Fader magazine, titled See in Blue.'),
(3, 'John Legend ', 'John Roger Stephens (born December 28, 1978), known professionally as John Legend, is an American singer, songwriter, producer, actor, and philanthropist. Prior to the release of Legend\'s debut album, Get Lifted, (2004) he had collaborated with already established artists and signed to Kanye West \'s GOOD Music.'),
(4, 'Madonna ', 'Madonna (16 August 1958 – ) is an American singer, actress, dancer and movie star. She has sold over 300 million records worldwide, making her the best-selling female artist of all time. Madonna, often referred to as “The Queen of Pop”, has had a profound influence on music culture. She has pursued an independent approach to her career – writing most of her songs and constantly redefining her image.'),
(5, 'Eminem', 'Eminem was born Marshall Bruce Mathers III in St. Joseph, Missouri, to Deborah R. (Nelson) and Marshall Bruce Mathers, Jr., who were in a band together, Daddy Warbucks. He is of English, as well as some German, Scottish, and Swiss-German, ancestry. Marshall spent his early childhood being shoved back and forth from Kansas City and Detroit.'),
(6, 'Chris Brown', 'Chris Brown is originally from Tappahannock, Virginia. Like a lot of kids born in the mid- to late \'80s, he got into his parents\' favorite music but eventually fell under the spell of hip-hop. Like a lot of kids born in the mid- to late \'80s, he got into his parents\' favorite music but eventually fell under the spell of hip-hop');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Hip Hop'),
(3, 'Country'),
(4, 'Dance'),
(5, 'R & B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `genre_id` (`genre_id`),
  ADD KEY `artist_id_2` (`artist_id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `artistkey` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`),
  ADD CONSTRAINT `genrekey` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
